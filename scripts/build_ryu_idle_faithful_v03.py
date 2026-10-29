from pathlib import Path
import json
import numpy as np
from PIL import Image, ImageDraw, ImageFilter

root = Path(__file__).resolve().parents[1]
reference = root / 'assets/reference/ryu/idle_original'
out = root / 'assets/generated/ryu'
scale = 8

def premultiplied_resize(image, size):
    rgba = np.asarray(image.convert('RGBA')).astype(np.float32) / 255.0
    alpha = rgba[..., 3:4]
    premultiplied = np.concatenate([rgba[..., :3] * alpha, alpha], axis=2)
    channels = []
    for index in range(4):
        channel = Image.fromarray(np.uint8(np.clip(premultiplied[..., index] * 255, 0, 255)), 'L')
        channels.append(np.asarray(channel.resize(size, Image.Resampling.LANCZOS)).astype(np.float32) / 255.0)
    resized = np.stack(channels, axis=2)
    a = resized[..., 3:4]
    rgb = np.divide(resized[..., :3], a, out=np.zeros_like(resized[..., :3]), where=a > 1e-5)
    result = np.concatenate([rgb, a], axis=2)
    return Image.fromarray(np.uint8(np.clip(result * 255 + 0.5, 0, 255)), 'RGBA')

frames = []
source_hashes = []
for index in range(4):
    source = Image.open(reference / f'ryu_idle_{index + 1:03d}.png').convert('RGBA')
    source_hashes.append(hash(source.tobytes()))
    frame = premultiplied_resize(source, (source.width * scale, source.height * scale))
    # Very mild sharpening restores line clarity after antialiasing. It does
    # not invent or move anatomy; every output pixel derives from the source.
    alpha = frame.getchannel('A')
    sharpened = frame.convert('RGB').filter(ImageFilter.UnsharpMask(radius=1.0, percent=55, threshold=3)).convert('RGBA')
    sharpened.putalpha(alpha)
    path = out / f'ryu_idle_faithful_v03_{index:03d}.png'
    sharpened.save(path)
    frames.append(sharpened)

preview_frames = []
for frame in frames:
    background = Image.new('RGBA', frame.size, (25, 30, 40, 255))
    background.alpha_composite(frame)
    draw = ImageDraw.Draw(background)
    draw.line((0, 768, 767, 768), fill=(65, 160, 145, 255), width=2)
    preview_frames.append(background.convert('RGB'))

preview_frames[0].save(
    out / 'ryu_idle_faithful_v03.gif', save_all=True,
    append_images=preview_frames[1:], duration=100, loop=0, disposal=2,
)

sheet = Image.new('RGB', (1536, 1856), (25, 30, 40))
draw = ImageDraw.Draw(sheet)
for index, frame in enumerate(preview_frames):
    x = (index % 2) * 768
    y = (index // 2) * 896 + 64
    sheet.paste(frame, (x, y))
    draw.text((x + 20, y - 42), f'FAITHFUL FRAME {index + 1} | original pose | 6 ticks', fill='white')
draw.text((20, 1826), 'Exact source frames enlarged 8x; no generated anatomy or interpolated poses.', fill=(190, 202, 216))
sheet.save(out / 'ryu_idle_faithful_v03_contact_sheet.png')

report = {
    'method': '8x premultiplied-alpha Lanczos upscale with mild sharpening',
    'generated_content': False,
    'source_frames': ['0,0', '0,1', '0,2', '0,3'],
    'frame_count': 4,
    'ticks_per_frame': 6,
    'cycle_ticks': 24,
    'seconds_at_60_fps': 0.4,
    'frame_1_equals_frame_3_in_source': source_hashes[0] == source_hashes[2],
    'pose_and_silhouette': 'derived directly from original pixels; unchanged',
}
(out / 'ryu_idle_faithful_v03.json').write_text(json.dumps(report, indent=2), encoding='utf-8')
for path in [out / 'ryu_idle_faithful_v03.gif', out / 'ryu_idle_faithful_v03_contact_sheet.png']:
    with Image.open(path) as check:
        check.verify()
print(json.dumps(report, indent=2))
