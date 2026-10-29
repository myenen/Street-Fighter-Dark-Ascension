; _____________________________________
;| Character by ZMugens               |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;SHINKUU HADOU KEN
[Statedef 3000]
type = S
physics = S
movetype = A
anim = 3000
ctrl = 0
velset = 0, 0
poweradd = -1000
sprpriority = 1
facep2 = 1

[State 3000, Strength]
type = varset
trigger1 = var(10) != 5
var(10) = 5

[State 3000, width]
type = width
trigger1 = animelemtime(7) = 0
value = 30, 0

[State 3000, Super Cancel Flag]
type = varset
trigger1 = !time
var(21) = (prevstateno = [1000,2999]) || var(20)

[State 3000, Hyper Cancel Flag]
type = varset
trigger1 = !time
var(22) = (prevstateno = [3000,4999])

[State 3000, mouth]
type = explod
trigger1 = animelem = 4
anim = 3004
sprpriority = 2
postype = p1
removeongethit = 1
supermovetime = -1

[State 3000, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3000, Snd]
type = playsnd
trigger1 = animelem = 3
value = s3000,0
channel = 0
volume = 200

[State 3000, Super Pause FX]
type = helper
trigger1 = time = 1
helpertype = normal
stateno = 8500
ID = 8500
name = "Super Charge"
postype = p1
pos = -39,-94
ownpal = 1
persistent = 0
supermovetime = 9999

[State 3000, Super Pause]
type = superpause
trigger1 = var(1) = 1
trigger1 = time = 1
time = 45
movetime = 45
anim = -1
sound = s8500,0
p2defmul = 1
darken = 0

[State 3000, Super Pause]
type = superpause
trigger1 = var(1)!= 1
trigger1 = time = 1
time = 45
movetime = 45
anim = -1
sound = s8500,0
p2defmul = 1
darken = 0

[State Corner Push]
type = varset
trigger1 = animelem = 4
fvar(5) = 0

[State 3000, NHB]
type = nothitby
trigger1 = animelemtime(7) < 0
time = 1
value = SCA

[State 3000, hadouken]
type = helper
trigger1 = animelem = 7
helpertype = normal
stateno = 3005
ID = 3005
name = "hadouken"
postype = p1
pos = 76,-75
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3000, Dust]
type = explod
trigger1 = animelem = 7
vel = 0, 0
anim = 8106
ID = 8106
sprpriority = 3
postype = p1
pos = 30, 0
ownpal = 1
scale = 0.75, 0.75
pausemovetime = -1
supermovetime = -1

[State 3000, Snd]
type = playsnd
trigger1 = animelem = 6
value = s3000,0
channel = 2

[State 3000, Snd]
type = playsnd
trigger1 = animelem = 7
value = 5, 0

[State 3000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;MAX SHINKUU HADOU KEN
[Statedef 3010]
type = S
physics = S
movetype = A
anim = 3000
ctrl = 0
velset = 0, 0
poweradd = -2000
sprpriority = 1
facep2 = 1

[State 3010, Strength]
type = varset
trigger1 = var(10) != 6
var(10) = 6
[State 3010, width]
type = width
trigger1 = animelemtime(7) = 0
value = 30, 0

[State 3010, Super Cancel Flag]
type = varset
trigger1 = !time
var(21) = (prevstateno = [1000,2999]) || var(20)
[State 3010, Hyper Cancel Flag]
type = varset
trigger1 = !time
var(22) = (prevstateno = [3000,4999])

[State 3010, mouth]
type = explod
trigger1 = animelem = 4
anim = 3004
sprpriority = 2
postype = p1
removeongethit = 1
supermovetime = -1

[State 3250, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3010, Snd]
type = playsnd
trigger1 = animelem = 3
value = s3000,0
channel = 0
volume = 200

[State 3010, Super Pause FX]
type = helper
trigger1 = time = 1
helpertype = normal
stateno = 8510
ID = 8500
name = "Super Charge"
postype = p1
pos = -39,-94
ownpal = 1
persistent = 0
supermovetime = 9999

[State 3010, Super Pause]
type = superpause
trigger1 = var(1) = 1
trigger1 = time = 1
time = 42
movetime = 42
anim = -1
sound = s8500,0
p2defmul = 1
darken = 0

[State 3010, Super Pause]
type = superpause
trigger1 = var(1)!= 1
trigger1 = time = 1
time = 41
movetime = 41
anim = -1
sound = s8500,0
p2defmul = 1
darken = 0

[State Corner Push]
type = varset
trigger1 = animelem = 4
fvar(5) = 0

[State 3010, NHB]
type = nothitby
trigger1 = animelemtime(7) < 0
time = 1
value = SCA

[State 3010, hadouken]
type = helper
trigger1 = animelem = 7
helpertype = normal
stateno = 3007
ID = 3007
name = "hadouken"
postype = p1
pos = 80, -68
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3010, Dust]
type = explod
trigger1 = animelem = 7
vel = 0, 0
anim = 7106
ID = 7106
sprpriority = 3
postype = p1
pos = 30, 0
ownpal = 1
scale = 0.75, 0.75
pausemovetime = -1
supermovetime = -1


[State 3000, Snd]
type = playsnd
trigger1 = animelem = 7
value = 5, 0

[State 3010, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;SHORYUREPPA
[StateDef 3100]
type = S
physics = N
moveType = A
anim = 3100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3000, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

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
trigger1 = AnimElemTime(2) < 0
time = 1
value = SCA

[State 3000, SuperPause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 10, -60
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500,0
darken = 0

[State 3000, Voice 1]
type = PlaySnd
trigger1 = !Time && var(40) != 1
value = 3300,0
channel = 0


[State 3000, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 10

[State 3000, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8103
ID = 8100
name = "Shoryureppa Dust (Ground)"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3000, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,2
channel = 1

[State 3000, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 40,0
channel = 3

[State 3000, Landing Dust Explod]
type = Explod
trigger1 = AnimElem = 12
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3000, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 12
value = 52,0
channel = 4

[State 3000, VelSet]
type = VelSet
trigger1 = AnimElem = 12
x = 10

[State 3000, VelAdd]
type = VelAdd
triggerAll = vel x >= 0
trigger1 = AnimElemTime(2) > 0 && AnimElemTime(12) < 0
trigger2 = AnimElemTime(12) > 0
x = -0.78125

[State 3000, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 3000, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 13
value = 1,2
channel = 5

[State 3000, Fire sound]
type = PlaySnd
trigger1 = AnimElem = 15
value = 1100,1
channel = 6

[State 3000, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 15
value = 40,0
channel = 7



[State 3000, Shoryuken Flames (Ground)]
type = Explod
trigger1 = AnimElem = 12 
ID = 3005
anim = 1125
bindTime = 8
sprPriority = 3
posType = P1
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3000, Shoryuken Flames (Ascending)]
type = Explod
trigger1 = AnimElem = 15 
ID = 3006
anim = 1126
bindTime = -1
removeTime = 21
sprPriority = 3
posType = P1
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3000, Shoryuken Flames (Fade away)]
type = Explod
trigger1 = AnimElem = 16 
ID = 3007
anim = 1127
sprPriority = 3
posType = P1
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3000, Shoryuken Flames (SFIII)]
type = Explod
trigger1 = AnimElem = 13 
ID = 3005
anim = 13005
bindTime = -1
sprPriority = 3
posType = P1
pos = 20,-123
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3000, ModifyExplod]
type = ModifyExplod
trigger1 = AnimElem = 13 && NumExplod(3005) && var(40) = 3
ID = 3005
posType = P1
pos = 21,-39
ignoreHitPause = 0

[State 3000, ModifyExplod]
type = ModifyExplod
trigger1 = AnimElem = 14 && NumExplod(3005) && var(40) = 3
ID = 3005
posType = P1
pos = 38,-82
ignoreHitPause = 0

[State 3000, ModifyExplod]
type = ModifyExplod
trigger1 = AnimElemTime(15) >= 0 && NumExplod(3005) && var(40) = 3
ID = 3005
posType = P1
pos = 14,-143
ignoreHitPause = 0

[State 3000, VelSet]
type = VelSet
trigger1 = AnimElemTime(15) = 0
y = -10

[State 3000, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(15) > 1
y = 0.5859375

[State 3000, Dust Helper]
type = Helper
trigger1 = AnimElemTime(15) = 0
helperType = Normal
stateNo = 8100
ID = 8100
name = "Shoryureppa Dust (Air)"
posType = P1
ownPal = 1

[State 3000, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 15
stateType = A
physics = N

[State 3000, Hit 1]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 2,2
guard.pauseTime = 2,2
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 120
ground.velocity = -7.51,0
ground.cornerPush.velOff = 0
guard.velocity = -7.51
guard.cornerPush.velOff = 0
air.velocity = -2.5, -10
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -40
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3000, Hit 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 4
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 2,2
guard.pauseTime = 2,2
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 120
ground.velocity = -7.51,0
ground.cornerPush.velOff = 0
guard.velocity = -7.51
guard.cornerPush.velOff = 0
air.velocity = -2.5, -10
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 36), var(36) := -79
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3000, Hit 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 5
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 2,2
guard.pauseTime = 2,2
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 120
ground.velocity = -7.51,0
ground.cornerPush.velOff = 0
guard.velocity = -7.51
guard.cornerPush.velOff = 0
air.velocity = -2.5, -10
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -112
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3000, Hit 4]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 13
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 2,2
guard.pauseTime = 2,2
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 120
ground.velocity = -2.5, -10
ground.cornerPush.velOff = 0
guard.velocity = -7.51
guard.cornerPush.velOff = 0
air.velocity = -2.5, -10
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -40
palFX.time = 42
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3000, Flame Particle Timer Set]
type = VarSet
trigger1 = MoveHit = 1 && NumTarget && AnimElemTime(14) < 0
trigger1 = !(Target, HitShakeOver)
var(45) = 42
ignoreHitPause = 1
persistent = 0

[State 3000, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150) && AnimElemTime(13) >= 0
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3000, Hit 5]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 14
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 2,2
guard.pauseTime = 2,2
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 120
ground.velocity = -2.5, -10
ground.cornerPush.velOff = 0
guard.velocity = -7.51
guard.cornerPush.velOff = 0
air.velocity = -2.5, -10
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 36), var(36) := -79
palFX.time = 44
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3000, Flame Particle Timer Set]
type = VarSet
trigger1 = MoveHit = 1 && NumTarget && AnimElemTime(14) >= 0 && AnimElemTime(15) < 0
trigger1 = !(Target, HitShakeOver)
var(45) = 44
ignoreHitPause = 1
persistent = 0

[State 3000, Hit 6]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 15
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 2,2
guard.pauseTime = 2,2
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 120
ground.velocity = -2.5, -10
ground.cornerPush.velOff = 0
guard.velocity = -7.51
guard.cornerPush.velOff = 0
air.velocity = -2.5, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -112
palFX.time = 46
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3000, Flame Particle Timer Set]
type = VarSet
trigger1 = MoveHit = 1 && NumTarget && AnimElemTime(15) >= 0
trigger1 = !(Target, HitShakeOver)
var(45) = 46
ignoreHitPause = 1
persistent = 0

[State 3000, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(16) >= 0
moveType = I

[State 3000, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 1101



;MAX SHORYUREPPA
[StateDef 3150]
type = S
physics = N
moveType = A
anim = 3150
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3050, Remove Shoryureppa fist overlay]
type = RemoveExplod
trigger1 = !Time && NumExplod(3004)
id = 3004
ignoreHitPause = 1

[State 3050, Remove Shoryureppa flames (ground)]
type = RemoveExplod
trigger1 = !Time && NumExplod(3005)
id = 3005
ignoreHitPause = 1

[State 3050, Remove Shoryureppa flames (ascending)]
type = RemoveExplod
trigger1 = !Time && NumExplod(3006)
id = 3006
ignoreHitPause = 1

[State 3050, Remove Shoryureppa flames (fade away)]
type = RemoveExplod
trigger1 = !Time && NumExplod(3007)
id = 3007
ignoreHitPause = 1

[State 3050, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

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
var(17) = 45

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

[State 3050, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(2) < 0
time = 1
value = SCA

[State 3050, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 10, -60
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3050, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500,0
darken = 0

[State 3050, Voice 1]
type = PlaySnd
trigger1 = !Time && var(40) != 1
value = 3300,0
channel = 0

[State 3050, Voice 1 (Violent)]
type = PlaySnd
trigger1 = !Time && var(40) = 1
value = 3100,10
channel = 0

[State 3050, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3000,1 + 9 * (var(40) = 1)
channel = 0

[State 3050, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8103
ID = 8100
name = "Shoryureppa Dust (Ground)"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3050, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,2
channel = 1

[State 3050, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 40,0
channel = 3

[State 3050, Landing Dust Explod]
type = Explod
trigger1 = AnimElem = 12
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3050, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 12
value = 52,0
channel = 4

[State 3050, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 13
value = 1,2
channel = 5

[State 3050, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 15
value = 40,0
channel = 7

[State 3050, Landing Dust Explod]
type = Explod
trigger1 = AnimElem = 22
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3050, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 22
value = 52,0
channel = 1

[State 3050, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 23
value = 1,2
channel = 3

[State 3050, Fire sound]
type = PlaySnd
trigger1 = AnimElem = 25
value = 1100,1
channel = 4

[State 3050, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 25
value = 40,0
channel = 5



[State 3050, Shoryuken Flames (Ground)]
type = Explod
trigger1 = AnimElem = 22 && var(40) != 3
ID = 3005
anim = 1125
bindTime = 5
sprPriority = 3
posType = P1
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3050, Shoryuken Flames (Ascending)]
type = Explod
trigger1 = AnimElem = 25 && var(40) != 3
ID = 3006
anim = 1126
bindTime = -1
removeTime = 21
sprPriority = 3
posType = P1
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3050, Shoryuken Flames (Fade away)]
type = Explod
trigger1 = AnimElem = 29 && var(40) != 3
ID = 3007
anim = 1127
sprPriority = 3
posType = P1
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3000, Shoryuken Flames (SFIII)]
type = Explod
trigger1 = AnimElem = 21 
ID = 3005
anim = 13005
bindTime = -1
sprPriority = 3
posType = P1
pos = 20,-123
scale = 0.5,0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3050, ModifyExplod]
type = ModifyExplod
trigger1 = AnimElem = 23 && NumExplod(3005) && var(40) = 3
ID = 3005
posType = P1
pos = 21,-39
ignoreHitPause = 0

[State 3050, ModifyExplod]
type = ModifyExplod
trigger1 = AnimElem = 24 && NumExplod(3005) && var(40) = 3
ID = 3005
posType = P1
pos = 38,-82
ignoreHitPause = 0

[State 3050, ModifyExplod]
type = ModifyExplod
trigger1 = AnimElemTime(25) >= 0 && NumExplod(3005) && var(40) = 3
ID = 3005
posType = P1
pos = 14,-143
ignoreHitPause = 0

[State 3050, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 10

[State 3050, VelSet]
type = VelSet
trigger1 = AnimElem = 12
x = 8.75

[State 3050, VelSet]
type = VelSet
trigger1 = AnimElem = 22
x = 15

[State 3050, VelAdd]
type = VelAdd
triggerAll = vel x >= 0
trigger1 = AnimElemTime(2) > 0 && AnimElemTime(12) < 0
trigger2 = AnimElemTime(12) > 0 && AnimElemTime(22) < 0
trigger3 = AnimElemTime(22) > 0
x = -0.78125

[State 3050, VelSet]
type = VelSet
trigger1 = vel x < 0
x = 0

[State 3050, VelSet]
type = VelSet
trigger1 = AnimElemTime(25) = 0
y = -12.5

[State 3050, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(25) > 1
y = 0.5859375

[State 3050, Dust Helper]
type = Helper
trigger1 = AnimElemTime(25) = 0
helperType = Normal
stateNo = 8100
ID = 8100
name = "Shoryureppa Dust (Air)"
posType = P1
ownPal = 1

[State 3050, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 25
stateType = A
physics = N

[State 3050, Hit 1]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 2,2
guard.pauseTime = 2,2
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 120
ground.velocity = -4.49,0
ground.cornerPush.velOff = 0
guard.velocity = -4.49
guard.cornerPush.velOff = 0
air.velocity = -2.5, -10
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -40
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3050, Hit 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 4
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 2,2
guard.pauseTime = 2,2
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 120
ground.velocity = -4.49,0
ground.cornerPush.velOff = 0
guard.velocity = -4.49
guard.cornerPush.velOff = 0
air.velocity = -2.5, -10
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 36), var(36) := -79
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3050, Hit 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 5
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 2,2
guard.pauseTime = 2,2
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 120
ground.velocity = -4.49,0
ground.cornerPush.velOff = 0
guard.velocity = -4.49
guard.cornerPush.velOff = 0
air.velocity = -2.5, -10
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -112
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3050, Hit 4]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 13
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 2,2
guard.pauseTime = 2,2
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 120
ground.velocity = -4.49,0
ground.cornerPush.velOff = 0
guard.velocity = -4.49
guard.cornerPush.velOff = 0
air.velocity = -2.5, -10
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -40
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3050, Hit 5]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 14
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 2,2
guard.pauseTime = 2,2
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 120
ground.velocity = -4.49,0
ground.cornerPush.velOff = 0
guard.velocity = -4.49
guard.cornerPush.velOff = 0
air.velocity = -2.5, -10
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 36), var(36) := -79
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3050, Hit 6]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 15
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 2,2
guard.pauseTime = 2,2
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 120
ground.velocity = -4.49,0
ground.cornerPush.velOff = 0
guard.velocity = -4.49
guard.cornerPush.velOff = 0
air.velocity = -2.5, -10
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -112
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3050, Hit 7]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 23
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 2,2
guard.pauseTime = 2,2
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 120
ground.velocity = -2.5, -10
ground.cornerPush.velOff = 0
guard.velocity = -7.51
guard.cornerPush.velOff = 0
air.velocity = -2.5, -10
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -40
palFX.time = 42
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3050, Flame Particle Timer Set]
type = VarSet
trigger1 = MoveHit = 1 && NumTarget && AnimElemTime(24) < 0
trigger1 = !(Target, HitShakeOver)
var(45) = 42
ignoreHitPause = 1
persistent = 0

[State 3050, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150) && AnimElemTime(23) >= 0
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3050, Hit 8]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 24
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 2,2
guard.pauseTime = 2,2
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 120
ground.velocity = -2.5, -10
ground.cornerPush.velOff = 0
guard.velocity = -7.51
guard.cornerPush.velOff = 0
air.velocity = -2.5, -10
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 36), var(36) := -79
palFX.time = 44
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3050, Flame Particle Timer Set]
type = VarSet
trigger1 = MoveHit = 1 && NumTarget && AnimElemTime(24) >= 0 && AnimElemTime(25) < 0
trigger1 = !(Target, HitShakeOver)
var(45) = 44
ignoreHitPause = 1
persistent = 0

[State 3050, Hit 9]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 25
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 14 < 7, 7, fvar(11) * 14)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 120
ground.velocity = -2.5, -10
ground.cornerPush.velOff = 0
guard.velocity = -7.51
guard.cornerPush.velOff = 0
air.velocity = -2.5, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -112
palFX.time = 47
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3050, Flame Particle Timer Set]
type = VarSet
trigger1 = MoveHit = 1 && NumTarget && AnimElemTime(25) >= 0 && AnimElemTime(26) < 0
trigger1 = !(Target, HitShakeOver)
var(45) = 47
ignoreHitPause = 1
persistent = 0

[State 3050, Hit 10]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 26
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 7 < 7, 7, fvar(11) * 7)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 120
ground.velocity = -2.5, -10
ground.cornerPush.velOff = 0
guard.velocity = -7.51
guard.cornerPush.velOff = 0
air.velocity = -2.5, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -112
palFX.time = 49
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3050, Flame Particle Timer Set]
type = VarSet
trigger1 = MoveHit = 1 && NumTarget && AnimElemTime(26) >= 0 && AnimElemTime(27) < 0
trigger1 = !(Target, HitShakeOver)
var(45) = 49
ignoreHitPause = 1
persistent = 0

