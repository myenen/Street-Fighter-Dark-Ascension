from pathlib import Path
import json
import numpy as np
from PIL import Image, ImageDraw


root = Path(__file__).resolve().parents[1]
reference = root / "assets/reference/ryu/idle_original"
out = root / "assets/generated/ryu"
out.mkdir(parents=True, exist_ok=True)


def scale2x(image: Image.Image) -> Image.Image:
    """Double pixel art while keeping hard palette edges."""
    source = np.asarray(image.convert("RGBA"))
    padded = np.pad(source, ((1, 1), (1, 1), (0, 0)), mode="edge")
    b = padded[:-2, 1:-1]
    d = padded[1:-1, :-2]
    e = padded[1:-1, 1:-1]
    f = padded[1:-1, 2:]
    h = padded[2:, 1:-1]
    condition = np.any(b != h, axis=2) & np.any(d != f, axis=2)
    e0 = np.where((condition & np.all(d == b, axis=2))[..., None], d, e)
    e1 = np.where((condition & np.all(b == f, axis=2))[..., None], f, e)
    e2 = np.where((condition & np.all(d == h, axis=2))[..., None], d, e)
    e3 = np.where((condition & np.all(h == f, axis=2))[..., None], f, e)
    result = np.empty((source.shape[0] * 2, source.shape[1] * 2, 4), dtype=np.uint8)
    result[0::2, 0::2] = e0
    result[0::2, 1::2] = e1
    result[1::2, 0::2] = e2
    result[1::2, 1::2] = e3
    return Image.fromarray(result, "RGBA")


frames = []
for index in range(4):
    source = Image.open(reference / f"ryu_idle_{index + 1:03d}.png").convert("RGBA")
    frame = scale2x(source)
    frame.save(out / f"ryu_idle_faithful_2x_v05_{index:03d}.png")
    frames.append(frame)

# Preview is enlarged with nearest-neighbour only, so it shows the in-game edge quality.
preview_frames = []
for frame in frames:
    enlarged = frame.resize((frame.width * 4, frame.height * 4), Image.Resampling.NEAREST)
    background = Image.new("RGBA", enlarged.size, (25, 30, 40, 255))
    background.alpha_composite(enlarged)
    draw = ImageDraw.Draw(background)
    draw.line((0, 768, background.width - 1, 768), fill=(65, 160, 145, 255), width=2)
    preview_frames.append(background.convert("RGB"))

preview_frames[0].save(
    out / "ryu_idle_faithful_2x_v05.gif",
    save_all=True,
    append_images=preview_frames[1:],
    duration=100,
    loop=0,
    disposal=2,
)

report = {
    "method": "Scale2x once (2x), palette-edge preserving",
    "generated_content": False,
    "pose_changes": False,
    "source_palette_preserved": True,
    "frame_count": 4,
    "ticks_per_frame": 6,
    "cycle_ticks": 24,
    "character_scale": 0.65,
}
(out / "ryu_idle_faithful_2x_v05.json").write_text(
    json.dumps(report, indent=2), encoding="utf-8"
)
print(json.dumps(report, indent=2))
