; _________________________________________
;| Guile by Jmorphman                      |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SPECIAL MOVES>=======================================
;==============================================================================================

;=====================<SONIC BOOM>==========================
;Charlie Version
[StateDef 1000]
type = S
physics = S
moveType = A
anim = 1000 + var(55)
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

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1000,0
channel = 0

[State 1000, Sonic Boom Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1000,1
channel = 1

[State 1000, Sonic Boom Startup FX]
type = Explod
trigger1 = AnimElem = 3
anim = 1004
sprPriority = 3
posType = P1
scale = 0.5 * const(size.xScale),0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1000, Projectile]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 1005
ID = 1005
name = "Sonic Boom Projectile"
posType = P1
pos = ceil(47 * const(size.xscale)), ceil(-68 * const(size.yscale))
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1000, Width]
type = Width
trigger1 = AnimElemTime(5) = 0
value = 30,0

[State 1000, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Nash Version
[StateDef 1050]
type = S
physics = S
moveType = A
anim = 1050 + var(55)
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

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1000,0
channel = 0

[State 1000, Sonic Boom Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1000,1
channel = 1

[State 1000, Sonic Boom Startup FX]
type = Explod
trigger1 = AnimElem = 3
anim = 1004
sprPriority = 3
posType = P1
scale = 0.5 * const(size.xScale),0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1000, Projectile]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 1055
ID = 1055
name = "Sonic Boom Projectile"
posType = P1
pos = ceil(47 * const(size.xscale)), ceil(-68 * const(size.yscale))
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1000, Width]
type = Width
trigger1 = AnimElemTime(5) = 0
value = 30,0

[State 1000, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;========================<EX SONIC BOOM>=============================
;Charlie version
[StateDef 1030]
type = S
physics = N
moveType = A
anim = 1000 + var(55)
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
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1030, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1030, Voice]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1000,0
channel = 0

[State 1030, Sonic Boom Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1000,1
channel = 3

[State 1030, Sonic Boom Startup FX]
type = Explod
trigger1 = AnimElem = 3
anim = 1004
sprPriority = 3
posType = P1
scale = 0.5 * const(size.xScale),0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1030, Projectile]
type = Helper
trigger1 = AnimElem = 5
helperType = Normal
stateNo = 1035
ID = 1005
name = "EX Sonic Boom Projectile"
posType = P1
pos = ceil(47 * const(size.xscale)), ceil(-68 * const(size.yscale))
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1030, Width]
type = Width
trigger1 = AnimElemTime(5) = 0
value = 30,0

[State 1030, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Nash version
[StateDef 1070]
type = S
physics = N
moveType = A
anim = 1070 + var(55)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1030, Button Detect]
type = VarSet
trigger1 = anim = 1070 + var(55) && !Time
var(10) = 3

[State 1030, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = anim = 1070 + var(55) &&  !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1030, Custom Combo Reset]
type = PalFX
trigger1 = anim = 1070 + var(55) &&  !Time
trigger1 = var(20) := -1
time = 1

[State 1030, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 24

[State 1030, EX FX]
type = Explod
trigger1 = anim = 1070 + var(55) &&  !Time
anim = 8210
sprPriority = 3
posType = p1
pos = ceil(6 * const(size.xScale)), ceil(-70 * const(size.yScale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1030, EX Startup Sound]
type = PlaySnd
trigger1 = anim = 1070 + var(55) &&  !Time
value = 0,1000
channel = 1

[State 1030, Voice]
type = PlaySnd
trigger1 = anim = 1070 + var(55) && AnimElem = 4
value = 1000,0
channel = 0

[State 1070, ChangeAnim]
type = ChangeAnim
trigger1 = !AILevel
triggerall = anim = 1070 + var(55) && animelemtime(6) >= 10
trigger1 = command = "x" || command = "y" || command = "z"
value = 1071 + var(55)

[State 1070, ChangeAnim]
type = ChangeAnim
trigger1 = AILevel
triggerall = anim = 1070 + var(55) && animelemtime(6) >= 10
trigger1 = 1
value = 1071 + var(55)

[State 1070, PosAdd]
type = PosAdd
triggerall = anim = 1071 + var(55)
trigger1 = animelem = 1
x = 45

[State 1070, PosAdd]
type = PosAdd
triggerall = anim = 1071 + var(55)
trigger1 = animelem = 4
x = 30

[State 1030, Sonic Boom Startup Sound]
type = PlaySnd
trigger1 = anim = 1070 + var(55) && AnimElem = 5
trigger2 = anim = 1071 + var(55) && AnimElem = 5
value = 1000,1
channel = 3

[State 1000, Voice]
type = PlaySnd
trigger1 = anim = 1071 + var(55) && AnimElem = 5
value = 1000,2
channel = 0

[State 1030, Sonic Boom Startup FX]
type = Explod
trigger1 = anim = 1070 + var(55) && AnimElem = 3
anim = 1004
sprPriority = 3
posType = P1
scale = 0.5 * const(size.xScale),0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 1030, Projectile]
type = Helper
trigger1 = anim = 1070 + var(55) && AnimElem = 5
helperType = Normal
stateNo = 1055
ID = 1005
name = "EX Sonic Boom Projectile"
posType = P1
pos = ceil(47 * const(size.xscale)), ceil(-68 * const(size.yscale))
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1030, Projectile]
type = Helper
trigger1 = anim = 1071 + var(55) && AnimElem = 5
helperType = Normal
stateNo = 1055
ID = 1005
name = "EX Sonic Boom Projectile"
posType = P1
pos = ceil(59 * const(size.xScale)), ceil(-61 * const(size.yScale))
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1030, Width]
type = Width
trigger1 = AnimElemTime(5) = 0
value = 30,0

