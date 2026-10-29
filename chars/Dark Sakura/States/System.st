; _________________________________________
;| Sakura by varo_hades                    |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;===============================================================================
;============================<SYSTEM STATES>====================================
;===============================================================================

;====================<STANDING>====================
[StateDef 0]
type = S
physics = S
moveType = I
velSet = 0,0
sprPriority = 0

[State 0, Remove Explods]
type = RemoveExplod
trigger1 = IsHelper

[State 0, Destroy Helpers]
type = DestroySelf
trigger1 = IsHelper

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != var(40) * 2 && Anim != 5
trigger2 = Anim = 5 && !AnimTime
value = var(40) * 2

[State 0, Dead]
type = ChangeState
trigger1 = !Alive
value = 5050

[State 0, Skywalker]
type = ChangeState
triggerall = pos y < 0
trigger1 = !NumEnemy
trigger2 = NumEnemy = 1
trigger2 = (Enemy, Name = "M -NES Game 1" + Enemy, Name = "M -NES Game 2" + Enemy, Name = "M -GB Game 1" + Enemy, AuthorName = "Bane84") < 2
trigger3 = Numenemy >= 2
trigger3 = (Enemy(0), Name = "M -NES Game 1" + Enemy(0), Name = "M -NES Game 2" + Enemy(0), Name = "M -GB Game 1" + Enemy(0), AuthorName = "Bane84") < 2
trigger3 = (Enemy(1), Name = "M -NES Game 1" + Enemy(1), Name = "M -NES Game 2" + Enemy(1), Name = "M -GB Game 1" + Enemy(1), AuthorName = "Bane84") < 2
value = 50

;====================<CROUCHING>====================
;Stand to Crouch
[StateDef 10]
type = C
physics = C
moveType = I
velSet = 0,0
sprPriority = 0

