# Ryu HD idle pass 01

Method: built-in image_gen, followed by local alpha cleanup and uniform alignment.
Status: review candidate; not approved and not imported into the SFF.

## Frame sources

- Frame 1: `ryu_idle_001_hd_cutout_v02.png`
- Frame 2: `ryu_idle_002_hd_cutout_v01.png`
- Frame 3: `ryu_idle_003_hd_cutout_v01.png`
- Frame 4: `ryu_idle_004_hd_cutout_v01.png`

Each frame is aligned to the matching source sprite's visible height and shared ground origin. The AIR timing remains 6 ticks per frame, 24 ticks total (0.4 seconds at 60 FPS).

## QA findings

- All four frames use real RGBA transparency after cleanup.
- Face, hair, belt and gi details remain close but are not identical between frames.
- The HD silhouette remains around 37-40 original coordinate units wide versus 35-36 in the source.
- Feet and some limb angles still drift from the SNES reference.
- These files must remain outside the game build until the animation is reviewed and pose/identity drift is corrected.

Prompts were structured as identity-preserving edits: frame 1 defined the visual design, while each original SNES frame defined pose and silhouette. Avoid constraints included 3D rendering, photorealism, redesign, wide stance, moved ground contacts, text and additional poses.

## Exact prompt set

### Frame 1 revision

Use case: identity-preserve
Asset type: production candidate for a single IKEMEN GO idle sprite
Input images:
- Image 1 is the current HD Ryu artwork and must define face, costume, colors, linework and rendering style only.
- Image 2 is the authoritative original SNES SSF2 pose. Its anatomy landmarks and silhouette are mandatory.
- Image 3 is a scale/overlay diagnosis showing the mismatch.
Primary request: redraw one full-body HD Ryu frame so its pose matches Image 2 pixel-for-pixel in structure when uniformly scaled: same narrow hunched stance, head location and downward angle, raised rear shoulder, torso lean, belt height, both elbow locations, near fist held low beside the hip, guard fist close to the chest, same bent knees, same leg angles, same narrow foot spacing, and both feet pointing in the same directions as the original.
Style/medium: retain Image 1's polished hand-painted 2D fighting-game sprite look with restrained cel shading.
Constraints: classic athletic Ryu; white torn sleeveless gi, black belt, red headband and gloves, bare feet; whole body uncropped; one character; clean silhouette. Preserve the compact SNES proportions rather than making him tall or broad. The head, belt, knees, ankles and fists must align with the source pose after uniform scaling.
Background: genuine transparent alpha; no checkerboard drawn into the RGB pixels.
Avoid: dramatic new pose, wide stance, upright torso, lowered shoulder, large separated feet, modern SF6 design, photorealism, 3D render, excessive muscles, floor, shadow, FX, text, sprite sheet, extra pose.

### Frame 2

Use case: identity-preserve
Asset type: second frame of an IKEMEN GO HD idle animation
Input images:
- Image 1 is the approved visual master candidate for Ryu frame 1. Preserve this exact face, hair, headband design, gi construction, glove design, body proportions, line weight, palette and hand-painted cel-shaded rendering.
- Image 2 is the authoritative SNES SSF2 frame 2 pose. Use it only for the precise motion and silhouette change.
Primary request: create ONE full-body HD Ryu sprite representing frame 2. It is the same character one tenth of a second later in the idle cycle. Match Image 2's compact pose: torso and head slightly lower than frame 1, rear shoulder position, both fists shifted with the source, knees and hips compressed, feet planted at the same ground contacts and angles. The motion must feel like subtle breathing/bobbing, not a new stance.
Constraints: identity and costume must remain visually identical to Image 1; white torn sleeveless gi, black belt, red headband and gloves, bare feet; one character; whole body uncropped; compact SNES silhouette; clean edges.
Background: genuine transparent alpha. Do not draw a checkerboard.
Avoid: redesigning face or hair, changing muscle size, changing belt/gi details, moving feet along the ground, widening stance, new pose, dramatic motion, photorealism, 3D, floor, shadow, text, sprite sheet, extra frames.

### Frame 3

Use case: identity-preserve
Asset type: third frame of an IKEMEN GO HD idle animation
Input images:
- Image 1 is the exact visual master for Ryu: lock face, hair, headband, gi, gloves, anatomy, palette, linework and cel-shaded paint style.
- Image 2 is the authoritative SNES SSF2 frame 3 pose and silhouette.
Primary request: create ONE full-body HD Ryu sprite for idle frame 3. Match Image 2's pose precisely. This frame returns near frame 1: same planted feet and compact narrow stance, same head/shoulder height, torso lean, elbow and fist positions, knee bends, leg angles and foot directions shown in Image 2. It must look like the same drawing model within one subtle breathing loop.
Constraints: preserve Image 1 identity and costume exactly; classic athletic Ryu, white torn sleeveless gi, black belt, red headband and gloves, bare feet; complete uncropped body; one character; clean silhouette.
Background: genuine transparent alpha; do not draw checkerboard.
Avoid: identity drift, different hair or face, different belt knot or gi tears, changed muscle mass, wide stance, moving ground contacts, dramatic action pose, 3D, photorealism, floor, shadow, FX, text, sheet, extra frame.

### Frame 4

Use case: identity-preserve
Asset type: fourth frame of an IKEMEN GO HD idle animation
Input images:
- Image 1 is the exact visual master for Ryu. Lock its face, hair, headband, gi design, gloves, body proportions, palette, linework and cel-shaded paint style.
- Image 2 is the authoritative SNES SSF2 frame 4 pose and silhouette.
Primary request: create ONE full-body HD Ryu sprite for idle frame 4. Match Image 2's distinct upper breathing pose: rear shoulder and upper arm raised higher, guard fist near the face, head position and tilt, low forward fist, torso lean, belt height, bent knees, leg angles, narrow foot spacing and ground contacts. It must transition naturally from the other idle frames and remain the same character.
Constraints: classic athletic Ryu; identical white torn sleeveless gi, black belt, red headband and gloves, bare feet; complete uncropped body; compact source proportions; one character; clean edges.
Background: genuine transparent alpha; do not draw a checkerboard.
Avoid: different face/hair, altered gi or belt knot, muscle growth, wide stance, moved feet, upright pose, dramatic attack, 3D, photorealism, floor, shadow, FX, text, sheet, extra frame.
