from io import BytesIO
from pathlib import Path
import struct

from PIL import Image, ImageDraw


ROOT = Path(__file__).resolve().parents[1]
CHAR = ROOT / "chars" / "Death Ogre"
BASE_ACT = CHAR / "OGRE1.act"
OUTPUT_ACT = CHAR / "OGRE7.act"
PREVIEW = ROOT / "assets" / "generated" / "death_ogre" / "death_palette_preview.png"


def set_color(palette: bytearray, index: int, color: tuple[int, int, int]) -> None:
    start = index * 3
    palette[start : start + 3] = bytes(color)


palette = bytearray(BASE_ACT.read_bytes())
if len(palette) != 768:
    raise RuntimeError("Expected a 768-byte ACT palette")

# Red energy/effect ramps. These indices are the same color-selectable ranges
# used by the six original palettes, so fixed effect and UI colors stay intact.
effect_colors = {
    9: (220, 32, 48),
    10: (95, 0, 12),
    11: (235, 60, 70),
    12: (245, 100, 105),
    13: (255, 145, 145),
    58: (170, 0, 20),
    59: (235, 20, 40),
    64: (255, 150, 160),
    79: (70, 20, 25),
    82: (240, 75, 90),
    83: (150, 0, 20),
    84: (210, 20, 40),
    85: (115, 0, 16),
    86: (255, 210, 215),
    87: (255, 55, 70),
    88: (255, 35, 55),
    89: (245, 85, 95),
    90: (225, 25, 45),
    91: (200, 15, 35),
    92: (175, 10, 30),
    93: (145, 5, 20),
    94: (80, 0, 10),
    95: (110, 0, 15),
    176: (70, 0, 10),
    177: (90, 0, 15),
    178: (135, 0, 25),
    179: (185, 10, 35),
    180: (235, 30, 55),
}

# ACT indices 250..254 map to the five skin shades used by the sprites.
# The ramp stays monotonic so muscle definition is not lost in the dark design.
skin_colors = {
    250: (18, 3, 6),
    251: (45, 7, 12),
    252: (78, 12, 20),
    253: (120, 20, 30),
    254: (170, 35, 45),
}

# ACT indices 243..249 map to hair and the secondary costume ramp.
# The brightest entry remains dirty ivory so teeth and tiny highlights stay clear.
secondary_colors = {
    243: (0, 0, 0),
    244: (4, 4, 5),
    245: (8, 8, 10),
    246: (13, 13, 16),
    247: (20, 20, 24),
    248: (32, 32, 38),
    249: (215, 205, 185),
}

for index, color in {**effect_colors, **skin_colors, **secondary_colors}.items():
    set_color(palette, index, color)

OUTPUT_ACT.write_bytes(palette)


def extract_sprites() -> dict[tuple[int, int], Image.Image]:
    source = (CHAR / "OGRE.sff").read_bytes()
    position = struct.unpack_from("<I", source, 24)[0]
    wanted = {(0, 0), (200, 0), (1000, 0), (4000, 0)}
    result: dict[tuple[int, int], Image.Image] = {}
    while position and position < len(source) and wanted - result.keys():
        next_position, length, _x, _y, group, image, _previous, _same_pal = struct.unpack_from(
            "<IIhhHHHB", source, position
        )
        key = (group, image)
        if key in wanted and key not in result and length:
            try:
                result[key] = Image.open(
                    BytesIO(source[position + 32 : position + 32 + length])
                ).copy()
            except OSError:
                pass
        position = next_position
    return result


def apply_act(indexed: Image.Image, act: bytes) -> Image.Image:
    colors = [tuple(act[i : i + 3]) for i in range(0, 768, 3)]
    # MUGEN v1 SFF sprite indices use the ACT table in reverse order.
    flat = [channel for color in reversed(colors) for channel in color]
    image = indexed.copy().convert("P")
    image.putpalette(flat)
    image.info["transparency"] = 0
    return image.convert("RGBA")


sprites = extract_sprites()
base = BASE_ACT.read_bytes()
new = OUTPUT_ACT.read_bytes()
scale = 3
cell_w, cell_h = 260, 360
sheet = Image.new("RGBA", (cell_w * 2, cell_h * max(1, len(sprites))), (22, 20, 24, 255))
draw = ImageDraw.Draw(sheet)
draw.text((12, 10), "ORIGINAL PALETTE 1", fill=(235, 235, 235, 255))
draw.text((cell_w + 12, 10), "DEATH PALETTE 7", fill=(235, 70, 85, 255))

for row, (key, indexed) in enumerate(sorted(sprites.items())):
    for column, act in enumerate((base, new)):
        rendered = apply_act(indexed, act)
        rendered = rendered.resize((rendered.width * scale, rendered.height * scale), Image.Resampling.NEAREST)
        x = column * cell_w + (cell_w - rendered.width) // 2
        y = row * cell_h + 36 + (cell_h - 48 - rendered.height) // 2
        sheet.alpha_composite(rendered, (x, y))
    draw.text((12, row * cell_h + cell_h - 24), f"Sprite {key[0]},{key[1]}", fill=(170, 170, 170, 255))

PREVIEW.parent.mkdir(parents=True, exist_ok=True)
sheet.convert("RGB").save(PREVIEW)

print(f"Created {OUTPUT_ACT}")
print(f"Created {PREVIEW}")
