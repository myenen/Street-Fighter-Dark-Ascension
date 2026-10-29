; _________________________________________
;| Sakura by varo_hades                    |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;===============================================================================
;============================<SPECIAL MOVES>====================================
;===============================================================================

;=====================<HADOU KEN>==========================
[StateDef 1000]
type = S
physics = S
moveType = A
anim = 1000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1000, hadouvar]
type = varset
trigger1 = animelemtime(4) < 0
var(24) = 1

[State 1000, hadouvar]
type = varadd
trigger1 = animelemtime(2) >= 0 && animelemtime(12) < 0 && var(24) < 3
trigger1 = (var(10) = 0 && command = "x") || (var(10) = 1 && command = "y") || (var(10) = 2 && command = "z")
var(24) = 1

[State 1000, Anim]
type = changeanim
trigger1 = animelemtime(2) >= 0 && animelemtime(4) < 0 && var(24) = 2
value = 1000
elem = 4

[State 1000, Anim]
type = changeanim
trigger1 = animelemtime(4) >= 0 && animelemtime(7) < 0 && var(24) = 3
value = 1000
elem = 7

[State 1000, Anim]
type = changeanim
trigger1 = animelemtime(4) >= 0 && animelemtime(7) < 0 && var(24) != 2
trigger2 = animelemtime(7) >= 0 && animelemtime(10) < 0 && var(24) != 3
trigger3 = AIlevel && animelemtime(2) >= 0 && animelemtime(10) < 0 && p2movetype = A
value = 1000
elem = 10

[State 1000, width]
type = width
trigger1 = animelemtime(10) >= 0 && animelemtime(11) < 0
trigger2 = animelemtime(18) >= 0 && animelemtime(19) < 0
value = 13

[State 1000, width]
type = width
trigger1 = animelemtime(11) >= 0 && animelemtime(18) < 0
value = 26

[State 1000, focus]
type = helper
trigger1 = animelemtime(2) >= 0 && animelemtime(11) < 0 && !numhelper(1002)
helpertype = normal
stateno = 1002
ID = 1002
name = "Hadouken Charge"
postype = p1
ownpal = 1

[State 1000, Hadouken]
type = helper
trigger1 = animelemtime(11) = 1
helpertype = normal
stateno = 1005
ID = 1005
name = "Hadouken"
postype = p1
pos = 86,-55
size.xscale = 0.5
size.yscale = ifelse(var(24) = 3, 0.8, ifelse(var(24) = 2, 0.65, 0.4))
ownpal = 1

[State 1000, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = animelem = 10
value = 1000,0
channel = 0

[State 1000, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = animelem = 10
value = 1000,10
channel = 0

[State 1000, Snd]
type = playsnd
trigger1 = animelemtime(11) = 1
value = 1000,1

[State 1000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;========================<EX HADOU KEN>=============================
[StateDef 1030]
type = S
physics = N
moveType = A
anim = 1000
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1030, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1030, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1030, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1030, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 24

[State 1030, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = ceil(6 * const(size.xScale)), ceil(-70 * const(size.yScale))
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1030, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1000, Anim]
type = changeanim
trigger1 = animelemtime(4) >= 0 && animelemtime(7) < 0
trigger2 = animelemtime(7) >= 0 && animelemtime(10) < 0
trigger3 = AIlevel && animelemtime(2) >= 0 && animelemtime(10) < 0 && p2movetype = A
value = 1000
elem = 10

[State 1000, width]
type = width
trigger1 = animelemtime(10) >= 0 && animelemtime(11) < 0
trigger2 = animelemtime(18) >= 0 && animelemtime(19) < 0
value = 13

[State 1000, width]
type = width
trigger1 = animelemtime(11) >= 0 && animelemtime(18) < 0
value = 26

[State 1000, focus]
type = helper
trigger1 = animelemtime(2) >= 0 && animelemtime(11) < 0 && !numhelper(1002)
helpertype = normal
stateno = 1002
ID = 1002
name = "Hadouken Charge"
postype = p1
ownpal = 1

[State 1000, Hadouken]
type = helper
trigger1 = animelemtime(11) = 1
helpertype = normal
stateno = 1035
ID = 1005
name = "EX Hadouken"
postype = p1
pos = 86,-55
size.xscale = 0.5
size.yscale = 0.45
ownpal = 1

[State 1000, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = animelem = 10
value = 1000,0
channel = 0

[State 1000, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = animelem = 10
value = 1000,10
channel = 0

[State 1000, Snd]
type = playsnd
trigger1 = animelemtime(11) = 1
value = 1000,1

[State 1000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;=====================<TENGYOU HADOU KEN>==========================
[StateDef 1050]
type = S
physics = S
moveType = A
anim = 1020
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1000, hadouvar]
type = varset
trigger1 = animelemtime(4) < 0
var(24) = 1

[State 1000, hadouvar]
type = varadd
trigger1 = animelemtime(2) >= 0 && animelemtime(10) < 0 && var(24) < 3
trigger1 = (var(10) = 0 && command = "x") || (var(10) = 1 && command = "y") || (var(10) = 2 && command = "z")
var(24) = 1

[State 1000, Anim]
type = changeanim
trigger1 = animelemtime(2) >= 0 && animelemtime(4) < 0 && var(24) = 2
value = 1020
elem = 4

[State 1000, Anim]
type = changeanim
trigger1 = animelemtime(4) >= 0 && animelemtime(7) < 0 && var(24) = 3
value = 1020
elem = 7

[State 1000, Anim]
type = changeanim
trigger1 = animelemtime(4) >= 0 && animelemtime(7) < 0 && var(24) != 2
trigger2 = animelemtime(7) >= 0 && animelemtime(10) < 0 && var(24) != 3
trigger3 = AIlevel && animelemtime(2) >= 0 && animelemtime(10) < 0 && p2movetype = A
value = 1020
elem = 10

[State 1000, width]
type = width
trigger1 = animelemtime(10) >= 0 && animelemtime(11) < 0
trigger2 = animelemtime(18) >= 0 && animelemtime(19) < 0
value = 13

[State 1000, width]
type = width
trigger1 = animelemtime(11) >= 0 && animelemtime(18) < 0
value = 26

[State 1020, focus]
type = helper
trigger1 = animelemtime(2) >= 0 && animelemtime(11) < 0 && !numhelper(1024)
helpertype = normal
stateno = 1024
ID = 1024
name = "Hadouken Charge"
postype = p1
ownpal = 1

[State 1000, Hadouken]
type = helper
trigger1 = animelemtime(11) = 1
helpertype = normal
stateno = 1055
ID = 1055
name = "Hadouken"
postype = p1
pos = 58,-105
size.xscale = 0.5
size.yscale = ifelse(var(24) = 3, 0.8, ifelse(var(24) = 2, 0.65, 0.3))
ownpal = 1

[State 1000, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = animelem = 10
value = 1000,0
channel = 0

[State 1000, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = animelem = 10
value = 1000,10
channel = 0

[State 1000, Snd]
type = playsnd
trigger1 = animelemtime(11) = 1
value = 1000,1

[State 1000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;========================<EX TENGYOU HADOU KEN>=============================
[StateDef 1080]
type = S
physics = N
moveType = A
anim = 1020
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1030, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1030, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1030, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1030, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 24

[State 1030, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = p1
pos = ceil(6 * const(size.xScale)), ceil(-70 * const(size.yScale))
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1030, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1000, Anim]
type = changeanim
trigger1 = animelemtime(4) >= 0 && animelemtime(7) < 0
trigger2 = animelemtime(7) >= 0 && animelemtime(10) < 0
trigger3 = AIlevel && animelemtime(2) >= 0 && animelemtime(10) < 0 && p2movetype = A
value = 1020
elem = 10

[State 1000, width]
type = width
trigger1 = animelemtime(10) >= 0 && animelemtime(11) < 0
trigger2 = animelemtime(18) >= 0 && animelemtime(19) < 0
value = 13

[State 1000, width]
type = width
trigger1 = animelemtime(11) >= 0 && animelemtime(18) < 0
value = 26

[State 1020, focus]
type = helper
trigger1 = animelemtime(2) >= 0 && animelemtime(11) < 0 && !numhelper(1024)
helpertype = normal
stateno = 1024
ID = 1024
name = "Hadouken Charge"
postype = p1
ownpal = 1

[State 1000, Hadouken]
type = helper
trigger1 = animelemtime(11) = 1
helpertype = normal
stateno = 1085
ID = 1055
name = "EX Tengyou Hadouken"
postype = p1
pos = 58,-105
size.xscale = 0.5
size.yscale = 0.3
ownpal = 1

[State 1000, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = animelem = 10
value = 1000,0
channel = 0

[State 1000, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = animelem = 10
value = 1000,10
channel = 0

[State 1000, Snd]
type = playsnd
trigger1 = animelemtime(11) = 1
value = 1000,1

[State 1000, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;========================<SHOUOU KEN>=============================
[StateDef 1100]
type = S
physics = N
moveType = A
anim = 1100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1100, Button Detect]
type = VarSet
trigger1 = PrevStateno = 751
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "z" || command = "rlsz"), 1, ifElse((command = "y" || command = "rlsy"), 1, 1))

[State 1100, Button Detect]
type = VarSet
trigger1 = PrevStateno != 751
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))

[State 1100, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 333), 2, ifElse(Random < 500, 1, 0))

[State 1100, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1102, ifElse(var(10) = 1, 1101, 1100))

[State 1100, Vel]
type = velset
trigger1 = (anim = [1100,1102]) && animelem = 2
x = ifelse(var(10) = 2, 8, ifelse(var(10) = 1, 6, 4))

[State 1100, Dust]
type = helper
trigger1 = (anim = [1100,1101]) && animelem = 6
trigger2 = anim = 1102 && animelem = 8
helpertype = normal
stateno = 8100
ID = 8100
name = "Dust"
postype = p1
ownpal = 1

[State 1100, Vel]
type = velset
trigger1 = (anim = [1100,1101]) && animelem = 6
trigger2 = anim = 1102 && animelem = 8
x = ifelse(var(10) = 2, 4, ifelse(var(10) = 1, 3, 2))
y = ifelse(var(10) = 2, -8, ifelse(var(10) = 1, -7, -6))

[State 1100, Vel]
type = velmul
trigger1 = (anim = [1100,1101]) && animelemtime(6) > 0
trigger2 = anim = 1102 && animelemtime(8) > 0
x = 0.95

[State 1100, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
time = 1
value = SCA

[State 1100, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = (anim = [1100,1102]) && animelem = 2
value = 1100,0
channel = 0
ignorehitpause = 1
persistent = 0

[State 1100, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = (anim = [1100,1102]) && animelem = 2
value = 1100,10
channel = 0
ignorehitpause = 1
persistent = 0

[State 1100, Snd]
type = playsnd
trigger1 = (anim = [1100,1101]) && animelem = 6
trigger2 = anim = 1102 && animelem = 8
value = 41,0

[State 1100, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = animelem = 4 && anim = 1100
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 74 < 7, 7, fvar(11) * 74)), 14
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.36, -4), -9
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.36, -8.52)
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(20), -2.36, -4), -9
air.cornerPush.velOff = 0
yAccel = ifElse(var(20),.5,.6)
fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 30), var(36) := -50
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 6 && anim = 1100 && !movecontact && !movereversed
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 58 < 7, 7, fvar(11) * 58)), 14
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 10)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -1.36, -2), -11
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.36, -8.52)
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(20), -1.36, -2), -11
air.cornerPush.velOff = 0
yAccel = ifElse(var(20),.5,.6)
fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 183), var(36) := -92
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = animelem = 4 && (anim = 1101 || anim = 1102)
trigger2 = animelem = 5 && (anim = 1101 || anim = 1102)
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 22, ifElse(var(10), 32, 42)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 22, ifElse(var(10), 32, 42)))), 10
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 6), ifElse(var(20), 6, 6)
guard.pauseTime = ifElse(var(20), 6, 6), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 21
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.36, -4), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.36, -4.52)
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(20), -2.36, -4), -8
air.cornerPush.velOff = 0
yAccel = ifElse(var(20),.5,.6)
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 117), var(36) := -51
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef 4]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 6 && anim = 1101
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 24, ifElse(var(10), 34, 44)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 24, ifElse(var(10), 34, 44)))), 10
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 6), ifElse(var(20), 6, 5)
guard.pauseTime = ifElse(var(20), 6, 6), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.36, -4), -10
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.36, -4.52)
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(20), -2.36, -4), -10
air.cornerPush.velOff = 0
yAccel = ifElse(var(20),.5,.6)
fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 183), var(36) := -112
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef 5]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 6 && anim = 1102
trigger2 = AnimElem = 7 && anim = 1102
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 26, ifElse(var(10), 36, 46)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 26, ifElse(var(10), 36, 46)))), 10
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 6), ifElse(var(20), 6, 6)
guard.pauseTime = ifElse(var(20), 6, 6), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 21
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.36, -4), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.36, -4.52)
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(20), -2.36, -4), -8
air.cornerPush.velOff = 0
yAccel = ifElse(var(20),.5,.6)
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 143), var(36) := -62
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef 6]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 7 && anim = 1101
trigger2 = AnimElem = 8 && anim = 1102
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10) = 2, 26, ifElse(var(10), 36, 46)) < 7, 7, fvar(11) * ifElse(var(10) = 2, 26, ifElse(var(10), 36, 46)))), 10
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 6), ifElse(var(20), 6, 5)
guard.pauseTime = ifElse(var(20), 6, 6), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.36, -4), -11
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.36, -8.52)
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(20), -2.36, -4), -11
air.cornerPush.velOff = 0
yAccel = ifElse(var(20),.5,.6)
fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 183), var(36) := -92
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, statetype]
type = statetypeset
trigger1 = anim = 1100 && animelemtime(6) >= 0
trigger2 = anim = 1101 && animelemtime(6) >= 0
trigger3 = anim = 1102 && animelemtime(8) >= 0
statetype = A
physics = A

