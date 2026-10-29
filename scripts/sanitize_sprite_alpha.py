from pathlib import Path
import argparse
from PIL import Image

root = Path(__file__).resolve().parents[1]
out = root / 'assets/generated/ryu'
parser = argparse.ArgumentParser()
parser.add_argument('source')
parser.add_argument('output')
parser.add_argument('--cutoff', type=int, default=16)
args = parser.parse_args()

image = Image.open(out / Path(args.source).name).convert('RGBA')
alpha = image.getchannel('A').point(lambda value: 0 if value < args.cutoff else value)
image.putalpha(alpha)
destination = out / Path(args.output).name
image.save(destination)

with Image.open(destination) as check:
    assert check.mode == 'RGBA'
    assert check.getchannel('A').getextrema() == (0, 255)
    bbox = check.getbbox()
with Image.open(destination) as check:
    check.verify()
print(f'Saved {destination.name}; alpha cutoff={args.cutoff}; bbox={bbox}')
