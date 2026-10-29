from pathlib import Path
from PIL import Image, ImageDraw

root = Path(__file__).resolve().parents[1]
source = root / 'assets/reference/ryu/idle_original'
out = root / 'assets/generated/ryu/ryu_idle_original_pose_grid.png'
scale = 8
sheet = Image.new('RGB', (96 * scale * 3, 112 * scale), (22, 27, 36))
draw = ImageDraw.Draw(sheet)
for index, frame_number in enumerate((1, 2, 4)):
    frame = Image.open(source / f'ryu_idle_{frame_number:03d}.png').convert('RGBA')
    frame = frame.resize((96 * scale, 112 * scale), Image.Resampling.NEAREST)
    x0 = index * 96 * scale
    sheet.paste(frame, (x0, 0), frame)
    for coordinate in range(0, 97, 4):
        x = x0 + coordinate * scale
        draw.line((x, 0, x, 112 * scale - 1), fill=(65, 83, 105), width=1)
        if coordinate < 96:
            draw.text((x + 2, 2), str(coordinate), fill=(165, 181, 199))
    for coordinate in range(0, 113, 4):
        y = coordinate * scale
        draw.line((x0, y, x0 + 96 * scale - 1, y), fill=(65, 83, 105), width=1)
        if coordinate < 112:
            draw.text((x0 + 2, y + 2), str(coordinate), fill=(165, 181, 199))
    draw.text((x0 + 320, 16), f'FRAME {frame_number}', fill='white')
sheet.save(out)
print(out)