[State 1100, Anim]
type = changeanim
trigger1 = anim = 1100 && animelemtime(6) > 0 && vel y > -2
trigger2 = anim = 1101 && animelemtime(6) > 0 && vel y > -3
trigger3 = anim = 1102 && animelemtime(8) > 0 && vel y > -4
value = 1103

[State Idle]
type = statetypeset
trigger1 = anim = 1103
movetype = I

[State 1100, End]
type = changestate
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 1104

;Landing
[Statedef 1104]
type = S
physics = N
movetype = I
ctrl = 0
anim = 1104
velset = 0,0
sprpriority = 1
movehitpersist = 1

[State 1104, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1104, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1104, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1104, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--- BREAK ---
[Statedef 1112]
type = S
physics = S
movetype = I
anim = 1112
ctrl = 0
sprpriority = 1

[State 1112, snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = animelem = 2
value = 820,0
channel = 0
persistent = 0

[State 1112, snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = animelem = 2
value = 820,10
channel = 0
persistent = 0

[State 1112, snd]
type = playsnd
trigger1 = animelem = 2
value = 101,0
persistent = 0

[State 1112, dust]
type = explod
trigger1 = animelem = 2
anim = 8104
ID = 8104
sprpriority = 3
postype = p1
pos = 18,0
vel = 2,0
scale = 0.5,0.5
removetime = -2
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 1112, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;--- JUMP BACK ---
[Statedef 1113]
type = A
physics = A
movetype = I
anim = 43
ctrl = 0
velset = -1.5,-10
sprpriority = 1

[State 1113, snd]
type = playsnd
trigger1 = !time
value = 40,0

[State 1113, dust]
type = helper
trigger1 = !time
helpertype = normal
stateno = 8100
ID = 8100
name = "Dust"
postype = p1
ownpal = 1

[State 1113, snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = !time && prevstateno = 3450
value = 820,0
channel = 0

[State 1113, snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = !time && prevstateno = 3450
value = 820,10
channel = 0

;========================<EX SHOUOU KEN>=============================
[StateDef 1130]
type = S
physics = N
moveType = A
anim = 1110
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1130, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1130, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1130, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 71

[State 1130, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = ceil(0 * const(size.xScale)), ceil(-120 * const(size.yScale))
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1130, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
time = 1
value = SCA

[State 1130, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1110, Vel]
type = velset
trigger1 = anim = 1110 && animelem = 2 && var(40) = 0
x = 1.25 * const(velocity.run.fwd.x)
[State 1110, Vel]
type = velset
trigger1 = anim = 1110 && animelem = 2 && var(40) = 1
x = 1.45 * const(velocity.run.fwd.x)

[State 1110, steps]
type = playsnd
trigger1 = anim = 1110
trigger1 = animelem = 4 || animelem = 7
value = 100,0

[State 1110, shield]
type = helper
trigger1 = anim = 1110 && animelem = 2
helpertype = normal
stateno = 1115
ID = 1115
name = "Projectile Shield"
postype = p1
ownpal = 1

[State 1110, snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = anim = 1110 && animelem = 2
value = 1100,1
channel = 0
ignorehitpause = 1
persistent = 0

[State 1110, snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = anim = 1110 && animelem = 2
value = 1100,11
channel = 0
ignorehitpause = 1
persistent = 0

[State 1100, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = animelem = 2 && anim = 1110
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 25 < 7, 7, fvar(11) * 25)), 10
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 6), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 6), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 21
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
air.velocity = -4, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.52
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = .6
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 117), var(36) := -55
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1110, Anim]
type = changeanim
trigger1 = anim = 1110 && animelemtime(2) >= 0 && movehit
value = 1111

[State 1100, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = (animelem = 2 || animelem = 4) && anim = 1111
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 25 < 7, 7, fvar(11) * 25)), 10
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 6), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 6), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 21
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.52
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = .6
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 117), var(36) := ifelse((animelem = 4), -61, -30)
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = (animelem = 1 || animelem = 3) && anim = 1111
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 25 < 7, 7, fvar(11) * 25)), 10
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 6), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 6), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 21
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.52
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = .6
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 117), var(36) := ifelse((animelem = 5), -61, -30)
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef 4]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = animelem = 5 && anim = 1111
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 25 < 7, 7, fvar(11) * 25)), 10
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 6), ifElse(var(20), 6, 5)
guard.pauseTime = ifElse(var(20), 6, 6), ifElse(var(20), 6, 12)
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2, -12
ground.cornerPush.velOff = 0
guard.velocity = -4.52
guard.cornerPush.velOff = 0
air.velocity = -2, -12
air.cornerPush.velOff = 0
yAccel = .6
fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 117), var(36) := -92
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1110, statetype]
type = statetypeset
trigger1 = anim = 1111
statetype = S
physics = S