[State 3050, Hit 11]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 27
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 7 < 7, 7, fvar(11) * 7)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 120
ground.velocity = -2.5, -10
ground.cornerPush.velOff = 0
guard.velocity = -7.51
guard.cornerPush.velOff = 0
air.velocity = -2.5, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -112
palFX.time = 50
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3050, Flame Particle Timer Set]
type = VarSet
trigger1 = MoveHit = 1 && NumTarget && AnimElemTime(27) >= 0 && AnimElemTime(28) < 0
trigger1 = !(Target, HitShakeOver)
var(45) = 50
ignoreHitPause = 1
persistent = 0

[State 3050, Hit 12]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 28
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 7 < 7, 7, fvar(11) * 7)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 22
ground.slideTime = 22
guard.hitTime = 22
air.hitTime = 120
ground.velocity = -2.5, -10
ground.cornerPush.velOff = 0
guard.velocity = -7.51
guard.cornerPush.velOff = 0
air.velocity = -2.5, -10
air.cornerPush.velOff = 0
airGuard.velocity = -8, -1
airGuard.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -112
palFX.time = 51
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 3050, Flame Particle Timer Set]
type = VarSet
trigger1 = MoveHit = 1 && NumTarget && AnimElemTime(28) >= 0
trigger1 = !(Target, HitShakeOver)
var(45) = 51
ignoreHitPause = 1
persistent = 0

[State 3050, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(29) >= 0
moveType = I

[State 3050, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 1101

;MAX SHINKUU TATSUMAKI SENPUU KYAKKU
[Statedef 3200]
type = S
physics = S
movetype = A
anim = 3200
ctrl = 0
velset = 0, 0
poweradd = -2000
;juggle = ifelse((prevstateno = [1000, 4999]), 0, 6) * !var(20)
facep2 = 1
sprpriority = 2

[State 4200, 1.3]
type = Explod
trigger1 = AnimElem = 1, = 0 && NumExplod(4203) = 0
anim = 4203
id = 4203
pos = 0,0
postype = p1
bindtime = -1
sprpriority = 5
removetime = -1
removeongethit = 1
supermove = 1
bind = p1



[State 4200, 4]
type = RemoveExplod
trigger1 = AnimElem = 4, = 0
id = 4203

[State 3200, Strength]
type = varset
trigger1 = var(10) != 6
var(10) = 6

[State 3000, Super Cancel Flag]
type = varset
trigger1 = !time
var(21) = (prevstateno = [1000,2999]) && prevstateno!=1300 || var(20)
[State 3200, Hyper Cancel Flag]
type = varset
trigger1 = !time
var(22) = (prevstateno = [3000,4999])

[State 3020, Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3200, Snd]
type = playsnd
trigger1 = anim = 3200 && animelem = 2
value = 4 + (var(1) = 2) * 10, 3
channel = 0
volume = 200
[State 3200, Snd]
type = playsnd
trigger1 = anim = 3200 && animelem = 2 && var(1) = 3; && var(34)
value = 4, 99
channel = 0
volume = 200

[State 3200, Super Pause FX]
type = helper
trigger1 = anim = 3200 && animelem = 3
helpertype = normal
stateno = 8510
ID = 8510
name = "Super Charge"
postype = p1
pos = -27, -16
ownpal = 1
persistent = 0
supermovetime = 9999

[State 3200, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3200, Super Pause]
type = superpause
trigger1 = anim = 3200 && animelem = 3
time = 38
anim = -1
sound = s8500, 0
p2defmul = 1
darken = 0

[State Corner Push]
type = varset
trigger1 = anim = 3200 && animelem = 3
fvar(5) = 0

[State 3200, NHB]
type = nothitby
trigger1 = anim = 3200
time = 1
value = SCA
[State 3200, width]
type = width
trigger1 = (anim = [3201, 3202]) && movehit
edge = 50, 35

[State 3200, Snd]
type = playsnd
trigger1 = anim = 3200 && animelem = 5
value = 0, 41
[State 3200, Dust]
type = helper
trigger1 = anim = 3200 && animelem = 5
helpertype = normal
stateno = 8100
ID = 8100
name = "Dust"
postype = p1
ownpal = 1
[State 3200, Vel]
type = velset
trigger1 = anim = 3200 && animelem = 5
y = -3.3

[State 3200, Anim]
type = changeanim
trigger1 = anim = 3200 && !animtime
;value = ifelse(var(1) = 1 || var(34), 3201, 3202)
value = ifelse(var(1) = 2, 3202, 3201)
[State 3200, Snd]
type = playsnd
trigger1 = anim = [3201, 3202]
value = 4 + (var(1) = 2) * 10, 14 -(var(1) = 2) * 2
channel = 0
persistent = 0

[State 3200, Vel]
type = velset
trigger1 = anim = [3201, 3202]
;y = ifelse((var(1) = 1 && !var(34)), -.5, 0.15)
y = ifelse(var(1) = 2, -.5, 0.15)
[State 3200, Push]
type = playerpush
trigger1 = anim = 3201 || anim = 3202 || anim = 1207
value = 0
ignorehitpause = 1

[State 3200, spin]
type = playsnd
triggerall = anim = 3201 || anim = 3202
trigger1 = animelem = 1 || animelem = 7 || animelem = 13 || animelem = 19 || animelem = 25 || animelem = 31 || animelem = 37
value = 1, 5
channel = 1

[State 3200, Anim]
type = changeanim
trigger1 = (anim = [3201, 3202]) && !animtime
value = 1207
persistent = 0

[State 3200, statetype]
type = statetypeset
trigger1 = anim = 3200 && animelemtime(5) >= 0
trigger2 = anim = 1207 && animelemtime(1) > 1
statetype = A
physics = A
[State 3200, statetype]
type = statetypeset
trigger1 = anim = 3200 && animtime = -1
trigger2 = anim = [3201, 3202]
statetype = A
physics = N

[State 3200, Hit]
type = hitdef
trigger1 = !var(16) && var(15) < 14
trigger1 = anim = 3201 && (animelem = 2 || animelem = 8 || animelem = 14 || animelem = 20 || animelem = 26 || animelem = 32 || animelem = 38)
attr = S, HA
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 4
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 5, 0
;sparkno = s7030 + (random % 8)
;guard.sparkno = s7001
;sparkxy = -10, -70
;hitsound = sifelse(hitcount, -1, 2), 6
;guardsound = s2, 0
hitSound = -1 + 0 * (var(31) := ifelse(hitcount, -1, 6))
guardSound = -1 + 0 * (var(32) := 0)
ground.type = High
ground.slidetime = 16
ground.hittime = 16
p2facing = 1
ground.velocity = ifelse((p2dist x != [ -30, 30]), 20, 15), 0
ground.cornerpush.veloff = 0
air.type = Low
air.velocity = ifelse((p2dist x != [ -30, 30]), 6, 5), ifelse(p2dist y < (enemy, const(size.mid.pos.y)) + 45, -1.3, -6)
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
air.fall = 1
fall.recover = 0
sprpriority = -1
forcestand = 1
yaccel = 0.5
forcestand = 1
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 81), var(36) := -70
palFX.time = 42
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4

[State 3200, Hit]
type = hitdef
trigger1 = !var(16) && var(15) < 13
trigger1 = anim = 3201 && (animelem = 5 || animelem = 11 || animelem = 17 || animelem = 23 || animelem = 29 || animelem = 35)
attr = S, HA
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 4
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 5, 0
;sparkno = s7030 + (random % 8)
;guard.sparkno = s7001
;sparkxy = -10, -70
;hitsound = sifelse(hitcount, -1, 2), 6
;guardsound = s2, 0
hitSound = -1 + 0 * (var(31) := ifelse(hitcount, -1, 6))
guardSound = -1 + 0 * (var(32) := 0)
ground.type = High
ground.slidetime = 16
ground.hittime = 16
p2facing = -1
ground.velocity = ifelse((p2dist x != [ -30, 30]), -20, -15), 0
ground.cornerpush.veloff = 0
air.type = Low
air.velocity = ifelse((p2dist x != [ -30, 30]), -6, -5), ifelse(p2dist y < (enemy, const(size.mid.pos.y)) + 45, -1.3, -4)
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
air.fall = 1
fall.recover = 0
sprpriority = 1
forcestand = 1
yaccel = 0.5
forcestand = 1
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := -43), var(36) := -70
palFX.time = 42
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4

[State 3200, hitfinal]
type = hitdef
trigger1 = !var(16) && var(15) < 14
trigger1 = anim = 3201 && animelem = 41
attr = S, HA
damage = ceil(ifElse(fvar(11) * 40 < 7, 7, fvar(11) * 40)), 4
animtype = Diagup
air.animtype = Diagup
fall.animtype = Diagup
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 5, 0
;sparkno = s7030 + (random % 8)
;guard.sparkno = s7001
;sparkxy = -10, -70
;hitsound = sifelse(hitcount, -1, 2), 6
;guardsound = s2, 0
hitSound = -1 + 0 * (var(31) := ifelse(hitcount, -1, 6))
guardSound = -1 + 0 * (var(32) := 0)
ground.type = High
ground.slidetime = 16
ground.hittime = 16
p2facing = -1
ground.velocity = -6, -4
air.type = Low
air.velocity = -6, -4
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0;-12.74
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
fall = 1
fall.recover = 0
sprpriority = 1
yaccel = 0.5
forcestand = 1
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := -43), var(36) := -70
palFX.time = 42
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4

[State 3200, hitevil]
type = hitdef
trigger1 = !var(16) && var(15) < 14
trigger1 = anim = 3202 && (animelem = 2 || animelem = 8 || animelem = 14 || animelem = 20 || animelem = 26 || animelem = 32 || animelem = 38)
attr = S, HA
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 15
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 3, 0
;sparkno = s7030 + (random % 8)
;guard.sparkno = s7001
;sparkxy = -10, -70
;hitsound = sifelse(hitcount, -1, 2), 6
;guardsound = s2, 0
hitSound = -1 + 0 * (var(31) := ifelse(hitcount, -1, 6))
guardSound = -1 + 0 * (var(32) := 0)
ground.type = High
ground.slidetime = 16
ground.hittime = 16
p2facing = 1
ground.velocity = ifelse(p2dist x > 30, 18, 15), 0;ifelse(p2dist y < (enemy, const(size.mid.pos.y)) + 60, 0, -3.5)
air.type = Low
air.velocity = ifelse(p2dist x > 30, 18, 15), ifelse(p2dist y < (enemy, const(size.mid.pos.y)) + 60, 0, -3.5)
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0;-12.74
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
air.fall = 1
fall.recover = 0
sprpriority = -1
yaccel = 0.5
forcestand = 1
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 81), var(36) := -70
palFX.time = 42
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4

[State 3200, hitevil]
type = hitdef
trigger1 = !var(16) && var(15) < 12
trigger1 = anim = 3202 && (animelem = 5 || animelem = 11 || animelem = 17 || animelem = 23 || animelem = 29 || animelem = 35)
attr = S, HA
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 15
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 3, 0
;sparkno = s7030 + (random % 8)
;guard.sparkno = s7001
;sparkxy = -10, -70
;hitsound = sifelse(hitcount, -1, 2), 6
;guardsound = s2, 0
hitSound = -1 + 0 * (var(31) := ifelse(hitcount, -1, 6))
guardSound = -1 + 0 * (var(32) := 0)
ground.type = High
ground.slidetime = 16
ground.hittime = 16
p2facing = -1
ground.velocity = ifelse(p2dist x > 30, -18, -15), 0;ifelse(p2dist y < (enemy, const(size.mid.pos.y)) + 60, 0, -3.5)
air.type = Low
air.velocity = ifelse(p2dist x > 30, -18, -15), ifelse(p2dist y < (enemy, const(size.mid.pos.y)) + 60, 0, -3.5)
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0;-12.74
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
air.fall = 1
fall.recover = 0
sprpriority = 1
yaccel = 0.5
forcestand = 1
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := -43), var(36) := -70
palFX.time = 42
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4

[State 3200, hitevilfinal]
type = hitdef
trigger1 = !var(16) && var(15) < 13
trigger1 = anim = 3202 && animelem = 41
attr = S, HA
damage = ceil(ifElse(fvar(11) * 37 < 7, 7, fvar(11) * 37)), 4
animtype = Diagup
air.animtype = Diagup
fall.animtype = Diagup
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 3, 0
;sparkno = s7030 + (random % 8)
;guard.sparkno = s7001
;sparkxy = -10, -70
;hitsound = sifelse(hitcount, -1, 2), 6
;guardsound = s2, 0
hitSound = -1 + 0 * (var(31) := ifelse(hitcount, -1, 6))
guardSound = -1 + 0 * (var(32) := 0)
ground.type = High
ground.slidetime = 16
ground.hittime = 16
p2facing = 1
ground.velocity = -12, -4
air.type = Low
air.velocity = -12, -4
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0;-12.74
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
fall = 1
fall.recover = 0
sprpriority = 1
yaccel = 0.5
forcestand = 1
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 61), var(36) := -70
palFX.time = 42
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4

[State 3200, HitSound]
type = playsnd
triggerall = movehit = 1 && hitcount > 1
trigger1 = anim = 3201 && hitpausetime = 4
trigger2 = anim = 3202 && hitpausetime = 2
value = 2, 6
channel = 2
ignorehitpause = 1

[State 3200, Dust]
type = explod
trigger1 = (anim = [3201, 3202]) && !numexplod(3210)
anim = 1307
ID = 3210
sprpriority = 6
postype = p1
pos = 0, -ceil(pos y)
removetime = -1
ownpal = 1
removeongethit = 1
scale = 0.75, 0.75
[State 3200, Dust]
type = modifyexplod
trigger1 = numexplod(3210)
ID = 3210
postype = p1
pos = 0, -ceil(pos y)
[State 3200, Dust]
type = removeexplod
trigger1 = (anim != [3201, 3202]) && numexplod(3210)
ID = 3210

[State 3200, Dust]
type = explod
trigger1 = (anim = [3201, 3202]) && (animelem = 5 || animelem = 11 || animelem = 17 || animelem = 23 || animelem = 29 || animelem = 35 || animelem = 41)
anim = 3211
sprpriority = 2
postype = p1
pos = -10, -ceil(pos y)
vel = -3, 0
ownpal = 1

[State 3200, Dust]
type = explod
trigger1 = (anim = [3201, 3202]) && (animelem = 2 || animelem = 8 || animelem = 14 || animelem = 20 || animelem = 26 || animelem = 32 || animelem = 38)
anim = 3211
sprpriority = 2
postype = p1
facing = -1
pos = 10, -ceil(pos y)
vel = 3, 0
ownpal = 1


[State 3005, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7181) < 1 && (root, var(1) != 1)
trigger1 = !(target, time) && (target, movetype = H) && !var(16)
helpertype = normal
stateno = 7180
ID = 7180
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1


[State Idle]
type = statetypeset
trigger1 = anim = 1207
movetype = I

;SHINKUU TATSUMAKI SENPUU KYAKKU
[Statedef 3250]
type = S
physics = S
movetype = A
anim = 3200
ctrl = 0
velset = 0, 0
poweradd = -1000
;juggle = ifelse((prevstateno = [1000, 4999]), 0, 6) * !var(20)
facep2 = 1
sprpriority = 2

[State 4200, 1.3]
type = Explod
trigger1 = AnimElem = 1, = 0 && NumExplod(4203) = 0
anim = 4203
id = 4203
pos = 0,0
postype = p1
bindtime = -1
sprpriority = 5
removetime = -1
removeongethit = 1
supermove = 1
bind = p1

[State 4200, 4]
type = RemoveExplod
trigger1 = AnimElem = 4, = 0
id = 4203

[State 3250, Strength]
type = varset
trigger1 = var(10) != 5
var(10) = 5

[State 3250, Super Cancel Flag]
type = varset
trigger1 = !time
var(21) = (prevstateno = [1000,2999]) && prevstateno!=1300 || var(20)
[State 3250, Hyper Cancel Flag]
type = varset
trigger1 = !time
var(22) = (prevstateno = [3000,4999])

[State 3250, Super Cancel Juggle]
type = varset
trigger1 = !time
trigger1 = var(21) || var(22)
var(15) = 0
ignorehitpause = 1

[State 3250, Snd]
type = playsnd
trigger1 = anim = 3200 && animelem = 2
value = 4 + (var(1) = 2) * 10, 3
channel = 0
volume = 200
[State 3250, Snd]
type = playsnd
trigger1 = anim = 3200 && animelem = 2 && var(1) = 3; && var(34)
value = 4, 99
channel = 0
volume = 200

[State 3250, Super Pause FX]
type = helper
trigger1 = anim = 3200 && animelem = 3
helpertype = normal
stateno = 8500
ID = 8500
name = "Super Charge"
postype = p1
pos = -27, -16
ownpal = 1
persistent = 0
supermovetime = 9999

[State 3250, ECreset]
type = palfx
trigger1 = !time
trigger1 = !(var(20) := 0)
time = 1

[State 3250, Super Pause]
type = superpause
trigger1 = anim = 3200 && animelem = 3
time = 38
anim = -1
sound = s8500, 0
p2defmul = 1
darken = 0

[State Corner Push]
type = varset
trigger1 = anim = 3200 && animelem = 3
fvar(5) = 0

[State 3250, NHB]
type = nothitby
trigger1 = anim = 3200
time = 1
value = SCA
[State 3250, width]
type = width
trigger1 = (anim = [3201, 3202]) && movehit
edge = 50, 35



[State 3250, Snd]
type = playsnd
trigger1 = anim = 3200 && animelem = 5
value = 0, 41

[State 3250, Dust]
type = helper
trigger1 = anim = 3200 && animelem = 5
helpertype = normal
stateno = 8100
ID = 8100
name = "Dust"
postype = p1
ownpal = 1
[State 3250, Vel]
type = velset
trigger1 = anim = 3200 && animelem = 5
y = -3.3

[State 3250, Anim]
type = changeanim
trigger1 = anim = 3200 && !animtime
;value = ifelse(var(1) = 1 || var(34), 3201, 3202)
value = ifelse(var(1) = 2, 3251, 3250)

[State 3250, Snd]
type = playsnd
trigger1 = anim = [3250, 3251]
value = 4 + (var(1) = 2) * 10, 14 -(var(1) = 2) * 2
channel = 0
persistent = 0

[State 3250, Vel]
type = velset
trigger1 = anim = [3250, 3251]
;y = ifelse((var(1) = 1 && !var(34)), -.5, 0.15)
y = ifelse(var(1) = 2, -.5, 0.15)
[State 3250, Push]
type = playerpush
trigger1 = anim = 3250 || anim = 3251 || anim = 1207
value = 0
ignorehitpause = 1

[State 3250, spin]
type = playsnd
triggerall = anim = 3250 || anim = 3251
trigger1 = animelem = 1 || animelem = 7 || animelem = 13 || animelem = 19 || animelem = 25 || animelem = 31 || animelem = 37
value = 1, 5
channel = 1

[State 3250, Anim]
type = changeanim
trigger1 = (anim = [3250, 3251]) && !animtime
value = 1207
persistent = 0

[State 3250, statetype]
type = statetypeset
trigger1 = anim = 3200 && animelemtime(5) >= 0
trigger2 = anim = 1207 && animelemtime(1) > 1
statetype = A
physics = A

[State 3250, statetype]
type = statetypeset
trigger1 = anim = 3200 && animtime = -1
trigger2 = anim = [3250, 3251]
statetype = A
physics = N

[State 3250, Hit]
type = hitdef
trigger1 = !var(16) && var(15) < 14
trigger1 = anim = 3250 && (animelem = 2 || animelem = 8 || animelem = 14)
attr = S, HA
damage = ceil(ifElse(fvar(11) * 29 < 7, 7, fvar(11) * 29)), 4
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 5, 0
;sparkno = s7030 + (random % 8)
;guard.sparkno = s7001
;sparkxy = -10, -70
;hitsound = sifelse(hitcount, -1, 2), 6
;guardsound = s2, 0
hitSound = -1 + 0 * (var(31) := ifelse(hitcount, -1, 6))
guardSound = -1 + 0 * (var(32) := 0)
ground.type = High
ground.slidetime = 16
ground.hittime = 16
p2facing = 1
ground.velocity = ifelse((p2dist x != [ -30, 30]), 20, 15), 0
ground.cornerpush.veloff = 0
air.type = Low
air.velocity = ifelse((p2dist x != [ -30, 30]), 6, 5), ifelse(p2dist y < (enemy, const(size.mid.pos.y)) + 45, -1, -4)
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
air.fall = 1
fall.recover = 0
sprpriority = -1
forcestand = 1
yaccel = 0.5
forcestand = 1
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 81), var(36) := -70
palFX.time = 42
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4

