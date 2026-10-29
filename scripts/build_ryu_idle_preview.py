from pathlib import Path
from PIL import Image, ImageDraw

root = Path(__file__).resolve().parents[1]
out = root / 'assets/generated/ryu'
frame_paths = [
    out / 'ryu_idle_001_hd_aligned_v02.png',
    out / 'ryu_idle_002_hd_aligned_v01.png',
    out / 'ryu_idle_003_hd_aligned_v01.png',
    out / 'ryu_idle_004_hd_aligned_v01.png',
]
frames = [Image.open(path).convert('RGBA') for path in frame_paths]

preview_frames = []
for frame in frames:
    bg = Image.new('RGBA', frame.size, (25, 30, 40, 255))
    bg.alpha_composite(frame)
    draw = ImageDraw.Draw(bg)
    draw.line((0, 768, 767, 768), fill=(65, 160, 145, 255), width=2)
    preview_frames.append(bg.convert('RGB'))

preview_frames[0].save(
    out / 'ryu_idle_hd_four_frame_preview.gif',
    save_all=True,
    append_images=preview_frames[1:],
    duration=100,
    loop=0,
    disposal=2,
)

sheet = Image.new('RGB', (1536, 1856), (25, 30, 40))
draw = ImageDraw.Draw(sheet)
for index, frame in enumerate(preview_frames):
    x = (index % 2) * 768
    y = (index // 2) * 896 + 64
    sheet.paste(frame, (x, y))
    draw.text((x + 20, y - 42), f'HD IDLE FRAME {index + 1} | 6 ticks', fill='white')
draw.text((20, 1826), 'QA: identity, belt, gi tears, face, fists, feet and ground contacts should remain consistent.', fill=(190, 202, 216))
sheet.save(out / 'ryu_idle_hd_four_frame_contact_sheet.png')

for path in [out / 'ryu_idle_hd_four_frame_preview.gif', out / 'ryu_idle_hd_four_frame_contact_sheet.png']:
    with Image.open(path) as check:
        check.verify()
print('Built four-frame 400 ms loop and contact sheet.')