[State 1030, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;========================<SOMERSAULT KICK>=============================
[StateDef 1100]
type = S
physics = N
moveType = A
anim = 1100 + var(55)
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
trigger1 = !Time
value = ifElse(var(10) = 2, 1120 + var(55), ifElse(var(10) = 1, 1110 + var(55), 1100 + var(55)))

[State 1100, NotHitBy]
type = NotHitBy
trigger1 = time <= 6
value = SCA
time = 1
ignorehitpause = 1

[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1100,0
channel = 0

[State 1100, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1100,1
channel = 1

[State 1100, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1100, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Somersault Kick Dust"
posType = P1
ownPal = 1

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 2
y = ifelse(anim = 1120 + var(55), -11.6, ifelse(anim = 1110 + var(55), -10.3, -9))

[State 1100, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) >= 0
y = 0.8

[State 1100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = (anim = [1100 + var(55), 1110 + var(55)]) && animelemtime(6) >= 0
trigger2 = anim = 1120 + var(55) && animelemtime(8) >= 0
moveType = I

[State 1100, Somersault Kick FX]
type = Helper
trigger1 = !numhelper(1105) && !numhelper(11105) && animelem = 3
helpertype = normal
stateno = 1105 + var(55)
ID = 1105
name = "Sommersault FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 1100, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * (ifelse(var(10) = 2, 102, ifelse(var(10) = 1, 118, 104))) < 7, 7, fvar(11) * (ifelse(var(10) = 2, 102, ifelse(var(10) = 1, 118, 104))))), ifelse(var(10) = 2, 15, 13)
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.16, -10.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -10.81
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) :=78), var(36) := -74
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = animelem = 4 && var(10) < 2 && !movecontact && !movereversed
trigger2 = animelem = 4 && var(10) = 2 && !movehit
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.16, -10.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -10.81
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) :=78), var(36) := -74
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = animelem = 6 && anim = 1120 + var(55)
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.16, -10.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -10.81
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) :=72), var(36) := -89
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 1101


;Landing
[StateDef 1101]
type = S
anim = 1101 + var(55)
physics = N
moveType = I
velSet = 0,0

[State 1101, EX Flash Off]
type = VarSet
trigger1 = !Time
var(25) = 0

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

[State 1101, End]
type = ChangeState
trigger1 = AnimElemTime(2) = 2 && command = "holddown"
value = 11
ctrl = 1

[State 1101, End]
type = ChangeState
trigger1 = AnimElemTime(3)=4
value = 0
ctrl = 1



;========================<EX SOMERSAULT KICK>=============================
[StateDef 1130]
type = S
physics = N
moveType = A
anim = 1130 + var(55)
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
var(25) = 11

[State 1130, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = ceil(17 * const(size.xScale)), ceil(-85 * const(size.yScale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1130, NotHitBy]
type = NotHitBy
trigger1 = time <= 6
value = SCA
time = 1

[State 1130, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1130, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1100,0
channel = 0

[State 1130, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1100,1
channel = 3

[State 1130, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1130, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Somersault Kick Dust"
posType = P1
ownPal = 1

[State 1130, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 2
y = -11.6

[State 1130, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) >= 0
y = 0.8

[State 1130, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
moveType = I

[State 1130, Somersault Kick FX]
type = Helper
trigger1 = !numhelper(1105) && animelem = 3
helpertype = normal
stateno = 1105 + var(55)
ID = 1105
name = "Sommersault FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 1120, Sommersault Shell]
type = Helper
trigger1 = animelem = 6
helpertype = normal
stateno = 1125
ID = 1120
name = "Sommersault Shell"
postype = p1
pos = ceil(86 * const(size.xscale)), ceil(-115 * const(size.yscale))
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
ownpal = 1

[State 1000, Somersault Shell Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 6
value = 1000,1
channel = 1

[State 1130, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 102 < 7, 7, fvar(11) * 102)), 13
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.16, -10.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -10.81
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 78), var(36) := -74
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger2 = animelem = 4
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.16, -10.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -10.81
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 78), var(36) := -74
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, HitDef 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 6 && !movehit
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.16, -10.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -10.81
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) :=72), var(36) := -89
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1130, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 1101

;=====================<MOONSAULT SLASH>==========================
;Charlie Version
[StateDef 1200]
type = A
physics = N
moveType = A
anim = 1200 + var(55)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 0

[State 1200, Button]
type = varset
trigger1 = !time && !AIlevel
var(10) = ifelse((command = "c" || command = "rlsc"), 2, ifelse((command = "b" || command = "rlsb"), 1, 0))

[State 1200, Button AI]
type = varset
trigger1 = !time && AIlevel
var(10) = ifelse(random < 500, 2, ifelse(random < 500, 1, 0))

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 4
physics = A

[State 1200, Anim]
type = changeanim
trigger1 = !time
value = ifelse(var(10) = 2, 1220, ifelse(var(10) = 1, 1210, 1200)) + var(55)

[State 1200, Accel]
type = veladd
trigger1 = animelemtime(4) >= 0
y = ifelse(vel y >= 10, 0.5, 1)

[State 1200, Vel]
type = velset
trigger1 = animelem = 4
x = ifelse(anim = 1220 + var(55), 8, ifelse(anim = 1210 + var(55), 6, 4))

[State 1200, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1200, 0
channel = 0

[State 1200, Snd]
type = playsnd
trigger1 = animelem = 5
value = 1100, 1

[State 1200, FX]
type = helper
trigger1 = !numhelper(1205) && !numhelper(11205) && animelem = 5
helpertype = normal
stateno = 1205 + var(55)
ID = 1205
name = "Moonsault FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 1200, Hit]
type = hitdef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = animelem = 5
ID = 1200
attr = A, SA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * (83 + var(10) * 7) < 7, 7, fvar(11) * (83 + var(10) * 7))), (12 + var(10))
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pausetime = ceil(12 / ((var(20) > 0) + 1.0)), ceil(12 / ((var(20) > 0) + 1.0))
guard.pausetime = ceil(12 / ((var(20) > 0) + 1.0)), ceil(12 / ((var(20) > 0) + 1.0))
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 10
air.hittime = 18
airguard.ctrltime = 16
ground.velocity = -6, 8
guard.velocity = -12.75 / ((var(20) > 0) + 1.0)
air.velocity = -5.67 / ((var(20) > 0) + 1.0), -6.67
airguard.velocity = -7.5 / ((var(20) > 0) + 1.0), -1.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-10 / ((var(20) > 0) + 1.0)
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = !var(20)
fall.recovertime = 120; 40
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 55), var(36) := -30
hitsound = s2, 5
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
forcestand = 1

[State 1200, p2state]
type = targetstate
trigger1 = movehit && numtarget(1200)
trigger1 = !(target, time) && (target(1200), stateno = [5000, 5010])
value = 7070
ID = 1200
ignorehitpause = 1

[State 1200, statetype]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I

[State 1200, End]
type = changestate
trigger1 = pos y > -vel y
value = 1201


;Landing
[Statedef 1201]
type = S
physics = S
ctrl = 0
anim = 1201 + var(55)
velset = 0, 0
movehitpersist = 1

[State 1101, EX Flash Off]
type = VarSet
trigger1 = !Time
var(25) = 0

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

[State 1101, End]
type = ChangeState
trigger1 = AnimElemTime(2) = 2 && command = "holddown"
value = 11
ctrl = 1

[State 1101, End]
type = ChangeState
trigger1 = AnimElemTime(5)=3
value = 0
ctrl = 1

;--- Target Slammed Against Ground ---
[Statedef 7070]
type = A
movetype = H
physics = N
velset = 0, 0
[State 7070, Anim]
type = changeanim
trigger1 = 1
value = ifelse(selfanimexist(5980), 5980, 5012)
[State 7070, Vel]
type = hitvelset
trigger1 = hitshakeover
x = 1
y = 1
[State 7070, End]
type = changestate
trigger1 = hitshakeover && pos y >= 0
value = 7071

[Statedef 7071]
type = L
movetype = H
physics = N
velset = 0, 0
[State 7071, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5101), 5101, 5100)
[State 7071, hurt]
type = hitfalldamage
trigger1 = !time
[State 7071, Shake]
type = envshake
trigger1 = !time
time = 14
freq = 120
ampl = -4
[State 7071, Pos]
type = posset
trigger1 = 1
y = 0
[State 7071, Snd]
type = playsnd
trigger1 = !time
value = f7, 2
[State 7071, FX]
type = explod
trigger1 = !time
anim = f62
postype = p1
pos = 0, 0
sprpriority = -3
[State 7071, End]
type = changestate
trigger1 = !animtime
value = 7072


