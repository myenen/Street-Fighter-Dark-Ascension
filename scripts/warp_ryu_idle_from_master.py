from pathlib import Path
import json
import numpy as np
from PIL import Image, ImageDraw

root = Path(__file__).resolve().parents[1]
out = root / 'assets/generated/ryu'
master_path = out / 'ryu_idle_001_hd_aligned_v02.png'
master = Image.open(master_path).convert('RGBA')
source = np.asarray(master).astype(np.float32) / 255.0
height, width = source.shape[:2]
scale = 8.0

# Landmarks use the original 96 x 112 character canvas. Frame 1 is the
# master. Frames 2 and 4 follow measured SNES sprite motion; frame 3 is
# identical to frame 1 in the source SFF.
frame1 = np.array([
    (0, 0), (96, 0), (0, 112), (96, 112),
    (46, 19), (50, 27), (32, 25), (31, 36),
    (45, 35), (52, 45), (45, 50),
    (33, 70), (34, 89), (34, 94),
    (52, 72), (58, 89), (59, 95),
], dtype=np.float64)

targets = {
    1: frame1.copy(),
    2: np.array([
        (0, 0), (96, 0), (0, 112), (96, 112),
        (45, 21), (50, 30), (32, 27), (31, 39),
        (45, 39), (53, 48), (45, 53),
        (34, 72), (35, 89), (34, 94),
        (52, 75), (58, 89), (59, 95),
    ], dtype=np.float64),
    3: frame1.copy(),
    4: np.array([
        (0, 0), (96, 0), (0, 112), (96, 112),
        (46, 18), (51, 26), (32, 21), (31, 33),
        (47, 31), (53, 44), (45, 49),
        (33, 70), (35, 89), (34, 94),
        (52, 71), (58, 89), (59, 95),
    ], dtype=np.float64),
}

def radial(r2):
    return r2 * np.log(r2 + 1e-12)

def solve_tps(control, values):
    count = len(control)
    delta = control[:, None, :] - control[None, :, :]
    kernel = radial(np.sum(delta * delta, axis=2))
    affine = np.column_stack([np.ones(count), control])
    system = np.block([[kernel, affine], [affine.T, np.zeros((3, 3))]])
    rhs = np.concatenate([values, np.zeros(3)])
    solution = np.linalg.solve(system, rhs)
    return solution[:count], solution[count:]

def evaluate_tps(points, control, weights, affine):
    result = np.empty(len(points), dtype=np.float64)
    chunk = 50000
    for start in range(0, len(points), chunk):
        part = points[start:start + chunk]
        delta = part[:, None, :] - control[None, :, :]
        basis = radial(np.sum(delta * delta, axis=2))
        result[start:start + chunk] = basis @ weights + affine[0] + part @ affine[1:]
    return result

def bilinear_rgba(image, x, y):
    h, w = image.shape[:2]
    valid = (x >= 0) & (x <= w - 1) & (y >= 0) & (y <= h - 1)
    x = np.clip(x, 0, w - 1)
    y = np.clip(y, 0, h - 1)
    x0 = np.floor(x).astype(np.int32)
    y0 = np.floor(y).astype(np.int32)
    x1 = np.minimum(x0 + 1, w - 1)
    y1 = np.minimum(y0 + 1, h - 1)
    fx = (x - x0)[:, None]
    fy = (y - y0)[:, None]
    # Interpolate premultiplied color to keep transparent edges clean.
    alpha = image[..., 3:4]
    premultiplied = np.concatenate([image[..., :3] * alpha, alpha], axis=2)
    top = premultiplied[y0, x0] * (1 - fx) + premultiplied[y0, x1] * fx
    bottom = premultiplied[y1, x0] * (1 - fx) + premultiplied[y1, x1] * fx
    sampled = top * (1 - fy) + bottom * fy
    sampled[~valid] = 0
    a = sampled[:, 3:4]
    rgb = np.divide(sampled[:, :3], a, out=np.zeros_like(sampled[:, :3]), where=a > 1e-6)
    return np.concatenate([rgb, a], axis=1)

yy, xx = np.mgrid[0:height, 0:width]
output_points = np.column_stack([xx.ravel() / scale, yy.ravel() / scale])
generated = {}

for frame_number, target in targets.items():
    destination = out / f'ryu_idle_{frame_number:03d}_hd_consistent_v01.png'
    if frame_number in (1, 3):
        result = master.copy()
    else:
        # Inverse warp: target-frame positions map back to master positions.
        wx, ax = solve_tps(target, frame1[:, 0])
        wy, ay = solve_tps(target, frame1[:, 1])
        source_x = evaluate_tps(output_points, target, wx, ax) * scale
        source_y = evaluate_tps(output_points, target, wy, ay) * scale
        warped = bilinear_rgba(source, source_x, source_y).reshape(height, width, 4)
        warped = np.uint8(np.clip(warped * 255 + 0.5, 0, 255))
        result = Image.fromarray(warped, 'RGBA')
    result.save(destination)
    generated[frame_number] = result

preview_frames = []
for frame_number in range(1, 5):
    background = Image.new('RGBA', master.size, (25, 30, 40, 255))
    background.alpha_composite(generated[frame_number])
    draw = ImageDraw.Draw(background)
    draw.line((0, 768, 767, 768), fill=(65, 160, 145, 255), width=2)
    preview_frames.append(background.convert('RGB'))

preview_frames[0].save(
    out / 'ryu_idle_hd_consistent_v01.gif', save_all=True,
    append_images=preview_frames[1:], duration=100, loop=0, disposal=2,
)

sheet = Image.new('RGB', (1536, 1856), (25, 30, 40))
draw = ImageDraw.Draw(sheet)
for index, frame in enumerate(preview_frames):
    x = (index % 2) * 768
    y = (index // 2) * 896 + 64
    sheet.paste(frame, (x, y))
    draw.text((x + 20, y - 42), f'CONSISTENT FRAME {index + 1} | 6 ticks', fill='white')
draw.text((20, 1826), 'Single-master deformation: frame 3 is an exact copy of frame 1.', fill=(190, 202, 216))
sheet.save(out / 'ryu_idle_hd_consistent_v01_contact_sheet.png')

report = {
    'method': 'Thin-plate-spline deformation from one HD master using measured SNES landmarks.',
    'master': master_path.name,
    'frame_3_equals_frame_1': True,
    'timing': {'ticks_per_frame': 6, 'cycle_ticks': 24, 'seconds_at_60_fps': 0.4},
    'status': 'QA candidate; not imported into SFF.',
}
(out / 'ryu_idle_hd_consistent_v01.json').write_text(json.dumps(report, indent=2), encoding='utf-8')

for path in [out / 'ryu_idle_hd_consistent_v01.gif', out / 'ryu_idle_hd_consistent_v01_contact_sheet.png']:
    with Image.open(path) as check:
        check.verify()
print(json.dumps(report, indent=2))
