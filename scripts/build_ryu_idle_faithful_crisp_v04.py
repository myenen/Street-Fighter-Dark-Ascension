from pathlib import Path
import json
import numpy as np
from PIL import Image, ImageDraw

root = Path(__file__).resolve().parents[1]
reference = root / 'assets/reference/ryu/idle_original'
out = root / 'assets/generated/ryu'

def scale2x(image):
    source = np.asarray(image.convert('RGBA'))
    padded = np.pad(source, ((1, 1), (1, 1), (0, 0)), mode='edge')
    b = padded[:-2, 1:-1]
    d = padded[1:-1, :-2]
    e = padded[1:-1, 1:-1]
    f = padded[1:-1, 2:]
    h = padded[2:, 1:-1]
    b_ne_h = np.any(b != h, axis=2)
    d_ne_f = np.any(d != f, axis=2)
    condition = b_ne_h & d_ne_f
    e0 = np.where((condition & np.all(d == b, axis=2))[..., None], d, e)
    e1 = np.where((condition & np.all(b == f, axis=2))[..., None], f, e)
    e2 = np.where((condition & np.all(d == h, axis=2))[..., None], d, e)
    e3 = np.where((condition & np.all(h == f, axis=2))[..., None], f, e)
    result = np.empty((source.shape[0] * 2, source.shape[1] * 2, 4), dtype=np.uint8)
    result[0::2, 0::2] = e0
    result[0::2, 1::2] = e1
    result[1::2, 0::2] = e2
    result[1::2, 1::2] = e3
    return Image.fromarray(result, 'RGBA')

frames = []
for index in range(4):
    frame = Image.open(reference / f'ryu_idle_{index + 1:03d}.png').convert('RGBA')
    for _ in range(3):
        frame = scale2x(frame)
    path = out / f'ryu_idle_faithful_crisp_v04_{index:03d}.png'
    frame.save(path)
    frames.append(frame)

preview = []
for frame in frames:
    background = Image.new('RGBA', frame.size, (25, 30, 40, 255))
    background.alpha_composite(frame)
    draw = ImageDraw.Draw(background)
    draw.line((0, 768, 767, 768), fill=(65, 160, 145, 255), width=2)
    preview.append(background.convert('RGB'))

preview[0].save(
    out / 'ryu_idle_faithful_crisp_v04.gif', save_all=True,
    append_images=preview[1:], duration=100, loop=0, disposal=2,
)

sheet = Image.new('RGB', (1536, 960), (25, 30, 40))
draw = ImageDraw.Draw(sheet)
smooth = Image.open(out / 'ryu_idle_faithful_v03_000.png').convert('RGBA')
left = Image.new('RGBA', smooth.size, (25, 30, 40, 255)); left.alpha_composite(smooth)
right = Image.new('RGBA', frames[0].size, (25, 30, 40, 255)); right.alpha_composite(frames[0])
sheet.paste(left.convert('RGB'), (0, 64)); sheet.paste(right.convert('RGB'), (768, 64))
draw.text((20, 22), 'SMOOTH UPSCALE', fill='white')
draw.text((788, 22), 'CRISP SCALE2X UPSCALE', fill='white')
draw.line((0, 832, 1535, 832), fill=(65, 160, 145), width=2)
draw.text((20, 930), 'Both versions retain the exact original pose and four-frame timing.', fill=(190, 202, 216))
sheet.save(out / 'ryu_idle_faithful_upscale_comparison.png')

report = {
    'method': 'Scale2x repeated three times (8x)',
    'generated_content': False,
    'pose_changes': False,
    'source_palette_preserved': True,
    'frame_count': 4,
    'ticks_per_frame': 6,
    'cycle_ticks': 24,
}
(out / 'ryu_idle_faithful_crisp_v04.json').write_text(json.dumps(report, indent=2), encoding='utf-8')
print(json.dumps(report, indent=2))