[Statedef 7072]
type = L
movetype = H
physics = N
[State 7072, Anim]
type = changeanim
trigger1 = !time
value = ifelse(selfanimexist(5161), 5161, 5160)
[State 7072, Pos]
type = posset
trigger1 = !time
y = 0
[State 7072, Vel]
type = velset
trigger1 = !time
y = -2.4
[State 7072, accel]
type = veladd
trigger1 = 1
y = 0.6
[State 7072, End]
type = selfstate
trigger1 = vel y > 0
trigger1 = pos y >= 12
value = 5110

;Nash Version
[StateDef 1250]
type = S
physics = S
moveType = I
anim = 1250 + var(55)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1250, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))

[State 1250, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 333), 2, ifElse(Random < 500, 1, 0))

[State 1250, NotHitBy]
type = NotHitBy
trigger1 = time <= 6
value = SCA
time = 1
ignorehitpause = 1

[State 1250, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 41,0
channel = 1

[State 1100, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 3
stateType = A
physics = N

[State 1100, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8100
ID = 8100
name = "Somersault Kick Dust"
posType = P1
ownPal = 1

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = ifelse(var(10)=2, 14, ifelse(var(10)=1, 13, 12))
y = ifelse(var(10)=2, -12, ifelse(var(10)=1, -11, -12))

[State 0, ChangeState]
type = ChangeState
trigger1 = animelemtime(3) = ifelse(var(10)=2, 10, ifelse(var(10)=1, 8, 7))
value = ifelse(var(10)=2, 1253, ifelse(var(10)=1, 1252, 1251))
ctrl = 0

;Weak Finish
[StateDef 1251]
type = A
physics = N
moveType = A
anim = 1200 + var(55)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 4
physics = A

[State 1220, Accel]
type = veladd
trigger1 = animelemtime(6) >= 0
y = ifelse(vel y >= 10, 0.5, 1)

[State 1200, Vel]
type = velset
trigger1 = animelem = 4
x = 3
y = 3

[State 1200, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1200, 0
channel = 0

[State 1200, Snd]
type = playsnd
trigger1 = animelem = 5
value = 1100, 1

[State 1200, FX]
type = helper
trigger1 = !numhelper(1205) && !numhelper(11205) && animelem = 5
helpertype = normal
stateno = 1205 + var(55)
ID = 1205
name = "Moonsault FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 1200, Hit]
type = hitdef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = animelem = 5
ID = 1200
attr = A, SA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * (83 + var(10) * 7) < 7, 7, fvar(11) * (83 + var(10) * 7))), (12 + var(10))
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 10, 20)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 10, 20)
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 10
air.hittime = 18
airguard.ctrltime = 16
ground.velocity = -6, 0
guard.velocity = -12.75 / ((var(20) > 0) + 1.0)
air.velocity = -5.67 / ((var(20) > 0) + 1.0), -6.67
airguard.velocity = -7.5 / ((var(20) > 0) + 1.0), -1.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-10 / ((var(20) > 0) + 1.0)
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = !var(20)
fall.recovertime = 120; 40
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 55), var(36) := -30
hitsound = s2, 5
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
forcestand = 1