[State 1110, missed]
type = changestate
trigger1 = anim = 1110 && animelemtime(2) >= 0 && !movehit
trigger1 = time >= 40
value = 1112

[State 1110, guarded]
type = changestate
trigger1 = anim = 1110 && animelemtime(2) >= 0 && moveguarded
value = 1113

[State Idle]
type = statetypeset
trigger1 = anim = 1111 && animelemtime(6) >= 0
movetype = I

[State 1110, End]
type = changestate
trigger1 = anim = 1111 && !animtime
value = 0
ctrl = 1

;Finish
[Statedef 1131]
type = S
movetype = A
physics = N
anim = 1102
velset = 0,0
ctrl = 0

[State 1100, Vel]
type = velset
trigger1 = anim = 1102 && animelem = 2
x = 4

[State 1100, Snd]
type = playsnd
trigger1 = anim = 1102 && animelem = 8
value = 41,0

[State 1100, Dust]
type = helper
trigger1 = anim = 1102 && animelem = 8
helpertype = normal
stateno = 8100
ID = 8100
name = "Dust"
postype = p1
ownpal = 1

[State 1100, Vel]
type = velset
trigger1 = anim = 1102 && animelem = 8
x = 4
y = -8

[State 1100, Vel]
type = velmul
trigger1 = anim = 1102 && animelemtime(8) > 0
x = 0.95

[State 1100, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = anim = 1102 && animelem = 2
value = 1100,0
channel = 0
ignorehitpause = 1
persistent = 0

[State 1100, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = anim = 1102 && animelem = 2
value = 1100,10
channel = 0
ignorehitpause = 1
persistent = 0

[State 1100, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = animelem = 6 && anim = 1102
trigger2 = animelem = 7 && anim = 1102
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 10
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 6), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 6), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 21
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.52
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = .6
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 117), var(36) := -61
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = animelem = 4 && anim = 1102
trigger2 = animelem = 5 && anim = 1102
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 18 < 7, 7, fvar(11) * 18)), 10
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 6), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 6), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 21
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4, 0
ground.cornerPush.velOff = 0
guard.velocity = -4.52
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = .6
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 117), var(36) := -51
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 8 && anim = 1102
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 18 < 7, 7, fvar(11) * 18)), 10
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 6), ifElse(var(20), 6, 6)
guard.pauseTime = ifElse(var(20), 6, 6), ifElse(var(20), 6, 12)
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4, -10
ground.cornerPush.velOff = 0
guard.velocity = -4.52
guard.cornerPush.velOff = 0
air.velocity = -4, -10
air.cornerPush.velOff = 0
yAccel = .6
fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 113), var(36) := -92
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef 4]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 9 && anim = 1102
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 18 < 7, 7, fvar(11) * 18)), 10
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 6), ifElse(var(20), 6, 5)
guard.pauseTime = ifElse(var(20), 6, 6), ifElse(var(20), 6, 12)
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4, -12
ground.cornerPush.velOff = 0
guard.velocity = -4.52
guard.cornerPush.velOff = 0
air.velocity = -4, -12
air.cornerPush.velOff = 0
yAccel = .6
fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 113), var(36) := -102
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, statetype]
type = statetypeset
trigger1 = anim = 1102 && animelemtime(8) >= 0
statetype = A
physics = A

[State 1100, Anim]
type = changeanim
trigger1 = anim = 1102 && animelemtime(8) > 0 && vel y > -4
value = 1103

[State Idle]
type = statetypeset
trigger1 = anim = 1103
movetype = I

[State 1100, End]
type = changestate
trigger1 = anim = 1103 && Pos Y >= 0 && Vel Y > 0
value = 1134

;Landing
[Statedef 1134]
type = S
physics = N
movetype = I
ctrl = 0
anim = 1104
velset = 0,0
sprpriority = 1
movehitpersist = 1

[State 1104, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1104, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1104, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1104, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;========================<SHUNPUU KYAKU>=============================
[StateDef 1200]
type = S
physics = S
moveType = A
anim = 1200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1100, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))

[State 1100, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 333), 2, ifElse(Random < 500, 1, 0))

[State 1100, ChangeAnim]
type = ChangeAnim
trigger1 = anim = 1200 && !animtime
value = ifElse(var(10) = 2, 1203, ifElse(var(10) = 1, 1202, 1201))

[State 1200, shunpuuvar]
type = varset
triggerall = (anim = [1202,1203]) && var(40) = [0,1]
trigger1 = !AIlevel && command = "a" || command = "b"  || command = "c"
trigger2 = AIlevel && random < 100
var(43) = 1
ignorehitpause = 1

[State 1200, shunpuuvar]
type = varset
triggerall = (anim = [1202,1203]) && var(40) = [0,1]
trigger1 = !AIlevel && command = "a+b" || command = "b+c" || command = "a+c"
trigger2 = AIlevel && random < 100
var(43) = 2
ignorehitpause = 1

[State 1200, shunpuuvar]
type = varset
trigger1 = (anim != [1201,1203])
trigger2 = AIlevel && (p2dist x < 0 || p2dist y <= -120)
var(43) = 0

[State 1200, End]
type = changestate
trigger1 = (anim = [1201,1203]) && vel y > 0 && pos y >= 0 && var(43)
value = ifelse((var(43) = 2 && power >= 500 && !var(20)), 1240, 1220)

[State 1200, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = anim = 1200 && animelem = 5
value = 1200,0
channel = 0

[State 1200, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = anim = 1200 && animelem = 5
value = 1200,10
channel = 0

[State 1200, Snd]
type = playsnd
trigger1 = anim = 1200 && !animtime
value = 41,0
persistent = 0

[State 1200, Dust]
type = helper
trigger1 = (anim = [1201,1203]) && animelem = 1
helpertype = normal
stateno = 8100
ID = 8100
name = "Dust"
postype = p1
ownpal = 1
persistent = 0

[State 1200, Vel]
type = velset
trigger1 = (anim = [1201,1203]) && animelem = 1
x = ifelse(var(10) = 2, 5.5, ifelse(var(10) = 1, 4.5, 3.5))
y = ifelse(var(10) = 2, -8, ifelse(var(10) = 1, -6, -4.2))

[State 1200, statetype]
type = statetypeset
trigger1 = (anim = [1201,1203])
statetype = A
physics = N

[State 1200, Accel]
type = veladd
trigger1 = (anim = [1201,1203])
y = 0.6

[State 1200, spin]
type = playsnd
trigger1 = (anim = [1201,1203])
trigger1 = animelem = 2 || animelem = 6 || animelem = 10
value = 1,5

[State 1100, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1 = animelem = 3 || animelem = 7 || animelem = 11 && (anim = 1202 || anim = 1203)
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 37 < 7, 7, fvar(11) * 37)), 15
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
airGuard.ctrlTime = 16
ground.velocity = ifElse(var(20), -4.36, -8.52), 0
ground.cornerPush.velOff = ifElse(var(20), -4.36, -8.52)
guard.velocity = ifElse(var(20), -4.36, -8.52)
guard.cornerPush.velOff = ifElse(var(20), -4.36, -8.52)
air.velocity = ifElse(var(20), -2.36, -4), -8
air.cornerPush.velOff = 0
airguard.velocity = -5, -1.5
airguard.cornerPush.velOff = 0
yAccel = ifElse(var(20),.5,.6)
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
ID = 1200
nochainID = 1201
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 77), var(36) := -44
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1 = animelem = 3 && anim = 1201
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 78 < 7, 7, fvar(11) * 78)), 15
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.36, -4), -8
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.36, -8.52)
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(20), -2.36, -4), -8
air.cornerPush.velOff = 0
yAccel = ifElse(var(20),.5,.6)
fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
ID = 1200
nochainID = 1201
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 77), var(36) := -44
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1 = animelem = 5 || animelem = 9 && (anim = 1202 || anim = 1203)
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 37 < 7, 7, fvar(11) * 37)), 15
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
airGuard.ctrlTime = 16
ground.velocity = ifElse(var(20), -4.36, -8.52), 0
ground.cornerPush.velOff = ifElse(var(20), -4.36, -8.52)
guard.velocity = ifElse(var(20), -4.36, -8.52)
guard.cornerPush.velOff = ifElse(var(20), -4.36, -8.52)
air.velocity = ifElse(var(20), -2.36, -4), -8
air.cornerPush.velOff = 0
airguard.velocity = -5, -1.5
airguard.cornerPush.velOff = 0
yAccel = ifElse(var(20),.5,.6)
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
ID = 1200
nochainID = 1201
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 77), var(36) := -44
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, End]
type = changeanim
trigger1 = (anim = [1201,1203]) && vel y > 0 && pos y >= 0
value = ifelse(var(40) = 1, 1206, 1205)

