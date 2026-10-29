; _________________________________________
;| Sakura by varo_hades                    |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;===============================================================================
;============================<HELPER STATES>====================================
;===============================================================================

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

;========================<HADOUKEN CHARGE>=============================
[Statedef 1002]
physics = N
velset = 0,0
anim = 1002
sprpriority = 3

[State 1002, Bind]
type = bindtoroot
trigger1 = 1

[State 1002, Anim]
type = changeanim
trigger1 = root, anim = 1000 && root, animelemtime(10) < 0
trigger1 = animelemtime(3) >= 0
value = anim
elem = 1

[State 1002, Anim]
type = changeanim
triggerall = root, anim = 1000 && root, animelemtime(10) < 0
trigger1 = anim = 1002 && root, var(24) != 1
trigger2 = anim = 1003 && root, var(24) != 2
trigger3 = anim = 1004 && root, var(24) != 3
value = ifelse((root, var(24) = 1), 1002, ifelse((root, var(24) = 2), 1003, 1004))

[State 1002, Anim]
type = changeanim
trigger1 = root, anim = 1000 && root, animelemtime(10) >= 0
trigger1 = animelemtime(3) < 0
value = ifelse((root, var(24) = 1), 1002, ifelse((root, var(24) = 2), 1003, 1004))
elem = 3

[State 1002, No Shadow]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1002, Snd]
type = playsnd
trigger1 = !time
value = 1000,2
channel = 2

[State 1002, Snd]
type = stopsnd
trigger1 = root, stateno != 1000 || root, anim != 1000
trigger1 = root, stateno != 1030 || root, anim != 1000
trigger2 = !animtime
channel = 2

[State 1002, End]
type = destroyself
trigger1 = root, stateno != 1000 || root, anim != 1000
trigger1 = root, stateno != 1030 || root, anim != 1000
trigger2 = !animtime

;========================<HADOUKEN INTRO>=============================
[Statedef 1003]
physics = N
velset = 0,0
anim = 1002
sprpriority = 3

[State 1003, Bind]
type = bindtoroot
trigger1 = root, animelemtime(29) < 0

[State 1003, Bind]
type = bindtoroot
trigger1 = root, animelem = 29
pos = 86, -54

[State 1003, NHB]
type = nothitby
trigger1 = 1
time = -1
value = SCA
ignorehitpause = 1

[State 1003, Anim]
type = changeanim
trigger1 = root, animelemtime(29) < 0
trigger1 = animelemtime(3) >= 0
value = 1002
elem = 1

[State 1003, Anim]
type = changeanim
trigger1 = root, animelemtime(28) >= 0 && root, animelemtime(29) < 0
value = 1002
elem = 3

[State 1003, Anim]
type = changeanim
trigger1 = root, animelemtime(29) >= 0
value = 1005
persistent = 0

[State 1003, Vel]
type = velset
trigger1 = anim = 1005
x = (p2dist x -31) / 7.0
y = 0
persistent = 0

[State 1003, Anim]
type = changeanim
trigger1 = anim = 1005 && p2dist x <= 30
value = 1006
persistent = 0

[State 1003, Vel]
type = velset
trigger1 = anim = 1006
x = 0
y = 0

[State 1003, Snd]
type = playsnd
trigger1 = anim = 1006
value = 2,6
persistent = 0

[State 1003, Shrink]
type = angledraw
trigger1 = anim = [1005,1006]
scale = 0.5,0.4
ignorehitpause = 1

[State 1003, Shrink]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1003, Snd]
type = playsnd
trigger1 = !time
value = 1000,2
channel = 2

[State 1003, Snd]
type = stopsnd
trigger1 = root, stateno != 352
trigger2 = anim = 1006 && !animtime
channel = 2

[State 1003, End]
type = destroyself
trigger1 = root, stateno != 352
trigger2 = anim = 1006 && !animtime

;=====================<HADOU KEN PROJECTILE>=========================
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
trigger1 = Anim != 1005 && Anim != 1008
value = 1005

[State 1005, Button Detect]
type = VarSet
trigger1= !Time && !PrevStateNo
var(10) = Root, var(10)

[State 1005, VelSet]
type = VelSet
trigger1 = 1
x = ifElse(var(10) = 2, 5.5, ifElse(var(10) = 1, 4.5, 3.5))

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

[State 1005, Time]
type = VarAdd
trigger1 = 1
var(12) = 1

[State 1005, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 6 || Root, var(20))
trigger1 = Root, StateNo != 193
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10), 68, 68) < 7, 7, fvar(11) * ifElse(var(10), 68, 68))), 15
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

[State 1005, HitDef (Intro)]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 6 || Root, var(20))
trigger1 = Root, StateNo = 193
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = 0,0
getPower = 0,0
givePower = 0,0
pauseTime = 0, ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 0, ifElse((Root, var(20)), 6, 12)
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

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1006
ignoreHitPause = 1

[State 1005, modevar]
type = varset
trigger1 = !time && !prevstateno
var(42) = root, var(40)

[State 1005, ChangeAnim]
type = ChangeAnim
triggerAll = Anim = 1005
triggerAll = var(10) != 3 && var(42) != 1 && var(42) != 2
trigger1 = var(12) = ifElse(!var(10), 16, ifElse(var(10) = 1, 26, 36))
value = 1008

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1007
ignoreHitPause = 1

[State 1005, End]
type = DestroySelf
trigger1 = pos x != [-300,300]
trigger2 = Anim = 1008 && !AnimTime

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

;Disappear
[StateDef 1007]
type = A
physics = N
moveType = A
anim = 1006
ctrl = 0
velSet = 0,0
sprPriority = 3
moveHitPersist = 1

[State 1007, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 2,6
channel = 3
volume = -128
lowPriority = 1

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

;=====================<EX HADOKEN PROJECTILE>=========================
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
stateno = ifelse((var(2) < 2), 1035, 1037)
ignoreHitPause = 1

[State 1035, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1035, Button Detect]
type = VarSet
trigger1= !Time && !PrevStateNo
var(10) = Root, var(10)

[State 1035, VelSet]
type = VelSet
trigger1 = 1
x = ifElse((Time < 2 && var(2) > 1), 1, 7.25)

[State 1035, hitvar]
type = VarAdd
trigger1 = !time
var(2) = 1

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

[State 1035, HitDef]
type = HitDef
triggerall = var(2) < 2
trigger1 = !(Root, var(16)) && (Root, var(15) < 2 || Root, var(20))
attr = S, SP
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 48 < 7, 7, fvar(11) * 48)), 15
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 0, ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 60
ground.velocity = -8.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -8.52
guard.cornerPush.velOff = 0
air.velocity = -4, -8
yAccel = 0.6
air.fall = 1
fall.recover = 1
fall.recovertime = 120
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