[State 1200, statetype]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I

[State 1200, End]
type = changestate
trigger1 = pos y > -vel y
value = 1255

;Medium Finish
[StateDef 1252]
type = A
physics = N
moveType = A
anim = 1210 + var(55)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 4
physics = A

[State 1220, Accel]
type = veladd
trigger1 = animelemtime(6) >= 0
y = ifelse(vel y >= 10, 0.5, 1)

[State 1200, Vel]
type = velset
trigger1 = animelem = 4
x = 7
y = 3

[State 1200, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1200, 0
channel = 0

[State 1200, Snd]
type = playsnd
trigger1 = animelem = 5
value = 1100, 1

[State 1200, FX]
type = helper
trigger1 = !numhelper(1205) && !numhelper(11205) && animelem = 5
helpertype = normal
stateno = 1205 + var(55)
ID = 1205
name = "Moonsault FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 1200, Hit]
type = hitdef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = animelem = 5
ID = 1200
attr = A, SA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * (83 + var(10) * 7) < 7, 7, fvar(11) * (83 + var(10) * 7))), (12 + var(10))
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 10, 20)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 10, 20)
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 10
air.hittime = 18
airguard.ctrltime = 16
ground.velocity = -6, 0
guard.velocity = -12.75 / ((var(20) > 0) + 1.0)
air.velocity = -5.67 / ((var(20) > 0) + 1.0), -6.67
airguard.velocity = -7.5 / ((var(20) > 0) + 1.0), -1.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-10 / ((var(20) > 0) + 1.0)
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = !var(20)
fall.recovertime = 120; 40
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 55), var(36) := -30
hitsound = s2, 5
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
forcestand = 1

[State 1200, statetype]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I

[State 1200, End]
type = changestate
trigger1 = pos y > -vel y
value = 1255

;Hard Finish
[StateDef 1253]
type = A
physics = N
moveType = A
anim = 1210 + var(55)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 4
physics = A

[State 1220, Accel]
type = veladd
trigger1 = animelemtime(6) >= 0
y = ifelse(vel y >= 10, 0.5, 1)

[State 1200, Vel]
type = velset
trigger1 = animelem = 4
x = 10
y = 10

[State 1200, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1200, 0
channel = 0

[State 1200, Snd]
type = playsnd
trigger1 = animelem = 5
value = 1100, 1

[State 1200, FX]
type = helper
trigger1 = !numhelper(1205) && !numhelper(11205) && animelem = 5
helpertype = normal
stateno = 1205 + var(55)
ID = 1205
name = "Moonsault FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 1200, Hit]
type = hitdef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = animelem = 5
ID = 1200
attr = A, SA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * (83 + var(10) * 7) < 7, 7, fvar(11) * (83 + var(10) * 7))), (12 + var(10))
getpower = ifelse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 10, 20)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 10, 20)
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 10
air.hittime = 18
airguard.ctrltime = 16
ground.velocity = -6, 0
guard.velocity = -12.75 / ((var(20) > 0) + 1.0)
air.velocity = -5.67 / ((var(20) > 0) + 1.0), -6.67
airguard.velocity = -7.5 / ((var(20) > 0) + 1.0), -1.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-10 / ((var(20) > 0) + 1.0)
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = !var(20)
fall.recovertime = 120; 40
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 55), var(36) := -30
hitsound = s2, 5
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
forcestand = 1

[State 1200, statetype]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I

[State 1200, End]
type = changestate
trigger1 = pos y > -vel y
value = 1255

;Landing
[Statedef 1255]
type = S
physics = S
ctrl = 0
anim = 1251 + var(55)
velset = 0, 0
movehitpersist = 1

[State 1101, EX Flash Off]
type = VarSet
trigger1 = !Time
var(25) = 0

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

[State 1101, End]
type = ChangeState
trigger1 = AnimElemTime(2) = 3 && command = "holddown"
value = 11
ctrl = 1

[State 1101, End]
type = ChangeState
trigger1 = AnimElemTime(5)=3
value = 0
ctrl = 1

;======================< EX MOONSAULT SLASH >=============================
;Charlie Version
[Statedef 1230]
type = A
physics = N
movetype = A
anim = 1230 + var(55)
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = -500

[State 1220, Button]
type = varset
trigger1 = var(10) != 3
var(10) = 3

[State 1220, ECreset]
type = palfx
trigger1 = !time
trigger1 = var(20) := -1
time = 1

[State 1220, ExFX]
type = varset
trigger1 = !time
var(25) = 30

[State 1220, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000

[State 1220, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = ceil(2 * const(size.xscale)), ceil(-78 * const(size.yscale))
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1220, Accel]
type = veladd
trigger1 = animelemtime(4) >= 0
y = ifelse(vel y >= 10, 0.5, 1)

[State 1220, Vel]
type = velset
trigger1 = animelem = 4
x = 10

[State 1220, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1200, 0
channel = 0

[State 1220, Snd]
type = playsnd
trigger1 = animelem = 5
value = 1100, 1

[State 1220, FX]
type = helper
trigger1 = animelem = 5
helpertype = normal
stateno = 1205 + var(55)
ID = 1205
name = "Moonsault FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 1220, autoguard]
type = reversaldef
trigger1 = animelem = 3
reversal.attr = SCA, NA, SA
pausetime = 12, 12
sparkno = -1 + 0 * (var(34) := 8001)
hitsound = s3, 0
numhits = 0

[State 1220, Hit]
type = hitdef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = animelem = 5
ID = 1220
attr = A, SA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 114 < 7, 7, fvar(11) * 114)), 14
getpower = 0, 0
givepower = 36, 36
pausetime = 12, 12
guard.pausetime = 12, 12
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 10
air.hittime = 18
airguard.ctrltime = 16
ground.velocity = -6, 8
guard.velocity = -12.75
air.velocity = -5.67, -6.67
airguard.velocity = -7.5, -1.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-10
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = !var(20)
fall.recovertime = 120; 40
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 55), var(36) := -30
hitsound = s2, 5
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
forcestand = 1

