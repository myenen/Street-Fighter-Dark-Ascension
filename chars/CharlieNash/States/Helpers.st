; _________________________________________
;| Guile by Jmorphman                      |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================<HELPER STATES>========================================
;==============================================================================================

;====================<PARRY HELPER>=========================
[StateDef 765]
type = A
physics = N
moveType = I
anim = ifElse(Root, StateType = C, 766, ifElse(Root, StateType = A, 767, 765))
velSet = 0,0
ctrl = 0

[State 765, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 765, BindToRoot]
type = BindToRoot
trigger1 = 1
time = -1

[State 765, Change to Crouching]
type = ChangeAnim
triggerAll = !Time
trigger1 = !(Root, AILevel) && Root, command = "down"
trigger2 = Root, AILevel && (Root, StateType != A) && P2StateType = C
value = 766

[State 765, Change to Standing / Jumping]
type = ChangeAnim
triggerAll = !Time
trigger1 = !(Root, AILevel) && Root, command = "fwd"
trigger2 = Root, AILevel && Anim != 766
value = ifElse((Root, StateType = A), 767, 765)

[State 765, Change to Standing / Jumping]
type = ChangeAnim
trigger1 = Anim = 765 || Anim = 767
value = ifElse((Root, StateType = A), 767, 765)

[State 765, Disable]
type = VarSet
trigger1 = Time >= ifElse((Root, StateType = A), 7, 8)
trigger2 = Facing != (Root, Facing)
trigger3 = !(Root, ctrl)
trigger3 = (Root, StateNo != [760,762]) && (Root, StateNo != 5120)
var(0) = 1

[State 765, Disable]
type = VarSet
triggerAll = !(Root, AILevel)
trigger1 = (Root, command = "holdback")
trigger2 = Time < 4 && (Root, command = "holdfwd" + Root, command = "holddown") > 1
trigger3 = Time >= 4 && (Root, command = "holdfwd" || Root, command = "holddown")
trigger4 = Time >= 1 && (((Anim = 765 || Anim = 767) && Root, command = "fwd") || (Anim = 766 && Root, command = "down"))
var(0) = 1

[State 765, Disable]
type = ChangeAnim
trigger1 = var(0) = 1
value = 1

[State 765, Standing/Air]
type = ReversalDef
trigger1 = !var(0) && (Anim = 765 || Anim = 767)
trigger1 = (Root, StateNo != 5120) || !(Root, AnimTime)
reversal.attr = SCA,AA
p1StateNo = 766
pauseTime = 0,0
sparkNo = -1
numHits = 0

[State 765, Crouching]
type = ReversalDef
trigger1 = !var(0) && Anim = 766
reversal.attr = SC,AA
p1StateNo = 766
pauseTime = 0,0
sparkNo = -1
numHits = 0

[State 765, Disable]
type = ReversalDef
trigger1 = var(0) = 1
reversal.attr =
pauseTime = 0,0
sparkNo = -1
numHits = 0

[State 765, End]
type = DestroySelf
trigger1 = Time >= 18
trigger2 = (Root, MoveType != I)
trigger3 = !(Root, ctrl) && (Root, StateNo != [760,762]) && (Root, StateNo != 5120)
trigger4 = (Root, StateNo = [760,762]) && (Root, Time <= 1)


;Success
[StateDef 766]
moveType = I
ctrl = 0

[State 766, Disable]
type = VarSet
trigger1 = 1
var(0) = 1

[State 766, End]
type = DestroySelf
trigger1 = Root, StateNo = [760,762]
trigger2 = Time >= 2



;=====================<SONIC BOOM PROJECTILE>=========================
;Charlie Version
[StateDef 1005]
type = S
physics = N
moveType = A
ctrl = 0
anim = 1005
sprPriority = 3

[State 1005, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 1007
ignoreHitPause = 1

[State 1005, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1005, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1005
value = 1005

[State 1005, Button Detect]
type = VarSet
trigger1= !Time && !PrevStateNo
var(10) = Root, var(10)

[State 1005, VelSet]
type = VelSet
trigger1 = 1
x = 2 + var(10)*2

[State 1005, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1005, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1005, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1005, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1005, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 || Root, var(20))
triggerall = var(10)<3
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10), 49, 42) < 7, 7, fvar(11) * ifElse(var(10), 49, 42))), 7
getPower = ifElse(!(Root, var(13)), 144, 72) * !(Root, var(20)), 36 * !(Root, var(20))
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 0, ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -10.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 22 + ifElse(var(20), 6, 12)
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1006
ignoreHitPause = 1

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1007
ignoreHitPause = 1

[State 1005, End]
type = DestroySelf
trigger1 = pos x != [-200,200]

;Nash Version
[StateDef 1055]
type = S
physics = N
moveType = A
ctrl = 0
anim = 1005
sprPriority = 3

[State 1005, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 1007
ignoreHitPause = 1

[State 1005, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1005, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1005
value = 1005

[State 1005, Button Detect]
type = VarSet
trigger1= !Time && !PrevStateNo
var(10) = Root, var(10)

[State 1005, VelSet]
type = VelSet
trigger1 = var(10)!=3
x = 5 - var(10)

[State 1005, VelSet]
type = VelSet
trigger1 = var(10)=3
x = 7

[State 1005, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1005, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1005, Transparency]
type = Trans
trigger1 = 1
trans = add
alpha = 256, 256
ignoreHitPause = 1

[State 1005, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1005, HitDef]
type = HitDef
triggerall = var(10)<3
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 || Root, var(20))
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10), 49, 42) < 7, 7, fvar(11) * ifElse(var(10), 49, 42))), 7
getPower = ifElse(!(Root, var(13)), 144, 72) * !(Root, var(20)), 36 * !(Root, var(20))
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 0, ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -10.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 22 + ifElse(var(20), 6, 12)
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1005, EX HitDef]
type = HitDef
triggerall = Var(10)=3
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 || Root, var(20))
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10), 49, 42) < 7, 7, fvar(11) * ifElse(var(10), 49, 42))), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 0, ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -10.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 22 + ifElse(var(20), 6, 12)
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1056
ignoreHitPause = 1

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1007
ignoreHitPause = 1

[State 1005, End]
type = DestroySelf
trigger1 = pos x != [-200,200]

;Hit Pause
[StateDef 1006]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1