[State 1200, Vel]
type = velset
trigger1 = anim = 1205 || anim = 1206
x = 0
y = 0

[State 1200, Pos]
type = posset
trigger1 = anim = 1205 || anim = 1206
y = 0

[State 1200, statetype]
type = statetypeset
trigger1 = anim = 1205 || anim = 1206
statetype = S
physics = S

[State 1200, Snd]
type = playsnd
trigger1 = anim = 1205 || anim = 1206
value = 52,0
persistent = 0

[State 1200, Dust]
type = explod
trigger1 = anim = 1205 || anim = 1206
anim = 8102
ID = 8102
sprpriority = -2
postype = p1
scale = 0.5,0.5
ownpal = 1
persistent = 0
pausemovetime = -1
supermovetime = -1

[State Idle]
type = statetypeset
trigger1 = (anim = 1205 || anim = 1206)
movetype = I

[State 1200, End]
type = changestate
trigger1 = (anim = 1205 || anim = 1206) && !animtime
value = 0
ctrl = 1

[State 1100, End]
type = null;changestate
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 1205

;Landing
[Statedef 1205]
type = S
physics = N
movetype = I
ctrl = 0
anim = 1205
velset = 0,0
sprpriority = 1
movehitpersist = 1

[State 1205, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1205, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1205, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1205, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;======================<SHUNPUU REN KYAKU>=============================
[Statedef 1220]
type = S
physics = S
movetype = A
anim = 1220
ctrl = 0
velset = 0,0
sprpriority = 1

[State 1220, shunpuuvar]
type = varset
trigger1 = var(43)
var(43) = 0

[State 1220, width]
type = width
trigger1 = animelemtime(2) >= 0 && animelemtime(6) < 0
value = 25,0

[State 1220, Snd]
type = playsnd
trigger1 = time = 1
value = 52,0

[State 1220, Dust]
type = explod
trigger1 = !time
anim = 8102
ID = 8102
sprpriority = -2
postype = p1
pos = 15,0
scale = 0.5,0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 1220, Stop]
type = velset
trigger1 = 1
y = 0

[State 1220, Pos]
type = posset
trigger1 = 1
y = 0

[State 1220, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = animelem = 4
value = 4,2
channel = 0

[State 1220, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = animelem = 4
value = 4,12
channel = 0

[State 1220, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1,5

[State 1100, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 6 || var(20))
trigger1 = animelem = 4
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 50 < 7, 7, fvar(11) * 50)), 12
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.36, -4), -8
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.36, -8.52)
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(20), -2.36, -4), -8
air.cornerPush.velOff = 0
yAccel = ifElse(var(20),.5,.6)
fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 117), var(36) := -57
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I

[State 1220, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;========================<EX SHUNPUU KYAKU>=============================
[StateDef 1230]
type = S
physics = S
moveType = A
anim = 1200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1130, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1130, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1130, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 71

[State 1130, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = ceil(17 * const(size.xScale)), ceil(-85 * const(size.yScale))
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1130, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1200, shunpuuvar]
type = varset
triggerall = anim = 1210 && var(40) = [0,1]
trigger1 = !AIlevel && command = "a" || command = "b" || command = "c"
trigger2 = AIlevel && random < 100
var(43) = 1
ignorehitpause = 1

[State 1200, shunpuuvar]
type = varset
triggerall = anim = 1210 && var(40) = [0,1]
trigger1 = !AIlevel && command = "a+b" || command = "b+c" || command = "a+c"
trigger2 = AIlevel && random < 100
var(43) = 2
ignorehitpause = 1

[State 1200, shunpuuvar]
type = varset
trigger1 = anim != 1210
trigger2 = AIlevel && (p2dist x < 0 || p2dist y <= -120)
var(43) = 0

[State 1200, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && var(40) = 0
value = 1203

[State 1200, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 5
time = 1
value = SCA

[State 1200, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = anim = 1203 && animelem = 3
value = 1200,0
channel = 0

[State 1200, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = anim = 1203 && animelem = 3
value = 1200,10
channel = 0

[State 1200, Snd]
type = playsnd
trigger1 = anim = 1203 && !animtime
value = 40,0
persistent = 0

[State 1200, Dust]
type = helper
trigger1 = anim = 1203 && animelem = 1
helpertype = normal
stateno = 8100
ID = 8100
name = "Dust"
postype = p1
ownpal = 1
persistent = 0

[State 1200, Vel]
type = velset
trigger1 =  anim = 1203 && animelem = 1 
x = 6
y = -8

[State 1200, statetype]
type = statetypeset
trigger1 = anim = 1203
statetype = A
physics = N

[State 1200, Accel]
type = veladd
trigger1 = anim = 1203
y = 0.6

[State 1200, spin]
type = playsnd
trigger1 = anim = 1203
trigger1 = animelem = 2 || animelem = 6 || animelem = 10
value = 1,5

[State 1100, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = animelem = 3 || animelem = 7 || animelem = 11
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 37 < 7, 7, fvar(11) * 37)), 10
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 21
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -8.52
ground.cornerPush.velOff = -8
guard.velocity = -8.52
guard.cornerPush.velOff = -8
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = .6
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
ID = 1200
nochainID = 1201
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 77), var(36) := -44
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = animelem = 5 || animelem = 9
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 10
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 21
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -8.52
ground.cornerPush.velOff = -8
guard.velocity = -8.52
guard.cornerPush.velOff = -8
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = .6
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
ID = 1200
nochainID = 1201
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 77), var(36) := -44
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, End]
type = changeanim
trigger1 = anim = 1203 && vel y > 0 && pos y >= 0
value = 1206

[State 1200, Vel]
type = velset
trigger1 = anim = 1206
x = 4
y = 0

[State 1200, Pos]
type = posset
trigger1 = anim = 1206
y = 0

[State 1200, statetype]
type = statetypeset
trigger1 = anim = 1206
statetype = S
physics = S

[State 1200, Snd]
type = playsnd
trigger1 = anim = 1206
value = 52,0
persistent = 0

[State 1200, Dust]
type = explod
trigger1 = anim = 1206
anim = 8102
ID = 8102
sprpriority = -2
postype = p1
scale = 0.5,0.5
ownpal = 1
persistent = 0
pausemovetime = -1
supermovetime = -1

[State Idle]
type = statetypeset
trigger1 = anim = 1206
movetype = I

[State 1200, End]
type = changestate
trigger1 = anim = 1206 && !animtime
value = 1231
ctrl = 1

[State 1210, snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = anim = 1200 && animelem = 5
value = 1200,0
channel = 0

[State 1210, snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = anim = 1200 && animelem = 5
value = 1200,10
channel = 0

[State 1210, snd]
type = playsnd
trigger1 = anim = 1200 && !animtime && var(40) = [0,1]
value = 40,0
persistent = 0

[State 1210, dust]
type = helper
trigger1 = anim = 1200 && !animtime && var(40) = [0,1]
helpertype = normal
stateno = 8100
ID = 8100
name = "Dust"
postype = p1
ownpal = 1
persistent = 0

[State 1210, Anim]
type = changeanim
triggerall = var(40) = [0,1]
trigger1 = anim = 1200 && !animtime
value = 1210

[State 1210, Vel]
type = velset
trigger1 = anim = 1210 && animelem = 1
x = 6
y = -12


[State 1210, statetype]
type = statetypeset
trigger1 = anim = 1210
statetype = A
physics = N

[State 1210, Accel]
type = veladd
trigger1 = anim = 1210
y = 0.6

[State 1210, spin]
type = playsnd
trigger1 = anim = 1210
trigger1 = animelem = 2 || animelem = 6 || animelem = 10 || animelem = 14 || animelem = 18
value = 1,4

[State 1100, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1 = anim = 1210 && (animelem = 3 || animelem = 7 || animelem = 11 || animelem = 15 || animelem = 19) && (hitcount < 5)
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 36 < 7, 7, fvar(11) * 36)), 10
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -8.52, -8
ground.cornerPush.velOff = -8
guard.velocity = -8.52
guard.cornerPush.velOff = -8
air.velocity = -4, -8.8
air.cornerPush.velOff = 0
yAccel = .5
fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
nochainID = 1201
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 77), var(36) := -44
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1 = anim = 1210 && (animelem = 5 || animelem = 9 || animelem = 13 || animelem = 17) && (hitcount < 5)
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 10
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -8.52
ground.cornerPush.velOff = -8
guard.velocity = -8.52
guard.cornerPush.velOff = -8
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = .6
air.fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
nochainID = 1201
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 77), var(36) := -44
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1210, End]
type = changestate
trigger1 = anim = 1210 && vel y > 0 && pos y >= 0 && var(43)
value = ifelse((var(43) = 2 && power >= 500 && !var(20)), 1240, 1220)