[State 1220, p2state]
type = targetstate
trigger1 = movehit && numtarget(1220)
trigger1 = !(target, time) && (target(1220), stateno = [5000, 5010])
value = 7070
ID = 1220
ignorehitpause = 1

[State 1220, statetype]
type = statetypeset
trigger1 = animelemtime(8) >= 0
movetype = I

[State 1220, End]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = 1201

;Nash version
[StateDef 1270]
type = S
physics = N
moveType = I
anim = 1250 + var(55)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1220, ECreset]
type = palfx
trigger1 = !time
trigger1 = var(20) := -1
time = 1

[State 1220, ExFX]
type = varset
trigger1 = !time
var(25) = -2

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
var(25) = 35

[State 1130, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = ceil(17 * const(size.xScale)), ceil(-85 * const(size.yScale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1130, NotHitBy]
type = NotHitBy
trigger1 = time <= 6
value = SCA
time = 1

[State 1130, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 2

[State 1250, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 41,0
channel = 1

[State 1100, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 3
stateType = A
physics = N

[State 1100, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8100
ID = 8100
name = "Somersault Kick Dust"
posType = P1
ownPal = 1

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 18
y = -5

[State 0, ChangeState]
type = ChangeState
trigger1 = time = 45
trigger2 = time >= 17 && p2dist x <= 45
value = 1271
ctrl = 0

[StateDef 1271]
type = A
physics = N
moveType = A
anim = 1271 + var(55)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0

[State 1220, ExFX]
type = varset
trigger1 = !time
var(25) = 90

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 16
physics = A

[State 1220, Accel]
type = veladd
trigger1 = animelemtime(18) >= 0
y = ifelse(vel y >= 10, 0.5, 1)

[State 1200, Vel]
type = velset
trigger1 = animelem = 16
x = 10
y = 10

[State 1200, Snd]
type = playsnd
trigger1 = animelem = 4
value = 1200, 0
channel = 0

[State 1200, Snd]
type = playsnd
trigger1 = animelem = 14
value = 1200, 1
channel = 0

[State 1200, Snd]
type = playsnd
trigger1 = animelem = 5
trigger2 = animelem = 8
trigger3 = animelem = 16
value = 1100, 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 5
anim = 1275
ID = 1275
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -2
removetime = -2
pausemovetime = 0
scale = 0.5 * const(size.xscale),0.5 * const(size.yscale)
ontop = 1
ownpal = 1
removeongethit = 1

[State 0, Explod]
type = Explod
trigger1 = animelem = 8
anim = 1276
ID = 1276
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = -2
removetime = -2
pausemovetime = 0
scale = 0.5 * const(size.xscale),0.5 * const(size.yscale)
ontop = 1
ownpal = 1
removeongethit = 1

[State 1200, FX]
type = helper
trigger1 = !numhelper(1205) && !numhelper(11205) && animelem = 16
helpertype = normal
stateno = 1205 + var(55)
ID = 1205
name = "Moonsault FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 1200, Hit]
type = hitdef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = animelem = 5
trigger2 = animelem = 8
ID = 1200
attr = A, SA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 38 < 7, 7, fvar(11) * 38)), 7
getpower = 0, 0
givepower = 36, 36
pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 12, 24)
guard.pauseTime = ifElse(var(20), 3, 6), ifElse(var(20), 12, 24)
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 10
air.hittime = 18
airguard.ctrltime = 16
ground.velocity = 0, 0
guard.velocity = 0 / ((var(20) > 0) + 1.0)
air.velocity = -5.67 / ((var(20) > 0) + 1.0), -6.67
airguard.velocity = -7.5 / ((var(20) > 0) + 1.0), -1.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-10 / ((var(20) > 0) + 1.0)
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = !var(20)
fall.recovertime = 120; 40
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 55), var(36) := -30
hitsound = s2, 5
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
forcestand = 1

[State 1200, Hit]
type = hitdef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = animelem = 16
ID = 1200
attr = A, SA
hitflag = MAF
guardflag = HA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 38 < 7, 7, fvar(11) * 38)), 7
getpower = 0, 0
givepower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 10, 14)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 10, 14)
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 10
air.hittime = 18
airguard.ctrltime = 16
ground.velocity = -8, 0
guard.velocity = -16.75 / ((var(20) > 0) + 1.0)
air.velocity = -5.67 / ((var(20) > 0) + 1.0), -6.67
airguard.velocity = -7.5 / ((var(20) > 0) + 1.0), -1.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0;-10 / ((var(20) > 0) + 1.0)
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = !var(20)
fall.recovertime = 120; 40
sparkno = -1 + 0 * (var(33) := 8013)
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10 + 0 * (var(35) := 55), var(36) := -30
hitsound = s2, 5
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
forcestand = 1

[State 1200, statetype]
type = statetypeset
trigger1 = animelemtime(19) >= 0
movetype = I

[State 1200, End]
type = changestate
trigger1 = pos y > -vel y
value = 1255

;========================<SONIC SCYTHE>=============================
[StateDef 1300]
type = S
physics = S
moveType = A
anim = 1300 + var(55)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1100, Button Detect]
type = VarSet
trigger1 = prevstateno = 750
var(10) = 2

[State 1100, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "c" || command = "rlsc"), 2, ifElse((command = "b" || command = "rlsb"), 1, 0))

[State 1100, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 333), 1, ifElse(Random < 500, 2, 0))

[State 1100, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1320 + var(55), ifElse(var(10) = 1, 1310 + var(55), 1300 + var(55)))

