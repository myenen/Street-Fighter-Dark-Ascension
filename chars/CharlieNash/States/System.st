; _________________________________________
;| Guile by Jmorphman                      |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================<SYSTEM STATES>========================================
;==============================================================================================

;====================<STANDING>====================
[StateDef 0]
type = S
physics = N
moveType = I
velSet = 0,0
sprPriority = 0

[State 0, Width]
type = Width
trigger1 = anim = 2 + var(55)
edge = 0,0
player = -15,-15

[State 0, Remove Explods]
type = RemoveExplod
trigger1 = IsHelper

[State 0, Destroy Helpers]
type = DestroySelf
trigger1 = IsHelper

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

[State 0, Width]
type = Width
trigger1 = var(40)
edge = 0,0
player = -10,-10

[State 10, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && Anim = 12 + var(40)*3 + var(55)
value = 10 + var(40)*3 + var(55)
elem = 3 - AnimElemNo(0)

[State 10, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 10 + var(40)*3 + var(55)
value = 10 + var(40)*3 + var(55)

[State 10, End]
type = ChangeState
trigger1 = !AnimTime
value = 11


;Crouching
[StateDef 11]
type = C
physics = C
moveType = I
anim = 11 + var(40)*3 + var(55)
velSet = 0,0
sprPriority = 0

[State 0, Width]
type = Width
trigger1 = var(40)
edge = 0,0
player = -10,-10

[State 11, ChangeAnim]
type = ChangeAnim
trigger1 = (anim = 6 || anim = 8) + var(55) && !AnimTime
value = 11 + var(40)*3 + var(55)


;Crouch to Stand
[StateDef 12]
type = S
physics = S
moveType = I
velSet = 0,0
sprPriority = 0

[State 0, Width]
type = Width
trigger1 = var(40)
edge = 0,0
player = -10,-10

[State 12, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && Anim = 10 + var(40)*3 + var(55)
value = 12 + var(40)*3 + var(55)
elem = 3 - AnimElemNo(0)

[State 12, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 12 + var(40)*3 + var(55)
value = 12 + var(40)*3 + var(55)

[State 12, End]
type = ChangeState
trigger1 = command = "holddown" && command != "holdup"
value = 10

[State 12, End]
type = ChangeState
trigger1 = Animelemtime(2)=3
value = 0

;====================<WALKING>====================
[StateDef 20]
type = S
physics = S
moveType = I
sprPriority = 0

[State 0, Width]
type = Width
trigger1 = var(40)
edge = 0,0
player = -10,-10

[State 20, VelSet]
type = VelSet
triggerall = !var(40)
trigger1 = command = "holdfwd"
x = const(velocity.walk.fwd.x)

[State 20, VelSet]
type = VelSet
triggerall = var(40)
trigger1 = command = "holdfwd"
x = 2

[State 20, VelSet]
type = VelSet
triggerall = !var(40)
trigger1 = command = "holdback"
x = const(velocity.walk.back.x)

[State 20, VelSet]
type = VelSet
triggerall = var(40)
trigger1 = command = "holdback"
x = -2

[State 20, ChangeAnim]
type = ChangeAnim
triggerAll = vel x > 0
trigger1 = Anim != 20 + var(40) * 2 + var(55) && Anim != 5 + var(40) * 2 + var(55)
trigger2 = Anim = 5 + var(40) * 2 + var(55) && AnimElemTime(1) >= 1
value = 20 + var(40) * 2 + var(55)

[State 20, ChangeAnim]
type = ChangeAnim
triggerAll = vel x < 0
trigger1 = Anim != 21 + var(40) * 2 + var(55) && Anim != 5 + var(40) * 2 + var(55)
trigger2 = Anim = 5 + var(40) * 2 + var(55) && AnimElemTime(1) >= 1
value = 21 + var(40) * 2 + var(55)



;====================<JUMPING>====================
;Jumping
[StateDef 40]
type = S
physics = S
moveType = I
anim = 40 + var(55)
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
value = ifElse(!vel x , 41 + var(55), ifElse(vel x > 0, 42 + var(55), 43 + var(55))) + 10 * (var(3) = [1,2])
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
anim = 47 + var(55)
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 52, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && (var(3) = 1 || var(3) = 2)
trigger1 = (PrevStateNo = [600,699])
value = 57 + var(55)

[State 52, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 52, CtrlSet]
type = CtrlSet
trigger1 = !Time && (PrevStateNo != [600,699])
trigger2 = Time = 1 && Anim != 57 + var(55)
value = 1

[State 52, ChangeState to Guarding]
type = ChangeState
trigger1 = ctrl && command = "holdback"
trigger1 = InGuardDist && (PrevStateNo != [600,699])
value = 120

[State 52, Assert: NoWalk]
type = AssertSpecial
trigger1 = Anim = 5
trigger1 = Anim = 10005
trigger1 = Anim = 7
trigger1 = Anim = 10007
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
trigger1 = Anim != 5 + var(40)*2
value = 5 + var(40)*2

[State 52, Turn]
type = Turn
trigger1 = Anim = 5 + var(40)*2 && AnimElem = 1

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
anim = 100 + var(55) + var(40)*2
ctrl = 0
sprPriority = 1

[State 100, VelSet]
type = VelSet
trigger1 = 1
x = 6 - var(40)*2

[State 100, Step Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 100, 1

[State 100, Step Sound]
type = PlaySnd
trigger1 = AnimElem = 7
value = 100, 0

[State 100, Jump]
type = ChangeState
trigger1 = !AILevel
trigger1 = command = "holdfwd" && command = "holdup"
value = 40

[State 100, Jump (AI)]
type = ChangeState
trigger1 = AILevel && Random < 25
value = 40

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
anim = 111
ctrl = 0
sprPriority = 1

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
anim = 105 + var(55)
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

[State 105, Vel]
type = velset
trigger1 = animelem = 2
x = const(velocity.run.back.x)
y = const(velocity.run.back.y)
[State 105, Accel]
type = veladd
trigger1 = animelemtime(2) >= 0
y = 0.6

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
anim = 106 + var(55)
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
anim = 110 + var(55)
ctrl = 0
sprPriority = 1

[State 110, Vel]
type = velmul
trigger1 = 1
x = 0.95
[State 110, Vel]
type = velset
trigger1 = animelem = 2
x = const(velocity.run.fwd.x)

[State 105, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 110,0

[State 105, Dust]
type = helper
trigger1 = animelem = 2
stateno = 8103
ID = 8100
name = "Dash Dust"
postype = p1
facing = 1
pausemovetime = 255
supermovetime = 255
ownpal = 1

[State 110, VarSet -> Running]
type = VarSet
trigger1 = !Time
sysvar(1) = 1

[State 110, VarSet -> Not Running]
type = VarSet
triggerAll = AnimElemTime(2) < 0
trigger1 = !AILevel && command != "holdfwd"
sysvar(1) = 0

[State 110, ChangeState to Running]
type = ChangeState
trigger1 = AnimElemTime(2) = 0 && sysvar(1)
value = 100

[State 110, End]
type = changestate
trigger1 = !animtime
value = 111


;Stop Dashing Forward
[StateDef 111]
type = S
physics = S
ctrl = 1
anim = 111 + var(55)
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
pos = ceil(16 * const(size.xScale)),0
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
anim = 700 + var(55)
ctrl = 0
velSet = 0,0
sprPriority = -2

[State 700, Voice]
type = PlaySnd
trigger1 = !Time
value = 4,0
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
value = ifElse((command = "x" || command = "y" || command = "z"), 225, 240)

[State 700, Attack (AI)]
type = ChangeState
trigger1 = AILevel && (Time = [15,25]) && NumEnemy
trigger1 = (EnemyNear, MoveType != A) && (P2BodyDist x = [-60,60]) && (P2Dist y >= -60)
value = ifElse(Random < 666, 225, 240)

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
anim = 710 + var(55)
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
trigger1 = !Time
value = 4, ifElse(Random < 500, 1, 0)
channel = 0

[State 710, Roll Sound]
type = PlaySnd
trigger1 = Time = 1
value = 110,0
channel = 1

[State 710, Vel]
type = velset
trigger1 = animelemtime(2) >= 0 && animelemtime(6) < 0
x = 6.95

[State 710, Vel]
type = velset
trigger1 = animelemtime(6) >= 0
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
anim = 715 + var(55)
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
trigger1 = !Time
value = 4, ifElse(Random < 500, 1, 0)
channel = 0

[State 715, Roll Sound]
type = PlaySnd
trigger1 = Time = 1
value = 110,0
channel = 1

[State 715, Velocity]
type = VelSet
trigger1 = AnimElem = 2
x = -4.5

[State 715, Velocity]
type = VelSet
trigger1 = AnimElem = 10
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
anim = 730 + var(55)
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
trigger1 = !Time
value = 730,1
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
anim = 731 + var(55)
velSet = 0,0
ctrl = 1

[State 731, StopSnd]
type = StopSnd
trigger1 = !Time
channel = 0

[State 730, Full Power Voice]
type = PlaySnd
trigger1 = !Time && Power >= const(data.power)
value = 900,1+var(40)
channel = 0
persistent = 0

[State 730, End]
type = ChangeState
trigger1 = animelemtime(3)=2
value = 0
ctrl = 1



;====================<ZERO COUNTER>====================
[StateDef 750]
type = S
physics = S
moveType = I
anim = 750 + var(55)
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
trigger1 = !Time
value = 4,2
channel = 0

[State 750, Zero Counter FX Helper]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8350
ID = 8350
name = "Zero Counter"
posType = P1
pos = ceil(-20 * const(size.xScale)), ceil(-57 * const(size.yScale))
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
value = ifElse(var(10) = 1, 450, Ifelse(var(40)=1, 1300, 1100))



;====================<PARRY>====================
;Standing Parry
[StateDef 760]
type = S
physics = S
moveType = I
anim = 760 + var(55)
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
trigger1= !Time
value = 4,2
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
pos = ceil(24 * const(size.xscale)), ceil(-65 * const(size.yscale))
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
anim = 761 + var(55)
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
trigger1 = !Time
value = 4,2
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
pos = ceil(27 * const(size.xscale)), ceil(-33 * const(size.yscale))
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
anim = 762 + var(55)
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
trigger1 = !Time
value = 4,2
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
pos = ceil(27 * const(size.xscale)), ceil(-74 * const(size.yscale))
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
anim = 763 + var(55)
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
anim = 900+ var(55)
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
trigger1 = Time = 4
value = 900,1+var(40)
channel = 0

[State 900, Custom Combo FX Helper]
type = Helper
trigger1 = Time = 4
helperType = Normal
stateNo = 8400
ID = 8400
name = "Custom Combo FX"
posType = P1
pos = ceil(0 * const(size.xscale)), ceil(-74 * const(size.yscale))
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
anim = 905+ var(55)
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
trigger1 = Time = 4
value = 900,1+var(40)
channel = 0

[State 905, Custom Combo FX Helper]
type = Helper
trigger1 = Time = 4
helperType = Normal
stateNo = 8400
ID = 8400
name = "Custom Combo Startup"
posType = P1
pos = ceil(10 * const(size.xscale)), ceil(-81 * const(size.yscale))
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
anim = 906+ var(55)
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
value = 4,1
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
value = 4,1
channel = 0

[State 5210, Recover Sound]
type = PlaySnd
trigger1 = !Time
value  = 5200,0

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
anim = (120 + (StateType = C) + (StateType = A) * 2)+var(55)

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
triggerall = !var(55)
trigger1 = anim != 130
value = 130

[State 130, ChangeAnim]
type = ChangeAnim
triggerall = var(55)
trigger1 = anim != 10130
value = 10130

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
triggerall = !var(55)
trigger1 = anim != 131
value = 131

[State 131, ChangeAnim]
type = ChangeAnim
triggerall = var(55)
trigger1 = anim != 10131
value = 10131

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
triggerall = !var(55)
trigger1 = anim != 132
value = 132

[State 132, ChangeAnim]
type = ChangeAnim
triggerall = var(55)
trigger1 = anim != 10132
value = 10132

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
value = (140 + (StateType = C) + (StateType = A) * 2)+var(55)

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
value = 150 + var(55)

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
anim = 150 + var(55)

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
value = 151 + var(55)

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
anim = 151 + var(55)

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
value = 152 + var(55)

[State 154, End]
type = ChangeState
trigger1 = HitShakeOver
value = 155


;Knocked Back while Guarding (Jumping)
[StateDef 155]
type = A
moveType = H
physics = N
anim = 152 + var(55)

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
anim = 170 + var(55)
velSet = 0,0

[State 170, Assert: RoundNotOver]
type = AssertSpecial
trigger1 = Time < 200
flag = RoundNotOver



;====================<DRAW GAME>====================
[StateDef 175]
type = S
ctrl = 0
velSet = 0,0

[State 175, ChangeState]
type = ChangeState
trigger1 = !Time
value = 170



;====================<CONTINUE?>====================
[StateDef 5500]
type = S
anim = 5500
velSet = 0,0
ctrl = 0

[State 5500, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5500



;====================<INITIALIZE>====================
[StateDef 5901]
type = S

[State 5901, Intro vs Guile/Leona]
type = ChangeState
triggerAll = NumEnemy
triggerAll = RoundNo = 1 || (!(Enemy, RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul))
trigger1 = Enemy, Name = "Guile" || Enemy, Name = "cvsguile" || (Enemy, Name = "Guile" && Enemy, AuthorName != "Jmorphman")
trigger2 = Enemy, Name = "Nash" && Enemy, AuthorName = "Phantom.of.the.Server" && Enemy, var(40) != 1
trigger3 = Enemy, Name = "Leona" || Enemy, Name = "Leona Heidern" || Enemy, Name = "zeroleona"
value = 192

[State 5901, Intro vs Bison]
type = ChangeState
triggerall = var(40)!=1
triggerAll = NumEnemy
triggerAll = RoundNo = 1 && (!(Enemy, RoundsExisted) && !(TeamMode = Simul) && !(Enemy, TeamMode = Simul))
trigger1 = Enemy, AuthorName = "PotS" && Enemy, Name = "Vega"
trigger2 = Enemy, AuthorName = "Froz" && Enemy, Name = "Vega"
value = 193

[State 5901, Turns Intro]
type = ChangeState
trigger1 = TeamMode = Turns
trigger1 = !RoundsExisted && RoundNo >= 2
value = 6900

[State 5901, Intro Decider]
type = ChangeState
trigger1 = RoundNo = 1
value = 190 + (Random % 2)*(var(40)=0)

[State 5901, End]
type = ChangeState
trigger1 = 1
value = 0



;====================<INTRO 1>====================
[StateDef 190]
type = S
physics = S
anim = 190-(var(40)=1)

[State 190, ChangeAnim]
type = ChangeAnim
trigger1 = var(55) && anim != 10190-(var(40)=1)
value = 10190-(var(40)=1)

[State 200, Voice]
type = PlaySnd
triggerall = var(40)
trigger1 = animelem = 1
value = 190, 0
channel = 0

[State 200, Voice]
type = PlaySnd
triggerall = var(40)
trigger1 = animelem = 10
value = 190, 1
channel = 0

[State 190, intro]
type = assertspecial
trigger1 = 1
flag = intro

[State 190, End]
type = changestate
trigger1 = animelemtime(10) = 6
value = 0



;====================<INTRO 2>====================
[StateDef 191]
type = S
physics = S
anim = 191

[State 191, ChangeAnim]
type = ChangeAnim
trigger1 = var(55) && anim != 10191
value = 10191

[State 191, intro]
type = assertspecial
trigger1 = 1
flag = intro

[State 191, End]
type = changestate
trigger1 = time = 121
value = 0



;====================<INTRO VS GUILE>====================
[StateDef 192]
type = S
physics = S
anim = 192
ctrl = 0

[State 192, ChangeAnim]
type = ChangeAnim
trigger1 = var(55) && anim != 10192
value = 10192

[State 192, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 192, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 7
value = 1,0
channel = 1

[State 192, End]
type = ChangeState
trigger1  = time = 107
value = 0



;====================<INTRO VS BISON>====================
[StateDef 193]
type = S
physics = S
anim = 193

[State 193, ChangeAnim]
type = ChangeAnim
trigger1 = var(55) && anim != 10193
value = 10193

[State 193, Intro]
type = assertspecial
trigger1 = 1
flag = intro
flag2 = nobardisplay

[State 193, Bound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 193, Harrier]
type = helper
trigger1 = !time
helpertype = normal
stateno = 6000
ID = 6000
name = "Harrier"
postype = p1
pos = 0, -216
size.xscale = 1
size.yscale = 1
ownpal = 1

[State 193, Pos]
type = posset
trigger1 = animelemtime(2) < 0
y = ceil(pos y -screenpos y)

[State 193, Vel]
type = velset
trigger1 = animelem = 2
y = 4

[State 193, Accel]
type = veladd
trigger1 = animelemtime(2) >= 0
y = 0.25

[State 193, End]
type = changestate
trigger1 = pos y >= -vel y
value = 194

;Landing
[StateDef 194]
type = S
physics = N
anim = 194 + var(55)
ctrl = 0
velset = 0,0

[State 194, Intro]
type = assertspecial
trigger1 = 1
flag = intro

[State 194, Pos]
type = posset
trigger1 = animelemtime(1) >= 0
y = 0

[State 194, Snd]
type = playsnd
trigger1 = animelem = 16
value = 183, 1
channel = 0

[State 194, Snd]
type = playsnd
trigger1 = !time
value = 52, 0

[State 194, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 194, End]
type = changestate
trigger1 = animelemtime(20) = 0
value = 0



;======================<JOKE INTRO>======================
[StateDef 197]
type = S
moveType = I
physics = N
anim = 197
ctrl = 0

[State 197, ChangeAnim]
type = ChangeAnim
trigger1 = var(55) && anim != 10197
value = 10197

[State 197, Intro]
type = assertspecial
trigger1 = 1
flag = intro

[State 197, Bound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 197, Pos]
type = posadd
trigger1 = !time
y = -640

[State 197, Vel]
type = velset
trigger1 = !time
y = 4

[State 197, Accel]
type = veladd
trigger1 = 1
y = 0.25

[State 197, Snd]
type = playsnd
trigger1 = time = 10
value = 11, 0
channel = 0

[State 197, End]
type = changestate
trigger1 = time && pos y >= -vel y
value = 197


;--- HIT GROUND ---
[Statedef 198]
type = L
physics = C
anim = 198
velset = 0, 0

[State 198, ChangeAnim]
type = ChangeAnim
trigger1 = var(55) && anim != 10198
value = 10198

[State 198, Intro]
type = assertspecial
trigger1 = 1
flag = intro

[State 198, Pos]
type = posset
trigger1 = !time
y = 0

[State 198, Snd]
type = playsnd
trigger1 = !time
value = 5000, 4
channel = 0

[State 198, Snd]
type = playsnd
trigger1 = !time
value = 0, 5100

[State 198, Dust]
type = explod
trigger1 = !time
anim = 8104
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 198, Shake]
type = envshake
trigger1 = !time
time = 16
ampl = 4

[State 198, statetype]
type = statetypeset
trigger1 = animelemtime(6) >= 0
statetype = S
physics = S

[State 198, End]
type = changestate
trigger1 = time = 62
value = 0



;====================<TURNS INTRO>====================
[StateDef 6900]
type = A
anim = 42
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

[State 6901, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 5
value = 195, 0 + Random % 2
channel = 0

[State 6901, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,0
channel = 1

[State 6901, End]
type = ChangeState
trigger1 = time = 67
value = 0



;====================<WIN POSE DECIDER>====================
[StateDef 180]
type = S

[State 180, Generic Victory Quote Charlie]
type = VictoryQuote
trigger1 = var(40)=0
value = 0 + Random % 12

[State 180, Generic Victory Quote Nash]
type = VictoryQuote
trigger1 = var(40)=1
value = 12 + Random % 5

[State 180, Victory Quote vs. Adon]
type = VictoryQuote
trigger1 = Enemy, Name = "Adon" || Enemy, Name = "cvsadon"
value = 17 + var(40)

[State 180, Victory Quote vs. Akuma]
type = VictoryQuote
trigger1 = Enemy, Name = "Akuma" || Enemy, Name = "cvsgouki" || Enemy, Name = "Gouki" || Enemy, Name = "Shin Akuma" || Enemy, Name = "Shin Gouki" || Enemy, Name = "ShinAkuma" || Enemy, Name = "ShinGouki" || Enemy, Name = "Pocket Shin Gouki"
value = 19 + var(40)

[State 180, Victory Quote vs. Balrog]
type = VictoryQuote
trigger1 = Enemy, Name = "Balrog" || Enemy, Name = "cvsbison"
value = 21 + var(40)

[State 180, Victory Quote vs. Blanka]
type = VictoryQuote
trigger1 = Enemy, Name = "Blanka" || Enemy, Name = "cvsblanka"
value = 23 + var(40)

[State 180, Victory Quote vs. Cammy]
type = VictoryQuote
trigger1 = Enemy, Name = "Cammy" || Enemy, Name = "cvscammy"
value = 25 + var(40)

[State 180, Victory Quote vs. Chun-Li]
type = VictoryQuote
trigger1 = Enemy, Name = "Chun-Li" || Enemy, Name = "cvschunli" || Enemy, Name = "Chun Li" || Enemy, Name = "ChunLi"
value = 27 + var(40)

[State 180, Victory Quote vs. Cody]
type = VictoryQuote
trigger1 = Enemy, Name = "Cody" || Enemy, Name = "cvscody"
value = 29 + var(40)

[State 180, Victory Quote vs. Dan]
type = VictoryQuote
trigger1 = Enemy, Name = "Dan" || Enemy, Name = "cvsdan" || Enemy, Name = "Dan Hibiki"
value = 31 + var(40)

[State 180, Victory Quote vs. Dee Jay]
type = VictoryQuote
trigger1 = Enemy, Name = "Dee Jay" || Enemy, Name = "DeeJay"
value = 33 + var(40)

[State 180, Victory Quote vs. Dhalsim]
type = VictoryQuote
trigger1 = Enemy, Name = "Dhalsim" || Enemy, Name = "cvsdhalsim" || Enemy, Name = "RajaaDhalsim"
value = 35 + var(40)

[State 180, Victory Quote vs. Dudley]
type = VictoryQuote
trigger1 = Enemy, Name = "Dudley"
value = 37 + var(40)

[State 180, Victory Quote vs. E. Honda]
type = VictoryQuote
trigger1 = Enemy, Name = "E. Honda" || Enemy, Name = "cvshonda" || Enemy, Name = "E.Honda" || Enemy, Name = "Honda"
value = 39 + var(40)

[State 180, Victory Quote vs. Fei Long]
type = VictoryQuote
trigger1 = Enemy, Name = "Fei Long" || Enemy, Name = "cvsfeilong" || Enemy, Name = "FeiLong" || Enemy, Name = "Fei-Long"
value = 41 + var(40)

[State 180, Victory Quote vs. Gen]
type = VictoryQuote
trigger1 = Enemy, Name = "Gen"
value = 43 + var(40)

[State 180, Victory Quote vs. Gouken]
type = VictoryQuote
trigger1 = Enemy, Name = "Gouken"
value = 45 + var(40)

[State 180, Victory Quote vs. Guile]
type = VictoryQuote
trigger1 = Enemy, Name = "Guile"
value = 47 + var(40)

[State 180, Victory Quote vs. Guy]
type = VictoryQuote
trigger1 = Enemy, Name = "Guy" || Enemy, Name = "cvsguy"
value = 49 + var(40)

[State 180, Victory Quote vs. Ibuki]
type = VictoryQuote
trigger1 = Enemy, Name = "Ibuki"
value = 51 + var(40)

[State 180, Victory Quote vs. Joe]
type = VictoryQuote
trigger1 = Enemy, Name = "Joe Talley" && Enemy, authorname = "Trololo"
value = 53 + var(40)

[State 180, Victory Quote vs. Ken]
type = VictoryQuote
trigger1 = Enemy, Name = "Ken" || Enemy, Name = "cvsken" || Enemy, Name = "Ken Masters"
value = 55 + var(40)

[State 180, Victory Quote vs. M. Bison]
type = VictoryQuote
trigger1 = Enemy, Name = "M. Bison" || Enemy, Name = "cvsvega" || (Enemy, Name = "Vega" && Enemy, AuthorName = "Phantom.of.the.Server") || Enemy, Name = "M.Bison" || Enemy, Name = "Bison"
value = 57 + var(40)

[State 180, Victory Quote vs. Rolento]
type = VictoryQuote
trigger1 = Enemy, Name = "Rolento" || Enemy, Name = "Rolento Schugerg" || Enemy, Name = "cvsrolento"
value = 59 + var(40)

[State 180, Victory Quote vs. Rose]
type = VictoryQuote
trigger1 = Enemy, Name = "Rose"
value = 61 + var(40)

[State 180, Victory Quote vs. Ryu]
type = VictoryQuote
trigger1 = (Enemy, Name = "Ryu" && !(Enemy, AuthorName = "Phantom.of.the.Server")) || (Enemy, Name = "cvsryu" && PalNo = [1,6]) || Enemy, Name = "cvsryu_normal"
trigger2 = (Enemy, Name = "Ryu" && Enemy, AuthorName = "Phantom.of.the.Server")
trigger2 = Enemy, var(1) != 2
value = 63 + var(40)

[State 180, Victory Quote vs. Sagat]
type = VictoryQuote
trigger1 = Enemy, Name = "Sagat" || Enemy, Name = "cvssagat" || Enemy, Name = "SagatMG"
value = 65 + var(40)

[State 180, Victory Quote vs. Vega]
type = VictoryQuote
trigger1 = Enemy, AuthorName != "Phantom.of.the.Server"
trigger1 = Enemy, Name = "Vega" || Enemy, Name = "cvsbalrog"
value = 67 + var(40)

[State 180, Victory Quote vs. Zangief]
type = VictoryQuote
trigger1 = Enemy, Name = "Zangief" || Enemy, Name = "cvszangief"
value = 69 + var(40)

[State 180, Win 1]
type = ChangeState
trigger1 = command = "holdstart"
value = 181

[State 180, Win 2]
type = ChangeState
triggerall = !var(40)=1
trigger1 = command = "holdx"
value = 182

[State 180, Win 3]
type = ChangeState
triggerall = !var(40)=1
trigger1 = command = "holdy" || command = "holdz"
value = 183

[State 180, Win 4]
type = ChangeState
triggerall = !var(40)=1
trigger1 = command = "holda" || command = "holdb" || command = "holdc"
value = 184

[State 180, Win Decider]
type = ChangeState
triggerall = !var(40)=1
trigger1 = 1
value = 181 + (Random % 4)

[State 180, Win Decider]
type = ChangeState
triggerall = var(40)=1
trigger1 = 1
value = 181

;====================<WIN 1>====================
[StateDef 181]
type = S
physics = S
anim = 181 + var(55)
ctrl = 0

[State 181, Assert]
type = assertspecial
trigger1 = time < 300
flag = roundnotover

[State 183, Snd]
type = playsnd
triggerall = var(40)=1
trigger1 = animelem = 11
value = 181, ifelse(random < 500, 1, 0)
channel = 0

[State 183, Snd]
type = playsnd
triggerall = var(40)!=1
trigger1 = animelem = 11
value = 183, ifelse(random < 500, 0, 1)
channel = 0

;====================<WIN 2>====================
[StateDef 182]
type = S
physics = S
anim = 182 + var(55)
ctrl = 0

[State 182, Assert]
type = assertspecial
trigger1 = time < 300
flag = roundnotover

[State 182, spr]
type = sprpriority
trigger1 = animelemtime(3) >= 0
value = -1

[State 182, Snd]
type = playsnd
trigger1 = animelem = 5
value = 182, 0
channel = 0



;====================<WIN 3>====================
[StateDef 183]
type = S
physics = S
anim = 183 + var(55)
ctrl = 0

[State 183, Assert]
type = assertspecial
trigger1 = time < 300
flag = roundnotover

[State 183, Snd]
type = playsnd
trigger1 = animelem = 12
value = 183, ifelse(random < 500, 1, 0)
channel = 0


;====================<WIN 4>====================
[StateDef 184]
type = S
physics = S
anim = 184 + var(55)
ctrl = 0

[State 184, Assert]
type = assertspecial
trigger1 = time < 300
flag = roundnotover

[State 184, Snd]
type = playsnd
trigger1 = animelem = 14
value = 183, ifelse(random < 500, 1, 0)
channel = 0



;==========<TAUNT 1>==========
[StateDef 195]
type = S
moveType = I
physics = S
anim = 195 + var(55)
velSet  = 0,0
sprPriority = 1
ctrl = 0

[State 195, Snd]
type = playsnd
trigger1 = animelem = 14
value = 183, ifelse(random < 500, 1, 0)
channel = 0

[State 195, Anim]
type = changeanim
trigger1 = !animelemtime(13)
trigger1 = command = "holdstart"
value = 195 + var(55)
elem = 10

[State 195, End]
type = changestate
trigger1 = animelemtime(24) = 1
value = 0
ctrl = 1

;==========<TAUNT 2>==========
[Statedef 196]
type = S
physics = S
movetype = I
anim = 196 + var(55)
velset = 0, 0
ctrl = 0
sprpriority = 1

[State 196, Snd]
type = playsnd
trigger1 = animelem = 2
value = 5, 6
channel = 0

[State 195, Snd]
type = playsnd
trigger1 = animelem = 10
value = 183, ifelse(random < 500, 1, 0)
channel = 0

[State 196, End]
type = changestate
trigger1 = time = 71
value = 0
ctrl = 1

;Tripper Shake
[Statedef 5070]
type    = A
movetype= H
physics = N
velset = 0,0

[State 5070, 1]
type = ChangeAnim
trigger1 = 1
value = 5070 + var(55)

[State 5070, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 5071

[State 5070, 3]
type = ForceFeedback
trigger1 = time = 0
time = 12
waveform = sinesquare
ampl = 140

;==========<TAUNT NASH>==========
[Statedef 199]
type = S
physics = S
movetype = I
anim = 199 + var(55)
velset = 0, 0
ctrl = 0
sprpriority = 1

[State 196, Snd]
type = playsnd
trigger1 = animelem = 7
value = 199, 0
channel = 0

[State 196, End]
type = changestate
trigger1 = time = 58
value = 0
ctrl = 1

;====================<CHEAP K.O.>====================
[StateDef 5950]
type = S
moveType = H
physics = S
anim = 5950 + var(55)
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
trigger1 = AnimElem = 1 && !Alive
value = 5950,var(40)

[State 5981, Hitting the Floor Sound]
type = PlaySnd
trigger1 = AnimElem = 7
value = F7,0

[State 5981, Hitting the Floor Explod]
type = Explod
trigger1 = AnimElem = 7
anim = F60
posType = P1
pos = 0,0
sprPriority = -3

[State 5950, End]
type = ChangeState
trigger1= !AnimTime
value = ifElse(Alive, 5110, 5150)


;---------------------------------------------------------------------------
; HITG_SHAKE
[Statedef 5000]
type    = S
movetype= H
physics = N
velset = 0,0

[State 5000, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = (ifelse((GetHitVar(groundtype) = 1),5000,5010))+ GetHitVar(animtype)

[State 5000, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030+(var(55))

[State 5000, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist((5047+GetHitVar(animtype))))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5000, 4]
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5000, 5]
type = StateTypeSet
trigger1 = Time = 0
trigger1 = GetHitVar(yvel) != 0 || GetHitVar(fall)
trigger2 = Pos Y != 0
statetype = a

[State 5000, 6]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0 && !GetHitVar(fall)
value = 5001 ;HITG_SLIDE

[State 5000, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 5030

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



;===========================================================================
;===============================<-2 STATES>=================================
;===========================================================================
[StateDef -2]

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
pos = ceil(ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(35), ceil(P2Dist x), var(35))) * const(size.xScale)), ceil(var(36) * const(size.yScale))
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
pos = ceil(ifElse(P2Dist x < 0, 0, ifElse(P2Dist x < var(35), ceil(P2Dist x), var(35))) * const(size.xScale)), ceil(var(36) * const(size.yScale))
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
trigger1 = StateNo = 250
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

[State -2, Back Charge Increment]
type = VarAdd
trigger1 = !AILevel
trigger1 = P2Dist x >= 0 && command = "holdback"
trigger2 = !AILevel
trigger2 = P2Dist x < 0 && command = "holdfwd"
trigger3 = AILevel
var(47) = 1

[State -2, Back Charge Reset]
type = VarSet
trigger1 = !AILevel
trigger1 = P2Dist x >= 0 && command != "holdback"
trigger2 = !AILevel
trigger2 = P2Dist x < 0 && command != "holdfwd"
trigger3 = AILevel
trigger3 = StateNo = 0 || (StateNo = 20 && vel x > 0) || (StateNo = [760,762])
trigger4 = AILevel
trigger4 = (StateNo = 40 && sysvar(1) != -1)
trigger5 = AILevel
trigger5 = (StateNo = [1000, 4999]) && Time = 1
var(47) = 0

[State -2, Back Charge Buffer Activation]
type = VarSet
trigger1 = var(47) >= 45
var(48) = 32

[State -2, Back Charge Buffer Decrement]
type = VarAdd
trigger1 = var(47) < 45 && var(48) > 0
var(48) = -1

[State -2, Down Charge Increment]
type = VarAdd
trigger1 = !AIlevel
trigger1 = command = "holddown"
trigger2 = AIlevel
var(49) = 1

[State -2, Down Charge Reset]
type = VarSet
trigger1 = !AILevel
trigger1 = command != "holddown"
trigger3 = AILevel
trigger3 = StateNo = 0 || StateNo = 20 || (StateNo = 40 && Time = 1) || StateNo = 760
trigger4 = AILevel
trigger4 = (StateNo = [1000,4999]) && Time = 1
trigger5 = AILevel
trigger5 = (StateNo = [120,155]) && StateType != C
var(49) = 0

[State -2, Down Charge Buffer Activation]
type = VarSet
trigger1 = var(49) >= 45
var(50) = 32

[State -2, Down Charge Buffer Decrement]
type = VarAdd
trigger1 = var(49) < 45 && var(50) > 0
var(50) = -1

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
text = "\nBy Trololo"
ignoreHitPause = 1

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
trigger1 = StateNo != 3200
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
trigger4 = Helper(1055), StateNo = 1075
trigger5 = NumHelper(3205)
trigger5 = Helper(3205), StateNo = 3205
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
trigger4 = StateNo = 200 +var(40)*2
trigger5 = StateNo = 215 -var(40)*5 && AnimElemTime(4) < 0
trigger6 = StateNo = 225 -var(40)*5 && AnimElemTime(5) < 0
trigger7 = StateNo = 230
trigger8 = StateNo = 400
trigger9 = StateNo = 410 && AnimElemTime(5) < 0
trigger10 = StateNo = 430
trigger11 = StateNo = 440
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
trigger4 = StateNo = 200
trigger5 = StateNo = 210 && AnimElemTime(4) < 0
trigger6 = StateNo = 215 && AnimElemTime(4) < 0
trigger7 = StateNo = 220 && AnimElemTime(5) < 0
trigger8 = StateNo = 225 && AnimElemTime(5) < 0
trigger9 = StateNo = 230
trigger10 = StateNo = 240 && AnimElemTime(4) < 0
trigger11 = StateNo = 245 && AnimElemTime(5) < 0
trigger12 = StateNo = 400
trigger13 = StateNo = 410
trigger14 = StateNo = 420 && AnimElemTime(4) < 0
trigger15 = StateNo = 430
trigger16 = StateNo = 440
trigger17 = StateNo = 450 && AnimElemTime(4) < 0
trigger18 = (StateNo = [1000,1030]) && (AnimElemTime(5) = [1,8])
var(7) = 1
ignoreHitPause = 1

[State -3, Hyper Cancel Reset]
type = VarSet
trigger1 = 1
var(8) = 0
ignoreHitPause = 1

[State -3, Hyper Cancel Reset]
type = VarSet
trigger1 = StateNo = 3100 && AnimElemTime(3) >= 0 && AnimElemTime(24) < 0 && MoveContact
trigger2 = StateNo = 3200 && AnimElemTime(3) >= 0 && AnimElemTime(21) < 0 && MoveContact
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
triggerAll = (MoveType = I && ctrl) || (StateNo = [760, 762]) || StateNo = 5120
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
trigger1 = (StateNo = 3000 || StateNo = 3100) && Time = 43
trigger2 = StateNo = 3200 && Time = 43
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
trigger2 = StateNo = 3150 && Time = 43
trigger3 = StateNo = 3350 && Time = 43
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
trigger1 = StateNo = 3300 && Time = 43
trigger2 = StateNo = 3800 && Time = 43
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
edge = 8, 0
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
value = 5000,(Random % 3)
channel = 0
ignoreHitPause = 1

[State -3, Get Hit Sound]
type = PlaySnd
triggerAll = Alive && Time = 1
trigger1 = (StateNo = 5000 || StateNo = 5010) && NumEnemy
trigger1 = GetHitVar(fall) || (EnemyNear, HitDefAttr = SCA,SA,HA)
trigger2 = (StateNo = 5020 || StateNo = 5070 || StateNo = 5080)
trigger3 = (StateNo = 5050 || StateNo = 5100) && (PrevStateNo != [5000,5199])
value = 5000,(Random % 3)
channel = 0
ignoreHitPause = 1

[State -3, Stop Guarding Voice]
type = StopSnd
trigger1 = StateNo = [120,155]
channel = 0

[State -3, Cheap KO]
type = ChangeState
trigger1 = !Alive && (StateNo = [5000,5010])
trigger1 = (PrevStateNo = [130,131]) || (PrevStateNo = [140,141]) || (PrevStateNo = [150,153])
value = 5950
ignoreHitPause = 1

[State -3, Assert: NoKOsnd (Cheap KO)]
type = AssertSpecial
trigger1 = (StateNo = [5000,5010])
trigger1 = (PrevStateNo = [130,131]) || (PrevStateNo = [140,141]) || (PrevStateNo=[150,153])
flag = NoKOsnd
ignoreHitPause = 1

[State -3, Custom Combo Finish]
type = Helper
triggerAll = WinKO && var(20)
triggerAll = RoundState = 3 && !NumHelper(8600)
trigger1 = MoveHit = [1,4]
trigger2 = NumHelper(1005)
trigger2 = (Helper(1005), StateNo = [1005,1007]) && (Helper(1005), var(18))
trigger3 = StateNo = 810 && (AnimElemTime(5) = [0,1])
trigger4 = StateNo = 820 && (AnimElemTime(6) = [0,1])
trigger5 = StateNo = 860 && (AnimElemTime(3) = [0,1])
trigger6 = StateNo = 871 && (AnimElemTime(1) = [0,1])
helperType = Normal
stateNo = 8600
ID = 8600 + 0 * (var(23) := 900)
name = "Super Finish"
posType = left
pos = 160, -120
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
trigger2 = (StateNo = [3000,3099])
trigger2 = var(23) := 3000
trigger3 = (StateNo = [3100,3199])
trigger3 = var(23) := 3100
trigger4 = (StateNo = [3200,3299])
trigger4 = var(23) := 3200
trigger5 = (StateNo = [3300,3399])
trigger5 = var(23) := 3300
trigger6 = (StateNo = [3400,3499])
trigger6 = var(23) := 3400
trigger7 = (StateNo = [3800,3899])
trigger7 = var(23) := 3800
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

;======================================================
[State -3, VarSet: Direction]
type = VarSet
trigger1 = 1
var(55) = IfElse(Facing = -1,10000,0)

[State -3, ChangeAnim: Stance and Turning]
type = ChangeAnim
triggerall = stateno = 0
trigger1 = Anim != Ifelse(var(40), 2, 0) + var(55) && (Anim != 5 && Anim != 10005 && Anim != 7 && Anim != 10007)
value = Ifelse(var(40), 2, 0) + var(55)

[State -3, ChangeAnim: Stance and Turning]
type = ChangeAnim
trigger1 = Anim = 5 + var(40)*2 && AnimTime = 0
value = Ifelse(var(40), 2, 0)

[State -3, ChangeAnim: Stance and Turning]
type = ChangeAnim
trigger1 = Anim = 10005 + var(40)*2 && AnimTime = 0
value = Ifelse(var(40), 2, 0) + var(55)

[State -3, ChangeAnim: Turning]
type = ChangeAnim
trigger1 = anim = 5 && var(40)
value = 7

[State -3, ChangeAnim: Crouching Turning]
type = ChangeAnim
triggerall = Facing = -1
trigger1 = Anim = 5
value = 10005

[State -3, ChangeAnim: Crouching Turning]
type = ChangeAnim
triggerall = Facing = -1
trigger1 = Anim = 6
value = 10006

[State -3, ChangeAnim: Turning]
type = ChangeAnim
trigger1 = anim = 6 && var(40)
value = 8

[State -3, ChangeAnim: Crouching Turning]
type = ChangeAnim
triggerall = Facing = -1
trigger1 = Anim = 7
value = 10007

[State -3, ChangeAnim: Crouching Turning]
type = ChangeAnim
triggerall = Facing = -1
trigger1 = Anim = 8
value = 10008

[State -3, ChangeAnim: Crouching Turning]
type = ChangeAnim
trigger1 = anim = 6 && var(40)
value = 6 + var(40)*2

[State -3, ChangeAnim: Crouching Turning]
type = ChangeAnim
trigger1 = Anim = 6 && Facing = -1
value = 10006

[State -3, ChangeAnim: Crouching Turning]
type = ChangeAnim
trigger1 = Anim = 8 && Facing = -1
value = 10008

[State -3, ChangeAnim: Damage High]
type = ChangeAnim
trigger1 = Anim = 5000 && Facing = -1
value = 15000
[State -3, ChangeAnim: Damage High]
type = ChangeAnim
trigger1 = Anim = 5001 && Facing = -1
value = 15001
[State -3, ChangeAnim: Damage High]
type = ChangeAnim
trigger1 = Anim = 5002 && Facing = -1
value = 15002
[State -3, ChangeAnim: Damage High]
type = ChangeAnim
trigger1 = Anim = 5005 && Facing = -1
value = 15005
[State -3, ChangeAnim: Damage High]
type = ChangeAnim
trigger1 = Anim = 5006 && Facing = -1
value = 15006
[State -3, ChangeAnim: Damage High]
type = ChangeAnim
trigger1 = Anim = 5007 && Facing = -1
value = 15007

[State -3, ChangeAnim: Damage Low]
type = ChangeAnim
trigger1 = Anim = 5010 && Facing = -1
value = 15010
[State -3, ChangeAnim: Damage Low]
type = ChangeAnim
trigger1 = Anim = 5011 && Facing = -1
value = 15011
[State -3, ChangeAnim: Damage Low]
type = ChangeAnim
trigger1 = Anim = 5012 && Facing = -1
value = 15012
[State -3, ChangeAnim: Damage Low]
type = ChangeAnim
trigger1 = Anim = 5015 && Facing = -1
value = 15015
[State -3, ChangeAnim: Damage Low]
type = ChangeAnim
trigger1 = Anim = 5016 && Facing = -1
value = 15016
[State -3, ChangeAnim: Damage Low]
type = ChangeAnim
trigger1 = Anim = 5017 && Facing = -1
value = 15017

[State -3, ChangeAnim: Damage Crouching]
type = ChangeAnim
trigger1 = Anim = 5020 && Facing = -1
value = 15020
[State -3, ChangeAnim: Damage Crouching]
type = ChangeAnim
trigger1 = Anim = 5021 && Facing = -1
value = 15021
[State -3, ChangeAnim: Damage Crouching]
type = ChangeAnim
trigger1 = Anim = 5022 && Facing = -1
value = 15022
[State -3, ChangeAnim: Damage Crouching]
type = ChangeAnim
trigger1 = Anim = 5025 && Facing = -1
value = 15025
[State -3, ChangeAnim: Damage Crouching]
type = ChangeAnim
trigger1 = Anim = 5026 && Facing = -1
value = 15026
[State -3, ChangeAnim: Damage Crouching]
type = ChangeAnim
trigger1 = Anim = 5027 && Facing = -1
value = 15027

[State -3, ChangeAnim: Ground -> Air Hit Transition]
type = ChangeAnim
trigger1 = Anim = 5035 && Facing = -1
value = 15035
ignorehitpause = 1

[State -3, ChangeAnim: Air Recover]
type = ChangeAnim
trigger1 = Anim = 5040 && Facing = -1
value = 15040

[State -3, ChangeAnim: Air Fall (Going Up)]
type = ChangeAnim
trigger1 = Anim = 5050 && Facing = -1
value = 15050
ignorehitpause = 1
[State -3, ChangeAnim: Air Fall (Up Type, Going Up)]
type = ChangeAnim
trigger1 = Anim = 5051 && Facing = -1
value = 15051
ignorehitpause = 1
[State -3, ChangeAnim: Diagonal Up]
type = ChangeAnim
trigger1 = Anim = 5052 && Facing = -1
value = 15052
ignorehitpause = 1

[State -3, ChangeAnim: Air Fall (Up Type, Coming Down)]
type = ChangeAnim
trigger1 = Anim = 5061 && Facing = -1
value = 15061
ignorehitpause = 1

[State -3, ChangeAnim: Lie Down Hit (Stay Down)]
type = ChangeAnim
trigger1 = Anim = 5080 && Facing = -1
value = 15080
ignorehitpause = 1
[State -3, ChangeAnim: Lie Down Hit (Hit Up Into Air)]
type = ChangeAnim
trigger1 = Anim = 5090 && Facing = -1
value = 15090
ignorehitpause = 1

[State -3, ChangeAnim: Hit Ground From Fall]
type = ChangeAnim
trigger1 = Anim = 5100 && Facing = -1
value = 15100
ignorehitpause = 1
[State -3, ChangeAnim: Lie Down]
type = ChangeAnim
trigger1 = Anim = 5110 && Facing = -1
value = 15110
ignorehitpause = 1
[State -3, ChangeAnim: Get up from LieDown]
type = ChangeAnim
trigger1 = Anim = 5120 && Facing = -1
value = 15120
ignorehitpause = 1
[State -3, ChangeAnim: Lie Dead]
type = ChangeAnim
trigger1 = Anim = 5150 && Facing = -1
value = 15150
ignorehitpause = 1
[State -3, ChangeAnim: Bounce Into Air]
type = ChangeAnim
trigger1 = Anim = 5160 && Facing = -1
value = 15160
ignorehitpause = 1
[State -3, ChangeAnim: Hit Ground From Bounce]
type = ChangeAnim
trigger1 = Anim = 5170 && Facing = -1
value = 15170
ignorehitpause = 1

[State -3, ChangeAnim: Fall Recovery Near Ground]
type = ChangeAnim
trigger1 = Anim = 5200 && Facing = -1
value = 15200
ignorehitpause = 1
[State -3, ChangeAnim: Fall Recovery In Mid-Air]
type = ChangeAnim
trigger1 = Anim = 5210 && Facing = -1
value = 15210
ignorehitpause = 1

[State -3, ChangeAnim: Vertical Spinning (Going Up)]
type = ChangeAnim
trigger1 = Anim = 5250 && Facing = -1
value = 15250
ignorehitpause = 1
[State -3, ChangeAnim: Vertical Spinning (Going Down)]
type = ChangeAnim
trigger1 = Anim = 5251 && Facing = -1
value = 15251
ignorehitpause = 1

[State -3, ChangeAnim: Dizzy]
type = ChangeAnim
trigger1 = Anim = 5300
value = 5300 + var(55)
ignorehitpause = 1

[State -3, ChangeAnim: Standing Guard Crush]
type = ChangeAnim
trigger1 = Anim = 5910 && Facing = -1
value = 15910
ignorehitpause = 1
[State -3, ChangeAnim: Croushing Guard Crush]
type = ChangeAnim
trigger1 = Anim = 5920 && Facing = -1
value = 15920
ignorehitpause = 1
[State -3, ChangeAnim: Jumping Guard Crush]
type = ChangeAnim
trigger1 = Anim = 5930 && Facing = -1
value = 15930
ignorehitpause = 1

[State -3, ChangeAnim: Throw Escape]
type = ChangeAnim
trigger1 = Anim = 5940 && Facing = -1
value = 15940
ignorehitpause = 1
[State -3, ChangeAnim: Throw Escaped From]
type = ChangeAnim
trigger1 = Anim = 5945 && Facing = -1
value = 15945
ignorehitpause = 1

[State -3, ChangeAnim: Shocked]
type = ChangeAnim
trigger1 = Anim = 7696
value = 7696 + var(55)
ignorehitpause = 1
[State -3, ChangeAnim: Shocked]
type = ChangeAnim
trigger1 = Anim = 9010
value = 9010 + var(55)
ignorehitpause = 1

[State -3, ChangeState: Standing]
type = ChangeState
trigger1 = stateno = 5120 && animelemtime(7)=2
value = 0
ctrl = 1