[State 3250, Hit]
type = hitdef
trigger1 = !var(16) && var(15) < 13
trigger1 = anim = 3250 && (animelem = 5 || animelem = 11 || animelem = 17)
attr = S, HA
damage = ceil(ifElse(fvar(11) * 29 < 7, 7, fvar(11) * 29)), 4
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 5, 0
;sparkno = s7030 + (random % 8)
;guard.sparkno = s7001
;sparkxy = -10, -70
;hitsound = sifelse(hitcount, -1, 2), 6
;guardsound = s2, 0
hitSound = -1 + 0 * (var(31) := ifelse(hitcount, -1, 6))
guardSound = -1 + 0 * (var(32) := 0)
ground.type = High
ground.slidetime = 16
ground.hittime = 16
p2facing = -1
ground.velocity = ifelse((p2dist x != [ -30, 30]), -20, -15), 0
ground.cornerpush.veloff = 0
air.type = Low
air.velocity = ifelse((p2dist x != [ -30, 30]), -6, -5), ifelse(p2dist y < (enemy, const(size.mid.pos.y)) + 45, -1, -4)
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
air.fall = 1
fall.recover = 0
sprpriority = 1
forcestand = 1
yaccel = 0.5
forcestand = 1
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := -43), var(36) := -70
palFX.time = 42
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4

[State 3250, hitfinal]
type = hitdef
trigger1 = !var(16) && var(15) < 14
trigger1 = anim = 3250 && animelem = 20
attr = S, HA
damage = ceil(ifElse(fvar(11) * 45 < 7, 7, fvar(11) * 45)), 4
animtype = Diagup
air.animtype = Diagup
fall.animtype = Diagup
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 5, 0
;sparkno = s7030 + (random % 8)
;guard.sparkno = s7001
;sparkxy = -10, -70
;hitsound = sifelse(hitcount, -1, 2), 6
;guardsound = s2, 0
hitSound = -1 + 0 * (var(31) := ifelse(hitcount, -1, 6))
guardSound = -1 + 0 * (var(32) := 0)
ground.type = High
ground.slidetime = 16
ground.hittime = 16
p2facing = -1
ground.velocity = -6, -4
air.type = Low
air.velocity = -6, -4
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0;-12.74
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
fall = 1
fall.recover = 0
sprpriority = 1
yaccel = 0.5
forcestand = 1
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 81), var(36) := -70
palFX.time = 42
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4

[State 3250, hitevil]
type = hitdef
trigger1 = !var(16) && var(15) < 14
trigger1 = anim = 3251 && (animelem = 2 || animelem = 8 || animelem = 14)
attr = S, HA
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 15
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 3, 0
;sparkno = s7030 + (random % 8)
;guard.sparkno = s7001
;sparkxy = -10, -70
;hitsound = sifelse(hitcount, -1, 2), 6
;guardsound = s2, 0
hitSound = -1 + 0 * (var(31) := ifelse(hitcount, -1, 6))
guardSound = -1 + 0 * (var(32) := 0)
ground.type = High
ground.slidetime = 16
ground.hittime = 16
p2facing = 1
ground.velocity = ifelse(p2dist x > 30, 18, 15), 0;ifelse(p2dist y < (enemy, const(size.mid.pos.y)) + 60, 0, -3.5)
air.type = Low
air.velocity = ifelse(p2dist x > 30, 18, 15), ifelse(p2dist y < (enemy, const(size.mid.pos.y)) + 60, 0, -3.5)
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0;-12.74
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
air.fall = 1
fall.recover = 0
sprpriority = -1
yaccel = 0.5
forcestand = 1
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 81), var(36) := -70
palFX.time = 42
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4

[State 3250, hitevil]
type = hitdef
trigger1 = !var(16) && var(15) < 12
trigger1 = anim = 3251 && (animelem = 5 || animelem = 11 || animelem = 17)
attr = S, HA
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 15
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 3, 0
;sparkno = s7030 + (random % 8)
;guard.sparkno = s7001
;sparkxy = -10, -70
;hitsound = sifelse(hitcount, -1, 2), 6
;guardsound = s2, 0
hitSound = -1 + 0 * (var(31) := ifelse(hitcount, -1, 6))
guardSound = -1 + 0 * (var(32) := 0)
ground.type = High
ground.slidetime = 16
ground.hittime = 16
p2facing = -1
ground.velocity = ifelse(p2dist x > 30, -18, -15), 0;ifelse(p2dist y < (enemy, const(size.mid.pos.y)) + 60, 0, -3.5)
air.type = Low
air.velocity = ifelse(p2dist x > 30, -18, -15), ifelse(p2dist y < (enemy, const(size.mid.pos.y)) + 60, 0, -3.5)
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0;-12.74
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
air.fall = 1
fall.recover = 0
sprpriority = 1
yaccel = 0.5
forcestand = 1
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := -43), var(36) := -70
palFX.time = 42
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4

[State 3250, hitevilfinal]
type = hitdef
trigger1 = !var(16) && var(15) < 13
trigger1 = anim = 3251 && animelem = 20
attr = S, HA
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 4
animtype = Diagup
air.animtype = Diagup
fall.animtype = Diagup
guardflag = M
hitflag = MAF
priority = 4, Hit
pausetime = 3, 0
;sparkno = s7030 + (random % 8)
;guard.sparkno = s7001
;sparkxy = -10, -70
;hitsound = sifelse(hitcount, -1, 2), 6
;guardsound = s2, 0
hitSound = -1 + 0 * (var(31) := ifelse(hitcount, -1, 6))
guardSound = -1 + 0 * (var(32) := 0)
ground.type = High
ground.slidetime = 16
ground.hittime = 16
p2facing = 1
ground.velocity = -12, -4
air.type = Low
air.velocity = -12, -4
ground.cornerpush.veloff = 0
guard.velocity = -10.52
guard.cornerpush.veloff = 0;-12.74
getpower = 0
givepower = 36, 36
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
fall = 1
fall.recover = 0
sprpriority = 1
yaccel = 0.5
forcestand = 1
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 61), var(36) := -70
palFX.time = 42
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4

[State 3250, HitSound]
type = playsnd
triggerall = movehit = 1 && hitcount > 1
trigger1 = anim = 3250 && hitpausetime = 4
trigger2 = anim = 3251 && hitpausetime = 2
value = 2, 6
channel = 2
ignorehitpause = 1

[State 3250, Dust]
type = explod
trigger1 = (anim = [3250, 3251]) && !numexplod(3210)
anim = 1307
ID = 3210
sprpriority = 3
postype = p1
pos = 0, -ceil(pos y)
removetime = -1
ownpal = 1
removeongethit = 1
scale = 0.75, 0.75

[State 3250, Dust]
type = modifyexplod
trigger1 = numexplod(3210)
ID = 3210
postype = p1
pos = 0, -ceil(pos y)
[State 3250, Dust]
type = removeexplod
trigger1 = (anim != [3250, 3251]) && numexplod(3210)
ID = 3210

[State 3250, Dust]
type = explod
trigger1 = (anim = [3250, 3251]) && (animelem = 5 || animelem = 11 || animelem = 17)
anim = 3211
sprpriority = 2
postype = p1
pos = -10, -ceil(pos y)
vel = -3, 0
ownpal = 1

[State 3250, Dust]
type = explod
trigger1 = (anim = [3250, 3251]) && (animelem = 2 || animelem = 8 || animelem = 14 || animelem = 20)
anim = 3211
sprpriority = 2
postype = p1
facing = -1
pos = 10, -ceil(pos y)
vel = 3, 0
ownpal = 1


[State 3005, flames]
type = helper
trigger1 = movehit && numtarget && numhelper(7181) < 1 && (root, var(1) != 1)
trigger1 = !(target, time) && (target, movetype = H) && !var(16)
helpertype = normal
stateno = 7180
ID = 7180
name = "flames"
postype = p2
bindtime = 1000
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = anim = 1207
movetype = I

;LANDING
[StateDef 1101]
type = S
anim = 1101
physics = N
moveType = I
velSet = 0,0

[State 1101, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1101, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1101, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0
channel = 1

[State 1101, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;SHINRYUKEN
[StateDef 3300]
type = S
physics = N
moveType = A
anim = 3300
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
trigger1 = AnimElemTime(5) < 0
time = 1
value = SCA

[State 3100, Super Pause FX]
type = Helper
trigger1 = animelem = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 10,-27
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3100, SuperPause]
type = SuperPause
trigger1 = animelem = 3
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500,0
darken = 0

[State 3100, Voice 1]
type = PlaySnd
trigger1 = Time = 3
value = 6205,0
channel = 0

[State 3100, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 5
value = 4300,0
channel = 0

[State 3100, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 8
value = 1,2
channel = 1

[State 3100, Fire sound]
type = PlaySnd
trigger1 = AnimElem = 9 && var(40) = [1,2]
value = 1100,1
channel = 3

[State 3100, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(9) = 2
value = 41,0
channel = 4

[State 3100, Shinryuken Flames (Air)]
type = Explod
trigger1 = AnimElem = 9 
ID = 3305
anim = 3305
bindTime = -1
removetime = -1
sprPriority = 3
posType = P1
pos = 10, -144
scale = ifElse(var(40) = 2, 0.45, 0.35), 0.35
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3100, Dust Helper]
type = Helper
trigger1 = AnimElemTime(9) = 2
helperType = Normal
stateNo = 8100
ID = 8100
name = "Shinryuken Dust"
posType = P1
ownPal = 1

[State 3100, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 9
stateType = A
physics = N

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElemTime(9) = 2
y = -9.75
persistent = 0

[State 3100, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(9) > 2
y = 0.5859375

[State 3100, Ground Hit 1]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 6
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 1.25
guard.cornerPush.velOff = 0
air.velocity = 1.25, -8.125
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 11), var(36) := -29
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, Ground Hit 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 7
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 1.25
guard.cornerPush.velOff = 0
air.velocity = 1.25, -8.125
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -40
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, Ground Hit 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 8
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Up
air.animType = Up
fall.animType = Up
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 1.25, -8.125
ground.cornerPush.velOff = 0
guard.velocity = 1.25
guard.cornerPush.velOff = 0
air.velocity = 1.25, -8.125
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 36), var(36) := -79
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, Mashing]
type = VarSet
trigger1 = !Time
var(42) = 0

[State 3100, Mashing]
type = VarSet
trigger1 = !Time
var(12) = 0

[State 3100, Mashing Flag]
type = VarSet
trigger1 = !Time
var(10) = 0

[State 3100, Mashing]
type = VarSet
triggerAll = var(42) = 0 && AnimElemTime(9) >= 2
trigger1 = !AILevel && (command = "a" || command = "b" || command = "c" || command = "x" || command = "y" || command = "z")
trigger2 = !AILevel && (command = "up" || command = "down" || command = "back" || command = "fwd")
trigger3 = AILevel
var(42) = 1

[State 3100, Mashing Increment]
type  = VarAdd
trigger1 = var(42) = 1
var(12) = 1

[State 3100, Mashing Decrement]
type = VarAdd
trigger1 = var(42) > 0
var(42) = -1

[State 3100, Mashing Flag]
type = VarSet
trigger1 = var(12) > 0
var(10) = 1

[State 3100, Anim Advance]
type = ChangeAnim
trigger1 = AnimElemTime(9) >= 2 && AnimElemTime(33) < 0 && vel y >= 0 && AnimElemTime(AnimElemNo(0)) = 0
value = 3300
elem = AnimElemNo(0) + ifElse(AnimElemTime(16) <= 0, 18, ifElse(AnimElemTime(22) <= 0, 12, 6)) - 1 * (AnimElem = 15 || AnimElem = 16 || AnimElem = 21 || AnimElem = 22)
persistent = 0

[State 3100, Anim Skip]
type = ChangeAnim
trigger1 = AnimElemTime(9) >= 2 && AnimElemTime(28) < 0
trigger1 = var(12) > 0
trigger1 = 1 || var(12) := 0
trigger2 = AnimElemTime(32) > 0 && AnimElemTime(33) < 0 && var(10)
value = 3300
elem = AnimElemNo(0) + 1

[State 3100, Spark XY]
type = Null
trigger1 = AnimElemTime(9) >= 0
trigger1 = var(35) := (12 + (Random % 25)) || var(36) := -70 - (Random % 41)

[State 3100, Air Hits]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 + HitCount) && HitCount < 9
trigger1 = AnimElem = 9 || AnimElem = 10 || AnimElem = 11 || AnimElem = 12 || AnimElem = 13 || AnimElem = 14 || AnimElem = 15
trigger2 = AnimElem = 16 || AnimElem = 17 || AnimElem = 18 || AnimElem = 19 || AnimElem = 20 || AnimElem = 21 || AnimElem = 22
trigger3 = AnimElem = 23 || AnimElem = 24
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(HitCount > 4, 14, 21) < 7, 7, fvar(11) * ifElse(HitCount > 4, 14, 21))), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Up
air.animType = Up
fall.animType = Up
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 1.25, -8.125
ground.cornerPush.velOff = 0
guard.velocity = 1.25
guard.cornerPush.velOff = 0
air.velocity = 1.25, -8.125
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10, -55
palFX.time = ifElse((var(40) = [1,2]), 47, 12 * var(9))
palFX.add = ifElse((var(40) = [1,2]), 0, 255), ifElse((var(40) = [1,2]), 0, 255), ifElse((var(40) = [1,2]), 0, 255)
palFX.mul = ifElse((var(40) = [1,2]), 128, 256), ifElse((var(40) = [1,2]), 128, 256), ifElse((var(40) = [1,2]), 128, 256)
palFX.sinAdd = ifElse((var(40) = [1,2]), 96, -255), ifElse((var(40) = [1,2]), 96, -255), ifElse((var(40) = [1,2]), 96, -255), ifElse((var(40) = [1,2]), 4, 48)
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150) && AnimElemTime(9)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3100, Flame Particle Timer Set]
type = VarSet
trigger1 = MoveHit = 1 && NumTarget && AnimElemTime(9) >= 0 && var(40) = [1,2]
trigger1 = !(Target, HitShakeOver) && HitPauseTime = 4
var(45) = 47
ignoreHitPause = 1

[State 3100, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 11
trigger2 = AnimElem = 14
trigger3 = AnimElem = 17
trigger4 = AnimElem = 20
trigger5 = AnimElem = 23
trigger6 = AnimElem = 26
trigger7 = AnimElem = 29
trigger8 = AnimElem = 32
value = 1,2

[State 3100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(25) >= 0
moveType = I

[State 3100, Shinryuken Flames (Fade Away)]
type = Explod
trigger1 = NumExplod(3305) && AnimElemTime(33) >= 0
anim = 3306
sprPriority = 3
posType = P1
pos = 10, -144
scale = ifElse(var(40) = 2, 0.45, 0.35), 0.35
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3100, RemoveExplod]
type = RemoveExplod
trigger1 = NumExplod(3305) && AnimElemTime(33) >= 0
id = 3305
ignoreHitPause = 1



[State 3100, PalFX]
type = PalFX
trigger1 = AnimElemTime(33) >= -1 && var(40) = 2
time = 1
mul = 128,128,128

[State 3100, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1101


;Landing
[StateDef 3101]
type = S
anim = 3301
physics = N
moveType = I
velSet = 0,0

[State 3101, RemoveExplod]
type = RemoveExplod
trigger1 = !Time
id = 3105
ignoreHitPause = 1

[State 3101, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3101, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3101, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0
channel = 1

[State 3101, ChangeState]
type = ChangeState
trigger1 = WinKo && var(40) = 2
trigger1 = 1 || var(10) := Facing
value = 3120

[State 3101, Master Overlay]
type = Explod
trigger1 = !Time && var(40) = 2
anim = 3115
bindTime = -1
sprPriority = 2
posType = P1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3100, PalFX]
type = PalFX
trigger1 = AnimTime <= -4 && var(40) = 2
time = 1
mul = 128,128,128

[State 3101, PalFX (Fade away)]
type = PalFX
trigger1 = AnimTime >= -5 && AnimTime < -1 && var(40) = 2
time = 1
mul = 128 + 32 * (AnimTime + 6), 128 + 32 * (AnimTime + 6), 128 + 32 * (AnimTime + 6)

[State 3101, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Win by Shinryuken (Master)
[StateDef 3120]
type = S
anim = 3120
physics = N
moveType = I
velSet = 0,0

[State 3120, Turn]
type = Turn
trigger1 = Facing != var(10)

[State 3120, Overlay]
type = Explod
trigger1 = !Time && PrevStateNo = 3101
anim = 3125
bindTime = -1
removeTime = -1
sprPriority = 2
posType = P1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3120, PalFX]
type = PalFX
trigger1 = 1
time = 1
mul = 128,128,128

[State 3120, ChangeState]
type = ChangeState
trigger1 = PrevStateNo = 3101
value = 180
ctrl = 1



;========================<MAX SHINRYUKEN>=============================
[StateDef 3350]
type = S
physics = N
moveType = A
anim = 3350
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
var(17) = 45

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

[State 3150, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
time = 1
value = SCA

[State 3150, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 10,-27
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3150, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 45
moveTime = 45
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500,0
darken = 0

[State 3100, Voice 1]
type = PlaySnd
trigger1 = Time = 3
value = 6205,0
channel = 0

[State 3100, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 5
value = 4300,0
channel = 0

[State 3150, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 8
value = 1,2
channel = 1

[State 3150, Fire sound]
type = PlaySnd
trigger1 = AnimElem = 9 && var(40) = [1,2]
value = 1100,1
channel = 3

[State 3150, Jump Sound]
type = PlaySnd
trigger1 = AnimElemTime(9) = 2
value = 41,0
channel = 4

[State 3150, Shinryuken Flames (Air)]
type = Explod
trigger1 = AnimElem = 9 
ID = 3305
anim = 3305
bindTime = -1
removetime = -1
sprPriority = 3
posType = P1
pos = 10, -144
scale = ifElse(var(40) = 2, 0.45, 0.35), 0.35
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3150, Dust Helper]
type = Helper
trigger1 = AnimElemTime(9) = 2
helperType = Normal
stateNo = 8100
ID = 8100
name = "Shinryuken Dust"
posType = P1
ownPal = 1

[State 3150, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 9
stateType = A
physics = N

[State 3150, VelSet]
type = VelSet
trigger1 = AnimElemTime(9) = 2
y = -12.25
persistent = 0

[State 3150, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(9) > 2
y = 0.4859375

[State 3150, Ground Hit 1]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 6
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 65 < 7, 7, fvar(11) * 65)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 1.25
guard.cornerPush.velOff = 0
air.velocity = 1.25, -8.125
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 11), var(36) := -29
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, Ground Hit 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 7
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 60 < 7, 7, fvar(11) * 60)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 1.25
guard.cornerPush.velOff = 0
air.velocity = 1.25, -8.125
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 27), var(36) := -40
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, Ground Hit 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 + HitCount)
trigger1 = AnimElem = 8
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 45 < 7, 7, fvar(11) * 45)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Up
air.animType = Up
fall.animType = Up
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 1.25, -8.125
ground.cornerPush.velOff = 0
guard.velocity = 1.25
guard.cornerPush.velOff = 0
air.velocity = 1.25, -8.125
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 36), var(36) := -79
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, Mashing]
type = VarSet
trigger1 = !Time
var(42) = 0

[State 3150, Mashing]
type = VarSet
trigger1 = !Time
var(12) = 0

[State 3150, Mashing Flag]
type = VarSet
trigger1 = !Time
var(10) = 0

[State 3150, Mashing]
type = VarSet
triggerAll = var(42) = 0 && AnimElemTime(9) >= 2
trigger1 = !AILevel && (command = "a" || command = "b" || command = "c" || command = "x" || command = "y" || command = "z")
trigger2 = !AILevel && (command = "up" || command = "down" || command = "back" || command = "fwd")
trigger3 = AILevel
var(42) = 1

[State 3150, Mashing Increment]
type  = VarAdd
trigger1 = var(42) = 1
var(12) = 1

[State 3150, Mashing Decrement]
type = VarAdd
trigger1 = var(42) > 0
var(42) = -1

[State 3150, Mashing Flag]
type = VarSet
trigger1 = var(12) > 0
var(10) = 1

[State 3150, Anim Advance]
type = ChangeAnim
trigger1 = AnimElemTime(9) >= 2 && AnimElemTime(33) < 0 && vel y >= 0 && AnimElemTime(AnimElemNo(0)) = 0
value = 3150
elem = 33
persistent = 0