[State 1100, NotHitBy]
type = NotHitBy
trigger1 = time <= 6
value = SCA
time = 1
ignorehitpause = 1

[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1300,0
channel = 0

[State 1100, Jump Sound]
type = PlaySnd
trigger1 = animElem = 4
value = 1100,1
channel = 1

[State 1100, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = anim = 1320 + var(55) && animElem = 5
stateType = A
physics = N

[State 1100, Dust Helper]
type = Helper
trigger1 = anim = 1320 + var(55) && animElem = 4
helperType = Normal
stateNo = 8100
ID = 8100
name = "Somersault Kick Dust"
posType = P1
ownPal = 1

[State 1100, VelSet]
type = VelAdd
trigger1 = anim = 1300 + var(55) && animElem = 4
x = 6

[State 1100, VelSet]
type = VelAdd
trigger1 = anim = 1310 + var(55) && animElem = 4
trigger2 = anim = 1320 + var(55) && animElem = 3
x = 10

[State 1100, VelSet]
type = VelSet
trigger1 = anim = 1320 + var(55) && animElem = 4
x = 3
y = -3

[State 1100, VelAdd]
type = VelAdd
trigger1 = anim = 1320 + var(55) && AnimElemTime(8) >= 0
y = 0.8

[State 1300, SS HK FX]
type = Explod
trigger1 = Anim = 1320 + var(55) && AnimElem = 3
anim = 1325
ID = 1325
sprPriority = 5
posType = P1
bindTime = -1
scale = 0.5*const(size.xscale),0.5*const(size.yscale)
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0
pos = 0, 0

[State 1300, SS MK FX]
type = Explod
trigger1 = Anim = 1310 + var(55) && AnimElem = 3
anim = 1315
ID = 1315
sprPriority = -1
posType = P1
bindTime = -1
scale = 0.4*const(size.xscale),0.2*const(size.yscale)
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0
pos = 30, -18

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 = AnimElemTime(4) = 1
ID = 1315
anim = 1315
sprpriority = 5

[State 1300, SS LK FX]
type = Explod
trigger1 = Anim = 1300 + var(55) && AnimElem = 3
anim = 1305
sprPriority = 3
posType = P1
bindTime = -1
scale = 0.5*const(size.xscale),0.5*const(size.yscale)
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0
pos = -12, -18

[State 1100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = (anim = [1300 + var(55), 1310 + var(55)]) && animelemtime(5) >= 0
trigger2 = anim = 1320 + var(55) && animelemtime(7) >= 0
moveType = I

[State 1100, HitDef LK]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Anim = 1300 + var(55) && AnimElem = 4
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 104 < 7, 7, fvar(11) * 104)), 13
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Trip
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.16, -5.81
ground.cornerPush.velOff = 0
guard.velocity = -5.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -5.81
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) :=86), var(36) := -22
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef MK]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Anim = 1310 + var(55) && AnimElem = 4
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 104 < 7, 7, fvar(11) * 104)), 13
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Trip
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -8.16, -3.81
ground.cornerPush.velOff = 0
guard.velocity = -5.64
guard.cornerPush.velOff = 0
air.velocity = -8.16, -3.81
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) :=118), var(36) := -50
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef HK 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Anim = 1320 + var(55) && AnimElem = 4
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 52 < 7, 7, fvar(11) * 52)), 6
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.16
ground.cornerPush.velOff = 0
guard.velocity = -5.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -6.81
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 0
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) :=101), var(36) := -35
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef HK 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Anim = 1320 + var(55) && AnimElem = 5
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = 0
givePower = 0
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.16, -10.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -10.81
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) :=82), var(36) := -82
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef HK 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = Anim = 1320 + var(55) && AnimElem = 6
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Trip
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.16, -10.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -10.81
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) :=82), var(36) := -82
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, ChangeState]
type = ChangeState
triggerall = anim = 1300 + var(55) || anim = 1310 + var(55)
trigger1 = animelemtime(7)=3
value = 0
ctrl = 1

[State 1100, ChangeState]
type = ChangeState
triggerall = anim = 1320 + var(55) && animelemtime(9)>0
trigger1 = pos y > -vel y
value = 1301

;Landing
[StateDef 1301]
type = S
anim = 1301 + var(55)
physics = N
moveType = I
velSet = 0,0

[State 1101, EX Flash Off]
type = VarSet
trigger1 = !Time
var(25) = 0

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

[State 1101, End]
type = ChangeState
trigger1 = AnimElemTime(2) = 2 && command = "holddown"
value = 11
ctrl = 1

[State 1101, End]
type = ChangeState
trigger1 = AnimElemTime(3)=4
value = 0
ctrl = 1

;========================<EX SOMERSAULT KICK>=============================
[StateDef 1330]
type = S
physics = S
moveType = A
anim = 1330 + var(55)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1330, Custom Combo Juggle Points Reset]
type = VarSet
trigger1 = !Time && var(20)
var(15) = 0
ignoreHitPause = 1

[State 1330, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = var(20) := -1
time = 1

[State 1330, EX Flash]
type = VarSet
trigger1 = !Time
var(25) = 60

[State 1330, EX FX]
type = Explod
trigger1 = !Time
anim = 8210
sprPriority = 3
posType = P1
pos = ceil(17 * const(size.xScale)), ceil(-85 * const(size.yScale))
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1330, NotHitBy]
type = NotHitBy
trigger1 = time <= 6
value = SCA
time = 1

[State 1330, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 1100, Voice]
type = PlaySnd
trigger1 = animElem = 1
value = 1300,0
channel = 0

[State 1100, Jump Sound]
type = PlaySnd
trigger1 = animElem = 4
trigger2 = animElem = 14
value = 1100,1
channel = 1

