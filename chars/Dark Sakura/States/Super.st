; _________________________________________
;| Sakura by varo_hades                    |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;===============================================================================
;=============================<SUPER STATES>====================================
;===============================================================================

;========================<SHINKUU HADOU KEN>=============================
[StateDef 3000]
type = S
physics = S
moveType = A
anim = 3000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3000, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3000, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3000, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3000, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 33

[State 3000, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3000, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = anim = 3000 || (anim = 3001 && animelemtime(2) < 0)
time = 1
value = SCA

[State 3000, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = !time
value = 3000,0
channel = 0

[State 3000, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = !time
value = 3000,10
channel = 0

;[State 3000, focus]
;type = helper
;trigger1 = anim = 3000 && animelem = 2
;helpertype = normal
;stateno = 3004
;ID = 3004
;name = "Hadouken Charge"
;postype = p1
;ownpal = 1

[State 3000, SuperPause FX]
type = Helper
trigger1 = anim = 3000 && animelem = 2
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(-38 * const(size.xScale)), ceil(-124 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = anim = 3000 && animelem = 2
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3000, width]
type = width
trigger1 = anim = 3001 && animelemtime(2) < 0
trigger2 = anim = 3001 && animelemtime(12) >= 0 && animelemtime(13) < 0
value = 27

[State 3000, width]
type = width
trigger1 = anim = 3001 && animelemtime(2) >= 0 && animelemtime(12) < 0
value = 40

[State 3000, Anim]
type = changeanim
trigger1 = anim = 3000 && time >= 48
value = 3001

[State 3000, hadouken]
type = helper
trigger1 = anim = 3001 && animelem = 2
helpertype = normal
stateno = 3005
ID = 3005
name = "Hadouken"
postype = p1
pos = 86,-55
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 105, Dust Helper]
type = Helper
trigger1 = anim = 3001 && animelem = 2
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
Pos = 40,0
facing = 1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3000, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = anim = 3001 && animelem = 2
value = 3000,1
channel = 0

[State 3000, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = anim = 3001 && animelem = 2
value = 3000,11
channel = 0

[State 3000, Snd]
type = playsnd
trigger1 = anim = 3001 && animelem = 2
value = 3000,2

[State 3000, End]
type = changestate
trigger1 = anim = 3001 && !animtime
value = 0
ctrl = 1

;========================<SHINKUU TENGYOU HADOU KEN>=============================
[StateDef 3020]
type = S
physics = S
moveType = A
anim = 3020
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3000, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3000, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3000, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3000, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3000, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3000, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = anim = 3000 || (anim = 3001 && animelemtime(2) < 0)
time = 1
value = SCA

[State 3020, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = !time
value = 3000,0
channel = 0

[State 3020, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = !time
value = 3000,10
channel = 0

;[State 3020, focus]
;type = helper
;trigger1 = anim = 3020 && animelem = 2
;helpertype = normal
;stateno = 3024
;ID = 3024
;name = "Hadouken Charge"
;postype = p1
;ownpal = 1
;supermovetime = 300

[State 3000, SuperPause FX]
type = Helper
trigger1 = anim = 3020 && animelem = 2
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(-18 * const(size.xScale)), ceil(-114 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = anim = 3020 && animelem = 2
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3020, NHB]
type = nothitby
trigger1 = anim = 3020 || (anim = 3021 && animelemtime(2) < 0)
time = 1
value = SCA

[State 3020, width]
type = width
trigger1 = anim = 3021 && animelemtime(2) < 0
trigger2 = anim = 3021 && animelemtime(12) >= 0 && animelemtime(13) < 0
value = 9

[State 3020, width]
type = width
trigger1 = anim = 3021 && animelemtime(2) >= 0 && animelemtime(12) < 0
value = 18

[State 3020, Anim]
type = changeanim
trigger1 = anim = 3020 && time >= 48
value = 3021

[State 3020, hadouken]
type = helper
trigger1 = anim = 3021 && animelem = 2
helpertype = normal
stateno = 3025
ID = 3025
name = "Hadouken"
postype = p1
pos = 58,-105
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 105, Dust Helper]
type = Helper
trigger1 = anim = 3001 && animelem = 2
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
Pos = 40,0
facing = 1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3020, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = anim = 3021 && animelem = 2
value = 3000,1
channel = 0

[State 3020, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = anim = 3021 && animelem = 2
value = 3000,11
channel = 0

[State 3020, Snd]
type = playsnd
trigger1 = anim = 3021 && animelem = 2
value = 3000,2

[State 3020, End]
type = changestate
trigger1 = anim = 3021 && !animtime
value = 0
ctrl = 1

;========================<MAX SHINKUU HADOU KEN>=============================
[StateDef 3050]
type = S
physics = S
moveType = A
anim = 3000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3050, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3050, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3050, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3050, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3050, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 33

[State 3050, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3050, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = anim = 3000 || (anim = 3001 && animelemtime(4) < 0)
time = 1
value = SCA

[State 3000, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = !time
value = 3000,0
channel = 0

[State 3000, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = !time
value = 3000,10
channel = 0

;[State 3000, focus]
;type = helper
;trigger1 = anim = 3000 && animelem = 2
;helpertype = normal
;stateno = 3004
;ID = 3004
;name = "Hadouken Charge"
;postype = p1
;ownpal = 1

[State 3000, SuperPause FX]
type = Helper
trigger1 = anim = 3000 && animelem = 2
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(-38 * const(size.xScale)), ceil(-126 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = anim = 3000 && animelem = 2
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,1
darken = 0

[State 3000, width]
type = width
trigger1 = anim = 3001 && animelemtime(2) < 0
trigger2 = anim = 3001 && animelemtime(12) >= 0 && animelemtime(13) < 0
value = 27

[State 3000, width]
type = width
trigger1 = anim = 3001 && animelemtime(2) >= 0 && animelemtime(12) < 0
value = 40

[State 3000, Anim]
type = changeanim
trigger1 = anim = 3000 && time >= 48
value = 3001

[State 3000, hadouken]
type = helper
trigger1 = anim = 3001 && animelem = 2
helpertype = normal
stateno = 3055
ID = 3005
name = "Hadouken"
postype = p1
pos = 86,-55
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 105, Dust Helper]
type = Helper
trigger1 = anim = 3001 && animelem = 2
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
Pos = 40,0
facing = 1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3000, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = anim = 3001 && animelem = 2
value = 3000,1
channel = 0

[State 3000, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = anim = 3001 && animelem = 2
value = 3000,11
channel = 0

[State 3000, Snd]
type = playsnd
trigger1 = anim = 3001 && animelem = 2
value = 3000,2

[State 3000, End]
type = changestate
trigger1 = anim = 3001 && !animtime
value = 0
ctrl = 1

;========================<MAX SHINKUU TENGYOU HADOU KEN>=============================
[StateDef 3070]
type = S
physics = S
moveType = A
anim = 3020
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3000, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3000, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3000, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3000, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3000, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3000, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = anim = 3000 || (anim = 3001 && animelemtime(4) < 0)
time = 1
value = SCA

[State 3020, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = !time
value = 3000,0
channel = 0

[State 3020, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = !time
value = 3000,10
channel = 0

;[State 3020, focus]
;type = helper
;trigger1 = anim = 3020 && animelem = 2
;helpertype = normal
;stateno = 3024
;ID = 3024
;name = "Hadouken Charge"
;postype = p1
;ownpal = 1
;supermovetime = 300

[State 3000, SuperPause FX]
type = Helper
trigger1 = anim = 3020 && animelem = 2
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(-18 * const(size.xScale)), ceil(-114 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = anim = 3020 && animelem = 2
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,1
darken = 0

[State 3020, NHB]
type = nothitby
trigger1 = anim = 3020 || (anim = 3021 && animelemtime(4) < 0)
time = 1
value = SCA

[State 3020, width]
type = width
trigger1 = anim = 3021 && animelemtime(2) < 0
trigger2 = anim = 3021 && animelemtime(12) >= 0 && animelemtime(13) < 0
value = 9

[State 3020, width]
type = width
trigger1 = anim = 3021 && animelemtime(2) >= 0 && animelemtime(12) < 0
value = 18

[State 3020, Anim]
type = changeanim
trigger1 = anim = 3020 && time >= 48
value = 3021

[State 3020, hadouken]
type = helper
trigger1 = anim = 3021 && animelem = 2
helpertype = normal
stateno = 3075
ID = 3025
name = "Hadouken"
postype = p1
pos = 58,-105
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 105, Dust Helper]
type = Helper
trigger1 = anim = 3001 && animelem = 2
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
Pos = 40,0
facing = 1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3020, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = anim = 3021 && animelem = 2
value = 3000,1
channel = 0

[State 3020, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = anim = 3021 && animelem = 2
value = 3000,11
channel = 0

[State 3020, Snd]
type = playsnd
trigger1 = anim = 3021 && animelem = 2
value = 3000,2

[State 3020, End]
type = changestate
trigger1 = anim = 3021 && !animtime
value = 0
ctrl = 1

;========================<MIDARE-ZAKURA>=============================
[StateDef 3100]
type = S
physics = S
moveType = A
anim = 3100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3100, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3100, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3100, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3100, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3100, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3100, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3100, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3100, NotHitBy]
type = NotHitBy
trigger1 = anim = 3100 && animelemtime(4) < 5
time = 1
value = SCA

[State 3100, Super Pause FX]
type = Helper
trigger1 = anim = 3100 && animelemtime(1) = 1
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(-36 * const(size.xScale)), ceil(-136 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3100, SuperPause]
type = SuperPause
trigger1 = anim = 3100 && animelemtime(1) = 1
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3100, Vel]
type = velset
trigger1 = anim = 3100 && animelem = 2
x = 12

[State 3100, Vel]
type = velset
trigger1 = anim = 3100 && animelem = 14
x = 18

[State 3100, Landing Sound]
type = PlaySnd
trigger1 = anim = 3100 && (animelem = 4 || animelem = 15)
value = 52,0

[State 3100, Landing Dust Explod]
type = Explod
trigger1 = anim = 3100 && (animelem = 4 || animelem = 15)
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3100, Vel]
type = velset
triggerall = anim = 3100
trigger1 = (animelemtime(9) >= 0 && animelemtime(14) < 0)
x = 0

[State 3100, Snd]
type = playsnd
trigger1 = anim = 3100 && animelemtime(17) = 1
value = 41,0

[State 3100, Dust]
type = helper
trigger1 = anim = 3100 && animelemtime(17) = 1
helpertype = normal
stateno = 8100
ID = 8100
name = "Dust"
postype = p1
ownpal = 1

[State 3100, Vel]
type = velset
trigger1 = anim = 3100 && animelemtime(17) = 1
x = 11
y = -9.5

[State 3100, Vel]
type = velmul
trigger1 = anim = 3100 && animelemtime(17) > 1
x = 0.25

[State 3100, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = anim = 3100 && animelemtime(1) = 1
value = 3100,0
channel = 0

[State 3100, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = anim = 3100 && animelemtime(1) = 1
value = 3100,10
channel = 0

[State 3100, Snd]
type = playsnd
trigger1 = anim = 3100 && animelem = 6
value = 1,3
channel = 1

[State 3100, Snd]
type = playsnd
trigger1 = anim = 3100 && animelem = 17
value = 1,4
channel = 1

[State 3100, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = anim = 3100 && animelem = 17
value = 4,4
channel = 0

[State 3100, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = anim = 3100 && animelem = 17
value = 4,14
channel = 0

[State 3100, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 = (animelem = 4 || animelem = 15) && anim = 3100
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 36 < 7, 7, fvar(11) * 36)), 8
getPower = 0,0
givePower = 36, 36
pauseTime = 8,12
guard.pauseTime = 6,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 21
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.52
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = 0.6
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 94), var(36) := -30
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, HitDef 2]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 = (animelem = 5 || animelem = 16) && anim = 3100
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 36 < 7, 7, fvar(11) * 36)), 8
getPower = 0,0
givePower = 36, 36
pauseTime = 8,12
guard.pauseTime = 6,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 21
ground.slideTime = 18
guard.hitTime = 17
air.hitTime = 120
ground.velocity = -4.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.52
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = 0.6
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 93), var(36) := -61
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, HitDef 3]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 = animelem = 6 && anim = 3100
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 10
getPower = 0,0
givePower = 36, 36
pauseTime = 8,12
guard.pauseTime = 6,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 21
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.52
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = 0.6
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 135), var(36) := -92
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, HitDef 4]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 = animelem = 17 && anim = 3100
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 10
getPower = 0,0
givePower = 36, 36
pauseTime = 8,6
guard.pauseTime = 6,12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.5, -12.5
ground.cornerPush.velOff = 0
guard.velocity = -6.52
guard.cornerPush.velOff = 0
air.velocity = -2.5, -12.5
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 135), var(36) := -92
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, statetype]
type = statetypeset
trigger1 = anim = 3100 && animelemtime(17) >= 1
statetype = A
physics = A

[State 3100, Anim]
type = changeanim
trigger1 = anim = 3100 && animelemtime(17) > 1 && vel y > -5
value = 1103

[State Idle]
type = statetypeset
trigger1 = anim = 1103
movetype = I

[State 3100, End]
type = changestate
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 3105

;Landing
[Statedef 3105]
type = S
physics = N
movetype = I
ctrl = 0
anim = 1104
velset = 0,0
sprpriority = 1
movehitpersist = 1

[State 3105, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3105, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3105, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 3105, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;========================<MAX MIDARE-ZAKURA>=============================
[StateDef 3150]
type = S
physics = S
moveType = A
anim = 3150
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3150, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3150, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3150, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3150, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3150, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3150, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3150, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3100, NotHitBy]
type = NotHitBy
trigger1 = anim = 3150 && animelemtime(5) < 0
time = 1
value = SCA

[State 3100, Super Pause FX]
type = Helper
trigger1 = anim = 3150 && animelemtime(1) = 1
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(-36 * const(size.xScale)), ceil(-136 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3100, SuperPause]
type = SuperPause
trigger1 = anim = 3150 && animelemtime(1) = 1
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,1
darken = 0

[State 3100, Vel]
type = velset
trigger1 = anim = 3150 && (animelem = 2 || animelem = 14)
x = 12

[State 3100, Vel]
type = velset
trigger1 = anim = 3150 && animelem = 25
x = 18

[State 3100, Landing Sound]
type = PlaySnd
trigger1 = anim = 3150 && (animelem = 4 || animelem = 15 || animelem = 26)
value = 52,0

[State 3100, Landing Dust Explod]
type = Explod
trigger1 = anim = 3150 && (animelem = 4 || animelem = 15 || animelem = 26)
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3100, Vel]
type = velset
triggerall = anim = 3150
trigger1 = (animelemtime(9) >= 0 && animelemtime(14) < 0)
trigger2 = (animelemtime(20) >= 0 && animelemtime(25) < 0)
x = 0

[State 3100, Snd]
type = playsnd
trigger1 = anim = 3150 && animelemtime(28) = 1
value = 41,0

[State 3100, Dust]
type = helper
trigger1 = anim = 3150 && animelemtime(28) = 1
helpertype = normal
stateno = 8100
ID = 8100
name = "Dust"
postype = p1
ownpal = 1

[State 3100, Vel]
type = velset
trigger1 = anim = 3150 && animelemtime(28) = 1
x = 12
y = -9.5

[State 3100, Vel]
type = velmul
trigger1 = anim = 3150 && animelemtime(28) > 1
x = 0.25

[State 3100, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = anim = 3150 && animelemtime(1) = 1
value = 3100,0
channel = 0

[State 3100, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = anim = 3150 && animelemtime(1) = 1
value = 3100,10
channel = 0

[State 3100, Snd]
type = playsnd
trigger1 = anim = 3150 && (animelem = 6 || animelem = 17)
value = 1,3
channel = 1

[State 3100, Snd]
type = playsnd
trigger1 = anim = 3150 && animelem = 28
value = 1,4
channel = 1

[State 3100, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = anim = 3150 && animelem = 28
value = 4,4
channel = 0

[State 3100, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = anim = 3150 && animelem = 28
value = 4,14
channel = 0

[State 3100, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 =  (animelem = 4 || animelem = 15 || animelem = 26) && anim = 3150
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 36 < 7, 7, fvar(11) * 36)), 8
getPower = 0,0
givePower = 36, 36
pauseTime = 8,12
guard.pauseTime = 6,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 21
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.52
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = 0.6
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 94), var(36) := -30
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, HitDef 2]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 = (animelem = 5 || animelem = 16 || animelem = 27) && anim = 3150
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 36 < 7, 7, fvar(11) * 36)), 8
getPower = 0,0
givePower = 36, 36
pauseTime = 8,12
guard.pauseTime = 6,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 21
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.52
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = 0.6
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 93), var(36) := -61
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, HitDef 3]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 =  (animelem = 6 || animelem = 17) && anim = 3150
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 8
getPower = 0,0
givePower = 36, 36
pauseTime = 8,12
guard.pauseTime = 6,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 21
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.52
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = 0.6
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 135), var(36) := -92
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, HitDef 4]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 =  (animelem = 28) && anim = 3150
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 8
getPower = 0,0
givePower = 36, 36
pauseTime = 8,6
guard.pauseTime = 6,12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.5, -12.5
ground.cornerPush.velOff = 0
guard.velocity = -6.52
guard.cornerPush.velOff = 0
air.velocity = -2.5, -12.5
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 135), var(36) := -92
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, statetype]
type = statetypeset
trigger1 = anim = 3150 && animelemtime(28) >= 1
statetype = A
physics = A