[State 3150, Anim Skip]
type = ChangeAnim
trigger1 = AnimElemTime(9) >= 2 && AnimElemTime(33) < 0
trigger1 = var(12) > 0
trigger1 = 1 || var(12) := 0
value = 3150
elem = AnimElemNo(0) + 1

[State 3150, Spark XY]
type = Null
trigger1 = AnimElemTime(9) >= 0
trigger1 = var(35) := (12 + (Random % 25)) || var(36) := -70 - (Random % 41)

[State 3150, Air Hits]
type = HitDef
triggerAll = !var(16) && (var(15) < 1 + HitCount) && HitCount < (9 + 8 * var(10))
trigger1 = AnimElem = 9 || AnimElem = 10 || AnimElem = 11 || AnimElem = 12 || AnimElem = 13 || AnimElem = 14 || AnimElem = 15
trigger2 = AnimElem = 16 || AnimElem = 17 || AnimElem = 18 || AnimElem = 19 || AnimElem = 20 || AnimElem = 21 || AnimElem = 22
trigger3 = AnimElem = 23 || AnimElem = 24 || AnimElem = 25 || AnimElem = 26 || AnimElem = 27 || AnimElem = 28 || AnimElem = 29
trigger4 = AnimElem = 30 || AnimElem = 31 || AnimElem = 32
attr = A, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(HitCount > 11, 7, ifElse(HitCount > 5, 14, 21)) < 7, 7, fvar(11) * ifElse(HitCount > 11, 7, ifElse(HitCount > 5, 14, 21)))), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Up
air.animType = Up
fall.animType = Up
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = 1.25, -8.125
ground.cornerPush.velOff = 0
guard.velocity = 1.25
guard.cornerPush.velOff = 0
air.velocity = 1.25, -8.125
air.cornerPush.velOff = 0
yAccel = 0.537109375
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10, -55
palFX.time = ifElse((var(40) = [1,2]), 47, 12 * var(9))
palFX.add = ifElse((var(40) = [1,2]), 0, 255), ifElse((var(40) = [1,2]), 0, 255), ifElse((var(40) = [1,2]), 0, 255)
palFX.mul = ifElse((var(40) = [1,2]), 128, 256), ifElse((var(40) = [1,2]), 128, 256), ifElse((var(40) = [1,2]), 128, 256)
palFX.sinAdd = ifElse((var(40) = [1,2]), 96, -255), ifElse((var(40) = [1,2]), 96, -255), ifElse((var(40) = [1,2]), 96, -255), ifElse((var(40) = [1,2]), 4, 48)
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150) && AnimElemTime(9) >= 0 && var(40) = [1,2]
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 3150, Flame Particle Timer Set]
type = VarSet
trigger1 = MoveHit = 1 && NumTarget && AnimElemTime(9) >= 0 && var(40) = [1,2]
trigger1 = !(Target, HitShakeOver) && HitPauseTime = 4
var(45) = 47
ignoreHitPause = 1

[State 3150, Woosh sound]
type = PlaySnd
trigger1 = AnimElem = 11
trigger2 = AnimElem = 14
trigger3 = AnimElem = 17
trigger4 = AnimElem = 20
trigger5 = AnimElem = 23
trigger6 = AnimElem = 26
trigger7 = AnimElem = 29
trigger8 = AnimElem = 32
value = 1,2

[State 3150, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(33) >= 0
moveType = I

[State 3150, Shinryuken Flames (Fade Away)]
type = Explod
trigger1 = NumExplod(3305) && AnimElemTime(33) >= 0
anim = 3306
sprPriority = 3
posType = P1
pos = 10, -144
scale = ifElse(var(40) = 2, 0.45, 0.35), 0.35
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3150, RemoveExplod]
type = RemoveExplod
trigger1 = NumExplod(3305) && AnimElemTime(33) >= 0
id = 3305
ignoreHitPause = 1

[State 3150, Master Overlay]
type = Explod
trigger1 = AnimElem = 33 && var(40) = 2
ID = 3105
anim = 3105
bindTime = -1
removeTime = -1
sprPriority = 2
posType = P1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3150, PalFX]
type = PalFX
trigger1 = AnimElemTime(33) >= -1 && var(40) = 2
time = 1
mul = 128,128,128

[State 3150, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1101

;TENMA GOU ZAKUU
[Statedef 3339]
type=A
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=-1000
facep2=1

[State 3000, Anim]
type=changeanim
trigger1=!time
value=3400

[State 3000, Superpause FX]
type = helper
trigger1 = animelem = 1
stateno = 8500
ID = 8500
name = "Superpause FX"
postype = p1
pos = 3, -85
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3000, Superpause]
type = superpause
trigger1 = animelem = 1
time = 40
movetime = 40
p2defmul = 1
unhittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3400, 1.2]
type = Explod
trigger1 = AnimElem = 1 && NumExplod(3401) = 0
anim = 3401
id = 3401
pos = 0,0
postype = p1
bindtime = -1
sprpriority = 1
removetime = -1
removeongethit = 1
supermove = 1
bind = p1

[State 3400, 3.13]
type = RemoveExplod
trigger1 = AnimElem = 2, = 0
id = 3401


[State 3400, 5]
type = VelMul
trigger1 = Time = 0
x = 0.08
y = 0.08

[State 3400, 6]
type = VelSet
trigger1 = AnimElem = 2
trigger1 = Vel X = 0
x = 0
y = 0.25

[State 3400, 7]
type = VelSet
trigger1 = AnimElem = 2
trigger1 = Vel X > 0
x = 0.2
y = 0.25

[State 3400, 8]
type = VelSet
trigger1 = AnimElem = 2
trigger1 = Vel X < 0
x = -0.2
y = 0.25

[State 3400, 9]
type = VelSet
trigger1 = AnimElem = 5
trigger2 = AnimElem = 9
trigger3 = AnimElem = 13
trigger4 = AnimElem = 17
trigger5 = AnimElem = 21
trigger6 = AnimElem = 3
trigger7 = AnimElem = 7
trigger8 = AnimElem = 11
trigger9 = AnimElem = 15
trigger10 = AnimElem = 19
x = -0.5
y = -0.5

[State 3400, 10]
type = VelSet
trigger1 = Pos Y >= 10
trigger1 = Vel Y > 0
trigger1 = AnimElem = 29, < 0
y = 0

[State 3400, 11]
type = VelAdd
trigger1 = AnimElem = 29, >= 0
y = .39

[State 3400, 12]
type = NotHitBy
trigger1 = AnimElem = 1
value = SCA
time = 20

[State 3400, 13]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3400,0
channel = 0
supermove = 1

[State 3400, 15.1]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 13
trigger3 = AnimElem = 21
value = 4,1
channel = 0

[State 3400, 15.2]
type = PlaySnd
trigger1 = AnimElem = 9
trigger2 = AnimElem = 17
value = 4,2
channel = 0

[State 3400, 16]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 8
trigger3 = AnimElem = 11
trigger4 = AnimElem = 15
trigger5 = AnimElem = 19
value = 1,4
channel = 2

[State 3400, 17]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 9
trigger3 = AnimElem = 13
trigger4 = AnimElem = 17
trigger5 = AnimElem = 21
value = 1000,1
channel = 1

[State 3400, 18]
type = Explod
trigger1 = AnimElem = 3
trigger2 = AnimElem = 8
trigger3 = AnimElem = 11
trigger4 = AnimElem = 15
trigger5 = AnimElem = 19
anim = 3402
id = 3402
pos = 60,-42
postype = p1
bindtime = -1
sprpriority = -2
removetime = -1
removeongethit = 1
supermove = 1
bind = p1
scale = .5,.5

[State 3400, 19]
type = Explod
trigger1 = AnimElem = 3, = 4
trigger2 = AnimElem = 7, = 4
trigger3 = AnimElem = 11, = 4
trigger4 = AnimElem = 15, = 4
trigger5 = AnimElem = 18, = 4
anim = 3402
id = 3402
pos = 34,-11
postype = p1
bindtime = -1
sprpriority = -2
removetime = -1
removeongethit = 1
supermove = 1
bind = p1
scale = .5,.5

[State 3400, 23]
type = Explod
trigger1 = AnimElem = 5
trigger2 = AnimElem = 9
trigger3 = AnimElem = 13
trigger4 = AnimElem = 17
trigger5 = AnimElem = 21
anim = 3402
id = 3402
pos = 47,-50
postype = p1
bindtime = -1
sprpriority = 3
removetime = -1
removeongethit = 1
supermove = 1
bind = p1
scale = .5,.5

[State 3400, 24]
type = Explod
trigger1 = AnimElem = 5, = 4
trigger2 = AnimElem = 9, = 4
trigger3 = AnimElem = 13, = 4
trigger4 = AnimElem = 17, = 4
trigger5 = AnimElem = 21, = 4
anim = 3402
id = 3402
pos = 22,-19
postype = p1
bindtime = -1
sprpriority = 3
removetime = -1
removeongethit = 1
supermove = 1
bind = p1
scale = .5,.5

;Magias
[State 3400, Projectile]
type = Helper
helpertype = normal
trigger1 = AnimElem = 3
trigger2 = AnimElem = 11
trigger3 = AnimElem = 19
stateNo = 1074
ID = 1074
name = "Zankuu Hadouken"
posType = P1
pos = 63,-78
size.xScale = 1
size.yScale = 1
ownpal = 1


[State 3400, Projectile]
type = Helper
helpertype = normal
trigger1 = AnimElem = 3, = 4
trigger2 = AnimElem = 11, = 4
trigger3 = AnimElem = 19, = 49
stateNo = 1074
ID = 1074
name = "Zankuu Hadouken"
posType = P1
pos = 38,-47
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3400, Projectile]
type = Helper
helpertype = normal
trigger1 = AnimElem = 5
trigger2 = AnimElem = 13
trigger3 = AnimElem = 21
stateNo = 1074
ID = 1074
name = "Zankuu Hadouken"
posType = P1
pos = 50,-86
size.xScale = 1
size.yScale = 1
ownpal = 1


[State 3400, Projectile]
type = Helper
helpertype = normal
trigger1 = AnimElem = 5, = 4
trigger2 = AnimElem = 13, = 4
trigger3 = AnimElem = 21, = 4
stateNo = 1074
ID = 1074
name = "Zankuu Hadouken"
posType = P1
pos = 25,-55
size.xScale = 1
size.yScale = 1
ownpal = 1



[State 3400, 20]
type = RemoveExplod
trigger1 = AnimTime = 0
id = 3402

[State 1070, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(31) >= 0
moveType = I


[State 3400, 32]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = AnimElem = 29, >= 0
value = 1121
ctrl = 0


;TENMA GOU ZAKUU MAX
[Statedef 3400]
type=A
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=1
poweradd=-2000
facep2=1

[State 3000, Anim]
type=changeanim
trigger1=!time
value=3400

[State 3000, Superpause FX]
type = helper
trigger1 = animelem = 1
stateno = 8510
ID = 8510
name = "Superpause FX"
postype = p1
pos = 3, -85
supermovetime = 255
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 3000, Superpause]
type = superpause
trigger1 = animelem = 1
time = 40
movetime = 40
p2defmul = 1
unhittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3400, 1.2]
type = Explod
trigger1 = AnimElem = 1 && NumExplod(3401) = 0
anim = 3401
id = 3401
pos = 0,0
postype = p1
bindtime = -1
sprpriority = 1
removetime = -1
removeongethit = 1
supermove = 1
bind = p1

[State 3400, 3.13]
type = RemoveExplod
trigger1 = AnimElem = 2, = 0
id = 3401


[State 3400, 5]
type = VelMul
trigger1 = Time = 0
x = 0.08
y = 0.08

[State 3400, 6]
type = VelSet
trigger1 = AnimElem = 2
trigger1 = Vel X = 0
x = 0
y = 0.25

[State 3400, 7]
type = VelSet
trigger1 = AnimElem = 2
trigger1 = Vel X > 0
x = 0.2
y = 0.25

[State 3400, 8]
type = VelSet
trigger1 = AnimElem = 2
trigger1 = Vel X < 0
x = -0.2
y = 0.25

[State 3400, 9]
type = VelSet
trigger1 = AnimElem = 5
trigger2 = AnimElem = 9
trigger3 = AnimElem = 13
trigger4 = AnimElem = 17
trigger5 = AnimElem = 21
trigger6 = AnimElem = 3
trigger7 = AnimElem = 7
trigger8 = AnimElem = 11
trigger9 = AnimElem = 15
trigger10 = AnimElem = 19
x = -0.5
y = -0.5

[State 3400, 10]
type = VelSet
trigger1 = Pos Y >= 10
trigger1 = Vel Y > 0
trigger1 = AnimElem = 29, < 0
y = 0

[State 3400, 11]
type = VelAdd
trigger1 = AnimElem = 29, >= 0
y = .39

[State 3400, 12]
type = NotHitBy
trigger1 = AnimElem = 1
value = SCA
time = 20

[State 3400, 13]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3400,0
channel = 0
supermove = 1

[State 3400, 15.1]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 13
trigger3 = AnimElem = 21
value = 4,1
channel = 0

[State 3400, 15.2]
type = PlaySnd
trigger1 = AnimElem = 9
trigger2 = AnimElem = 17
value = 4,2
channel = 0

[State 3400, 16]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 8
trigger3 = AnimElem = 11
trigger4 = AnimElem = 15
trigger5 = AnimElem = 19
value = 1,4
channel = 2

[State 3400, 17]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 9
trigger3 = AnimElem = 13
trigger4 = AnimElem = 17
trigger5 = AnimElem = 21
value = 1000,1
channel = 1

[State 3400, 18]
type = Explod
trigger1 = AnimElem = 3
trigger2 = AnimElem = 8
trigger3 = AnimElem = 11
trigger4 = AnimElem = 15
trigger5 = AnimElem = 19
anim = 3402
id = 3402
pos = 60,-42
postype = p1
bindtime = -1
sprpriority = -2
removetime = -1
removeongethit = 1
supermove = 1
bind = p1
scale = .5,.5

[State 3400, 19]
type = Explod
trigger1 = AnimElem = 3, = 4
trigger2 = AnimElem = 7, = 4
trigger3 = AnimElem = 11, = 4
trigger4 = AnimElem = 15, = 4
trigger5 = AnimElem = 18, = 4
anim = 3402
id = 3402
pos = 34,-11
postype = p1
bindtime = -1
sprpriority = -2
removetime = -1
removeongethit = 1
supermove = 1
bind = p1
scale = .5,.5

[State 3400, 23]
type = Explod
trigger1 = AnimElem = 5
trigger2 = AnimElem = 9
trigger3 = AnimElem = 13
trigger4 = AnimElem = 17
trigger5 = AnimElem = 21
anim = 3402
id = 3402
pos = 47,-50
postype = p1
bindtime = -1
sprpriority = 3
removetime = -1
removeongethit = 1
supermove = 1
bind = p1
scale = .5,.5

[State 3400, 24]
type = Explod
trigger1 = AnimElem = 5, = 4
trigger2 = AnimElem = 9, = 4
trigger3 = AnimElem = 13, = 4
trigger4 = AnimElem = 17, = 4
trigger5 = AnimElem = 21, = 4
anim = 3402
id = 3402
pos = 22,-19
postype = p1
bindtime = -1
sprpriority = 3
removetime = -1
removeongethit = 1
supermove = 1
bind = p1
scale = .5,.5

;Magias
[State 3400, Projectile]
type = Helper
helpertype = normal
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
trigger3 = AnimElem = 11
trigger4 = AnimElem = 15
trigger5 = AnimElem = 19
stateNo = 1074
ID = 1074
name = "Zankuu Hadouken"
posType = P1
pos = 63,-78
size.xScale = .7
size.yScale = .7
ownpal = 1


[State 3400, Projectile]
type = Helper
helpertype = normal
trigger1 = AnimElem = 3, = 4
trigger2 = AnimElem = 7, = 4
trigger3 = AnimElem = 11, = 4
trigger4 = AnimElem = 15, = 4
trigger5 = AnimElem = 19, = 49
stateNo = 1074
ID = 1074
name = "Zankuu Hadouken"
posType = P1
pos = 38,-47
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3400, Projectile]
type = Helper
helpertype = normal
trigger1 = AnimElem = 5
trigger2 = AnimElem = 9
trigger3 = AnimElem = 13
trigger4 = AnimElem = 17
trigger5 = AnimElem = 21
stateNo = 1074
ID = 1074
name = "Zankuu Hadouken"
posType = P1
pos = 50,-86
size.xScale = 1
size.yScale = 1
ownpal = 1


[State 3400, Projectile]
type = Helper
helpertype = normal
trigger1 = AnimElem = 5, = 4
trigger2 = AnimElem = 9, = 4
trigger3 = AnimElem = 13, = 4
trigger4 = AnimElem = 17, = 4
trigger5 = AnimElem = 21, = 4
stateNo = 1074
ID = 1074
name = "Zankuu Hadouken"
posType = P1
pos = 25,-55
size.xScale = 1
size.yScale = 1
ownpal = 1



[State 3400, 20]
type = RemoveExplod
trigger1 = AnimTime = 0
id = 3402

[State 1070, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(31) >= 0
moveType = I


[State 3400, 32]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = AnimElem = 29, >= 0
value = 1121
ctrl = 0


; Messatsu Gou Hadou Ken - Start
[Statedef 3500]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
ctrl = 0
sprpriority = 2
powerAdd = -3000

[State 3500, Anim]
type=changeanim
trigger1=!time
value=3500


[State 3500, Super Pause FX]
type = Helper
trigger1 = animelem = 5
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = 10, -75
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3500, Super Pause]
type = SuperPause
trigger1 = animelem = 5
time = 40
moveTime = 40
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3100, 1.3]
type = Explod
trigger1 = AnimElem = 5 && NumExplod(6205) = 0
anim = 6205
id = 6205
pos = 33,-75
postype = p1
bindtime = -1
sprpriority = 1
removetime = -1
removeongethit = 1
supermove = 1
bind = p1

[State 3100, 2.2]
type = EnvColor
trigger1 = AnimElem = 5
value = 0,0,0
time = 75
under = 1
supermove = 1

[State 3100, 4]
type = RemoveExplod
trigger1 = AnimElem = 6, = 0
id = 6205

[State 3100, 5]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3100,0
channel = 0

[State 3100, 5]
type = PlaySnd
trigger1 = AnimElem = 10
value = 1000,0
channel = 0

[State 3100, 7]
type = Width
trigger1 = AnimElem = 6, >= 0
trigger1 = AnimElem = 68, <= 2
value = 20,30

[State 3100, 8]
type = PlaySnd
trigger1 = AnimElem = 10
value = 3100,2
channel = 1

[State 3100, 10]
type = AfterImage
trigger1 = AnimElem = 5
length = 20
time = 110
trans = add1
PalColor = 0
palbright = 200,0,0
palcontrast = 200,0,0
palpostbright = 0,0,0

[State 3100, 11]
type = Explod
trigger1 = AnimElem = 10
anim = 3501
postype = p1
pos = 0,0
ownpal = 1
ignorehitpause = 1
sprpriority = 3

[State 3100, 12]
type = Explod
trigger1 = Time >= 24
trigger1 = (Time%15) = 0
anim = 3502
ID = 3102
postype = p1
pos = 0,0
removeongethit = 1
ownpal = 1
ignorehitpause = 1
sprpriority = 3

[State 3100, 13]
type = RemoveExplod
trigger1 = Time >= 110
ID = 3102

[State 3100, 15]
type = NotHitBy
trigger1 = AnimElem = 6
value = SCA
time = 2

[State 3100, 16]
type = Helper
trigger1 = AnimElem = 10
helpertype = Normal
ID = 3510
stateno = 3510
postype = p1
pos = 15,-81
ownpal = 1
bindtime = -1
ownpal = 1
persistent = 0
size.xscale=0.35
size.yscale=0.5



[State 3100, 21]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Shun Goku Satsu
[StateDef 3600]
type = S
physics = N
moveType = A
anim = 3600 + (10*var(40))
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = ifelse(var(53) > 0, -1000, -3000)
faceP2 = 1

[State 3500, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && (PrevStateNo != [1400,1500]) && var(7)) || var(20)

[State 3500, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3500, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3500, Corner Push]
type = VarSet
trigger1 = 1
fvar(5) = 0