[State 1100, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = animElem = 15
stateType = A
physics = N

[State 1100, Dust Helper]
type = Helper
trigger1 = animElem = 4
trigger2 = animElem = 14
helperType = Normal
stateNo = 8100
ID = 8100
name = "Somersault Kick Dust"
posType = P1
ownPal = 1

[State 1100, VelSet]
type = VelAdd
trigger1 = animElem = 4
x = 14

[State 1100, VelSet]
type = VelAdd
trigger1 = animElem = 13
x = 14

[State 1100, VelSet]
type = VelSet
trigger1 = animElem = 14
x = 5
y = -5

[State 1100, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(18) >= 0
y = 0.8

[State 1300, SS HK FX]
type = Explod
trigger1 = AnimElem = 3
trigger2 = AnimElem = 13
anim = 1325
ID = 1325
sprPriority = 5
posType = P1
bindTime = -1
scale = 0.5*const(size.xscale),0.5*const(size.yscale)
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0
pos = 0, 0

[State 1100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = animelemtime(17) >= 0
moveType = I

[State 1100, HitDef HK 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 4
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 56 < 7, 7, fvar(11) * 56)), 6
getPower = 0, 0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.16
ground.cornerPush.velOff = 0
guard.velocity = -5.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -6.81
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 0
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) :=101), var(36) := -35
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef HK 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 5
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 20 < 7, 7, fvar(11) * 20)), 7
getPower = 0
givePower = 0
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.16, -7.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -7.81
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) :=82), var(36) := -82
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef HK 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 6
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 20 < 7, 7, fvar(11) * 20)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Trip
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.16, -7.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -7.81
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) :=82), var(36) := -82
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef HK 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1 = AnimElem = 14
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 20 < 7, 7, fvar(11) * 20)), 6
getPower = 0, 0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.16
ground.cornerPush.velOff = 0
guard.velocity = -5.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -6.81
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 0
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) :=101), var(36) := -35
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef HK 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1 = AnimElem = 15
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 20 < 7, 7, fvar(11) * 20)), 7
getPower = 0
givePower = 0
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.16, -10.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -10.81
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) :=82), var(36) := -82
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, HitDef HK 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1 = AnimElem = 16
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 20 < 7, 7, fvar(11) * 20)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Trip
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.16, -10.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -10.81
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) :=82), var(36) := -82
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1100, ChangeState]
type = ChangeState
triggerall = anim = 1330 + var(55) && animelemtime(18)>0
trigger1 = pos y > -vel y
value = 1301

;========================<TRAGEDY ASSAULT>=============================
[StateDef 1400]
type = S
physics = N
moveType = A
anim = 1400 + var(55)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1400, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))

[State 1400, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1400, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1420 + var(55), ifElse(var(10) = 1, 1410 + var(55), 1400 + var(55)))

[State 105, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1100,1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 8 + var(10)*2

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 4
physics = S

[State 1100, Hit-Grab]
type = HitDef
trigger1 = AnimElem = 3
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = 0
getPower = 0
givePower = 0
pauseTime = 0
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.16
ground.cornerPush.velOff = 0
guard.velocity = -5.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, 0
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 0
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 800)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8017)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) :=48), var(36) := -52
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
P1stateno = 1401
hitonce = 1
numhits = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = Animelemtime(10)=3
value = 0
ctrl = 1

;Connected
[Statedef 1401]
type = S
physics = S
moveType = A
anim = 1401 + var(55)
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 0,CAMERA]
type=helper
trigger1=animelem = 1
name="helper1"
id=6001
pos=0,0
postype=p1
stateno=6002
;helpertype=normal
ownpal=1

