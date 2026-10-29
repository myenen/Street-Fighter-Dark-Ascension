from pathlib import Path
from io import BytesIO
import json
import math
import struct
import numpy as np
from PIL import Image

root = Path(__file__).resolve().parents[1]
assets = root / 'assets/generated/ryu'
original_sff = root / 'chars/SSF2_SNES_Ryu/Media/Ryu.sff'
test_root = root / 'chars/SSF2_SNES_Ryu_HD_Test'
media = test_root / 'Media'
import_dir = assets / 'import_idle_faithful_2x_v05'
media.mkdir(parents=True, exist_ok=True)
import_dir.mkdir(parents=True, exist_ok=True)

frame_paths = [assets / f'ryu_idle_faithful_2x_v05_{number:03d}.png' for number in range(4)]
frames = [Image.open(path).convert('RGBA') for path in frame_paths]

# Build one shared 255-color Ryu palette. Index 0 is reserved for transparency.
opaque_samples = []
for frame in frames:
    array = np.asarray(frame)
    pixels = array[..., :3][array[..., 3] >= 16]
    opaque_samples.append(pixels[::4])
samples = np.concatenate(opaque_samples, axis=0)
columns = 512
rows = math.ceil(len(samples) / columns)
padded = np.zeros((rows * columns, 3), dtype=np.uint8)
padded[:len(samples)] = samples
sample_image = Image.fromarray(padded.reshape(rows, columns, 3), 'RGB')
palette_source = sample_image.quantize(colors=255, method=Image.Quantize.MEDIANCUT)
source_palette = palette_source.getpalette()[:255 * 3]
palette = [255, 0, 255] + source_palette
palette += [0] * (768 - len(palette))
palette_image = Image.new('P', (1, 1))
palette_image.putpalette(palette)

new_sprites = []
import_entries = []
for index, frame in enumerate(frames):
    bbox = frame.getbbox()
    crop = frame.crop(bbox)
    rgba = np.asarray(crop)
    rgb = rgba[..., :3].copy()
    rgb[rgba[..., 3] < 16] = (255, 0, 255)
    indexed = Image.fromarray(rgb, 'RGB').quantize(
        palette=palette_image, dither=Image.Dither.FLOYDSTEINBERG
    )
    indices = np.asarray(indexed).copy()
    transparent = rgba[..., 3] < 16
    indices[transparent] = 0
    if np.any((indices == 0) & ~transparent):
        raise RuntimeError('Opaque artwork mapped to reserved transparent palette index 0')
    indexed = Image.fromarray(indices, 'P')
    indexed.putpalette(palette)
    png_name = f'9004-{index}.png'
    pcx_name = f'9004-{index}.pcx'
    indexed.save(import_dir / png_name, transparency=0)
    indexed.save(import_dir / pcx_name)
    buffer = BytesIO()
    indexed.save(buffer, format='PCX')
    x_axis = 96 - bbox[0]
    y_axis = 192 - bbox[1]
    new_sprites.append({
        'group': 9004, 'image': index, 'x': x_axis, 'y': y_axis,
        'same_palette': 0, 'data': buffer.getvalue(), 'comment': b'HDFAITH' + bytes(6),
    })
    import_entries.append({
        'group': 9003, 'image': index, 'xaxis': x_axis, 'yaxis': y_axis,
        'file': png_name,
    })

source = original_sff.read_bytes()
header = bytearray(source[:512])
records = []
position = struct.unpack_from('<I', source, 24)[0]
while position and position < len(source):
    next_position, length, x, y, group, image, previous, same_palette = struct.unpack_from(
        '<IIhhHHHB', source, position
    )
    records.append({
        'group': group, 'image': image, 'x': x, 'y': y,
        'previous': previous, 'same_palette': same_palette,
        'data': source[position + 32:position + 32 + length],
        'comment': source[position + 19:position + 32],
    })
    position = next_position

records.extend(new_sprites)
struct.pack_into('<I', header, 16, struct.unpack_from('<I', source, 16)[0] + 1)
struct.pack_into('<I', header, 20, len(records))
struct.pack_into('<I', header, 24, 512)
struct.pack_into('<I', header, 28, 32)

result = bytearray(header)
offset = 512
for index, record in enumerate(records):
    data = record['data']
    next_offset = 0 if index == len(records) - 1 else offset + 32 + len(data)
    subheader = bytearray(32)
    struct.pack_into(
        '<IIhhHHHB', subheader, 0,
        next_offset, len(data), record['x'], record['y'],
        record['group'], record['image'], record.get('previous', 0),
        record['same_palette'],
    )
    subheader[19:32] = record['comment'][:13].ljust(13, bytes(1))
    result.extend(subheader)
    result.extend(data)
    offset = next_offset

sff_path = media / 'Ryu_HD_Idle_Faithful_2x_v05.sff'
sff_path.write_bytes(result)

ffe = ['; Fighter Factory import list for the four HD idle sprites', 'noDuplicatePal = 0', '']
for entry in import_entries:
    ffe.extend([
        '[SpriteDef]',
        f"group = {entry['group']}",
        f"image = {entry['image']}",
        f"xaxis = {entry['xaxis']}",
        f"yaxis = {entry['yaxis']}",
        'flags = 0',
        'palette = 9004,0',
        f"file = {entry['file']}",
        '',
    ])
(import_dir / 'import.ffe').write_text('\n'.join(ffe), encoding='utf-8')

report = {
    'source_sff': str(original_sff.relative_to(root)),
    'output_sff': str(sff_path.relative_to(root)),
    'original_sprite_count': len(records) - len(new_sprites),
    'output_sprite_count': len(records),
    'added_group': 9004,
    'added_images': list(range(4)),
    'sff_size': len(result),
    'axes': [[entry['xaxis'], entry['yaxis']] for entry in import_entries],
    'palette': 'One shared 255-color HD palette; index 0 reserved for transparency.',
}
(test_root / 'build_report.json').write_text(json.dumps(report, indent=2), encoding='utf-8')
print(json.dumps(report, indent=2))