[State 3500, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3500, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3500, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3500, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(2) < 10
time = 1
value = SCA

[State 3500, Super Pause FX]
type = Helper
trigger1 = Time = 2
stateNo = 8520
ID = 8520
name = "Superpause FX"
posType = p1
pos = 3,-107
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3500, Super Pause]
type = SuperPause
trigger1 = !Time
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3500, Voice]
type = PlaySnd
triggerall = !var(40)
trigger1 = !Time
value = 4,0
channel = 0

[State 3500, Voice]
type = PlaySnd
triggerall = var(40)
trigger1 = !Time
value = 3500,0
channel = 0

[State 3500, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1400,var(40)
;channel = 2

[State 3500, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5,4
channel = 1

[State 3500, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = ifelse(var(40), 7, 3.5)

[State 3500, 6.1]
type = PlaySnd
trigger1 = AnimElem = 2, = 2
value = 192,0
channel = 0

[State 3500, HitDef]
type = HitDef
trigger1 = AnimElemTime(2) >= 0
trigger1 = !var(38)
attr = S, HT
hitFlag = M-
priority = 4, Miss
getPower = 0,0
givePower = 0,0
sparkNo = -1 +0 * (var(33) := 0)
guard.sparkNo = -1 +0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -50
hitSound = -1 +0 * (var(31) := 800)
guardSound = -1 +0 * (var(32) := 0)
fall = 1
fall.recover = 0
numHits = 0
p1StateNo = 3601

[State 3500, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Success
[Statedef 3601]
type = S
physics = N
moveType = A
anim = 3601 + var(40)
ctrl = 0
velSet = 0,0
poweradd = 0
sprPriority = 1

[State 3601, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 3601, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 3605

[State 3601, Voice]
type = PlaySnd
trigger1 = !Time
value = 195,1
channel = 0

[State 3601, Pause]
type = Pause
trigger1 = !var(40) && AnimElemTime(2) >= 0 && AnimElemTime(17) < 0
trigger2 = var(40) && AnimElemTime(2) >= 0 && AnimElemTime(35) < 0
time = 2
movetime = 2

[State 3601, AllPalFX]
type = AllPalFX
trigger1 = AnimElemTime(2) = -16
time = 16
sinadd = -255, -255, -255, 64

[State 3601, EnvColor]
type = EnvColor
trigger1 = !var(40) && AnimElemTime(2) >= 0 && AnimElemTime(17) < 0
trigger2 = var(40) && AnimElemTime(2) >= 0 && AnimElemTime(35) < 0
value = 0, 0, 0
time = 2

[State 3601, AssertSpecial]
type = AssertSpecial
trigger1 = !var(40) && AnimElemTime(2) >= 0 && AnimElemTime(17) < 0
trigger2 = var(40) && AnimElemTime(2) >= 0 && AnimElemTime(35) < 0
flag = nobardisplay
flag2 = noFG

[State 3601, TargetBind]
type = TargetBind
trigger1 = !var(40) && AnimElemTime(17) < 0
trigger2 = var(40) && AnimElemTime(35) < 0
pos = 45, 0

[State 3601, HitAdd]
type = HitAdd
trigger1 = AnimElem = 2 || AnimElem = 3 || AnimElem = 4 || AnimElem = 5
trigger2 = AnimElem = 6 || AnimElem = 7 || AnimElem = 8 || AnimElem = 9
trigger3 = AnimElem = 10 || AnimElem = 11 || AnimElem = 12 || AnimElem = 13
trigger4 = AnimElem = 14 || AnimElem = 15 || AnimElem = 16
value = 1

[State 3601, HitAdd (Shin)]
type = HitAdd
triggerall = var(40)
trigger1 = AnimElem = 17 || AnimElem = 18 || AnimElem = 19 || AnimElem = 20
trigger2 = AnimElem = 21 || AnimElem = 22 || AnimElem = 23 || AnimElem = 24
trigger3 = AnimElem = 25 || AnimElem = 26 || AnimElem = 27 || AnimElem = 28
trigger4 = AnimElem = 29 || AnimElem = 30 || AnimElem = 31 || AnimElem = 32
trigger5 = AnimElem = 33 || AnimElem = 34
value = 1

[State 3601, TargetLifeAdd]
type = TargetLifeAdd
triggerall = !var(40)
trigger1 = AnimElem = 2 || AnimElem = 3 || AnimElem = 4 || AnimElem = 5
trigger2 = AnimElem = 6 || AnimElem = 7 || AnimElem = 8 || AnimElem = 9
trigger3 = AnimElem = 10 || AnimElem = 11 || AnimElem = 12 || AnimElem = 13
trigger4 = AnimElem = 14 || AnimElem = 15
value = floor(ifElse(fvar(11) * 28 < 7, -7, fvar(11) * -28))
kill = 0

[State 3601, TargetLifeAdd (Shin)]
type = TargetLifeAdd
triggerall = var(40)
trigger1 = AnimElem = 2 || AnimElem = 3 || AnimElem = 4 || AnimElem = 5
trigger2 = AnimElem = 6 || AnimElem = 7 || AnimElem = 8 || AnimElem = 9
trigger3 = AnimElem = 10 || AnimElem = 11 || AnimElem = 12 || AnimElem = 13
trigger4 = AnimElem = 14 || AnimElem = 15 || AnimElem = 16
trigger5 = AnimElem = 17 || AnimElem = 18 || AnimElem = 19 || AnimElem = 20
trigger6 = AnimElem = 21 || AnimElem = 22 || AnimElem = 23 || AnimElem = 24
trigger7 = AnimElem = 25 || AnimElem = 26 || AnimElem = 27 || AnimElem = 28
trigger8 = AnimElem = 29 || AnimElem = 30 || AnimElem = 31 || AnimElem = 32
trigger9 = AnimElem = 33
value = floor(ifElse(fvar(11) * 14 < 7, -7, fvar(11) * -28))
kill = 0

[State 3601, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = !var(40) && AnimElem = 16
value = floor(ifElse(fvar(11) * 98 < 7, -7, fvar(11) * -98))
kill = 1

[State 3601, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = var(40) && AnimElem = 34
value = floor(ifElse(fvar(11) * 63 < 7, -7, fvar(11) * -63))
kill = 1

[State 3601, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = AnimElem = 2 || AnimElem = 3 || AnimElem = 4 || AnimElem = 5
trigger2 = AnimElem = 6 || AnimElem = 7 || AnimElem = 8 || AnimElem = 9
trigger3 = AnimElem = 10 || AnimElem = 11 || AnimElem = 12 || AnimElem = 13
trigger4 = AnimElem = 14 || AnimElem = 15 || AnimElem = 16
value = 36

[State 3601, TargetPowerAdd (Shin)]
type = TargetPowerAdd
triggerall = var(40)
trigger1 = AnimElem = 17 || AnimElem = 18 || AnimElem = 19 || AnimElem = 20
trigger2 = AnimElem = 21 || AnimElem = 22 || AnimElem = 23 || AnimElem = 24
trigger3 = AnimElem = 25 || AnimElem = 26 || AnimElem = 27 || AnimElem = 28
trigger4 = AnimElem = 29 || AnimElem = 30 || AnimElem = 31 || AnimElem = 32
trigger5 = AnimElem = 33 || AnimElem = 34
value = 36

[State 3601, VarAdd]
type = VarAdd
trigger1 = AnimElem = 2 || AnimElem = 3 || AnimElem = 4 || AnimElem = 5
trigger2 = AnimElem = 6 || AnimElem = 7 || AnimElem = 8 || AnimElem = 9
trigger3 = AnimElem = 10 || AnimElem = 11 || AnimElem = 12 || AnimElem = 13
trigger4 = AnimElem = 14 || AnimElem = 15 || AnimElem = 16
var(13) = 1

[State 3601, VarAdd (Shin)]
type = VarAdd
triggerall = var(40)
trigger1 = AnimElem = 17 || AnimElem = 18 || AnimElem = 19 || AnimElem = 20
trigger2 = AnimElem = 21 || AnimElem = 22 || AnimElem = 23 || AnimElem = 24
trigger3 = AnimElem = 25 || AnimElem = 26 || AnimElem = 27 || AnimElem = 28
trigger4 = AnimElem = 29 || AnimElem = 30 || AnimElem = 31 || AnimElem = 32
trigger5 = AnimElem = 33 || AnimElem = 34
var(13) = 1

[State 3601, HitSnd]
type = PlaySnd
trigger1 = AnimElem = 2 || AnimElem = 3 || AnimElem = 4 || AnimElem = 5
trigger2 = AnimElem = 6 || AnimElem = 7 || AnimElem = 8 || AnimElem = 9
trigger3 = AnimElem = 10 || AnimElem = 11 || AnimElem = 12 || AnimElem = 13
trigger4 = AnimElem = 14 || AnimElem = 15
value = 2,2
channel = 2

[State 3601, HitSnd (Shin)]
type = PlaySnd
triggerall = var(40)
trigger1 = AnimElem = 17 || AnimElem = 18 || AnimElem = 19 || AnimElem = 20
trigger2 = AnimElem = 21 || AnimElem = 22 || AnimElem = 23 || AnimElem = 24
trigger3 = AnimElem = 25 || AnimElem = 26 || AnimElem = 27 || AnimElem = 28
trigger4 = AnimElem = 29 || AnimElem = 30 || AnimElem = 31 || AnimElem = 32
trigger5 = AnimElem = 33 || AnimElem = 16
value = 2,2
channel = 2

[State 3601, Last HitSnd]
type = PlaySnd
trigger1 = !var(40) && AnimElem = 16
trigger2 = var(40) && AnimElem = 34
value = 2,10
channel = 2

[State 3601, HitSpark]
type = Helper
trigger1 = AnimElem = 2 || AnimElem = 3 || AnimElem = 4 || AnimElem = 5
trigger2 = AnimElem = 6 || AnimElem = 7 || AnimElem = 8 || AnimElem = 9
trigger3 = AnimElem = 10 || AnimElem = 11 || AnimElem = 12 || AnimElem = 13
trigger4 = AnimElem = 14 || AnimElem = 15 || AnimElem = 16
stateNo = 8030
ID = 8000
name = "Spark"
posType = P2
pos = -25 + random%50, -90 + random%75
ownPal = 1
facing = ifelse(random > 500, 1, -1)
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
sprpriority = 5

[State 3601, HitSpark (Shin)]
type = Helper
triggerall = var(40)
trigger1 = AnimElem = 17 || AnimElem = 18 || AnimElem = 19 || AnimElem = 20
trigger2 = AnimElem = 21 || AnimElem = 22 || AnimElem = 23 || AnimElem = 24
trigger3 = AnimElem = 25 || AnimElem = 26 || AnimElem = 27 || AnimElem = 28
trigger4 = AnimElem = 29 || AnimElem = 30 || AnimElem = 31 || AnimElem = 32
trigger5 = AnimElem = 33 || AnimElem = 34
stateNo = 8030
ID = 8000
name = "Spark"
posType = P2
pos = -25 + random%50, -90 + random%75
ownPal = 1
facing = ifelse(random > 500, 1, -1)
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
sprpriority = 5

[State 3601, EnvShake]
type = EnvShake
trigger1 = AnimElem = 2 || AnimElem = 3 || AnimElem = 4 || AnimElem = 5
trigger2 = AnimElem = 6 || AnimElem = 7 || AnimElem = 8 || AnimElem = 9
trigger3 = AnimElem = 10 || AnimElem = 11 || AnimElem = 12 || AnimElem = 13
trigger4 = AnimElem = 14 || AnimElem = 15 || AnimElem = 16
time = 6
freq = 120
ampl = -4

[State 3601, EnvShake (Shin)]
type = EnvShake
triggerall = var(40)
trigger1 = AnimElem = 17 || AnimElem = 18 || AnimElem = 19 || AnimElem = 20
trigger2 = AnimElem = 21 || AnimElem = 22 || AnimElem = 23 || AnimElem = 24
trigger3 = AnimElem = 25 || AnimElem = 26 || AnimElem = 27 || AnimElem = 28
trigger4 = AnimElem = 29 || AnimElem = 30 || AnimElem = 31 || AnimElem = 32
trigger5 = AnimElem = 33 || AnimElem = 34
time = 6
freq = 120
ampl = -4

[State 3601, Kanji]
type = Explod
triggerall = !NumExplod(196)
trigger1 = !var(40) && AnimElem = 17
trigger2 = var(40) && AnimElem = 35
anim = 196 + var(40)
ID = 196
postype = P1
pos = 1,-78
facing = ifelse(facing = 1, 1, -1)
removetime = -2
bindtime = -1
;scale = .5,.5
sprpriority = 3
removeongethit = 1

[State 3601, 13.2]
type = PlaySnd
trigger1 = Time = 104
value = 6010,0
;channel = 0
;persistent = 0
;ignorehitpause = 1

[State 3601, 16.4]
type = Helper
trigger1 = Time = 30
trigger1 = !NumHelper(8150)
;trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
stateNo = 8150
id = 8151
name = "Flame Particles"
postype = p2
pos = 30,0
ownPal = 1
ignoreHitPause = 1

[State 3601, RemoveExplod]
type = RemoveExplod
triggerall = NumExplod(196)
trigger1 = !var(40) && AnimElem = 18
trigger2 = var(40) && AnimElem = 36
id = 196


[State 3601, TargetState]
type = TargetState
triggerall = NumTarget
trigger1 = !var(40) && AnimElem = 16
trigger2 = var(40) && AnimElem = 34
value = 3606

[State 3601, Voice]
type = PlaySnd
trigger1 = !var(40) && AnimElem = 16
trigger2 = var(40) && AnimElem = 34
value = 180,1
channel = 0

[State 3601, Win]
type = ChangeState
trigger1 = !var(40) && AnimElemTime(16) >= 0 && WinKo
;trigger2 = var(40)=1 && AnimElemTime(34) >= 0 && WinKo
value = 184

[State 3501, End(Win)]
type = ChangeState
trigger1 = AnimElemTime(16)>=0 && WinKo
value = 184

[State 3601, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1


;Target
[StateDef 3605]
type = S
moveType = H
physics = N
velSet = 0,0
sprPriority = 0



[State 3505, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3605

[State 3505, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

[State 3505, ChangeState]
type = SelfState
trigger1 = !gethitvar(isbound)
trigger1 = Time > 160
value = 5050


;Target End
[StateDef 3606]
type = L
moveType = H
physics = N
velSet = 0,0
sprPriority = 0


[State 3506, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3606

[State 3506, End]
type = SelfState
trigger1 = !AnimTime && Anim = 3606
value = IfElse(Alive,5120,5150)

; Kishuu Musan Funjin - Rush Start
[Statedef 6200]
type = S
physics = N
moveType = A
anim = 6200 + (10*var(40))
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = ifelse(var(53) > 0, -1000, -3000)
faceP2 = 1



[State 3500, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && (PrevStateNo != [1400,1500]) && var(7)) || var(20)

[State 3500, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3500, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3500, Corner Push]
type = VarSet
trigger1 = 1
fvar(5) = 0

[State 3500, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3500, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3500, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3500, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(2) < 10
time = 1
value = SCA

[State 3500, Super Pause FX]
type = Helper
trigger1 = Time = 2
stateNo = 8520
ID = 8520
name = "Superpause FX"
posType = p1
pos = 3,-107
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3500, Super Pause]
type = SuperPause
trigger1 = !Time
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 6200, 1.2]
type = AfterImage
trigger1 = AnimElem = 2
Time = 9999
length = 20
trans = add1
PalColor = 0
palbright = 200,0,0
palcontrast = 200,0,0
palpostbright = 0,0,0

[State 6200, 1.3]
type = Explod
trigger1 = AnimElem = 1
anim = 6205
id = 6205
postype = p1
pos = 18,-85
ownpal = 1
bindTime = -1
sprpriority = -1
removeongethit = 1
supermove = 1

[State 6200, 4]
type = RemoveExplod
trigger1 = AnimElem = 3
id = 6205

[State 6200, 5]
type = Nothitby
trigger1 = 1
value = SCA

[State 6200, 6]
type = Explod
trigger1 = AnimElem = 3
anim = 8510
postype = p1
pos = 25,5
ownpal = 1
ignorehitpause = 1
sprpriority = 4

[State 6200, 7]
type = VelSet
trigger1 = AnimElem = 3
x = 15

[State 6200, 8.1]
type = PlaySnd
trigger1 = AnimElem = 2, = 20
value = 6200,0
channel = 0

[State 6200, 8.2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 6200,1
channel = 1

[State 6200, 9]
type = Helper
trigger1 = Time >= 44
stateno = 6204
pos = 0,0
postype = P2
ownpal = 1
name = "Attack 2"
Helpertype = player

[State 6200, 10]
type = PlayerPush
trigger1 = Time >= 44
value = 0

[State 6200, 13]
type = ChangeState
trigger1 = Time = 52
value = 6201
ctrl = 0

;---------------------------------------------------------------------------
; Kishuu Musan Funjin - Rush End
[Statedef 6201]
type    = S
movetype= A
physics = N
juggle  = 5
poweradd= 0
ctrl = 0
anim = 6201
sprpriority = 100

[State 6201, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1

[State 6201, 1]
type = VelSet
trigger1 = AnimElem = 4
x = 0

[State 6201, 2]
type = Explod
trigger1 = AnimElem = 5
anim = 6205
id = 6205
postype = p1
pos = 18,-85
ownpal = 1
bindTime = -1
sprpriority = -1
removeongethit = 1

[State 6201, 3]
type = Helper
trigger1 = NumHelper(6203) = 0
trigger1 = Time <= 11 && P2statetype != L
stateno = ifelse(Var(25)=1,6205,6203)
pos = 0,0
postype = P2
ownpal = 1
id = 6203
name = "Attack 1"
Helpertype = player

[State 6201, 4]
type = ScreenBound
trigger1 = Time <= 6
value = 0

[State 6201, 5]
type = HitDef
trigger1 = AnimElem = 1 
trigger1 = AnimElem = 2
trigger1 = AnimElem = 3
trigger1 = AnimElem = 4
trigger1 = AnimElem = 5
trigger1 = AnimElem = 6
trigger1 = AnimElem = 7
trigger1 = AnimElem = 8
trigger1 = AnimElem = 9
animtype = Hard
damage = 0,0
guardflag = MA
pauseTime = 0,0
ground.type = Low
ground.slidetime = 30
ground.hittime = 30
ground.velocity = -6
air.velocity = -2.2,-3.2
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=63), var(36):=-50
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 6201, 6]
type = AfterImage
trigger1 = AnimElem = 1
Time = 20
length = 20
trans = add1
PalColor = 0
palbright = 200,0,0
palcontrast = 200,0,0
palpostbright = 0,0,0

[State 6201, 7.1]
type = ChangeState
triggerall = Var(26) = 0
trigger1 = Time >= 110
value = 6202
ctrl = 0

[State 6201, 7.2]
type = ChangeState
triggerall = Var(26) = 1
trigger1 = Time >= 30
value = 6206
ctrl = 0

;---------------------------------------------------------------------------
; Kishuu Musan Funjin - End

[Statedef 6202]
type    = S
movetype= A
physics = S
poweradd= 0
ctrl = 0
anim = 6202
sprpriority = 100

[State 6202, aa]
type = AssertSpecial
trigger1 = 1
flag = nobardisplay
flag2 = noFG
ignorehitpause = 1


[State 6202, 1]
type = RemoveExplod
trigger1 = AnimElem = 9
id = 6205

[State 6202, 2]
type = RemoveExplod
trigger1 = Time = 0
id = 6207

[State 6202, 3.1]
type = Explod
trigger1 = AnimElem = 8, = 0
anim = 6230
id = 6230
postype = p1
pos = 0,0
supermove = 1
ownpal = 1
sprpriority = 101
bindTime = -1
ignorehitpause = 1
persistent = 0

[State 6202, 3.2]
type = Explod
Anim = 7001
trigger1 = AnimElem = 8, = [0,60]
trigger1 = TimeMod = 16,0
ID = 7001
postype = p1
pos = 0,0
ownpal = 1
ignorehitpause = 1
sprpriority = 3
removeongethit = 1

[State 6202, 4.1]
type = PlaySnd
trigger1 = AnimElem = 8, = [0,60]
trigger1 = TimeMod = 16,0
value = 7000,0
channel = 2

[State 6202, 4.2]
type = PlaySnd
trigger1 = AnimElem = 6, = 0
value = 6205,0

[State 6202, 4.3]
type = PlaySnd
trigger1 = AnimElem = 8, = 0
value = 182,1
channel = 1

[State 6202, 5]
type = Turn
trigger1 = AnimTime = 0 && P2Bodydist X < 0

[State 6202, 6]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 6202, 7]
type = Explod
triggerall = (RoundState = 3) && (NumExplod(8400) < 1) && (P2Life <= 0) && (Alive = 1)
trigger1 = NumHelper(6203) != 0
trigger1 = Helper(6203), MoveHit
ID = 8400
anim = 8410
postype = Back
pos = 0,0
scale = 0.8333,1.0714
sprpriority = -105
ownpal = 1
ignorehitpause = 1
bindtime = -1
removetime = -1

[State 6202, 8]
type = PlaySnd
triggerall = (RoundState = 3) && (NumExplod(8400) < 1) && (P2Life <= 0) && (Alive = 1)
trigger1 = NumHelper(6203) != 0
trigger1 = Helper(6203), MoveHit
value = 8400,0
persistent = 0
ignorehitpause = 1

[State 6202, 9]
type = RemoveExplod
trigger1 = AnimTime = 0
ID = 8480

[State 6202, 10]
type = ChangeState
trigger1 = AnimElem = 10 && P2Bodydist X >= 0
trigger2 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Kishuu Musan Funjin - Attack 1 Helper - Type 1

[Statedef 6203]
type    = S
movetype= A
physics = N
juggle  = 5
ctrl = 0
anim = 6203
sprpriority = 2

[State 3500, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 7
value = 4500,1
channel = 2



[State AssertSpecial]
type = AssertSpecial
trigger1 = 1
;flag = nomusic
flag = NoFG
flag2 = NOBG
ignorehitpause = 1

[State 6203, 1]
type = Explod
trigger1 = MoveHit
trigger1 = NumExplod(6215) = 0
trigger1 = NumExplod(6216) = 0
trigger1 = NumExplod(6217) = 0
trigger1 = NumExplod(6218) = 0
trigger1 = NumExplod(6219) = 0
trigger1 = NumExplod(6220) = 0
trigger1 = NumExplod(6231) = 0
anim = 6215
id = 6215
postype = p1
pos = 0,0
facing = ifelse(Facing = 1, 1,-1)
supermove = 1
ownpal = 1
sprpriority = 99
bindTime = -1
ignorehitpause = 1
persistent = 0

[State 6203, 2.1]
type = HitDef
trigger1 = AnimElem = 1
attr = S, HA
animtype = Hard
damage = 50,25
getpower = 0,0
givepower = 30,0
hitflag = MAF
guardflag = 
pauseTime = 20,20
guard.pausetime = 10,10
ground.type = Low
ground.slidetime = 30
ground.hittime = 30
ground.velocity = -6
air.velocity = -2.2,-3.2
kill = 0
p2stateno = 6241
hitsound = s4500,1
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10,ceil(enemynear, pos y)-76
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 6203, 3]
type = Explod
trigger1 = AnimElem = 2 && MoveHit
trigger1 = NumExplod(6216) = 0
anim = 6216
id = 6216
postype = p1
pos = 0,0
facing = ifelse(Facing = 1, 1,-1)
supermove = 1
ownpal = 1
sprpriority = 99
bindTime = -1
ignorehitpause = 1
persistent = 0

[State 6203, 4]
type = Explod
trigger1 = AnimElem = 5 && MoveHit
trigger1 = NumExplod(6219) = 0
anim = 6219
id = 6219
postype = p1
pos = 0,0
facing = ifelse(Facing = 1, 1,-1)
supermove = 1
ownpal = 1
sprpriority = 99
bindTime = -1
ignorehitpause = 1
persistent = 0

[State 6203, 5]
type = HitDef
triggerall = MoveHit
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
attr = S, HA
animtype = Hard
damage = 50,0
getpower = 0,0
givepower = 30,0
hitflag = MAF
guardflag = MA
pauseTime = 20,20
guard.pausetime = 10,10
ground.type = high
ground.slidetime = 30
ground.hittime = 30
ground.velocity = -6
air.velocity = -2.2,-3.2
kill = 0
p2stateno = 6240
hitsound = s4500,1
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = 10,ceil(enemynear, pos y)-55
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48


[State 6203, 6]
type = Explod
trigger1 = AnimElem = 3 && MoveHit
trigger1 = NumExplod(6217) = 0
anim = 6217
id = 6217
postype = p1
pos = 0,0
facing = ifelse(Facing = 1, 1,-1)
supermove = 1
ownpal = 1
sprpriority = 99
bindTime = -1
ignorehitpause = 1
persistent = 0

[State 6203, 7]
type = HitDef
triggerall = MoveHit
trigger1 = AnimElem = 3
attr = S, HA
animtype = Up
damage = 50,0
getpower = 0,0
givepower = 30,0
hitflag = MAF
guardflag = MA
pauseTime = 20,20
guard.pausetime = 10,10
ground.type = Low
ground.slidetime = 30
ground.hittime = 30
ground.velocity = -6
air.velocity = -2.2,-3.2
kill = 0
p2stateno = 6242
hitsound = s4500,1
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = 0,ceil(enemynear, pos y)-60
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 6203, 8]
type = Explod
trigger1 = AnimElem = 4 && MoveHit
trigger1 = NumExplod(6218) = 0
anim = 6218
id = 6218
postype = p1
pos = 0,0
facing = ifelse(Facing = 1, 1,-1)
supermove = 1
ownpal = 1
sprpriority = 99
bindTime = -1
ignorehitpause = 1
persistent = 0

[State 6203, 9]
type = HitDef
triggerall = MoveHit
trigger1 = AnimElem = 4
attr = S, HA
animtype = Hard
damage = 50,0
getpower = 0,0
givepower = 30,0
hitflag = MAF
guardflag = MA
pauseTime = 20,20
guard.pausetime = 10,10
ground.type = Low
ground.slidetime = 30
ground.hittime = 30
ground.velocity = -6
air.velocity = -2.2,-3.2
kill = 0
p2stateno = 6241
hitsound = s4500,1
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10,ceil(enemynear, pos y)-60
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 6203, 10]
type = Explod
trigger1 = AnimElem = 6 && MoveHit
trigger1 = NumExplod(6220) = 0
anim = 6220
id = 6220
postype = p1
pos = 0,0
facing = ifelse(Facing = 1, 1,-1)
supermove = 1
ownpal = 1
sprpriority = 99
bindTime = -1
ignorehitpause = 1
persistent = 0

[State 6203, 11]
type = HitDef
triggerall = MoveHit
trigger1 = AnimElem = 6
attr = S, HA
animtype  = Up
damage = 50,0
getpower = 0,0
givepower = 30,0
hitflag = MAF
guardflag = MA
pauseTime = 60,60
guard.pausetime = 30,30
ground.type = Low
ground.slidetime = 30
ground.hittime = 30
ground.velocity = -6
air.velocity = -2.2,-3.2
kill = 0
p2stateno = 6242
hitsound = s4500,1
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = 5,ceil(enemynear, pos y)-65
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 6203, 12]
type = Explod
trigger1 = AnimElem = 7 && MoveHit
trigger1 = NumExplod(6231) = 0
anim = 6231
id = 6231
postype = p1
pos = 0,0
facing = ifelse(Facing = 1, 1,-1)
supermove = 1
ownpal = 1
sprpriority = 99
bindTime = -1
ignorehitpause = 1
persistent = 0

[State 3000, Flame Particles]
type = Helper
trigger1 = !NumHelper(8150) && AnimElemTime(13) >= 0
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 6203, 13]
type = RemoveExplod
trigger1 = AnimElem = 7 && MoveHit
id = 6215

[State 6203, 14]
type = RemoveExplod
trigger1 = AnimElem = 7 && MoveHit
id = 6216

[State 6203, 15]
type = RemoveExplod
trigger1 = AnimElem = 7 && MoveHit
id = 6217

[State 6203, 16]
type = RemoveExplod
trigger1 = AnimElem = 7 && MoveHit
id = 6218

[State 6203, 17]
type = RemoveExplod
trigger1 = AnimElem = 7 && MoveHit
id = 6219

[State 6203, 18]
type = RemoveExplod
trigger1 = AnimElem = 7 && MoveHit
id = 6220

[State 6203, 19]
type = RemoveExplod
trigger1 = AnimTime = 0
id = 6231

[State 6203, 21]
type = HitDef
triggerall = MoveHit
trigger1 = AnimElem = 7
trigger1 = P2Dist X <= 0
attr = S, HA
damage = 80,0
getpower = 0,0
givepower = 48,0
animtype  = Up
guardflag = MA
hitflag = MAF
priority = 3, Hit
pauseTime = 50,20
guard.pausetime = 25,20
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = 3,-18
air.type = High
air.hittime = 20
air.velocity = 3,-18
air.juggle = 3
fall.recover = 0
fall = 1
air.fall = 1
palfx.Time = 180
palfx.add = 200,80,0
palfx.mul = 220,110,110
palfx.sinadd = 100,20,20,5
kill = 1
hitsound = s4500,0
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10,ceil(enemynear, pos y)-70
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 6203, 22]
type = HitDef
triggerall = MoveHit
trigger1 = AnimElem = 7
trigger1 = P2Dist X > 0
attr = S, HA
damage = 80,0
getpower = 0,0
givepower = 48,0
animtype  = Up
guardflag = MA
hitflag = MAFD
priority = 3, Hit
pauseTime = 50,20
guard.pausetime = 25,20
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -3,-18
air.type = High
air.hittime = 20
air.velocity = -3,-18
air.juggle = 3
fall.recover = 0
fall = 1
air.fall = 1
palfx.Time = 180
palfx.add = 200,80,0
palfx.mul = 220,110,110
palfx.sinadd = 100,20,20,5
kill = 1
hitsound = s4500,0
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10,ceil(enemynear, pos y)-70
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 0, Explod]
type = Explod
trigger1 = AnimElem = 7
anim = 6232
ID = 6232
pos = 0,-100
postype = p1
facing = 1
vfacing = 1
bindtime = -1
removetime = -2
scale = .5,.5
sprpriority = 7
ownpal = 1


[State 6203, 26]
type = Helper
triggerall = MoveHit
trigger1 = P2Dist Y < -5
trigger1 = AnimElem = 7
trigger1 = NumHelper(6260) = 0
Helpertype = normal
name = "Burst Effect 2"
id = 6260
postype = P2
pos = 0,0
stateno = 6260
ownpal = 1

[State 6203, 27.1]
type = DestroySelf
triggerall = !MoveHit
trigger1 = time = 5

[State 6203, 27.2]
type = DestroySelf
triggerall = MoveHit
trigger1 = AnimTime = 0

[State 6203, 28]
type = posset
trigger1 = 1
y = 0

[State 6203, 29]
type = NotHitBy
trigger1 = 1
value = SCA

[State 6203, 30]
type = ParentVarSet
triggerall = !MoveHit
trigger1 = time = 4
v = 26
value = 1

[State 6203, 30]
type = ParentVarSet
triggerall = MoveHit
trigger1 = Time = 14
v = 26
value = 0

;---------------------------------------------------------------------------
; Kishuu Musan Funjin - Attack 2 Helper

[Statedef 6204]
type = S
movetype = A
physics = N
juggle = 5
ctrl = 0
anim = 6203
sprpriority = 2

[State 6204, 1]
type = HitDef
trigger1 = 1
attr = S, SA
animtype = Hard
damage = 0,0
hitflag =
guardflag = 
pauseTime = 0,0
sparkno = -1
guard.sparkno=-1
sparkxy = -10,-50
hitsound = -1
guardsound = -1
ground.type = none
ground.slidetime = 10
ground.hittime = 10
ground.velocity = 0
air.velocity = 0,0

[State 6204, 2]
type = PlayerPush
trigger1 = 1
value = 0

[State 6204, 3]
type = posset
trigger1 = 1
y = 0

[State 6204, 4]
type = NotHitBy
trigger1 = 1
value = SCA

[State 6204, 5]
type = DestroySelf
trigger1 = parent, stateno = 6202 || parent, stateno = 6206
trigger2 = parent, movetype = H

;---------------------------------------------------------------------------
; Kishuu Musan Funjin - Attack 1 Helper - Type 2

[Statedef 6205]
type    = S
movetype= A
physics = N
juggle  = 5
ctrl = 0
anim = 6203
sprpriority = 2

[State 6205, 1]
type = Explod
trigger1 = MoveHit
trigger1 = NumExplod(6215) = 0
trigger1 = NumExplod(6216) = 0
trigger1 = NumExplod(6217) = 0
trigger1 = NumExplod(6218) = 0
trigger1 = NumExplod(6219) = 0
trigger1 = NumExplod(6220) = 0
trigger1 = NumExplod(6231) = 0
anim = 6215
id = 6215
postype = p1
pos = 0,0
facing = ifelse(Facing = 1, 1,-1)
supermove = 1
ownpal = 1
sprpriority = 99
bindTime = -1
ignorehitpause = 1
persistent = 0

[State 6205, 2.1]
type = HitDef
trigger1 = AnimElem = 1
attr = S, HA
animtype = Hard
damage = 50,25
getpower = 0,0
givepower = 30,0
hitflag = MAF
guardflag = MA
pauseTime = 20,20
guard.pausetime = 10,10
ground.type = Low
ground.slidetime = 30
ground.hittime = 30
ground.velocity = -6
air.velocity = -2.2,-3.2
kill = 0
p2stateno = 6241
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10,ceil(enemynear, pos y)-76
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 6205, 3]
type = Explod
trigger1 = AnimElem = 2 && MoveHit
trigger1 = NumExplod(6216) = 0
anim = 6216
id = 6216
postype = p1
pos = 0,0
facing = ifelse(Facing = 1, 1,-1)
supermove = 1
ownpal = 1
sprpriority = 99
bindTime = -1
ignorehitpause = 1
persistent = 0

[State 6205, 4]
type = Explod
trigger1 = AnimElem = 5 && MoveHit
trigger1 = NumExplod(6219) = 0
anim = 6219
id = 6219
postype = p1
pos = 0,0
facing = ifelse(Facing = 1, 1,-1)
supermove = 1
ownpal = 1
sprpriority = 99
bindTime = -1
ignorehitpause = 1
persistent = 0

[State 6205, 5]
type = HitDef
triggerall = MoveHit
trigger1 = AnimElem = 2
trigger2 = AnimElem = 5
attr = S, HA
animtype = Hard
damage = 50,0
getpower = 0,0
givepower = 30,0
hitflag = MAF
guardflag = MA
pauseTime = 20,20
guard.pausetime = 10,10
ground.type = high
ground.slidetime = 30
ground.hittime = 30
ground.velocity = -6
air.velocity = -2.2,-3.2
kill = 0
p2stateno = 6240
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10,ceil(enemynear, pos y)-55
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48


[State 6205, 6]
type = Explod
trigger1 = AnimElem = 3 && MoveHit
trigger1 = NumExplod(6217) = 0
anim = 6217
id = 6217
postype = p1
pos = 0,0
facing = ifelse(Facing = 1, 1,-1)
supermove = 1
ownpal = 1
sprpriority = 99
bindTime = -1
ignorehitpause = 1
persistent = 0

[State 6205, 7]
type = HitDef
triggerall = MoveHit
trigger1 = AnimElem = 3
attr = S, HA
animtype = Up
damage = 50,0
getpower = 0,0
givepower = 30,0
hitflag = MAF
guardflag = MA
pauseTime = 20,20
guard.pausetime = 10,10
ground.type = Low
ground.slidetime = 30
ground.hittime = 30
ground.velocity = -6
air.velocity = -2.2,-3.2
kill = 0
p2stateno = 6242
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10,ceil(enemynear, pos y)-60
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 6205, 8]
type = Explod
trigger1 = AnimElem = 4 && MoveHit
trigger1 = NumExplod(6218) = 0
anim = 6218
id = 6218
postype = p1
pos = 0,0
facing = ifelse(Facing = 1, 1,-1)
supermove = 1
ownpal = 1
sprpriority = 99
bindTime = -1
ignorehitpause = 1
persistent = 0

[State 6205, 9]
type = HitDef
triggerall = MoveHit
trigger1 = AnimElem = 4
attr = S, HA
animtype = Hard
damage = 50,0
getpower = 0,0
givepower = 30,0
hitflag = MAF
guardflag = MA
pauseTime = 20,20
guard.pausetime = 10,10
ground.type = Low
ground.slidetime = 30
ground.hittime = 30
ground.velocity = -6
air.velocity = -2.2,-3.2
kill = 0
p2stateno = 6241
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10,ceil(enemynear, pos y)-60
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 6205, 10]
type = Explod
trigger1 = AnimElem = 6 && MoveHit
trigger1 = NumExplod(6220) = 0
anim = 6220
id = 6220
postype = p1
pos = 0,0
facing = ifelse(Facing = 1, 1,-1)
supermove = 1
ownpal = 1
sprpriority = 99
bindTime = -1
ignorehitpause = 1
persistent = 0

[State 6205, 11]
type = HitDef
triggerall = MoveHit
trigger1 = AnimElem = 6
attr = S, HA
animtype  = Up
damage = 50,0
getpower = 0,0
givepower = 30,0
hitflag = MAF
guardflag = MA
pauseTime = 60,60
guard.pausetime = 30,30
ground.type = Low
ground.slidetime = 30
ground.hittime = 30
ground.velocity = -6
air.velocity = -2.2,-3.2
kill = 0
p2stateno = 6242
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10,ceil(enemynear, pos y)-65
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 6205, 12]
type = Explod
trigger1 = AnimElem = 7 && MoveHit
trigger1 = NumExplod(6231) = 0
anim = 6231
id = 6231
postype = p1
pos = 0,0
facing = ifelse(Facing = 1, 1,-1)
supermove = 1
ownpal = 1
sprpriority = 99
bindTime = -1
ignorehitpause = 1
persistent = 0