[State 1210, End]
type = changeanim
trigger1 = anim = 1210 && vel y > 0 && pos y >= 0
value = 1205

[State 1210, Vel]
type = velset
trigger1 = anim = 1205
x = 0
y = 0

[State 1210, Pos]
type = posset
trigger1 = anim = 1205
y = 0

[State 1210, statetype]
type = statetypeset
trigger1 = anim = 1205
statetype = S
physics = S

[State 1210, snd]
type = playsnd
trigger1 = anim = 1205
value = 52,0
persistent = 0

[State 1210, dust]
type = explod
trigger1 = anim = 1205
anim = 8102
ID = 8102
sprpriority = -2
postype = p1
scale = 0.5,0.5
ownpal = 1
persistent = 0
pausemovetime = -1
supermovetime = -1

[State Idle]
type = statetypeset
trigger1 = anim = 1205
movetype = I

[State 1210, End]
type = changestate
trigger1 = anim = 1205 && !animtime
value = 0
ctrl = 1

;Finish
[Statedef 1231]
type = S
movetype = A
physics = N
velset = 0,0
ctrl = 0
anim = 1230

[State 0, PlaySnd]
type = PlaySnd
trigger1 = animelem = 1
value = 1,5

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(40) = 0
trigger1 = animelem = 1
value = 4,3
channel = 0

[State 0, PlaySnd]
type = PlaySnd
triggerall = var(40) = 1
trigger1 = animelem = 1
value = 4,13
channel = 0

[State 1100, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 10 || var(20))
trigger1 = Time = 0
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 34 < 7, 7, fvar(11) * 34)), 12
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -1.82, -12
ground.cornerPush.velOff = 0
guard.velocity = -8.52
guard.cornerPush.velOff = 0
air.velocity = -1.82, -12
air.cornerPush.velOff = 0
yAccel = .6
fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
ID = 1200
nochainID = 1201
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 77), var(36) := -75
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 105, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pos = 20,5
facing = -1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 0, VelSet]
type = VelSet
trigger1 = time >= 2
x = 4

[State 0, VelSet]
type = VelSet
trigger1 = time >= 5
x = 2

[State 0, VelSet]
type = VelSet
trigger1 = time >= 7
x = 0

[State 0,ChangeState]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;========================<EX SHUNPUU REN KYAKU>=============================
[StateDef 1240]
type = S
physics = S
moveType = A
anim = 1220
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1130, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1130, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1130, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 71

[State 1130, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = ceil(17 * const(size.xScale)), ceil(-85 * const(size.yScale))
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1130, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1230, shunpuuvar]
type = varset
trigger1 = var(43)
var(43) = 0

[State 1230, width]
type = width
trigger1 = animelemtime(2) >= 0 && animelemtime(6) < 0
value = 25,0

[State 1230, snd]
type = playsnd
trigger1 = time = 1
value = 52,0

[State 1230, dust]
type = explod
trigger1 = !time
anim = 8102
ID = 8102
sprpriority = -2
postype = p1
pos = 15,0
scale = 0.5,0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 1230, Stop]
type = velset
trigger1 = 1
y = 0

[State 1230, Pos]
type = posset
trigger1 = 1
y = 0

[State 1230, snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = animelem = 4
value = 4,2
channel = 0

[State 1230, snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = animelem = 4
value = 4,12
channel = 0

[State 1230, snd]
type = playsnd
trigger1 = animelem = 4
value = 1,5

[State 1100, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1 = animelem = 4
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 38 < 7, 7, fvar(11) * 38)), 12
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -15, -6
ground.cornerPush.velOff = 0
guard.velocity = -8.52
guard.cornerPush.velOff = 0
air.velocity = -15, -6
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
ID = 1240
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 77), var(36) := -57
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1230, p2state]
type = targetstate
trigger1 = movehit && numtarget(1240)
trigger1 = (target(1240), stateno = 5000) || (target(1240), stateno = 5010) || (target(1240), stateno = 5020)
value = 1235
ID = 1240
ignorehitpause = 1

[State Idle]
type = statetypeset
trigger1 = animelemtime(5) >= 0
movetype = I

[State 1230, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;========================<KICKED BY EX SHUNPUU R.K.>=============================
;--- Hit Pause ---
[Statedef 1235]
type = A
movetype = H
physics = N
velset = 0,0

[State 1235, Anim]
type = changeanim
trigger1 = 1
value = 5012

[State 1235, End]
type = changestate
trigger1 = hitshakeover
value = 1236

;--- Falling ---
[Statedef 1236]
type = A
movetype = H
physics = N

[State 1236, Vel]
type = hitvelset
trigger1 = !time
x = 1
y = 1

[State 1236, Accel]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[State 1236, screen]
type = null;screenbound
trigger1 = 1
value = 1
movecamera = 0,1

[State 1236, Push]
type = playerpush
trigger1 = 1
value = 0

[State 1236, Anim]
type = changeanim
trigger1 = !time
value = 5030

[State 1236, bounce]
type = changestate
trigger1 = backedgebodydist <= 10 || frontedgebodydist <= 10
value = 1237

[State 1236, End]
type = selfstate
trigger1 = vel y > 0 && pos y >= 0
value = 5100

;--- Hitting Wall ---
[Statedef 1237]
type = A
movetype = H
physics = N

[State 1237, turn]
type = turn
trigger1 = !time
trigger1 = frontedgedist < backedgedist

[State 1237, Pos]
type = posset
trigger1 = 1
x = -160 * facing

[State 1237, Pos]
type = posfreeze
trigger1 = 1
x = 1
y = 1

[State 1237, envshake]
type = envshake
trigger1 = !time
time = 14
ampl = 6
ignorehitpause = 1

[State 1237, screen]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0,1

[State 1237, Push]
type = playerpush
trigger1 = 1
value = 1

[State 1237, Anim]
type = changeanim
trigger1 = 1
value = 5000

[State 1237, snd]
type = playsnd
trigger1 = !time
value = f8,0

[State 1237, End]
type = changestate
trigger1 = time >= 4
value = 1238

;--- Falling ---
[Statedef 1238]
type = A
movetype = H
physics = N

[State 1238, turn]
type = turn
trigger1 = !time

[State 1238, Accel]
type = veladd
trigger1 = 1
y = 0.5

[State 1238, Vel]
type = velset
trigger1 = !time
x = -4
y = -9.5

[State 1238, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5051), 5051, 5030)

[State 1238, Anim]
type = changeanim
trigger1 = anim = 5030 && !animtime
value = 5050

[State 1238, Anim]
type = changeanim
trigger1 = vel y > -3 && anim = 5051
value = 5061

[State 1238, screen]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0,0

[State 1238, Push]
type = playerpush
trigger1 = 1
value = 0

[State 1238, End]
type = selfstate
trigger1 = vel y > 0 && pos y >= 0
value = 5100

;========================<KUUCHUU SHUNPUU KYAKU>=============================
[StateDef 1250]
type = A
physics = N
moveType = A
anim = 1250
ctrl = 0
velSet = (vel x) + ifelse(vel x >= 0, 1, -1), (vel y) -1
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1100, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))

[State 1100, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 333), 2, ifElse(Random < 500, 1, 0))

[State 1200, shunpuuvar]
type = varset
triggerall = animelemtime(3) >= 0 && var(40) = [0,1]
trigger1 = !AIlevel && command = "ShinpuuKiaku"
trigger2 = AIlevel && random < 300
var(43) = 1
ignorehitpause = 1