[State 10, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && Anim = 12
value = 10
elem = 3 - AnimElemNo(0)

[State 10, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 10
value = 10

[State 10, End]
type = ChangeState
trigger1 = !AnimTime
value = 11

;Crouching
[StateDef 11]
type = C
physics = C
moveType = I
anim = 11
velSet = 0,0
sprPriority = 0

[State 11, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 6 && !AnimTime
value = 11

;Crouch to Stand
[StateDef 12]
type = S
physics = S
moveType = I
velSet = 0,0
sprPriority = 0

[State 12, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && Anim = 10
value = 12
elem = 3 - AnimElemNo(0)

[State 12, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 12
value = 12

[State 12, End]
type = ChangeState
trigger1 = command = "holddown" && command != "holdup"
value = 10

[State 12, End]
type = ChangeState
trigger1 = !AnimTime
value = 0

;====================<WALKING>====================
[StateDef 20]
type = S
physics = S
moveType = I
sprPriority = 0

[State 20, VelSet]
type = VelSet
trigger1 = command = "holdfwd"
x = const(velocity.walk.fwd.x)

[State 20, VelSet]
type = VelSet
trigger1 = command = "holdback"
x = const(velocity.walk.back.x)

[State 20, ChangeAnim]
type = ChangeAnim
triggerAll = vel x > 0
trigger1 = Anim != 20 && Anim != 5
trigger2 = Anim = 5 && AnimElemTime(1) >= 1
value = 20

[State 20, ChangeAnim]
type = ChangeAnim
triggerAll = vel x < 0
trigger1 = Anim != 21 && Anim != 5
trigger2 = Anim = 5 && AnimElemTime(1) >= 1
value = 21

;====================<JUMPING>====================
;Jumping
[StateDef 40]
type = S
physics = S
moveType = I
anim = 40
ctrl = 0
velSet = 0,0
sprPriority = 1
faceP2 = 1

[State 40, Direction]
type = VarSet
trigger1 = !AILevel
sysvar(1) = ifElse(!Time, 0, ifElse(command = "holdfwd", 1, ifElse(command = "holdback", -1, sysvar(1))))

[State 40, Direction (AI)]
type = VarSet
trigger1 = AILevel
sysvar(1) = ifElse((EnemyNear, MoveType != A || BackEdgeBodyDist <= 10), 1, ifElse((EnemyNear, MoveType = A), -1, 0))

[State 40, High Jump]
type = VarSet
trigger1 = !Time && !AILevel
var(3) = ifElse(command = "highjump", 3, 0)

[State 40, High Jump (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(3) = ifElse((P2BodyDist x >= 160 || Random < (125 * (AILevel ** 2 / 64.0))), 3, 0)

[State 40, High Jump]
type = VarSet
trigger1 = !Time && PrevStateNo = 100
var(3) = 3

[State 40, Low Jump]
type = VarSet
trigger1 = !AILevel && command != "holdup" && (var(3) != [1,2])
var(3) = ifElse((var(3) = 3 && sysvar(1)), 2, 1)

[State 40, Low Jump (AI)]
type = VarSet
trigger1 = AILevel && (var(3) != [1,2])
trigger1 = (EnemyNear, StateType = C) && Random < 500
var(3) = ifElse((var(3) = 3 && sysvar(1)), 2, 1)

[State 40, Jump Sound]
type = PlaySnd
trigger1 = !AnimTime
value = ifElse((var(3) = [2,3]), 41, 40), 0

[State 40, Dust Helper]
type = Helper
trigger1 = !AnimTime
helperType = Normal
stateNo = 8100
ID = 8100
name = "Jump Dust"
posType = P1
ownPal = 1

[State 40, Velocity: Normal Jump]
type = VelSet
trigger1 = !AnimTime
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = const(velocity.jump.y)

[State 40, Velocity: Low Jump]
type = VelSet
trigger1 = !AnimTime && var(3) = 1
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.jump.fwd.x), const(velocity.jump.back.x)))
y = 0.75 * const(velocity.jump.y)

[State 40, Velocity: Long Low Jump]
type = VelSet
trigger1 = !AnimTime && var(3) = 2
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.runjump.fwd.x), const(velocity.runjump.back.x)))
y = 0.75 * const(velocity.jump.y)

[State 40, Velocity: Long Jump]
type = VelSet
trigger1 = !AnimTime && var(3) = 3
x = ifElse(!sysvar(1), const(velocity.jump.neu.x), ifElse(sysvar(1) = 1, const(velocity.runjump.fwd.x), const(velocity.runjump.back.x)))
y = ifElse(!sysvar(1), const(velocity.runjump.y), const(velocity.jump.y))

[State 40, End]
type = ChangeState
trigger1 = !AnimTime
value = 50
ctrl = 1

;In Air
[StateDef 50]
type = A
physics = N
moveType = I
sprPriority = 1

[State 50, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(!vel x , 41, ifElse(vel x > 0, 42, 43)) + 10 * (var(3) = [1,2])
persistent = 0

[State 50, Assert: No Guard]
type = AssertSpecial
trigger1 = var(3) = [1,2]
flag = NoAirGuard
ignoreHitPause = 1

[State 50, Grounded Frame]
type = PosFreeze
trigger1 = Time < 1 && PrevStateNo = 40
value = 1

[State 50, Gravity]
type = Gravity
trigger1 = Time >= 1 || PrevStateNo != 40

[State 50, Landing]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

[StateDef 51]
type = A
physics = N
moveType = I
sprPriority = 1

[State 51, Gravity]
type = Gravity
trigger1 = 1

[State 51, Landing]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;Landing
[StateDef 52]
type = S
physics = S
moveType = I
anim = 47
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 52, anim824]
type = changeanim
trigger1 = !time && prevstateno = 810
trigger2 = !time && prevstateno = 870
value = 811

[State 52, anim1104]
type = changestate
trigger1 = !time && prevstateno = [1100,1131]
trigger2 = !time && prevstateno = [3100,3150]
trigger3 = !time && prevstateno = [3400,3450]
trigger4 = !time && prevstateno = [3500,3550]
value = 1104

[State 52, anim1405]
type = changestate
trigger1 = !time && prevstateno = [1300,1330]
trigger2 = !time && prevstateno = 1400
value = 1405

[State 52, anim1405]
type = changestate
trigger1 = !time && prevstateno = 1430
value = 1435

[State 52, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && (var(3) = 1 || var(3) = 2)
trigger1 = (PrevStateNo = [600,699])
value = 57
ctrl = 0

[State 52, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 52, CtrlSet]
type = null;CtrlSet
trigger1 = !Time && (PrevStateNo != [600,699])
trigger2 = Time = 1 && Anim != 57
value = 1

[State 52, ChangeState to Guarding]
type = ChangeState
trigger1 = ctrl && command = "holdback"
trigger1 = InGuardDist && (PrevStateNo != [600,699])
value = 120

[State 52, Assert: NoWalk]
type = AssertSpecial
trigger1 = Anim != 5
flag = NoWalk
ignoreHitPause = 1

[State 52, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 52, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 52, ChangeAnim to Turning]
type = ChangeAnim
trigger1 = ctrl && P2Dist x < 0
trigger1 = Anim != 5
value = 5

[State 52, Turn]
type = Turn
trigger1 = Anim = 5 && AnimElem = 1

[State 52, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;======================<RUN>===========================
[StateDef 100]
type = S
physics = N
moveType = I
anim = 100
ctrl = 0
sprPriority = 1

[State 100, VelSet]
type = VelSet
trigger1 = 1
x = const(velocity.run.fwd.x)

[State 100, Step Sound]
type = PlaySnd
trigger1 = (AnimElem = 2 || AnimElem = 5)
value = 100, ifElse((AnimElem = 2 || AnimElem = 5), 0, 1)

[State 100, Dash Sound]
type = PlaySnd
trigger1 = !Time
value = 110,0

[State 100, Jump]
type = ChangeState
trigger1 = !AILevel
trigger1 = command = "holdfwd" && command = "holdup"
value = 40

[State 100, Jump (AI)]
type = ChangeState
trigger1 = AILevel && Random < 25
value = 40

[State 100, Dust Helper]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 100, End]
type = ChangeState
trigger1 = !AILevel && command != "holdfwd"
trigger2 = AILevel && P2BodyDist x <= 90
value = 101

;Stop Running
[StateDef 101]
type = S
physics = S
moveType = I
anim = 101
ctrl = 0
sprPriority = 1

[State 101, Voice]
type = PlaySnd
triggerall = var(40) = 0
trigger1 = !Time
value = 820,0
channel = 0

[State 101, Voice]
type = PlaySnd
triggerall = var(40) = 1
trigger1 = !Time
value = 820,10
channel = 0

[State 101, Stopping Sound]
type = PlaySnd
trigger1 = !Time
value = 101,0

[State 101, Skid Dust]
type = Explod
trigger1 = !Time
anim = 8104
sprPriority = 3
posType = P1
pos = 0,0
vel = 0,0
scale = 0.5,0.5
pauseMovetime = -1
superMoveTime = -1
ownpal = 1

[State 101, Jump]
type = ChangeState
trigger1 = !AILevel && command = "holdup"
value = 40

[State 101, End]
type = ChangeState
trigger1 = !AnimTime
value = ifElse(command = "holddown", 10, 0)
ctrl = 1

;========================<DASH BACKWARDS>==========================
[StateDef 105]
type = A
physics = N
moveType = I
velSet = 0,0
anim = 105
ctrl = 0
sprPriority = 1

[State 105, Back Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 105,0

[State 105, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
facing = -1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 105, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)

[State 105, VelMul]
type = VelMul
trigger1 = AnimElemTime(2) > 0
x = 0.98

[State 105, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) > 0
y = 0.65

[State 105, End]
type = ChangeState
trigger1 = AnimElemTime(2) >= 0
trigger1 = pos y > -vel y
value = 106

;Stop Dashing Backwards
[StateDef 106]
type = S
physics = S
ctrl = 0
anim = 106
velSet = 0,0

[State 106, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 106, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 100,1

[State 106, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprpriority = -3
postype = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 106, CtrlSet]
type = CtrlSet
trigger1 = Time >= 2
value = 1

[State 106, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;=================<DASH FORWARD>=================
[StateDef 110]
type = A
physics = N
moveType = I
anim = 110
ctrl = 0
sprPriority = 1

[State 110, Dash Sound]
type = PlaySnd
trigger1 = !Time
value = 110,0

[State 110, Dust Helper]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 110, VarSet -> Running]
type = VarSet
trigger1 = !Time
sysvar(1) = 1

[State 110, VarSet -> Not Running]
type = VarSet
triggerAll = AnimElemTime(3) < 0
trigger1 = !AILevel && command != "holdfwd"
sysvar(1) = 0

[State 110, ChangeState to Running]
type = ChangeState
trigger1 = AnimElemTime(3) = 0 && sysvar(1)
value = 100

[State 110, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 7.8
y = -3

[State 110, VelMul]
type = VelMul
trigger1 = AnimElemTime(3) > 0
x = 0.98

[State 110, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 0
y = 0.65

[State 110, End]
type = ChangeState
trigger1 = AnimElemTime(3) >= 0
trigger1 = pos y > -vel y
value = 111

;Stop Dashing Forward
[StateDef 111]
type = S
physics = S
ctrl = 1
anim = 111
velSet = 0,0

[State 111, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 111, Dash End Sound]
type = PlaySnd
trigger1 = !Time
value = 100,0

[State 111, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
pos = ceil(0 * const(size.xScale)),0
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 111, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;====================<DODGE>====================
[StateDef 700]
type = S
physics = S
moveType = I
anim = 700
ctrl = 0
velSet = 0,0
sprPriority = -2

[State 700, Voice]
type = PlaySnd
triggerall = var(40) = 0
trigger1 = !Time
value = 4,0
channel = 0

[State 700, Voice]
type = PlaySnd
triggerall = var(40) = 1
trigger1 = !Time
value = 4,10
channel = 0

[State 700, Dodge Sound]
type = PlaySnd
trigger1 = !Time
value = 1,3
channel = 1

[State 700, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 700, HitBy]
type = HitBy
trigger1 = 1
value = SCA,AT
time = 1

[State 700, Attack]
type = ChangeState
trigger1 = !AILevel && Time = [15,25]
trigger1 = command = "x" || command = "y" || command = "z" || command = "a" || command = "b" || command = "c"
value = ifElse((command = "x" || command = "y" || command = "z"), 225, 251)

[State 700, Attack (AI)]
type = ChangeState
trigger1 = AILevel && (Time = [15,25]) && NumEnemy
trigger1 = (EnemyNear, MoveType != A) && (P2BodyDist x = [-60,60]) && (P2Dist y >= -60)
value = ifElse(Random < 666, 225, 251)

[State 700, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;================<ROLL FORWARD>================
[StateDef 710]
type = S
physics = N
moveType = I
anim = 710
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 710, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 710, HitBy]
type = HitBy
trigger1 = AnimElemTime(7) < 0
value = SCA,AT
time = 1

[State 710, Voice]
type = PlaySnd
triggerall = var(40) = 0
trigger1 = !Time
value = 4,1
channel = 0

[State 710, Voice]
type = PlaySnd
triggerall = var(40) = 1
trigger1 = !Time
value = 4,11
channel = 0

[State 710, Roll Sound]
type = PlaySnd
trigger1 = Time = 1
value = 110,0
channel = 1

[State 710, Start Roll]
type = VelSet
trigger1 = AnimElem = 2
x = 5.45

[State 710, End Roll]
type = VelSet
trigger1 = AnimElem = 7
x = 0

[State 710, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;===============<ROLL BACKWARDS>===============
[StateDef 715]
type = S
physics = N
moveType = I
anim = 715
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 715, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 715, HitBy]
type = HitBy
trigger1 = AnimElemTime(7) < 0
value = SCA,AT
time = 1

[State 715, Voice]
type = PlaySnd
triggerall = var(40) = 0
trigger1 = !Time
value = 4,1
channel = 0

[State 715, Voice]
type = PlaySnd
triggerall = var(40) = 1
trigger1 = !Time
value = 4,11
channel = 0

[State 715, Roll Sound]
type = PlaySnd
trigger1 = Time = 1
value = 110,0
channel = 1

[State 715, Start Roll]
type = VelSet
trigger1 = AnimElem = 2
x = -5.45

[State 715, End Roll]
type = VelSet
trigger1 = AnimElem = 7
x = 0

[State 715, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;==========<POWER CHARGE>==========
[StateDef 730]
type = S
physics = S
moveType = I
anim = 730
velSet = 0,0
ctrl = 0

[State 730, PowerAdd]
type = PowerAdd
triggerAll = Power < const(data.power) && Power < PowerMax
trigger1 = !AILevel && (command = "holdb" && command = "holdy")
trigger2 = AILevel
value = 2 + ifElse(time < 60, 0, (time - 60) / 12)

[State 730, Voice]
type = PlaySnd
triggerall = var(40) = 0
trigger1 = !Time
value = 3300,0
channel = 0

[State 730, Voice]
type = PlaySnd
triggerall = var(40) = 1
trigger1 = !Time
value = 3300,10
channel = 0

[State 730, Character Flash]
type = PalFX
trigger1 = 1
time = 1
add = 75 + ceil(sin(Time / 6.0 * pi) * 75),25 + ceil(sin(Time / 6.0 * pi) * 25),0

[State 730, Power Charge Helper]
type = Helper
trigger1 = !NumHelper(8330)
helperType = Normal
stateNo = 8330
ID = 8330
name = "Power Charge"
posType = P1
pauseMoveTime = 65535
superMoveTime = 65535
ownPal = 1

[State 730, Particles]
type = Helper
trigger1 = !NumHelper(8331)
helperType = Normal
stateNo = 8331
ID = 8331
name = "Particles"
postype = P1
pauseMoveTime = 65535
superMoveTime = 65535
ownPal = 1

[State 730, End]
type = ChangeState
trigger1 = Power >= const(data.power) || Power >= PowerMax || RoundState != 2
trigger2 = !AILevel && (command != "holdb" || command != "holdy")
trigger3 = AILevel && (InGuardDist || P2BodyDist x <= 120)
value = 731
ctrl = 1

;Power Charge End
[StateDef 731]
type = S
physics = S
moveType = I
anim = 731
velSet = 0,0
ctrl = 1

[State 731, StopSnd]
type = StopSnd
trigger1 = !Time
channel = 0

[State 730, Full Power Voice]
type = PlaySnd
triggerall = var(40) = 0
trigger1 = !Time && Power >= const(data.power)
value = 4,4
channel = 0
persistent = 0

[State 730, Full Power Voice]
type = PlaySnd
triggerall = var(40) = 1
trigger1 = !Time && Power >= const(data.power)
value = 4,14
channel = 0
persistent = 0

[State 730, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;====================<NORMAL ATTACK ZERO COUNTER>====================
[StateDef 750]
type = S
physics = S
moveType = I
anim = 750
velSet = 0,0
ctrl = 0
sprPriority = 2
powerAdd = -1000
faceP2 = 1

[State 750, Button]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = (command = "412k")
ignoreHitPause = 1

[State 750, Button (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2StateType = A), 0, ifElse((P2StateType = C), 1, ifElse(Random < 500, 0, 1)))
ignoreHitPause = 1

[State 750, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 750, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 750, Voice]
type = PlaySnd
triggerall = var(40) = 0
trigger1 = !Time
value = 4,2
channel = 0

[State 750, Voice]
type = PlaySnd
triggerall = var(40) = 1
trigger1 = !Time
value = 4,12
channel = 0

[State 750, Zero Counter FX Helper]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8350
ID = 8350
name = "Zero Counter"
posType = P1
pos = ceil(-40 * const(size.xScale)), ceil(-114 * const(size.yScale))
superMoveTime = 255
ownPal = 1

[State 750, SuperPause]
type = SuperPause
trigger1 = !Time
time = 15
moveTime = 15
p2DefMul = 1
anim = -1
sound = s750,0
darken = 0

[State 750, End]
type = ChangeState
trigger1 = Time >= 15
value = ifElse(var(10) = 1, 2910, 2900)

;====================<SPECIAL MOVE ZERO COUNTER>====================
[StateDef 751]
type = S
physics = S
moveType = I
anim = 750
velSet = 0,0
ctrl = 0
sprPriority = 2
powerAdd = -1000
faceP2 = 1

[State 750, Button (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2StateType = A), 1, ifElse((P2StateType = C), 1, ifElse(Random < 500, 1, 1)))
ignoreHitPause = 1

[State 750, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 750, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 750, Voice]
type = PlaySnd
triggerall = var(40) = 0
trigger1 = !Time
value = 4,2
channel = 0

[State 750, Voice]
type = PlaySnd
triggerall = var(40) = 1
trigger1 = !Time
value = 4,12
channel = 0

[State 750, Zero Counter FX Helper]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8350
ID = 8350
name = "Zero Counter"
posType = P1
pos = ceil(-40 * const(size.xScale)), ceil(-114 * const(size.yScale))
superMoveTime = 255
ownPal = 1

[State 750, SuperPause]
type = SuperPause
trigger1 = !Time
time = 15
moveTime = 15
p2DefMul = 1
anim = -1
sound = s750,0
darken = 0

[State 750, End]
type = ChangeState
trigger1 = Time >= 15
value = 1100

;====================<PARRY>====================
;Standing Parry
[StateDef 760]
type = S
physics = S
moveType = I
anim = 760
velSet = 0,0
ctrl = 0
sprPriority = 2
powerAdd = 78
faceP2 = 1

[State 760, HitBy]
type = HitBy
trigger1 = 1
value = SCA,AT
time = 1

[State 760, Pause]
type = Pause
trigger1 = !Time
time = 15
moveTime = 15
endCmdBufTime = 15
pauseBg = 0

[State 760, Stop]
type = PosFreeze
trigger1 = 1
value = 1

[State 760, No Walking]
type = VarSet
trigger1 = 1
var(26) = 7

[State 760, Voice]
type = PlaySnd
triggerall = var(40) = 0
trigger1= !Time
value = 4,2
channel = 0

[State 760, Voice]
type = PlaySnd
triggerall = var(40) = 1
trigger1= !Time
value = 4,12
channel = 0

[State 760, Parry Sound]
type = PlaySnd
trigger1 = !Time
value = 760,0
channel = 1

[State 760, Player Flash]
type = PalFX
trigger1 = !Time
add = 0,64,255
sinadd = 0,-64,-255,60
time = 15

[State 760, FX]
type = Explod
trigger1 = !Time
anim = 8360
sprPriority = 5
posType = P1
pos = ceil(39 * const(size.xscale)), ceil(-53 * const(size.yscale))
pauseMoveTime = -1
superMoveTime = -1
scale = 0.5,0.5
ownPal = 1

[State 760, EnvShake]
type = EnvShake
trigger1 = !Time
time = 0
ampl = 0

[State 760, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Crouching Parry
[StateDef 761]
type = C
physics = C
moveType = I
anim = 761
velSet = 0,0
ctrl = 0
sprPriority = 2
powerAdd = 78
faceP2 = 1

[State 761, HitBy]
type = HitBy
trigger1 = 1
value = SCA,AT
time = 1

[State 761, Pause]
type = Pause
trigger1 = !Time
time = 15
moveTime = 15
endCmdBufTime = 15
pauseBg = 0

[State 761, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 761, No Walk]
type = VarSet
trigger1 = 1
var(26) = 7

[State 761, Voice]
type = PlaySnd
triggerall = var(40) = 0
trigger1= !Time
value = 4,2
channel = 0

[State 761, Voice]
type = PlaySnd
triggerall = var(40) = 1
trigger1= !Time
value = 4,12
channel = 0

[State 761, Parry Sound]
type = PlaySnd
trigger1 = !Time
value = 760,0
channel = 1

[State 761, Player Flash]
type = PalFX
trigger1 = !Time
add = 0,64,255
sinAdd = 0,-64,-255,60
time = 15

[State 761, Parry FX]
type = Explod
trigger1 = !Time
anim = 8360
sprpriority = 5
postype = P1
pos = ceil(32 * const(size.xscale)), ceil(-26 * const(size.yscale))
pauseMovetime = -1
superMovetime = -1
scale = 0.5,0.5
ownpal = 1

[State 761, EnvShake]
type = EnvShake
trigger1 = !time
time = 0
ampl = 0

[State 761, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;Jumping Parry
[StateDef 762]
type = A
physics = N
moveType = I
anim = 762
ctrl = 0
sprPriority = 2
powerAdd = 78
faceP2 = 1

[State 762, HitBy]
type = HitBy
trigger1 = 1
value = SCA,AT
time = 1

[State 762, Pause]
type = Pause
trigger1 = !Time
time = 15
moveTime = 15
endCmdBufTime = 15
pauseBg = 0

[State 762, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 762, Voice]
type = PlaySnd
triggerall = var(40) = 0
trigger1= !Time
value = 4,2
channel = 0

[State 762, Voice]
type = PlaySnd
triggerall = var(40) = 1
trigger1= !Time
value = 4,12
channel = 0

[State 762, Parry Sound]
type = PlaySnd
trigger1 = !Time
value = 760,0
channel = 1

[State 762, Player Flash]
type = PalFX
trigger1 = !Time
add = 0,64,255
sinadd = 0,-64,-255,60
time = 15

[State 762, Parry FX]
type = Explod
trigger1 = !Time
anim = 8360
sprPriority = 5
posType = P1
pos = ceil(38 * const(size.xscale)), ceil(-66 * const(size.yscale))
pauseMoveTime = -1
superMoveTime = -1
scale = 0.5,0.5
ownpal = 1

[State 762, EnvShake]
type = EnvShake
trigger1 = !Time
time = 0
ampl = 0

[State 762, End]
type = ChangeState
trigger1 = !AnimTime
value = 763
ctrl = 1

;Falling
[StateDef 763]
type = A
physics = N
movetype = I
anim = 763
ctrl = 1

[State 763, VelSet]
type = VelSet
trigger1 = !Time
x = ifElse(vel x > 2, 2, ifElse(vel x < -2, -2, vel x))
y = ifElse(vel y < -2, vel y, -2)

[State 763, Gravity]
type = Gravity
trigger1 = 1

[State 763, Landing]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;====================<CUSTOM COMBO>====================
;Ground Version
[StateDef 900]
type = S
physics = S
moveType = A
anim = 900
velSet = 0,0
ctrl = 0
sprPriority = 2
powerAdd = -1000

[State 900, Corner Push]
type = VarSet
trigger1 = Time = 4
fvar(5) = 0

[State 900, Unguardable]
type = VarSet
trigger1 = Time = 4 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 30

[State 900, NotHitBy]
type = NotHitBy
trigger1 = !time
value = SCA
time = 38

[State 900, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 900, Custom Combo Time]
type = VarSet
trigger1 = Time >= 4
var(20) = 180

[State 900, Voice]
type = PlaySnd
triggerall = var(40) = 0
trigger1 = Time = 4
value = 1300,0
channel = 0

[State 900, Voice]
type = PlaySnd
triggerall = var(40) = 1
trigger1 = Time = 4
value = 1300,10
channel = 0

[State 900, Custom Combo FX Helper]
type = Helper
trigger1 = Time = 4
helperType = Normal
stateNo = 8400
ID = 8400
name = "Custom Combo FX"
posType = P1
pos = ceil(-12 * const(size.xscale)), ceil(-120 * const(size.yscale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 900, SuperPause]
type = SuperPause
trigger1 = Time = 4
time = 30
moveTime = 30
anim = -1
sound = s900,0
p2DefMul = 1
darken = 0

[State 900, AfterImage]
type = AfterImage
trigger1= !AnimTime
time = 2
timeGap = 1
frameGap = 4
length = 13
palBright = 0,0,0
palContrast = 64,128,192
palPostBright = 0,0,0
palAdd = 0,0,0
palMul = 0.75,0.75,0.75
trans = add1

[State 900, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Air Version
[Statedef 905]
type = A
physics = N
moveType = A
anim = 905
ctrl = 0
sprPriority = 2
powerAdd = -1000

[State 905, Corner Push]
type = VarSet
trigger1 = Time = 4
fvar(5) = 0

[State 905, Unguardable]
type = VarSet
trigger1 = Time = 4 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 30

[State 905, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = SCA
time = 38

[State 905, PosFreeze]
type = PosFreeze
trigger1 = 1
value = 1

[State 905, Custom Combo Timer]
type = VarSet
trigger1 = Time >= 4
var(20) = 180

[State 905, Voice]
type = PlaySnd
triggerall = var(40) = 0
trigger1 = Time = 4
value = 1300,0
channel = 0

[State 905, Voice]
type = PlaySnd
triggerall = var(40) = 1
trigger1 = Time = 4
value = 1300,10
channel = 0

[State 905, Custom Combo FX Helper]
type = Helper
trigger1 = Time = 4
helperType = Normal
stateNo = 8400
ID = 8400
name = "Custom Combo Startup"
posType = P1
pos = ceil(2 * const(size.xscale)), ceil(-140 * const(size.yscale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 905, SuperPause]
type = SuperPause
trigger1 = Time = 4
time = 30
moveTime = 30
anim = -1
sound = s900,0
p2DefMul = 1
darken = 0

[State 905, AfterImage]
type = AfterImage
trigger1 = !AnimTime
time = 2
timeGap = 1
frameGap = 4
length = 13
palBright = 0,0,0
palContrast = 64,128,192
palPostBright = 0,0,0
palAdd = 0,0,0
palMul = 0.75,0.75,0.75
trans = add1

[State 905, End]
type = ChangeState
trigger1 = !AnimTime
value = 906
ctrl = 1

;Air Finish
[StateDef 906]
type = A
physics = N
moveType = I
anim = 906
ctrl = 1

[State 906, Gravity]
type = Gravity
trigger1 = 1

[State 906, Land]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;==========<TARGET SAFE FALL>==========
[StateDef 5205]
type = A
physics = N
moveType = H

[State 5205, ChangeAnim]
type = ChangeAnim
trigger1 = !AnimTime
trigger1 = Anim = 5035
value = 5050

[State 5205, VelAdd]
type = VelAdd
trigger1 = 1
y = GetHitVar(yAccel)

[State 5205, SelfState (Ground)]
type = SelfState
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.air.getHit.groundRecover.ground.threshold)
value = 5200

[State 5205, SelfState (Air)]
type = SelfState
trigger1 = Time >= 60
value = 5210

;==========<FALL RECOVERY>==========
[StateDef 5200]
type = A
moveType = H
physics = N

[State 5200, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5035 && !AnimTime
value = 5050

[State 5200, VelAdd]
type = VelAdd
trigger1 = 1
y = GetHitVar(yAccel)

[State 5200, End]
type = SelfState
trigger1 = vel y > 0 && pos y >= 10
value = 5201

[StateDef 5201]
type = S
moveType = I
physics = N
anim = 5200
ctrl = 0
faceP2 = 1

[State 5201, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 5201, VelSet]
type = VelSet
trigger1 = !Time
x = -8
y = 0

[State 5201, VelMul]
type = VelMul
trigger1 = 1
x = 0.9

[State 5201, Voice]
type = PlaySnd
trigger1 = !Time
value = 4,5
channel = 0

[State 5201, Recover Sound]
type = PlaySnd
trigger1 = !Time
value = 5200,0
channel = 1

[State 5201, Flash]
type = PalFX
trigger1 = !Time
add = 255,255,255
sinAdd = -255,-255,-255,40
time = 10

[State 5201, Recover FX]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8200
ID = 8200
name = "Recover FX"
posType = P1
pos = 0, ceil(-18 * const(size.yScale))
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 5201, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5201, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Air Recover
[StateDef 5210]
type = A
moveType = I
physics = N
anim = 5210
ctrl = 0

[State 5210, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.6

[State 5210, VelSet]
type = VelSet
trigger1 = !Time
x = ifElse((command = "holdfwd" && command != "holdback"), 4, ifElse((command != "holdfwd" && command = "holdback"), -4, 0))
y = -7.55

[State 5210, Voice]
type = PlaySnd
trigger1 = !Time
value = 4,5
channel = 0

[State 5210, Recover Sound]
type = PlaySnd
trigger1 = !Time
value = 5200,0

[State 5210, Flash]
type = PalFX
trigger1 = !Time
add = 255,255,255
sinAdd = -255,-255,-255,40
time = 10

[State 5210, Recover FX]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8200
ID = 8200
name = "Recover FX"
posType = P1
pos = ceil(8 * const(size.xscale)), ceil(-65 * const(size.yscale))
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 5210, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
value = SCA
time = 1

[State 5210, CtrlSet]
type = CtrlSet
trigger1 = AnimElemTime(5) >= 0
value = 1

[State 5210, Land]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52

;===================<GUARD>================
;Guard Start
[StateDef 120]
type = U
physics = U
anim = 120 + (StateType = C) + (StateType = A) * 2

[State 120, StateTypeSet: Standing]
type = StateTypeSet
trigger1 = !Time && StateType = S
physics = S

[State 120, StateTypeSet: Crouching]
type = StateTypeSet
trigger1 = !Time && StateType = C
physics = C

[State 120, StateTypeSet: Jumping]
type = StateTypeSet
trigger1 = !Time && StateType = A
physics = A

[State 120, VelSet]
type = VelSet
trigger1 = !Time && StateType != A
x = 0
y = 0

[State 120, Stand to Crouching]
type = StateTypeSet
trigger1 = !AILevel && StateType = S && command = "holddown"
trigger2 = AILevel && StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
stateType = C
physics = C

[State 120, Crouching to Stand]
type = StateTypeSet
trigger1 = !AILevel && StateType = C && command != "holddown"
trigger2 = AILevel && StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
stateType = S
physics = S

[State 120, AI Fix]
type = CtrlSet
trigger1 = AILevel && NumEnemy
value = (EnemyNear, Time >= 120 || Time >= 180)

[State 120, Change to Guard State]
type = ChangeState
trigger1 = !AnimTime || AILevel
value = 130 + (StateType = C) + (StateType = A) * 2

[State 120, Stop Guarding]
type = ChangeState
trigger1 = (!AILevel && command != "holdback")
trigger2 = !InGuardDist
trigger3 = AILevel && NumEnemy
trigger3 = EnemyNear, HitDefAttr = SCA, AT
value = 140

;Standing Guard
[StateDef 130]
type = S
physics = S

[State 130, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 130
value = 130

[State 130, AI Fix]
type = CtrlSet
trigger1 = AILevel && NumEnemy
value = (EnemyNear, Time >= 120 || Time >= 180)

[State 130, Standing to Crouch]
type = ChangeState
trigger1 = !AILevel && command = "holddown"
trigger2 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
value = 131

[State 130, Stop Guarding]
type = ChangeState
trigger1 = (!AILevel && command != "holdback")
trigger2 = !InGuardDist
trigger3 = AILevel && NumEnemy
trigger3 = EnemyNear, HitDefAttr = SCA, AT
value = 140

[State 130, Landing Sound]
type = PlaySnd
trigger1 = !Time
trigger1 = PrevStateNo = 132 || (PrevStateNo = [154,155])
value = 52,0

[State 130, Landing Dust Expod]
type = Explod
trigger1 = !Time
trigger1 = PrevStateNo = 132 || (PrevStateNo = [154,155])
anim = 8102
sprpriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

;Crouch Guarding
[StateDef 131]
type = C
physics = C

[State 131, ChangeAnim]
type = ChangeAnim
trigger1 = anim != 131
value = 131

[State 131, Crouching to Standing]
type = ChangeState
trigger1 = !AILevel && command != "holddown"
trigger2 = AILevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
value = 130

[State 131, AI Fix]
type = CtrlSet
trigger1 = AILevel && NumEnemy
value = (EnemyNear, Time >= 120 || Time >= 180)

[State 131, Stop Guarding]
type = ChangeState
trigger1 = (!AILevel && command != "holdback")
trigger2 = !InGuardDist
trigger3 = AILevel && NumEnemy
trigger3 = EnemyNear, HitDefAttr = SCA, AT
value = 140

;Air Guard
[StateDef 132]
type = A
physics = N

[State 132, ChangeAnim]
type = ChangeAnim
trigger1 = anim != 132
value = 132

[State 132, VelAdd]
type = VelAdd
trigger1 = 1
y = const(movement.yAccel)

[State 132, VarSet]
type = VarSet
trigger1 = 1
sysvar(0) = (pos y >= 0 && vel y > 0)

[State 132, VelSet]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 132, PosSet]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 132, AI Fix]
type = CtrlSet
trigger1 = AILevel && NumEnemy
value = (EnemyNear, Time >= 120 || Time >= 180)

[State 132, Jumping to Standing]
type = ChangeState
trigger1 = sysvar(0) && InGuardDist
trigger1 = (!AILevel && command = "holdback") || AILevel
value = 130

[State 132, Change to Falling]
type = ChangeState
trigger1 = sysvar(0)
value = 52

[State 132, Stop Guarding]
type = ChangeState
trigger1 = (!AILevel && command != "holdback")
trigger2 = !InGuardDist
trigger3 = AILevel && NumEnemy
trigger3 = EnemyNear, HitDefAttr = SCA, AT
value = 140

;Guard End
[StateDef 140]
type = U
physics = U
ctrl = 1

[State 140, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 140 + (StateType = C) + (StateType = A) * 2

[State 140, StateTypeSet: Standing]
type = StateTypeSet
trigger1 = !Time && StateType = S
physics = S

[State 140, StateTypeSet: Crouching]
type = StateTypeSet
trigger1 = !Time && StateType = C
physics = C

[State 140, StateTypeSet: Jumping]
type = StateTypeSet
trigger1 = !Time && StateType = A
physics = A

[State 140, Standing to Crouching]
type = StateTypeSet
trigger1 = !AILevel && StateType = S && command = "holddown"
trigger2 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
stateType = C
physics = C

[State 140, Crouching to Standing]
type = StateTypeSet
trigger1 = !AILevel && StateType = C && command != "holddown"
trigger2 = AILevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
stateType = S
physics = S

[State 140, End]
type = ChangeState
trigger1 = !AnimTime
value = (StateType = C) * 11 + (StateType = A) * 51

;Hit while Guarding (Standing)
[StateDef 150]
type = S
movetype = H
physics = N
velSet = 0,0

[State 150, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 150

[State 150, End]
type = ChangeState
trigger1 = HitShakeOver
value = 151 + 2 * ((!AILevel && command = "holddown") || (AILevel && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)))

[State 150, Standing to Crouching]
type = StateTypeSet
trigger1 = !AILevel && StateType = S && command = "holddown"
trigger2 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
stateType = C
physics = C

[State 150, Crouching to Standing]
type = StateTypeSet
trigger1 = !AILevel && StateType = C && command != "holddown"
trigger2 = AIlevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
stateType = S
physics = S

;Knocked Back while Guarding (Standing)
[StateDef 151]
type = S
moveType = H
physics = S
anim = 150

[State 151, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1

[State 151, VelSet]
type = VelSet
trigger1 = Time = GetHitVar(SlideTime)
trigger2 = HitOver
x = 0

[State 151, CtrlSet]
type = CtrlSet
trigger1 = time = GetHitVar(CtrlTime)
value = 1

[State 151, Standing to Crouching]
type = StateTypeSet
trigger1 = !AILevel && StateType = S && command = "holddown"
trigger2 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
stateType = C
physics = C

[State 151, Crouching to Standing]
type = StateTypeSet
trigger1 = !AILevel && StateType = C && command != "holddown"
trigger2 = AILevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
stateType = S
physics = S

[State 151, End]
type = ChangeState
trigger1 = HitOver
value = 130
ctrl = 1

;Hit while Guarding (Crouching)
[StateDef 152]
type = C
moveType = H
physics = N
velSet = 0,0

[State 152, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 151

[State 152, End]
type = ChangeState
trigger1 = HitShakeOver
value = 151 + 2 * ((!AILevel && command = "holddown") || (AILevel && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)))

[State 152, Standing to Crouching]
type = StateTypeSet
trigger1 = !AILevel && statetype = S && command = "holddown"
trigger2 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
stateType = C
physics = C

[State 152, Crouching to Standing]
type = StateTypeSet
trigger1 = !AILevel && StateType = C && command != "holddown"
trigger2 = AILevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
stateType = S
physics = S

;Knocked Back while Guarding (Crouching)
[StateDef 153]
type = C
moveType = H
physics = C
anim = 151

[State 153, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1

[State 153, VelSet]
type = VelSet
trigger1 = Time = GetHitVar(SlideTime)
trigger2 = HitOver
x = 0

[State 153, CtrlSet]
type = CtrlSet
trigger1 = Time = GetHitVar(CtrlTime)
value = 1

[State 153, Standing to Crouching]
type = StateTypeSet
trigger1 = !AILevel && StateType = S && command = "holddown"
trigger2 = AILevel && Random < (250 * (AILevel ** 2 / 64.0))
trigger2 = StateType = S && (EnemyNear, MoveType = A) && (EnemyNear, StateType = C)
stateType = C
physics = C

[State 153, Crouching to Standing]
type = StateTypeSet
trigger1 = !AILevel && StateType = C && command != "holddown"
trigger2 = AILevel && Random < (125 * (AILevel ** 2 / 64.0))
trigger2 = StateType = C && (EnemyNear, MoveType = A) && (EnemyNear, StateType != C)
stateType = S
physics = S

[State 153, End]
type = ChangeState
trigger1 = HitOver
value = 131
ctrl = 1

;Hit while Guarding (Jumping)
[StateDef 154]
type = A
moveType = H
physics = N
velSet = 0,0

[State 154, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 152

[State 154, End]
type = ChangeState
trigger1 = HitShakeOver
value = 155

;Knocked Back while Guarding (Jumping)
[StateDef 155]
type = A
moveType = H
physics = N
anim = 152

[State 155, HitVelSet]
type = HitVelSet
trigger1 = !Time
x = 1
y = 1

[State 155, VelAdd]
type = VelAdd
trigger1 = 1
y = const(movement.yAccel)

[State 155, CtrlSet]
type = CtrlSet
trigger1 = Time = GetHitVar(CtrlTime)
value = 1

[State 155, VarSet]
type = VarSet
trigger1 = 1
sysvar(0) = (pos y >= 0 && vel y > 0)

[State 155, VelSet]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 155, PosSet]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 155, End]
type = ChangeState
trigger1 = sysvar(0) && InGuardDist
trigger1 = (!AILevel && command = "holdback") || AILevel
value = 130

[State 155, End]
type = ChangeState
trigger1 = sysvar(0)
value = 52

;====================<LOSE>====================
[StateDef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 170, Snd]
type = playsnd
trigger1 = animelem = 2
value = 5000,3

[State 170, Snd]
type = playsnd
trigger1 = animelem = 3
value = 820,1

[State 170, Dust]
type = explod
trigger1 = animelem = 3
anim = 8102
ID = 8102
sprpriority = -2
postype = p1
pos = -20,0
ownpal = 1
scale = 0.5,0.5

;====================<DRAW GAME>====================
[StateDef 175]
type = S
ctrl = 0
velset = 0,0

[State 175, ChangeState]
type = ChangeState
trigger1 = !Time
value = 170

;====================<CONTINUE?>====================
[StateDef 5500]
type = S
anim = 5300
velSet = 0,0
ctrl = 0

[State 5500, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5300

;====================<INITIALIZE>====================
[StateDef 5901]
type = S

[State 5900, Intro vs Dan,Athena,Karin]
type = ChangeState
TriggerAll = var(40) = 0
triggerAll = NumEnemy
triggerAll = RoundNo = 1 || !RoundsExisted && (!(Enemy, RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul))
trigger1 = Enemy, Name = "Dan" || Enemy, Name = "Dan Hibiki"
trigger2 = Enemy, Name = "Athena" || Enemy, Name = "Athena Asamiya"
trigger3 = Enemy, Name = "Karin" || Enemy, Name = "Karin Kanzuki"
value = 194

[State 5900, Intro vs Yuri]
type = ChangeState
TriggerAll = var(40) = 0
triggerAll = NumEnemy
triggerAll = RoundNo = 1 || !RoundsExisted && (!(Enemy, RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul))
trigger1 = Enemy, Name = "Yuri" || Enemy, Name = "Yuri Sakazaki"
value = 196

[State 5900, Intro vs Ryu]
type = ChangeState
TriggerAll = var(40) = 0
triggerAll = NumEnemy
triggerAll = RoundNo = 1 || !RoundsExisted && (!(Enemy, RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul))
trigger1 = Enemy, Name = "Ryu" || Enemy, Name = "Ryu Hoshi" && Enemy, AuthorName = "Phantom.of.the.Server"
value = 197

[State 5900, Intro vs Other Ryu]
type = ChangeState
TriggerAll = var(40) = 0
triggerAll = NumEnemy
triggerAll = RoundNo = 1 || !RoundsExisted && (!(Enemy, RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul))
trigger1 = Enemy, Name = "Ryu" || Enemy, Name = "Ryu Hoshi" && Enemy, AuthorName = "Warusaki3" && Enemy, PalNo <= 6
value = 198

[State 5900, Intro vs Cute Guys]
type = ChangeState
TriggerAll = var(40) = 0
triggerAll = NumEnemy
triggerAll = RoundNo = 1 || !RoundsExisted && (!(Enemy, RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul))
trigger1 = Enemy, Name = "Alex"
trigger2 = Enemy, Name = "Andy" || Enemy, Name = "Andy Bogard"
trigger3 = Enemy, Name = "Batsu" || Enemy, Name = "Batsu Ichimonji"
trigger4 = Enemy, Name = "Benimaru" || Enemy, Name = "Benimaru Nikaido"
trigger5 = Enemy, Name = "Captain America"
trigger6 = Enemy, Name = "Captain Commando"
trigger7 = Enemy, Name = "Charlie" || Enemy, Name = "Nash"
trigger8 = Enemy, Name = "Cody" || Enemy, Name = "Cody"
trigger9 = Enemy, Name = "Dee Jay" || Enemy, Name = "Deejay"
trigger10 = Enemy, Name = "Feilong"
trigger11 = Enemy, Name = "Guile"
trigger12 = Enemy, Name = "Guy"
trigger13 = Enemy, Name = "Haohmaru"
trigger14 = Enemy, Name = "Hayato" || Enemy, Name = "Hayato Kanzaki"
trigger15 = Enemy, Name = "Joe" || Enemy, Name = "Joe Higashi"
trigger16 = Enemy, Name = "Jin" || Enemy, Name = "Jin"
trigger17 = Enemy, Name = "Ken" || Enemy, Name = "Ken Masters"
trigger18 = Enemy, Name = "Kensou" || Enemy, Name = "Sie Kensou"
trigger19 = Enemy, Name = "Kim" || Enemy, Name = "Kim Kaphwan"
trigger20 = Enemy, Name = "Kyo" || Enemy, Name = "Kyo Kusanagi"
trigger21 = Enemy, Name = "Kyosuke" || Enemy, Name = "Kyosuke Kagami"
trigger22 = Enemy, Name = "Rock" || Enemy, Name = "Rock Howard"
trigger23 = Enemy, Name = "Ryo" || Enemy, Name = "Ryo Sakazaki"
trigger24 = Enemy, Name = "Strider" || Enemy, Name = "Strider Hiryu"
trigger25 = Enemy, Name = "Terry" || Enemy, Name = "Terry Bogard"
trigger26 = Enemy, Name = "Yang" || Enemy, Name = "Yang"
trigger27 = Enemy, Name = "Yun" || Enemy, Name = "Yun"
value = 199

[State 5901, Turns Intro]
type = ChangeState
trigger1 = TeamMode = Turns
trigger1 = !RoundsExisted && RoundNo >= 2
value = 6900

[State 5901, Sakura Intro Decider]
type = ChangeState
trigger1 = RoundNo = 1 && var(40) = 0
value = 190 + (Random % 3)

[State 5901, Dark Sakura Intro Decider]
type = ChangeState
trigger1 = RoundNo = 1 && var(40) = 1
value = 193

[State 5901, End]
type = ChangeState
trigger1 = 1
value = 0

;====================<INTRO 1>====================
[StateDef 190]
type = S
physics = S
anim = 190

[State 190, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 190, Voice]
type = PlaySnd
trigger1 = AnimElem = 7
value = 190,0
channel = 17

[State 190, End]
type = ChangeState
trigger1 = !AnimTime
value = 0

;====================<INTRO 2>====================
[StateDef 191]
type = S
physics = N
anim = 191
sprpriority = 1

[State 191, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 192, Camera]
type = helper
trigger1 = !numhelper(8999)
helpertype = normal
stateno = 8999
ID = 8999
name = "Camera"
postype = p1
pos = 0,0
facing = 1

[State 192, bound]
type = screenbound
trigger1 = 1
value = 0

[State 192, Pos]
type = posset
trigger1 = !time
x = 450 * facing

[State 192, Vel]
type = velset
trigger1 = anim = 191
x = -1.25 * const(velocity.run.fwd.x)

[State 192, Snd]
type = playsnd
trigger1 = time = 10
value = 191,0
channel = 17

[State 192, steps]
type = playsnd
trigger1 = anim = 191 && (animelem = 2 || animelem = 5)
value = 100,0

[State 192, Anim]
type = changeanim
trigger1 = anim = 191 && time && numhelper(8999) && animelemtime(11) >= 0
trigger1 = (helper(8999), rootdist x) < 90
value = 192

[State 192, Dust]
type = explod
trigger1 = anim = 192 && animelem = 2
anim = 8104
ID = 8104
sprpriority = 3
postype = p1
pos = -18,0
vel = -2,0
scale = 0.5,0.5
removetime = -2
ownpal = 1

[State 192, Snd]
type = playsnd
trigger1 = anim = 192 && animelem = 2
value = 101,0
persistent = 0

[State 192, Vel]
type = velset
trigger1 = anim = 192 && animelem = 1
x = (helper(8999), rootdist x) / -15

[State 192, Pos]
type = posset
trigger1 = anim = 192 && numhelper(8999) && animelemtime(5) >= 0
x = ceil(helper(8999), pos x)

[State 192, Vel]
type = velset
trigger1 = anim = 192 && numhelper(8999) && animelemtime(5) >= 0
x = 0

[State 192, End]
type = changestate
trigger1 = anim = 192 && !animtime
value = 0

;====================<INTRO 3>====================
[StateDef 192]
type = S
physics = N
anim = 354
sprpriority = -1

[State 354, bound]
type = screenbound
trigger1 = 1
value = 0

[State 354, intro]
type = assertspecial
trigger1 = 1
flag = intro

[State 354, Camera]
type = helper
trigger1 = !numhelper(8999)
helpertype = normal
stateno = 8999
ID = 8999
name = "Camera"
postype = p1
pos = 0,0
facing = 1

[State 354, Pos]
type = posset
trigger1 = !time
x = 10 * facing

[State 354, kei]
type = helper
trigger1 = animelemtime(2) < 0 && !numhelper(6000)
helpertype = normal
stateno = 6000
ID = 6000
name = "Kei"
postype = p1
pos = -10,0
facing = 1
size.shadowoffset = -5
ownpal = 1

[State 354, Snd]
type = playsnd
trigger1 = anim = 354 && animelem = 2
value = 192,0
channel = 17

[State 354, Vel]
type = velset
trigger1 = anim = 354 && animelem = 6
x = (helper(8999), rootdist x) / -17

[State 354, Snd]
type = playsnd
trigger1 = anim = 354 && animelem = 6
value = 105,0

[State 354, Dust]
type = explod
trigger1 = anim = 354 && animelem = 6
anim = 8100
ID = 8100
sprpriority = 3
postype = p1
pos = 0,0
ownpal = 1
scale = 0.5,0.5

[State 52, Landing Sound]
type = PlaySnd
trigger1 = anim = 354 && animelem = 8
value = 52,0

[State 52, Landing Dust Explod]
type = Explod
trigger1 = anim = 354 && animelem = 8
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 354, Anim]
type = changeanim
trigger1 = anim = 354 && !animtime
value = 355

[State 354, Pos]
type = posset
trigger1 = anim = 355 && numhelper(8999)
x = ceil(helper(8999), pos x)

[State 354, Vel]
type = velset
trigger1 = anim = 355 && numhelper(8999)
x = 0

[State 354, End]
type = changestate
trigger1 = anim = 355 && !animtime
value = 0

;====================<INTRO 1 DARK SAKURA>====================
[StateDef 193]
type = S
physics = N
anim = 193
sprpriority = 0

[State 193, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 1500, afterimage]
type = afterimage
trigger1 = time = 1
time = 60
timegap = 1
framegap = 6
length = 14
palbright = 0, 0, 0
paladd = 0, 0, 0
palmul = 0.9, 0.9, 0.9
palcontrast = 160, 160, 160
palpostbright = 0, 0, 0
trans = add1

[State 192, Camera]
type = helper
trigger1 = !numhelper(8999)
helpertype = normal
stateno = 8999
ID = 8999
name = "Camera"
postype = p1

[State 192, screen]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0,1

[State 192, Vel]
type = posset
trigger1 = !time
x = -450 * facing

[State 192, Vel]
type = velset
trigger1 = !time
x = 6

[State 192, Snd]
type = playsnd
trigger1 = time = 50
value = 1400,0

[State 192, Anim]
type = changeanim
trigger1 = animelemtime(2) < 0 && p2dist x <= 130
value = 193
elem = 2

[State 192, Vel]
type = velset
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
x = 0

[State 192, Vel]
type = posset
trigger1 = animelemtime(3) >= 0
x = ceil(helper(8999), pos x)

[State 193, End]
type = ChangeState
trigger1 = !AnimTime
value = 0

;==========<INTRO VS DAN,ATHENA,KARIN>==========
[Statedef 194]
type = S
physics = N
anim = 350

[State 350, intro]
type = assertspecial
trigger1 = 1
flag = intro

[State 350, Snd]
type = playsnd
trigger1 = animelem = 8
value = 350,0
channel = 17

[State 350, End]
type = changestate
trigger1 = !animtime
value = 0

;==========<INTRO VS YURI>==========
[Statedef 196]
type = S
physics = N
anim = 351

[State 351, intro]
type = assertspecial
trigger1 = 1
flag = intro

[State 351, Snd]
type = playsnd
trigger1 = animelem = 9
value = 350,0
channel = 17

[State 351, Snd]
type = playsnd
trigger1 = animelem = 21
value = 351,0
channel = 17

[State 351, Snd]
type = playsnd
trigger1 = animelem = 27
value = 351,1
channel = 17

[State 351, End]
type = changestate
trigger1 = !animtime
value = 0

;==========<INTRO VS RYU 1>==========
[Statedef 197]
type = S
physics = N
anim = 352

[State 352, intro]
type = assertspecial
trigger1 = 1
flag = intro

[State 352, Hadouken]
type = helper
trigger1 = animelem = 10
helpertype = normal
stateno = 1003
ID = 1003
name = "Hadouken Intro"
postype = p1
ownpal = 1

[State 352, Snd]
type = playsnd
trigger1 = animelem = 9
value = 1300,0
channel = 17

[State 352, Snd]
type = playsnd
trigger1 = animelem = 28
value = 1000,0
channel = 17

[State 352, Snd]
type = playsnd
trigger1 = animelem = 29
value = 1000,1

[State 352, End]
type = changestate
trigger1 = !animtime
value = 0

;==========<INTRO VS RYU 2>==========
[Statedef 198]
type = S
physics = N
anim = 353

[State 353, intro]
type = assertspecial
trigger1 = 1
flag = intro

[State 353, End]
type = changestate
trigger1 = !animtime
value = 0

;==========<INTRO VS CUTE GUYS>==========
[Statedef 199]
type = S
physics = N
anim = 356

[State 356, intro]
type = assertspecial
trigger1 = 1
flag = intro

[State 356, Snd]
type = playsnd
trigger1 = animelem = 4
value = 181,0
channel = 17

[State 356, End]
type = changestate
trigger1 = !animtime
value = 0

;====================<TURNS INTRO>====================
[StateDef 6900]
type = A
anim = 41
velSet = 0,0
ctrl = 0

[State 6900, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6900, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

[State 6900, Camera Helper]
type = Helper
trigger1 = !NumHelper(8999)
helpertype = Normal
stateNo = 8999
ID = 8999
name = "Camera"
posType = P1

[State 6900, PosSet]
type = PosSet
trigger1 = !Time
x = (-320 + abs(pos x)) * Facing

[State 6900, VelSet]
type = VelSet
trigger1 = !Time
x = (Helper(8999), RootDist x) / -40.0
y = -10.25

[State 6900, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.5

[State 6900, End]
type = ChangeState
trigger1 = Time
trigger1 = pos y > -vel y
value = 6901

;Landing
[StateDef 6901]
type = S
physics = S
anim = 6901
velSet = 0,0

[State 6901, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6901, PosSet]
type = PosSet
trigger1 = !Time && NumHelper(8999)
x = ceil(Helper(8999), pos x)

[State 6901, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0
channel = 1

[State 6901, Landing Dust Expod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 358, Snd]
type = playsnd
trigger1 = animelem = 8
value = 190,0
channel = 17

[State 6901, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,0
channel = 1

[State 6901, End]
type = ChangeState
trigger1 = !AnimTime
value = 0

;====================<WIN POSE DECIDER>====================
[StateDef 180]
type = S

[State 180, Generic Victory Quote (Normal/Master mode)]
type = VictoryQuote
trigger1 = 1
value = Random % 29

[State 180, Victory Quote vs. Abel]
type = VictoryQuote
trigger1 = Enemy, Name = "Abel" || Enemy, Name = "cvsabel"
value = 50

[State 180, Victory Quote vs. Adon]
type = VictoryQuote
trigger1 = Enemy, Name = "Adon" || Enemy, Name = "cvsadon"
value = 51

[State 180, Victory Quote vs. Akuma]
type = VictoryQuote
trigger1 = Enemy, Name = "Akuma" || Enemy, Name = "cvsgouki" || Enemy, Name = "Gouki" || Enemy, Name = "Shin Akuma" || Enemy, Name = "Shin Gouki" || Enemy, Name = "ShinAkuma" || Enemy, Name = "ShinGouki" || Enemy, Name = "Pocket Shin Gouki"
value = 52

[State 180, Victory Quote vs. Balrog]
type = VictoryQuote
trigger1 = Enemy, Name = "Balrog" || Enemy, Name = "cvsbison"
value = 53

[State 180, Victory Quote vs. Blanka]
type = VictoryQuote
trigger1 = Enemy, Name = "Blanka" || Enemy, Name = "cvsblanka"
value = 54

[State 180, Victory Quote vs. Cammy]
type = VictoryQuote
trigger1 = Enemy, Name = "Cammy" || Enemy, Name = "cvscammy"
value = 55

[State 180, Victory Quote vs. Chun-Li]
type = VictoryQuote
trigger1 = Enemy, Name = "Chun-Li" || Enemy, Name = "cvschunli" || Enemy, Name = "Chun Li" || Enemy, Name = "ChunLi"
value = 56

[State 180, Victory Quote vs. Cody]
type = VictoryQuote
trigger1 = Enemy, Name = "Cody" || Enemy, Name = "cvscody"
value = 57

[State 180, Victory Quote vs. C. Viper]
type = VictoryQuote
trigger1 = Enemy, Name = "C.Viper" || Enemy, Name = "Crimson Viper"
value = 58

[State 180, Victory Quote vs. Dan]
type = VictoryQuote
trigger1 = Enemy, Name = "Dan" || Enemy, Name = "cvsdan" || Enemy, Name = "Dan Hibiki"
value = 59

[State 180, Victory Quote vs. Decapre]
type = VictoryQuote
trigger1 = Enemy, Name = "Decapre"
value = 60

[State 180, Victory Quote vs. Dee Jay]
type = VictoryQuote
trigger1 = Enemy, Name = "Dee Jay" || Enemy, Name = "DeeJay"
value = 61

[State 180, Victory Quote vs. Dhalsim]
type = VictoryQuote
trigger1 = Enemy, Name = "Dhalsim" || Enemy, Name = "cvsdhalsim" || Enemy, Name = "RajaaDhalsim"
value = 62

[State 180, Victory Quote vs. Dudley]
type = VictoryQuote
trigger1 = Enemy, Name = "Dudley"
value = 63

[State 180, Victory Quote vs. El Fuerte]
type = VictoryQuote
trigger1 = Enemy, Name = "El Fuerte"
value = 64

[State 180, Victory Quote vs. E. Honda]
type = VictoryQuote
trigger1 = Enemy, Name = "E. Honda" || Enemy, Name = "cvshonda" || Enemy, Name = "E.Honda" || Enemy, Name = "Honda"
value = 65

[State 180, Victory Quote vs. Elena]
type = VictoryQuote
trigger1 = Enemy, Name = "Elena"
value = 66

[State 180, Victory Quote vs. Evil Ryu]
type = VictoryQuote
trigger1 = Enemy, Name = "Evil Ryu" || Enemy, Name = "cvsevilryu" || Enemy, Name = "EvilRyu"
value = 67

[State 180, Victory Quote vs. Fei Long]
type = VictoryQuote
trigger1 = Enemy, Name = "Fei Long" || Enemy, Name = "cvsfeilong" || Enemy, Name = "FeiLong" || Enemy, Name = "Fei-Long"
value = 68

[State 180, Victory Quote vs. Gen]
type = VictoryQuote
trigger1 = Enemy, Name = "Gen"
value = 69

[State 180, Victory Quote vs. Gouken]
type = VictoryQuote
trigger1 = Enemy, Name = "Gouken"
value = 70

[State 180, Victory Quote vs. Guile]
type = VictoryQuote
trigger1 = Enemy, Name = "Guile"
value = 71

[State 180, Victory Quote vs. Guy]
type = VictoryQuote
trigger1 = Enemy, Name = "Guy" || Enemy, Name = "cvsguy"
value = 72

[State 180, Victory Quote vs. Hakkan]
type = VictoryQuote
trigger1 = Enemy, Name = "Hakkan"
value = 73

[State 180, Victory Quote vs. Hugo]
type = VictoryQuote
trigger1 = Enemy, Name = "Hugo"
value = 74

[State 180, Victory Quote vs. Ibuki]
type = VictoryQuote
trigger1 = Enemy, Name = "Ibuki"
value = 75

[State 180, Victory Quote vs. Juri]
type = VictoryQuote
trigger1 = Enemy, Name = "Juri"
value = 76

[State 180, Victory Quote vs. Karin]
type = VictoryQuote
trigger1 = Enemy, Name = "Karin" || Enemy, Name = "Karin Kanzuki" || Enemy, Name = "cvskarin"
value = 93

[State 180, Victory Quote vs. Ken]
type = VictoryQuote
trigger1 = Enemy, Name = "Ken" || Enemy, Name = "cvsken" || Enemy, Name = "Ken Masters"
value = 77

[State 180, Victory Quote vs. Makoto]
type = VictoryQuote
trigger1 = Enemy, Name = "Makoto"
value = 78

[State 180, Victory Quote vs. Oni]
type = VictoryQuote
trigger1 = Enemy, Name = "Oni" || Enemy, Name = "Oni Akuma" || Enemy, Name = "OniAkuma"
value = 79

[State 180, Victory Quote vs. Poison]
type = VictoryQuote
trigger1 = Enemy, Name = "Poison" || Enemy, Name = "cvspoison"
value = 80

[State 180, Victory Quote vs. M. Bison]
type = VictoryQuote
trigger1 = Enemy, Name = "M. Bison" || Enemy, Name = "cvsvega" || (Enemy, Name = "Vega" && Enemy, AuthorName = "Phantom.of.the.Server") || Enemy, Name = "M.Bison" || Enemy, Name = "Bison"
value = 81

[State 180, Victory Quote vs. Rolento]
type = VictoryQuote
trigger1 = Enemy, Name = "Rolento" || Enemy, Name = "Rolento Schugerg" || Enemy, Name = "cvsrolento"
value = 82

[State 180, Victory Quote vs. Rose]
type = VictoryQuote
trigger1 = Enemy, Name = "Rose"
value = 83

[State 180, Victory Quote vs. Rufus]
type = VictoryQuote
trigger1 = Enemy, Name = "Rufus"
value = 84

[State 180, Victory Quote vs. Ryu]
type = VictoryQuote
trigger1 = (Enemy, Name = "Ryu" && !(Enemy, AuthorName = "Phantom.of.the.Server")) || (Enemy, Name = "cvsryu" && PalNo = [1,6]) || Enemy, Name = "cvsryu_normal"
trigger2 = (Enemy, Name = "Ryu" && Enemy, AuthorName = "Phantom.of.the.Server")
trigger2 = Enemy, var(1) != 2
value = 85

[State 180, Victory Quote vs. Sagat]
type = VictoryQuote
trigger1 = Enemy, Name = "Sagat" || Enemy, Name = "cvssagat" || Enemy, Name = "SagatMG"
value = 86

[State 180, Victory Quote vs. Seth]
type = VictoryQuote
trigger1 = Enemy, Name = "Seth"
value = 87

[State 180, Victory Quote vs. T. Hawk]
type = VictoryQuote
trigger1 = Enemy, Name = "T. Hawk" || Enemy, Name = "T.Hawk"
value = 88

[State 180, Victory Quote vs. Vega]
type = VictoryQuote
trigger1 = Enemy, AuthorName != "Phantom.of.the.Server"
trigger1 = Enemy, Name = "Vega" || Enemy, Name = "cvsbalrog"
value = 89

[State 180, Victory Quote vs. Yang]
type = VictoryQuote
trigger1 = Enemy, Name = "Yang" || Enemy, Name = "cvsyang"
value = 90

[State 180, Victory Quote vs. Yun]
type = VictoryQuote
trigger1 = Enemy, Name = "Yun" || Enemy, Name = "cvsyun"
value = 91

[State 180, Victory Quote vs. Zangief]
type = VictoryQuote
trigger1 = Enemy, Name = "Zangief" || Enemy, Name = "cvszangief"
value = 92

[State 180, WinSGS]
type = ChangeState
trigger1 = prevstateno = 3602
value = 3602

[State 180, Win 1]
type = ChangeState
trigger1 = command = "holdx"
value = 181

[State 180, Win 2]
type = ChangeState
trigger1 = command = "holdy"
value = 182

[State 180, Win 3]
type = ChangeState
trigger1 = command = "holdz"
value = 183

[State 180, Win 4]
type = ChangeState
trigger1 = command = "holda"
value = 184

[State 180, Win 5]
type = ChangeState
trigger1 = command = "holdb"
value = 185

[State 180, Win 6]
type = ChangeState
trigger1 = command = "holdc"
value = 186

[State 180, Win 7]
type = ChangeState
trigger1 = command = "holdstart"
value = 187

[State 180, Win 8]
type = ChangeState
trigger1 = command = "holddown"
value = 188

[State 180, Win 9]
type = ChangeState
TriggerAll = var(40) = 1
trigger1 = command = "holdup"
value = 189

[State 180, Sakura Win Decider]
type = ChangeState
TriggerAll = var(40) = 0
trigger1 = 1
value = 181 + (Random % 8)

[State 180, Dark Sakura Win Decider]
type = ChangeState
TriggerAll = var(40) = 1
trigger1 = 1
value = 181 + (Random % 9)

;====================<WIN 1>====================
[StateDef 181]
type = S
anim = 181
ctrl = 0

[State 181, Snd]
type = playsnd
trigger1 = animelem = 3
value = 181,0
channel = 0

[State 52, Landing Sound]
type = PlaySnd
trigger1 = animelem = 3
value = 52,0

[State 52, Landing Dust Explod]
type = Explod
trigger1 = animelem = 3
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 181, Assert]
type = assertspecial
trigger1 = time < 400
flag = roundnotover

;====================<WIN 2>====================
[StateDef 182]
type = S
anim = 182
ctrl = 0

[State 197, Snd]
type = playsnd
trigger1 = animelem = 1
value = 181,0
channel = 0

[State 182, Assert]
type = assertspecial
trigger1 = time < 400
flag = roundnotover

;====================<WIN 3>====================
[StateDef 183]
type = S
anim = 183
ctrl = 0

[State 183, Snd]
type = playsnd
trigger1 = animelem = 3
value = 4,0
channel = 0

[State 183, Snd]
type = playsnd
trigger1 = animelem = 9
value = 4,1
channel = 0

[State 183, Snd]
type = playsnd
trigger1 = animelem = 18
value = 4,4
channel = 0

[State 183, shoe]
type = helper
trigger1 = animelem = 9 && !numhelper(6091)
helpertype = normal
stateno = 6091
ID = 6091
name = "Shoe"
postype = p1
pos = 59,-103

[State 183, Assert]
type = assertspecial
trigger1 = time < 400
flag = roundnotover

;====================<WIN 4>====================
[StateDef 184]
type = S
anim = 184
ctrl = 0

[State 184, Snd]
type = playsnd
trigger1 = animelem = 7
value = 184,0
channel = 0

[State 184, Assert]
type = assertspecial
trigger1 = time < 400
flag = roundnotover

;==========<WIN 5>==========
[Statedef 185]
type = S
anim = 185
ctrl = 0

[State 185, Assert]
type = assertspecial
trigger1 = time < 400
flag = roundnotover

;==========<WIN 6>==========
[Statedef 186]
type = S
anim = 186
ctrl = 0

[State 186, Snd]
type = playsnd
trigger1 = animelem = 3
value = 4,0
channel = 0

[State 186, Snd]
type = playsnd
trigger1 = animelem = 9
value = 4,1
channel = 0

[State 186, Snd]
type = playsnd
trigger1 = animelem = 18
value = 4,4
channel = 0

[State 186, Assert]
type = assertspecial
trigger1 = time < 400
flag = roundnotover

;==========<WIN 7>==========
[Statedef 187]
type = S
ctrl = 0

[State 187, NHB]
type = nothitby
trigger1 = 1
value = SCA
time = 1

[State 187, Push]
type = playerpush
trigger1 = 1
value = 0

[State 187, Turn]
type = turn
trigger1 = !time && frontedgedist < 120

[State 187, Assert]
type = assertspecial
trigger1 = time < 400
flag = roundnotover

[State 187, Anim]
type = changeanim
trigger1 = !time && anim
value = 0

[State 187, Snd]
type = playsnd
trigger1 = animelem = 10
value = 350,0
channel = 0

[State 187, kei]
type = helper
trigger1 = !time && !numhelper(6000) && random < 500
helpertype = normal
stateno = 6004
ID = 6000
name = "Kei"
postype = p1
pos = 480,0
facing = -1
ownpal = 1
ownpal = 1

[State 187, kei]
type = helper
trigger1 = !time && !numhelper(6000)
helpertype = normal
stateno = 6002
ID = 6000
name = "Kei"
postype = p1
pos = 480,-6
facing = -1
ownpal = 1
size.shadowoffset = 5
ownpal = 1

[State 187, Anim]
type = changeanim
trigger1 = numhelper(6000) && anim != 187
trigger1 = helper(6000), anim = 6003
value = 187

[State 187, Anim]
type = changestate
trigger1 = numhelper(6000)
trigger1 = helper(6000), anim = 6004
value = 182

;==========<WIN 8>==========
[Statedef 188]
type = S
anim = 189
ctrl = 0

[State 185, Assert]
type = assertspecial
trigger1 = time < 400
flag = roundnotover

;==========<WIN by S.G.S.>==========
[Statedef 3602]
type = S
sprpriority = -4
anim = 3602

[State 4002, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = time = 4 && prevstateno = 3601
value = 1100,1
channel = 0

[State 4002, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = time = 4 && prevstateno = 3601
value = 1100,11
channel = 0

[State 4002, flowers]
type = explod
trigger1 = prevstateno = 3601 && numexplod(6090) < 12
vel = -(random / 2000.0), 0.5
accel = -.0075,0
anim = 6090
ID = 6090
sprpriority = 4
postype = p1
pos = 25,-110
random = 100,50
removetime = 210
facing = ifelse(random < 500, -1, 1)
scale = 0.25,0.25
ownpal = 1

[State 4002, win]
type = changestate
trigger1 = time >= 60 && roundstate = 3
value = ifelse(roundstate = 3, 180, 0)
ctrl = 1

;==========<WIN by S.G.S.>==========
[Statedef 3602]
type = S
sprpriority = -4
anim = 3602

[State 4002, Snd]
type = playsnd
triggerall = var(40) = 0
trigger1 = time = 4 && prevstateno = 3601
value = 1100,1
channel = 0

[State 4002, Snd]
type = playsnd
triggerall = var(40) = 1
trigger1 = time = 4 && prevstateno = 3601
value = 1100,11
channel = 0

[State 4002, flowers]
type = explod
trigger1 = prevstateno = 3601 && numexplod(6090) < 12
vel = -(random / 2000.0), 0.5
accel = -.0075,0
anim = 6090
ID = 6090
sprpriority = 4
postype = p1
pos = 25,-110
random = 100,50
removetime = 210
facing = ifelse(random < 500, -1, 1)
scale = 0.25,0.25
ownpal = 1

[State 4002, win]
type = changestate
trigger1 = time >= 60 && roundstate = 3
value = ifelse(roundstate = 3, 180, 0)
ctrl = 1

;==========<TAUNT>==========
[StateDef 195]
type = S
movetype = A
physics = S
juggle = 0
anim = 195
velSet = 0,0
sprPriority = 1
ctrl = 0

[State 195, 1]
type = CtrlSet
triggerAll = Roundstate = 2
trigger1 = Time = 45
value = 1

[State 195, Snd]
type = playsnd
trigger1 = anim = 195 && animelem = 4
value = 195,0
channel = 17

[State 195, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = Time = 0 ;&& anim = 195
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 18 < 7, 7, fvar(11) * 18)), 0
getpower = 72 * !var(20), 36 * !var(20)
givepower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 2 * var(9)
ground.slideTime = 12 + 2 * var(9)
guard.hitTime = 12
air.hitTime = 120
ground.velocity = ifElse(var(20), -4.36, -8.52), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.36, -8.52)
guard.cornerPush.velOff = 0
air.velocity = ifelse(var(20), -2.36, -4), -7.5
air.cornerPush.velOff = 0
yAccel = ifElse(var(20),.5,.6)
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 101), var(36):= -79
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48

[State 195, Type]
type = statetypeset
trigger1 = animelemtime(6) >= 0
movetype = I

[State 195, Taunt Decider]
type = ChangeAnim
trigger1 = command = "start" && command = "holdfwd"
value = 196

[State 196, Snd]
type = playsnd
trigger1 = anim = 196 && animelem = 3
value = 188,0
channel = 0

[State 195, Taunt Decider]
type = ChangeAnim
trigger1 = command = "start" && command = "holdback"
value = 197

[State 197, Snd]
type = playsnd
trigger1 = anim = 197 && animelem = 1
value = 181,0
channel = 17

[State 195, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;====================<CHEAP K.O.>====================
[StateDef 5950]
type = S
moveType = H
physics = S
anim = 5950
velSet = 0,0

[State 5950, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 5950, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 5950, Assert: NoKOsnd]
type = AssertSpecial
trigger1 = 1
flag = NoKOsnd

[State 5950, StopSnd]
type = StopSnd
trigger1 = !Time && !Alive
channel = 0

[State 5950, KO Sound]
type = PlaySnd
trigger1 = AnimElem = 2 && !Alive
value = 5950,0

[State 5981, Hitting the Floor Sound]
type = PlaySnd
trigger1 = AnimElem = 4 || AnimElem = 11
value = F7,0
volume = 255

[State 5981, Hitting the Floor Explod]
type = Explod
trigger1 = AnimElem = 4 || AnimElem = 11
anim = F60
posType = P1
pos = 0,0
sprPriority = -3

[State 5950, End]
type = ChangeState
trigger1= !AnimTime
value = ifElse(Alive, 5110, 5150)

;====================<AIR HIT TRANSITION>====================
[Statedef 5035]
type = A
movetype = H
physics = N

[State 5035, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = SelfAnimExist(5035)
trigger1 = Anim = [5000,5029]
value = 5035

[State 5035, VelAdd]
type = VelAdd
trigger1 = 1
y = GetHitVar(yAccel)

[State 5035, Recover]
type = ChangeState
triggerAll = !HitFall
trigger1 = HitOver
trigger2 = !AnimTime
trigger3 = vel y > 0 && pos y >= 10
trigger4 = !Time
trigger4 = Anim != 5035
value = 5040

[State 5035, Fall]
type = ChangeState
triggerAll = HitFall
trigger1 = HitOver
trigger2 = !AnimTime
trigger3 = vel y > 0 && pos y >= 10
trigger4 = !Time
trigger4 = Anim != 5035
value = 5050

;===============================================================================
;===============================<-2 STATES>=====================================
;===============================================================================
[StateDef -2]

[State -2, Intro & Taunt StopSnd]
type = StopSnd
trigger1 = MoveType = H
trigger2 = StateNo != [190,199]
trigger2 = StateNo != 6901
channel = 17

[State -2, Hit Detection]
type = VarSet
trigger1 = MoveContact = 1 && var(30) < 0
var(30) = HitPauseTime
ignoreHitPause = 1

[State -2, Hit Sound]
type = PlaySnd
trigger1 = MoveContact = 1 && var(30) = HitPauseTime
trigger1 = MoveHit = 1 && var(31) >= 0
value = 2, var(31)
channel = 2
ignoreHitPause = 1

[State -2, Guard Sound]
type = PlaySnd
trigger1 = MoveContact = 1 && var(30) = HitPauseTime
trigger1 = MoveGuarded = 1 && var(32) >= 0
value = 3, var(32)
channel = 2
ignoreHitPause = 1

[State -2, Hit Sparks]
type = Helper
triggerAll = MoveContact = 1 && var(30) = HitPauseTime
trigger1 = MoveHit = 1 && NumEnemy
trigger1 = var(33) = 8010 || var(33) = 8011 || var(33) = 8012 || var(33) = 8013 || var(33) = 8014 || var(33) = 8001
trigger2 = MoveGuarded = 1 && NumEnemy
trigger2 = var(34) = 8000 || var(34) = 8001
helperType = Normal
stateNo = ifElse(MoveGuarded, var(34), var(33))
ID = 8000
name = "Spark"
postype = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(35), ceil(P2Dist x), var(35))), var(36)
facing = -1
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State -2, Counter FX]
type = Helper
trigger1 = MoveHit = 1 && var(30) = HitPauseTime
trigger1 = NumEnemy && var(9)
trigger1 = !(HitDefAttr = SCA, AT) && (EnemyNear, MoveReversed != 1)
helperType = Normal
stateNo = 8290
ID = 8290
name = "Counter FX"
posType = P1
pos = ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(35), ceil(P2Dist x), var(35))), var(36)
facing = -1
ownPal = 1
pauseMoveTime = 255
superMoveTime = 255
ignoreHitPause = 1

[State -2, Counter Flag]
type = VarSet
trigger1 = NumEnemy
var(9) = (EnemyNear, MoveType = A)
ignoreHitPause = 1

[State -2, Hit Detection]
type = VarSet
trigger1 = 1
var(30) = -1

[State -2, Hit Detection]
type = VarRangeSet
trigger1 = MoveType = I
trigger2 = MoveType = H && Time
first = 30
last = 36
value = -1
ignoreHitPause = 1

;varset for LEFT and RIGHT
[State -2, var]
type = VarSet
trigger1 = facing = 1
var(55) = 1

[State -2, var]
type = VarSet
trigger1 = facing = -1
var(55) = 2

[State -2, P2 Facing]
type = TargetFacing
trigger1 = MoveContact = 1 && NumTarget
trigger1 = !(Target, HitShakeOver) && !(Target, HitFall) && (Target, Time <= 1)
trigger2 = MoveContact = 1 && NumTarget(1232)
trigger2 = !(Target, HitShakeOver) && (Target, Time <= 1)
value = ifElse(P2Dist x >= 0, -1, 1)
ignoreHitPause = 1

[State -2, P2 Safe Fall]
type = TargetState
trigger1 = NumTarget = 1
trigger1 = Target, command = "recovery"
trigger1 = Target, pos y >= -48 && Target, vel y > 0
trigger1 = Target, Alive && Target, HitFall && Target, GetHitVar(fall.recover)
trigger1 = Target, StateNo = 5030 || Target, StateNo = 5035 || Target, StateNo = 5050 || Target, StateNo = 5071
value = 5205
ignoreHitPause = 1

[State -2, Assert: UnGuardable]
type = AssertSpecial
trigger1 = var(17) > 0
trigger1 = var(17) := (var(17) - 1)
flag = UnGuardable
ignoreHitPause = 1

[State -2, Hit Count]
type = VarAdd
trigger1 = MoveHit = 1
trigger1 = !(HitDefAttr = SCA, AT)
var(13) = 1

[State -2, Hit Count Reset]
type = VarSet
trigger1 = NumEnemy && var(13)
trigger1 = (EnemyNear, MoveType != H) && (EnemyNear, StateNo != 5300)
var(13) = 0
ignoreHitPause = 1

[State -2, Juggle Count]
type = VarAdd
trigger1 = MoveHit = 1
trigger1 = !(HitDefAttr = SCA,AT)
var(15) = 1

[State -2, Juggle Reset Single]
type = VarSet
triggerAll = NumEnemy = 1 && var(15)
trigger1 = (Enemy, StateType != A) && (Enemy, StateNo != [5100,5109]) && (Enemy, Time >= 1)
trigger2 = (Enemy, MoveType != H) || (Enemy, StateNo = [120,155]) || (Enemy, Ctrl)
var(15) = 0
ignoreHitPause = 1

[State -2, Juggle Reset Simul]
type = VarSet
triggerAll = NumEnemy >= 2 && var(15)
trigger1 = (EnemyNear(0), StateType != A) && (EnemyNear(0), Time >= 1)
trigger2 = (EnemyNear(0), MoveType != H) || (EnemyNear(0), StateNo = [120,155]) || (EnemyNear(0), Ctrl)
trigger3 = (EnemyNear(1), StateType != A) && (EnemyNear(0), Time >= 1)
trigger4 = (EnemyNear(1), MoveType != H) || (EnemyNear(0), StateNo = [120,155]) || (EnemyNear(0), Ctrl)
var(15) = 0
ignoreHitPause = 1

[State -2, Free Juggling]
type = VarSet
trigger1 = RoundState != 2
var(15) = 0
ignoreHitPause = 1

[State -2, Juggle Flag]
type = VarSet
trigger1 = NumEnemy && !var(16)
trigger1 = (EnemyNear, StateNo = 5040) && !(EnemyNear, Ctrl)
var(16) = 1
ignorehitpause = 1

[State -2, Juggle Flag Reset Single]
type = VarSet
triggerAll = NumEnemy = 1 && var(16)
trigger1 = (Enemy, MoveType != H) && (Enemy, StateNo != 5040)
trigger2 = !(Enemy, HitShakeOver) || (Enemy, StateType = L) || (Enemy, Ctrl)
var(16) = 0
ignoreHitPause = 1

[State -2, Juggle Flag Reset Simul]
type = VarSet
triggerAll = NumEnemy >= 2 && var(16)
trigger1 = (EnemyNear(0), MoveType != H) && (EnemyNear(0), StateNo != 5040)
trigger2 = !(EnemyNear(0), HitShakeOver) || (EnemyNear(0), StateType = L) || (EnemyNear(0), Ctrl)
trigger3 = (EnemyNear(1), MoveType != H) && (EnemyNear(1), StateNo != 5040)
trigger4 = !(EnemyNear(1), HitShakeOver) || (EnemyNear(1), StateType = L) || (EnemyNear(1), Ctrl)
var(16) = 0
ignoreHitPause = 1

[State -2, Custom Combo End]
type = VarSet
trigger1 = var(20) < 0
trigger2 = MoveType = H
trigger3 = RoundState != 2
trigger4 = (StateNo = [3000,4999])
var(20) = 0
ignoreHitPause=1

[State -2, Custom Combo Time]
type = VarAdd
trigger1 = var(20) > 0
var(20) = -1
ignoreHitPause = 1

[State -2, Custom Combo Asserts]
type = AssertSpecial
trigger1 = var(20) > 0
flag = NoStandGuard
flag2 = NoCrouchGuard
flag3 = NoAirGuard
ignoreHitPause = 1

[State -2, Custom Combo PalFX]
type = PalFX
trigger1 = var(20) > 60
time = 2
add = 32 + ceil(sin(var(20) / 16.0 * pi) * 32), 32 + ceil(sin(var(20) / 16.0 * pi) * 32), 32 + ceil(sin(var(20) / 16.0 * pi) * 32)
ignoreHitPause = 1

[State -2, Custom Combo PalFX]
type = PalFX
trigger1 = var(20) = [1,60]
time = 2
add = 64 + ceil(sin(var(20) / 8.0 * pi) * 64), 64 + ceil(sin(var(20) / 8.0 * pi) * 64), 64 + ceil(sin(var(20) / 8.0 * pi) * 64)
ignoreHitPause = 1

[State -2, Throws Allowed]
type = VarSet
trigger1 = EnemyNear, MoveType != H
trigger1 = EnemyNear, StateNo != 140
trigger1 = (EnemyNear, ctrl && EnemyNear, Time >= 1) || (EnemyNear, Time >= 8)
trigger2 = EnemyNear, MoveType = A
trigger3 = (EnemyNear, StateNo != [0,52]) && (EnemyNear, StateNo != [120,155]) && (EnemyNear, StateNo != [5000,5120])
trigger4 = var(20) || var(21) || var(22)
var(38) = 0

[State -2, Throws Disallowed]
type = VarSet
triggerAll = NumEnemy
trigger1 = EnemyNear, StateNo = [150,155]
trigger2 = (EnemyNear, StateNo = 51 || EnemyNear, StateNo = 140) && (EnemyNear, PrevStateNo = [150, 155])
trigger3 = EnemyNear, MoveType = H && EnemyNear, StateType != A && !var(20) && !var(21) && !var(22)
trigger4 = (EnemyNear, StateNo = [5020,5040]) && EnemyNear, HitFall = 0
trigger5 = EnemyNear, StateNo = 40 && EnemyNear, PrevStateNo != 52 && (EnemyNear, Anim != [0, 29])
var(38) = 1
ignoreHitPause = 1

[State -2, Dampener]
type = VarSet
trigger1 = 1
fvar(10) = ifElse(var(13) < 6, 24, ifElse(var(13) >= 23, 1, 29 - var(13))) / 24.0
ignoreHitPause = 1

[State -2, Dampener - Custom Combo]
type = VarSet
trigger1 = var(20)
fvar(10) = 0.72 * (10 - ifElse(var(13) >= 10, 10, var(13))) / 10.0
ignoreHitPause = 1

[State -2, Dampener - Custom Combo Limiter]
type = VarSet
trigger1 = var(20)
trigger1 = StateNo = 225 || StateNo = 255
fvar(10) = ifElse(var(13), 0, 0.72)
ignoreHitPause = 1

[State -2, Dampener - Supers]
type = VarSet
trigger1 = (StateNo = [3000,4999])
fvar(10) = ifElse(var(22), 0.6, ifElse(var(21), 0.8, 1.0))
ignoreHitPause = 1

[State -2, Dampener Limit]
type = VarSet
trigger1 = fvar(10) < 0
fvar(10) = 0
ignoreHitPause = 1

[State -2, Root Dampener]
type = VarSet
trigger1 = 1
fvar(11) = fvar(10) * ifElse(var(9), 1.2, 1)
ignoreHitPause = 1

[State -2, Voice Position]
type = SndPan
trigger1 = 1
channel = 0
pan = 0
ignoreHitPause = 1

[State -2, Debug]
type = DisplayToClipboard
trigger1 = 1
text = "AI = %d Attack = %f Hits = %d Juggle = %d"
params = AILevel, fvar(11), var(13), var(15)
ignoreHitPause = 1

[State -2, Debug]
type = AppendToClipboard
trigger1 = 1
text = "\nBy Varo_Hades & BahamianKing242"
ignoreHitPause = 1

[State -2, Ground Impact Dust]
type = null;Helper
triggerAll = !NumHelper(8110) && NumEnemy
trigger1 = StageVar(Info.Author) != "Water"
trigger1 = P2MoveType = H && P2StateNo = 811 && Enemy, Time = 1
helperType = Normal
stateNo = 8110
ID = 8110
name = "Ground Impact Dust"
posType = P2
facing = -1
pos = 0,0
ownPal = 1
ignorehitpause = 1

[State -2, Wall Impact Dust]
type = Helper
triggerAll = !NumHelper(8111) && NumEnemy
trigger1 = P2MoveType = H && P2StateNo = 1237 && Enemy, Time = 1
helperType = Normal
stateNo = 8111
ID = 8111
name = "Wall Impact Dust"
posType = P2
facing = -1
pos = floor(-20*const(size.xscale)),ceil(-70*const(size.yscale))
ownPal = 1
ignorehitpause = 1

;===========================================================================
;===============================<-3 STATES>=================================
;===========================================================================
[StateDef -3]

[State -3, GameTime]
type = VarSet
trigger1 = 1
var(58) = GameTime
ignoreHitPause = 1

[State -3, ProjContact Reset]
type = VarSet
triggerAll = var(18)
trigger1 = (StateNo != [1000,1030])
trigger1 = (StateNo != [1050,1080])
var(18) = 0

[State -3, Projectile Flag Off]
type = VarSet
trigger1 = 1
var(39) = 0
ignoreHitPause = 1

[State -3, Projectile Flag On]
type = VarSet
triggerAll = var(20) <= 0
trigger1 = NumHelper(1005)
trigger1 = Helper(1005), StateNo = 1005
trigger2 = NumHelper(1005)
trigger2 = Helper(1005), StateNo = 1035
trigger3 = NumHelper(1055)
trigger3 = Helper(1055), StateNo = 1055
trigger4 = NumHelper(1055)
trigger4 = Helper(1055), StateNo = 1085
var(39) = 1
ignoreHitPause = 1

[State -3, Chain Combo Reset]
type = VarSet
trigger1 = 1
var(4) = 0
ignoreHitPause = 1

[State -3, Chain Combo Check]
type = VarSet
trigger1 = var(20) && (StateNo = [200,699]) && MoveContact
trigger2 = var(20) && (StateNo = [1000,2999]) && StateType != A && (MoveContact || var(18))
var(4) = 1
ignoreHitPause = 1

[State -3, Cancel Reset]
type = VarSet
trigger1 = 1
var(6) = 0
ignoreHitPause = 1

[State -3, Cancel Check]
type = VarSet
trigger1 = var(20) && (StateNo = [200,699])
trigger2 = var(20) && (StateNo = [1000,2999]) && (MoveContact || var(18))
trigger3 = (StateNo = [200,699]) && Time <= 2
trigger4 = StateNo = 200 && MoveContact = [1,6]
trigger5 = StateNo = 210 && MoveContact = [1,6]
trigger6 = StateNo = 215 && MoveContact = [1,6]
trigger7 = StateNo = 225 && MoveContact = [1,6]
trigger8 = StateNo = 230 && MoveContact = [1,6]
trigger9 = StateNo = 235 && MoveContact = [1,6]
trigger10 = StateNo = 255 && MoveContact = [1,6]
trigger11 = StateNo = 400 && MoveContact = [1,6]
trigger12 = StateNo = 410 && MoveContact = [1,6]
trigger13 = StateNo = 420 && MoveContact = [1,6]
trigger14 = StateNo = 430 && MoveContact = [1,6]
trigger15 = StateNo = 440 && MoveContact = [1,6]
var(6) = 1
ignoreHitPause = 1

[State -3, Super Cancel Reset]
type = VarSet
trigger1 = 1
var(7) = 0
ignoreHitPause = 1

[State -3, Super Cancel Check]
type = VarSet
trigger1 = var(20) && (StateNo = [200,699])
trigger2 = var(20) && (StateNo = [1000,2999]) && (MoveContact || var(18))
trigger3 = (StateNo = [200,699]) && Time <= 2
trigger4 = StateNo = 200 && MoveContact = [1,10]
trigger5 = StateNo = 210 && MoveContact = [1,10]
trigger6 = StateNo = 215 && MoveContact = [1,10]
trigger7 = StateNo = 225 && MoveContact = [1,10]
trigger8 = StateNo = 230 && MoveContact = [1,10]
trigger9 = StateNo = 235 && MoveContact = [1,10]
trigger10 = StateNo = 255 && MoveContact = [1,10]
trigger11 = StateNo = 400 && MoveContact = [1,10]
trigger12 = StateNo = 410 && MoveContact = [1,10]
trigger13 = StateNo = 420 && MoveContact = [1,10]
trigger14 = StateNo = 430 && MoveContact = [1,10]
trigger15 = StateNo = 440 && MoveContact = [1,10]
trigger16 = (StateNo = [1000,1090]) && (AnimElemTime(11) = [1,20]) && var(18)
trigger17 = (StateNo = [1100,1131]) && (AnimElemTime(5) = [1,20]) && MoveContact
trigger18 = (StateNo = [1220,1220]) && (AnimElemTime(4) = [1,20]) && MoveContact
var(7) = 1
ignoreHitPause = 1

[State -3, Hyper Cancel Reset]
type = VarSet
trigger1 = 1
var(8) = 0
ignoreHitPause = 1

[State -3, Hyper Cancel Reset]
type = VarSet
trigger1 = StateNo = 3100 && AnimElemTime(4) >= 0 && AnimElemTime(16) < 5 && MoveContact
trigger2 = StateNo = 3300 && AnimElemTime(8) >= 0 && AnimElemTime(22) < 5 && MoveContact
trigger3 = StateNo = 3401 && AnimElemTime(3) >= 0 && AnimElemTime(33) < 5 && MoveContact
var(8) = 1
ignoreHitPause = 1

[State -3, Super Cancel Flag Reset]
type = VarSet
trigger1 = var(21)
trigger1 = (StateNo != [3000,4999]) || MoveType = H
var(21) = 0
ignoreHitPause = 1

[State -3, Hyper Cancel Flag Reset]
type = VarSet
trigger1 = var(22)
trigger1 = (StateNo != [3000,4999]) || MoveType = H
var(22) = 0
ignoreHitPause = 1

[State -3, Parry Detection]
type = Helper
triggerAll = RoundState = 2 && !NumHelper(765) && !var(20)
triggerAll = (MoveType = I && ctrl) || (StateNo = [760,762]) || StateNo = 5120
triggerAll = (command != "rlsfwd" && command != "rlsback" && command != "rlsup" && command != "rlsdown") || AILevel
trigger1 = !AILevel && (StateType = S || StateType = C || StateNo = 5120) && (command = "fwd" || command = "down")
trigger2 = !AILevel && StateType = A && (var(3) != 1 && var(3) != 2) && command = "fwd"
trigger3 = AILevel && (StateNo != [760,762]) && InGuardDist && Random < 50
trigger4 = AILevel && (StateNo = [760,762]) && Time = 14 && Random < 667
helperType = Normal
stateNo = 765
ID = 765
name = "Parry Detection"
posType = P1
pauseMoveTime = 65535
superMoveTime = 65535

[State -3, Parry Attacks]
type = ChangeState
trigger1 = (StateNo != [760,762]) && NumHelper(765)
trigger1 = Helper(765), StateNo = 766
value = ifElse((Helper(765), Anim = 767), 762, ifElse((Helper(765), Anim = 766), 761, 760))
ignoreHitPause = 1

[State -3, Parry Projectiles]
type = HitOverride
trigger1 = (StateNo != [760,762]) && NumHelper(765)
trigger1 = !(Helper(765), var(0)) && (Helper(765), Anim = 765)
attr = SA, AP
stateNo = 760
slot = 0
time = 1
ignoreHitPause = 1

[State -3, Parry Projectiles]
type = HitOverride
trigger1 = (StateNo != [760,762]) && NumHelper(765)
trigger1 = !(Helper(765), var(0)) && (Helper(765), Anim = 766)
attr = C, AP
stateNo = 761
slot = 0
time = 1
ignoreHitPause = 1

[State -3, Parry Projectiles]
type = HitOverride
trigger1 = (StateNo != [760,762]) && NumHelper(765)
trigger1 = !(Helper(765), var(0)) && (Helper(765), Anim = 767)
attr = SCA, AP
stateNo = 762
slot = 0
time = 1
ignoreHitPause = 1

[State -3, Assert: NoWalk after Parry]
type = AssertSpecial
trigger1 = var(26) > 0
trigger1 = var(26) := (var(26)-1)
flag = NoWalk
ignoreHitPause = 1

[State -3, Corner Push]
type = VarSet
trigger1 = fvar(5)
trigger1 = NumTarget
trigger1 = Target, HitOver || (Target, GetHitVar(HitShakeTime) > 0 && Target, Time <= 0)
fvar(5) = 0

[State -3, Corner Push]
type = VarSet
trigger1 = MoveContact = 1 && NumTarget
fvar(5) = Target, GetHitVar(xVel)
ignoreHitPause = 1

[State -3, Corner Push]
type = PosAdd
triggerAll = fvar(5)
triggerAll = (StateType = S || StateType = C) && NumTarget
triggerAll = !HitPauseTime && Target, GetHitVar(HitShakeTime) <= 0
triggerAll = (Target, StateType = S || Target, StateType = C) && !(Target, GetHitVar(yvel)) && !(Target, HitFall)
trigger1 = Target, FrontEdgeBodyDist <= abs(Target, vel x)
trigger1 = (Target, GetHitVar(xvel) * Target, Facing) > 0
trigger2 = Target, BackEdgeBodyDist <= abs(target, vel x)
trigger2 = (Target, GetHitVar(xvel) * Target, Facing) < 0
x = ifElse(Target, FrontEdgeBodyDist <= 0, -1, 1) * (Target, Facing) * fvar(5)

[State -3, Corner Push]
type = VarSet
trigger1 = fvar(5)
trigger1 = abs(fvar(5)) < 1.0
fvar(5) = 0

[State -3, Corner Push]
type = VarSet
trigger1 = NumTarget
trigger1 = Target, GetHitVar(HitShakeTime) <= 0
fvar(5) = fvar(5) * 0.85

[State -3, EX FX Decrement]
type = VarAdd
trigger1 = var(25) > 0
var(25) = -1

[State -3, EX FX Reset]
type = VarSet
trigger1 = (StateNo != [1000,2999]) || MoveType = H
var(25) = 0

[State -3, EX Flash]
type = PalFX
trigger1 = !(GameTime % 2) && var(25)
time = 1
color = 0
mul = 256, 224, 0
add = 128, 128, 128
ignoreHitPause = 1

[State -3, Movement AfterImage]
type = AfterImage
triggerAll = Time = 1 && !var(20)
trigger1 = StateNo = 50 && (var(3) = 2 || var(3) = 3)
trigger2 = (StateNo = [700,715])
time = 2
timeGap = 1
frameGap = 4
length = 9
palBright = 0,0,0
palContrast = 128,128,128
palPostBright = 0,0,0
palAdd = 0,0,0
palMul = 0.9,0.9,0.9
trans = Add1

[State -3, Level 1 Super AfterImage]
type = AfterImage
trigger1 = StateNo = 3000 && Time = 43
trigger2 = StateNo = 3020 && Time = 43
trigger3 = StateNo = 3100 && animelem = 2
trigger4 = StateNo = 3300 && animelem = 3
trigger5 = StateNo = 3400 && animelem = 2
trigger6 = StateNo = 3500 && animelem = 3
time = 2
timeGap = 1
frameGap = 10
length = 21
palBright = 0,0,0
palContrast = 128,128,128
palPostBright = 0,0,0
palAdd = 0,0,0
palMul = 0.75,0.75,0.75
trans = Add1

[State -3, Level 2 Super AfterImage]
type = AfterImage
trigger1 = StateNo = 3050 && Time = 43
trigger2 = StateNo = 3070 && Time = 43
trigger3 = StateNo = 3150 && animelem = 2
trigger4 = StateNo = 3350 && animelem = 3
trigger5 = StateNo = 3450 && animelem = 2
trigger6 = StateNo = 3550 && animelem = 3
time = 2
timeGap = 1
frameGap = 10
length = 21
palBright = 0,0,0
palContrast = 32,32,160
palPostBright = 0,0,0
palAdd = 0,0,0
palMul = 0.75,0.75,0.75
trans = Add1

[State -3, Level 3 Super AfterImage]
type = AfterImage
trigger1 = StateNo = 3200 && Time = 43
trigger2 = StateNo = 3600 && time = 1
trigger3 = StateNo = 3700 && anim = 3700 && animelem = 2
time = 2
timeGap = 1
frameGap = 10
length = 21
palBright = 0,0,0
palContrast = 160,32,32
palPostBright = 0,0,0
palAdd = 0,0,0
palMul= 0.75,0.75,0.75
trans = Add1

[State -3, AfterImage Persist]
type = AfterImageTime
trigger1 = StateNo = 50 || (StateNo = [600,699])
trigger1 = (var(3) = 2 || var(3) = 3) && vel y < -1
trigger2 = var(20)
trigger3 = StateNo = [700,715]
trigger4 = (StateNo = [3000,4999])
time = 2

[State -3, Underground Juggle Prevention]
type = TargetBind
trigger1 = MoveContact = 1
trigger1 = NumTarget && NumEnemy
trigger1 = (Target, Time = 0) && (Target, ID = EnemyNear, ID)
trigger1 = !(Target, HitShakeOver) && (Target, pos y > 0)
pos = ceil(P2Dist x), ceil(-pos y)
ignoreHitPause = 1

[State -3, Prevent Crossup]
type = Width
trigger1 = MoveType != H
edge = 8,0
ignoreHitPause = 1

[State -3, Variable Height]
type = PlayerPush
triggerAll = StateType = A && MoveType != H && NumEnemy
triggerAll = P2BodyDist x = [-(EnemyNear, const(size.ground.back) + EnemyNear, const(size.ground.front)), 0]
trigger1 = P2StateType = S
trigger1 = P2Dist y >= (EnemyNear, const(size.height) - 12)
trigger2 = P2StateType = C
trigger2 = P2Dist y >= (EnemyNear, const(size.height) - 28)
trigger3 = P2StateType = L
trigger3 = P2Dist y >= 12
value = 0
ignoreHitPause = 1

[State -3, Get Hit Sound]
type = PlaySnd
triggerall = Alive && Time = 1
triggerall = StateNo = 5000 || StateNo = 5010
trigger1 = GetHitVar(AnimType) >= 2 && Random < 500
trigger2 = GetHitVar(AnimType) = 1 && Random < 375
trigger3 = GetHitVar(AnimType) = 0 && Random < (250 * (AILevel ** 2 / 64.0))
value = 5000,(Random % 4)
channel = 0
ignoreHitPause = 1

[State -3, Get Hit Sound]
type = PlaySnd
triggerAll = Alive && Time = 1
trigger1 = (StateNo = 5000 || StateNo = 5010) && NumEnemy
trigger1 = GetHitVar(fall) || (EnemyNear, HitDefAttr = SCA,SA,HA)
trigger2 = (StateNo = 5020 || StateNo = 5070 || StateNo = 5080)
trigger3 = (StateNo = 5050 || StateNo = 5100) && (PrevStateNo != [5000,5199])
value = 5000,(Random % 4)
channel = 0
ignoreHitPause = 1

[State -3, Cheap KO]
type = ChangeState
trigger1 = !Alive && (StateNo = [5000,5010])
trigger1 = (PrevStateNo = [130,131]) || (PrevStateNo = [140,141]) || (PrevStateNo = [150,153])
value = 5950
ignoreHitPause = 1

[State -3, Assert: NoKOsnd (Cheap KO)]
type = AssertSpecial
trigger1 = (StateNo = [5000,5010])
trigger1 = (PrevStateNo = [130,131]) || (PrevStateNo = [140,141]) || (PrevStateNo = [150,153])
flag = NoKOsnd
ignoreHitPause = 1

[State -3, Custom Combo Finish]
type = Helper
triggerAll = RoundState = 3
triggerAll = WinKO && var(20)
triggerAll = RoundState = 3 && !NumHelper(8600)
trigger1 = MoveHit = [1,4]
trigger2 = NumHelper(1005)
trigger2 = (Helper(1005), var(18))
trigger3 = NumHelper(1015)
trigger3 = (Helper(1015), var(18))
trigger4 = NumHelper(1055)
trigger4 = (Helper(1055), var(18))
trigger5 = NumHelper(1065)
trigger5 = (Helper(1065), var(18))
trigger6 = StateNo = 810
trigger7 = StateNo = 820
trigger8 = StateNo = 870
helperType = Normal
stateNo = 8600
ID = 8600 + 0 * (var(23) := 900)
name = "Custom Combo Finish"
posType = left
pos = 160,-120
ownPal = 1
pauseMoveTime = 255
superMoveTime = 255
ignoreHitPause = 1

[State -3, Super Finish]
type = Helper
triggerAll = WinKO
triggerAll = RoundState = 3 && !NumHelper(8600)
trigger1 = MoveHit = 1 && (StateNo = [3000,4999])
trigger1 = var(23) := StateNo
trigger2 = (StateNo = [3000,3099]) || NumHelper(3005) || NumHelper(3025)
trigger2 = var(23) := 3000
trigger3 = (StateNo = [3100,3199])
trigger3 = var(23) := 3100
trigger4 = (StateNo = [3200,3299])
trigger4 = var(23) := 3200
trigger5 = (StateNo = [3300,3399])
trigger5 = var(23) := 3300
trigger6 = (StateNo = [3400,3499])
trigger6 = var(23) := 3400
trigger7 = (StateNo = [3500,3599])
trigger7 = var(23) := 3500
trigger8 = (StateNo = [3600,3699])
trigger8 = var(23) := 3600
trigger9 = (StateNo = [3700,3799]) || NumHelper(3705)
trigger9 = var(23) := 3700
helperType = Normal
stateNo = 8600
ID = 8600
name = "Super Finish"
posType = left
pos = 160,-120
ownPal = 1
pauseMoveTime = 255
superMoveTime = 255
ignoreHitPause = 1