[State 6205, 13]
type = RemoveExplod
trigger1 = AnimElem = 7 && MoveHit
id = 6215

[State 6205, 14]
type = RemoveExplod
trigger1 = AnimElem = 7 && MoveHit
id = 6216

[State 6205, 15]
type = RemoveExplod
trigger1 = AnimElem = 7 && MoveHit
id = 6217

[State 6205, 16]
type = RemoveExplod
trigger1 = AnimElem = 7 && MoveHit
id = 6218

[State 6205, 17]
type = RemoveExplod
trigger1 = AnimElem = 7 && MoveHit
id = 6219

[State 6205, 18]
type = RemoveExplod
trigger1 = AnimElem = 7 && MoveHit
id = 6220

[State 6205, 19]
type = RemoveExplod
trigger1 = AnimTime = 0
id = 6231

[State 6205, 21]
type = HitDef
triggerall = MoveHit
trigger1 = AnimElem = 7
trigger1 = P2Dist X <= 0
attr = S, HA
damage = 80,0
getpower = 0,0
givepower = 48,0
animtype  = Up
guardflag = MA
hitflag = MAF
priority = 3, Hit
pauseTime = 50,20
guard.pausetime = 25,20
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = 3,-12
air.type = High
air.hittime = 20
air.velocity = 3,-10
air.juggle = 3
fall.recover = 0
fall = 1
air.fall = 1
palfx.Time = 180
palfx.add = 75,25,95
palfx.mul = 170,80,210
palfx.sinadd = 40,10,50,5
kill = 1
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=63), var(36):=-70
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48

[State 6205, 22]
type = HitDef
triggerall = MoveHit
trigger1 = AnimElem = 7
trigger1 = P2Dist X > 0
attr = S, HA
damage = 80,0
getpower = 0,0
givepower = 48,0
animtype  = Up
guardflag = MA
hitflag = MAFD
priority = 3, Hit
pauseTime = 50,20
guard.pausetime = 25,20
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -3,-12
air.type = High
air.hittime = 20
air.velocity = -3,-10
air.juggle = 3
fall.recover = 0
fall = 1
air.fall = 1
palfx.Time = 180
palfx.add = 75,25,95
palfx.mul = 170,80,210
palfx.sinadd = 40,10,50,5
kill = 1
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = -1 
guard.sparkno = -1 + 0*(var(34):=8000)
sparkxy = -10 + 0*(var(35):=63), var(36):=-70
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48




[State 6205, 27.1]
type = DestroySelf
triggerall = !MoveHit
trigger1 = time = 5