[State 3100, Anim]
type = changeanim
trigger1 = anim = 3150 && animelemtime(28) > 1 && vel y > -5
value = 1103

[State Idle]
type = statetypeset
trigger1 = anim = 1103
movetype = I

[State 3150, End]
type = changestate
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 3105

;========================<HARU RANMAN>=============================
[StateDef 3200]
type = S
physics = N
moveType = A
anim = 3200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -3000
faceP2 = 1

[State 3200, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3200, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3200, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3200, Corner Push]
type = VarSet
trigger1 = 1
fvar(5) = 0

[State 3200, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3200, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3200, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3200, NotHitBy]
type = NotHitBy
trigger1 = anim = 3201 && animelemtime(7) < 0
time = 1
value = SCA

[State 3200, Super Pause FX]
type = Helper
trigger1 = Time = 0
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = ceil(0 * const(size.xScale)), ceil(-100 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3200, Super Pause]
type = SuperPause
trigger1 = Time = 0
time = 60
moveTime = 60
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,2
darken = 0

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(40) = 0
trigger1 = time = 1
value = 1300,0

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(40) = 1
trigger1 = time = 1
value = 1300,10

[State 1001,1]
type = ChangeState
trigger1 = time = 60
value = 3201
ctrl = 0

;Attack
[Statedef 3201]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 3201

[State 3100, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 = animelem = 5
trigger2 = animelem = 9
attr = C, HA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 88 < 7, 7, fvar(11) * 88)), 15
getPower = 0,0
givePower = 36, 36
pauseTime = 14,15
guard.pauseTime = 10,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 21
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.52
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = 0.6
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 94), var(36) := -5
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3100, HitDef 2]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 = animelem = 14
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 88 < 7, 7, fvar(11) * 88)), 15
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 21
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -5.5, -8
ground.cornerPush.velOff = 0
guard.velocity = -4.52
guard.cornerPush.velOff = 0
air.velocity = -5.5, -8
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 94), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0
p2stateno = ifelse (p2life > 0 ,3205, 5000)
p1stateno = ifelse (p2life > 0 ,3210, 3211)

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 14
value = 4,2

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 5
trigger2 = animelem = 9
value = 1,5

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 14
value = 1,5

[State 3200, Dust]
type = explod
trigger1 = animelemtime(3) >= 0 && animelemtime(11) < 0 && !(time % 4)
anim = 8104
ID = 8104
sprpriority = 3
postype = p1
scale = 0.5,0.5
pos = 20,0
vel = -1,0
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 0, VelSet]
type = VelSet
trigger1 = time >= 0
x = 1