[State 1200, shunpuuvar]
type = varset
triggerall = animelemtime(3) >= 0 && var(40) = [0,1]
trigger1 = !AIlevel && command = "EXShinpuuKiaku"
trigger2 = AIlevel && random < 300
var(43) = 2
ignorehitpause = 1

[State 1260, shunpuuvar]
type = varset
trigger1 = animelemtime(11) >= 0 && var(43)
var(43) = -1
ignorehitpause = 1

[State 1200, shunpuuvar]
type = varset
trigger1 = animelemtime(3) < 0
trigger2 = AIlevel && (p2dist x < 0 || p2dist y <= -120)
var(43) = 0

[State 1250, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = animelem = 1
value = 4,3
channel = 0

[State 1250, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = animelem = 1
value = 4,13
channel = 0

[State 1250, Accel]
type = veladd
trigger1 = animelemtime(11) < 0
y = const(movement.yaccel) * 0.66

[State 1250, Accel]
type = gravity
trigger1 = animelemtime(11) >= 0

[State 1250, spin]
type = playsnd
trigger1 = animelem = 3 || animelem = 7
value = 1,5

[State 1100, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1 = animelem = 4 || animelem = 8 && !movecontact && !movereversed
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 78 < 7, 7, fvar(11) * 78)), 15
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
airGuard.ctrlTime = 16
ground.velocity = ifElse(var(20), -4.36, -4), -8
ground.cornerPush.velOff = ifElse(var(20), -4.36, -8.52)
guard.velocity = ifElse(var(20), -4.36, -8.52)
guard.cornerPush.velOff = ifElse(var(20), -4.36, -8.52)
air.velocity = ifElse(var(20), -2.36, -4), -8
air.cornerPush.velOff = 0
airguard.velocity = -5, -1.5
airguard.cornerPush.velOff = 0
yAccel = ifElse(var(20),.5,.6)
fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 77), var(36) := -44
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1 = animelem = 6 && !movecontact && !movereversed
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 78 < 7, 7, fvar(11) * 78)), 15
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
airGuard.ctrlTime = 16
ground.velocity = ifElse(var(20), -4.36, -4), -8
ground.cornerPush.velOff = ifElse(var(20), -4.36, -8.52)
guard.velocity = ifElse(var(20), -4.36, -8.52)
guard.cornerPush.velOff = ifElse(var(20), -4.36, -8.52)
air.velocity = ifElse(var(20), -2.36, -4), -8
air.cornerPush.velOff = 0
airguard.velocity = -5, -1.5
airguard.cornerPush.velOff = 0
yAccel = ifElse(var(20),.5,.6)
fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 77), var(36) := -44
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1250, posfix]
type = posadd
trigger1 = animelem = 11
x = 10
y = -5

[State 1250, statetype]
type = statetypeset
trigger1 = animelemtime(9) >= 0
movetype = I

[State 1250, End]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = ifelse(var(43) = -1, 1252, 1104)

;--- TRIP ---
[Statedef 1252]
type = S
physics = S
movetype = I
anim = 1252
ctrl = 0
velset = 0,0
sprpriority = 1

[State 1252, Pos]
type = posset
trigger1 = 1
y = 0

[State 1252, statetype]
type = statetypeset
trigger1 = animelemtime(4) >= 0 && animelemtime(7) < 0
statetype = A
physics = S

[State 1252, statetype]
type = statetypeset
trigger1 = animelemtime(7) >= 0 && animelemtime(12) < 0
statetype = L
physics = C

[State 1252, statetype]
type = statetypeset
trigger1 = animelemtime(12) >= 0 && animelemtime(15) < 0
statetype = C
physics = C

[State 1252, statetype]
type = statetypeset
trigger1 = animelemtime(15) >= 0
statetype = S
physics = S

[State 1252, Snd]
type = playsnd
trigger1 = animelem = 4
value = 5000,0
channel = 0

[State 1252, Snd]
type = playsnd
trigger1 = animelem = 7
value = 820,1

[State 1252, Dust]
type = explod
trigger1 = animelem = 7
anim = 8102
ID = 8102
sprpriority = -4
postype = p1
pos = -15,0
scale = 0.5,0.5
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 1252, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;========================<EX KUUCHUU SHUNPUU KYAKU>=============================
[StateDef 1280]
type = A
physics = N
moveType = A
anim = 1260
ctrl = 0
velSet = (vel x) + ifelse(vel x >= 0, 2, -2), (vel y) -2
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1130, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1130, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1130, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 31

[State 1130, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = ceil(17 * const(size.xScale)), ceil(-85 * const(size.yScale))
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1130, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1260, snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = animelem = 4
value = 4,3
channel = 0

[State 1260, snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = animelem = 4
value = 4,13
channel = 0

[State 1260, Accel]
type = veladd
trigger1 = animelemtime(15) < 0 && vel y > -2
y = -const(movement.yaccel) * 0.5

[State 1260, Accel]
type = gravity
trigger1 = 1

[State 1260, spin]
type = playsnd
trigger1 = animelem = 3 || animelem = 7 || animelem = 11
value = 1,5

[State 1100, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1 = animelem = 4 || animelem = 8 || animelem = 12
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 58 < 7, 7, fvar(11) * 58)), 15
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
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
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 77), var(36) := -44
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1 = animelem = 6 || animelem = 10
attr = A, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 58 < 7, 7, fvar(11) * 58)), 15
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
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
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 77), var(36) := -44
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1260, posfix]
type = posadd
trigger1 = animelem = 15
x = 10
y = -5

[State 1260, statetype]
type = statetypeset
trigger1 = animelemtime(13) >= 0
movetype = I

[State 1260, End]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = ifelse(var(43) = -1, 1252, 1104)

;========================<SAKURA OTOSHI>=============================
[StateDef 1300]
type = U
physics = U
moveType = A
anim = 40
ctrl = 0
velSet = vel x * (prevstateno = 1305), vel y * (prevstateno = 1305)
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1100, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))

[State 1100, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 333), 2, ifElse(Random < 500, 1, 0))

[State 1300, Anim]
type = changeanim
trigger1 = !time && prevstateno = 1305
value = 1300
elem = 3

[State 1300, otoshivar]
type = varset
trigger1 = !time && (prevstateno != [1300,1305])
var(37) = 0

[State 1300, Vel]
type = velset
trigger1 = anim = 40 && !animtime
x = ifelse(var(10) = 2, 3.5, ifelse(var(10) = 1, 3, 2.5))
y = ifelse(var(10) = 2, -9, ifelse(var(10) = 1, -7, -5))

[State 1300, Snd]
type = playsnd
trigger1 = anim = 40 && !animtime
value = 41,0
persistent = 0

[State 1300, Dust]
type = helper
trigger1 = anim = 40 && !animtime
helpertype = normal
stateno = 8100
ID = 8100
name = "Dust"
postype = p1
ownpal = 1
persistent = 0

[State 1300, Anim]
type = changeanim
trigger1 = anim = 40 && !animtime
value = 1300

[State 1300, statetype]
type = statetypeset
trigger1 = anim = 1300
statetype = A
physics = N

[State 1300, Accel]
type = veladd
trigger1 = anim = 1300
y = 0.4