[State 6205, 27.2]
type = DestroySelf
triggerall = MoveHit
trigger1 = AnimTime = 0

[State 6205, 28]
type = posset
trigger1 = 1
y = 0

[State 6205, 29]
type = NotHitBy
trigger1 = 1
value = SCA

[State 6205, 30]
type = ParentVarSet
triggerall = !MoveHit
trigger1 = time = 4
v = 26
value = 1

[State 6205, 30]
type = ParentVarSet
triggerall = MoveHit
trigger1 = Time = 14
v = 26
value = 0

;---------------------------------------------------------------------------
; Kishuu Musan Funjin - End

[Statedef 6206]
type    = S
movetype= A
physics = S
poweradd= 0
ctrl = 0
anim = 6206
sprpriority = 100

[State 6206, 1.1]
type = RemoveExplod
trigger1 = AnimElem = 4
id = 6205

[State 6206, 1.2]
type = RemoveExplod
trigger1 = Time = 0
id = 6207

[State 6206, 2]
type = VarSet
trigger1 = Time = 0
v = 26
value = 0

[State 6206, 3]
type = Turn
trigger1 = AnimTime = 0 && P2Bodydist X < 0

[State 6206, 4]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 6206, 5]
type = RemoveExplod
trigger1 = AnimElem = 5 && P2Bodydist X >= 0
trigger2 = AnimTime = 0
ID = 8480

[State 6206, 6]
type = ChangeState
trigger1 = AnimElem = 5 && P2Bodydist X >= 0
trigger2 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Kishuu Musan Funjin - Burst Explosion Effect

[Statedef 6210]
type = C
movetype = I
ctrl = 0
anim = 4506
velset = 0,0
sprpriority = 90

[State 6210, 1]
type = PlaySnd
trigger1 = Time = 3
value = 4500,0
channel = 0

[State 6210, 2]
type = Explod
trigger1 = Time = 0
anim = 6210
postype = p1
pos = 0,0
ownpal = 1
ignorehitpause = 1
sprpriority = 90
bindtime = -1

[State 6210, 3]
type = Explod
trigger1 = AnimElem = 2
anim = 3215
postype = p1
pos = 0,0
ownpal = 1
ignorehitpause = 1
sprpriority = 11

[State 6210, 4]
type = Explod
trigger1 = AnimElem = 2
anim = 6210
postype = p1
pos = -10,0
facing = -1
ownpal = 1
ignorehitpause = 1
sprpriority = 91

[State 6210, 5]
type = Explod
trigger1 = AnimElem = 2
anim = 6210
postype = p1
pos = -10,0
ownpal = 1
ignorehitpause = 1
sprpriority = 91

[State 6210, 6]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
; Kishuu Musan Funjin - Custom Get Hit 1

[Statedef 6240]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 6240, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 6240

;---------------------------------------------------------------------------
; Kishuu Musan Funjin - Custom Get Hit 2

[Statedef 6241]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 6241, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 6241

;---------------------------------------------------------------------------
; Kishuu Musan Funjin - Custom Get Hit 3

[Statedef 6242]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 6242, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 6242

;---------------------------------------------------------------------------
; Kishuu Musan Funjin - Burst Explosion Effect 2

[Statedef 6260]
type = C
movetype = I
ctrl = 0
anim = 6210
velset = 0,0
sprpriority = 90

[State 6260, 1]
type = Explod
trigger1 = Time = 0
trigger1 = NumExplod(6260) < 1
anim = 6210
id = 6260
postype = p2
pos = -60,-60
supermove = 1
ownpal = 1
sprpriority = 90
bindTime = -1
ignorehitpause = 1
persistent = 0

[State 6260, 2]
type = Explod
trigger1 = Time = 0
trigger1 = NumExplod(6260) < 1
anim = 6210
id = 6260
postype = p2
pos = -60,60
supermove = 1
ownpal = 1
sprpriority = 90
bindTime = -1
ignorehitpause = 1
persistent = 0

[State 6260, 3]
type = PlaySnd
trigger1 = Time = 3
value = 4500,0
channel = 2

[State 6260, 4]
type = DestroySelf
trigger1 = AnimTime = 0

;---------------------------------------------------------------------------
; Messatsu Gou Ryuu Zanshou - Attack
[Statedef 4000]
type    = S
movetype= A
physics = N
juggle  = 5
velset = 0,0
ctrl = 0
anim = 4000
sprpriority = 2
poweradd = -1000

[State 3000, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

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
trigger1 = !Time
fvar(5) = 0

[State 3000, Unguardable]
type = VarSet
trigger1 = !Time && NumEnemy
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
trigger1 = AnimElemTime(2) < 0
time = 1
value = SCA

[State 3000, SuperPause FX]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = 15, -63
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = !Time
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500,0
darken = 0

[State 4000, 1.1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3300,3
channel = 0

[State 4000, 1.3]
type = Explod
trigger1 = AnimElem = 1 && NumExplod(6205) = 0
anim = 6205
id = 6205
pos = 24,-75
postype = p1
bindtime = -1
sprpriority = 1
removetime = -1
removeongethit = 1
supermove = 1
bind = p1

[State 4000, 4]
type = RemoveExplod
trigger1 = AnimElem = 2, = 0
id = 6205

[State 4000, 5]
type = AfterImage
trigger1 = AnimElem = 1
time = 9999
length = 20
trans = add1
PalColor = 0
palbright = 200,0,0
palcontrast = 200,0,0
palpostbright = 0,0,0

[State 4000, 6.1]
type = VelSet
trigger1 = AnimElem = 2
x = 12

[State 4000, 6.2]
type = VelMul
trigger1 = AnimElem = 10
x = .25

[State 4000, 6.3]
type = VelMul
trigger1 = Vel x <= -9
trigger1 = P2BodyDist X >= 50
x = .02

[State 4000, 6.4]
type = VelSet
trigger1 = !MoveHit
trigger1 = AnimElem = 10
x = 0

[State 3000, Hit 1]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = !Time
attr = S, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 7 < 7, 7, fvar(11) * 7)), 7
getPower = 0,0
givePower = 6, 6
pauseTime = 4,25
guard.pauseTime = 5,5
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -1
ground.cornerPush.velOff = 0
guard.velocity = -14
guard.cornerPush.velOff = 0
air.velocity = -2,-1
air.cornerPush.velOff = 0
airguard.velocity = -5,-4
yAccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 51), var(36) := -72
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 15
envShake.ampl = 7
envShake.freq = 120
kill = 0

[State 102, Dust]
type = helper
trigger1 = animelem = 2
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 52, Dust]
type = explod
trigger1 = AnimElem = 10
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 4000, 9.1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4,5

[State 4000, 9.2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3300,0
channel = 0

[State 4000, 9.3]
type = PlaySnd
trigger1 = AnimElem = 10
value = 0,0

[State 4000, 11.1]
type = RemoveExplod
trigger1 = AnimElem = 2, = 0
ID = 8470

[State 4000, 11.2]
type = RemoveExplod
trigger1 = AnimTime = 0
ID = 8480

[State 4000, 12.1]
type = ChangeState
trigger1 = MoveHit
value = 4010
ctrl = 0

[State 4000, 12.2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Messatsu Gou Ryuu Zanshou - Attack 1
[Statedef 4010]
type    = S
movetype= A
physics = N
juggle  = 5
velset = 1,0
ctrl = 0
anim = 4010
sprpriority = 2

[State 3000, Hit 1]
type = HitDef
triggerall = !var(16)
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
attr = S, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 7 < 7, 7, fvar(11) * 7)), 7
getPower = 0,0
givePower = 6, 6
pauseTime = 2,12
guard.pauseTime = 5,5
animType = Light
air.animType = Light
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -1
ground.cornerPush.velOff = 0
guard.velocity = -14
guard.cornerPush.velOff = 0
air.velocity = -1,-3
air.cornerPush.velOff = 0
airguard.velocity = -5,-4
yAccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 78), var(36) := -78
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 15
envShake.ampl = 7
envShake.freq = 120
kill = 0

[State 4010, 2.1]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
value = 4, 0
channel = 0

[State 4010, 2.2]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
value = 1, 0
channel = 1

[State 3000, Hit 1]
type = HitDef
triggerall = !var(16)
trigger1 = AnimElem = 8
attr = S, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 7 < 7, 7, fvar(11) * 7)), 7
getPower = 0,0
givePower = 6, 6
pauseTime = 2,12
guard.pauseTime = 5,5
animType = Light
air.animType = Light
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -1
ground.cornerPush.velOff = 0
guard.velocity = -14
guard.cornerPush.velOff = 0
air.velocity = -1,-3
air.cornerPush.velOff = 0
airguard.velocity = -5,-4
yAccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 90), var(36) := -35
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 15
envShake.ampl = 7
envShake.freq = 120
kill = 0

[State 4010, 4.1]
type = PlaySnd
trigger1 = AnimElem = 8
value = 4,1
channel = 0

[State 4010, 4.2]
type = PlaySnd
trigger1 = AnimElem = 8
value = 1,1
channel = 1

[State 3000, Hit 1]
type = HitDef
triggerall = !var(16)
trigger1 = AnimElem = 13
attr = S, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 18, 18
pauseTime = 2,12
guard.pauseTime = 5,5
animType = Heavy
air.animType = Heavy
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 21
ground.slideTime = 21
guard.hitTime = 21
air.hitTime = 120
ground.velocity = -1
ground.cornerPush.velOff = 0
guard.velocity = -14
guard.cornerPush.velOff = 0
air.velocity = -5,-3
air.cornerPush.velOff = 0
airguard.velocity = -5,-4
yAccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 90), var(36) := -75
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 15
envShake.ampl = 7
envShake.freq = 120
kill = 0

[State 4010, 6.1]
type = PlaySnd
trigger1 = AnimElem = 13
value = 1, 2
channel = 1

[State 4010, 6.2]
type = PlaySnd
trigger1 = AnimElem = 13
value = 4,2
channel = 0

[State 3000, Hit 1]
type = HitDef
triggerall = !var(16)
trigger1 = AnimElem = 16
attr = S, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = 0,0
givePower = 18, 18
pauseTime = 2,12
guard.pauseTime = 5,5
animType = Heavy
air.animType = Heavy
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 21
ground.slideTime = 21
guard.hitTime = 21
air.hitTime = 120
ground.velocity = -1
ground.cornerPush.velOff = 0
guard.velocity = -14
guard.cornerPush.velOff = 0
air.velocity = -2,-3
air.cornerPush.velOff = 0
airguard.velocity = -5,-4
yAccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 90), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 15
envShake.ampl = 7
envShake.freq = 120
kill = 0

[State 4010, 8.1]
type = PlaySnd
trigger1 = AnimElem = 16
value = 1,2
channel = 1

[State 4010, 8.2]
type = PlaySnd
trigger1 = AnimElem = 16
value = 4,1
channel = 0

[State 4010, 9]
type = MoveHitReset
trigger1 = Time >= 0 && AnimElem = 15, <= 4

[State 4010, 10]
type = RemoveExplod
trigger1 = AnimTime = 0
trigger1 = !MoveHit
ID = 8480

[State 4010, 11]
type = ChangeState
trigger1 = AnimTime = 0
value = ifelse(MoveHit, 4030, 0)
ctrl = ifelse(MoveHit, 0, 1)

;---------------------------------------------------------------------------
; Messatsu Gou Ryuu Zanshou - Attack 5
[Statedef 4030]
type    = S
movetype= A
physics = N
juggle  = 5
velset = 0,0
ctrl = 0
anim = 4030
sprpriority = 2

[State 4030, 1]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 4030, 2.1]
type = VelSet
trigger1 = AnimElem = 2
x = 5.4

[State 4030, 2.2]
type = VelSet
trigger1 = AnimElem = 9
x = 0

[State 4030, 2.3]
type = VelSet
trigger1 = AnimElem = 15
x = 5.4

[State 4030, 3.1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3, 2
channel = 0

[State 4030, 3.2]
type = PlaySnd
trigger1 = AnimElem = 14
value = 2000,0
channel = 0

[State 4030, 3.3]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 15
value = 2000,1
channel = 1

[State 4030, 4]
type = NotHitBy
trigger1 = AnimElem = 2
trigger2 = AnimElem = 15
value = SCA
time = 10

[State 4030, 5.1]
type = Width
trigger1 = AnimElem = 1
value = 20

[State 4030, 5.2]
type = Width
trigger1 = Time >= 4
value = 30,0

[State 3000, Hit 1]
type = HitDef
triggerall = !var(16)
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 10
trigger5 = AnimElem = 17
attr = S, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 7 < 7, 7, fvar(11) * 7)), 7
getPower = 0,0
givePower = 6, 6
pauseTime = 5,10
guard.pauseTime = 5,15
animType = Medium
air.animType = Medium
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 21
ground.slideTime = 21
guard.hitTime = 21
air.hitTime = 120
ground.velocity = -4
ground.cornerPush.velOff = 0
guard.velocity = -4
guard.cornerPush.velOff = 0
air.velocity = -5,-4
air.cornerPush.velOff = 0
airguard.velocity = -4,-3
yAccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 90), var(36) := -70
palfx.time = 80
palfx.add = ifelse(Var(25)=1,75,200),ifelse(Var(25)=1,25,80),ifelse(Var(25)=1,95,0)
palfx.mul = ifelse(Var(25)=1,170,220),ifelse(Var(25)=1,80,110),ifelse(Var(25)=1,210,110)
palfx.sinadd = ifelse(Var(25)=1,40,100),ifelse(Var(25)=1,10,20),ifelse(Var(25)=1,50,20),5
envShake.time = 15
envShake.ampl = 7
envShake.freq = 120
fall.envshake.time = 20
fall.envshake.ampl = -10
kill = 0

[State 0, Helper]
type = Helper
trigger1 = AnimElem = 5
trigger2 = AnimElem = 8
trigger3 = AnimElem = 18
helpertype = normal
name = "Fire Wave"
ID = 4046
stateno = 4046 
pos = 44,-68
postype = p1
ownpal = 1
supermovetime = 999999999
pausemovetime = 999999999
size.xscale = .5
size.yscale = .5

[State 1025, Flames]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 4030, 12]
type = PlaySnd
trigger1 = (NumExplod(8400) != 0) && (RoundState = 3)
value = 8400,0
persistent = 0
ignorehitpause = 1

[State 4030, 13]
type = ChangeState
trigger1 = AnimElem = 19
value = 4035
ctrl = 0

;---------------------------------------------------------------------------
; Messatsu Gou Ryuu Zanshou - Air
[Statedef 4035]
type    = A
movetype= A
physics = N
ctrl = 0
sprpriority = 2

[State 4035, 1]
type = VelSet
trigger1 = AnimElem = 20
y = -20

[State 4035, 2]
type = VelAdd
trigger1 = Time >= 0
y = 0.8

[State 3000, Hit 1]
type = HitDef
triggerall = !var(16)
trigger1 = AnimElem = 21
trigger2 = AnimElem = 23
attr = S, HA
hitFlag = MAFD
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 7 < 7, 7, fvar(11) * 7)), 7
getPower = 0,0
givePower = 9, 9
pauseTime = 5,0
guard.pauseTime = 5,1000
animType = Heavy
air.animType = Heavy
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 21
ground.slideTime = 21
guard.hitTime = 21
air.hitTime = 120
ground.velocity = -4,-10
ground.cornerPush.velOff = 0
guard.velocity = -4
guard.cornerPush.velOff = 0
air.velocity = -6,-10
air.cornerPush.velOff = 0
airguard.velocity = -5,-4
yAccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 90), var(36) := -70
palfx.time = 80
palfx.add = ifelse(Var(25)=1,75,200),ifelse(Var(25)=1,25,80),ifelse(Var(25)=1,95,0)
palfx.mul = ifelse(Var(25)=1,170,220),ifelse(Var(25)=1,80,110),ifelse(Var(25)=1,210,110)
palfx.sinadd = ifelse(Var(25)=1,40,100),ifelse(Var(25)=1,10,20),ifelse(Var(25)=1,50,20),5
envShake.time = 15
envShake.ampl = 7
envShake.freq = 120
fall.envshake.time = 20
fall.envshake.ampl = -10
fall = 1
air.fall = 1
fall.recover = 0

[State 1025, Flames]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 4035, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 4040
ctrl = 0

;---------------------------------------------------------------------------
; Messatsu Gou Ryuu Zanshou - Falling
[Statedef 4040]
type    = A
movetype= I
physics = N
ctrl = 0
velset = .1,-4.7
anim = 4040
sprpriority = 2

[State 4040, 1]
type = VelAdd
trigger1 = Time >= 0
y = .6

[State 4040, 2]
type = ChangeState
trigger1 = Pos Y >= 0
value = 4045
ctrl = 0

;---------------------------------------------------------------------------
; Messatsu Gou Ryuu Zanshou - Landing
[Statedef 4045]
type = S
ctrl = 0
anim = 2012

[State 4045, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 4045, 2]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 4045, 3]
type = RemoveExplod
trigger1 = AnimElem = 3, = 5
ID = 8480

[State 4045, 4]
type = ChangeState
trigger1 = AnimElem = 3, = 6
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Messatsu Gou Ryuu Zanshou - Attack
[Statedef 4050]
type    = S
movetype= A
physics = N
juggle  = 5
velset = 0,0
ctrl = 0
anim = 4000
sprpriority = 2
poweradd = -2000

[State 3000, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000, 2999]) && var(7)) || var(20)

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
trigger1 = !Time
fvar(5) = 0

[State 3000, Unguardable]
type = VarSet
trigger1 = !Time && NumEnemy
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
trigger1 = AnimElemTime(2) < 0
time = 1
value = SCA

[State 3000, SuperPause FX]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = 15, -63
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = !Time
time = 43
moveTime = 43
p2DefMul = 1
unHittable = 0
anim = -1
sound = s8500,0
darken = 0

[State 4000, 1.1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3300,3
channel = 0

[State 4000, 1.3]
type = Explod
trigger1 = AnimElem = 1 && NumExplod(6205) = 0
anim = 6205
id = 6205
pos = 24,-75
postype = p1
bindtime = -1
sprpriority = 1
removetime = -1
removeongethit = 1
supermove = 1
bind = p1

[State 4000, 4]
type = RemoveExplod
trigger1 = AnimElem = 2, = 0
id = 6205

[State 4000, 5]
type = AfterImage
trigger1 = AnimElem = 1
time = 9999
length = 20
trans = add1
PalColor = 0
palbright = 200,0,0
palcontrast = 200,0,0
palpostbright = 0,0,0

[State 4000, 6.1]
type = VelSet
trigger1 = AnimElem = 2
x = 12

[State 4000, 6.2]
type = VelMul
trigger1 = AnimElem = 10
x = .25

[State 4000, 6.3]
type = VelMul
trigger1 = Vel x <= -9
trigger1 = P2BodyDist X >= 50
x = .02

[State 4000, 6.4]
type = VelSet
trigger1 = !MoveHit
trigger1 = AnimElem = 10
x = 0

[State 3000, Hit 1]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = !Time
attr = S, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 7 < 7, 7, fvar(11) * 7)), 7
getPower = 0,0
givePower = 6, 6
pauseTime = 4,25
guard.pauseTime = 5,5
animType = Hard
air.animType = Hard
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -1
ground.cornerPush.velOff = 0
guard.velocity = -14
guard.cornerPush.velOff = 0
air.velocity = -2,-1
air.cornerPush.velOff = 0
airguard.velocity = -5,-4
yAccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 51), var(36) := -72
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 15
envShake.ampl = 7
envShake.freq = 120
kill = 0

[State 102, Dust]
type = helper
trigger1 = animelem = 2
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 52, Dust]
type = explod
trigger1 = AnimElem = 10
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 4000, 9.1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4,5