[State 105, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1400,0

[State 0, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 1405

[State 0, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) < 0
pos = ceil(40 * const(size.xScale)),0

[State 0, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0
pos = ceil(35 * const(size.xScale)),ceil(-52 * const(size.yscale))

[State 0, VelAdd]
type = VelAdd
trigger1 = !time
x = 8

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 2
physics = N

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 16

[State 0, ChangeState]
type = ChangeState
trigger1 = FrontEdgeBodyDist <= 25
value = 1402
ctrl = 0

;Wall Impact
[Statedef 1402]
type = S
physics = S
moveType = A
anim = 1402 + var(55)
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 0, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 1406

[State 0, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) < 0
pos = ceil(35 * const(size.xScale)),ceil(-52 * const(size.yscale))

[State 0, VelAdd]
type = VelAdd
trigger1 = animelem = 10
x = -6
y = -4

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(10) >= 0
physics = A

[State 0, Impact Sound]
type = PlaySnd
trigger1 = NumTarget && !Time
value = 820,2
channel = 1

[State 0, Hit Sound]
type = PlaySnd
trigger1 = NumTarget && !Time
value = 2,2
channel = 2

[State 0, EnvShake]
type = EnvShake
trigger1 = NumTarget && !Time
time = 14
ampl = -4
freq = 120

[State 0, Hit Spark]
type = Helper
trigger1 = NumTarget && !Time
helperType = Normal
stateNo = 8013
ID = 8000
name = "Spark"
posType = P1
pos = ceil(40 * const(size.xScale)), ceil(-52 * const(size.yScale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 810, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 1
value = floor(ifElse(139 * fvar(11) < 7, -7, -139 * fvar(11)))

[State 810, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 1
value = -ifElse(!(Root, var(13)), 144, 72) * !(Root, var(20))

[State 810, Power]
type = PowerAdd
trigger1 = NumTarget && AnimElem = 1 && !var(20)
value = ifElse(!(Root, var(13)), 144, 72) * !(Root, var(20))

[State 810, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 1
value = 1

[State 810, HitCount]
type = VarAdd
trigger1 = NumTarget && AnimElem = 1
var(13) = 1

[State 810, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 1
var(15) = 1
ignoreHitPause = 1

[State 810, Juggle]
type = VarSet
trigger1 = NumTarget && AnimElem = 1
var(16) = 1
ignoreHitPause = 1

[State 0, End]
type = ChangeState
trigger1 = AnimElemTime(10) >= 0
trigger1 = pos y > -vel y
value = 106

;Target
[StateDef 1405]
type = A
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1405 + var(55)

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

[StateDef 1406]
type = A
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1406 + var(55)

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

[State 0, ChangeAnim2]
type = SelfState
trigger1 = time = 35
value = 5050

;========================<EX TRAGEDY ASSAULT>=============================
[StateDef 1430]
type = S
physics = N
moveType = A
anim = 1430 + var(55)
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
scale = 0.5, 0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1030, EX Startup Sound]
type = PlaySnd
trigger1 = !Time
value = 0,1000
channel = 1

[State 105, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1100,1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 3
x = 8 + var(10)*2

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 4
physics = S

[State 1100, Hit-Grab]
type = HitDef
trigger1 = AnimElem = 3
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = 0
getPower = 0
givePower = 0
pauseTime = 0
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Back
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -2.16
ground.cornerPush.velOff = 0
guard.velocity = -5.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, 0
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 0
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 800)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8017)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) :=48), var(36) := -52
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
P1stateno = 1431
hitonce = 1
numhits = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = Animelemtime(10)=3
value = 0
ctrl = 1

;Connected
[Statedef 1431]
type = S
physics = S
moveType = A
anim = 1401 + var(55)
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 0,CAMERA]
type=helper
trigger1=animelem = 1
name="helper1"
id=6001
pos=0,0
postype=p1
stateno=6002
;helpertype=normal
ownpal=1

[State 105, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1400,0

[State 0, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 1405

[State 0, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) < 0
pos = ceil(40 * const(size.xScale)),0

[State 0, TargetBind 2]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) >= 0
pos = ceil(35 * const(size.xScale)),ceil(-52 * const(size.yscale))

[State 0, VelAdd]
type = VelAdd
trigger1 = !time
x = 8

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 2
physics = N

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 2
x = 16

[State 0, ChangeState]
type = ChangeState
trigger1 = FrontEdgeBodyDist <= 25
;trigger2 = Time = 150
value = 1432
ctrl = 0

;Wall Impact
[Statedef 1432]
type = S
physics = S
moveType = A
anim = 1402 + var(55)
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 0, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 1406

[State 0, TargetBind 1]
type = TargetBind
trigger1 = NumTarget
trigger1 = AnimElemTime(2) < 0
pos = ceil(35 * const(size.xScale)),ceil(-52 * const(size.yscale))

[State 0, VelAdd]
type = VelAdd
trigger1 = animelem = 10
x = -6
y = -4

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(10) >= 0
physics = A

[State 0, Impact Sound]
type = PlaySnd
trigger1 = NumTarget && !Time
value = 820,2
channel = 1

[State 0, Hit Sound]
type = PlaySnd
trigger1 = NumTarget && !Time
value = 2,2
channel = 2

[State 0, EnvShake]
type = EnvShake
trigger1 = NumTarget && !Time
time = 14
ampl = -4
freq = 120

[State 0, Hit Spark]
type = Helper
trigger1 = NumTarget && !Time
helperType = Normal
stateNo = 8013
ID = 8000
name = "Spark"
posType = P1
pos = ceil(40 * const(size.xScale)), ceil(-52 * const(size.yScale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 0, Explod]
type = Explod
trigger1 = NumTarget && !Time
anim = 14300
ID = 14300
postype = Left
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 145)
scale = 0.5, 0.25 * (1.3333333 * GameHeight / GameWidth)
ownPal = 1
ontop = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 810, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 1
value = floor(ifElse(139 * fvar(11) < 7, -7, -139 * fvar(11)))

[State 810, Life]
type = LifeAdd
trigger1 = NumTarget && AnimElem = 1
value = floor(ifElse(139 * fvar(11) < 7, 7, 139 * fvar(11)))

[State 810, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 1
value = 0

[State 810, Power]
type = PowerAdd
trigger1 = NumTarget && AnimElem = 1 && !var(20)
value = 0

[State 810, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 1
value = 1

[State 810, HitCount]
type = VarAdd
trigger1 = NumTarget && AnimElem = 1
var(13) = 1

[State 810, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 1
var(15) = 1
ignoreHitPause = 1

[State 810, Juggle]
type = VarSet
trigger1 = NumTarget && AnimElem = 1
var(16) = 1
ignoreHitPause = 1

[State 0, End]
type = ChangeState
trigger1 = AnimElemTime(10) >= 0
trigger1 = pos y > -vel y
value = 106

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
trigger1 = AnimElemTime(4) < 0
value = SCA
time = 1
ignoreHitPause = 1

[State 2900, Voice]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4, ifElse(Random < 500, 3, 4)
channel = 0

[State 2900, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,2
channel = 1

[State 2900, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 4
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
getpower = 0,0
givePower = 36, 36
pauseTime = 12, 12
guard.pauseTime = 12, 12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = Low
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -5.54, -5.25
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -5.54, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 135), var(36) := -79
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2900, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
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

[State 2910, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 3
channel = 0

[State 2910, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 8
value = 4,4
channel = 0

[State 2910, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 8
value = 1,5
channel = 1

[State 2910, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 3
attr = C, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
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
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -5.54, -5.25
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -5.54, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 96), var(36) := -24
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2910, HitDef]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 = AnimElem = 9 && !MoveContact
attr = C, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 0
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
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -5.54, -5.25
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -5.54, -5.25
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 116), var(36) := -32
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd= -255, -255, -255, 48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
kill = 0

[State 2910, StateTypeSet: Idle]
type = StateTypeset
trigger1= AnimElemTime(5) >= 0
moveType = I

[State 2910, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