[State 0, VelSet]
type = VelSet
trigger1 = time >= 4
x = 6

[State 0, VelSet]
type = VelSet
trigger1 = time >= 15
x = 4

[State 0, VelSet]
type = VelSet
trigger1 = time >= 18
x = 2

[State 0, VelSet]
type = VelSet
trigger1 = time >= 20
x = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = time >= 15
value = 1
movecamera = 0,0

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Connect
[Statedef 3210]
type = A
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 3210

[State 0, PlaySnd]
type = PlaySnd
trigger1 = Time = 46
value = 41,0
persistent = 0

[State 4101, Dust]
type = helper
trigger1 = Time = 46
helpertype = normal
stateno = 8100
ID = 8100
name = "Dust"
postype = p1
ownpal = 1

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 1
time = 20
freq = 110
ampl = 7
phase = 90
persistent = 0

[State 0, TargetBind]
type = TargetBind
trigger1 = animelem = 1
time = 1
pos = 60,0

[State 0, VelSet]
type = VelSet
trigger1 = time >= 47
y = -16

[State 0, VelSet]
type = VelSet
trigger1 = pos Y <= -400
y = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 60
value = 3220
ctrl = 0

;Fail
[Statedef 3211]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 3211

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

; P2 throw 02
[Statedef 3205]
type = A
movetype = H
physics = N
velset = 0,0

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 3205

[State 0, PosSet]
type = Posadd
trigger1 = time = 20
x = -30

[State 0, VelSet]
type = VelSet
trigger1 = time >= 20
y = -16

[State 0, VelSet]
type = VelSet
trigger1 = pos Y <= -400
y = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 0, ChangeState]
type = ChangeState
trigger1 = p2stateno = 3220
value = 3225
ctrl = 0

;Air
[Statedef 3220]
type = A
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 3220

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 3
value = 1,2
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(40) = 0
trigger1 = animelem = 3
value = 4,3

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(40) = 1
trigger1 = animelem = 3
value = 4,13

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(40) = 0
trigger1 = animelem = 13
value = 4,4

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(40) = 1
trigger1 = animelem = 13
value = 4,14

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 8
trigger2 = animelem = 10
trigger3 = animelem = 13
value = 41,0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 4
value = 2,2
persistent = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 4
time = 20
freq = 110
ampl = 7
phase = 90

[State 1035, HitSpark]
type = Helper
trigger1 = animelem = 4
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P1
pos = 20,-30
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 0, HitAdd]
type = HitAdd
trigger1 = animelem = 4
value = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = globalnoshadow
flag2 = noBG
flag3 = noFG

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
trigger1 = var(55) = 1
x = -10
y = 200

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
trigger1 = var(55) = 2
x = 10
y = 200

[State 0, VelSet]
type = VelSet
trigger1 = time >= 5
y = -20

[State 0, VelSet]
type = VelSet
trigger1 = time >= 16
y = -10

[State 0, VelSet]
type = VelSet
trigger1 = time >= 18
y = -8

[State 0, VelSet]
type = VelSet
trigger1 = time >= 20
y = -6

[State 0, VelSet]
type = VelSet
trigger1 = time >= 22
y = -2

[State 0, VelSet]
type = VelSet
trigger1 = time >= 24
y = -1

[State 0, VelSet]
type = VelSet
trigger1 = time >= 26
y = 2

[State 0, VelSet]
type = VelSet
trigger1 = time >= 28
y = 3

[State 0, VelSet]
type = VelSet
trigger1 = time >= 30
y = 7

[State 0, VelSet]
type = VelSet
trigger1 = time >= 32
y = 10

[State 0, VelSet]
type = VelSet
trigger1 = time >= 34
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = time >= 62
y = -4

[State 0, VelSet]
type = VelSet
trigger1 = time >= 72
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = time >= 86
y = 20
x = 6

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 100
value = 3230
ctrl = 0

;Player 2
[Statedef 3225]
type = A
movetype = H
physics = N
velset = 0,0

[State 0, LifeAdd]
type = LifeAdd
trigger1 = animelem = 2
value = -98
kill = 0

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 3225

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
x = 0
y = 180

[State 0, VelSet]
type = VelSet
trigger1 = time >= 0
y = -20

[State 0, VelSet]
type = VelSet
trigger1 = time >= 10
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = time >= 54
y = 20

[State 0, PosSet]
type = PosSet
trigger1 = time >= 60
y = 200

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 0, ChangeState]
type = ChangeState
trigger1 = p2stateno = 3230
value = 3235
ctrl = 0

;Air down
[Statedef 3230]
type = A
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 3230

[State 0, EnvShake]
type = EnvShake
trigger1 = time = 10
time = 20
freq = 110
ampl = 7
phase = 90
persistent = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = time = 10
value = 820,2

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = globalnoshadow

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 0, PosSet]
type = PosSet
trigger1 = var(55) = 1
trigger1 = time = 0
x = -40
y = -220

[State 0, PosSet]
type = PosSet
trigger1 = var(55) = 2
trigger1 = time = 0
x = 40
y = -220

[State 0, VelSet]
type = VelSet
trigger1 = time >= 10
x = 4
y = 30

[State 0, ChangeState]
type = ChangeState
trigger1 = pos Y >= 0 && vel Y > 0
value = 3240
ctrl = 0

;Player 2
[Statedef 3235]
type = A
movetype = H
physics = N
velset = 0,0

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 3235

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 0, PosSet]
type = PosSet
trigger1 = time = 0
x = 0
y = -220

[State 0, VelSet]
type = VelSet
trigger1 = time >= 0
y = 20

[State 0, VelSet]
type = VelSet
trigger1 = pos Y >= 0 && vel Y > 0
y = 0

[State 0, PosSet]
type = PosSet
trigger1 = pos Y >= 0 && vel Y > 0
y = 0

[State 0, SprPriority]
type = SprPriority
trigger1 =  1
value = 1

[State 0, ChangeState]
type = ChangeState
trigger1 = p2stateno = 3240
value = 3245
ctrl = 0

;Kick
[Statedef 3240]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 3240

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 2,5
persistent = 0

[State 0, EnvShake]
type = EnvShake
trigger1 = animelem = 1
time = 20
freq = 110
ampl = 7
phase = 90
persistent = 0

[State 1035, HitSpark]
type = Helper
trigger1 = animelem = 1
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P1
pos = 0,-35
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 0, HitAdd]
type = HitAdd
trigger1 = animelem = 1
value = 1

[State 0, SprPriority]
type = SprPriority
trigger1 =  1
value = 2

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 0, PosAdd]
type = PosAdd
trigger1 = animelem = 1
x = 10

[State 0, ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 3250
ctrl = 0

;Player 2
[Statedef 3245]
type = A
movetype = H
physics = N
velset = 0,0

[State 0, LifeAdd]
type = LifeAdd
trigger1 = time = 1
value = -98
kill = 1

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = time = 0
value = 3245

[State 0, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = animtime = 0
x = -6
y = 10

[State 0, SelfState]
type = SelfState
trigger1 = animtime = 0
value = 5100

;Finish
[Statedef 3250]
type = A
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 3250

[State 0, VelSet]
type = VelSet
trigger1 = time >= 0
x = -3.5
y = -12

[State 0, VelSet]
type = VelSet
trigger1 = time >= 3
y = -6

[State 0, VelSet]
type = VelSet
trigger1 = time >= 6
y = -4

[State 0, VelSet]
type = VelSet
trigger1 = time >= 9
y = -2

[State 0, VelSet]
type = VelSet
trigger1 = time >= 12
y = 0

[State 0, VelSet]
type = VelSet
trigger1 = time >= 15
y = 2

[State 0, VelSet]
type = VelSet
trigger1 = time >= 18
y = 4

[State 0, VelSet]
type = VelSet
trigger1 = time >= 21
y = 6

[State 0, VelSet]
type = VelSet
trigger1 = time >= 24
y = 8

[State 0, ChangeState]
type = ChangeState
trigger1 = pos Y >= 0 && vel Y > 0
value = 3105
ctrl = 1

;========================<HARU ICHIBAN>=============================
[StateDef 3300]
type = S
physics = S
moveType = A
anim = 3300
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3300, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3300, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3300, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3300, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3300, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3300, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3300, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3350, NotHitBy]
type = NotHitBy
trigger1 = animelemtime(8) < 0
time = 1
value = SCA

[State 3350, Super Pause FX]
type = Helper
trigger1 = animelem = 2
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(0 * const(size.xScale)), ceil(-100 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3150, Super Pause]
type = SuperPause
trigger1 = animelem = 2
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3200, Vel]
type = velset
trigger1 = animelemtime(6) >= 0 && animelemtime(23) < 0
x = 4

[State 3200, Dust]
type = explod
trigger1 = animelemtime(6) >= 0 && animelemtime(23) < 0 && !(time % 4)
anim = 8104
ID = 8104
sprpriority = 3
postype = p1
scale = 0.5,0.5
pos = 20,0
vel = -1,0
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 3200, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = animelem = 2
value = 1300,0
channel = 0

[State 3200, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = animelem = 2
value = 1300,10
channel = 0

[State 3200, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = animelem = 7
value = 3300,0
channel = 0

[State 3200, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = animelem = 7
value = 3300,10
channel = 0

[State 3200, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = animelem = 24
value = 4,4
channel = 0

[State 3200, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = animelem = 24
value = 4,14
channel = 0

[State 3200, Snd]
type = playsnd
trigger1 = animelem = 8 || animelem = 12 || animelem = 16 || animelem = 20
value = 1,4

[State 3200, Snd]
type = playsnd
trigger1 = animelem = 24
value = 1,5

[State 3200, statetype]
type = statetypeset
trigger1 = animelemtime(6) >= 0 && animelemtime(23) < 0
statetype = C
physics = C

[State 3200, statetype]
type = statetypeset
trigger1 = animelemtime(6) < 0 || animelemtime(23) >= 0
statetype = C
physics = C

[State 3350, HitDef 1]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = animelem = 8 || animelem = 12 || animelem = 16 || animelem = 20
attr = C, HA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 36 < 7, 7, fvar(11) * 36)), 8
getPower = 0,0
givePower = 36, 36
pauseTime = 6,8
guard.pauseTime = 6,8
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -6.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -6.52
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = 0.6
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
ID = 3300
nochainID = 3301
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 146), var(36) := -10
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3350, HitDef 2]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = animelem = 10 || animelem = 14 || animelem = 18
attr = C, HA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 38 < 7, 7, fvar(11) * 38)), 15
getPower = 0,0
givePower = 36, 36
pauseTime = 6,8
guard.pauseTime = 6,8
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -6.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -6.52
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = 0.6
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
ID = 3301
nochainID = 3300
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 180), var(36) := -10
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3350, HitDef 3]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 =  AnimElem = 25
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 58 < 7, 7, fvar(11) * 58)), 15
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4, -8
ground.cornerPush.velOff = 0
guard.velocity = -8.52
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 180), var(36) := -71
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State Idle]
type = statetypeset
trigger1 = animelemtime(26) >= 0
movetype = I

[State 3200, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;========================<MAX HARU ICHIBAN>=============================
[StateDef 3350]
type = S
physics = S
moveType = A
anim = 3350
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3350, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3350, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3350, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3350, Corner Push]
type = VarSet
trigger1 = time = 3
fvar(5) = 0

[State 3350, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3350, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3350, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3350, NotHitBy]
type = NotHitBy
trigger1 = animelemtime(9) < 0
time = 1
value = SCA

[State 3350, Super Pause FX]
type = Helper
trigger1 = animelem = 2
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(0 * const(size.xScale)), ceil(-100 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3150, Super Pause]
type = SuperPause
trigger1 = animelem = 2
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,1
darken = 0

[State 3200, Vel]
type = velset
trigger1 = animelemtime(6) >= 0 && animelemtime(31) < 0
x = 4

[State 3200, Dust]
type = explod
trigger1 = animelemtime(6) >= 0 && animelemtime(31) < 0 && !(time % 4)
anim = 8104
ID = 8104
sprpriority = 3
postype = p1
scale = 0.5,0.5
pos = 20,0
vel = -1,0
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 3200, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = animelem = 2
value = 1300,0
channel = 0

[State 3200, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = animelem = 2
value = 1300,10
channel = 0

[State 3200, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = animelem = 7
value = 3300,0
channel = 0

[State 3200, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = animelem = 7
value = 3300,10
channel = 0

[State 3200, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = animelem = 32
value = 4,4
channel = 0

[State 3200, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = animelem = 32
value = 4,14
channel = 0

[State 3200, Snd]
type = playsnd
trigger1 = animelem = 8 || animelem = 12 || animelem = 16 || animelem = 20 || animelem = 24 || animelem = 28
value = 1,4

[State 3200, Snd]
type = playsnd
trigger1 = animelem = 32
value = 1,5

[State 3200, statetype]
type = statetypeset
trigger1 = animelemtime(6) >= 0 && animelemtime(31) < 0
statetype = C
physics = C

[State 3200, statetype]
type = statetypeset
trigger1 = animelemtime(6) < 0 || animelemtime(31) >= 0
statetype = C
physics = C

[State 3350, HitDef 1]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = animelem = 8 || animelem = 12 || animelem = 16 || animelem = 20 || animelem = 24 || animelem = 28
attr = C, HA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 38 < 7, 7, fvar(11) * 38)), 15
getPower = 0,0
givePower = 36, 36
pauseTime = 6,8
guard.pauseTime = 6,8
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -6.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -6.52
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = 0.6
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
ID = 3350
nochainID = 3351
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 146), var(36) := -10
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3350, HitDef 2]
type = HitDef
triggerAll = !var(16) && var(15) < 1
trigger1 = animelem = 10 || animelem = 14 || animelem = 18 || animelem = 22 || animelem = 26
attr = C, HA
hitFlag = MAF
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 38 < 7, 7, fvar(11) * 38)), 15
getPower = 0,0
givePower = 36, 36
pauseTime = 6,8
guard.pauseTime = 6,8
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -6.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -6.52
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = 0.6
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
ID = 3351
nochainID = 3350
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 180), var(36) := -10
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3350, HitDef 3]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 =  AnimElem = 33
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 78 < 7, 7, fvar(11) * 78)), 15
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4, -8
ground.cornerPush.velOff = 0
guard.velocity = -8.52
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 180), var(36) := -71
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State Idle]
type = statetypeset
trigger1 = animelemtime(34) >= 0
movetype = I

[State 3200, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;========================<HARU ISSEN>=============================
[StateDef 3400]
type = S
physics = S
moveType = A
anim = 3400
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3300, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3300, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3300, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3300, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3300, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3300, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3300, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3300, NotHitBy]
type = NotHitBy
trigger1 = animelemtime(9) < 0
time = 1
value = SCA

[State 3350, Super Pause FX]
type = Helper
trigger1 = animelem = 2
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(-22 * const(size.xScale)), ceil(-112 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3150, Super Pause]
type = SuperPause
trigger1 = animelem = 2
time = 53
movetime = 53
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 4100, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = animelem = 2
value = 3100,0
channel = 0

[State 4100, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = animelem = 2
value = 3100,10
channel = 0

[State 4100, Vel]
type = velset
trigger1 = animelemtime(8) >= 0
x = 1.25 * const(velocity.run.fwd.x)

[State 4100, steps]
type = playsnd
trigger1 = animelem = 9 || animelem = 12
value = 100,0

[State 3100, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 =  AnimElem = 8
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = 0,0
getPower = 0,0
givePower = 36, 36
pauseTime = 4,12
guard.pauseTime = 4,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = 0, 0
air.cornerPush.velOff = 0
yAccel = 0.6
fall.recoverTime = 120
ID = 3400
p1stateno = 3401
p2facing = 1
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 4100, statetype]
type = statetypeset
trigger1 = anim = 1111
statetype = S
physics = S

[State 4100, missed]
type = changestate
trigger1 = animelemtime(8) >= 0 && !movehit
trigger1 = time >= 98
value = 1112

[State 4100, guarded]
type = changestate
trigger1 = animelemtime(8) >= 0 && moveguarded
value = 1113

;--- --TARGET -----
[Statedef 3405]
type = S
physics = S
movetype = H
ctrl = 0
velset = 0,0

[State 4105, Pos]
type = posset
trigger1 = 1
y = 0

[State 4105, fall]
type = hitfallset
trigger1 = 1
value = 0

[State 4105, End]
type = selfstate
trigger1 = 1
value = 5000

;--- COMBO ---
[Statedef 3401]
type = S
physics = S
movetype = A
ctrl = 0
anim = 3401
velset = 0,0
sprpriority = 1

[State 4101, p2state]
type = targetstate
trigger1 = !time && numtarget(3400)
value = 3405
ID = 3400
ignorehitpause = 1

[State 4101, Bind]
type = targetbind
trigger1 = !time && numtarget(3400)
pos = 64, 0
ID = 3400
ignorehitpause = 1

[State 4101, Strength]
type = varset
trigger1 = var(10) != 6
var(10) = 6

[State 4101, NHB]
type = nothitby
trigger1 = animelemtime(4) < 0
time = 1
value = SCA
ignorehitpause = 1

[State 4101, Vel]
type = velset
trigger1 = anim = 3401 && animelem = 30
x = 12

[State 4101, Snd]
type = playsnd
trigger1 = anim = 3401 && animelemtime(34) = 1
value = 41,0

[State 4101, Dust]
type = helper
trigger1 = anim = 3401 && animelemtime(34) = 1
helpertype = normal
stateno = 8100
ID = 8100
name = "Dust"
postype = p1
ownpal = 1

[State 4101, Vel]
type = velset
trigger1 = anim = 3401 && animelemtime(34) = 1
x = 12
y = -10

[State 4101, Vel]
type = velmul
trigger1 = anim = 3401 && animelemtime(34) > 1
x = 0.85

[State 4101, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = anim = 3401 && animelem = 30
value = 4,4
channel = 0

[State 4101, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = anim = 3401 && animelem = 30
value = 4,14
channel = 0

[State 4101, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = anim = 3401 && (animelem = 2 || animelem = 10)
trigger2 = anim = 3401 && (animelem = 19 || animelem = 23)
value = 4, ifelse(random < 250, 0, ifelse(random < 333, 1, ifelse(random < 500, 3, 2)))
channel = 0

[State 4101, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = anim = 3401 && (animelem = 2 || animelem = 10)
trigger2 = anim = 3401 && (animelem = 19 || animelem = 23)
value = 4, ifelse(random < 250, 0, ifelse(random < 333, 1, ifelse(random < 500, 13, 12)))
channel = 0

[State 4101, Snd]
type = playsnd
trigger1 = anim = 3401 && (animelem = 2 || animelem = 33)
value = 1,2

[State 4101, Snd]
type = playsnd
trigger1 = anim = 3401 && (animelem = 10 || animelem = 19 || animelem = 23)
value = 1,5

[State 3100, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 = (animelem = 24) && anim = 3401
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 36 < 7, 7, fvar(11) * 36)), 8
getPower = 0,0
givePower = 36, 36
pauseTime = 6,12
guard.pauseTime = 6,12
animType = Hard
air.animType = Back
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 30
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = 0.6
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -58
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = (numtarget != numenemy)

[State 3100, HitDef 2]
type = HitDef
trigger1 = !var(16) && var(15) < 3
trigger1 = (animelem = 3 || animelem = 11 || animelem = 20) && anim = 3401
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 36 < 7, 7, fvar(11) * 36)), 8
getPower = 0,0
givePower = 36, 36
pauseTime = 6,12
guard.pauseTime = 6,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = 0.6
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := ifelse((animelem = 3), 2, 5))
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := ifelse((animelem = 3), -66, ifelse((animelem = 11), -80, -43))
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = ifelse((animelem = 3), 0, (numtarget != numenemy))

[State 3100, HitDef 3]
type = HitDef
trigger1 = !var(16) && var(15) < 4
trigger1 = (animelem = 33) && anim = 3401
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 36 < 7, 7, fvar(11) * 36)), 8
getPower = 0,0
givePower = 36, 36
pauseTime = 6,12
guard.pauseTime = 6,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = 0.6
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -61
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3100, HitDef 4]
type = HitDef
trigger1 = !var(16) && var(15) < 5
trigger1 = animelem = 34 && anim = 3401
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 10
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4, -14
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4, -14
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 94), var(36) := -92
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 4101, statetype]
type = statetypeset
trigger1 = anim = 3401 && animelemtime(34) >= 0 && animelemtime(40) < 1
statetype = S
physics = N