[State 4000, 9.2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3300,0
channel = 0

[State 4000, 9.3]
type = PlaySnd
trigger1 = AnimElem = 10
value = 0,0

[State 4000, 11.1]
type = RemoveExplod
trigger1 = AnimElem = 2, = 0
ID = 8470

[State 4000, 11.2]
type = RemoveExplod
trigger1 = AnimTime = 0
ID = 8480

[State 4000, 12.1]
type = ChangeState
trigger1 = MoveHit
value = 4060
ctrl = 0

[State 4000, 12.2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Messatsu Gou Ryuu Zanshou - Attack 1
[Statedef 4060]
type    = S
movetype= A
physics = N
juggle  = 5
velset = 1,0
ctrl = 0
anim = 4010
sprpriority = 2

[State 3000, Hit 1]
type = HitDef
triggerall = !var(16)
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
attr = S, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 7 < 7, 7, fvar(11) * 7)), 7
getPower = 0,0
givePower = 6, 6
pauseTime = 2,12
guard.pauseTime = 5,5
animType = Light
air.animType = Light
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -1
ground.cornerPush.velOff = 0
guard.velocity = -14
guard.cornerPush.velOff = 0
air.velocity = -1,-3
air.cornerPush.velOff = 0
airguard.velocity = -5,-4
yAccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 78), var(36) := -78
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 15
envShake.ampl = 7
envShake.freq = 120
kill = 0

[State 4010, 2.1]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
value = 4, 0
channel = 0

[State 4010, 2.2]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 4
value = 1, 0
channel = 1

[State 3000, Hit 1]
type = HitDef
triggerall = !var(16)
trigger1 = AnimElem = 8
attr = S, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 7 < 7, 7, fvar(11) * 7)), 7
getPower = 0,0
givePower = 6, 6
pauseTime = 2,12
guard.pauseTime = 5,5
animType = Light
air.animType = Light
fall.animType = Hard
ground.type = Low
air.type = Low
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 120
ground.velocity = -1
ground.cornerPush.velOff = 0
guard.velocity = -14
guard.cornerPush.velOff = 0
air.velocity = -1,-3
air.cornerPush.velOff = 0
airguard.velocity = -5,-4
yAccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 90), var(36) := -35
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 15
envShake.ampl = 7
envShake.freq = 120
kill = 0

[State 4010, 4.1]
type = PlaySnd
trigger1 = AnimElem = 8
value = 4,1
channel = 0

[State 4010, 4.2]
type = PlaySnd
trigger1 = AnimElem = 8
value = 1,1
channel = 1

[State 3000, Hit 1]
type = HitDef
triggerall = !var(16)
trigger1 = AnimElem = 13
attr = S, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = 0,0
givePower = 18, 18
pauseTime = 2,12
guard.pauseTime = 5,5
animType = Heavy
air.animType = Heavy
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 21
ground.slideTime = 21
guard.hitTime = 21
air.hitTime = 120
ground.velocity = -1
ground.cornerPush.velOff = 0
guard.velocity = -14
guard.cornerPush.velOff = 0
air.velocity = -5,-3
air.cornerPush.velOff = 0
airguard.velocity = -5,-4
yAccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 90), var(36) := -75
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 15
envShake.ampl = 7
envShake.freq = 120
kill = 0

[State 4010, 6.1]
type = PlaySnd
trigger1 = AnimElem = 13
value = 1, 2
channel = 1

[State 4010, 6.2]
type = PlaySnd
trigger1 = AnimElem = 13
value = 4,2
channel = 0

[State 3000, Hit 1]
type = HitDef
triggerall = !var(16)
trigger1 = AnimElem = 16
attr = S, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 18, 18
pauseTime = 2,12
guard.pauseTime = 5,5
animType = Heavy
air.animType = Heavy
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 21
ground.slideTime = 21
guard.hitTime = 21
air.hitTime = 120
ground.velocity = -1
ground.cornerPush.velOff = 0
guard.velocity = -14
guard.cornerPush.velOff = 0
air.velocity = -2,-3
air.cornerPush.velOff = 0
airguard.velocity = -5,-4
yAccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 90), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 15
envShake.ampl = 7
envShake.freq = 120
kill = 0

[State 4010, 8.1]
type = PlaySnd
trigger1 = AnimElem = 16
value = 1,2
channel = 1

[State 4010, 8.2]
type = PlaySnd
trigger1 = AnimElem = 16
value = 4,1
channel = 0

[State 4010, 9]
type = MoveHitReset
trigger1 = Time >= 0 && AnimElem = 15, <= 4

[State 4010, 10]
type = RemoveExplod
trigger1 = AnimTime = 0
trigger1 = !MoveHit
ID = 8480

[State 4010, 11]
type = ChangeState
trigger1 = AnimTime = 0
value = ifelse(MoveHit, 4065, 0)
ctrl = ifelse(MoveHit, 0, 1)

;---------------------------------------------------------------------------
; Messatsu Gou Ryuu Zanshou - Attack 2
[Statedef 4065]
type    = S
movetype= A
physics = N
juggle  = 5
velset = 1,0
ctrl = 0
anim = 4015
sprpriority = 2

[State 3000, Hit 1]
type = HitDef
triggerall = !var(16)
trigger1 = AnimElem = 2
attr = S, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 7 < 7, 7, fvar(11) * 7)), 7
getPower = 0,0
givePower = 6, 6
pauseTime = 2,12
guard.pauseTime = 5,5
animType = Light
air.animType = Light
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 21
ground.slideTime = 21
guard.hitTime = 21
air.hitTime = 120
ground.velocity = -1
ground.cornerPush.velOff = 0
guard.velocity = -14
guard.cornerPush.velOff = 0
air.velocity = -1,-3
air.cornerPush.velOff = 0
airguard.velocity = -5,-4
yAccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 90), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 15
envShake.ampl = 7
envShake.freq = 120
kill = 0

[State 4015, 2.1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4,1
channel = 0

[State 4015, 2.2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,0
channel = 1

[State 3000, Hit 1]
type = HitDef
triggerall = !var(16)
trigger1 = AnimElem = 9
attr = C, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 18, 18
pauseTime = 2,12
guard.pauseTime = 5,5
animType = Light
air.animType = Light
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 21
ground.slideTime = 21
guard.hitTime = 21
air.hitTime = 120
ground.velocity = -1
ground.cornerPush.velOff = 0
guard.velocity = -14
guard.cornerPush.velOff = 0
air.velocity = -4,-4
air.cornerPush.velOff = 0
airguard.velocity = -5,-4
yAccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 90), var(36) := -12
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 15
envShake.ampl = 7
envShake.freq = 120
kill = 0

[State 4015, 4.1]
type = PlaySnd
trigger1 = AnimElem = 9
value = 1, 2
channel = 1

[State 4015, 4.2]
type = PlaySnd
trigger1 = AnimElem = 9
value = 4,2
channel = 0

[State 4015, 5]
type = MoveHitReset
trigger1 = Time >= 0 && AnimElem = 8, <= 3

[State 4015, 6]
type = RemoveExplod
trigger1 = AnimTime = 0
trigger1 = !MoveHit
ID = 8480

[State 4015, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = ifelse(MoveHit, 4070, 0)
ctrl = ifelse(MoveHit, 0, 1)

;---------------------------------------------------------------------------
; Messatsu Gou Ryuu Zanshou - Attack 3
[Statedef 4070]
type    = S
movetype= A
physics = N
juggle  = 5
velset = 0.5,0
ctrl = 0
anim = 4020
sprpriority = 2

[State 3000, Hit 1]
type = HitDef
triggerall = !var(16)
trigger1 = AnimElem = 2
attr = C, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 18, 18
pauseTime = 2,12
guard.pauseTime = 5,5
animType = Heavy
air.animType = Heavy
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 21
ground.slideTime = 21
guard.hitTime = 21
air.hitTime = 120
ground.velocity = -1
ground.cornerPush.velOff = 0
guard.velocity = -14
guard.cornerPush.velOff = 0
air.velocity = -1,-3
air.cornerPush.velOff = 0
airguard.velocity = -2,-3
yAccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 90), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 15
envShake.ampl = 7
envShake.freq = 120
kill = 0

[State 4020, 2.1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1, 2
channel = 1

[State 4020, 2.2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4,2
channel = 0

[State 4020, 3.1]
type = width
trigger1 = AnimElem = 7, >= 0 && AnimElem = 8, <= 4
value = 50,-50

[State 4020, 3.2]
type = width
trigger1 = AnimElem = 9, >= 0 && AnimElem = 9, <= 2
value = 10,-10

[State 4020, 3.3]
type = width
trigger1 = AnimElem = 10, >= 0
value = 0,0

[State 3000, Hit 1]
type = HitDef
triggerall = !var(16)
trigger1 = AnimElem = 8
attr = S, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 21, 21
pauseTime = 2,12
guard.pauseTime = 5,5
animType = Heavy
air.animType = Heavy
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 21
ground.slideTime = 21
guard.hitTime = 21
air.hitTime = 120
ground.velocity = -1
ground.cornerPush.velOff = 0
guard.velocity = -14
guard.cornerPush.velOff = 0
air.velocity = -1,-3
air.cornerPush.velOff = 0
airguard.velocity = -5,-3
yAccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 90), var(36) := -74
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 15
envShake.ampl = 7
envShake.freq = 120
kill = 0

[State 4020, 5.1]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1,2
channel = 1

[State 4020, 5.2]
type = PlaySnd
trigger1 = AnimElem = 7
value = 4,4
channel = 0

[State 4020, 6]
type = MoveHitReset
trigger1 = Time >= 0 && AnimElem = 7, <= 3

[State 4020, 7]
type = RemoveExplod
trigger1 = AnimTime = 0
trigger1 = !MoveHit
ID = 8480

[State 4020, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = ifelse(MoveHit, 4075, 0)
ctrl = ifelse(MoveHit, 0, 1)

;---------------------------------------------------------------------------
; Messatsu Gou Ryuu Zanshou - Attack 4
[Statedef 4075]
type    = S
movetype= A
physics = N
juggle  = 5
velset = 0.5,0
ctrl = 0
anim = 4025
sprpriority = 2

[State 3000, Hit 1]
type = HitDef
triggerall = !var(16)
trigger1 = AnimElem = 3
attr = S, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0,0
givePower = 15, 15
pauseTime = 2,12
guard.pauseTime = 5,5
animType = Medium
air.animType = Medium
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 21
ground.slideTime = 21
guard.hitTime = 21
air.hitTime = 120
ground.velocity = -1
ground.cornerPush.velOff = 0
guard.velocity = -14
guard.cornerPush.velOff = 0
air.velocity = -2,-3
air.cornerPush.velOff = 0
airguard.velocity = -5,-3
yAccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 90), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 15
envShake.ampl = 7
envShake.freq = 120
kill = 0

[State 4025, 2.1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, 1
channel = 0

[State 4025, 2.2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1, 1
channel = 1

[State 4025, 3.1]
type = VelSet
trigger1 = AnimElem = 8, = 1
y = -2

[State 4025, 3.2]
type = VelAdd
trigger1 = AnimElem = 10, >= 0
y = 1

[State 4025, 4]
type = PosAdd
trigger1 = AnimElem = 8, >= 0
x = 4.5

[State 3000, Hit 1]
type = HitDef
triggerall = !var(16)
trigger1 = AnimElem = 9
attr = S, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 < 7, 7, fvar(11) * 21)), 7
getPower = 0,0
givePower = 12, 12
pauseTime = 2,12
guard.pauseTime = 5,5
animType = Heavy
air.animType = Heavy
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 21
ground.slideTime = 21
guard.hitTime = 21
air.hitTime = 120
ground.velocity = -1
ground.cornerPush.velOff = 0
guard.velocity = -14
guard.cornerPush.velOff = 0
air.velocity = -1,-3
air.cornerPush.velOff = 0
airguard.velocity = -5,-3
yAccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 90), var(36) := -60
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 15
envShake.ampl = 7
envShake.freq = 120
kill = 0

[State 4025, 6.1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3, 4
channel = 0

[State 4025, 6.2]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2,1
channel = 1

[State 4025, 7]
type = PosSet
trigger1 = AnimElem = 12, >= 0
y = 0

[State 4025, 8]
type = MoveHitReset
trigger1 = Time >= 0 && AnimElem = 8, <= 3

[State 4025, 9]
type = RemoveExplod
trigger1 = AnimTime = 0
trigger1 = !MoveHit
ID = 8480

[State 4025, 10]
type = ChangeState
trigger1 = AnimTime = 0
value = ifelse(MoveHit, 4080, 0)
ctrl = ifelse(MoveHit, 0, 1)

;---------------------------------------------------------------------------
; Messatsu Gou Ryuu Zanshou - Attack 5
[Statedef 4080]
type    = S
movetype= A
physics = N
juggle  = 5
velset = 0,0
ctrl = 0
anim = 4030
sprpriority = 2

[State 4030, 1]
type = PosSet
trigger1 = AnimElem = 1
y = 0

[State 4030, 2.1]
type = VelSet
trigger1 = AnimElem = 2
x = 5.4

[State 4030, 2.2]
type = VelSet
trigger1 = AnimElem = 9
x = 0

[State 4030, 2.3]
type = VelSet
trigger1 = AnimElem = 15
x = 5.4

[State 4030, 3.1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3, 2
channel = 0

[State 4030, 3.2]
type = PlaySnd
trigger1 = AnimElem = 14
value = 2000,0
channel = 0

[State 4030, 3.3]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 15
value = 2000,1
channel = 1

[State 4030, 4]
type = NotHitBy
trigger1 = AnimElem = 2
trigger2 = AnimElem = 15
value = SCA
time = 10

[State 4030, 5.1]
type = Width
trigger1 = AnimElem = 1
value = 20

[State 4030, 5.2]
type = Width
trigger1 = Time >= 4
value = 30,0

[State 3000, Hit 1]
type = HitDef
triggerall = !var(16)
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 10
trigger5 = AnimElem = 17
attr = S, HA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 7 < 7, 7, fvar(11) * 7)), 7
getPower = 0,0
givePower = 6, 6
pauseTime = 5,10
guard.pauseTime = 5,15
animType = Medium
air.animType = Medium
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 21
ground.slideTime = 21
guard.hitTime = 21
air.hitTime = 120
ground.velocity = -4
ground.cornerPush.velOff = 0
guard.velocity = -4
guard.cornerPush.velOff = 0
air.velocity = -5,-4
air.cornerPush.velOff = 0
airguard.velocity = -4,-3
yAccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 90), var(36) := -70
palfx.time = 80
palfx.add = ifelse(Var(25)=1,75,200),ifelse(Var(25)=1,25,80),ifelse(Var(25)=1,95,0)
palfx.mul = ifelse(Var(25)=1,170,220),ifelse(Var(25)=1,80,110),ifelse(Var(25)=1,210,110)
palfx.sinadd = ifelse(Var(25)=1,40,100),ifelse(Var(25)=1,10,20),ifelse(Var(25)=1,50,20),5
envShake.time = 15
envShake.ampl = 7
envShake.freq = 120
fall.envshake.time = 20
fall.envshake.ampl = -10
kill = 0

[State 0, Helper]
type = Helper
trigger1 = AnimElem = 5
trigger2 = AnimElem = 8
trigger3 = AnimElem = 18
helpertype = normal
name = "Fire Wave"
ID = 4046
stateno = 4046 
pos = 44,-68
postype = p1
ownpal = 1
supermovetime = 999999999
pausemovetime = 999999999
size.xscale = .5
size.yscale = .5

[State 1025, Flames]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 4030, 12]
type = PlaySnd
trigger1 = (NumExplod(8400) != 0) && (RoundState = 3)
value = 8400,0
persistent = 0
ignorehitpause = 1

[State 4030, 13]
type = ChangeState
trigger1 = AnimElem = 19
value = 4085
ctrl = 0

;---------------------------------------------------------------------------
; Messatsu Gou Ryuu Zanshou - Air
[Statedef 4085]
type    = A
movetype= A
physics = N
ctrl = 0
sprpriority = 2

[State 4035, 1]
type = VelSet
trigger1 = AnimElem = 20
y = -20

[State 4035, 2]
type = VelAdd
trigger1 = Time >= 0
y = 0.8

[State 3000, Hit 1]
type = HitDef
triggerall = !var(16)
trigger1 = AnimElem = 21
trigger2 = AnimElem = 23
attr = S, HA
hitFlag = MAFD
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 7 < 7, 7, fvar(11) * 7)), 7
getPower = 0,0
givePower = 9, 9
pauseTime = 5,0
guard.pauseTime = 5,1000
animType = Heavy
air.animType = Heavy
fall.animType = Hard
ground.type = High
air.type = Low
ground.hitTime = 21
ground.slideTime = 21
guard.hitTime = 21
air.hitTime = 120
ground.velocity = -4,-10
ground.cornerPush.velOff = 0
guard.velocity = -4
guard.cornerPush.velOff = 0
air.velocity = -6,-10
air.cornerPush.velOff = 0
airguard.velocity = -5,-4
yAccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 90), var(36) := -70
palfx.time = 80
palfx.add = ifelse(Var(25)=1,75,200),ifelse(Var(25)=1,25,80),ifelse(Var(25)=1,95,0)
palfx.mul = ifelse(Var(25)=1,170,220),ifelse(Var(25)=1,80,110),ifelse(Var(25)=1,210,110)
palfx.sinadd = ifelse(Var(25)=1,40,100),ifelse(Var(25)=1,10,20),ifelse(Var(25)=1,50,20),5
envShake.time = 15
envShake.ampl = 7
envShake.freq = 120
fall.envshake.time = 20
fall.envshake.ampl = -10
fall = 1
air.fall = 1
fall.recover = 0

[State 1025, Flames]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 4035, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 4090
ctrl = 0

;---------------------------------------------------------------------------
; Messatsu Gou Ryuu Zanshou - Falling
[Statedef 4090]
type    = A
movetype= I
physics = N
ctrl = 0
velset = .1,-4.7
anim = 4040
sprpriority = 2

[State 4040, 1]
type = VelAdd
trigger1 = Time >= 0
y = .6

[State 4040, 2]
type = ChangeState
trigger1 = Pos Y >= 0
value = 4095
ctrl = 0

;---------------------------------------------------------------------------
; Messatsu Gou Ryuu Zanshou - Landing
[Statedef 4095]
type = S
ctrl = 0
anim = 2012

[State 4045, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 4045, 2]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 4045, 3]
type = RemoveExplod
trigger1 = AnimElem = 3, = 5
ID = 8480

[State 4045, 4]
type = ChangeState
trigger1 = AnimElem = 3, = 6
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Fire Wave
[Statedef 4046]
type = S
physics = N
movetype = A
ctrl = 0
sprpriority = 6

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 2013

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 0, Trans]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256

[State 0, VarSet]
type = VarSet
trigger1 = 1
var(10) = root,var(10)

[State 1015, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = moveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1030, Damage Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 0, VarSet]
type = VarSet
trigger1 = 1
var(20) = Root,Var(20)

[State 0, VelSet]
type = VelSet
trigger1 = !Time
x = 8
y = -8

[State 4046, Hit]
type = HitDef
triggerall = !Root,Var(16)
trigger1 = !Time
attr = S, HP
animtype = Heavy
damage = 7,1
getpower = 0,0
givepower = 4,0
guardflag = MA
hitflag = MAF
priority = 4, Hit
pausetime = 0,0
guard.sparkno = S8007
sparkno = S8004
sparkxy = 0,0
hitsound   = S2,6
guardsound = S1050, 0
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -5
air.type = Low
air.velocity = -6,-10
fall = 1
air.fall = 1
fall.recover = 0
envshake.time = 15
envshake.ampl = 7
fall.envshake.time = 20
fall.envshake.ampl = -10
palfx.time = 80
palfx.add = ifelse(Var(25)=1,75,200),ifelse(Var(25)=1,25,80),ifelse(Var(25)=1,95,0)
palfx.mul = ifelse(Var(25)=1,170,220),ifelse(Var(25)=1,80,110),ifelse(Var(25)=1,210,110)
palfx.sinadd = ifelse(Var(25)=1,40,100),ifelse(Var(25)=1,10,20),ifelse(Var(25)=1,50,20),5

[State 3005, hitspark]
type = helper
trigger1 = moveContact = 1 && numtarget
trigger1 = !(target, hitshakeover)
helperType = Normal
stateNo = ifElse(moveguarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(p2dist x < 0, 0, ifelse(p2dist x < 20, ceil(p2dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && (root, var(9))
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1025, Flames]
type = Helper
trigger1 = !NumHelper(8150)
trigger1 = MoveHit = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
stateNo = 8150
ID = 8150
name = "Flame Particles"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 0, ChangeAnim]
type = ChangeState
trigger1 = FrontEdgeDist <= -60
trigger2 = Pos Y <= -180
value = 4047

;---------------------------------------------------------------------------
; Fire Wave End
[Statedef 4047]
type = A
movetype = I
physics = N
anim = 2014
ctrl = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 0, Trans]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256

[State 0, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime