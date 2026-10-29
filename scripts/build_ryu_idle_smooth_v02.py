from pathlib import Path
import json
import math
import numpy as np
from PIL import Image, ImageDraw

root = Path(__file__).resolve().parents[1]
out = root / 'assets/generated/ryu'
master_path = out / 'ryu_idle_001_hd_aligned_v02.png'
master = Image.open(master_path).convert('RGBA')
source = np.asarray(master).astype(np.float32) / 255.0
height, width = source.shape[:2]

yy, xx = np.mgrid[0:height, 0:width]

# The chest moves less than one original sprite pixel. Motion fades from the
# waist to zero at the feet, so the stance stays planted without rubbery TPS
# deformation. Twelve images at two ticks each retain the 24-tick cycle.
waist_y = 400.0
ground_y = 768.0
weight = np.clip((ground_y - yy) / (ground_y - waist_y), 0.0, 1.0)
amplitude_y = 6.0
amplitude_x = 0.75

def sample_bilinear(image, source_x, source_y):
    h, w = image.shape[:2]
    valid = (source_x >= 0) & (source_x <= w - 1) & (source_y >= 0) & (source_y <= h - 1)
    source_x = np.clip(source_x, 0, w - 1)
    source_y = np.clip(source_y, 0, h - 1)
    x0 = np.floor(source_x).astype(np.int32)
    y0 = np.floor(source_y).astype(np.int32)
    x1 = np.minimum(x0 + 1, w - 1)
    y1 = np.minimum(y0 + 1, h - 1)
    fx = (source_x - x0)[..., None]
    fy = (source_y - y0)[..., None]
    alpha = image[..., 3:4]
    premultiplied = np.concatenate([image[..., :3] * alpha, alpha], axis=2)
    top = premultiplied[y0, x0] * (1 - fx) + premultiplied[y0, x1] * fx
    bottom = premultiplied[y1, x0] * (1 - fx) + premultiplied[y1, x1] * fx
    result = top * (1 - fy) + bottom * fy
    result[~valid] = 0
    a = result[..., 3:4]
    rgb = np.divide(result[..., :3], a, out=np.zeros_like(result[..., :3]), where=a > 1e-6)
    return np.concatenate([rgb, a], axis=2)

frames = []
for index in range(12):
    phase = 2.0 * math.pi * index / 12.0
    breath = math.sin(phase)
    # Positive phase lowers the chest very slightly; the feet remain fixed.
    source_y = yy - amplitude_y * breath * weight
    source_x = xx - amplitude_x * breath * weight
    rgba = sample_bilinear(source, source_x, source_y)
    rgba = np.uint8(np.clip(rgba * 255.0 + 0.5, 0, 255))
    frame = Image.fromarray(rgba, 'RGBA')
    frame_path = out / f'ryu_idle_smooth_v02_{index:03d}.png'
    frame.save(frame_path)
    frames.append(frame)

preview = []
for frame in frames:
    background = Image.new('RGBA', frame.size, (25, 30, 40, 255))
    background.alpha_composite(frame)
    draw = ImageDraw.Draw(background)
    draw.line((0, 768, width - 1, 768), fill=(65, 160, 145, 255), width=2)
    preview.append(background.convert('RGB'))

# GIF timing uses centiseconds: 30+30+40 ms repeated = 400 ms total.
durations = [30, 30, 40] * 4
preview[0].save(
    out / 'ryu_idle_smooth_v02.gif', save_all=True,
    append_images=preview[1:], duration=durations, loop=0, disposal=2,
)

sheet = Image.new('RGB', (1536, 960), (25, 30, 40))
draw = ImageDraw.Draw(sheet)
for column, index in enumerate((0, 3)):
    x = column * 768
    sheet.paste(preview[index], (x, 64))
    draw.text((x + 20, 22), f'KEY MOMENT {index:02d} / 11', fill='white')
draw.text((20, 930), '12-frame loop; 2 ticks per image; 24 ticks / 0.4 seconds total.', fill=(190, 202, 216))
sheet.save(out / 'ryu_idle_smooth_v02_key_moments.png')

report = {
    'status': 'review candidate; removed from character select until approved',
    'master': master_path.name,
    'method': 'single-master deterministic breathing deformation',
    'frame_count': 12,
    'ticks_per_frame': 2,
    'cycle_ticks': 24,
    'seconds_at_60_fps': 0.4,
    'vertical_amplitude_hd_pixels': amplitude_y,
    'equivalent_original_pixels': amplitude_y / 8.0,
    'feet_locked': True,
}
(out / 'ryu_idle_smooth_v02.json').write_text(json.dumps(report, indent=2), encoding='utf-8')

for path in [out / 'ryu_idle_smooth_v02.gif', out / 'ryu_idle_smooth_v02_key_moments.png']:
    with Image.open(path) as check:
        check.verify()
print(json.dumps(report, indent=2))