[State 4101, statetype]
type = statetypeset
trigger1 = anim = 3401 && animelemtime(34) >= 1
trigger2 = anim = 1103
statetype = A
physics = N

[State 4101, Accel]
type = gravity
trigger1 = anim = 3401 && animelemtime(34) >= 1
trigger2 = anim = 1103

[State 4101, Anim]
type = changeanim
trigger1 = anim = 3401 && animelemtime(34) > 1 && vel y > -5
value = 1103

[State Idle]
type = statetypeset
trigger1 = anim = 1103
movetype = I

[State 4101, End]
type = changestate
trigger1 = anim = 1103 && vel y > 0 && pos y >= 0
value = ifelse((movehit && !win), 3403, 52)

;========================<MAX HARU ISSEN>=============================
[StateDef 3450]
type = S
physics = S
moveType = A
anim = 3400
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3350, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3350, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3350, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3350, Corner Push]
type = VarSet
trigger1 = time = 3
fvar(5) = 0

[State 3350, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3350, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3350, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3350, NotHitBy]
type = NotHitBy
trigger1 = animelemtime(10) < 0
time = 1
value = SCA

[State 3350, Super Pause FX]
type = Helper
trigger1 = animelem = 2
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(-22 * const(size.xScale)), ceil(-112 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3150, Super Pause]
type = SuperPause
trigger1 = animelem = 2
time = 53
movetime = 53
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,1
darken = 0

[State 4100, Vel]
type = velset
trigger1 = animelemtime(8) >= 0
x = 1.25 * const(velocity.run.fwd.x)

[State 4100, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = animelem = 2
value = 3100,0
channel = 0

[State 4100, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = animelem = 2
value = 3100,10
channel = 0

[State 4100, steps]
type = playsnd
trigger1 = animelem = 9 || animelem = 12
value = 100,0

[State 3100, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 =  AnimElem = 8
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = 0,0
getPower = 0,0
givePower = 36, 36
pauseTime = 4,12
guard.pauseTime = 4,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = 0, 0
air.cornerPush.velOff = 0
yAccel = 0.6
fall.recoverTime = 120
ID = 3450
p1stateno = 3451
p2facing = 1
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 4100, statetype]
type = statetypeset
trigger1 = anim = 1111
statetype = S
physics = S

[State 4100, missed]
type = changestate
trigger1 = animelemtime(8) >= 0 && !movehit
trigger1 = time >= 98
value = 1112

[State 4100, guarded]
type = changestate
trigger1 = animelemtime(8) >= 0 && moveguarded
value = 1113

;--- --TARGET -----
[Statedef 3455]
type = S
physics = S
movetype = H
ctrl = 0
velset = 0,0

[State 4105, Pos]
type = posset
trigger1 = 1
y = 0

[State 4105, fall]
type = hitfallset
trigger1 = 1
value = 0

[State 4105, End]
type = selfstate
trigger1 = 1
value = 5000

;--- COMBO ---
[Statedef 3451]
type = S
physics = S
movetype = A
ctrl = 0
anim = 3451
velset = 0,0
sprpriority = 1

[State 4101, p2state]
type = targetstate
trigger1 = !time && numtarget(3450)
value = 3455
ID = 3450
ignorehitpause = 1

[State 4101, Bind]
type = targetbind
trigger1 = !time && numtarget(3450)
pos = 64, 0
ID = 3450
ignorehitpause = 1

[State 4101, Strength]
type = varset
trigger1 = var(10) != 6
var(10) = 6

[State 4101, NHB]
type = nothitby
trigger1 = animelemtime(4) < 0
time = 1
value = SCA
ignorehitpause = 1

[State 4101, Vel]
type = velset
trigger1 = anim = 3451 && animelem = 56
x = 12

[State 4101, Snd]
type = playsnd
trigger1 = anim = 3451 && animelemtime(62) = 1
value = 41,0

[State 4101, Dust]
type = helper
trigger1 = anim = 3451 && animelemtime(62) = 1
helpertype = normal
stateno = 8100
ID = 8100
name = "Dust"
postype = p1
ownpal = 1

[State 4101, Vel]
type = velset
trigger1 = anim = 3451 && animelemtime(62) = 1
x = 12
y = -10

[State 4101, Vel]
type = velmul
trigger1 = anim = 3451 && animelemtime(62) > 1
x = 0.85

[State 4101, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = anim = 3451 && animelem = 56
value = 4,4
channel = 0

[State 4101, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = anim = 3451 && animelem = 56
value = 4,14
channel = 0

[State 4101, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = anim = 3451 && (animelem = 2 || animelem = 10 || animelem = 16 || animelem = 23)
trigger2 = anim = 3451 && (animelem = 31 || animelem = 38 || animelem = 45 || animelem = 49)
value = 4, ifelse(random < 250, 0, ifelse(random < 333, 1, ifelse(random < 500, 3, 2)))
channel = 0

[State 4101, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = anim = 3451 && (animelem = 2 || animelem = 10 || animelem = 16 || animelem = 23)
trigger2 = anim = 3451 && (animelem = 31 || animelem = 38 || animelem = 45 || animelem = 49)
value = 4, ifelse(random < 250, 0, ifelse(random < 333, 1, ifelse(random < 500, 13, 12)))
channel = 0

[State 4101, Snd]
type = playsnd
trigger1 = anim = 3451 && (animelem = 2 || animelem = 10 || animelem = 31 || animelem = 61)
value = 1,2

[State 4101, Snd]
type = playsnd
trigger1 = anim = 3451 && (animelem = 16 || animelem = 23 || animelem = 38 || animelem = 45 || animelem = 49)
value = 1,5

[State 3100, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 = (animelem = 11 || animelem = 24 || animelem = 39 || animelem = 50) && anim = 3451
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 10
getPower = 0,0
givePower = 36, 36
pauseTime = 6,12
guard.pauseTime = 6,12
animType = Hard
air.animType = Back
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 30
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = 0.6
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := ifelse((animelem = 11), 2, 5))
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := ifelse((animelem = 11), -66, ifelse((animelem = 24), -91, ifelse((animelem = 39), -54, -58)))
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = (numtarget != numenemy)

[State 3100, HitDef 2]
type = HitDef
trigger1 = !var(16) && var(15) < 3
trigger1 = (animelem = 3 || animelem = 17 || animelem = 32 || animelem = 46) && anim = 3451
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 10
getPower = 0,0
givePower = 36, 36
pauseTime = 6,12
guard.pauseTime = 6,12
animType = Hard
air.animType = Back
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = 0.6
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := ifelse((animelem = 3), 2, 5))
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := ifelse((animelem = 3), -66, ifelse((animelem = 17), -80, ifelse((animelem = 32), -58, -43)))
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = ifelse((animelem = 3), 0, (numtarget != numenemy))

[State 3100, HitDef 3]
type = HitDef
trigger1 = !var(16) && var(15) < 4
trigger1 = (animelem = 59 || animelem = 61) && anim = 3451
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 18 < 7, 7, fvar(11) * 18)), 10
getPower = 0,0
givePower = 36, 36
pauseTime = 6,12
guard.pauseTime = 6,12
animType = Hard
air.animType = Back
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 30
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = 0.6
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := ifelse((animelem = 61), -61, -30)
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3100, HitDef 4]
type = HitDef
trigger1 = !var(16) && var(15) < 5
trigger1 = (animelem = 58 || animelem = 60) && anim = 3451
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 18 < 7, 7, fvar(11) * 18)), 10
getPower = 0,0
givePower = 36, 36
pauseTime = 6,12
guard.pauseTime = 6,12
animType = Hard
air.animType = Back
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = 0.6
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 64), var(36) := ifelse((animelem = 60), -61, -30)
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
kill = 0

[State 3100, HitDef 5]
type = HitDef
trigger1 = !var(16) && var(15) < 5
trigger1 = animelem = 62 && anim = 3451
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 18 < 7, 7, fvar(11) * 18)), 10
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4, -14
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4, -14
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 94), var(36) := -92
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 4101, statetype]
type = statetypeset
trigger1 = anim = 3451 && animelemtime(62) >= 0 && animelemtime(68) < 1
statetype = S
physics = N

[State 4101, statetype]
type = statetypeset
trigger1 = anim = 3451 && animelemtime(62) >= 1
trigger2 = anim = 1103
statetype = A
physics = N

[State 4101, Accel]
type = gravity
trigger1 = anim = 3451 && animelemtime(62) >= 1
trigger2 = anim = 1103

[State 4101, Anim]
type = changeanim
trigger1 = anim = 3451 && animelemtime(62) > 1 && vel y > -5
value = 1103

[State Idle]
type = statetypeset
trigger1 = anim = 1103
movetype = I

[State 4101, End]
type = changestate
trigger1 = anim = 1103 && vel y > 0 && pos y >= 0
value = ifelse((movehit && !win), 3403, 52)

;--- TAUNT ---
[Statedef 3403]
type = S
physics = S
movetype = I
ctrl = 0
anim = 3403

[State 4103, imageoff]
type = afterimagetime
trigger1 = 1
time = 0

[State 4103, Snd]
type = playsnd
trigger1 = time = 1
value = 52,0

[State 4103, Dust]
type = explod
trigger1 = !time
anim = 8102
ID = 8102
sprpriority = -2
postype = p1
scale = 0.5,0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 4103, Stop]
type = velset
trigger1 = 1
y = 0