[State 1035, HitDef]
type = HitDef
triggerall = var(2) = 2
trigger1 = !(Root, var(16)) && (Root, var(15) < 3 || Root, var(20))
attr = S, SP
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 48 < 7, 7, fvar(11) * 48)), 15
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 0, ifElse((Root, var(20)), 6, 12)
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 60
ground.velocity = -4, -8
ground.cornerPush.velOff = 0
guard.velocity = -8.52
guard.cornerPush.velOff = 0
air.velocity = -4, -8
yAccel = 0.6
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = 120
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

[State 1035, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1036
ignoreHitPause = 1

[State 1035, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1037
ignoreHitPause = 1

[State 1035, End]
type = DestroySelf
trigger1 = pos x != [-300,300]

;Hit Pause
[StateDef 1036]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1

[State 1036, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 1036, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
ignorehitPause = 1

[State 1036, HitSpark]
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

[State 1036, Counter FX]
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

[State 1036, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 1036, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(15) = 1

[State 1036, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1036, ProjContact]
type = ParentVarSet
trigger1 = MoveContact && NumTarget
trigger1 = Root, StateNo = 1030
var(18) = 1

[State 1036, End]
type = ChangeState
trigger1 = Time >= 4
value = ifElse((var(2) < 2), 1035, 1037)

;Disappear
[StateDef 1037]
type = A
physics = N
moveType = A
anim = 1006
ctrl = 0
velSet = 0,0
sprPriority = 3
moveHitPersist = 1

[State 1037, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 1037, End]
type = ChangeState
trigger1 = !AnimTime
value = 1008

;=====================<TENGYOU HADOU KEN PROJECTILE>=========================
[StateDef 1055]
type = S
physics = N
moveType = A
ctrl = 0
anim = 1025
sprPriority = 3

[State 1005, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 1057
ignoreHitPause = 1

[State 1005, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1005, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1025 && Anim != 1008
value = 1025

[State 1005, Button Detect]
type = VarSet
trigger1= !Time && !PrevStateNo
var(10) = Root, var(10)

[State 1005, VelSet]
type = VelSet
trigger1 = 1
x = ifElse(var(10) = 2, 5.5, ifElse(var(10) = 1, 4.5, 3.5))
y = ifElse(var(10) = 2, -5.5, ifElse(var(10) = 1, -4.5, -3.5))

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

[State 1005, Angle]
type = angledraw
trigger1 = anim = 1025
value = 43
ignorehitpause = 1

[State 1005, Angle]
type = angledraw
trigger1 = anim = 1008
value = 43
ignorehitpause = 1

[State 1005, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1005, Time]
type = VarAdd
trigger1 = 1
var(12) = 1

[State 1005, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 6 || Root, var(20))
trigger1 = Root, StateNo != 193
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * ifElse(var(10), 68, 68) < 7, 7, fvar(11) * ifElse(var(10), 68, 68))), 15
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

[State 1005, HitDef (Intro)]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 6 || Root, var(20))
trigger1 = Root, StateNo = 193
attr = S,SP
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = 0,0
getPower = 0,0
givePower = 0,0
pauseTime = 0, ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 0, ifElse((Root, var(20)), 6, 12)
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

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1056
ignoreHitPause = 1

[State 1005, modevar]
type = varset
trigger1 = !time && !prevstateno
var(42) = root, var(40)

[State 1005, ChangeAnim]
type = ChangeAnim
triggerAll = Anim = 1025
triggerAll = var(10) != 3 && var(42) != 1 && var(42) != 2
trigger1 = var(12) = ifElse(!var(10), 16, ifElse(var(10) = 1, 26, 36))
value = 1008

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1057
ignoreHitPause = 1

[State 1005, End]
type = DestroySelf
trigger1 = pos x != [-300,300]
trigger2 = Anim = 1008 && !AnimTime

;Hit Pause
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
value = ifElse(var(12) < 2 && var(10) = 3, 1085, 1057)

;Disappear
[StateDef 1057]
type = A
physics = N
moveType = A
anim = 1006
ctrl = 0
velSet = 0,0
sprPriority = 3
moveHitPersist = 1

[State 1005, Angle]
type = angledraw
trigger1 = anim = 1006
value = 43
ignorehitpause = 1

[State 1007, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 2,6
channel = 3
volume = -128
lowPriority = 1

[State 1007, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 1007, End]
type = ChangeState
trigger1 = !AnimTime
value = 1058

;Wait
[StateDef 1058]
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

;=====================<EX HADOKEN PROJECTILE>=========================
[StateDef 1085]
type = S
physics = N
moveType = A
ctrl = 0
anim = 1025
sprPriority = 3

[State 1085, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = ifelse((var(2) < 2), 1085, 1087)
ignoreHitPause = 1

[State 1085, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1085, Button Detect]
type = VarSet
trigger1= !Time && !PrevStateNo
var(10) = Root, var(10)

[State 1085, VelSet]
type = VelSet
trigger1 = 1
x = ifElse((Time < 2 && var(2) > 1), 1, 6.25)
y = -7

[State 1085, Angle]
type = angledraw
trigger1 = anim = 1025
value = 43
ignorehitpause = 1

[State 1085, hitvar]
type = VarAdd
trigger1 = !time
var(2) = 1

[State 1085, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(9) = (EnemyNear, MoveType = A)

[State 1085, Dampener]
type = VarSet
trigger1 = 1
fvar(11) = (Root, fvar(10)) * ifElse(var(9), 1.2, 1)

[State 1085, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256, 256
ignoreHitPause = 1

[State 1085, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1085, HitDef]
type = HitDef
triggerall = var(2) < 2
trigger1 = !(Root, var(16)) && (Root, var(15) < 4 || Root, var(20))
attr = S, SP
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 58 < 7, 7, fvar(11) * 58)), 15
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 0, ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 60
ground.velocity = -8.52, 0
ground.cornerPush.velOff = 0
guard.velocity = -8.52
guard.cornerPush.velOff = 0
air.velocity = -4, -8
yAccel = 0.6
air.fall = 1
fall.recover = 1
fall.recovertime = 120
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

[State 1085, HitDef]
type = HitDef
triggerall = var(2) = 2
trigger1 = !(Root, var(16)) && (Root, var(15) < 5 || Root, var(20))
attr = S, SP
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 58 < 7, 7, fvar(11) * 58)), 15
getPower = 0, 0
givePower = 36, 36
pauseTime = 0, ifElse((Root, var(20)), 6, 12)
guard.pauseTime = 0, ifElse((Root, var(20)), 6, 12)
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 60
ground.velocity = -4, -8
ground.cornerPush.velOff = 0
guard.velocity = -8.52
guard.cornerPush.velOff = 0
air.velocity = -4, -8
yAccel = 0.6
fall = 1
air.fall = 1
fall.recover = 1
fall.recovertime = 120
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

[State 1085, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 1086
ignoreHitPause = 1

[State 1085, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 1087
ignoreHitPause = 1

[State 1085, End]
type = DestroySelf
trigger1 = pos x != [-300,300]

;Hit Pause
[StateDef 1086]
type = A
physics = N
moveType = A
ctrl = 0
sprPriority = 3
moveHitPersist = 1

[State 1086, Angle]
type = angledraw
trigger1 = anim = 1025
value = 43
ignorehitpause = 1

[State 1086, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 1086, HitSound]
type = PlaySnd
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver)
value = ifElse(MoveGuarded, 3, 2), ifElse(MoveGuarded, 0, 6)
channel = 3
ignorehitPause = 1

[State 1086, HitSpark]
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

[State 1086, Counter FX]
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

[State 1086, HitCount]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(13) = 1

[State 1086, Juggle Points]
type = ParentVarAdd
trigger1 = !Time
trigger1 = MoveContact && NumTarget
var(15) = 1

[State 1086, ProjContact]
type = VarSet
trigger1 = MoveContact && NumTarget
var(18) = 1

[State 1086, ProjContact]
type = ParentVarSet
trigger1 = MoveContact && NumTarget
trigger1 = Root, StateNo = 1080
var(18) = 1

[State 1086, End]
type = ChangeState
trigger1 = Time >= 4
value = ifElse((var(2) < 2), 1085, 1087)

;Disappear
[StateDef 1087]
type = A
physics = N
moveType = A
anim = 1006
ctrl = 0
velSet = 0,0
sprPriority = 3
moveHitPersist = 1

[State 1087, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 1087, Angle]
type = angledraw
trigger1 = anim = 1006
value = 43
ignorehitpause = 1

[State 1087, End]
type = ChangeState
trigger1 = !AnimTime
value = 1008

;--- DIAGONAL ---
[Statedef 1024]
physics = N
velset = 0,0
anim = 1024
sprpriority = 3

[State 1024, Bind]
type = bindtoroot
trigger1 = 1

[State 1024, Anim]
type = changeanim
trigger1 = root, anim = 1020 && root, animelemtime(10) < 0
trigger1 = animelemtime(4) >= 0
value = 1024
elem = 1

[State 1024, Anim]
type = changeanim
trigger1 = root, anim = 1020 && root, animelemtime(10) >= 0
trigger1 = animelemtime(4) < 0
value = 1024
elem = 4

[State 1024, No Shadow]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1024, Snd]
type = playsnd
trigger1 = !time
value = 1000,2
channel = 2

[State 1024, Snd]
type = stopsnd
trigger1 = root, stateno != 1050 || root, anim != 1020
trigger1 = root, stateno != 1080 || root, anim != 1020
trigger2 = !animtime
channel = 2

[State 1024, End]
type = destroyself
trigger1 = root, stateno != 1050 || root, anim != 1020
trigger1 = root, stateno != 1080 || root, anim != 1020
trigger2 = !animtime

;========================<PROJECTILE SHIELD>=============================
[Statedef 1115]
type = A
physics = N
movetype = A
ctrl = 0
velset = 8,0
sprpriority = 3

[State 1115, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1115
ignorehitpause = 1

[State 1115, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, NP, SP, HP
ignorehitpause = 1

[State 1115, Anim]
type = changeanim
trigger1 = anim != 1115
value = 1115

[State 1115, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1115, Bind]
type = bindtoroot
trigger1 = 1
pos = 0, -55
time = -1

[State 1115, End]
type = destroyself
trigger1 = !animtime

;========================<PROJECTILE HITTER>=============================
[Statedef 1306]
type = A
physics = N
movetype = A
anim = 1306
ctrl = 0

[State 1306, Reversal]
type = reversaldef
trigger1 = !time
reversal.attr = SCA, AP
p1stateno = 1307
pausetime = 6,6
sparkno = -1
numhits = 0
ground.hittime = 0
ignorehitpause = 1

[State 1306, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 1307
ignorehitpause = 1

[State 1306, HB]
type = hitby
trigger1 = 1
time = -1
value = SCA, AP
ignorehitpause = 1

[State 1306, Bind]
type = bindtoroot
trigger1 = 1
time = -1

[State 1306, Anim]
type = changeanim
trigger1 = root, anim = 1305 && root, animelemtime(5) < 0
value = 1306
elem = (root, animelemno(0))
ignorehitpause = 1

[State 1306, End]
type = destroyself
trigger1 = !animtime || root, movetype = H
trigger2 = root, stateno != 1305 || root, anim != 1305
trigger3 = root, stateno != 1335 || root, anim != 1305

[Statedef 1307]
type = A
physics = N
movetype = A
anim = 1
ctrl = 0

[State 1307, Bind]
type = bindtoroot
trigger1 = 1
time = -1

[State 1307, End]
type = destroyself
trigger1 = root, stateno != 1305 || root, anim != 1305
trigger2 = root, stateno = 1305 && !(root, time)
trigger3 = root, stateno != 1335 || root, anim != 1305
trigger4 = root, stateno = 1335 && !(root, time)

;========================<SHINKUU HADOUKEN CHARGE>=============================
[Statedef 3004]
physics = N
velset = 0,0
anim = 3004
sprpriority = 3

[State 3004, Bind]
type = bindtoroot
trigger1 = 1

[State 3004, Anim]
type = changeanim
trigger1 = root, anim = 3000 && animelemtime(4) >= 0
trigger2 = root, anim = 3700 && animelemtime(4) >= 0
value = 3004
elem = 1

[State 3004, Anim]
type = changeanim
trigger1 = root, anim = 3001 && animelemtime(4) < 0
trigger2 = root, anim = 3701 && animelemtime(4) < 0
value = 3004
elem = 4

[State 3004, No Shadow]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3004, Snd]
type = playsnd
trigger1 = !time
value = 1000,2
channel = 2

[State 3004, Snd]
type = stopsnd
trigger1 = root, stateno != 3000 || (root, anim != [3000, 3001])
trigger1 = root, stateno != 3050 || (root, anim != [3000, 3001])
trigger1 = root, stateno != 3700 || (root, anim != [3700, 3701])
trigger2 = !animtime
channel = 2

[State 3004, End]
type = destroyself
trigger1 = root, stateno != 3000 || (root, anim != [3000, 3001])
trigger1 = root, stateno != 3050 || (root, anim != [3000, 3001])
trigger1 = root, stateno != 3700 || (root, anim != [3700, 3701])
trigger2 = !animtime

;=====================<SHINKUU HADOU KEN PROJECTILE>=========================
[StateDef 3005]
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
stateno = ifelse(var(2) < 5, 3005, 3007)
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

[State 3005, hitvar]
type = varadd
trigger1 = !time
var(2) = 1

[State 1005, VelSet]
type = VelSet
trigger1 = 1
x = ifelse((time <= 0 && var(2) > 1), 0.5, 4)

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

[State 1005, modevar]
type = varset
trigger1 = !time && !prevstateno
var(42) = root, var(40)

[State 3005, Shrink]
type = angledraw
trigger1 = 1 && var(42) != 1 && var(42) != 2
scale = 0.5, 1 -(var(12) * 0.0178)
ignorehitpause = 1

[State 3005, Shrink]
type = angledraw
trigger1 = 1 && var(42) != 0
scale = 0.66, 0.5
ignorehitpause = 1

[State 1005, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1005, Time]
type = VarAdd
trigger1 = time
var(12) = 1

[State 1005, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 10 || Root, var(20))
trigger1 = Root, StateNo != 193
attr = S,SP
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 32 < 7, 7, fvar(11) * 32)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 3 * (var(2) < 5), 12
guard.pauseTime = 3, ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 60
ground.velocity = ifelse(var(2) < 5, -4, -4), ifelse(var(2) < 5, 0, -8)
ground.cornerPush.velOff = 0
guard.velocity = -8.52
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = 0.6
fall = (var(2) >= 5)
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
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

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 3006
ignoreHitPause = 1

[State 3005, lose hits]
type = varadd
trigger1 = 1 && var(42) != 1 && var(42) != 2
trigger1 = var(12) >= (9 * var(2))
var(2) = 1

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 3007
ignoreHitPause = 1

[State 3005, End]
type = changestate
trigger1 = var(42) != 1 && var(42) != 2
trigger1 = var(12) >= 45
value = 3009

[State 1005, End]
type = DestroySelf
trigger1 = pos x != [-300,300]

;Hit Pause
[StateDef 3006]
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
trigger1 = Root, StateNo = [3000,3050]
var(18) = 1

[State 1006, End]
type = ChangeState
trigger1 = Time >= 0
value = ifElse(var(2) < 5, 3005, 3007)

;Disappear
[StateDef 3007]
type = A
physics = N
moveType = A
anim = 1006
ctrl = 0
velSet = 0,0
sprPriority = 3
moveHitPersist = 1

[State 3006, Shrink]
type = angledraw
trigger1 = 1 && var(42) != 1 && var(42) != 2
scale = 0.5, 0.75 -(var(12) * 0.024)
ignorehitpause = 1

[State 3005, Shrink]
type = angledraw
trigger1 = 1 && var(42) != 0
scale = 0.5, 0.75
ignorehitpause = 1

[State 1007, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 2,6
channel = 3
volume = -128
lowPriority = 1

[State 1007, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 1007, End]
type = ChangeState
trigger1 = !AnimTime
value = 3008

;Wait
[StateDef 3008]
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

[Statedef 3009]
type = A
physics = N
movetype = I
velset = 0.5 * vel x, 0.5 * vel y
ctrl = 0
sprpriority = 4

[State 3007, Anim]
type = changeanim
trigger1 = anim != 1007
value = 1007
elem = animelemno(0)

[State 3007, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 -(25 * time), 256
ignorehitpause = 1

[State 3007, Shrink]
type = angledraw
trigger1 = time
scale = 0.5, 0.2 -(time * 0.02)
ignorehitpause = 1

[State 3007, End]
type = destroyself
trigger1 = time >= 10

;========================<SHINKUU TENGYOU HADOU KEN CHARGE>=============================
[Statedef 3024]
physics = N
velset = 0,0
anim = 1024
sprpriority = 3

[State 3024, Bind]
type = bindtoroot
trigger1 = 1

[State 3024, Anim]
type = changeanim
trigger1 = root, anim = 3020 && animelemtime(4) >= 0
value = 1024
elem = 1

[State 3024, Anim]
type = changeanim
trigger1 = root, anim = 3021 && animelemtime(4) < 0
value = 1024
elem = 4

[State 3024, No Shadow]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 3024, Snd]
type = playsnd
trigger1 = !time
value = 1000,2
channel = 2

[State 3024, Snd]
type = stopsnd
trigger1 = root, stateno != 3020 || (root, anim != [3020,3021])
trigger1 = root, stateno != 3070 || (root, anim != [3020,3021])
trigger2 = !animtime
channel = 2

[State 3024, End]
type = destroyself
trigger1 = root, stateno != 3020 || (root, anim != [3020,3021])
trigger1 = root, stateno != 3070 || (root, anim != [3020,3021])
trigger2 = !animtime

;=====================<SHINKUU TENGYOU HADOU KEN PROJECTILE>=========================
[StateDef 3025]
type = S
physics = N
moveType = A
ctrl = 0
anim = 1025
sprPriority = 3

[State 1005, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = ifelse(var(2) < 5, 3025, 3027)
ignoreHitPause = 1

[State 1005, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1005, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1025
value = 1025

[State 1005, Button Detect]
type = VarSet
trigger1= !Time && !PrevStateNo
var(10) = Root, var(10)

[State 3005, hitvar]
type = varadd
trigger1 = !time
var(2) = 1

[State 1005, VelSet]
type = VelSet
trigger1 = 1
x = ifelse((time < 2 && var(2) > 1), 0.8, 5.1)
y = ifelse((time < 2 && var(2) > 1), -.7, -4.8)

[State 1005, modevar]
type = varset
trigger1 = !time && !prevstateno
var(42) = root, var(40)

[State 3005, Shrink]
type = angledraw
trigger1 = 1 && var(42) != 1 && var(42) != 2
scale = 0.5, 1 -(var(12) * 0.04)
value = 43
ignorehitpause = 1

[State 3005, Shrink]
type = angledraw
trigger1 = 1 && var(42) != 0
scale = 0.66, 0.5
value = 43
ignorehitpause = 1

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

[State 1005, Time]
type = VarAdd
trigger1 = time
var(12) = 1

[State 1005, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 10 || Root, var(20))
trigger1 = Root, StateNo != 193
attr = S,HP
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 32 < 7, 7, fvar(11) * 32)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 3 * (var(2) < 5), 12
guard.pauseTime = 3, ifElse((Root, var(20)), 6, 12)
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 60
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

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 3026
ignoreHitPause = 1

[State 3005, lose hits]
type = varadd
trigger1 = 1 && var(42) != 1 && var(42) != 2
trigger1 = var(12) >= (4 * var(2))
var(2) = 1

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 3027
ignoreHitPause = 1

[State 3005, End]
type = changestate
trigger1 = var(42) != 1 && var(42) != 2
trigger1 = var(12) >= 20
value = 3029

[State 1005, End]
type = DestroySelf
trigger1 = pos x != [-300,300]

;Hit Pause
[StateDef 3026]
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
trigger1 = Root, StateNo = [3000,3050]
var(18) = 1

[State 3006, Shrink]
type = angledraw
trigger1 = 1 && var(42) != 1 && var(42) != 2
scale = 0.5, 0.75 -(var(12) * 0.024)
value = 43
ignorehitpause = 1

[State 3005, Shrink]
type = angledraw
trigger1 = 1 && var(42) != 0
scale = 0.5, 0.75
value = 43
ignorehitpause = 1

[State 1006, End]
type = ChangeState
trigger1 = Time >= 0
value = ifElse(var(2) < 5, 3025, 3027)

;Disappear
[StateDef 3027]
type = A
physics = N
moveType = A
anim = 1006
ctrl = 0
velSet = 0,0
sprPriority = 3
moveHitPersist = 1

[State 1007, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 2,6
channel = 3
volume = -128
lowPriority = 1

[State 1007, Transparency]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignoreHitPause = 1

[State 3006, Shrink]
type = angledraw
trigger1 = 1 && var(42) != 1 && var(42) != 2
scale = 0.5, 0.75 -(var(12) * 0.024)
value = 43
ignorehitpause = 1

[State 3005, Shrink]
type = angledraw
trigger1 = 1 && var(42) != 0
scale = 0.5, 0.75
value = 43
ignorehitpause = 1

[State 1007, End]
type = ChangeState
trigger1 = !AnimTime
value = 3028

;Wait
[StateDef 3028]
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

[Statedef 3029]
type = A
physics = N
movetype = I
velset = 0.5 * vel x, 0.5 * vel y
ctrl = 0
sprpriority = 4

[State 3007, Anim]
type = changeanim
trigger1 = anim != 1007
value = 1007
elem = animelemno(0)

[State 3007, Trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256 -(25 * time), 256
ignorehitpause = 1

[State 3007, Shrink]
type = angledraw
trigger1 = time
scale = 0.5, 0.2 -(time * 0.02)
ignorehitpause = 1

[State 3007, End]
type = destroyself
trigger1 = time >= 10

;=====================<MAX SHINKUU HADOU KEN PROJECTILE>=========================
[StateDef 3055]
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
stateno = ifelse(var(2) < 8, 3055, 3007)
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

[State 3005, hitvar]
type = varadd
trigger1 = !time
var(2) = 1

[State 1005, VelSet]
type = VelSet
trigger1 = 1
x = ifelse((time <= 0 && var(2) > 1), 0.5, 4)

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

[State 1005, modevar]
type = varset
trigger1 = !time && !prevstateno
var(42) = root, var(40)

[State 3005, Shrink]
type = angledraw
trigger1 = 1 && var(42) != 1 && var(42) != 2
scale = 0.5, 1 -(var(12) * 0.0178)
ignorehitpause = 1

[State 3005, Shrink]
type = angledraw
trigger1 = 1 && var(42) != 0
scale = 0.66, 0.5
ignorehitpause = 1

[State 1005, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1005, Time]
type = VarAdd
trigger1 = time
var(12) = 1

[State 1005, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 10 || Root, var(20))
trigger1 = Root, StateNo != 193
attr = S,SP
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 30 < 7, 7, fvar(11) * 30)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 3 * (var(2) < 8), 12
guard.pauseTime = 3, ifElse((Root, var(20)), 6, 12)
animType = Hard
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 60
ground.velocity = ifelse(var(2) < 8, -4, -4), ifelse(var(2) < 8, 0, -8)
ground.cornerPush.velOff = 0
guard.velocity = -8.52
guard.cornerPush.velOff = 0
air.velocity = -4, -8
air.cornerPush.velOff = 0
yAccel = 0.6
fall = (var(2) >= 8)
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
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

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 3056
ignoreHitPause = 1

[State 3005, lose hits]
type = varadd
trigger1 = 1 && var(42) != 1 && var(42) != 2
trigger1 = var(12) >= (9 * var(2))
var(2) = 1

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 3007
ignoreHitPause = 1

[State 3005, End]
type = changestate
trigger1 = var(42) != 1 && var(42) != 2
trigger1 = var(12) >= 45
value = 3009

[State 1005, End]
type = DestroySelf
trigger1 = pos x != [-300,300]

;Hit Pause
[StateDef 3056]
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
trigger1 = Root, StateNo = [3000,3050]
var(18) = 1

[State 1006, End]
type = ChangeState
trigger1 = Time >= 0
value = ifElse(var(2) < 8, 3055, 3007)

;=====================<MAX SHINKUU TENGYOU HADOU KEN PROJECTILE>=========================
[StateDef 3075]
type = S
physics = N
moveType = A
ctrl = 0
anim = 1025
sprPriority = 3

[State 1005, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = ifelse(var(2) < 8, 3075, 3027)
ignoreHitPause = 1

[State 1005, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1005, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 1025
value = 1025

[State 1005, Button Detect]
type = VarSet
trigger1= !Time && !PrevStateNo
var(10) = Root, var(10)

[State 3005, hitvar]
type = varadd
trigger1 = !time
var(2) = 1

[State 1005, VelSet]
type = VelSet
trigger1 = 1
x = ifelse((time < 2 && var(2) > 1), 0.8, 5.1)
y = ifelse((time < 2 && var(2) > 1), -.7, -4.8)

[State 1005, modevar]
type = varset
trigger1 = !time && !prevstateno
var(42) = root, var(40)

[State 3005, Shrink]
type = angledraw
trigger1 = 1 && var(42) != 1 && var(42) != 2
scale = 0.5, 1 -(var(12) * 0.04)
value = 43
ignorehitpause = 1

[State 3005, Shrink]
type = angledraw
trigger1 = 1 && var(42) != 0
scale = 0.66, 0.5
value = 43
ignorehitpause = 1

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

[State 1005, Time]
type = VarAdd
trigger1 = time
var(12) = 1

[State 1005, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 10 || Root, var(20))
trigger1 = Root, StateNo != 193
attr = S,HP
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 30 < 7, 7, fvar(11) * 30)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 3 * (var(2) < 5), 12
guard.pauseTime = 3, ifElse((Root, var(20)), 6, 12)
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 60
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

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveContact
value = 3076
ignoreHitPause = 1

[State 3005, lose hits]
type = varadd
trigger1 = 1 && var(42) != 1 && var(42) != 2
trigger1 = var(12) >= (4 * var(2))
var(2) = 1

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveReversed
value = 3027
ignoreHitPause = 1

[State 3005, End]
type = changestate
trigger1 = var(42) != 1 && var(42) != 2
trigger1 = var(12) >= 20
value = 3029

[State 1005, End]
type = DestroySelf
trigger1 = pos x != [-300,300]

;Hit Pause
[StateDef 3076]
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
trigger1 = Root, StateNo = [3000,3070]
var(18) = 1

[State 3006, Shrink]
type = angledraw
trigger1 = 1 && var(42) != 1 && var(42) != 2
scale = 0.5, 0.75 -(var(12) * 0.024)
value = 43
ignorehitpause = 1

[State 3005, Shrink]
type = angledraw
trigger1 = 1 && var(42) != 0
scale = 0.5, 0.75
value = 43
ignorehitpause = 1

[State 1006, End]
type = ChangeState
trigger1 = Time >= 0
value = ifElse(var(2) < 8, 3075, 3027)

;=====================<NEKKETSU HADOU KEN PROJECTILE>=========================
[StateDef 3705]
type = S
physics = N
moveType = A
ctrl = 0
anim = 3705
sprPriority = 3

[State 1005, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT
time = -1
stateno = 3707
ignoreHitPause = 1

[State 1005, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignoreHitPause = 1

[State 1005, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 3705
value = 3705

[State 1005, Button Detect]
type = VarSet
trigger1= !Time && !PrevStateNo
var(10) = Root, var(10)

[State 3005, hitvar]
type = varadd
trigger1 = !time
var(2) = 1

[State 1005, VelSet]
type = VelSet
trigger1 = 1
x = ifelse((time < 2 && var(2) > 1), 0.5, 12)
y = 0

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

[State 4305, movehitvar]
type = varset
trigger1 = movecontact && numtarget
trigger1 = !(target, ishelper)
var(5) = 1
ignorehitpause = 1

[State 1005, Miss]
type = HitDef
trigger1 = 1
attr = S,SP
hitFlag =
sparkXY = -10,0

[State 1005, Time]
type = VarAdd
trigger1 = time
var(12) = 1

[State 1005, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 10 || Root, var(20))
trigger1 = !var(5)
attr = S,HP
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 298 < 7, 7, fvar(11) * 298)), 10
getPower = 0,0
givePower = 36, 36
pauseTime =  0,12
guard.pauseTime = 0,12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 60
ground.velocity = -6, -8
ground.cornerPush.velOff = 0
guard.velocity = -8.52
guard.cornerPush.velOff = 0
air.velocity = -6, -8
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1
guardSound = -1
sparkNo = -1
guard.SparkNo = -1
sparkXY = -10, -32
p2facing = 1
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
sprPriority = 3

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
pos = (target, const(size.ground.front) -10), 0
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
pos = (target, const(size.ground.front) -10), 0
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
trigger1 = Root, StateNo = [3700,3750]
var(18) = 1

[State 1005, ChangeState]
type = ChangeState
trigger1 = MoveContact || movereversed
value = 3707
ignoreHitPause = 1

[State 1005, End]
type = DestroySelf
trigger1 = pos x != [-400,400]

;Disapear
[StateDef 3707]
type = A
physics = N
movetype = A
anim = 3706
velset = 0,0
ctrl = 0
sprpriority = 4
movehitpersist = 1
hitcountpersist = 1

[State 4307, Flash]
type = bgpalfx
trigger1 = !time
time = 25
add = 128, 128, 128
sinadd = -128, -128, -128, 100

[State 4307, Snd]
type = playsnd
trigger1 = !time
value = 2,6
ignorehitpause = 1
persistent = 0

[State 4307, Circle]
type = helper
trigger1 = !var(7) && !time
helpertype = normal
stateno = 7251
ID = 7251
name = "Circle"
postype = p1
pos = -10,0
ownpal = 1
supermovetime = 300

[State 4307, fragment]
type = helper
trigger1 = numhelper(3710) < 16 && (time = [1,9])
helpertype = normal
stateno = 3710
ID = 3710
name = "Nekketsu Fragment"
postype = p1
pos = -20 + (random % 20), -10 + (random % 20)
size.xscale = ifelse(random < 500, -.5, 0.5)
size.yscale = ifelse(random < 500, -.5, 0.5)
ownpal = 1

[State 4307, fragment]
type = explod
trigger1 = (time = [1,9])
anim = 3710
sprpriority = 5
postype = p1
pos = -20 + (random % 20), -10 + (random % 20)
vel = -5 + (random / 50.0), -5 + (random / 100.0)
removetime = -2
ownpal = 1
scale = ifelse(random < 500, -.5, 0.5), ifelse(random < 500, -.5, 0.5)

[State 4307, HitSound]
type = playsnd
trigger1 = var(11) = 1
value = 2,6
channel = 2
ignorehitpause = 1

[State 4307, HitSound]
type = playsnd
trigger1 = var(11) = 2
value = 3,0
channel = 2
ignorehitpause = 1

[State 4307, HitSound]
type = varset
trigger1 = 1
var(11) = 0
ignorehitpause = 1

[State 4307, End]
type = destroyself
trigger1 = time >= 16
trigger1 = !numhelper(3710) || time >= 180

;========================<NEKKETSU FRAGMENT>=============================
[Statedef 3710]
type = S
physics = N
movetype = A
anim = 3710
ctrl = 0
velset = 0,0
sprpriority = 4

[State 4310, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA, AA, AP, AT
stateno = 3711
ignorehitpause = 1

[State 4310, HB]
type = nothitby
trigger1 = 1
time = -1
value = SCA, AA, AP, AT
ignorehitpause = 1

[State 4310, Vel]
type = velset
trigger1 = !time && !prevstateno
x = 5 + (random / 100.0)
y = -5 + (random / 100.0)

[State 4310, Assert]
type = trans
trigger1 = 1
trans = addalpha
alpha = 256, 256
ignorehitpause = 1

[State 1475, HitSound]
type = parentvarset
trigger1 = movecontact = 1
trigger1 = playerIDexist(parent, ID)
var(11) = ifelse(moveguarded, 2, 1)
persistent = 0
ignorehitpause = 1

[State 1005, HitDef]
type = HitDef
trigger1 = !(Root, var(16)) && (Root, var(15) < 10 || Root, var(20))
trigger1 = !movecontact
attr = S,HP
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 108 < 7, 7, fvar(11) * 108)), 10
getPower = 0,0
givePower = 36, 36
pauseTime =  0,12
guard.pauseTime = 0,12
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18
ground.slideTime = 17
guard.hitTime = 18
air.hitTime = 60
ground.velocity = -6, -8
ground.cornerPush.velOff = 0
guard.velocity = -8.52
guard.cornerPush.velOff = 0
air.velocity = -6, -8
air.cornerPush.velOff = 0
yAccel = 0.6
fall = 1
fall.recover = 0
fall.recoverTime = 120
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

[State 4310, HitSpark]
type = Helper
trigger1 = MoveContact = 1 && NumTarget
trigger1= (target,movetype=H) && !(target,time)
helperType = Normal
stateNo = ifElse(MoveGuarded, 8001, 8014)
ID = 8000
name = "Spark"
postype = p2
pos = (target, const(size.ground.front) -10), -floor(p2dist y)
facing = -1
ownPal = 1
size.xScale = 1
size.yScale = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 4310, End]
type = changestate
trigger1 = movecontact
value = 3711
ignorehitpause = 1

[State 4310, End]
type = destroyself
trigger1 = pos x != [-300,300]
trigger2 = !animtime

[Statedef 3711]
type = A
physics = N
movetype = I
ctrl = 0
sprpriority = 4

[State 4311, Assert]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = invisible
ignorehitpause = 1

[State 4311, End]
type = destroyself
trigger1 = time >= 12

;==========<KEI INTRO>==========
[Statedef 6000]
type = S
physics = N
anim = 6000
sprpriority = -1

[State 6000, offset]
type = offset
trigger1 = 1
y = -5

[State 6000, Anim]
type = changeanim
trigger1 = anim = 6000 && animelemtime(2) < 0 && root, stateno = 192
trigger1 = root, anim = 354 && root, animelemtime(4) < -1
value = 6000
elem = 1

[State 6000, Anim]
type = changeanim
trigger1 = anim = 6000 && !animtime
value = 6001

[State 6000, steps]
type = playsnd
trigger1 = anim = 6001
trigger1 = animelem = 2 || animelem = 5
value = 100,0

[State 6000, Turn]
type = turn
trigger1 = anim = 6001
persistent = 0

[State 6000, Vel]
type = velset
trigger1 = anim = 6001
x = 8

[State 6000, Snd]
type = playsnd
trigger1 = anim = 6000 && animelem = 6
value = 6,0
channel = 0

[State 6000, Snd]
type = playsnd
trigger1 = anim = 6000 && animelem = 13
value = 6,1
channel = 0

[State 6000, Snd]
type = playsnd
trigger1 = anim = 6001
value = 6,2
channel = 0
persistent = 0

[State 6000, End]
type = destroyself
trigger1 = anim = 6001
trigger1 = frontedgedist < -50

;==========<KEI WIN POSE 1>==========
[Statedef 6002]
type = S
physics = N
anim = 6002
sprpriority = 2

[State 6002, offset]
type = offset
trigger1 = 1
y = 5

[State 6002, steps]
type = playsnd
trigger1 = anim = 6002
trigger1 = animelem = 2 || animelem = 5
value = 100,0

[State 6002, Vel]
type = velset
trigger1 = anim = 6002
x = 8

[State 6002, Anim]
type = changeanim
trigger1 = anim = 6002 && rootdist x <= 200
value = 6003

[State 6002, Snd]
type = playsnd
trigger1 = anim = 6003
value = 6,1
channel = 0
persistent = 0

[State 6002, Snd]
type = playsnd
trigger1 = anim = 6003 && animelem = 3
value = 820,1

[State 6002, Dust]
type = explod
trigger1 = anim = 6003 && animelem = 3
anim = 8102
ID = 8102
sprpriority = -2
postype = p1
pos = 36
ownpal = 1

[State 6002, Shake]
type = envshake
trigger1 = anim = 6003 && animelem = 3
time = 18
freq = 60
ampl = 4

[State 6002, statetype]
type = statetypeset
trigger1 = anim = 6003 && animelemtime(3) >= 0
statetype = L
physics = C

;==========<KEI WIN POSE 2>==========
[Statedef 6004]
type = S
physics = N
anim = 6002
sprpriority = 2

[State 6004, steps]
type = playsnd
trigger1 = anim = 6002
trigger1 = animelem = 2 || animelem = 5
value = 100,0

[State 6004, Vel]
type = velset
trigger1 = anim = 6002
x = 8

[State 6004, Anim]
type = changeanim
trigger1 = anim = 6002 && rootdist x <= 125
value = 6004

[State 6004, Anim]
type = changeanim
trigger1 = anim = 6004 && root, stateno = 182 && root, anim = 182
value = 6004
elem = root, animelemno(0)

[State 6004, Anim]
type = turn
trigger1 = anim = 6004
persistent = 0

[State 6004, statetype]
type = statetypeset
trigger1 = anim = 6004
physics = S

;==========<KEI SHUN GOKU SATSU>==========
[Statedef 6010]
type = S
physics = N
anim = 6002
sprpriority = -1

[State 6010, Snd]
type = playsnd
trigger1 = !time
value = 6,0
channel = 0
persistent = 0

[State 6010, steps]
type = playsnd
trigger1 = anim = 6002
trigger1 = animelem = 2 || animelem = 5
value = 100,0

[State 6010, Vel]
type = velset
trigger1 = anim = 6002
x = 8

[State 6010, Anim]
type = changeanim
trigger1 = anim = 6002 && root, stateno = 3601 && root, anim = 3601
trigger1 = root, animelemtime(2) < 0 && rootdist x <= 90
value = 6010

[State 4001, grabsnd]
type = playsnd
trigger1 = anim = 6010
value = 2,800
persistent = 0

[State 6010, Vel]
type = velset
trigger1 = anim = 6010
x = 0
persistent = 0

[State 6010, Bind]
type = bindtoroot
trigger1 = anim = 6010 && root, stateno = 3601 && root, anim = 3601
trigger1 = root, animelemtime(8) < 0
pos = 65, 0

[State 6010, Bind]
type = bindtoroot
trigger1 = anim = 6010 && root, stateno = 3601 && root, anim = 3601
trigger1 = root, animelemtime(8) >= 0
pos = 90, 0

[State 6010, palfx]
type = palfx
trigger1 = root, animelemtime(10) = -1 || root, animelemtime(14) = -1 || root, animelemtime(18) = -1
add = -50, -50, -50
sinadd = -155, -155, -155, 80
mul = 256, 128, 256
color = 0
time = 20

[State 6010, palfx]
type = palfx
trigger1 = root, animelemtime(23) = -1
add = 0, 0, 0
sinadd = 0, 0, 0, 1
time = 1

[State 6010, End]
type = changestate
trigger1 = anim = 6010 && (root, stateno != 3601 || root, anim != 3601)
value = 6011

[State 6010, End]
type = changestate
trigger1 = anim = 6010 && root, stateno = 3601 && root, anim = 3601
trigger1 = root, animelemtime(23) >= -1
value = 6012

[Statedef 6011]
type = S
physics = N
anim = 6002
sprpriority = -1

[State 6011, Snd]
type = playsnd
trigger1 = !time
value = 6,2
channel = 0
persistent = 0

[State 6011, Turn]
type = turn
trigger1 = !time

[State 6011, steps]
type = playsnd
trigger1 = animelem = 2 || animelem = 5
value = 100,0

[State 6011, Vel]
type = velset
trigger1 = 1
x = 8

[State 6011, End]
type = destroyself
trigger1 = frontedgedist < -50

[Statedef 6012]
type = S
physics = N
anim = 6012
sprpriority = -3

[State 6012, Vel]
type = velset
trigger1 = anim = 6012
x = 0

[State 6012, Anim]
type = changeanim
trigger1 = anim = 6012 && !animtime
value = 6002

[State 6012, steps]
type = playsnd
trigger1 = anim = 6002
trigger1 = animelem = 2 || animelem = 5
value = 100,0

[State 6012, Turn]
type = turn
trigger1 = anim = 6002
persistent = 0

[State 6012, Vel]
type = velset
trigger1 = anim = 6002
x = 8

[State 6012, Snd]
type = playsnd
trigger1 = anim = 6012 && animelem = 5
value = 6,1
channel = 0

[State 6012, Snd]
type = playsnd
trigger1 = anim = 6002
value = 6,2
channel = 0
persistent = 0

[State 6012, End]
type = destroyself
trigger1 = anim = 6002
trigger1 = frontedgedist < -50

;--- WIN POSE ---
[Statedef 6091]
physics = N
velset = 0,0
anim = 6091
sprpriority = 2

[State 6091, Vel]
type = velset
trigger1 = time = 1
x = -(rootdist x -4) / -68.0
y = -5

[State 6091, Accel]
type = veladd
trigger1 = time
y = 0.15

[State 6091, Vel]
type = velset
trigger1 = anim = 6091 && vel y > 0 && rootdist y <= 90
x = 1.5 * vel x
y = -.5 * vel y
persistent = 0

[State 6091, Anim]
type = changeanim
trigger1 = anim = 6091 && vel y > 0 && pos y >= -10
value = 6092

[State 6091, Pos]
type = posset
trigger1 = anim = 6092
y = 0

[State 6091, Vel]
type = velset
trigger1 = anim = 6092
x = 0
y = 0

[State 6091, Dust]
type = explod
trigger1 = anim = 6092
anim = 8102
ID = 8102
sprpriority = -2
postype = p1
scale = 0.25,0.25
ownpal = 1
persistent = 0

;========================<7251 CIRCLE>=============================
[Statedef 7251]
physics = N
velset = 0,0
anim = 1

[State 7251, palfx]
type = palfx
trigger1 = !time
time = 25
sinadd = -255, -255, -255, 100

[State 7251, Circle]
type = explod
trigger1 = !time
anim = 8350
ID = 7251
sprpriority = 3
postype = p1
removetime = 25
supermovetime = 30

[State 7251, Shrink]
type = modifyexplod
trigger1 = numexplod(7251)
ID = 7251
scale = 0.067 + (0.03 * time), 0.2 + (0.09 * time)

[State 7251, No Shadow]
type = assertspecial
trigger1 = 1
flag = noshadow
flag2 = invisible
ignorehitpause = 1

[State 7251, End]
type = destroyself
trigger1 = !numexplod(7251)

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

;Special Move Hit Spark
[StateDef 8013]
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

;Super Hit Spark
[StateDef 8014]
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

;Reversal Spark
[StateDef 8020]
type = A
physics = N
moveType = I
anim = 8015
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
scale = 0.25 + (0.09375 * Time), 0.25 + (0.09375 * Time)
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
vel = ((RootDist x - 9) / 32.0), ((RootDist y - 71) / 32.0)
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
anim = 8525 + (Root, var(40))
ID = 20
sprPriority = -16
posType = Back
removeTime = 40
superMoveTime = -1

[State 8520, Portrait 2]
type = Explod
trigger1 = !Time
anim = 8525 + (Root, var(40))
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
value = 8600,2

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

[State 8600, Move Name: Shinku Hadouken]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3000,3099])
var(0) = 2

[State 8600, Move Name: Midare Zakura]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3100,3199])
var(0) = 3

[State 8600, Move Name: Haru Ranman]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3200,3299])
var(0) = 4

[State 8600, Move Name: Haru Ichiban]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3300,3399])
var(0) = 5