[State 1006, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 1006, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
ignorehitPause = 1

[State 1006, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
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

[State 1006, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 1006, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(15) = 1

[State 1006, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1006, ProjContact]
type = ParentVarSet
trigger1 = MoveContact && NumTarget
trigger1 = Root, StateNo = [1000,1030]
var(18) = 1

[State 1006, End]
type = ChangeState
trigger1 = Time >= 0
value = ifElse(var(12) < 2 && var(10) = 3, 1035, 1007)

;V.Hit Pause
[StateDef 1056]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1

[State 1006, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 1006, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
ignorehitPause = 1

[State 1006, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
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

[State 1006, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 1006, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(15) = 1

[State 1006, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1006, ProjContact]
type = ParentVarSet
trigger1 = MoveContact && NumTarget
trigger1 = Root, StateNo = [1000,1030]
var(18) = 1

[State 1006, End]
type = ChangeState
trigger1 = Time >= 0
value = 1007

;Disappear
[StateDef 1007]
type = A
physics = N
moveType = A
anim = 1007
ctrl = 0
velSet = 0,0
sprPriority = 3
moveHitPersist = 1

[State 1007, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 1007, End]
type = ChangeState
trigger1 = !AnimTime
value = 1008


;Wait
[StateDef 1008]
type = A
physics = N
moveType = I
anim = 1
ctrl = 0
velSet = 0,0

[State 1008, End]
type = DestroySelf
trigger1 = !NumTarget
trigger2 = NumTarget
trigger2 = Target, Time <= 1 && !(Target,HitShakeOver)

;Sonic Break
[StateDef 3205]
type = S
physics = N
moveType = A
ctrl = 0
anim = 1005
sprPriority = 3

[State 1005, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 1007
ignoreHitPause = 1

[State 1005, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1005, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1005
value = 1005

[State 1005, Button Detect]
type = VarSet
trigger1= !Time && !PrevStateNo
var(10) = Root, var(10)

[State 1005, VelSet]
type = VelSet
trigger1 = 1
x = 7

[State 1005, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1005, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1005, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1005, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1005, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 5 || Root, var(20))
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 40 < 7, 7, fvar(11) * 40)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 0, ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -10.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 22 + ifElse(var(20), 6, 12)
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 3206
ignoreHitPause = 1

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1007
ignoreHitPause = 1

[State 1005, End]
type = DestroySelf
trigger1 = pos x != [-200,200]

;Hit Pause
[StateDef 3206]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1

[State 1006, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 1006, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
ignorehitPause = 1

[State 1006, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1006, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
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

[State 1006, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 1006, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(15) = 1

[State 1006, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1006, ProjContact]
type = ParentVarSet
trigger1 = MoveContact && NumTarget
trigger1 = Root, StateNo = 3200
var(18) = 1

[State 1006, End]
type = ChangeState
trigger1 = Time >= 0
value = 1007

;========================< EX SOMMERSAULT SHELL >=============================
[Statedef 1125]
type = A
physics = N
movetype = A
ctrl = 0
sprpriority = 4

[State 1125, HitOverride]
type = hitoverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
stateno = 1126
ignorehitpause = 1
[State 1125, HB]
type = hitby
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignorehitpause = 1

[State 1125, Anim]
type = changeanim
trigger1 = anim != 1125
value = 1125
[State 1125, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1125, Button]
type = varset
trigger1 = !time && !prevstateno
var(10) = root, var(10)
[State 1125, Vel];40 degrees
type = velset
trigger1 = !time && !prevstateno
x = 8;7.7
y = -8;-9.2

[State 1125, timevar]
type = varadd
trigger1 = 1
var(1) = 1
ignorehitpause = 1

[State 1125, hitcount]
type = parentvaradd
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(13) = 1
ignorehitpause = 1
persistent = 0
[State 1125, juggle]
type = parentvaradd
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(14) = 1
ignorehitpause = 1
persistent = 0
[State 1125, projcontact]
type = parentvarset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
trigger1 = root, stateno = 1120
var(18) = (var(18) := 1)
ignorehitpause = 1

[State 1125, counter]
type = helper
trigger1 = movehit = 1 && var(9) && numenemy
trigger1 = (enemy, movetype = H) && !(enemy, time)
helpertype = normal
stateno = 8290
ID = 8290
name = "Counter FX"
postype = p2
pos = (enemy, const(size.ground.front) -10) * (enemy, facing) * (-facing), floor(pos y - enemy, pos y)
facing = facing
ownpal = 1
pausemovetime = 255
supermovetime = 255
ignorehitpause = 1
[State 1125, counterflag]
type = varset
trigger1 = numenemy
var(9) = (enemynear, movetype = A)
ignorehitpause = 1

[State 1125, guarddist]
type = attackdist
trigger1 = 1
value = root, const(size.proj.attack.dist)
[State 1125, dampener]
type = varset
trigger1 = 1
fvar(11) = (root, fvar(10)) * ifelse(var(9), 1.2, 1)
ignorehitpause = 1

[State 1125, Hit]
type = hitdef
trigger1 = !movecontact
attr = A, SP
hitflag = MAF
guardflag = MA
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 20 < 7, 7, fvar(11) * 20)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = 1, 12
guard.pausetime = 1, 12
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 16
ground.slidetime = 16
guard.hittime = 16
air.hittime = 12
airguard.ctrltime = 16
ground.velocity = -12.75, 0
guard.velocity = -12.75
air.velocity = -6.25, -7.5
airguard.velocity = -7.5, -1.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = 1
fall.recovertime = 54
sparkno = -1
guard.sparkno = -1 + 0 * (var(34) := 8001)
sparkxy = -10, 0
hitsound = s2, 6
guardsound = s3, 0
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
p1sprpriority = 4
forcestand = 1

[State 1006, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1126
ignoreHitPause = 1

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1127
ignoreHitPause = 1

[State 1005, End]
type = DestroySelf
trigger1 = pos x != [-200,200]


[Statedef 1126]
type = A
physics = N
movetype = I
ctrl = 0
anim = 1126
velset = 0, 0
sprpriority = 4
[State 1126, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1
[State 1126, End]
type = destroyself
trigger1 = !animtime


[Statedef 1127]
type = A
physics = N
movetype = I
sprpriority = 4
[State 1127, nothitby]
type = nothitby
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1
[State 1127, Shrink]
type = angledraw
trigger1 = 1
scale = 1 -(time * 0.1), 1 -(time * 0.1)
[State 1127, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 -(25 * time), 256
ignorehitpause = 1
[State 1127, End]
type = velmul
trigger1 = 1
x = 0.75
y = 0.75
[State 1127, End]
type = destroyself
trigger1 = time >= 10

;=====================<EX SONIC BOOM PROJECTILE>=========================
[StateDef 1035]
type = S
physics = N
moveType = A
ctrl = 0
anim = 1005
sprPriority = 3

[State 1035, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = ifElse(var(2) < 2, 1035, 1007)
ignoreHitPause = 1

[State 1035, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1035, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1005 && !PrevStateNo
value = 1005

[State 1035, VarAdd]
type = VarAdd
trigger1 = !Time
var(2) = 1

[State 1035, VelSet]
type = VelSet
trigger1 = 1
x = ifElse((Time < 2 && var(2) > 1), 1, 8.25)

[State 1035, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1035, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1035, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1035, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1035, Hit 1]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 || Root, var(20))
trigger1 = var(2) < 2
attr = S, SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 49 < 7, 7, fvar(11) * 49)), 8
getPower = 0, 0
givePower = 36, 36
pauseTime = 4 * (var(2) < 2), ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 4 * (var(2) < 2), ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -10.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 22 + ifElse(var(20), 6, 12)
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1035, Hit 2]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 1 || Root, var(20))
trigger1 = var(2) >= 2
attr = S, SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 8
getPower = 0, 0
givePower = 36, 36
pauseTime = 4 * (var(2) < 2), ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 4 * (var(2) < 2), ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = -10.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.31, -7.36
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 1
fall.recoverTime = 22 + ifElse(var(20), 6, 12)
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

[State 1035, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
persistent = 0
ignorehitPause = 1

[State 1035, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8013)
ID = 8000
name = "Spark"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < 20, ceil(P2Dist x), 20)), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
persistent = 0
ignoreHitPause = 1

[State 1035, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
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
persistent = 0
ignoreHitPause = 1

[State 1035, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1
persistent = 0

[State 1035, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(15) = 1
persistent = 0

[State 1035, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1
persistent = 0

[State 1035, ProjContact]
type = ParentVarSet
trigger1 = MoveContact && NumTarget
trigger1 = Root, StateNo = [1000,1030]
var(18) = 1
persistent = 0

[State 1035, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = ifElse(var(2) < 2, 1035, 1007)
ignoreHitPause = 1

[State 1035, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1007
ignoreHitPause = 1

[State 1035, End]
type = DestroySelf
trigger1 = pos x != [-200,200]

;========================< SOMMERSAULT FX >=============================
[Statedef 1105]
type = A
velset = 0, 0
anim = 1105
sprpriority = 3

[State 1105, End]
type = destroyself
trigger1 = root, movetype = H
trigger2 = root, stateno != 1100 || (root, anim != [1100, 1120])
trigger2 = root, stateno != 1130 || root, anim != 1130
trigger2 = root, stateno != 3000 || root, anim != 3000
trigger2 = root, stateno != 3050 || root, anim != 3050
trigger3 = (root, anim = [1100, 1110])
trigger3 = root, animelemtime(3) < 0 || root, animelemtime(6) >= 0
trigger4 = root, anim = 1120 || root, anim = 1130
trigger4 = root, animelemtime(3) < 0 || root, animelemtime(9) >= 0

[State 1105, End]
type = destroyself
triggerall = root, anim = 3000
trigger1 = root, animelemtime(4) < 0 || root, animelemtime(22) >= 0
trigger2 = root, animelemtime(10) >= 0 && root, animelemtime(16) < 0
[State 1105, End]
type = destroyself
triggerall = root, anim = 3050
trigger1 = root, animelemtime(4) < 0 || root, animelemtime(34) >= 0
trigger2 = root, animelemtime(10) >= 0 && root, animelemtime(16) < 0
trigger3 = root, animelemtime(22) >= 0 && root, animelemtime(28) < 0

[State 1105, Bind]
type = bindtoroot
trigger1 = 1
[State 1105, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1105, Anim]
type = changeanim
trigger1 = ((root, anim = [1100, 1120]) || root, anim = 1130)
trigger1 = root, animelemtime(3) >= 0 && root, animelemtime(4) < 0
value = 1105
elem = 1
[State 1105, Anim]
type = changeanim
trigger1 = ((root, anim = [1100, 1120]) || root, anim = 1130)
trigger1 = root, animelemtime(4) >= 0 && root, animelemtime(5) < 0
value = 1105
elem = 2
[State 1105, Anim]
type = changeanim
trigger1 = ((root, anim = [1100, 1120]) || root, anim = 1130)
trigger1 = root, animelemtime(5) >= 0 && root, animelemtime(6) < 0
value = 1105
elem = 3
[State 1105, Anim]
type = changeanim
trigger4 = root, anim = 1120 || root, anim = 1130
trigger1 = root, animelemtime(6) >= 0 && root, animelemtime(7) < 0
value = 1105
elem = 4
[State 1105, Anim]
type = changeanim
trigger4 = root, anim = 1120 || root, anim = 1130
trigger1 = root, animelemtime(7) >= 0 && root, animelemtime(8) < 0
value = 1105
elem = 5
[State 1105, Anim]
type = changeanim
trigger4 = root, anim = 1120 || root, anim = 1130
trigger1 = root, animelemtime(8) >= 0 && root, animelemtime(9) < 0
value = 1105
elem = 6

[State 1105, Anim]
type = changeanim
triggerall = root, anim = 3000
trigger1 = (root, animelemtime(4) >= 0 && root, animelemtime(5) < 0)
trigger2 = (root, animelemtime(16) >= 0 && root, animelemtime(17) < 0)
value = 1105
elem = 1
[State 1105, Anim]
type = changeanim
triggerall = root, anim = 3000
trigger1 = (root, animelemtime(5) >= 0 && root, animelemtime(6) < 0)
trigger2 = (root, animelemtime(17) >= 0 && root, animelemtime(18) < 0)
value = 1105
elem = 2
[State 1105, Anim]
type = changeanim
triggerall = root, anim = 3000
trigger1 = (root, animelemtime(6) >= 0 && root, animelemtime(7) < 0)
trigger2 = (root, animelemtime(18) >= 0 && root, animelemtime(19) < 0)
value = 1105
elem = 3
[State 1105, Anim]
type = changeanim
triggerall = root, anim = 3000
trigger1 = (root, animelemtime(7) >= 0 && root, animelemtime(8) < 0)
trigger2 = (root, animelemtime(19) >= 0 && root, animelemtime(20) < 0)
value = 1105
elem = 4
[State 1105, Anim]
type = changeanim
triggerall = root, anim = 3000
trigger1 = (root, animelemtime(8) >= 0 && root, animelemtime(9) < 0)
trigger2 = (root, animelemtime(20) >= 0 && root, animelemtime(21) < 0)
value = 1105
elem = 5
[State 1105, Anim]
type = changeanim
triggerall = root, anim = 3000
trigger1 = (root, animelemtime(9) >= 0 && root, animelemtime(10) < 0)
trigger2 = (root, animelemtime(21) >= 0 && root, animelemtime(22) < 0)
value = 1105
elem = 6

[State 1105, Anim]
type = changeanim
triggerall = root, anim = 3050
trigger1 = (root, animelemtime(4) >= 0 && root, animelemtime(5) < 0)
trigger2 = (root, animelemtime(16) >= 0 && root, animelemtime(17) < 0)
trigger3 = (root, animelemtime(28) >= 0 && root, animelemtime(29) < 0)
value = 1105
elem = 1
[State 1105, Anim]
type = changeanim
triggerall = root, anim = 3050
trigger1 = (root, animelemtime(5) >= 0 && root, animelemtime(6) < 0)
trigger2 = (root, animelemtime(17) >= 0 && root, animelemtime(18) < 0)
trigger3 = (root, animelemtime(29) >= 0 && root, animelemtime(30) < 0)
value = 1105
elem = 2
[State 1105, Anim]
type = changeanim
triggerall = root, anim = 3050
trigger1 = (root, animelemtime(6) >= 0 && root, animelemtime(7) < 0)
trigger2 = (root, animelemtime(18) >= 0 && root, animelemtime(19) < 0)
trigger3 = (root, animelemtime(30) >= 0 && root, animelemtime(31) < 0)
value = 1105
elem = 3
[State 1105, Anim]
type = changeanim
triggerall = root, anim = 3050
trigger1 = (root, animelemtime(7) >= 0 && root, animelemtime(8) < 0)
trigger2 = (root, animelemtime(19) >= 0 && root, animelemtime(20) < 0)
trigger3 = (root, animelemtime(31) >= 0 && root, animelemtime(32) < 0)
value = 1105
elem = 4
[State 1105, Anim]
type = changeanim
triggerall = root, anim = 3050
trigger1 = (root, animelemtime(8) >= 0 && root, animelemtime(9) < 0)
trigger2 = (root, animelemtime(20) >= 0 && root, animelemtime(21) < 0)
trigger3 = (root, animelemtime(32) >= 0 && root, animelemtime(33) < 0)
value = 1105
elem = 5
[State 1105, Anim]
type = changeanim
triggerall = root, anim = 3050
trigger1 = (root, animelemtime(9) >= 0 && root, animelemtime(10) < 0)
trigger2 = (root, animelemtime(21) >= 0 && root, animelemtime(22) < 0)
trigger3 = (root, animelemtime(33) >= 0 && root, animelemtime(34) < 0)
value = 1105
elem = 6

[State 1105, Anim]
type = changeanim
triggerall = root, anim = 3500
trigger1 = (root, animelemtime(5) >= 0 && root, animelemtime(6) < 0)
trigger2 = (root, animelemtime(12) >= 0 && root, animelemtime(13) < 0)
value = 1105
elem = 1
[State 1105, Anim]
type = changeanim
triggerall = root, anim = 3500
trigger1 = (root, animelemtime(6) >= 0 && root, animelemtime(7) < 0)
trigger2 = (root, animelemtime(13) >= 0 && root, animelemtime(14) < 0)
value = 1105
elem = 2
[State 1105, Anim]
type = changeanim
triggerall = root, anim = 3500
trigger1 = (root, animelemtime(7) >= 0 && root, animelemtime(8) < 0)
trigger2 = (root, animelemtime(14) >= 0 && root, animelemtime(15) < 0)
value = 1105
elem = 3
[State 1105, Anim]
type = changeanim
trigger1 = root, anim = 3500
trigger1 = (root, animelemtime(15) >= 0 && root, animelemtime(16) < 0)
value = 1105
elem = 4
[State 1105, Anim]
type = changeanim
trigger1 = root, anim = 3500
trigger1 = (root, animelemtime(16) >= 0 && root, animelemtime(17) < 0)
value = 1105
elem = 5
[State 1105, Anim]
type = changeanim
trigger1 = root, anim = 3500
trigger1 = (root, animelemtime(17) >= 0 && root, animelemtime(18) < 0)
value = 1105
elem = 6

;========================< SOMMERSAULT FX >=============================
[Statedef 11105]
type = A
velset = 0, 0
anim = 1105
sprpriority = 3

[State 1105, End]
type = destroyself
trigger1 = root, movetype = H
trigger2 = root, stateno != 1100 || (root, anim != [11100, 11120])
trigger2 = root, stateno != 1130 || root, anim != 11130
trigger2 = root, stateno != 3000 || root, anim != 13000
trigger2 = root, stateno != 3050 || root, anim != 13050
trigger3 = (root, anim = [11100, 11110])
trigger3 = root, animelemtime(3) < 0 || root, animelemtime(6) >= 0
trigger4 = root, anim = 11120 || root, anim = 11130
trigger4 = root, animelemtime(3) < 0 || root, animelemtime(9) >= 0

[State 1105, End]
type = destroyself
triggerall = root, anim = 13000
trigger1 = root, animelemtime(4) < 0 || root, animelemtime(22) >= 0
trigger2 = root, animelemtime(10) >= 0 && root, animelemtime(16) < 0
[State 1105, End]
type = destroyself
triggerall = root, anim = 13050
trigger1 = root, animelemtime(4) < 0 || root, animelemtime(34) >= 0
trigger2 = root, animelemtime(10) >= 0 && root, animelemtime(16) < 0
trigger3 = root, animelemtime(22) >= 0 && root, animelemtime(28) < 0

[State 1105, Bind]
type = bindtoroot
trigger1 = 1
[State 11105, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1105, Anim]
type = changeanim
trigger1 = ((root, anim = [11100, 11120]) || root, anim = 11130)
trigger1 = root, animelemtime(3) >= 0 && root, animelemtime(4) < 0
value = 1105
elem = 1
[State 1105, Anim]
type = changeanim
trigger1 = ((root, anim = [11100, 11120]) || root, anim = 11130)
trigger1 = root, animelemtime(4) >= 0 && root, animelemtime(5) < 0
value = 1105
elem = 2
[State 1105, Anim]
type = changeanim
trigger1 = ((root, anim = [11100, 11120]) || root, anim = 11130)
trigger1 = root, animelemtime(5) >= 0 && root, animelemtime(6) < 0
value = 1105
elem = 3
[State 1105, Anim]
type = changeanim
trigger4 = root, anim = 11120 || root, anim = 11130
trigger1 = root, animelemtime(6) >= 0 && root, animelemtime(7) < 0
value = 1105
elem = 4
[State 1105, Anim]
type = changeanim
trigger4 = root, anim = 11120 || root, anim = 11130
trigger1 = root, animelemtime(7) >= 0 && root, animelemtime(8) < 0
value = 1105
elem = 5
[State 1105, Anim]
type = changeanim
trigger4 = root, anim = 11120 || root, anim = 11130
trigger1 = root, animelemtime(8) >= 0 && root, animelemtime(9) < 0
value = 1105
elem = 6

[State 1105, Anim]
type = changeanim
triggerall = root, anim = 13000
trigger1 = (root, animelemtime(4) >= 0 && root, animelemtime(5) < 0)
trigger2 = (root, animelemtime(16) >= 0 && root, animelemtime(17) < 0)
value = 1105
elem = 1
[State 1105, Anim]
type = changeanim
triggerall = root, anim = 13000
trigger1 = (root, animelemtime(5) >= 0 && root, animelemtime(6) < 0)
trigger2 = (root, animelemtime(17) >= 0 && root, animelemtime(18) < 0)
value = 1105
elem = 2
[State 1105, Anim]
type = changeanim
triggerall = root, anim = 13000
trigger1 = (root, animelemtime(6) >= 0 && root, animelemtime(7) < 0)
trigger2 = (root, animelemtime(18) >= 0 && root, animelemtime(19) < 0)
value = 1105
elem = 3
[State 1105, Anim]
type = changeanim
triggerall = root, anim = 13000
trigger1 = (root, animelemtime(7) >= 0 && root, animelemtime(8) < 0)
trigger2 = (root, animelemtime(19) >= 0 && root, animelemtime(20) < 0)
value = 1105
elem = 4
[State 1105, Anim]
type = changeanim
triggerall = root, anim = 13000
trigger1 = (root, animelemtime(8) >= 0 && root, animelemtime(9) < 0)
trigger2 = (root, animelemtime(20) >= 0 && root, animelemtime(21) < 0)
value = 1105
elem = 5
[State 1105, Anim]
type = changeanim
triggerall = root, anim = 13000
trigger1 = (root, animelemtime(9) >= 0 && root, animelemtime(10) < 0)
trigger2 = (root, animelemtime(21) >= 0 && root, animelemtime(22) < 0)
value = 1105
elem = 6

[State 1105, Anim]
type = changeanim
triggerall = root, anim = 13050
trigger1 = (root, animelemtime(4) >= 0 && root, animelemtime(5) < 0)
trigger2 = (root, animelemtime(16) >= 0 && root, animelemtime(17) < 0)
trigger3 = (root, animelemtime(28) >= 0 && root, animelemtime(29) < 0)
value = 1105
elem = 1
[State 1105, Anim]
type = changeanim
triggerall = root, anim = 13050
trigger1 = (root, animelemtime(5) >= 0 && root, animelemtime(6) < 0)
trigger2 = (root, animelemtime(17) >= 0 && root, animelemtime(18) < 0)
trigger3 = (root, animelemtime(29) >= 0 && root, animelemtime(30) < 0)
value = 1105
elem = 2
[State 1105, Anim]
type = changeanim
triggerall = root, anim = 13050
trigger1 = (root, animelemtime(6) >= 0 && root, animelemtime(7) < 0)
trigger2 = (root, animelemtime(18) >= 0 && root, animelemtime(19) < 0)
trigger3 = (root, animelemtime(30) >= 0 && root, animelemtime(31) < 0)
value = 1105
elem = 3
[State 1105, Anim]
type = changeanim
triggerall = root, anim = 13050
trigger1 = (root, animelemtime(7) >= 0 && root, animelemtime(8) < 0)
trigger2 = (root, animelemtime(19) >= 0 && root, animelemtime(20) < 0)
trigger3 = (root, animelemtime(31) >= 0 && root, animelemtime(32) < 0)
value = 1105
elem = 4
[State 1105, Anim]
type = changeanim
triggerall = root, anim = 13050
trigger1 = (root, animelemtime(8) >= 0 && root, animelemtime(9) < 0)
trigger2 = (root, animelemtime(20) >= 0 && root, animelemtime(21) < 0)
trigger3 = (root, animelemtime(32) >= 0 && root, animelemtime(33) < 0)
value = 1105
elem = 5
[State 1105, Anim]
type = changeanim
triggerall = root, anim = 13050
trigger1 = (root, animelemtime(9) >= 0 && root, animelemtime(10) < 0)
trigger2 = (root, animelemtime(21) >= 0 && root, animelemtime(22) < 0)
trigger3 = (root, animelemtime(33) >= 0 && root, animelemtime(34) < 0)
value = 1105
elem = 6

[State 1105, Anim]
type = changeanim
triggerall = root, anim = 13500
trigger1 = (root, animelemtime(5) >= 0 && root, animelemtime(6) < 0)
trigger2 = (root, animelemtime(12) >= 0 && root, animelemtime(13) < 0)
value = 1105
elem = 1
[State 1105, Anim]
type = changeanim
triggerall = root, anim = 13500
trigger1 = (root, animelemtime(6) >= 0 && root, animelemtime(7) < 0)
trigger2 = (root, animelemtime(13) >= 0 && root, animelemtime(14) < 0)
value = 1105
elem = 2
[State 1105, Anim]
type = changeanim
triggerall = root, anim = 13500
trigger1 = (root, animelemtime(7) >= 0 && root, animelemtime(8) < 0)
trigger2 = (root, animelemtime(14) >= 0 && root, animelemtime(15) < 0)
value = 1105
elem = 3
[State 1105, Anim]
type = changeanim
trigger1 = root, anim = 13500
trigger1 = (root, animelemtime(15) >= 0 && root, animelemtime(16) < 0)
value = 1105
elem = 4
[State 1105, Anim]
type = changeanim
trigger1 = root, anim = 13500
trigger1 = (root, animelemtime(16) >= 0 && root, animelemtime(17) < 0)
value = 1105
elem = 5
[State 1105, Anim]
type = changeanim
trigger1 = root, anim = 13500
trigger1 = (root, animelemtime(17) >= 0 && root, animelemtime(18) < 0)
value = 1105
elem = 6

;========================< MOONSAULT FX >=============================
[Statedef 1205]
type = A
velset = 0, 0
anim = 1205
sprpriority = 3

[State 1205, Bind]
type = bindtoroot
trigger1 = 1
[State 1205, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1205, End]
type = destroyself
trigger1 = root, movetype = H
trigger2 = (root, stateno != 1200 && root, stateno != 1251 && root, stateno != 1252 && root, stateno != 1253) || (root, anim != [1200, 1220])
trigger2 = root, stateno != 1230 || root, anim != 1230
trigger2 = root, stateno != 1271 || root, anim != 1271
trigger2 = root, stateno != 3700 || root, anim != 3700
trigger3 = (root, anim = [1200, 1220]) || root, anim = 1230
trigger3 = root, animelemtime(5) < 0 || root, animelemtime(8) >= 0
trigger4 = root, anim = 3700
trigger4 = root, animelemtime(7) < 0 || (root, animelemtime(10) >= 0 && root, animelemtime(15) < 0) || root, animelemtime(18) >= 0
trigger5 = root, anim = 1271
trigger5 = root, animelemtime(5) < 0 || root, animelemtime(6) >= 0 && root, animelemtime(8) < 0 || root, animelemtime(10) >= 0 && root, animelemtime(16) < 0 || root, animelemtime(19) >= 0

[State 1205, Anim]
type = changeanim
trigger1 = ((root, anim = [1200, 1220]) || root, anim = 1230)
trigger1 = root, animelemtime(5) >= 0 && root, animelemtime(6) < 0
value = 1205
elem = 1
[State 1205, Anim]
type = changeanim
trigger1 = ((root, anim = [1200, 1220]) || root, anim = 1230)
trigger1 = root, animelemtime(6) >= 0 && root, animelemtime(7) < 0
value = 1205
elem = 2
[State 1205, Anim]
type = changeanim
trigger1 = ((root, anim = [1200, 1220]) || root, anim = 1230)
trigger1 = root, animelemtime(7) >= 0 && root, animelemtime(8) < 0
value = 1205
elem = 3

[State 1205, Anim]
type = changeanim
triggerall = root, anim = 1271
trigger1 = root, animelemtime(5) >= 0 && root, animelemtime(6) < 0
trigger2 = root, animelemtime(8) >= 0 && root, animelemtime(9) < 0
trigger3 = root, animelemtime(16) >= 0 && root, animelemtime(17) < 0
value = 1205
elem = 1
[State 1205, Anim]
type = changeanim
triggerall = root, anim = 1271
trigger1 = root, animelemtime(6) >= 0 && root, animelemtime(7) < 0
trigger2 = root, animelemtime(9) >= 0 && root, animelemtime(10) < 0
trigger3 = root, animelemtime(17) >= 0 && root, animelemtime(18) < 0
value = 1205
elem = 2
[State 1205, Anim]
type = changeanim
triggerall = root, anim = 1271
trigger1 = root, animelemtime(7) >= 0 && root, animelemtime(8) < 0
trigger2 = root, animelemtime(10) >= 0 && root, animelemtime(11) < 0
trigger3 = root, animelemtime(18) >= 0 && root, animelemtime(19) < 0
value = 1205
elem = 3

[State 1205, Anim]
type = changeanim
triggerall = root, anim = 3700
trigger1 = root, animelemtime(7) >= 0 && root, animelemtime(8) < 0
trigger2 = root, animelemtime(15) >= 0 && root, animelemtime(16) < 0
value = 1205
elem = 1
[State 1205, Anim]
type = changeanim
triggerall = root, anim = 3700
trigger1 = root, animelemtime(8) >= 0 && root, animelemtime(9) < 0
trigger2 = root, animelemtime(16) >= 0 && root, animelemtime(17) < 0
value = 1205
elem = 2
[State 1205, Anim]
type = changeanim
triggerall = root, anim = 3700
trigger1 = root, animelemtime(9) >= 0 && root, animelemtime(10) < 0
trigger2 = root, animelemtime(17) >= 0 && root, animelemtime(18) < 0
value = 1205
elem = 3

;========================< MOONSAULT FX >=============================
[Statedef 11205]
type = A
velset = 0, 0
anim = 1205
sprpriority = 3

[State 1205, Bind]
type = bindtoroot
trigger1 = 1
[State 1205, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1205, End]
type = destroyself
trigger1 = root, movetype = H
trigger2 = (root, stateno != 1200 && root, stateno != 1251 && root, stateno != 1252 && root, stateno != 1253) || (root, anim != [11200, 11220])
trigger2 = root, stateno != 1230 || root, anim != 11230
trigger2 = root, stateno != 1271 || root, anim != 11271
trigger2 = root, stateno != 3700 || root, anim != 13700
trigger3 = (root, anim = [11200, 11220]) || root, anim = 11230
trigger3 = root, animelemtime(5) < 0 || root, animelemtime(8) >= 0
trigger4 = root, anim = 3700
trigger4 = root, animelemtime(7) < 0 || (root, animelemtime(10) >= 0 && root, animelemtime(15) < 0) || root, animelemtime(18) >= 0
trigger5 = root, anim = 11271
trigger5 = root, animelemtime(5) < 0 || root, animelemtime(10) >= 0 && root, animelemtime(16) < 0 || root, animelemtime(19) >= 0

[State 1205, Anim]
type = changeanim
trigger1 = ((root, anim = [11200, 11220]) || root, anim = 11230)
trigger1 = root, animelemtime(5) >= 0 && root, animelemtime(6) < 0
value = 1205
elem = 1
[State 1205, Anim]
type = changeanim
trigger1 = ((root, anim = [11200, 11220]) || root, anim = 11230)
trigger1 = root, animelemtime(6) >= 0 && root, animelemtime(7) < 0
value = 1205
elem = 2
[State 1205, Anim]
type = changeanim
trigger1 = ((root, anim = [11200, 11220]) || root, anim = 11230)
trigger1 = root, animelemtime(7) >= 0 && root, animelemtime(8) < 0
value = 1205
elem = 3

[State 1205, Anim]
type = changeanim
triggerall = root, anim = 11271
trigger1 = root, animelemtime(6) >= 0 && root, animelemtime(7) < 0
trigger2 = root, animelemtime(8) >= 0 && root, animelemtime(9) < 0
trigger3 = root, animelemtime(16) >= 0 && root, animelemtime(17) < 0
value = 1205
elem = 1
[State 1205, Anim]
type = changeanim
triggerall = root, anim = 11271
trigger1 = root, animelemtime(7) >= 0 && root, animelemtime(8) < 0
trigger2 = root, animelemtime(9) >= 0 && root, animelemtime(10) < 0
trigger3 = root, animelemtime(17) >= 0 && root, animelemtime(18) < 0
value = 1205
elem = 2
[State 1205, Anim]
type = changeanim
triggerall = root, anim = 11271
trigger1 = root, animelemtime(10) >= 0 && root, animelemtime(11) < 0
trigger2 = root, animelemtime(18) >= 0 && root, animelemtime(19) < 0
value = 1205
elem = 3

[State 1205, Anim]
type = changeanim
triggerall = root, anim = 13700
trigger1 = root, animelemtime(7) >= 0 && root, animelemtime(8) < 0
trigger2 = root, animelemtime(15) >= 0 && root, animelemtime(16) < 0
value = 1205
elem = 1
[State 1205, Anim]
type = changeanim
triggerall = root, anim = 13700
trigger1 = root, animelemtime(8) >= 0 && root, animelemtime(9) < 0
trigger2 = root, animelemtime(16) >= 0 && root, animelemtime(17) < 0
value = 1205
elem = 2
[State 1205, Anim]
type = changeanim
triggerall = root, anim = 13700
trigger1 = root, animelemtime(9) >= 0 && root, animelemtime(10) < 0
trigger2 = root, animelemtime(17) >= 0 && root, animelemtime(18) < 0
value = 1205
elem = 3

;========================<SONIC HURRICANE PROJECTILE>=============================
[StateDef 3505]
type = S
moveType = A
ctrl = 0
sprPriority = 8

[State 3205, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA, AA, AP, AT
time = -1
slot = 0
stateNo = 3505
ignoreHitPause = 1

[State 3205, HitBy]
type = HitBy
trigger1 = 1
value = SCA, NP, SP, HP
time = -1
ignoreHitPause = 1

[State 3205, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 3205
value = 3205

[State 3205, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 3205, Damage Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 3205, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 3205, First 11 Hits]
type = HitDef
trigger1 = Root, StateNo = 3806
attr = S, HP
hitFlag = MAFP
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 25 < 7, 7, fvar(11) * 25)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0,2
guard.pauseTime = 0,2
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 60
airGuard.ctrlTime = 16
ground.velocity = 1, 0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = 0, -1.36
air.cornerPush.velOff = 0
airGuard.velocity = -5, 0
airGuard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.sparkNo = -1
sparkXY = -10, -48
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
sprPriority = 3

[State 3205, Final Hit]
type = HitDef
trigger1 = Root, StateNo = 3806
attr = S, HP
hitFlag = MAFP
guardFlag = M
priority = 4,Hit
damage = ceil(ifElse(fvar(11) * 50 < 7, 7, fvar(11) * 50)), 7
getPower = 0, 0
givePower = 36, 36
pauseTime = 0,12
guard.pauseTime = 0,10
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = High
ground.hitTime = 15
ground.slideTime = 15
guard.hitTime = 15
air.hitTime = 60
ground.velocity = -4.32, -7.49
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.32, -7.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.sparkNo = -1
sparkXY = -10, -48
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120
sprPriority = 3

[State 3205, Miss]
type = HitDef
trigger1 = (Root, var(16)) || (Root, var(15) >= (12 + HitCount) && Parent, StateNo = 3806)
attr = S, HP
hitFlag =
sparkXY = -10,0

[State 3205, End]
type = ChangeState
trigger1 = MoveContact
value = 3506
ignoreHitPause = 1

[State 3205, End]
type = ChangeState
trigger1 = Root, MoveType = H
trigger2 = Time = 50 + var(13) * 3
trigger3 = var(14) >= 7
value = 3507
ignoreHitPause = 1

;Hit Pause
[StateDef 3506]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1
hitCountPersist = 1

[State 3206, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 3206, VarSet]
type = VarAdd
trigger1 = 1
var(14) = 1

[State 3206, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
ignoreHitPause = 1

[State 3206, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8014)
ID = 8000
name = "Spark"
posType = P1
pos = ceil(P2Dist x), 0
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3206, Counter FX]
type = Helper
trigger1 = MoveContact = 1 && NumTarget && var(9)
trigger1 = !(Target, HitShakeOver)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ceil(P2Dist x), 0
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 3206, Parent Hit Count]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 3206, Self Hit Count]
type = VarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 3206, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(15) = 1

[State 3206, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 3206, ProjContact]
type = ParentVarSet
triggerAll = MoveContact && NumTarget
trigger1 = Root, StateNo = 3806
var(18) = 1

[State 3206, End]
type = ChangeState
trigger1 = Time >= 0
value = 3505


;Disappear
[StateDef 3507]
type = A
physics = N
moveType = A
ctrl = 0
velSet = 0,0
sprPriority = 3
moveHitPersist = 1

[State 3207, VarSet]
type = VarSet
trigger1 = !Time
var(10) = AnimElemNo(0)

[State 3207, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 3207
elem = var(10)

[State 3207, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256 - (32 * Time), 256
ignoreHitPause = 1

[State 3207, End]
type = ChangeState
trigger1 = Time = 8
value = 1008

;====================< HARRIER >====================
[Statedef 6000]
type = A
physics = N
anim = 6000
velset = 0, 5
ctrl = 0
sprpriority = -255

[State 6000, Angle]
type = varadd
trigger1 = vel y <= 0 && var(0) <= 60
var(0) = 1

[State 6000, Angle]
type = angledraw
trigger1 = 1
value = var(0)
scale = (0.25 + .015 * time), (0.25 + .015 * time)

[State 6000, Vel]
type = veladd
trigger1 = animelemtime(2) >= 0
x = -.1
y = -.25

[State 6000, Snd]
type = playsnd
trigger1 = time = 5
value = 6000, 0

[State 6000, Shake]
type = envshake
trigger1 = !(time % 6) && time < 100
time = 6
ampl = 3
freq = 90

[State 6000, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 6000, End]
type = destroyself
trigger1 = time >= 190
trigger1 = (pos x != [ -312, 312]) || (screenpos y != [ -34, 75])

[Statedef 6001]
type = A
physics = N
anim = 6001
velset = 5, -1
ctrl = 0
sprpriority = -255

[State 6001, Pos]
type = posset
trigger1 = !time
x = -205 * facing
y = -112

[State 6001, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow

[State 6001, End]
type = destroyself
trigger1 = time >= 60
trigger1 = (pos x != [ -210, 210]) || (screenpos y != [0, 240])

;========================<SPARKS>=============================
;Guard Spark (Normal)
[StateDef 8000]
type = A
physics = N
moveType = I
anim = 8000
velset = 0,0
sprPriority = 5

[State 8000, Assert: No Shadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8000, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.125 + (0.046875 * Time), 0.125 + (0.046875 * Time)
ignoreHitPause = 1

[State 8000, Transparency]
type = Trans
trigger1 = Time < 4
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8000, Transparency]
type = Trans
trigger1 = Time >= 4
trans = AddAlpha
alpha = 256 - 64 * (Time - 4), 256
ignoreHitPause = 1

[State 8000, End]
type = DestroySelf
trigger1 = Time >= 8


;Guard Spark (Special)
[StateDef 8001]
type = A
physics = N
moveType = I
anim = 8001
velSet = 0,0
sprPriority = 5

[State 8001, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8001, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.25 + (0.03125 * Time), 0.25 + (0.03125 * Time)
ignoreHitPause = 1

[State 8001, Transparency]
type = Trans
trigger1 = time < 4
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8001, Transparency]
type = Trans
trigger1 = Time >= 4
trans = AddAlpha
alpha = 256 - 64 * (Time - 4), 256
ignoreHitPause = 1

[State 8001, End]
type = DestroySelf
trigger1 = Time >= 8


;Weak Hit Spark
[StateDef 8010]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8010, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8010, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8010, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8010, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = 0.3 - (Time * 0.03), 0.3 - (Time * 0.03)
ignoreHitPause = 1

[State 8010, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8010, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8010, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8010, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.15 + (0.009375 * Time), 0.15 + (0.009375 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time),256

[State 8010, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8010, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.15 + (0.009375 * Time), 0.15 + (0.009375 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8010, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8010, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 0.3 - (0.0375 * Time), 0.3 - (0.0375 * Time)
trans = AddAlpha
alpha = 128 - (16 * Time), 256

[State 8010, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8010, End]
type = DestroySelf
trigger1 = Time >= 16


;Medium Hit Spark
[StateDef 8011]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8011, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8011, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8011, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8011, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = 0.35 - (Time * 0.035), 0.35 - (Time * 0.035)
ignoreHitPause = 1

[State 8011, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8011, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8011, Center]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removetime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8011, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.175 + (0.0109375 * Time), 0.175 + (0.0109375 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8011, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8011, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.175 + (0.0109375 * Time), 0.175 + (0.0109375 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8011, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8011, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 0.35 - (0.04375 * Time), 0.35 - (0.04375 * Time)
trans = AddAlpha
alpha = 128 - (16 * Time), 256

[State 8011, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8011, End]
type = DestroySelf
trigger1 = Time >= 16


;Strong Hit Spark
[StateDef 8012]
type = A
physics = N
moveType = I
anim = 8010
velSet = 0,0
sprPriority = 5

[State 8012, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8012, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8012, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8012, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = 0.4 - (Time * 0.04), 0.4 - (Time * 0.04)
ignoreHitPause = 1

[State 8012, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8012, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8012, Center Explod]
type = Explod
trigger1 = !Time
anim = 8011
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8012, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.2 + (0.0125 * Time), 0.2 + (0.0125 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8012, Streaks Explod]
type = Explod
trigger1 = !time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8012, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.2 + (0.0125 * Time), 0.2 + (0.0125 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8012, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8012, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 0.4 - (0.05 * Time), 0.4 - (0.05 * Time)
trans = AddAlpha
alpha = 128 - (16 * Time), 256

[State 8012, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8012, End]
type = DestroySelf
trigger1 = Time >= 16


;Special Move Hit Spark
[StateDef 8013]
type = A
physics = N
moveType = I
anim = 8020
velSet = 0,0
sprPriority = 5

[State 8013, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8013, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8013, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8013, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = 0.45 - (Time * 0.045), 0.45 - (Time * 0.045)
ignoreHitPause = 1

[State 8012, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8013, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8013, Center Explod]
type = Explod
trigger1 = !Time
anim = 8021
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.225 + (0.0140625 * Time), 0.225 + (0.0140625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8013, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8022
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.225 + (0.0140625 * Time), 0.225 + (0.0140625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8013, P2 Back Explod]
type = Explod
trigger1 = !Time
anim = 8023
ID = 3
posType = P1
facing = -1
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = -3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale P2 Back Explod]
type = ModifyExplod
trigger1= NumExplod(3)
ID = 3
scale = 0.4, 0.4
trans = AddAlpha
alpha = 256 - (32 * Time), 256

[State 8013, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(random < 500, -1, 1)
vFacing = ifElse(random < 500, -1, 1)
sprPriority=3
removeTime=8
pauseMoveTime = -1
superMoveTime = -1

[State 8013, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 0.45 - (0.05625 * Time), 0.45 - (0.05625 * Time)
trans = AddAlpha
alpha = 192 - (24 * Time), 256

[State 8013, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8013, End]
type = DestroySelf
trigger1 = Time >= 16


;Super Hit Spark
[StateDef 8014]
type = A
physics = N
moveType = I
anim = 8030
velSet = 0,0
sprPriority = 5

[State 8014, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8014, AngleSet]
type = AngleSet
trigger1 = !Time
value = 30 * (Random % 12)

[State 8014, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 30

[State 8014, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = 0.5 - (Time * 0.05), 0.5 - (Time * 0.05)
ignoreHitPause = 1

[State 8014, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8014, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8014, Center Explod]
type = Explod
trigger1 = !Time
anim = 8031
ID = 1
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale Center Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.25 + (0.015625 * Time), 0.25 + (0.015625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8014, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8032
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.25 + (0.015625 * Time), 0.25 + (0.015625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8014, P2 Back Explod]
type = Explod
trigger1 = !Time
anim = 8033
ID = 3
posType = P1
facing = ifElse((Parent, StateNo = [3100,3999]), -1, ifelse(Random < 500, -1, 1))
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = -3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8014, P2 Back Explod (STSK)]
type = Explod
triggerAll = (Root, StateNo = 3200) && (Root, AnimElemTime(2) >= 0)
trigger1 = !Time
anim = 8015
ID = 3
posType = P1
facing = ifElse((Parent, StateNo = [3100,3200]), -1, 1)
vFacing = 1
sprPriority = -3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale P2 Back Explod]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 0.5,0.5
trans = AddAlpha
alpha = 256 - (32 * Time), 256

[State 8014, Impact Explod]
type = Explod
trigger1 = !Time
anim = 8014
ID = 4
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 3
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8014, Scale Impact Explod]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 0.5 - (0.0625 * Time), 0.5 - (0.0625 * Time)
trans = AddAlpha
alpha = 256 - (32 * Time),256

[State 8014, Remove Explods]
type = RemoveExplod
trigger1 = time >= 16

[State 8014, End]
type = DestroySelf
trigger1 = Time >= 16


;Normal Slash Spark
[StateDef 8015]
type = A
physics = N
moveType = I
anim = 8015
velSet = 0,0
sprPriority = 5

[State 8015, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8015, AngleSet]
type = AngleSet
trigger1 = !Time
value = 15 * (Random % 24)

[State 8015, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = ((0.5 + (Time * 0.15)) / 2) * 0.65, ((1 - (Time * 0.1)) / 2) * 0.65
ignoreHitPause = 1

[State 8015, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8015, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8015, Streaks Explod]
type = Explod
trigger1 = !time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8015, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.2 + (0.0125 * Time)) * 0.65, (0.2 + (0.0125 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8015, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8015, End]
type = DestroySelf
trigger1 = Time >= 16


;Special Move Slash Spark
[StateDef 8016]
type = A
physics = N
moveType = I
anim = 8015
velSet = 0,0
sprPriority = 5

[State 8016, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8016, AngleSet]
type = AngleSet
trigger1 = !Time
value = 15 * (Random % 24)

[State 8016, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = ((0.5 + (Time * 0.15)) / 2) * 0.65, ((1 - (Time * 0.1)) / 2) * 0.65
ignoreHitPause = 1

[State 8016, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8016, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8016, Circle]
type = Explod
trigger1 = !Time
anim = 8016
ID = 8016
posType = p1
removeTime = 10
sprPriority = 5
pauseMoveTime = -1
superMoveTime = -1

[State 8016, Circle Scale]
type = ModifyExplod
trigger1 = NumExplod(8016)
ID = 8016
scale = (0.25 + (0.025 * Time)) * 0.65, (0.25 + (0.025 * Time)) * 0.65
trans = AddAlpha
alpha = ceil(256 - 25.6 * Time), 256

[State 8016, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8016, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.225 + (0.0140625 * Time)) * 0.65, (0.225 + (0.0140625 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8016, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8016, End]
type = DestroySelf
trigger1 = Time >= 16


;Super Move Slash Spark
[StateDef 8017]
type = A
physics = N
moveType = I
anim = 8015
velSet = 0,0
sprPriority = 5

[State 8017, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8017, AngleSet]
type = AngleSet
trigger1 = !Time
value = 15 * (Random % 24)

[State 8017, Scale]
type = AngleDraw
trigger1 = Time < 10
scale = ((0.5 + (Time * 0.15)) / 2) * 0.65, ((1 - (Time * 0.1)) / 2) * 0.65
ignoreHitPause = 1

[State 8017, Scale]
type = AngleDraw
trigger1 = Time >= 10
scale = 0,0
ignoreHitPause = 1

[State 8017, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8017, Circle]
type = Explod
trigger1 = !Time
anim = 8016
ID = 8016
posType = p1
removeTime = 10
sprPriority = 5
pauseMoveTime = -1
superMoveTime = -1

[State 8017, Circle Scale]
type = ModifyExplod
trigger1 = NumExplod(8016)
ID = 8016
scale = (0.3 + (0.03 * Time)) * 0.65, (0.3 + (0.03 * Time)) * 0.65
trans = AddAlpha
alpha = ceil(256 - 25.6 * Time), 256

[State 8017, Streaks Explod]
type = Explod
trigger1 = !Time
anim = 8012
ID = 2
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
sprPriority = 5
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8017, Scale Streaks Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.25 + (0.015625 * Time)) * 0.65, (0.25 + (0.015625 * Time)) * 0.65
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8017, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 16

[State 8017, End]
type = DestroySelf
trigger1 = Time >= 16


;Reversal Spark
[StateDef 8020]
type = A
physics = N
moveType = I
anim = 8040
velSet = 0,0
sprPriority = 5

[State 8020, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8020, Scale]
type = AngleDraw
trigger1 = 1
scale = (0.25 + (0.09375 * Time)) * 0.65, (0.25 + (0.09375 * Time)) * 0.65
ignoreHitPause = 1

[State 8020, Transparency]
type = Trans
trigger1 = Time < 4
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8020, Transparency]
type = Trans
trigger1 = Time >= 4
trans = AddAlpha
alpha = 256 - 64 * (Time - 4), 256
ignoreHitPause = 1

[State 8020, End]
type = DestroySelf
trigger1 = Time >= 8



;======================<JUMP DUST>===========================
[StateDef 8100]
type = S
anim = 1
velSet = 0,0

[State 8100, Bind]
type = BindToRoot
trigger1 = Time

[State 8100, Floor Dust]
type = Explod
trigger1 = !Time
anim = 8100
sprPriority = 3
posType = P1
pos = 0, ceil(pos y)
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownpal = 1

[State 8100, Player Dust]
type = Explod
trigger1 = !Time || Time = 2 || Time = 6
anim = 8101
sprPriority = 3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownpal = 1

[State 8100, End]
type = DestroySelf
trigger1 = Time >= 7



;======================<DASH DUST>===========================
[StateDef 8103]
type = A
anim = 1
velSet = 0,0
sprPriority = 5

[State 8103, posSet]
type = PosSet
trigger1 = !Time = 0
y = 0

[State 8103, Dash Dust]
type = Explod
trigger1 = Time = 0 || Time = 3 || Time = 6
anim = 8103
ID = ifElse((Time = 6), 3, ifElse((Time = 3), 2, 1))
posType = P1
pos = 0,-4
random = 8,8
vel = -3 - (Random / 1000.0), -2 - (Random / 2000.0)
facing = ifElse(Random < 500,-1,1)
vFacing = ifElse(Random < 500,-1,1)
removeTime = 16
sprPriority = 3
pauseMoveTime = -1
superMoveTime = -1

[State 8103, Scale Explod 1]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 0.1 + (0.025 * Time), 0.1 + (0.025 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8103, Scale Explod 2]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 0.1 + (0.025 * (Time - 3)), 0.1 + (0.025 * (Time - 3))
trans = AddAlpha
alpha = 256 - (16 * (Time - 3)), 256

[State 8103, Scale Explod 3]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 0.1 + (0.025 * (Time - 6)), 0.1 + (0.025 * (Time - 6))
trans = AddAlpha
alpha = 256 - (16 * (Time - 6)), 256

[State 8103, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 22

[State 8103, End]
type = DestroySelf
trigger1 = !NumExplod


;======================<IMPACT DUST>===========================
[StateDef 8110]
type = A
anim = 1
velSet = 0,0
sprPriority = 5

[State 8110, Impact Dust Explod 1]
type = Explod
trigger1 = !Time
anim = 8110
ID = ifElse(Time = 8, 3, ifElse(Time = 4, 2, 1))
posType = P1
removeTime = 8
sprPriority = -4
pauseMoveTime = -1
superMoveTime = -1

[State 8110, Impact Dust Explod 2]
type = Explod
trigger1 = !Time
anim = 8120
ID = 2
posType = P1
removeTime = 8
sprPriority = -4
pauseMoveTime = -1
superMoveTime = -1

[State 8110, Scale]
type = ModifyExplod
trigger1 = 1
scale = 0.25 + (0.03125 * Time), 0.25 + (0.03125 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 256, 256 - (64 * (Time - 4))), 256

[State 8110, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 8

[State 8110, End]
type = DestroySelf
trigger1 = !NumExplod


;======================<WALL IMPACT DUST>===========================
[StateDef 8111]
type = A
anim = 1
velSet = 0,0
sprPriority = 5

[State 8111, Impact Dust Explod 1]
type = Explod
trigger1 = !Time
anim = 8111
ID = ifElse(Time = 8, 3, ifElse(Time = 4, 2, 1))
posType = P1
removeTime = 8
sprPriority = -4
pauseMoveTime = -1
superMoveTime = -1

[State 8111, Impact Dust Explod 2]
type = Explod
trigger1 = !Time
anim = 8121
ID = 2
posType = P1
removeTime = 8
sprPriority = -4
pauseMoveTime = -1
superMoveTime = -1

[State 8111, Scale]
type = ModifyExplod
trigger1 = 1
scale = 0.25 + (0.03125 * Time), 0.25 + (0.03125 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 256, 256 - (64 * (Time - 4))), 256

[State 8111, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 8

[State 8111, End]
type = DestroySelf
trigger1 = !NumExplod



;========================<RECOVER FX>=============================
[StateDef 8200]
type = A
velSet = 0,0
anim = 8200
sprPriority = 5

[State 8200, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8200, Scale]
type = AngleDraw
trigger1 = 1
scale = 0.25 + (0.017 * Time), 0.25 + (0.017 * Time)
ignoreHitPause = 1

[State 8200, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = ceil(256 - 17.1 * Time), 256
ignoreHitPause = 1

[State 8200, End]
type = DestroySelf
trigger1 = Time >= 15



;========================<COUNTER FX>=============================
[StateDef 8290]
type = A
physics = N
velSet = 0,0
anim = 1

[State 8290, "Counter!" Text Explod]
type = Explod
trigger1 = !NumExplod(8290)
anim = 8290
ID = 8290
sprPriority = 64
posType = P1
facing = Facing
removeTime = 32
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 8290, Scale]
type = ModifyExplod
trigger1 = Time < 8
ID = 8290
scale = 0.5, .5
trans = AddAlpha
alpha = 256,0

[State 8290, Scale]
type = ModifyExplod
trigger1 = Time >= 8
ID = 8290
scale = 0.5 + 0.0625 * (Time - 8), 0.5 + 0.0625 * (Time - 8)
trans = AddAlpha
alpha = 256 - 32 * (Time - 8), 32 * (Time - 8)

[State 8290, Safety]
type = RemoveExplod
trigger1 = Time >= 16

[State 8290, End]
type = DestroySelf
trigger1 = Time >= 16



;==================<POWER CHARGE FX>==================
;Aura and Dust
[StateDef 8330]
type = A
physics = N
moveType = I
anim = 1
ctrl = 0
velset = 0,0

[State 8330, BindToRoot]
type = BindToRoot
trigger1 = (Root, StateNo = 730)
pos = 0,0

[State 8330, Charging Sound]
type = PlaySnd
trigger1 = !Time
value = 730,0
channel = 0

[State 8330, Power Charge Aura]
type = Explod
trigger1 = !NumExplod(8330)
ID = 8330
anim = 8330
sprPriority = 3
posType = P1
bindTime = -1
removeTime = -1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 8330, Power Charge Dust]
type = Explod
trigger1 = !(Time % 6)
anim = 8105
sprPriority = -3
posType = P1
pos = 0, -ceil(pos y)
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 8330, Modify Aura 1]
type = ModifyExplod
trigger1 = Numexplod(8330) && Root, Power < 3000
ID = 8330
scale = 0.5, 0.1 + 0.4 * (Root, Power / 3000.0)

[State 8330, Modify Aura 2]
type = ModifyExplod
trigger1 = NumExplod(8330) && Root, Power >= 3000
ID = 8330
scale = 0.5, 0.5

[State 8330, StopSnd]
type = StopSnd
trigger1 = Root, StateNo != 730
channel = 0

[State 8330, RemoveExplod]
type = RemoveExplod
trigger1 = Root, StateNo != 730

[State 8330, End]
type = DestroySelf
trigger1 = Root, StateNo != 730


;Particles
[StateDef 8331]
type = A
physics = N
moveType = I
anim = 1
ctrl = 0
velSet = 0,0

[State 8331, BindToRoot]
type = BindToRoot
trigger1 = !(Time % 8)
pos = ceil(-151 + (Random / 3.125)), ceil(98 - (Random / 3.125))

[State 8331, Particle]
type = Explod
trigger1 = (Time % 8) = 1
anim = 8331
sprPriority = ifElse(Random < 750, 5, -1)
posType = P1
vel = ((RootDist x - 0) / 32.0), ((RootDist y - 71) / 32.0)
scale = ifElse(Random < 500, 0.5, -0.5), ifElse(Random < 500, 0.5, -0.5)
pauseMoveTime = -1
superMoveTime = -1
ownpal = 1

[State 8331, RemoveExplod]
type = RemoveExplod
trigger1 = Root, StateNo != 730

[State 8331, End]
type = DestroySelf
trigger1 = Root, StateNo != 730


;==================<VIOLENT WIN VS VEGA PARTICLES>==================
[StateDef 8332]
type = A
physics = N
moveType = I
anim = 1
ctrl = 0
velSet = 0,0

[State 8332, BindToRoot]
type = BindToRoot
trigger1 = !(Time % 4)
pos = ceil(-40 + (Random /10.25)), ceil(-17 - (Random / 10.25))

[State 8332, Particles]
type = Explod
trigger1 = (Time % 4) = 1
anim = 8332
sprPriority = ifElse(Random < 750,5,-1)
posType = P1
vel = (-(RootDist x + 4) / 10.0),(-(RootDist y - 85) / 10.0)
scale = ifElse(random < 500 ,0.5, -0.5),ifElse(random < 500, 0.5, -0.5)
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 8332, RemoveExplod]
type = RemoveExplod
trigger1 = Root, StateNo != 187 || Root, AnimElemTime(60) >= 0

[State 833, End]
type = DestroySelf
trigger1 = Root, StateNo != 187 || Root, AnimElemTime(60) >= 0



;==================<ZERO COUNTER FX>==================
[StateDef 8350]
type = A
physics = N
moveType = I
anim = 1
ctrl = 0
velSet = 0,0

[State 8350, bgPalFX]
type = bgPalFX
trigger1 = 1
time = 1
color = 16 * Time
mul = 16 * Time, 16 * Time, 16 * Time

[State 8350, Circle Explod]
type = Explod
trigger1 = !Time
anim = 8350
ID = 1
sprPriority = 3
posType = P1
removeTime = 16
superMoveTime = -1
ownPal = 1

[State 8350, Scale]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = (0.0625 * Time), (0.0625 * Time)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8350, Lightning Explod]
type = Explod
trigger1 = !Time
anim = 8351
ID = 2
sprPriority = -2
posType = P1
pos = 0, -ceil(pos y)
superMoveTime = -1
ownPal = 1

[State 8350, End]
type = DestroySelf
trigger1 = Time >= 16



;========================<CUSTOM COMBO>=============================
[StateDef 8400]
type = A
physics = N
moveType = I
anim = 8400
ctrl = 0
velSet = 0,0
sprPriority = 5

[State 8400, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8400, BGpalFX]
type = BGpalFX
trigger1 = Time < 25
time = 1
mul = 128,128,128

[State 8400, Rotate]
type = AngleSet
trigger1 = !Time
value = 6 * (Random % 60)

[State 8400, Rotate]
type = AngleAdd
trigger1 = 1
value = -6

[State 8400, Scale]
type = AngleDraw
trigger1 = Time < 8
scale = (0.0625 * Time), (0.0625 * Time)
ignoreHitPause = 1

[State 8400, Scale]
type = AngleDraw
trigger1 = Time >= 8
scale = 0.5, 0.5
ignoreHitPause = 1

[State 8400, Transparency]
type = Trans
trigger1 = Time < 16
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 8400, Transparency]
type = Trans
trigger1 = Time >= 16
trans = AddAlpha
alpha = ceil(256 - 25.6 * (Time - 16)), 256
ignoreHitPause = 1

[State 8400, Lines Explod]
type = Explod
trigger1 = !Time
anim = 8401
ID = 1
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 16
superMoveTime = -1

[State 8400, Scale Lines Explod]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 2 - (0.125 * Time), 2 - (0.125 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 64 * Time, 256), 256

[State 8400, Circle Explod]
type = Explod
trigger1 = Time = 16
anim = 8402
ID = 2
sprPriority = 5
posType = P1
removeTime = 32
superMoveTime = -1

[State 8400, Scale Circle Explod]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = (0.1 * (Time - 16)), (0.1 * (Time - 16))
trans = AddAlpha
alpha = ceil(256 - 25.6 * (Time - 16)), 256

[State 8400, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 26

[State 8400, End]
type = DestroySelf
trigger1 = Time >= 26



;========================<SUPER PAUSE FX>=============================
;Level 1 Super FX
[StateDef 8500]
type = A
velSet = 0,0
anim = 8500
sprPriority = 5

[State 8500, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8500, BGpalFX]
type = BGpalFX
trigger1 = Time < 39
time = 1
color = 0
mul = 0,0,256

[State 8500, Rotate]
type = AngleSet
trigger1 = !Time
value = 6 * (Random % 60)

[State 8500, Rotate]
type = AngleAdd
trigger1 = 1
value = -6

[State 8500, Scale]
type = AngleDraw
trigger1 = Time < 16
scale = (0.03125 * Time), (0.03125 * Time)
ignoreHitPause = 1

[State 8500, Scale]
type = AngleDraw
trigger1 = Time >= 16
scale = 0.5,0.5
ignoreHitPause = 1

[State 8500, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8500, Lines Explod]
type = Explod
trigger1 = Time = 0 || Time = 8 || Time = 16 || Time = 24
anim = 8501
ID = ifElse(Time = 24, 4, ifElse(Time = 16, 3, ifElse(Time = 8, 2, 1)))
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 16
superMoveTime = -1

[State 8500, Scale Lines Explod 1]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 1 - (0.0625 * Time), 1 - (0.0625 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 64 * Time, 256), 256

[State 8500, Scale Lines Explod 2]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 1 - (0.0625 * (Time - 8)), 1 - (0.0625 * (Time - 8))
trans = AddAlpha
alpha = ifElse((Time - 8) < 4, 64 * (Time - 8), 256), 256

[State 8500, Scale Lines Explod 3]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 1 - (0.0625 * (Time - 16)), 1 - (0.0625 * (Time - 16))
trans = AddAlpha
alpha = ifElse((Time - 16) < 4, 64 * (Time - 16), 256), 256

[State 8500, Scale Lines Explod 3]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 1 - (0.0625 * (Time - 24)), 1 - (0.0625 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8500, Circle Explod]
type = Explod
trigger1 = Time = 24
anim = 8502
ID = 10
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 32
superMoveTime = -1

[State 8500, Scale Circle Explod]
type = ModifyExplod
trigger1 = NumExplod(10)
ID = 10
scale = 2 - (0.125 * (Time - 24)), 2 - (0.125 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8500, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 40

[State 8500, End]
type = DestroySelf
trigger1 = Time >= 40


;Level 2 Super FX
[StateDef 8510]
type = A
velSet = 0,0
anim = 8510
sprPriority = 5

[State 8510, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8510, BGpalFX]
type = BGpalFX
trigger1 = Time < 39
time = 1
color = 0
mul = 192,0,256

[State 8510, Rotate]
type = AngleSet
trigger1 = !Time
value =6 * (Random % 60)

[State 8510, Rotate]
type = AngleAdd
trigger1 = 1
value = -6

[State 8510, Scale]
type = AngleDraw
trigger1 = Time < 16
scale = (0.03125 * Time), (0.03125 * Time)
ignoreHitPause = 1

[State 8510, Scale]
type = AngleDraw
trigger1 = Time >= 16
scale = 0.5, 0.5
ignoreHitPause = 1

[State 8510, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8510, Lines Explod]
type = Explod
trigger1 = Time = 0 || Time = 8 || Time = 16 || Time = 24
anim = 8511
ID = ifElse(Time = 24, 4, ifElse(Time = 16, 3, ifElse(Time = 8, 2, 1)))
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 16
superMoveTime = -1

[State 8510, Scale Lines Explod 1]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 1 - (0.0625 * Time), 1 - (0.0625 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 64 * Time, 256), 256

[State 8510, Scale Lines Explod 2]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 1 - (0.0625 * (Time - 8)), 1 - (0.0625 * (Time - 8))
trans = AddAlpha
alpha = ifElse((Time - 8) < 4, 64 * (Time - 8), 256), 256

[State 8510, Scale Lines Explod 3]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 1 - (0.0625 * (Time - 16)), 1 - (0.0625 * (Time - 16))
trans = AddAlpha
alpha = ifElse((Time - 16) < 4, 64 * (Time - 16), 256), 256

[State 8510, Scale Lines Explod 4]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 1 -(0.0625 * (Time - 24)), 1 - (0.0625 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8510, Circle Explod]
type = Explod
trigger1 = Time = 24
anim = 8512
ID = 10
sprPriority = 5
posType = P1
facing = ifElse(Random < 500,-1,1)
vFacing = ifElse(Random < 500,-1,1)
removeTime = 32
superMoveTime = -1

[State 8510, Scale]
type = ModifyExplod
trigger1 = NumExplod(10)
ID = 10
scale = 2 - (0.125 * (Time - 24)), 2 - (0.125 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24)<4, 64 * (Time - 24), 256), 256

[State 8510, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 40

[State 8510, End]
type = DestroySelf
trigger1 = Time >= 40


;Level 3 Super FX
[StateDef 8520]
type = A
velset = 0,0
anim = 8520
sprPriority = 5

[State 8520, Assert: NoShadow]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignoreHitPause = 1

[State 8520, Assert: NoBarDisplay, NoBG, NoFG]
type = AssertSpecial
trigger1 = Time < 40
flag = NoBarDisplay
flag2 = NoBG
flag3 = NoFG

[State 8520, Rotate]
type = AngleSet
trigger1 = !Time
value = 6 * (Random % 60)

[State 8520, Rotate]
type = AngleAdd
trigger1 = 1
value = -6

[State 8520, Scale]
type = AngleDraw
trigger1 = Time < 16
scale = (0.03125 * Time), (0.03125 * Time)
ignoreHitPause = 1

[State 8520, Scale]
type = AngleDraw
trigger1 = Time >= 16
scale = 0.5, 0.5
ignoreHitPause = 1

[State 8520, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 8520, Portrait 1]
type = Explod
trigger1 = !Time
anim = ifelse(Root,var(40)=1, 8526, 8525)
ID = 20
sprPriority = -16
posType = Back
removeTime = 40
superMoveTime = -1

[State 8520, Portrait 2]
type = Explod
trigger1 = !Time
anim = ifelse(Root,var(40)=1, 8526, 8525)
ID = 21
sprPriority = -16
posType = Back
removeTime = 40
superMoveTime = -1

[State 8520, Scale Portrait 1a]
type = ModifyExplod
trigger1 = NumExplod(20) && Time < 16
ID = 20
posType = Back
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 121)
scale = 1 - (0.03125 * Time), 1 - (0.03125 * Time)
trans = AddAlpha
alpha = (8 * Time), 256

[State 8520, Scale Portrait 2a]
type = ModifyExplod
trigger1 = NumExplod(21) && Time < 16
ID = 21
posType = Back
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 121)
scale = 2 - (0.09375 * Time), 2 - (0.09375 * Time)
trans = AddAlpha
alpha = (8 * Time), 256

[State 8520, Scale Portrait 1b]
type = ModifyExplod
trigger1 = NumExplod(20) && (Time = [16,32])
ID = 20
posType = Back
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 121)
scale = 0.5, 0.5
trans = AddAlpha
alpha = 256, 256

[State 8520, Scale Portrait 2b]
type = ModifyExplod
trigger1 = NumExplod(21) && (Time = [16,32])
ID = 21
scale = 0,0

[State 8520, Scale Portrait 1c]
type = ModifyExplod
trigger1 = NumExplod(20) && Time >= 32
ID = 20
posType = Back
pos = 160 + (8 * (Time - 32)), floor((1.3333333 * GameHeight / GameWidth) * 121)
scale = 0.5, 0.5
trans = AddAlpha
alpha = 128 - 16 * (Time - 32), 256

[State 8520, Scale Portrait 2c]
type = ModifyExplod
trigger1 = NumExplod(21) && Time >= 32
ID = 21
posType = Back
pos = 160 - (8 * (Time - 32)), floor((1.3333333 * GameHeight / GameWidth) * 121)
scale = 0.5, 0.5
trans = AddAlpha
alpha = 128 - 16 * (Time - 32), 256

[State 8520, Lines Explod]
type = explod
trigger1 = Time = 0 || Time = 8 || Time = 16 || Time = 24
anim = 8521
ID = ifElse(Time = 24, 4, ifElse(Time = 16, 3, ifElse(Time = 8, 2, 1)))
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1, 1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 16
superMoveTime = -1

[State 8520, Scale Lines Explod 1]
type = ModifyExplod
trigger1 = NumExplod(1)
ID = 1
scale = 1 - (0.0625 * Time), 1 - (0.0625 * Time)
trans = AddAlpha
alpha = ifElse(Time < 4, 64 * Time, 256), 256

[State 8520, Scale Lines Explod 2]
type = ModifyExplod
trigger1 = NumExplod(2)
ID = 2
scale = 1-(0.0625 * (Time - 8)), 1 - (0.0625 * (Time - 8))
trans = AddAlpha
alpha = ifElse((Time - 8) < 4, 64 * (Time - 8), 256), 256

[State 8520, Scale Lines Explod 3]
type = ModifyExplod
trigger1 = NumExplod(3)
ID = 3
scale = 1 - (0.0625 * (Time - 16)), 1 - (0.0625 * (Time - 16))
trans = AddAlpha
alpha = ifElse((Time - 16) < 4, 64 * (Time - 16), 256), 256

[State 8520, Scale Lines Explod 4]
type = ModifyExplod
trigger1 = NumExplod(4)
ID = 4
scale = 1 - (0.0625 * (Time - 24)), 1 - (0.0625 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8520, Circle Explod]
type = Explod
trigger1 = Time = 24
anim = 8522
ID = 10
sprPriority = 5
posType = P1
facing = ifElse(Random < 500, -1 ,1)
vFacing = ifElse(Random < 500, -1, 1)
removeTime = 32
superMoveTime = -1

[State 8520, Scale Circle Explod]
type = ModifyExplod
trigger1 = NumExplod(10)
ID = 10
scale = 2 - (0.125 * (Time - 24)), 2 - (0.125 * (Time - 24))
trans = AddAlpha
alpha = ifElse((Time - 24) < 4, 64 * (Time - 24), 256), 256

[State 8520, Remove Explods]
type = RemoveExplod
trigger1 = Time >= 40

[State 8520, End]
type = DestroySelf
trigger1 = Time >= 40



;========================<SUPER FINISH>=============================
[StateDef 8600]
type = A
velSet = 0,0
anim = 1

[State 8600, Super Finish Sound]
type = PlaySnd
trigger1 = !Time
value = 8600,0
channel = 1

[State 8600, SndPan]
type = SndPan
trigger1 = Time <= 80
channel = 1
absPan = ceil(sin(GameTime / 20.0 * pi) * 160)

[State 8600, BG PalFX]
type = BGpalFX
trigger1 = Time < 16
time = 1
mul = 0, 0, 0

[State 8600, BG PalFX]
type = BGpalFX
trigger1 = Time = [16,24)
time = 1
mul = 32 * (Time - 16), 32 * (Time - 16), 32 * (Time - 16)

[State 8600, Move Name: Custom Combo]
type = VarSet
trigger1= !Time && Root, var(23) = 900
var(0) = 1

[State 8600, Move Name: Somersault Justice]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3000,3099])
var(0) = 2

[State 8600, Move Name: Crossfire Blitz]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3100,3199])
trigger2 = !Time && (Root, var(23) = [3300,3399])
var(0) = 3

[State 8600, Move Name: Sonic Break]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3200,3299])
var(0) = 4

[State 8600, Move Name: Judgement Saber]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3800,3899])
var(0) = 5

[State 8600, Super Finish Explod]
type = Explod
trigger1 = !Time
anim = 8600
ID = 8600
ontop = 1
postype = Left
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * GameHeight / GameWidth)
bindTime = -1
removeTime = 32
pauseMoveTime = -1
superMoveTime = -1

[State 8600, Super Finish Explod Fade]
type = ModifyExplod
trigger1 = NumExplod(8600)
ID = 8600
trans = AddAlpha
alpha = ifElse(Time < 16, 256, 256 - 32 * (Time - 16)), 256

[State 8600, Text 1]
type = Explod
trigger1 = !Time && var(0)
anim = 8610 + var(0)
ID = 10
onTop = 1
posType = Left
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * GameHeight / GameWidth)
bindTime = -1
removeTime = 32
pauseMoveTime = -1
superMoveTime = -1

[State 8600, Text 2]
type = Explod
trigger1 = !Time && var(0)
anim = 8610 + var(0)
ID = 11
onTop = 1
posType = left
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
scale = 0.5, 0.5 * (1.3333333 * GameHeight / GameWidth)
bindTime = -1
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 8600, Text 1 Fade]
type = ModifyExplod
trigger1 = NumExplod(10)
ID = 10
trans = AddAlpha
alpha = ifElse(Time < 16, 256, 256 - 32 * (Time - 16)), ifElse(Time < 16, 0, 32 * (Time - 16))

[State 8600, Text 2 Fade]
type = ModifyExplod
trigger1 = NumExplod(11)
ID = 11
scale = 0.5 + (0.0625 * Time), 0.5 + (0.0625 * Time)
trans = AddAlpha
alpha = 256 - (32 * Time), 32 * Time

[State 8600, Circle Explod]
type = Explod
trigger1 = !Time
anim = 8601
ID = 8601
under = 1
posType = Left
pos = 160, floor((1.3333333 * GameHeight / GameWidth) * 120)
bindTime = -1
removeTime = 16
pauseMoveTime = -1
superMoveTime = -1

[State 8600, Circle Fade]
type = ModifyExplod
trigger1 = NumExplod(8601)
ID = 8601
scale = (0.25 * Time) * (1.3333333 * GameHeight / GameWidth), (0.25 * Time) * (1.3333333 * GameHeight / GameWidth)
trans = AddAlpha
alpha = 256 - (16 * Time), 256

[State 8600, Assert: NoFG]
type = AssertSpecial
trigger1 = Time < 16
flag = NoFG

[State 8600, Assert: NoBarDisplay]
type = AssertSpecial
trigger1 = Time < 24
flag = NoBarDisplay

[State 8600, RemoveExplod]
type = RemoveExplod
trigger1 = Time >= 24
trigger2 = RoundState < 3

[State 8600, End]
type = DestroySelf
trigger1 = RoundState < 3

;Camera Focus
[Statedef 6002]
type=S
physics =S
anim=1
ctrl=0

[State 6001,vel]
type=VelSet
trigger1=1
x=Ifelse(facing=1,15,15)

[State 6001, WIDTH]
type=Width
trigger1=1
value=1,1

[State 6001, NHB]
type=NotHitBy
trigger1=1
value=SCA
time=1

[State 6001,AS]
type=AssertSpecial
Trigger1=1
flag=invisible
flag2=noshadow

[State 6001,Bound]
type=ScreenBound
trigger1 =1
value =1
movecamera=320,0
[State 6001,push]
type=PlayerPush
trigger1 =1
value=0

[State 6001, Destroyself]
type=destroyself
trigger1= root, stateno = 1402
trigger2= root, stateno = 1432

;========================<CAMERA CONTROL>=============================
[StateDef 8999]
type = S
velSet = 0,0
anim = 1

[State 8999, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 1,1
ignoreHitPause = 1

[State 8999, End]
type = DestroySelf
trigger1 = RoundState = 2