[State 4103, Pos]
type = posset
trigger1 = 1
y = 0

[State 4103, Snd]
type = playsnd
trigger1 = animelem = 10
value = 184,0
channel = 0

[State 4103, Ctrl]
type = ctrlset
trigger1 = numenemy
trigger1 = enemy, ctrl
value = 1

[State 4103, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;========================<SHUNPUU CHOU RASEN>=============================
[StateDef 3500]
type = S
physics = S
moveType = A
anim = 3500
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3300, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3300, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3300, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3300, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3300, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3300, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3300, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3350, NotHitBy]
type = NotHitBy
trigger1 = anim = 3500
trigger2 = anim = 3501 && animelemtime(2) < 5
time = 1
value = SCA

[State 3350, Super Pause FX]
type = Helper
trigger1 = anim = 3500 && animelem = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(2 * const(size.xScale)), ceil(-100 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3150, Super Pause]
type = SuperPause
trigger1 = anim = 3500 && animelem = 3
time = 53
moveTime = 53
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 4200, Anim]
type = changeanim
trigger1 = anim = 3500 && !animtime
value = 3501

[State 4200, Snd]
type = playsnd
trigger1 = anim = 3501 && animelem = 1
value = 41,0

[State 4200, Dust]
type = helper
trigger1 = anim = 3501 && animelem = 1
helpertype = normal
stateno = 8100
ID = 8100
name = "Dust"
postype = p1
ownpal = 1

[State 4200, Dust]
type = explod
trigger1 = anim = 3501 && animelem = 1
anim = 8102
ID = 8102
sprpriority = -2
postype = p1
pos = 0,-ceil(pos y)
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 4200, Vel]
type = velset
trigger1 = anim = 3501 && animelem = 1
y = -10

[State 4200, slow]
type = veladd
trigger1 = anim = 3501 && animelemtime(9) < 0
y = -const(movement.yaccel) * 0.1

[State 4200, Anim]
type = changeanim
trigger1 = anim = 3501 && numtarget(3501)
trigger1 = animelemtime(9) >= 0 && animelemtime(10) < 0
value = 3502

[State 4200, Turn]
type = turn
trigger1 = anim = 3502 && animelem = 1
trigger1 = p2dist x < 0

[State 4200, Vel]
type = velset
trigger1 = anim = 3502 && animelemtime(18) < 0
y = 0

[State 4200, Snd]
type = null;playsnd
triggerall = var(40) = 0
trigger1 = anim = 3501 && animelem = 1
value = 3300,0
channel = 0

[State 4200, Snd]
type = null;playsnd
triggerall = var(40) = 1
trigger1 = anim = 3501 && animelem = 1
value = 3300,10
channel = 0

[State 4200, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = anim = 3500 && animelem = 3
value = 1300,0
channel = 0

[State 4200, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = anim = 3500 && animelem = 3
value = 1300,10
channel = 0

[State 4200, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = anim = 3502 && (animelem = 2 || animelem = 6)
value = 4, ifelse((animelem = 2), 2, 1)
channel = 0

[State 4200, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = anim = 3502 && (animelem = 2 || animelem = 6)
value = 4, ifelse((animelem = 2), 12, 11)
channel = 0

[State 4200, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = anim = 3502 && animelem = 14
value = 1100,1
channel = 0

[State 4200, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = anim = 3502 && animelem = 14
value = 1100,11
channel = 0

[State 4200, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = anim = 3501 && animelem = 9 && !numtarget(3501)
value = 820,0
channel = 0

[State 4200, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = anim = 3501 && animelem = 9 && !numtarget(3501)
value = 820,10
channel = 0

[State 4200, Snd]
type = playsnd
trigger1 = anim = 3502 && (animelem = 2 || animelem = 7 || animelem = 14)
value = 1, ifelse((animelem = 12), 5, 2)

[State 4200, spin]
type = playsnd
trigger1 = anim = 3501
trigger1 = animelem = 2 || animelem = 6
value = 1,4

[State 3100, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 = anim = 3501 && (animelem = 2 || animelem = 6)
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 36 < 7, 7, fvar(11) * 36)), 8
getPower = 0,0
givePower = 36, 36
pauseTime = 2,1
guard.pauseTime = 2,2
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifelse(p2bodydist x > 30, 1, 0), -11
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = ifelse(p2bodydist x > 30, 1, 0), ceil(vel y) -2
air.cornerPush.velOff = 0
yAccel = 0.58
Fall = 1
fall.recover = 1
fall.recoverTime = 120
ID = ifelse((animelem = 6), 3501, 3500)
forceStand = 1
hitSound = -1 + 0 * (var(31) := ifelse(random < 500, 5, 4))
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 94), var(36) := -44
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, HitDef 2]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 = anim = 3501 && animelem = 4
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 36 < 7, 7, fvar(11) * 36)), 8
getPower = 0,0
givePower = 36, 36
pauseTime = 2,1
guard.pauseTime = 2,2
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifelse(p2bodydist x > 30, 1, 0), -11
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = ifelse(p2bodydist x > 30, 1, 0), ceil(vel y) -2
air.cornerPush.velOff = 0
yAccel = 0.58
Fall = 1
fall.recover = 1
fall.recoverTime = 120
ID = 3500
forceStand = 1
hitSound = -1 + 0 * (var(31) := ifelse(random < 500, 5, 4))
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 94), var(36) := -44
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, HitDef 3]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 = anim = 3502 && animelem = 2
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 36 < 7, 7, fvar(11) * 36)), 8
getPower = 0,0
givePower = 36, 36
pauseTime = 2,2
guard.pauseTime = 2,2
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifelse(p2bodydist x > 30, 1, 0), -6
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = ifelse(p2bodydist x > 30, 1, 0), -5
air.cornerPush.velOff = 0
yAccel = 0.58
Fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 94), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, HitDef 4]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 = anim = 3502 && animelem = 7
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 36 < 7, 7, fvar(11) * 36)), 8
getPower = 0,0
givePower = 36, 36
pauseTime = 2,2
guard.pauseTime = 2,2
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifelse(p2bodydist x > 30, 1, 0), -6
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = ifelse(p2bodydist x > 30, 1, 0), -5
air.cornerPush.velOff = 0
yAccel = 0.58
Fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 94), var(36) := -34
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, HitDef 5]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 = anim = 3502 && animelem = 16
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 58 < 7, 7, fvar(11) * 58)), 10
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4, 8
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4, 8
air.cornerPush.velOff = 0
yAccel = 0.5
Fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 94), var(36) := -32
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 4200, posfix]
type = posadd
trigger1 = anim = 3501 && animelem = 9
x = 10
y = -9

[State 4200, statetype]
type = statetypeset
trigger1 = anim = 3501 || anim = 3502
statetype = A
physics = A

[State 4200, statetype]
type = statetypeset
trigger1 = anim = 3501 && animelemtime(10) >= 0
movetype = I

[State 4200, imageoff]
type = afterimagetime
trigger1 = anim = 3501 && animelemtime(10) >= 0
time = 0

[State Idle]
type = statetypeset
trigger1 = anim = 3501 && animelemtime(9) >= 0
trigger2 = anim = 3502 && animelemtime(18) >= 0
movetype = I

[State 4200, End]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = 3105

;========================<MAX SHUNPUU CHOU RASEN>=============================
[StateDef 3550]
type = S
physics = S
moveType = A
anim = 3500
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3350, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3350, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3350, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3350, Corner Push]
type = VarSet
trigger1 = time = 3
fvar(5) = 0

[State 3350, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3350, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3350, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3350, NotHitBy]
type = NotHitBy
trigger1 = anim = 3500
trigger2 = anim = 3551 && animelemtime(3) < 0
time = 1
value = SCA

[State 3350, Super Pause FX]
type = Helper
trigger1 = anim = 3500 && animelem = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(2 * const(size.xScale)), ceil(-100 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3150, Super Pause]
type = SuperPause
trigger1 = anim = 3500 && animelem = 3
time = 53
moveTime = 53
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,1
darken = 0

[State 4200, Anim]
type = changeanim
trigger1 = anim = 3500 && !animtime
value = 3551

[State 4200, Snd]
type = playsnd
trigger1 = anim = 3551 && animelem = 1
value = 41,0

[State 4200, Dust]
type = helper
trigger1 = anim = 3551 && animelem = 1
helpertype = normal
stateno = 8100
ID = 8100
name = "Dust"
postype = p1
ownpal = 1

[State 4200, Dust]
type = explod
trigger1 = anim = 3551 && animelem = 1
anim = 8102
ID = 8102
sprpriority = -2
postype = p1
pos = 0,-ceil(pos y)
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 4200, Vel]
type = velset
trigger1 = anim = 3551 && animelem = 1
y = -10

[State 4200, slow]
type = veladd
trigger1 = anim = 3551 && animelemtime(21) < 0
y = -const(movement.yaccel) * 0.1

[State 4200, Anim]
type = changeanim
trigger1 = anim = 3551 && numtarget(3551)
trigger1 = animelemtime(21) >= 0 && animelemtime(22) < 0
value = 3552

[State 4200, Turn]
type = turn
trigger1 = anim = 3552 && animelem = 1
trigger1 = p2dist x < 0

[State 4200, Vel]
type = velset
trigger1 = anim = 3552 && animelemtime(23) < 0
y = 0