[State 8600, Move Name: Haru Issen]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3400,3499])
var(0) = 6

[State 8600, Move Name: Shunpuu Chou Rasen]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3500,3599])
var(0) = 7

[State 8600, Move Name: Shun Goku Satsu]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3600,3699])
var(0) = 8

[State 8600, Move Name: Nekketsu Hadou Ken]
type = VarSet
trigger1 = !Time && (Root, var(23) = [3700,3799])
var(0) = 9

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

[State 7600, Kanji]
type = helper
trigger1 = !time && (root, stateno = [3601,3602])
helpertype = normal
stateno = 8602
ID = 8602
name = "Haru Kanji"
postype = left
pos = 0, floor((gameheight / gamewidth) * 80) - 60
ownpal = 1

[State 8600, Assert: NoFG]
type = AssertSpecial
trigger1 = Time < 16
flag = NoFG

[State 8600, RemoveExplod]
type = RemoveExplod
trigger1 = Time >= 24
trigger2 = RoundState < 3

[State 8600, End]
type = DestroySelf
trigger1 = RoundState < 3

;========================<HARU KANJI>=============================
[Statedef 8602]
type = A
physics = N
anim = 1

[State 8610, Kanji]
type = explod
trigger1 = !time
anim = 8602
ID = 8602
sprpriority = -5
postype = left
pos = 160, floor((1.3333333 * gameheight / gamewidth) * 120)
bindtime = -1
removetime = 60

[State 7610, Shrink]
type = modifyexplod
trigger1 = time < 6 && numexplod(8602)
ID = 8602
scale = (5.5 - time) * (1.3333333 * gameheight / gamewidth), (5.5 - time) * (1.3333333 * gameheight / gamewidth)

[State 7610, Shrink]
type = modifyexplod
trigger1 = time >= 6 && numexplod(8602)
ID = 8602
scale = 0.5 * (1.3333333 * gameheight / gamewidth), 0.5 * (1.3333333 * gameheight / gamewidth)
trans = addalpha
alpha = ceil(256 - 8 * (time - 6)), 256

[State 7610, Safety]
type = removeexplod
trigger1 = time >= 38

[State 7610, End]
type = destroyself
trigger1 = time && !numexplod(8602)

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