[State 1300, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = anim = 1300 && animelem = 1
value = 1300,0
channel = 0

[State 1300, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = anim = 1300 && animelem = 1
value = 1300,10
channel = 0

[State 1300, punch]
type = changestate
triggerall = anim = 1300 && animelemtime(3) > 0 && var(37) < 3
trigger1 = !AIlevel && (command = "x" || command = "y" || command = "z")
trigger2 = AIlevel && (p2bodydist x = [0,75]) && (p2bodydist y = [-75,75]) && (p2statetype != L)
trigger3 = AIlevel && vel y >= 0 && (enemy, numproj)
value = 1305

[State 1300, cancel]
type = changestate
triggerall = anim = 1300 && animelemtime(3) > 0 && var(37) < 3
trigger1 = !AIlevel && (command = "a" || command = "b" || command = "c")
trigger2 = AIlevel && !var(37) && random < 50
value = 1302

[State 1300, End]
type = changestate
trigger1 = anim = 1300 && vel y > 0 && pos y >= 0
value = ifelse(var(37), 1104, 1301)

;--- PUNCH ---
[Statedef 1305]
type = A
movetype = A
physics = N
juggle = 8 * (var(37) = 1)
anim = 1305
sprpriority = 1
ctrl = 0

[State 1305, Accel]
type = veladd
trigger1 = 1
y = 0.4

[State 1305, otoshivar]
type = varadd
trigger1 = !time && var(37) < 3
var(37) = 1

[State 1305, Snd]
type = playsnd
trigger1 = animelem = 2
value = ifelse(var(37) < 3, 4, 1100), ifelse(var(37) = 1, 0, ifelse(var(37) = 2, 1, 1))
channel = 0

[State 1305, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1,3

[State 1305, helper]
type = helper
trigger1 = !time && !numhelper(1306)
helpertype = normal
stateno = 1306
ID = 1306
name = "Projectile Hitter"
postype = p1

[State 1305, NHB]
type = nothitby
trigger1 = numhelper(1306)
trigger1 = animelemtime(2) >= 0 && animelemtime(4) < 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 1100, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1 = animelem = 2 && var(37) < 3
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 48 < 7, 7, fvar(11) * 48)), 15
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 10)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.36, -3), -9.7
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.36, -10.52)
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(20), -2.36, -3), -9.7
air.cornerPush.velOff = 0
airguard.velocity = -5, -1.5
airguard.cornerPush.velOff = 0
yAccel = ifElse(var(20),.5,.6)
fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 117), var(36) := -64
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1 = animelem = 2 && var(37) >= 3
attr = A, SA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 37 < 7, 7, fvar(11) * 37)), 15
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.36, -4), -8
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -5.36, -10.52)
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(20), -2.36, -4), -8
air.cornerPush.velOff = 0
airguard.velocity = -5, -1.5
airguard.cornerPush.velOff = 0
yAccel = ifElse(var(20),.5,.6)
fall = 1
fall.recover = 1
fall.recovertime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 117), var(36) := -64
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1305, Vel]
type = velset
trigger1 = (movecontact = 1 || movereversed = 1)
x = 3
y = -7

[State 1305, Vel]
type = velset
trigger1 = numhelper(1306)
trigger1 = helper(1306), stateno = 1307
x = 4
y = -8
persistent = 0

[State 1305, HitSound]
type = playsnd
trigger1 = numhelper(1306)
trigger1 = helper(1306), stateno = 1307
value = 2,2
persistent = 0

[State 871, Hit Spark]
type = Helper
trigger1 = numhelper(1306)
trigger1 = helper(1306), stateno = 1307
helperType = Normal
stateNo = 8013
ID = 8000
name = "Spark"
posType = P1
pos = ceil(45 * const(size.xScale)), ceil(-29 * const(size.yScale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1305, punch]
type = changestate
trigger1 = (movecontact || movereversed) && animelemtime(5) >= 0 && var(37) < 3
trigger1 = !AIlevel && (command = "x" || command = "y" || command = "z")
value = 1305

[State 1305, back]
type = changestate
triggerall = var(37) < 3
trigger1 = animelemtime(8) >= 0 && (movecontact || movereversed)
trigger2 = animelemtime(8) >= 0 && numhelper(1306)
trigger2 = helper(1306), stateno = 1307
value = 1300

[State Idle]
type = statetypeset
trigger1 = var(37) >= 3 && animelemtime(4) >= 0
movetype = I

[State 1305, End]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = 1104

;--- LAND ---
[Statedef 1301]
type = S
physics = S
ctrl = 0
anim = 1301
velset = ifelse(vel x <= 0, 3, 1.5 * vel x), 0

[State 1301, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = time = 1
value = 1300,1
channel = 0

[State 1301, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = time = 1
value = 1300,11
channel = 0

[State 1301, Snd]
type = playsnd
trigger1 = time = 1
value = 101,0

[State 1301, Dust]
type = explod
trigger1 = !time
anim = 8104
ID = 8104
sprpriority = 3
postype = p1
pos = 18,0
vel = 2,0
scale = 0.5,0.5
removetime = -2
ownpal = 1
pausemovetime = -1
supermovetime = -1

[State 1301, Stop]
type = velset
trigger1 = 1
y = 0

[State 1301, Pos]
type = posset
trigger1 = 1
y = 0

[State 1301, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;--- CANCEL ---
[Statedef 1302]
type = A
physics = A
ctrl = 0
anim = 1302
velset = 0,0

[State 1302, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = time = 1
value = 820,0
channel = 0

[State 1302, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = time = 1
value = 820,10
channel = 0

;========================<EX SAKURA OTOSHI>=============================
[StateDef 1330]
type = U
physics = U
moveType = A
anim = 40
ctrl = 0
velSet = vel x * (prevstateno = 1335), vel y * (prevstateno = 1335)
sprPriority = 1
powerAdd = ifElse(prevstateno = 1335, 0, -500)
faceP2 = 1

[State 1130, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1130, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1130, EX Flash]
type = VarSet
trigger1 = !Time && (prevstateno != [1330,1335])
var(25) = 21

[State 1130, EX FX]
type = Explod
trigger1 = !Time && (prevstateno != [1330,1335])
anim = 8210
sprPriority = 3
posType = P1
pos = ceil(17 * const(size.xScale)), ceil(-85 * const(size.yScale))
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1130, EX Startup Sound]
type = PlaySnd
trigger1 = !Time && (prevstateno != [1330,1335])
value = 0,1000
channel = 1

[State 1300, Anim]
type = changeanim
trigger1 = !time && prevstateno = 1335
value = 1300
elem = 3

[State 1300, otoshivar]
type = varset
trigger1 = !time && (prevstateno != [1330,1335])
var(37) = 0

[State 1300, Vel]
type = velset
trigger1 = anim = 40 && !animtime
x = floor((p2dist X)/32)
y = -7.8*const(size.yscale)

[State 1300, Snd]
type = playsnd
trigger1 = anim = 40 && !animtime
value = 41,0
persistent = 0

[State 1300, Dust]
type = helper
trigger1 = anim = 40 && !animtime
helpertype = normal
stateno = 8100
ID = 8100
name = "Dust"
postype = p1
ownpal = 1
persistent = 0

[State 1300, Anim]
type = changeanim
trigger1 = anim = 40 && !animtime
value = 1300

[State 1300, statetype]
type = statetypeset
trigger1 = anim = 1300
statetype = A
physics = N

[State 1300, Accel]
type = veladd
trigger1 = anim = 1300
y = 0.4

[State 1300, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = anim = 1300 && animelem = 1
value = 1300,0
channel = 0

[State 1300, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = anim = 1300 && animelem = 1
value = 1300,10
channel = 0

[State 1300, punch]
type = changestate
triggerall = anim = 1300 && animelemtime(3) > 0 && var(37) < 3
trigger1 = !AIlevel && (command = "x" || command = "y" || command = "z")
trigger2 = AIlevel && (p2bodydist x = [0,75]) && (p2bodydist y = [-75,75]) && (p2statetype != L)
trigger3 = AIlevel && vel y >= 0 && (enemy, numproj)
value = 1335

[State 1300, cancel]
type = changestate
triggerall = anim = 1300 && animelemtime(3) > 0 && var(37) < 3
trigger1 = !AIlevel && (command = "a" || command = "b" || command = "c")
trigger2 = AIlevel && !var(37) && random < 50
value = 1302

[State 1300, End]
type = changestate
trigger1 = anim = 1300 && vel y > 0 && pos y >= 0
value = ifelse(var(37), 1104, 1301)

;--- PUNCH ---
[Statedef 1335]
type = A
movetype = A
physics = N
juggle = 8 * (var(37) = 1)
anim = 1305
sprpriority = 1
ctrl = 0

[State 1305, Accel]
type = veladd
trigger1 = 1
y = 0.4

[State 1305, otoshivar]
type = varadd
trigger1 = !time && var(37) < 3
var(37) = 1

[State 1305, Snd]
type = playsnd
trigger1 = animelem = 2
value = ifelse(var(37) < 3, 4, 1100), ifelse(var(37) = 1, 0, ifelse(var(37) = 2, 1, 1))
channel = 0

[State 1305, Snd]
type = playsnd
trigger1 = animelem = 2
value = 1,3

[State 1305, helper]
type = helper
trigger1 = !time && !numhelper(1306)
helpertype = normal
stateno = 1306
ID = 1306
name = "Projectile Hitter"
postype = p1

[State 1305, NHB]
type = nothitby
trigger1 = numhelper(1306)
trigger1 = animelemtime(2) >= 0 && animelemtime(4) < 0
value = SCA, NP, SP, HP
time = 1
ignorehitpause = 1

[State 1100, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1 = animelem = 2 && var(37) < 3
attr = A, SA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 58 < 7, 7, fvar(11) * 58)), 15
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 10)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -3, -9.7
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -3, -9.7
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 117), var(36) := -64
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1 = animelem = 2 && var(37) >= 3
attr = A, SA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 48 < 7, 7, fvar(11) * 48)), 15
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
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
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 117), var(36) := -64
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1305, Vel]
type = velset
trigger1 = (movecontact = 1 || movereversed = 1)
x = 3
y = -7

