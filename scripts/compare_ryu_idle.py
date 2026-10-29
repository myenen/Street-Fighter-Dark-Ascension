from pathlib import Path
import argparse
import json
from PIL import Image, ImageDraw

root=Path(__file__).resolve().parents[1]
out=root/'assets/generated/ryu'
parser=argparse.ArgumentParser()
parser.add_argument('source',nargs='?',default='ryu_idle_001_hd_cutout_v01.png')
parser.add_argument('--tag',default='v01')
parser.add_argument('--frame',type=int,default=1)
args=parser.parse_args()
original=Image.open(root/f'assets/reference/ryu/idle_original/ryu_idle_{args.frame:03d}.png').convert('RGBA')
hd=Image.open(out/Path(args.source).name).convert('RGBA')
box=hd.getbbox()
crop=hd.crop(box)
# Eight asset pixels per original coordinate unit. Preserve artwork aspect.
scale=8
original_box=original.getbbox()
original_width=original_box[2]-original_box[0]
original_height=original_box[3]-original_box[1]
height=original_height*scale
width=round(crop.width*height/crop.height)
resized=crop.resize((width,height),Image.Resampling.LANCZOS)
canvas=Image.new('RGBA',(96*scale,112*scale))
original_center=(original_box[0]+original_box[2])/2
left=round(original_center*scale-width/2)
top=original_box[1]*scale
canvas.alpha_composite(resized,(left,top))
aligned_name=f'ryu_idle_{args.frame:03d}_hd_aligned_{args.tag}.png'
comparison_name=f'ryu_idle_{args.frame:03d}_pose_comparison_{args.tag}.png'
canvas.save(out/aligned_name)
orig=original.resize(canvas.size,Image.Resampling.NEAREST)
panels=[orig,canvas]
overlay=orig.copy()
ghost=canvas.copy()
ghost.putalpha(ghost.getchannel('A').point(lambda p:round(p*.5)))
overlay.alpha_composite(ghost)
panels.append(overlay)
sheet=Image.new('RGB',(canvas.width*3,canvas.height+64),(27,32,42))
d=ImageDraw.Draw(sheet)
for i,(panel,title) in enumerate(zip(panels,['ORIGINAL - nearest neighbor','HD - uniform scale, shared baseline','OVERLAY - original + 50% HD'])):
    x=i*canvas.width
    d.line((x,64+96*scale,x+canvas.width-1,64+96*scale),fill=(65,160,145),width=2)
    d.line((x+48*scale,64,x+48*scale,sheet.height),fill=(53,67,85))
    sheet.paste(panel,(x,64),panel)
    d.text((x+20,22),title,fill='white')
sheet.save(out/comparison_name)
report={'status':'Aligned reference candidate only; no game integration','source':Path(args.source).name,'frame':args.frame,'asset_pixels_per_original_unit':scale,'canvas':[768,896],'original_axis_on_canvas':[48,96],'hd_axis_on_canvas':[384,768],'original_visible_size':[original_width,original_height],'hd_visible_size_original_units':[width/8,height/8],'placement':[left,top],'method':'Uniform scale to original visible height; horizontal visible-bounds centers aligned. Original SFF origin retained on common canvas. No pose deformation.','limitations':['Matching height and origin does not match anatomy or foot angles.','Original xscale/yscale=1.3 and all hitboxes remain unchanged.','Do not replace SFF sprite directly: HD requires an appropriate visual scale at import.']}
(out/f'ryu_idle_{args.frame:03d}_hd_aligned_{args.tag}.json').write_text(json.dumps(report,indent=2),encoding='utf-8')
for name in [aligned_name,comparison_name]:
    with Image.open(out/name) as im: im.verify()
print(json.dumps(report,indent=2))