[State 4200, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = anim = 3500 && animelem = 3
value = 1300,0
channel = 0

[State 4200, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = anim = 3500 && animelem = 3
value = 1300,10
channel = 0

[State 4200, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = anim = 3551 && animelem = 1
value = 3300,0
channel = 0

[State 4200, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = anim = 3551 && animelem = 1
value = 3300,10
channel = 0

[State 4200, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = anim = 3552 && (animelem = 2 || animelem = 6 || animelem = 11)
value = 4, ifelse((animelem = 2), 2, ifelse((animelem = 6), 0, 1))
channel = 0

[State 4200, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = anim = 3552 && (animelem = 2 || animelem = 6 || animelem = 11)
value = 4, ifelse((animelem = 2), 12, ifelse((animelem = 6), 10, 11))
channel = 0

[State 4200, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = anim = 3552 && animelem = 19
value = 1100,1
channel = 0

[State 4200, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = anim = 3552 && animelem = 19
value = 1100,11
channel = 0

[State 4200, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = anim = 3551 && animelem = 21 && !numtarget(3551)
value = 820,0
channel = 0

[State 4200, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = anim = 3551 && animelem = 21 && !numtarget(3551)
value = 820,10
channel = 0

[State 4200, Snd]
type = playsnd
trigger1 = anim = 3552 && (animelem = 2 || animelem = 7 || animelem = 12 || animelem = 19)
value = 1, ifelse((animelem = 12), 5, 2)

[State 4200, spin]
type = playsnd
trigger1 = anim = 3551
trigger1 = animelem = 2 || animelem = 6 || animelem = 10 || animelem = 14 || animelem = 18
value = 1,4

[State 3100, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 = anim = 3551 && (animelem = 2 || animelem = 6 || animelem = 10 || animelem = 14 || animelem = 18)
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 8
getPower = 0,0
givePower = 36, 36
pauseTime = 2,2
guard.pauseTime = 2,2
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifelse(p2bodydist x > 30, 1, 0), -11
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = ifelse(p2bodydist x > 30, 1, 0), ceil(vel y) -2
air.cornerPush.velOff = 0
yAccel = 0.58
Fall = 1
fall.recover = 1
fall.recoverTime = 120
ID = ifelse((animelem = 18), 3551, 3550)
forceStand = 1
hitSound = -1 + 0 * (var(31) := ifelse(random < 500, 5, 4))
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 94), var(36) := -44
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, HitDef 2]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 = anim = 3551 && (animelem = 4 || animelem = 8 || animelem = 12 || animelem = 16)
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 8
getPower = 0,0
givePower = 36, 36
pauseTime = 2,2
guard.pauseTime = 2,2
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifelse(p2bodydist x > 30, 1, 0), -11
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = ifelse(p2bodydist x > 30, 1, 0), ceil(vel y) -2
air.cornerPush.velOff = 0
yAccel = 0.58
Fall = 1
fall.recover = 1
fall.recoverTime = 120
ID = 3550
forceStand = 1
hitSound = -1 + 0 * (var(31) := ifelse(random < 500, 5, 4))
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 94), var(36) := -44
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, HitDef 3]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 = anim = 3552 && animelem = 2
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 8
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifelse(p2bodydist x > 30, 1, 0), -6
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = ifelse(p2bodydist x > 30, 1, 0), -5
air.cornerPush.velOff = 0
yAccel = 0.58
Fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 94), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, HitDef 4]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 = anim = 3552 && (animelem = 7 || animelem = 12)
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 36 < 7, 7, fvar(11) * 36)), 8
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifelse(p2bodydist x > 30, 1, 0), -6
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = ifelse(p2bodydist x > 30, 1, 0), -5
air.cornerPush.velOff = 0
yAccel = 0.58
Fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := ifelse((animelem = 7), 2, 5))
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 94), var(36) := ifelse((animelem = 7), -43, -34)
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, HitDef 5]
type = HitDef
trigger1 = !var(16) && var(15) < 10
trigger1 = anim = 3552 && animelem = 21
attr = A, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 36 < 7, 7, fvar(11) * 36)), 8
getPower = 0,0
givePower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4, 8
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4, 8
air.cornerPush.velOff = 0
yAccel = 0.5
Fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 94), var(36) := -32
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 4200, posfix]
type = posadd
trigger1 = anim = 3551 && animelem = 21
x = 10
y = -9

[State 4200, statetype]
type = statetypeset
trigger1 = anim = 3551 || anim = 3552
statetype = A
physics = A

[State 4200, statetype]
type = statetypeset
trigger1 = anim = 3551 && animelemtime(22) >= 0
movetype = I

[State 4200, imageoff]
type = afterimagetime
trigger1 = anim = 3551 && animelemtime(22) >= 0
time = 0

[State Idle]
type = statetypeset
trigger1 = anim = 3551 && animelemtime(21) >= 0
trigger2 = anim = 3552 && animelemtime(23) >= 0
movetype = I

[State 4200, End]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = 3105

;========================<SHUN GOKU SATSU>=============================
[StateDef 3600]
type = S
physics = S
moveType = A
anim = 3600
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -3000
faceP2 = 1

;[State 3200, Super Cancel Flag]
;type = VarSet
;trigger1 = !Time
;var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

;[State 3200, Hyper Cancel Flag]
;type = VarSet
;trigger1 = !Time
;var(22) = (PrevStateNo = [3000,4999]) && var(8)

;[State 3200, Custom Combo Reset]
;type = PalFX
;trigger1 = !Time
;trigger1 = !(var(20) := 0)
;time = 1

;[State 3200, Corner Push]
;type = VarSet
;trigger1 = 1
;fvar(5) = 0

;[State 3200, Unguardable]
;type = VarSet
;trigger1 = Time = 3 && NumEnemy
;trigger1 = (EnemyNear, StateNo != [120,155])
;var(17) = 43

[State 3200, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

;[State 3200, Super Cancel Juggle]
;type = VarSet
;trigger1 = !Time
;trigger1 = var(21) || var(22)
;var(15) = 0
;ignoreHitPause = 1

;[State 3200, NotHitBy]
;type = NotHitBy
;trigger1 = animelemtime(5) < 0
;time = 1
;value = SCA

[State 3200, Super Pause FX]
type = Helper
trigger1 = !time
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = ceil(-30 * const(size.xScale)), ceil(-110 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3200, Super Pause]
type = SuperPause
trigger1 = !Time
time = 60
moveTime = 60
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,2
darken = 0

[State 4000, Vel]
type = velset
trigger1 = animelemtime(3) >= 0 && animelemtime(5) < 0
x = 10;7

[State 4000, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = !time
value = 3300,0
channel = 0

[State 4000, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = !time
value = 3300,10
channel = 0

[State 4000, Snd]
type = playsnd
trigger1 = animelem = 3
value = 105,0

[State 4000, Dust]
type = explod
trigger1 = animelem = 3
anim = 8104
ID = 8104
sprpriority = 3
postype = p1
pos = 0,0
vel = -1,0
scale = 0.5,0.5
pausemovetime = -1
supermovetime = -1

;[State 4000, Miss]
;type = hitdef
;trigger1 = animelemtime(3) >= 0 && animelemtime(5) < 0
;attr = S, HT
;hitflag =

[State 4000, Hit]
type = hitdef
;triggerall = p2statetype !=A
trigger1 = time = 0
;trigger1 = P2StateNo != [150,155]
;trigger1 = PrevStateNo = [200,1230]
;trigger1 = animelemtime(3) >= 0 && animelemtime(5) < 0
;trigger1 = p2dist x >= 0 && p2bodydist x <= 25
;trigger1 = !var(38)
attr = S, HT
hitflag = M
priority = 6, Miss
numhits = 0
sparkNo = -1 + 0 * (var(33) := 0)
hitSound = -1 + 0 * (var(31) := 800)
p1facing = 1
p2facing = 1
p1stateno = 3601
fall = 1
fall.recover = 0
yaccel = 0.5

;[State 4000, Hit]
;type = hitdef
;triggerall = p2statetype !=A
;trigger1 = time = 0
;trigger1 = P2MoveType != H
;trigger1 = P2StateNo != [150,155]
;trigger1 = PrevStateNo != [200,1230]
;trigger1 = animelemtime(3) >= 0 && animelemtime(5) < 0
;trigger1 = p2dist x >= 0 && p2bodydist x <= 25
;trigger1 = !var(38)
;attr = S, HT
;hitflag = M
;priority = 6, Miss
;numhits = 0
;sparkNo = -1 + 0 * (var(33) := 0)
;hitSound = -1 + 0 * (var(31) := 800)
;p1facing = 1
;p2facing = 1
;p1stateno = 3601
;fall = 1
;fall.recover = 0
;yaccel = 0.5

[State 4000, misssnd]
type = playsnd
triggerall = var(40) = 0
trigger1 = animelem = 5
value = 820,0
channel = 0

[State 4000, misssnd]
type = playsnd
triggerall = var(40) = 1
trigger1 = animelem = 5
value = 820,10
channel = 0

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I

[State 4000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;--- PLAYER ---
[Statedef 3601]
type = S
physics = N
movetype = A
anim = 3601
ctrl = 0
velset = 0,0
sprpriority = -1

[State Throw]
type = targetstate
trigger1 = !time
value = 3611

[State 4001, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = animelem = 6
value = 4,4
channel = 0

[State 4001, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = animelem = 6
value = 4,14
channel = 0

[State 4001, width]
type = width
trigger1 = animelemtime(2) < -1
edge = 85,45

[State 4001, Push]
type = playerpush
trigger1 = 1
value = 0

[State 4001, nothitby]
type = nothitby
trigger1 = animelemtime(23) < 0
value = SCA
time = 1

[State 4001, kei]
type = helper
trigger1 = animelemtime(2) < 0 && !numhelper(6000)
helpertype = normal
stateno = 6010
ID = 6000
name = "Kei"
postype = p1
pos = 480,0
facing = -1
ownpal = 1

[State 4001, wait]
type = changeanim
trigger1 = animelemtime(2) < 0 && numhelper(6000)
trigger1 = (helper(6000), stateno = 6010) && (helper(6000), anim = 6002)
value = 3601
elem = 1

[State 4001, wait]
type = changeanim
trigger1 = animelemtime(2) < 0 && numhelper(6000)
trigger1 = (helper(6000), stateno = 6010) && (helper(6000), anim = 6010)
value = 3601
elem = 2

[State 4001, throw]
type = targetstate
trigger1 = animelem = 8
value = 3612

[State 4001, imageoff]
type = afterimagetime
trigger1 = animelemtime(7) >= 0
time = 0

[State 4001, Assert]
type = assertspecial
trigger1 = animelemtime(8) >= 0 && animelemtime(23) < 0
flag = nobardisplay
flag2 = noFG

[State 4001, spr]
type = sprpriority
trigger1 = animelemtime(2) >= 0
value = 1

[State 4001, Bind]
type = targetbind
trigger1 = animelemtime(2) < 0
pos = 40, 0

[State 4001, Bind]
type = posadd
trigger1 = animelem = 8
x = -25

[State 4001, Bind]
type = targetbind
trigger1 = animelemtime(8) >= 0 && animelemtime(23) < 0
pos = 65, 0

[State 4001, fadeout]
type = allpalfx
trigger1 = animelem = 7
time = 30
sinadd = -255, -255, -255, 120

[State 4001, BG PalFX]
type = bgpalfx
trigger1 = animelemtime(10) = -1 || animelemtime(14) = -1 || animelemtime(18) = -1
invertall = 1
add = 255, 255, 255
sinadd = -1000, -1000, -1000, 80
mul = 256, 128, 256
color = 0
time = 20

[State 4001, palfx]
type = palfx
trigger1 = animelemtime(10) = -1 || animelemtime(14) = -1 || animelemtime(18) = -1
add = -50, -50, -50
sinadd = -155, -155, -155, 80
mul = 256, 128, 256
color = 0
time = 20

[State 4001, black]
type = envcolor
trigger1 = animelemtime(8) >= 0 && animelemtime(10) < -1
trigger2 = animelemtime(12) >= 0 && animelemtime(14) < -1
trigger3 = animelemtime(16) >= 0 && animelemtime(18) < -1
trigger4 = animelemtime(20) >= 0 && animelemtime(23) < -1
time = 2
value = 0, 0, 0

[State 4001, palfx]
type = palfx
trigger1 = animelemtime(23) = -1
add = 0, 0, 0
sinadd = 0, 0, 0, 1
time = 1

[State 4001, BG PalFX]
type = bgpalfx
trigger1 = animelemtime(23) = -1
add = 0, 0, 0
sinadd = 0, 0, 0, 1
color = 256
time = 1

[State 4001, hitadd]
type = hitadd
trigger1 = animelem = 8 || animelem = 9 || animelem = 10 || animelem = 12 || animelem = 13 || animelem = 14
trigger2 = animelem = 16 || animelem = 17 || animelem = 18 || animelem = 20 || animelem = 21 || animelem = 22
value = 1

[State 4001, hitdamage]
type = targetlifeadd
trigger1 = animelem = 8 || animelem = 9 || animelem = 10 || animelem = 12 || animelem = 13 || animelem = 14
trigger2 = animelem = 16 || animelem = 17 || animelem = 18 || animelem = 20 || animelem = 21 || animelem = 22
value = -ceil(38 * fvar(11))
kill = animelem = 22

[State 4001, givepower]
type = targetpoweradd
trigger1 = animelem = 8 || animelem = 9 || animelem = 10 || animelem = 12 || animelem = 13 || animelem = 14
trigger2 = animelem = 16 || animelem = 17 || animelem = 18 || animelem = 20 || animelem = 21 || animelem = 22
value = 36

[State 4001, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = animelemtime(23) = 10
value = 1100,1
channel = 0

[State 4001, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = animelemtime(23) = 10
value = 1100,11
channel = 0

[State 4001, HitSound]
type = playsnd
trigger1 = animelem = 9 || animelem = 10 || animelem = 12 || animelem = 13 || animelem = 14
trigger2 = animelem = 16 || animelem = 17 || animelem = 18 || animelem = 20 || animelem = 21 || animelem = 22
value = 2, ifelse((animelem = 22), 8, 2)

[State 4001, HitSpark]
type = Helper
trigger1 = animelem = 10 || animelem = 14 || animelem = 18
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8014)
ID = 8000
name = "Spark"
postype = p1
pos = ifelse((animelem = 10), 69, ifelse((animelem = 10), 71, 59)), ifelse((animelem = 10), -85, ifelse((animelem = 10), -34, -88))
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 4001, HitSpark]
type = Helper
trigger1 = animelem = 9 || animelem = 12 || animelem = 13 || animelem = 16
trigger2 = animelem = 17 || animelem = 20 || animelem = 21 || animelem = 22
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8014)
ID = 8000
name = "Spark"
postype = p1
pos = 65 + ceil(65 * cos(animelemtime(8) / 3.0)), -65 + ceil(65 * sin(animelemtime(8) / 3.0))
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 4001, flowers]
type = explod
trigger1 = animelemtime(23) >= 0 && animelemtime(24) < 0 && numexplod(6090) < 12
vel = -(random / 2000.0), 0.5
accel = -.0075, 0
anim = 6090
ID = 6090
sprpriority = 4
postype = p1
pos = 25, -110
random = 100, 50
removetime = 210
facing = ifelse(random < 500, -1, 1)
scale = 0.25, 0.25
ownpal = 1

[State 4001, throw]
type = targetstate
trigger1 = animelemtime(23) >= -1 && numtarget
value = 3613
persistent = 0

[State 3100, statetype]
type = statetypeset
trigger1 = animelemtime(23) >= 0
movetype = I

[State 4001, End]
type = changestate
trigger1 = animelemtime(23) >= 0 && winko
value = 3602

[State 4001, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;--- TARGET ---
[Statedef 3611]
type = S
physics = N
movetype = H
velset = 0,0
ctrl = 0
sprpriority = 0

[State 1114001, Anim]
type = changeanim2
trigger1 = !time
value = 3611

[Statedef 3612]
type = S
physics = N
movetype = H
velset = 0,0
ctrl = 0
sprpriority = 0

[State 1114002, Anim]
type = changeanim2
trigger1 = !time
value = 3612

[State 1114002, palfx]
type = palfx
trigger1 = animelemtime(3) = -1 || animelemtime(7) = -1 || animelemtime(11) = -1
add = -50, -50, -50
sinadd = -155, -155, -155, 80
mul = 256, 128, 256
color = 0
time = 20

[Statedef 3613]
type = L
physics = C
movetype = H
velset = 0,0
ctrl = 0
sprpriority = 0

[State 1114003, Anim]
type = changeanim2
trigger1 = !time
value = 3613

[State 1114003, palfx]
type = palfx
trigger1 = !time
add = 0, 0, 0
sinadd = 0, 0, 0, 1
time = 1

[State 1114003, End]
type = selfstate
trigger1 = !alive
value = 5150

[State 1114003, End]
type = selfstate
trigger1 = time >= 80 && alive
value = 5120

;========================<NEKKETSU HADOU KEN>=============================
[StateDef 3700]
type = S
physics = S
moveType = A
anim = 3700
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -3000
faceP2 = 1

[State 3200, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3200, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3200, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3200, Corner Push]
type = VarSet
trigger1 = 1
fvar(5) = 0

[State 3200, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3200, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3200, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3200, NotHitBy]
type = NotHitBy
trigger1 = anim = 3700 || (anim = 3701 && animelemtime(3) < 2)
time = 1
value = SCA

[State 3200, Super Pause FX]
type = Helper
trigger1 = anim = 3700 && animelem = 2
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
;pos = ceil(-19 * const(size.xScale)), ceil(-63 * const(size.yScale))
pos = ceil(-38 * const(size.xScale)), ceil(-124 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3200, Super Pause]
type = SuperPause
trigger1 = anim = 3700 && animelem = 2
time = 60
movetime = 60
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,2
darken = 0

;[State 4300, focus]
;type = helper
;trigger1 = anim = 3700 && animelem = 2
;helpertype = normal
;stateno = 3004
;ID = 3004
;name = "Hadouken Charge"
;postype = p1
;ownpal = 1
;supermovetime = 300

[State 4300, width]
type = width
trigger1 = anim = 3701 && animelemtime(2) < 0
trigger2 = anim = 3701 && animelemtime(12) >= 0 && animelemtime(13) < 0
value = 13

[State 4300, width]
type = width
trigger1 = anim = 3701 && animelemtime(2) >= 0 && animelemtime(12) < 0
value = 26

[State 4300, Anim]
type = changeanim
trigger1 = anim = 3700 && time >= 63
value = 3701

[State 4300, Hadouken]
type = helper
trigger1 = anim = 3701 && animelem = 2
helpertype = normal
stateno = 3705
ID = 3705
name = "Hadouken"
postype = p1
pos = 86,-54
size.xscale = 0.75
size.yscale = 0.75
ownpal = 1

[State 105, Dust Helper]
type = Helper
trigger1 = anim = 3701 && animelem = 2
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
Pos = 40,0
facing = 1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 4300, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = !time
value = 3700,0
channel = 0

[State 4300, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = !time
value = 3700,10
channel = 0

[State 4300, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = anim = 3701 && animelem = 2
value = 3000,1
channel = 0

[State 4300, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = anim = 3701 && animelem = 2
value = 3000,11
channel = 0

[State 4300, Snd]
type = playsnd
trigger1 = anim = 3701 && animelem = 2
value = 3000,2

[State 4300, End]
type = changestate
trigger1 = anim = 3701 && animelemtime(17) < 0
trigger1 = numenemy = 1 && numhelper(3705)
trigger1 = helper(3705), var(3) && helper(3705), movehit
value = 3701

[State 4300, End]
type = changestate
trigger1 = anim = 3701 && !animtime
value = 0
ctrl = 1

;--- OFF SCREEN ---
[Statedef 3701]
type = S
physics = S
movetype = A
ctrl = 0
velset = 0,0
sprpriority = 1

[State 4301, Anim]
type = changeanim
trigger1 = !time && anim != 3701
value = 3701

[State 4301, bound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0,1

[State 4301, NHB]
type = nothitby
trigger1 = animelemtime(2) < 0
time = 1
value = SCA

[State 4301, width]
type = width
trigger1 = animelemtime(2) < 0
trigger2 = animelemtime(12) >= 0 && animelemtime(13) < 0
value = 13

[State 4301, width]
type = width
trigger1 = animelemtime(2) >= 0 && animelemtime(12) < 0
value = 26

[State 4301, End]
type = changestate
trigger1 = !animtime
value = ifelse((backedgebodydist < 0 || frontedgebodydist < 0), 110, 0)
ctrl = 1
