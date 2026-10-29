from pathlib import Path
from collections import deque
import argparse
import json
import numpy as np
from PIL import Image, ImageDraw, ImageFilter

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / 'assets/generated/ryu'
parser = argparse.ArgumentParser()
parser.add_argument('source', nargs='?', default='ryu_idle_001_hd_concept_v03.png')
parser.add_argument('--output', default='ryu_idle_001_hd_cutout_v01.png')
args = parser.parse_args()
source_name = Path(args.source).name
output_name = Path(args.output).name
src = Image.open(OUT / source_name).convert('RGB')
a = np.asarray(src).astype(np.int16)
h, w = a.shape[:2]
# The baked checkerboard is neutral gray/white. Only remove neutral pixels
# connected to the outer background; preserve enclosed whites in the gi.
candidate = (a.max(2) - a.min(2) <= 18) & (a.min(2) >= 100)
background = np.zeros((h, w), dtype=bool)
q = deque()
for y, x in [(0,x) for x in range(w)] + [(h-1,x) for x in range(w)] + [(y,0) for y in range(h)] + [(y,w-1) for y in range(h)]:
    if candidate[y,x] and not background[y,x]:
        background[y,x] = True
        q.append((y,x))
while q:
    y,x = q.popleft()
    for yy,xx in ((y-1,x),(y+1,x),(y,x-1),(y,x+1)):
        if 0 <= yy < h and 0 <= xx < w and candidate[yy,xx] and not background[yy,xx]:
            background[yy,xx] = True
            q.append((yy,xx))
mask = Image.fromarray(np.uint8(~background)*255)
# Remove isolated single-pixel residue without altering the source colors.
mask = mask.filter(ImageFilter.MedianFilter(3))
rgba = src.convert('RGBA')
rgba.putalpha(mask)
dest = OUT/output_name
rgba.save(dest)
preview = Image.new('RGB',(w*2,h+48))
for i,col in enumerate(((24,29,39),(237,232,220))):
    base = Image.new('RGBA',src.size,col+(255,))
    base.alpha_composite(rgba)
    preview.paste(base.convert('RGB'),(w*i,48))
d=ImageDraw.Draw(preview)
d.text((20,16),'DARK BACKGROUND - alpha QA',fill='white')
d.text((w+20,16),'LIGHT BACKGROUND - alpha QA',fill='white')
stem = dest.stem
preview.save(OUT/f'{stem}_qa.png')
report={'source':source_name,'output':dest.name,'size':[w,h],'mode':'RGBA','transparent_pixels':int((np.asarray(mask)==0).sum()),'opaque_pixels':int((np.asarray(mask)==255).sum()),'bbox':rgba.getbbox(),'status':'Background cleanup candidate; pose is not yet matched for game import.'}
(OUT/f'{stem}.json').write_text(json.dumps(report,indent=2),encoding='utf-8')
with Image.open(dest) as check:
    assert check.mode == 'RGBA'
    assert check.getchannel('A').getextrema() == (0,255)
with Image.open(dest) as check:
    check.verify()
print(json.dumps(report,indent=2))