[State 1305, Vel]
type = velset
trigger1 = numhelper(1306)
trigger1 = helper(1306), stateno = 1307
x = 4
y = -8
persistent = 0

[State 1305, HitSound]
type = playsnd
trigger1 = numhelper(1306)
trigger1 = helper(1306), stateno = 1307
value = 2,2
persistent = 0

[State 871, Hit Spark]
type = Helper
trigger1 = numhelper(1306)
trigger1 = helper(1306), stateno = 1307
helperType = Normal
stateNo = 8013
ID = 8000
name = "Spark"
posType = P1
pos = ceil(45 * const(size.xScale)), ceil(-29 * const(size.yScale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1305, punch]
type = changestate
trigger1 = (movecontact || movereversed) && animelemtime(5) >= 0 && var(37) < 3
trigger1 = !AIlevel && (command = "x" || command = "y" || command = "z")
value = 1335

[State 1305, back]
type = changestate
triggerall = var(37) < 3
trigger1 = animelemtime(8) >= 0 && (movecontact || movereversed)
trigger2 = animelemtime(8) >= 0 && numhelper(1306)
trigger2 = helper(1306), stateno = 1307
value = 1330

[State Idle]
type = statetypeset
trigger1 = var(37) >= 3 && animelemtime(4) >= 0
movetype = I

[State 1305, End]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = 1104

;========================<OUKA KYAKU>=============================
[StateDef 1400]
type = A
physics = A
moveType = A
anim = 1400
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1100, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))

[State 1100, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 333), 2, ifElse(Random < 500, 1, 0))

[State 1400, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = animelem = 3
value = 4,0
channel = 0

[State 1400, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = animelem = 3
value = 4,10
channel = 0

[State 1400, Snd]
type = playsnd
trigger1 = animelem = 3
value = 1,5

[State 1400, freeze]
type = velset
trigger1 = animelemtime(3) < 0
x = 0
y = 0

[State 1400, Vel]
type = velset
trigger1 = animelem = 3
x = ifelse(var(10) = 2, 5, ifelse(var(10) = 1, 4, 3))
y = ifelse(var(10) = 2, 5, ifelse(var(10) = 1, 4, 3))

[State 1100, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 3
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 68 < 7, 7, fvar(11) * 68)), 15
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 7, 14)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 7, 14)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = ifElse(var(20), -4.36, -8.52), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.36, -8.52)
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(20), -2.36, -4), -8
air.cornerPush.velOff = 0
airguard.velocity = -5, -1.5
airGuard.cornerPush.velOff = 0
yAccel = ifElse(var(20),.5,.6)
air.fall = 1
fall.recover = 1
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 57), var(36) := -5
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1400, End]
type = changestate
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 1405

;Landing
[Statedef 1405]
type = S
physics = N
movetype = I
ctrl = 0
anim = 1405
velset = 0,0
sprpriority = 1
movehitpersist = 1

[State 1405, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1405, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1405, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1405, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;========================<EX OUKA KYAKU>=============================
[StateDef 1430]
type = A
physics = A
moveType = A
anim = 1410
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1130, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1130, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1130, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 21

[State 1130, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = ceil(17 * const(size.xScale)), ceil(-85 * const(size.yScale))
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1130, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1410, snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = animelem = 3
value = 4,1
channel = 0

[State 1410, snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = animelem = 3
value = 4,11
channel = 0

[State 1410, snd]
type = playsnd
trigger1 = animelem = 3
value = 1,5

[State 1410, freeze]
type = velset
trigger1 = animelemtime(3) < 0
x = 0
y = 0

[State 1410, Vel]
type = velset
trigger1 = animelem = 3
x = 10
y = 6

[State 1130, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 3
attr = A, SA
hitFlag = MAFD
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 88 < 7, 7, fvar(11) * 88)), 15
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -8.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -8.52
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = 0.6
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
down.velocity = 0,0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 57), var(36) := -5
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1430, End]
type = changestate
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 1435

;Landing
[Statedef 1435]
type = S
physics = N
movetype = I
ctrl = 0
anim = 1430
velset = 0,0
sprpriority = 1
movehitpersist = 1

[State 1435, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1435, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1435, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1435, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;=====================<SAKURA SENKUU>==========================
[StateDef 1500]
type = S
physics = N
moveType = I
anim = 1500
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1000, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifelse(command = "SakuraSenkuu", 2, ifelse(command = "SakuraSenkuu2", -2, ifelse(command = "SakuraSenkuu3", 1, -1)))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1500, afterimage]
type = afterimage
trigger1 = !Time
time = 30
timegap = 1
framegap = 4
length = 9
palbright = 0, 0, 0
paladd = 0, 0, 0
palmul = 0.9, 0.9, 0.9
palcontrast = 160, 160, 160
palpostbright = 0, 0, 0
trans = add1

[State 1500, Anim]
type = changeanim
trigger1 = anim = 1500 && !animtime
value = ifelse(var(10) < 0, 1502, 1501)

[State 1500, Vel]
type = velset
trigger1 = anim = 1500 && animelemtime(2) >= 0
x = ifelse(var(10) = 2, -7, ifelse(var(10) = 1, -4, ifelse(var(10) = -2, 7, 4))) * sin((time -4) / 9.0 * pi)

[State 1500, Vel]
type = velset
trigger1 = (anim = [1501,1502])
x = ifelse(var(10) = 2, 12, ifelse(var(10) = 1, 7.5, ifelse(var(10) = -2, -12, -7.5)))
persistent = 0

[State 1500, Vel]
type = velmul
trigger1 = (anim = [1501,1502]) && time > ifelse((var(10) = 2 || var(10) = -2), 37, 32)
x = 0.9

[State 1500, Snd]
type = playsnd
trigger1 = anim = 1500 && animelem = 2
value = 4,0
channel = 0

[State 1500, Snd]
type = playsnd
trigger1 = anim = 1501 && animelem = 3
value = 1400,0
persistent = 0

[State 1500, Snd]
type = playsnd
trigger1 = anim = 1502 && animelem = 3
value = 1400,0
persistent = 0

[State 1500, Push]
type = playerpush
trigger1 = anim = 1500
trigger2 = (anim = [1501,1502])
value = 0

[State 1500, nothitby]
type = nothitby
trigger1 = anim = 1500
trigger2 = (anim = [1501,1502])
value = SCA, AA, AP, AT
time = 1
ignorehitpause = 1

[State 1500, Turn]
type = turn
trigger1 = (anim = [1501,1502]) && p2dist x < 0

[State 1500, End]
type = changeanim
trigger1 = (anim = [1501,1502]) && time >= ifelse((var(10) = 2 || var(10) = -2), 52, 42)
trigger2 = (anim = [1501,1502]) && vel x < 0 && backedgebodydist <= const(size.ground.back)
trigger3 = (anim = [1501,1502]) && vel x > 0 && frontedgebodydist <= const(size.ground.front)
value = 1505

[State 1500, statetype]
type = statetypeset
trigger1 = anim = 1505
statetype = S
physics = S

[State 1500, End]
type = changestate
trigger1 = anim = 1505 && !animtime
value = 0
ctrl = 1

;========================<PUNCH ZERO COUNTER>=============================
[StateDef 2900]
type = S
physics = N
moveType = A
anim = 2900
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0

[State 2900, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2900, Voice]
type = PlaySnd
triggerall = var(40) = 0
trigger1 = AnimElem = 3
value = 4,2
channel = 0

[State 2900, Voice]
type = PlaySnd
triggerall = var(40) = 1
trigger1 = AnimElem = 3
value = 4,12
channel = 0

[State 2900, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,2
channel = 1

[State 2900, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 0
getpower = 0,0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
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
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 135), var(36) := -65
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 2900, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
movetype = I

[State 2900, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;========================<KICK ZERO COUNTER>=============================
[StateDef 2910]
type = S
physics = N
moveType = A
anim = 2910
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0

[State 2910, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2910, Voice 2]
type = PlaySnd
triggerall = var(40) = 0
trigger1 = AnimElem = 3
value = 4,3
channel = 0

[State 2910, Voice 2]
type = PlaySnd
triggerall = var(40) = 1
trigger1 = AnimElem = 3
value = 4,13
channel = 0

[State 2910, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,5
channel = 1

[State 2910, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3
attr = C, SA
hitFlag = MA
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 0
getpower = 0,0
givepower = 36, 36
pauseTime = 12,12
guard.pauseTime = 12,12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2, -4
ground.cornerPush.velOff = 0
guard.velocity = -6.52
guard.cornerPush.velOff = 0
air.velocity = -2, -4
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 96), var(36) := -24
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 2910, StateTypeSet: Idle]
type = StateTypeset
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 2910, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
