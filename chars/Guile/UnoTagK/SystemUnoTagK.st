; Common state file
;
; System variables usage
; ----------------------
; Var name    Type   Purpose
; --------    ----   -------
; sysvar(0)   Temp   Set by state 5081 (HITL_SLIDE) to 1 to prevent
;                    showing ground hit frame in state 5110 (HIT_LIEDOWN).
;                    Used by guarding states.
; sysvar(1)   Temp   Used by state 40 (Jump Start) amd 45 (Air Jump Start)
;                    to keep track of which way to jump.
;                    Used by state 5100 and 5110 to remember downward
;                    velocity of player just before hitting the ground.
;                    Used in state 5080 for storing the anim # to display.



;---------------------- Integer variable list ----------------------

;var(0) Bike Reset := -3, 193
;var(1) Sky Step Check := -1, 60
;var(2) Jump Velocity := 40
;var(3) Run Cancel Check := 0, 40, 100
;var(4) Strength Var 1 := 1510
;var(5) Strength Var 2 := 0, 52, 645, 800, 1000, 1004, 1010, 1011, 1012, 1050, 1060, 1070, 1080, 1100, 1103, 1110, 1112, 1200, 1206, 1210, 1220, 1230, 1300, 1310, 1400, 1410, 1500, 1510, 3000, 3100, 3200, 3204, 3300, 3400, 3420, 4100, 6000, 6002, 6004, 6010, 6011, 6012, 6020, 6026, 6040, 6050
;var(5) Zoom Helper Action State := 9500, 9600, 9610, 9680, 9700, 9701, 9710, 9711
;var(6) Counter Check 1 := -2, 6000, 6010, 6011, 6012, 6020, 6021, 6022, 6023, 6024, 6026, 6040, 6041, 6042, 6043, 6044, 6050, 6160
;var(6) Zoom Helper Counter For Camera Action State := 9500, 9600, 9610, 9680, 9700, 9701, 9710, 9711
;var(7) Counter Check 2 := -2
;var(7) Zoom Helper Camera Counter For Shake := 9500, 9600, 9610, 9680, 9700, 9701, 9710, 9711
;var(8) Counter Check 3 := -2
;var(8) Zoom Helper Focus Point X := 9600, 9610, 9680, 9700, 9701, 9710, 9711
;var(9) Spark Randomizer 1 := 6265, 6266, 6267, 7521
;var(9) Zoom Helper Focus Point Y := 9600, 9610, 9680, 9700, 9701, 9710, 9711
;var(10) Spark Randomizer 2 := 6267, 7521
;var(10) Zoom Helper Parent Strength Var := 9500, 9600, 9610, 9680, 9700, 9701, 9710, 9711
;var(11) BG Fade Control 1 := 7950, 9000, 9001, 9010, 9020, 9030, 9040, 9130, 9131
;var(11) Zoom Helper (Zoom In/Fade In Time) := 9500, 9600, 9610, 9680, 9700, 9701, 9710, 9711
;var(12) BG Fade Control 2 := 9000, 9001, 9010, 9020, 9030, 9040, 9130, 9131
;var(12) Zoom Helper (Zoom Out/Fade Out Time) := 9500, 9600, 9610, 9680, 9700, 9701, 9710, 9711
;var(13) Air Sonic Flash Confirm := 1700, 1710
;var(14) :=
;var(15) KO Helper Check := -2, 7900, 7925, 7950
;var(16) Special Projectile Hit Confirm := 6010, 6011, 6012
;var(17) Normal Cancel Confirm 1 := -1
;var(18) Normal Cancel Confirm 2:= -1
;var(19) Special Cancel Confirm := -1
;var(20) :=
;var(21) KO Sound := -2
;var(22) AI Projectile Detection 1 := 33333333
;var(23) AI Projectile Detection 2 := 33333333
;var(24) :=
;var(25) Super Projectile Hit Confirm := 6020, 6021, 6022, 6023, 6024, 6026, 6040, 6041, 6042, 6043, 6044
;var(26) :=
;var(27) :=
;var(28) :=
;var(29) :=
;var(30) :=
;var(31) :=
;var(32) :=
;var(33) :=
;var(34) Throw escape check := 810, 820
;var(35) XCostume 1
;var(36) Xcostume 2
;var(37) Xcostume 3
;var(38) Xcostume 4
;var(39) KO Velocity Cancel := -2
;var(40) Zoom Helper ID := 9500, 9600, 9610, 9680, 9700, 9701, 9710, 9711
;var(41) AI Spam Blocker := -2
;var(42) Uno Tag Hit Confirm := -2
;var(43) Uno Tag Distance Check := -2
;var(44) Uno Tag State/Helper Confirm := -2
;var(45) Uno Tag Landing Confirm := -2
;var(46) :=
;var(47) Explodsive Buffer System := -1
;var(48) Explodsive Buffer System := -1
;var(49) Explodsive Buffer System := -1
;var(50) Explodsive Buffer System := -1
;var(51) :=
;var(52) :=
;var(53) Super Finish Detection := -2
;var(54) Air Juggle Counter := -2
;var(55) Sonic Boom/Blade Juggle := 6000
;var(56) := Unused
;var(57) := Unused
;var(58) := Unused
;var(59) AI Level := -1

;---------------------- Float variable list ----------------------

;fvar(1) Damage Scaling A1 := -2
;fvar(2) Damage Scaling A2 := -2
;fvar(3) Damage Scaling A3 := -2
;fvar(4) Damage Scaling A4 := -2
;fvar(5) Damage Scaling A5 := -2
;fvar(5) Zoom Helper Step In Values := 9500, 9600, 9610, 9680, 9700, 9701, 9710, 9711
;fvar(6) Damage Scaling B1 := 1073, 1083, 1430, 1440, 6000, 6002, 6004, 6010, 6011, 6012, 6020, 6021, 6022, 6023, 6024, 6026, 6029, 6030, 6040, 6041, 6042, 6043, 6044, 6050, 6070, 6160
;fvar(7) Damage Scaling B2 := 1073, 1083, 1430, 1440, 6000, 6002, 6004, 6010, 6011, 6012, 6020, 6021, 6022, 6023, 6024, 6026, 6029, 6030, 6040, 6041, 6042, 6043, 6044, 6050, 6070, 6160
;fvar(8) Damage Scaling B3 := 1073, 1083, 1430, 1440, 6000, 6002, 6004, 6010, 6011, 6012, 6020, 6021, 6022, 6023, 6024, 6026, 6029, 6030, 6040, 6041, 6042, 6043, 6044, 6050, 6070, 6160
;fvar(9) Damage Scaling B4 := 1073, 1083, 1430, 1440, 6000, 6002, 6004, 6010, 6011, 6012, 6020, 6021, 6022, 6023, 6024, 6026, 6029, 6030, 6040, 6041, 6042, 6043, 6044, 6050, 6070, 6160
;fvar(10) Damage Scaling B5 := 1073, 1083, 1430, 1440, 6000, 6002, 6004, 6010, 6011, 6012, 6020, 6021, 6022, 6023, 6024, 6026, 6029, 6030, 6040, 6041, 6042, 6043, 6044, 6050, 6070, 6160
;fvar(13) Zoom Helper (Target Zoom Level-1) := 9500, 9600, 9610, 9680, 9700, 9701, 9710, 9711
;fvar(15) Zoom Helper (Zoom Out Step Values) := 9500, 9600, 9610, 9680, 9700, 9701, 9710, 9711
;fvar(21) Zoom Helper (1-Camera Zoom Level) := 9500, 9600, 9610, 9680, 9700, 9701, 9710, 9711
;fvar(22) Zoom Helper (Final Value Of Relative Zoom Factor) := 9500, 9600, 9610, 9680, 9700, 9701, 9710, 9711
;fvar(23) Zoom Helper (Zoom State Snapshot) := 9600, 9610, 9680, 9700, 9701, 9710, 9711

;--------------------------------------------------------------------------------------------------------------------------------------------
;STAND
[StateDef 0]
type = S
physics = S
movetype = I
velset = 0,0
sprpriority = 1
anim = 0

[State 0, VarSet]
type = VarSet
trigger1 = Time = 1
var(3) = 1

[State 0, VarSet]
type = VarSet
trigger1 = !Time
var(5) = 0

[State 0, NotHitBy]
type = NotHitBy
trigger1 = RoundState != 2
value = SCA
time = 1

[State 0, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 0, ChangeState]
type = ChangeState
triggerall = AILevel
triggerall = NumEnemy
triggerall = EnemyNear,StateType = A
triggerall = P2Life > 0
triggerall = P2Dist X <= 40
triggerall = StateNo != 10
trigger1 = NumTarget(1300)
trigger2 = NumTarget(1301)
trigger3 = NumTarget(1302)
trigger4 = NumTarget(1411)
value = 10
ctrl = 1
persistent = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = !Alive
value = 5050

[State 0, ChangeState]
type = ChangeState
trigger1 = Pos Y < 0
value = 50

[State 0, DestroySelf]
type = DestroySelf
trigger1 = IsHelper
ignorehitpause = 1
persistent = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;STAND TO CROUCH
[StateDef 10]
type = C
physics = C
MoveType = I
velset = 0,0
sprpriority = 0

[State 10, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 10
value = 10

[State 10, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && Anim = 12
value = 10
elem = 3-AnimElemNo(0)

[State 10, ChangeState]
type = ChangeState
triggerall = AILevel
triggerall = NumEnemy
triggerall = EnemyNear,StateType = A
triggerall = P2Life > 0
triggerall = P2Dist X <= 40
triggerall = StateNo != 11
trigger1 = NumTarget(1300)
trigger2 = NumTarget(1301)
trigger3 = NumTarget(1302)
trigger4 = NumTarget(1411)
value = 11
ctrl = 1
persistent = 0

[State 10, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 11

;--------------------------------------------------------------------------------------------------------------------------------------------
;CROUCH
[StateDef 11]
type = C
physics = C
MoveType = I
anim = 11
velset = 0,0
sprpriority = 0

[State 11, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 6 && !AnimTime
value = 11

;--------------------------------------------------------------------------------------------------------------------------------------------
;CROUCH TO STAND
[StateDef 12]
type = S
physics = S
MoveType = I
velset = 0,0
sprpriority = 0

[State 12, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && Anim = 10
value = 12
elem = 3-AnimElemNo(0)

[State 12, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 12
value = 12

[State 12, ChangeState]
type = ChangeState
trigger1 = Command = "holddown" && Command != "holdup"
value = 10

[State 12, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0

;--------------------------------------------------------------------------------------------------------------------------------------------
;WALK
[StateDef 20]
type = S
physics = S
MoveType = I
sprpriority = 0

[State 20, ChangeAnim]
type = ChangeAnim
triggerall = Vel X > 0
trigger1 = Anim != 20 && Anim != 5
trigger2 = Anim = 5 && AnimElemTime(1) >= 1
value = 20

[State 20, ChangeAnim]
type = ChangeAnim
triggerall = Vel X < 0
trigger1 = Anim != 21 && Anim != 5
trigger2 = Anim = 5 && AnimElemTime(1) >= 1
value = 21

[State 20, VelSet]
type = VelSet
trigger1 = Command = "holdfwd"
x = Const(Velocity.Walk.Fwd.X)

[State 20, VelSet]
type = VelSet
trigger1 = Command = "holdback"
x = Const(Velocity.Walk.Back.X)

[State 20, ChangeState]
type = ChangeState
trigger1 = AILevel
trigger1 = NumEnemy
trigger1 = P2BodyDist X <= 30
value = 0
ctrl = 1

[State 20, ChangeState]
type = ChangeState
trigger1 = AILevel
trigger1 = NumEnemy
trigger1 = P2BodyDist X > 70
trigger1 = BackEdgeDist > 50
trigger1 = Anim = 20
value = 100
ctrl = 0

;--------------------------------------------------------------------------------------------------------------------------------------------
;JUMP START
[StateDef 40]
type = S
physics = S
MoveType = I
anim = 40
ctrl = 0
sprpriority = 1
facep2 = 1

[State 40, VarSet]
type = VarSet
trigger1 = !Time
v = 3    ;fv = 10
value = 1

[State 40, Helper]
type = Helper
trigger1 = !AnimTime
name = "Dust FX"
ID = 7000
StateNo = 7000
postype = P1    ;p2,front,back,left,right
facing = 1
ownpal = 1

[State 40, VarSet]
type = VarSet
trigger1 = !AILevel
trigger1 = !Time
var(2) = Cond(Command = "highjump",3,1)

[State 40, VarSet]
type = VarSet
trigger1 = AILevel
trigger1 = NumEnemy
trigger1 = Abs(P2BodyDist X) <= 120
trigger1 = !Time
var(2) = 1

[State 40, VarSet]
type = VarSet
trigger1 = AILevel
trigger1 = NumEnemy
trigger1 = Abs(P2BodyDist X) > 120
trigger1 = !Time
var(2) = 3

[State 40, VarSet]
type = VarSet
trigger1 = !AILevel
trigger1 = !Time
sysvar(1) = Cond(Command = "holdfwd",1,Cond(Command = "holdback",-1,0))

[State 40, VarSet]
type = VarSet
trigger1 = AILevel
trigger1 = !Time
sysvar(1) = 0

[State 40, VarAdd]
type = VarAdd
trigger1 = AILevel
trigger1 = sysvar(1) < 0
sysvar(1) = 1
persistent = 0

[State 40, VarSet]
type = VarSet
triggerall = !Time
triggerall = AILevel
;triggerall = !NumTarget(1311)
trigger1 = NumEnemy
trigger1 = P2BodyDist X = [0,10]
sysvar(1) = 0

[State 40, VarSet]
type = VarSet
triggerall = !Time
triggerall = AILevel
triggerall = NumEnemy
triggerall = P2BodyDist X = [50,500]
triggerall = FrontEdgeDist >= 80
;triggerall = !NumTarget(1112)
trigger1 = NumTarget
trigger1 = Target,MoveType = H
trigger2 = EnemyNear,MoveType = I
;trigger3 = NumTarget(1311)
sysvar(1) = 1

[State 40, VarSet]
type = VarSet
trigger1 = !AILevel
trigger1 = Var(2) != 3 && Command != "holdup"
var(2) = 2

[State 40, VarSet]
type = VarSet
trigger1 = AILevel
trigger1 = NumEnemy
trigger1 = EnemyNear,StateType != A
trigger1 = P2BodyDist X = [0,40]
trigger1 = Var(2) != 3
var(2) = 2

[State 40, VelSet]
type = VelSet
trigger1 = !AnimTime && Var(2) != 3
x = Cond(SysVar(1) = 0,Const(Velocity.Jump.Neu.X),Cond(SysVar(1) = 1,Const(Velocity.Jump.Fwd.X),Const(Velocity.Jump.Back.X)))
y = Cond(Var(2) = 2,.75,1)*Const(Velocity.Jump.Y)

[State 40, VelSet]
type = VelSet
trigger1 = !AnimTime && Var(2) = 3
x = Cond(SysVar(1) = 0,Const(Velocity.Jump.Neu.X),Cond(SysVar(1) = 1,1.5*Const(Velocity.Jump.Fwd.X),1.5*Const(Velocity.Jump.Back.X)))
y = Cond(!SysVar(1),1.15,1)*Const(Velocity.Jump.Y)

[State 40, VelSet]
type = VelSet
trigger1 = !AnimTime && PrevStateNo = 100 && SysVar(1) = 1
trigger1 = Var(2):= 3
x = Const(Velocity.RunJump.Fwd.X)

[State 40, ChangeState]
type = ChangeState
triggerall = AILevel
trigger1 = NumTarget(800)
trigger1 = NumEnemy
trigger1 = EnemyNear,MoveType = H
trigger2 = NumTarget(1411)
trigger2 = NumEnemy
trigger2 = EnemyNear,MoveType = H
value = 0
ctrl = 1

[State 40, ChangeState]
type = ChangeState
triggerall = AILevel
trigger1 = NumTarget(1201)
trigger2 = NumEnemy
trigger2 = EnemyNear,MoveType = H
trigger2 = EnemyNear,Pos Y >= -50
value = 0
ctrl = 1
persistent = 0

[State 40, ChangeState]
type = ChangeState
triggerall = AILevel
triggerall = NumEnemy
triggerall = EnemyNear,StateType = A
triggerall = P2Dist X <= 40
triggerall = StateNo != 10
trigger1 = NumTarget(1300)
trigger2 = NumTarget(1301)
trigger3 = NumTarget(1302)
trigger4 = NumTarget(1411)
value = 10
ctrl = 1
persistent = 0

[State 40, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 50
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;JUMP UP
[StateDef 50]
type = A
physics = A

[State 50, AssertSpecial]
type = AssertSpecial
trigger1 = 1;Var(2) = 2
flag = NoAirGuard

[State 50, ChangeAnim]
type = ChangeAnim
trigger1 = Var(2) != 2
value = Cond(!(Vel X),41,Cond((Vel X) > 0,42,43))
persistent = 0

[State 50, ChangeAnim]
type = ChangeAnim
trigger1 = Var(2) = 2
value = Cond(!(Vel X),41,Cond((Vel X) > 0,42,43))
elem = AnimElemNo(0)
persistent = 0

[State 50, AfterImage]
type = AfterImage
trigger1 = Time = 1 && Var(2) = 3
time = 2
length = 9
palbright = 0,0,0
palcontrast = 128,128,128
palPostbright = 0,0,0
paladd = 0,0,0
palmul = .9,.9,.9
timegap = 1
framegap = 4
trans = Add1 ;"none","add1","sub"

[State 50, AfterImageTime]
type = AfterImageTime
trigger1 = Var(2) = 3 && Vel Y < -1
time = 2

[State 50, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S40,Cond(Var(2) = 3,1,0)
channel = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;JUMP DOWN
[StateDef 51]
type = A
physics = A

[State 51, Null]
type = Null
trigger1 = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;JUMP LAND
[StateDef 52]
type = C
physics = S
movetype = I
ctrl = 0
velset = 0,0
movehitpersist = 1
facep2 = 1

[State 52, VarSet]
type = VarSet
trigger1 = !Time
var(5) = 0

[State 52, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 52, CtrlSet]
type = CtrlSet
trigger1 = PrevStateNo < 1000
trigger1 = Anim != 5 && AnimElem = 2
value = 1

[State 52, ChangeAnim]
type = ChangeAnim
trigger1 = PrevStateNo < 1000
trigger1 = !Time
value = 47

[State 52, ChangeAnim]
type = ChangeAnim
trigger1 = PrevStateNo >= 1000 && PrevStateNo < 3000
trigger1 = !Time
value = 48

[State 52, ChangeAnim]
type = ChangeAnim
trigger1 = PrevStateNo >= 3000
trigger1 = !Time
value = 49

[State 52, ChangeAnim]
type = ChangeAnim
trigger1 = Ctrl && P2Dist X < 0
trigger1 = Anim != 5
value = 5
 
[State 52, Turn]
type = Turn
trigger1 = Anim = 5 && AnimElem = 1

;[State 52, Turn]
;type = Turn
;trigger1 = NumEnemy
;trigger1 = P2Dist X < 0
;trigger1 = !Time
;trigger1 = PrevStateNo = [600,999]
;persistent = 0

[State 52, AfterImageTime]
type = AfterImageTime
trigger1 = !Time
time = 1
persistent = 0

[State 52, Explod]
type = Explod
trigger1 = !Time
ID = 7002
anim = 7002
postype = P1  ;p2,front,back,left,right
pos = 3,0
supermovetime = 0
pausemovetime = 0
scale = .5,.5
sprpriority = -2
ownpal = 1

[State 52, AssertSpecial]
type = AssertSpecial
trigger1 = Anim != 5
flag = NoWalk
ignoreHitPause = 1

[State 52, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S52,0
channel = -1
lowpriority = 1

[State 52, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;SKY STEP
[StateDef 60]
type = A
physics = N
velset = 0,0
anim = 60
facep2 = 1
ctrl = 0

[State 60, VarSet]
type = VarSet
trigger1 = 1
var(1) = 1

[State 60, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 60, Width]
type = Width
trigger1 = 1
edge = 10,0
player = 10,0

[State 60, AfterImageTime]
type = AfterImageTime
trigger1 = !TIme
time = 1

[State 60, PalFX]
type = PalFX
trigger1 = !TIme
time = 1
add = 0,0,0
mul = 256,256,256
invertall = 0
color = 256

[State 60, Pause]
type = Pause
trigger1 = !NumHelper(7900)
trigger1 = !NumHelper(7925)
trigger1 = !NumHelper(7950)
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
trigger1 = Time%2 = 0
time = 4
movetime = 0
endcmdbuftime = 4
pausebg = 1
ignorehitpause = 1

[State 60, Explod]
type = Explod
trigger1 = !Time
ID = 7004
anim = 7004
pos = 0,-34
postype = P1  ;p2,front,back,left,right
supermovetime = 900
pausemovetime = 900
bindtime = 1
scale = 1,1
sprpriority = -2
ownpal = 1

[State 60, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) >= 0
y = .5

[State 60, CtrlSet]
type = CtrlSet
trigger1 = AnimElem = 3
value = 1

[State 60, ChangeState]
type = ChangeState
trigger1 = !AILevel
trigger1 = (Cond(P2Dist X < 0,Facing = -1,Facing = 1) && NumExplod(90000006)) || (Cond(P2Dist X < 0,Facing = 1,Facing = -1) && NumExplod(90000004))
trigger1 = AnimElemTime(3) < 0
value = 61
[State 60, ChangeState]
type = ChangeState
trigger1 = !AILevel
trigger1 = (Cond(P2Dist X < 0,Facing = -1,Facing = 1) && NumExplod(90000004)) || (Cond(P2Dist X < 0,Facing = 1,Facing = -1) && NumExplod(90000006))
trigger1 = AnimElemTime(3) < 0
value = 62
[State 60, ChangeState]
type = ChangeState
trigger1 = !AILevel
trigger1 = NumExplod(90000008);u
trigger1 = AnimElemTime(3) < 0
value = 63
[State 60, ChangeState]
type = ChangeState
trigger1 = !AILevel
trigger1 = (Cond(P2Dist X < 0,Facing = -1,Facing = 1) && NumExplod(90000009)) || (Cond(P2Dist X < 0,Facing = 1,Facing = -1) && NumExplod(90000007));uf
trigger1 = AnimElemTime(3) < 0
value = 64
[State 60, ChangeState]
type = ChangeState
trigger1 = !AILevel
trigger1 = (Cond(P2Dist X < 0,Facing = -1,Facing = 1) && NumExplod(90000007)) || (Cond(P2Dist X < 0,Facing = 1,Facing = -1) && NumExplod(90000009));ub
trigger1 = AnimElemTime(3) < 0
value = 65

[State 60, ChangeState]
type = ChangeState
trigger1 = AILevel
trigger1 = Var(59) < (1000*(AILevel**2/64.0))
trigger1 = NumEnemy
trigger1 = EnemyNear,MoveType != A
trigger1 = EnemyNear,BackEdgeDist >= 10
trigger1 = P2Dist X >= 60
trigger1 = AnimElemTime(2) >= 1 && AnimElemTime(3) < 0
value = 61
[State 60, ChangeState]
type = ChangeState
triggerall = AILevel
triggerall = Var(59) < (1000*(AILevel**2/64.0))
triggerall = NumEnemy
triggerall = AnimElemTime(2) >= 1 && AnimElemTime(3) < 0
triggerall = P2Dist X <= 70
trigger1 = EnemyNear,MoveType = A
trigger2 = PrevStateNo = [1100,1110]
trigger2 = EnemyNear,StateType != A
value = 62
[State 60, ChangeState]
type = ChangeState
trigger1 = AILevel
trigger1 = Var(59) < (500*(AILevel**2/64.0))
trigger1 = NumEnemy
trigger1 = P2Dist Y <= -40 && EnemyNear,Vel Y < 0
trigger1 = AnimElemTime(2) >= 1 && AnimElemTime(3) < 0
value = 63
[State 60, ChangeState]
type = ChangeState
triggerall = AILevel
triggerall = Var(59) < (1000*(AILevel**2/64.0))
triggerall = NumEnemy
triggerall = P2Dist X >= 50;70
triggerall = AnimElemTime(2) >= 1 && AnimElemTime(3) < 0
trigger1 = (P2Dist Y <= -40 && EnemyNear,Vel X < 0 && EnemyNear,Vel Y < 0) || EnemyNear,StateType = L
trigger2 = PlayerIdExist(Helper(33333333),Var(23))
trigger3 = EnemyNear,NumProj
value = 64
[State 60, ChangeState]
type = ChangeState
triggerall = AILevel
triggerall = Var(59) < (1000*(AILevel**2/64.0))
triggerall = NumEnemy
triggerall = EnemyNear,MoveType != H
triggerall = AnimElemTime(2) >= 1 && AnimElemTime(3) < 0
trigger1 = P2Dist Y <= -1
trigger2 = PrevStateNo = [1100,1110]
trigger2 = EnemyNear,StateType != A
trigger3 = PlayerIdExist(Helper(33333333),Var(23))
trigger3 = EnemyNear,NumProj
value = 65

[State 60, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
trigger1 = AnimElemTime(3) >= 0
value = 52

;--------------------------------------------------------------------------------------------------------------------------------------------
;SKY STEP - DASH FORWARD
[StateDef 61]
type = A
physics = N
velset = 8,0
anim = 61

[State 61, VarSet]
type = VarSet
trigger1 = 1
var(1) = 1

[State 61, CtrlSet]
type = CtrlSet
trigger1 = Time = 1
value = 1

[State 61, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 61, Width]
type = Width
trigger1 = AnimElemTime(5) < 0
edge = 50,0
player = 5,0
[State 61, Width]
type = Width
trigger1 = AnimElemTime(5) >= 0
edge = 20,0
player = 5,0

[State 61, Pause]
type = Pause
trigger1 = !Time && PrevStateNo = 60
time = 1
movetime = 1
endcmdbuftime = 1
pausebg = 0
ignorehitpause = 1

[State 61, Explod]
type = Explod
trigger1 = !Time
ID = 7006
anim = 7006
pos = 0,-86
postype = P1  ;p2,front,back,left,right
supermovetime = 0
pausemovetime = 0
bindtime = 1
scale = .3,.3
sprpriority = 2
ownpal = 1

[State 61, PosAdd]
type = PosAdd
trigger1 = !Time
x = 40
[State 61, PosAdd]
type = PosAdd
trigger1 = AnimElem = 5
x = -30

[State 61, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) >= 0
y = .5

[State 61, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S100,5
channel = -1

[State 61, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
trigger1 = AnimElemTime(5) >= 0
value = 52

;--------------------------------------------------------------------------------------------------------------------------------------------
;SKY STEP - DASH BACK
[StateDef 62]
type = A
physics = N
velset = 0,0
anim = 62

[State 62, VarSet]
type = VarSet
trigger1 = 1
var(1) = 1

[State 62, CtrlSet]
type = CtrlSet
trigger1 = Time = 1
value = 1

[State 62, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 62, Width]
type = Width
trigger1 = 1
edge = 10,10
player = 5,0

[State 62, Pause]
type = Pause
trigger1 = !Time && PrevStateNo = 60
time = 1
movetime = 1
endcmdbuftime = 1
pausebg = 0
ignorehitpause = 1

[State 62, Explod]
type = Explod
trigger1 = AnimElem = 2
ID = 7006
anim = 7006
pos = 0,-60
postype = P1  ;p2,front,back,left,right
facing = -1
supermovetime = 0
pausemovetime = 0
bindtime = 1
scale = .3,.3
sprpriority = 2
ownpal = 1

[State 62, PosAdd]
type = PosAdd
trigger1 = !Time
y = -35

[State 62, VelSet]
type = VelSet
trigger1 = AnimElemTime(2) = 0
x = -8

[State 62, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) >= 0
y = .5

[State 62, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S100,5
channel = -1

[State 62, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
trigger1 = AnimElemTime(4) >= 0
value = 52

;--------------------------------------------------------------------------------------------------------------------------------------------
;SKY STEP - JUMP NEUTRAL
[StateDef 63]
type = A
physics = N
anim = 41

[State 63, VarSet]
type = VarSet
trigger1 = 1
var(1) = 1

[State 63, CtrlSet]
type = CtrlSet
trigger1 = Time = 1
value = 1

[State 63, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 63, Width]
type = Width
trigger1 = 1
edge = 10,10
player = 5,0

[State 63, Pause]
type = Pause
trigger1 = !Time && PrevStateNo = 60
time = 1
movetime = 1
endcmdbuftime = 1
pausebg = 0
ignorehitpause = 1

[State 63, Explod]
type = Explod
trigger1 = !Time
ID = 7004
anim = 7004
pos = 0,0
postype = P1  ;p2,front,back,left,right
supermovetime = 900
pausemovetime = 900
bindtime = 1
scale = 1,1
sprpriority = -2
ownpal = 1

[State 63, PosAdd]
type = PosAdd
trigger1 = !Time
y = -25

[State 63, VelSet]
type = VelSet
trigger1 = !Time
x = Const(Velocity.Jump.Neu.X)
y = Const(Velocity.Jump.Y)

[State 63, VelAdd]
type = VelAdd
trigger1 = 1
y = .5

[State 63, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S100,5
channel = -1

[State 63, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
trigger1 = AnimElemTime(1) >= 0
value = 52

;--------------------------------------------------------------------------------------------------------------------------------------------
;SKY STEP - JUMP FORWARD
[StateDef 64]
type = A
physics = N
anim = 42

[State 64, VarSet]
type = VarSet
trigger1 = 1
var(1) = 1

[State 64, CtrlSet]
type = CtrlSet
trigger1 = Time = 1
value = 1

[State 64, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 64, Width]
type = Width
trigger1 = 1
edge = 10,10
player = 5,0

[State 64, Pause]
type = Pause
trigger1 = !Time && PrevStateNo = 60
time = 1
movetime = 1
endcmdbuftime = 1
pausebg = 0
ignorehitpause = 1

[State 64, Explod]
type = Explod
trigger1 = !Time
ID = 7004
anim = 7004
pos = 0,0
postype = P1  ;p2,front,back,left,right
supermovetime = 900
pausemovetime = 900
bindtime = 1
scale = 1,1
sprpriority = -2
ownpal = 1

[State 64, PosAdd]
type = PosAdd
trigger1 = !Time
y = -25

[State 64, VelSet]
type = VelSet
trigger1 = !Time
x = Const(Velocity.Jump.Fwd.X)
y = Const(Velocity.Jump.Y)

[State 64, VelAdd]
type = VelAdd
trigger1 = 1
y = .5

[State 64, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S100,5
channel = -1

[State 64, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
trigger1 = AnimElemTime(1) >= 0
value = 52

;--------------------------------------------------------------------------------------------------------------------------------------------
;SKY STEP - JUMP BACK
[StateDef 65]
type = A
physics = N
anim = 43

[State 65, VarSet]
type = VarSet
trigger1 = 1
var(1) = 1

[State 65, CtrlSet]
type = CtrlSet
trigger1 = Time = 1
value = 1

[State 65, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 65, Width]
type = Width
trigger1 = 1
edge = 10,10
player = 5,0

[State 65, Pause]
type = Pause
trigger1 = !Time && PrevStateNo = 60
time = 1
movetime = 1
endcmdbuftime = 1
pausebg = 0
ignorehitpause = 1

[State 65, Explod]
type = Explod
trigger1 = !Time
ID = 7004
anim = 7004
pos = 0,0
postype = P1  ;p2,front,back,left,right
supermovetime = 900
pausemovetime = 900
bindtime = 1
scale = 1,1
sprpriority = -2
ownpal = 1

[State 65, PosAdd]
type = PosAdd
trigger1 = !Time
y = -25

[State 65, VelSet]
type = VelSet
trigger1 = !Time
x = Const(Velocity.Jump.Back.X)
y = Const(Velocity.Jump.Y)

[State 65, VelAdd]
type = VelAdd
trigger1 = 1
y = .5

[State 65, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S100,5
channel = -1

[State 65, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
trigger1 = AnimElemTime(1) >= 0
value = 52

;--------------------------------------------------------------------------------------------------------------------------------------------
;RUN
[StateDef 100]
type = S
physics = N
MoveType = I
anim = 100
velset = 0,0
ctrl = 0
sprpriority = 1

[State 100, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 100, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAutoTurn

[State 100, Explod]
type = Explod
trigger1 = AnimElem = 3
trigger2 = AnimElem = 8
trigger3 = AnimElem = 12
ID = 7003
anim = 7003
postype = P1  ;p2,front,back,left,right
pos = 25,5;-42,5
bindtime = 1
vel = -1.5,0
accel = 0,-.03
supermovetime = 0
pausemovetime = 0
scale = .7,.7
facing = 1
sprpriority = 3
ownpal = 1

[State 100, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 100, StateTypeSet]
type = StateTypeSet
trigger1 = !Time
statetype = S       ;S,A,C,L
physics = N         ;A,C,S,N

[State 100, Explod]
type = Explod
triggerall = PrevStateNo != 740 && PrevStateNo != 741
triggerall = !Time
trigger1 = PrevStateNo = [200,699]
trigger2 = PrevStateNo = [1000,1999]
ID = 6350
anim = 6350
pos = 0,0
postype = P1  ;p2,front,back,left,right
bindtime = 1
removeongethit = 1
supermovetime = 0
pausemovetime = 0
scale = .6,.6
sprpriority = 7
ownpal = 1

[State 100, VarSet]
type = VarSet
trigger1 = !Time
v = 3
value = 0
ignorehitpause = 1
persistent = 0

[State 100, PowerAdd]
type = PowerAdd
triggerall = !Time
trigger1 = PrevStateNo = [200,999]
trigger2 = PrevStateNo = [1000,1999]
value = -1000
ignorehitpause = 1

[State 100, PalFX]
type = PalFX
trigger1 = PrevStateNo != 740 && PrevStateNo != 741
trigger1 = !Time
trigger1 = PrevStateNo = [200,1999]
time = 9
add = 0,240,50
mul = 120,224,250
sinadd = 85,55,110,10
invertall = 0
color = 0
ignorehitpause = 1

[State 100, PlaySnd]
type = PlaySnd
trigger1 = PrevStateNo != 740 && PrevStateNo != 741
trigger1 = !Time
trigger1 = PrevStateNo = [200,1999]
value = S100,7
channel = 5

[State 100, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
value = S100,0
channel = 1

[State 100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 8
trigger3 = AnimElem = 12
value = S100,2
channel = 2

[State 100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
trigger2 = AnimElem = 12
value = S100,3
channel = 3

[State 100, StopSnd]
type = StopSnd
trigger1 = !Time
channel = 0
ignorehitpause = 1
persistent = 0

[State 100, VelSet]
type = VelSet
trigger1 = 1
x = Const(Velocity.Run.Fwd.X)

[State 100, ChangeState]
type = ChangeState
trigger1 = !AnimTime
trigger2 = !AILevel && Command != "holdb" && Command != "holdy"
trigger3 = NumEnemy
trigger3 = AILevel && (P2BodyDist X <= 1 || P2Dist X < 0);80
trigger4 = AILevel
trigger4 = NumEnemy
trigger4 = EnemyNear,StateType = L
trigger4 = P2Dist X <= 80
value = 101
ctrl = 0

;--------------------------------------------------------------------------------------------------------------------------------------------
;RUN END
[StateDef 101]
type = S
physics = S
MoveType = I
anim = 101
ctrl = 0
sprpriority = 1

[State 101, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S100,1
channel = 1

[State 101, VelMul]
type = VelMul
trigger1 = 1
x = .9

[State 101, VelSet]
type = VelSet
trigger1 = !AnimTime
x = 0

[State 101, ChangeState]
type = ChangeState
trigger1 = Command = "holdup"
value = 40

[State 101, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = Cond(Command = "holddown",10,0)
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;DASH
[StateDef 102]
type = S
physics = S
MoveType = I
anim = 102
ctrl = 0
velset = 0,0
sprpriority = 1
facep2 = 1

[State 102, Explod]
type = Explod
trigger1 = AnimElem = 2
ID = 7003
anim = 7003
postype = P1  ;p2,front,back,left,right
pos = -30,2
vel = -1.5,0
accel = 0,-.03
supermovetime = 0
pausemovetime = 0
scale = .7,.7
facing = 1
sprpriority = 3
ownpal = 1

[State 102, Explod]
type = Explod
trigger1 = AnimElem = 3
ID = 7002
anim = 7002
postype = P1  ;p2,front,back,left,right
pos = 15,0
supermovetime = 0
pausemovetime = 0
scale = .5,.5
sprpriority = -2
ownpal = 1

[State 102, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S40,0
channel = -1

[State 102, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S52,0
channel = -1

[State 102, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 102, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = 25
persistent = 0

[State 102, VelMul]
type = VelMul
trigger1 = AnimElemTime(3) > 0
x = .85

[State 102, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = Const(Velocity.Run.Fwd.X)+5.5

[State 102, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 0

[State 102, ChangeState]
type = ChangeState
trigger1 = AILevel
trigger1 = NumEnemy
value = 100
persistent = 0

[State 102, ChangeState]
type = ChangeState
triggerall = AILevel
triggerall = !TIme
trigger1 = NumEnemy
trigger1 = EnemyNear,StateType != L
trigger1 = EnemyNear,StateType != A
trigger1 = Abs(P2Dist Y) < 80
trigger2 = NumTarget(1401)
trigger3 = NumTarget(1411)
trigger3 = !(Target(1411),Pos Y = 0)
value = Cond(P2BodyDist X <= 60,242,10)
ctrl = Cond(P2BodyDist X <= 60,0,1)

[State 102, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 103
ctrl = 0

;--------------------------------------------------------------------------------------------------------------------------------------------
;DASH END
[StateDef 103]
type = S
physics = S
ctrl = 1
anim = 103
velset = 0,0

[State 103, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 103, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;DASH BACK
[StateDef 105]
type = S
MoveType = I
physics = N
velset = 0,0
anim = 105
ctrl = 0
sprpriority = 1

[State 105, Explod]
type = Explod
trigger1 = AnimElem = 2
ID = 7003
anim = 7003
postype = P1  ;p2,front,back,left,right
pos = 30,2
vel = 1.5,0
accel = 0,-.03
supermovetime = 0
pausemovetime = 0
facing = -1
scale = .7,.7
sprpriority = 3
ownpal = 1

[State 105, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
value = S40,0
channel = -1

[State 105, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = Const(Velocity.Run.Back.X)

[State 105, VelMul]
type = VelMul
trigger1 = AnimElemTime(2) > 0
x = .98

[State 105, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 105, ChangeState]
type = ChangeState
trigger1 = Time >= 11
value = 106

;--------------------------------------------------------------------------------------------------------------------------------------------
;DASH BACK END
[StateDef 106]
type = S
physics = S
velset = 0,0
anim = 106
ctrl = 0
sprpriority = 1

[State 106, Explod]
type = Explod
trigger1 = AnimElem = 1
ID = 7002
anim = 7002
postype = P1  ;p2,front,back,left,right
pos = 0,0
supermovetime = 0
pausemovetime = 0
scale = .5,.5
sprpriority = -2
ownpal = 1

[State 106, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S52,0
channel = -1

[State 106, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 106, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;GUARD START
[StateDef 120]
type = U
physics = U
anim = 120+(StateType = C)+(StateType = A)*2

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
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && StateType = S && Command = "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && StateType = S && Command = "holdup"
trigger3 = AILevel && StateType = S && (EnemyNear,MoveType = A) && (EnemyNear,StateType = C)
stateType = C
physics = C

[State 120, Crouching to Stand]
type = StateTypeSet
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && StateType = C && Command != "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && StateType = C && Command != "holdup"
trigger3 = AILevel && StateType = C && (EnemyNear,MoveType = A) && (EnemyNear,StateType != C)
stateType = S
physics = S

[State 120, AI Fix]
type = CtrlSet
trigger1 = AILevel && NumEnemy
value = (EnemyNear,Time >= 120 || Time >= 180)

[State 120, Change to Guard State]
type = ChangeState
trigger1 = !AnimTime || AILevel
value = 130+(StateType = C)+(StateType = A)*2

[State 120, Stop Guarding]
type = ChangeState
trigger1 = !AILevel && (Cond(!NumExplod(94646464) && !NumExplod(92468246),Cond(P2dist x < 0,Command != "holdfwd",Command != "holdback"),Cond(P2dist x < 0,Command != "holdback",Command != "holdfwd")))
trigger2 = !InGuardDist
trigger3 = AILevel && NumEnemy
trigger3 = EnemyNear,HitDefAttr = SCA, AT
value = 140

;--------------------------------------------------------------------------------------------------------------------------------------------
;STANDING GUARD
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
value = (EnemyNear,Time >= 120 || Time >= 180)

[State 130, Standing to Crouch]
type = ChangeState
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && StateType = S && Command = "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && StateType = S && Command = "holdup"
trigger3 = AILevel && Random < (250*(AILevel ** 2/64.0))
trigger3 = (EnemyNear,MoveType = A) && (EnemyNear,StateType = C)
value = 131

[State 130, Stop Guarding]
type = ChangeState
trigger1 = !AILevel && (Cond(!NumExplod(94646464) && !NumExplod(92468246),Cond(P2dist x < 0,Command != "holdfwd",Command != "holdback"),Cond(P2dist x < 0,Command != "holdback",Command != "holdfwd")))
trigger2 = !InGuardDist
trigger3 = AILevel && NumEnemy
trigger3 = EnemyNear,HitDefAttr = SCA, AT
value = 140

[State 130,Landing Sound]
type = PlaySnd
trigger1 = !Time
trigger1 = PrevStateNo = 132 || (PrevStateNo = [154,155])
value = S52,0

[State 130,Landing Dust Explod]
type = Explod
trigger1 = !Time
trigger1 = PrevStateNo = 132 || (PrevStateNo = [154,155])
anim = 7002
sprpriority = -3
postype = P1
pos = 3,0
scale = .5,.5
pauseMovetime = -1
superMovetime = -1
ownPal = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;CROUCH GUARDING
[StateDef 131]
type = C
physics = C

[State 131, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 131
value = 131

[State 131, Crouching to Standing]
type = ChangeState
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && StateType = C && Command != "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && StateType = C && Command != "holdup"
trigger3 = AILevel && Random < (125*(AILevel ** 2/64.0))
trigger3 = (EnemyNear,MoveType = A) && (EnemyNear,StateType != C)
value = 130

[State 131, AI Fix]
type = CtrlSet
trigger1 = AILevel && NumEnemy
value = (EnemyNear,Time >= 120 || Time >= 180)

[State 131, Stop Guarding]
type = ChangeState
trigger1 = !AILevel && (Cond(!NumExplod(94646464) && !NumExplod(92468246),Cond(P2dist x < 0,Command != "holdfwd",Command != "holdback"),Cond(P2dist x < 0,Command != "holdback",Command != "holdfwd")))
trigger2 = !InGuardDist
trigger3 = AILevel && NumEnemy
trigger3 = EnemyNear,HitDefAttr = SCA, AT
value = 140

;--------------------------------------------------------------------------------------------------------------------------------------------
;AIR GUARDING
[StateDef 132]
type = A
physics = N

[State 132, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 132
value = 132

[State 132, VelAdd]
type = VelAdd
trigger1 = 1
y = Const(Movement.YAccel)

[State 132, VarSet]
type = VarSet
trigger1 = 1
sysvar(0) = (Pos Y >= 0 && Vel Y > 0)

[State 132, VelSet]
type = VelSet
trigger1 = SysVar(0)
y = 0

[State 132, PosSet]
type = PosSet
trigger1 = SysVar(0)
y = 0

[State 132, AI Fix]
type = CtrlSet
trigger1 = AILevel && NumEnemy
value = (EnemyNear,Time >= 120 || Time >= 180)

[State 132, Jumping to Standing]
type = ChangeState
trigger1 = SysVar(0) && InGuardDist
trigger1 = (!AILevel && (Cond(!NumExplod(94646464) && !NumExplod(92468246),Cond(P2dist x < 0,Command = "holdfwd",Command = "holdback"),Cond(P2dist x < 0,Command = "holdback",Command = "holdfwd")))) || AILevel
value = 130

[State 132, Change to Falling]
type = ChangeState
trigger1 = SysVar(0)
value = 52

[State 132, Stop Guarding]
type = ChangeState
trigger1 = !AILevel && (Cond(!NumExplod(94646464) && !NumExplod(92468246),Cond(P2dist x < 0,Command != "holdfwd",Command != "holdback"),Cond(P2dist x < 0,Command != "holdback",Command != "holdfwd")))
trigger2 = !InGuardDist
trigger3 = AILevel && NumEnemy
trigger3 = EnemyNear,HitDefAttr = SCA, AT
value = 140

;--------------------------------------------------------------------------------------------------------------------------------------------
;GUARD END
[StateDef 140]
type = U
physics = U
ctrl = 1

[State 140, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 140+(StateType = C)+(StateType = A)*2

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
trigger1 = !AILevel && StateType = S && (NumExplod(90000002) || NumExplod(90000001) || NumExplod(90000003))
trigger2 = AILevel && Random < (250*(AILevel ** 2/64.0))
trigger2 = StateType = S && (EnemyNear,MoveType = A) && (EnemyNear,StateType = C)
stateType = C
physics = C

[State 140, Crouching to Standing]
type = StateTypeSet
trigger1 = !AILevel && StateType = C && (!NumExplod(90000002) && !NumExplod(90000001) && !NumExplod(90000003))
trigger2 = AILevel && Random < (125*(AILevel ** 2/64.0))
trigger2 = StateType = C && (EnemyNear,MoveType = A) && (EnemyNear,StateType != C)
stateType = S
physics = S

[State 140, End]
type = ChangeState
trigger1 = !AnimTime
value = (StateType = C)*11+(StateType = A)*51

;--------------------------------------------------------------------------------------------------------------------------------------------
;HIT WHILE GUARDING (STANDING)
[StateDef 150]
type = S
MoveType = H
physics = N
velSet = 0,0

[State 150, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 150

[State 150, End]
type = ChangeState
trigger1 = HitShakeOver
value = 151+2*((!AILevel && (NumExplod(90000002) || NumExplod(90000001) || NumExplod(90000003))) || (AILevel && (EnemyNear,MoveType = A) && (EnemyNear,StateType = C)))

[State 150, Standing to Crouching]
type = StateTypeSet
trigger1 = !AILevel && StateType = S && (NumExplod(90000002) || NumExplod(90000001) || NumExplod(90000003))
trigger2 = AILevel && Random < (250*(AILevel ** 2/64.0))
stateType = C
physics = C

[State 150, Crouching to Standing]
type = StateTypeSet
trigger1 = !AILevel && StateType = C && (!NumExplod(90000002) && !NumExplod(90000001) && !NumExplod(90000003))
trigger2 = AIlevel && Random < (125*(AILevel ** 2/64.0))
trigger2 = StateType = C && (EnemyNear,MoveType = A) && (EnemyNear,StateType != C)
stateType = S
physics = S

;--------------------------------------------------------------------------------------------------------------------------------------------
;KNOCKED BACK WHILE GUARDING (STANDING)
[StateDef 151]
type = S
MoveType = H
physics = S
anim = 150

[State 151, VelSet]
type = VelSet
trigger1 = !Time
x = GetHitVar(XVel)*Facing

[State 151, VelSet]
type = VelSet
trigger1 = Time = GetHitVar(SlideTime)
trigger2 = HitOver
x = 0

[State 151, CtrlSet]
type = CtrlSet
trigger1 = Time = GetHitVar(CtrlTime)
value = 1

[State 151, Standing to Crouching]
type = StateTypeSet
trigger1 = !AILevel && StateType = S && (NumExplod(90000002) || NumExplod(90000001) || NumExplod(90000003))
trigger2 = AILevel && Random < (250*(AILevel ** 2/64.0))
trigger2 = StateType = S && (EnemyNear,MoveType = A) && (EnemyNear,StateType = C)
stateType = C
physics = C

[State 151, Crouching to Standing]
type = StateTypeSet
trigger1 = !AILevel && StateType = C && (!NumExplod(90000002) && !NumExplod(90000001) && !NumExplod(90000003))
trigger2 = AILevel && Random < (125*(AILevel ** 2/64.0))
trigger2 = StateType = C && (EnemyNear,MoveType = A) && (EnemyNear,StateType != C)
stateType = S
physics = S

[State 151, End]
type = ChangeState
trigger1 = HitOver
value = 130
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;HIT WHILE GUARDING (CROUCHING)
[StateDef 152]
type = C
MoveType = H
physics = N
velSet = 0,0

[State 152, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 151

[State 152, End]
type = ChangeState
trigger1 = HitShakeOver
value = 151+2*((!AILevel && ((!NumExplod(92828282) && !NumExplod(92468246) && Command = "holddown") || ((NumExplod(92828282) || NumExplod(92468246)) && Command = "holdup"))) || (AILevel && (EnemyNear,MoveType = A) && (EnemyNear,StateType = C)))

[State 152, Standing to Crouching]
type = StateTypeSet
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && StateType = S && Command = "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && StateType = S && Command = "holdup"
trigger3 = AILevel && Random < (250*(AILevel ** 2/64.0))
trigger3 = StateType = S && (EnemyNear,MoveType = A) && (EnemyNear,StateType = C)
stateType = C
physics = C

[State 152, Crouching to Standing]
type = StateTypeSet
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && StateType = C && Command != "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && StateType = C && Command != "holdup"
trigger3 = AILevel && Random < (125*(AILevel ** 2/64.0))
trigger3 = StateType = C && (EnemyNear,MoveType = A) && (EnemyNear,StateType != C)
stateType = S
physics = S

;--------------------------------------------------------------------------------------------------------------------------------------------
;KNOCKED BACK WHILE GUARDING (CROUCHING)
[StateDef 153]
type = C
MoveType = H
physics = C
anim = 151

[State 153, VelSet]
type = VelSet
trigger1 = !Time
x = GetHitVar(XVel)*Facing

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
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && StateType = S && Command = "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && StateType = S && Command = "holdup"
trigger3 = AILevel && Random < (250*(AILevel ** 2/64.0))
trigger3 = StateType = S && (EnemyNear,MoveType = A) && (EnemyNear,StateType = C)
stateType = C
physics = C

[State 153, Crouching to Standing]
type = StateTypeSet
trigger1 = !NumExplod(92828282) && !NumExplod(92468246)
trigger1 = !AILevel && StateType = C && Command != "holddown"
trigger2 = NumExplod(92828282) || NumExplod(92468246)
trigger2 = !AILevel && StateType = C && Command != "holdup"
trigger3 = AILevel && Random < (125*(AILevel ** 2/64.0))
trigger3 = StateType = C && (EnemyNear,MoveType = A) && (EnemyNear,StateType != C)
stateType = S
physics = S

[State 153, End]
type = ChangeState
trigger1 = HitOver
value = 131
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;HIT WHILE GUARDING (JUMPING)
[StateDef 154]
type = A
MoveType = H
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

;--------------------------------------------------------------------------------------------------------------------------------------------
;KNOCKED BACK WHILE GUARDING (JUMPING)
[StateDef 155]
type = A
MoveType = H
physics = N
anim = 152

[State 155, VelSet]
type = VelSet
trigger1 = !Time
x = GetHitVar(XVel)*Facing
y = GetHitVar(YVel)

[State 155, VelAdd]
type = VelAdd
trigger1 = 1
y = Const(Movement.YAccel)

[State 155, CtrlSet]
type = CtrlSet
trigger1 = Time = GetHitVar(CtrlTime)
value = 1

[State 155, VarSet]
type = VarSet
trigger1 = 1
sysvar(0) = (Pos Y >= 0 && Vel Y > 0)

[State 155, VelSet]
type = VelSet
trigger1 = SysVar(0)
y = 0

[State 155, PosSet]
type = PosSet
trigger1 = SysVar(0)
y = 0

[State 155, End]
type = ChangeState
trigger1 = SysVar(0) && InGuardDist
trigger1 = (!AILevel && (Cond(!NumExplod(94646464) && !NumExplod(92468246),Cond(P2dist x < 0,Command != "holdfwd",Command != "holdback"),Cond(P2dist x < 0,Command != "holdback",Command != "holdfwd")))) || AILevel
value = 130

[State 155, End]
type = ChangeState
trigger1 = SysVar(0)
value = 52

;--------------------------------------------------------------------------------------------------------------------------------------------
;LOSE
[StateDef 170]
type = S
ctrl = 0
anim = 170
velset = 0,0

[State 170, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;DRAW GAME/TIME OUT
[StateDef 175]
type = S
ctrl = 0
velset = 0,0
anim = 175

[State 175, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;PRE-WIN
[StateDef 180]
type = S

[State 180, VictoryQuote]
type = VictoryQuote
trigger1 = 1
value = 1+(Random%77)

[State 180, VictoryQuote]
type = VictoryQuote
trigger1 = NumEnemy
trigger1 = Enemy,Name = "Nash"
value = 78

[State 180, VictoryQuote]
type = VictoryQuote
trigger1 = NumEnemy
trigger1 = Enemy,Name = "Vega"
trigger1 = Enemy,AuthorName = "Burn"
value = 79+(Random%4)

[State 180, VictoryQuote]
type = VictoryQuote
trigger1 = NumEnemy
trigger1 = Enemy,Name = "Ken"
trigger1 = Enemy,AuthorName = "Burn"
value = 83+(Random%6)

[State 180, VictoryQuote]
type = VictoryQuote
trigger1 = NumEnemy
trigger1 = Enemy,Name = "Ryu"
trigger1 = Enemy,AuthorName = "Burn"
value = 89+(Random%5)

[State 180, VictoryQuote]
type = VictoryQuote
trigger1 = NumEnemy
trigger1 = Enemy,Name = "Guile"
trigger1 = Enemy,AuthorName = "Burn"
value = 94+(Random%2)

[State 180, ChangeState]
type = ChangeState
trigger1 = !Time
value = 181+Random%5

[State 180, PosSet]
type = PosSet
trigger1 = 1
y = 0

;--------------------------------------------------------------------------------------------------------------------------------------------
;WIN 1
[StateDef 181]
type = S
anim = 181
sprpriority = 1

[State 181, AssertSpecial]
type = AssertSpecial
trigger1 = Time = [0,230]
flag = RoundNotOver

[State 181, PlaySnd]
type = PlaySnd
trigger1 = TeamMode != Simul
trigger1 = Time = 90
value = S189,0
volumescale = 100
channel = -1
persistent = 0

[State 181, PlaySnd]
type = PlaySnd
trigger1 = NumEnemy
trigger1 = !(Enemy,AuthorName = "Burn" && Enemy,Name = "Ryu")
trigger1 = !(Enemy,Name = "Vega")
trigger1 = !(Enemy,Name = "M. Bison")
trigger1 = !Time
value = S180,0+(Random%8)
channel = 0

[State 181, PlaySnd]
type = PlaySnd
trigger1 = NumEnemy
trigger1 = Enemy,AuthorName = "Burn" && Enemy,Name = "Ryu"
trigger1 = !Time
value = S180,0+(Random%4)
channel = 0

[State 181, PlaySnd]
type = PlaySnd
trigger1 = NumEnemy
trigger1 = Enemy,Name = "Vega" || Enemy,Name = "M. Bison"
trigger1 = !Time
value = S180,1+(Random%7)
channel = 0

;--------------------------------------------------------------------------------------------------------------------------------------------
;WIN 2
[StateDef 182]
type = S
anim = 182
sprpriority = 1

[State 182, AssertSpecial]
type = AssertSpecial
trigger1 = Time = [0,230]
flag = RoundNotOver

[State 182, PlaySnd]
type = PlaySnd
trigger1 = TeamMode != Simul
trigger1 = Time = 90
value = S189,0
volumescale = 100
channel = -1
persistent = 0

[State 182, PlaySnd]
type = PlaySnd
trigger1 = NumEnemy
trigger1 = !(Enemy,AuthorName = "Burn" && Enemy,Name = "Ryu")
trigger1 = !(Enemy,Name = "Vega")
trigger1 = !(Enemy,Name = "M. Bison")
trigger1 = !Time
value = S180,0+(Random%8)
channel = 0

[State 182, PlaySnd]
type = PlaySnd
trigger1 = NumEnemy
trigger1 = Enemy,AuthorName = "Burn" && Enemy,Name = "Ryu"
trigger1 = !Time
value = S180,0+(Random%4)
channel = 0

[State 182, PlaySnd]
type = PlaySnd
trigger1 = NumEnemy
trigger1 = Enemy,Name = "Vega" || Enemy,Name = "M. Bison"
trigger1 = !Time
value = S180,1+(Random%7)
channel = 0

;--------------------------------------------------------------------------------------------------------------------------------------------
;WIN 3
[StateDef 183]
type = S
anim = 183
sprpriority = -12

[State 183, AssertSpecial]
type = AssertSpecial
trigger1 = Time = [0,230]
flag = RoundNotOver

[State 183, PlaySnd]
type = PlaySnd
trigger1 = TeamMode != Simul
trigger1 = Time = 150
value = S189,0
volumescale = 100
channel = -1
persistent = 0

[State 183, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S183,0
channel = 0

;--------------------------------------------------------------------------------------------------------------------------------------------
;WIN 4
[StateDef 184]
type = S
anim = 184
sprpriority = 1

[State 184, AssertSpecial]
type = AssertSpecial
trigger1 = Time = [0,230]
flag = RoundNotOver

[State 184, PlaySnd]
type = PlaySnd
trigger1 = TeamMode != Simul
trigger1 = Time = 150
value = S189,0
volumescale = 100
channel = -1
persistent = 0

[State 184, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S184,0
channel = 0

;--------------------------------------------------------------------------------------------------------------------------------------------
;WIN 5
[StateDef 185]
type = S
anim = 185
sprpriority = 1

[State 185, AssertSpecial]
type = AssertSpecial
trigger1 = Time = [0,230]
flag = RoundNotOver

[State 185, PlaySnd]
type = PlaySnd
trigger1 = TeamMode != Simul
trigger1 = Time = 150
value = S189,0
volumescale = 100
channel = -1
persistent = 0

[State 185, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S185,0
channel = 0

;--------------------------------------------------------------------------------------------------------------------------------------------
;PRE-INTRO
[StateDef 190]
type = S
ctrl = 0
velset = 0,0

[State 190, ChangeState]
type = ChangeState
trigger1 = NumEnemy
trigger1 = Enemy,AuthorName = "Burn"
trigger1 = Enemy,Name = "Ken"
trigger1 = !(TeamMode = Simul) && !(Enemy,TeamMode = Simul) && RoundNo = 1
trigger1 = !Time
value = 500

[State 190, ChangeState]
type = ChangeState
trigger1 = NumEnemy
trigger1 = Enemy,AuthorName = "Burn"
trigger1 = Enemy,Name = "Ryu"
trigger1 = !(TeamMode = Simul) && !(Enemy,TeamMode = Simul) && RoundNo = 1
trigger1 = !Time
value = 501

[State 190, VarSet]
type = VarSet
trigger1 = 1
var(0) = 0

[State 190, ChangeState]
type = ChangeState
trigger1 = !Time
value = 191+Random%3

;--------------------------------------------------------------------------------------------------------------------------------------------
;INTRO 1
[StateDef 191]
type = S
anim = 191
sprpriority = 0

[State 191, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 191, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S190,0+(Random%6)
channel = 0

[State 191, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0

;--------------------------------------------------------------------------------------------------------------------------------------------
;INTRO 2
[StateDef 192]
type = S
anim = 192
sprpriority = 0

[State 192, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 192, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S190,0+(Random%6)
channel = -1

[State 192, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0

;--------------------------------------------------------------------------------------------------------------------------------------------
;INTRO 3
[StateDef 193]
type = S
physics = N
ctrl = 0
anim = 193
velset = 0,0
sprpriority = 1

[State 193, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 193, ScreenBound]
type = ScreenBound
trigger1 = Anim != 0
value = 0
movecamera = 0,0
[State 193, ScreenBound]
type = ScreenBound
trigger1 = Anim = 0
value = 1
movecamera = 1,0

[State 193, Camera Helper]
type = Helper
trigger1 = !NumHelper(9400)
stateNo = 9400
ID = 9400
name = "Camera"
postype = P1

[State 193, Helper]
type = Helper
trigger1 = !NumHelper(7050)
stateNo = 7050
ID = 7050
name = "Bike1"
postype = P1
facing = 1

[State 193, VarSet]
type = VarSet
trigger1 = NumHelper(7050)
var(0) = 1

[State 193, PosSet]
type = PosSet
trigger1 = Anim = 193 && !Time
x = -800*Facing

[State 193, VelSet]
type = VelSet
trigger1 = Anim = 193 && !Time
x = -(Helper(9400),RootDist X)/90

[State 193, VelSet]
type = VelSet
trigger1 = Anim = 193
trigger1 = NumHelper(9400)
trigger1 = Time > 0 && Helper(9400),RootDist X = [-1,1]
x = 0

[State 193, PosSet]
type = PosSet
trigger1 = Anim = 193
trigger1 = NumHelper(9400)
trigger1 = Time > 0 && Helper(9400),RootDist X = [-1,1]
x = Helper(9400),Pos X

[State 193, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 193
trigger1 = NumHelper(9400)
trigger1 = Time > 0 && Helper(9400),RootDist X = [-1,1]
value = 194

[State 193, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 194 && !AnimTime
value = 195

[State 193, VelAdd]
type = VelAdd
trigger1 = Anim = 194 && AnimElemTime(4) >= 0 && Pos Y < 0
x = .2
y = .5

[State 193, VelSet]
type = VelSet
trigger1 = Anim = 195
x = 0
y = 0

[State 193, PosSet]
type = PosSet
trigger1 = Anim = 195
x = Helper(9400),Pos X
y = 0

[State 193, PlaySnd]
type = PlaySnd
trigger1 = Anim = 193 && !Time
value = S193,0
channel = 3
[State 193, PlaySnd]
type = PlaySnd
trigger1 = Anim = 193 && !Time
value = S193,0
channel = 4
[State 193, PlaySnd]
type = PlaySnd
trigger1 = Anim = 193 && !Time
value = S193,0
channel = 5

[State 191, PlaySnd]
type = PlaySnd
trigger1 = Anim = 195 && AnimElem = 3
value = S190,0+(Random%6)
channel = 0

[State 193, ChangeAnim]
type = ChangeAnim
trigger1 = !AILevel
trigger1 = Anim = 195 && !AnimTime
value = 0

[State 193, ChangeState]
type = ChangeState
trigger1 = AILevel
trigger1 = Anim = 195 && !AnimTime
trigger2 = !AILevel
trigger2 = Anim = 0 && Time > 540; && AnimElem = 1
value = 0

;--------------------------------------------------------------------------------------------------------------------------------------------
;INTRO VS KEN
[StateDef 500]
type = C
physics = N
ctrl = 0
anim = 500
velset = 0,0

[State 500, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 500, AssertSpecial]
type = AssertSpecial
trigger1 = Time < 30
flag = Invisible

[State 500, Helper]
type = Helper
trigger1 = Time = 20
name = "Streak"
ID = 500
stateno = 6241
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1
persistent = 0

[State 500, Explod]
type = Explod
trigger1 = Time = 25
ID = 6018
anim = 6018
postype = P1  ;p2,front,back,left,right
pos = 0,0
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 500, Explod]
type = Explod
trigger1 = Time = 26
ID = 7031
anim = 7031
postype = P1  ;p2,front,back,left,right
pos = 0,0
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 500, EnvShake]
type = EnvShake
trigger1 = Time = 20
time = 20

[State 500, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
statetype = S        ;I,A,H

[State 500, PlaySnd]
type = PlaySnd
trigger1 = Time = 20
value = S1009,2
channel = -1

[State 500, PlaySnd]
type = PlaySnd
trigger1 = Time = 20
value = S3100,4
channel = -1

[State 500, PlaySnd]
type = PlaySnd
trigger1 = Time = 22
value = S1000,2
channel = -1

[State 500, PlaySnd]
type = PlaySnd
trigger1 = Time = 20
value = S1400,1
channel = 2
[State 500, PlaySnd]
type = PlaySnd
trigger1 = Time = 20
value = S1400,1
channel = 3

[State 500, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 18
value = S500,0
channel = 0

[State 500, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0

;--------------------------------------------------------------------------------------------------------------------------------------------
;INTRO VS RYU
[StateDef 501]
type = S
physics = N
ctrl = 0
anim = 501
velset = 0,0

[State 501, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 501, Camera Helper]
type = Helper
trigger1 = Anim = 501
trigger1 = !NumHelper(9400)
stateNo = 9400
ID = 9400
name = "Camera"
postype = P1

[State 501, PosSet]
type = PosSet
trigger1 = Anim = 501
trigger1 = !Time
x = 33*Facing

[State 501, StateTypeSet]
type = StateTypeSet
trigger1 = Anim = 501
trigger1 = AnimElemTime(8) = 0
statetype = A        ;I,A,H

[State 501, VelSet]
type = VelSet
trigger1 = Anim = 501
trigger1 = AnimElemTime(8) = 0
x = (Helper(9400),RootDist X)/-39
y = -10
[State 501, VelSet]
type = VelSet
trigger1 = Anim = 501
trigger1 = AnimElemTime(8) > 0 && Abs(Helper(9400),RootDist X) <= 0
x = 0

[State 501, VelAdd]
type = VelAdd
trigger1 = Anim = 501
trigger1 = AnimElemTime(8) >= 0
y = .5

[State 501, EnvShake]
type = EnvShake
trigger1 = Anim = 501
trigger1 = AnimElemTime(2) = 0
time = 190
ampl = 2
freq = 60

[State 501, Explod]
type = Explod
triggerall = Anim = 501
trigger1 = AnimElemTime(2) = 0
trigger2 = AnimElemTime(2) = 30
trigger3 = AnimElemTime(2) = 60
trigger4 = AnimElemTime(2) = 90
ID = 6850
anim = 6850
pos = 0,20
postype = P1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
supermovetime = 900
pausemovetime = 900
scale = .5,.5
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 501, Helper]
type = Helper
trigger1 = Anim = 501
trigger1 = AnimElem = 8
name = "Dust FX"
ID = 7000
StateNo = 7000
postype = P1    ;p2,front,back,left,right
facing = 1
ownpal = 1

[State 501, PlaySnd]
type = PlaySnd
trigger1 = Anim = 501
trigger1 = AnimElem = 2
value = S500,4
channel = 0
[State 501, PlaySnd]
type = PlaySnd
trigger1 = Anim = 501
trigger1 = AnimElem = 2
value = S500,4
channel = 1

[State 501, PlaySnd]
type = PlaySnd
trigger1 = Anim = 501
trigger1 = AnimElem = 1
value = S3002,4
channel = -1

[State 501, PlaySnd]
type = PlaySnd
trigger1 = Anim = 501
trigger1 = AnimElem = 2
value = S4200,2
channel = 12
[State 501, PlaySnd]
type = PlaySnd
trigger1 = Anim = 501
trigger1 = AnimElem = 2
value = S4200,2
channel = 13

[State 501, PlaySnd]
type = PlaySnd
trigger1 = Anim = 501
trigger1 = AnimElem = 8
value = S40,1
channel = -1

[State 501, ChangeAnim]
type = ChangeAnim
trigger1 = Pos Y >= 0 && Vel Y > 0
trigger1 = AnimElemTime(8) >= 0
value = 47

[State 501, VelSet]
type = VelSet
trigger1 = Anim = 47
x = 0
y = 0

[State 501, StateTypeSet]
type = StateTypeSet
trigger1 = Anim = 47
statetype = C        ;I,A,H

[State 501, Explod]
type = Explod
trigger1 = Anim = 47
trigger1 = AnimElemTime(1) = 0
ID = 7002
anim = 7002
postype = P1  ;p2,front,back,left,right
pos = 3,0
supermovetime = 0
pausemovetime = 0
scale = .5,.5
sprpriority = -2
ownpal = 1

[State 501, PlaySnd]
type = PlaySnd
trigger1 = Anim = 47
trigger1 = AnimElemTime(1) = 0
value = S52,0
channel = -1
lowpriority = 1

[State 501, ChangeState]
type = ChangeState
trigger1 = Anim = 47
trigger1 = !AnimTime
value = 0

;--------------------------------------------------------------------------------------------------------------------------------------------
;STAND JUST DEFEND
[StateDef 700]
type = S
physics = S
movetype = I
anim = 700
velset = 0,0
ctrl = 0
sprpriority = 1
facep2 = 1
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0

[State 700, LifeAdd]
type = LifeAdd
trigger1 = !Time
value = Ceil(Const(Data.Life)*1/100)
absolute = 1
ignorehitpause = 1

[State 700, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 700, Explod]
type = Explod
trigger1 = AnimElem = 2
ID = 7400
anim = 7400
pos = 15,-85
postype = P1  ;p2,front,back,left,right
pausemovetime = -1
scale = .4,.4
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 700, HitBy]
type = HitBy
trigger1 = 1
value = SCA,AT
time = 1

[State 700, PalFX]
type = PalFX
trigger1 = !Time
time = 15
add = 0,30,200
sinadd = 0,-50,60,-255

[State 700, Pause]
type = Pause
trigger1 = !Time
time = 15
movetime = 15

;[State 700, Pause]
;type = Pause
;trigger1 = !Time && NumEnemy
;trigger1 = (EnemyNear,MoveHit = 1)
;time = Cond((EnemyNear,HitPauseTime = [0,15]),15-(EnemyNear,HitPauseTime),0)
;movetime = Cond((EnemyNear,HitPauseTime = [0,15]),15-(EnemyNear,HitPauseTime),0)

[State 700, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S700,0
channel = 0

[State 700, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S700,1+Random%2
channel = -1

[State 700, PosAdd]
type = PosAdd
trigger1 = !Time
x = -3
persistent = 0

[State 700, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 700, Width]
type = Width
trigger1 = 1
edge = 14,0
player = 34,0
ignorehitpause = 1

[State 700, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 151
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;CROUCH JUST DEFEND
[StateDef 701]
type = C
physics = C
movetype = I
anim = 701
velset = 0,0
ctrl = 0
sprpriority = 1
facep2 = 1
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0

[State 701, LifeAdd]
type = LifeAdd
trigger1 = !Time
value = Ceil(Const(Data.Life)*1/100)
absolute = 1
ignorehitpause = 1

[State 701, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoWalk

[State 701, Explod]
type = Explod
trigger1 = AnimElem = 2
ID = 7400
anim = 7400
pos = 10,-40
postype = P1  ;p2,front,back,left,right
pausemovetime = -1
scale = .4,.4
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 701, HitBy]
type = HitBy
trigger1 = 1
value = SCA,AT
time = 1

[State 701, PalFX]
type = PalFX
trigger1 = !Time
time = 15
add = 0,30,200
sinadd = 0,-50,60,-255

[State 701, Pause]
type = Pause
trigger1 = !Time
time = 15
movetime = 15

;[State 701, Pause]
;type = Pause
;trigger1 = !Time && NumEnemy
;trigger1 = (EnemyNear,MoveHit = 1)
;time = Cond((EnemyNear,HitPauseTime = [0,15]),15-(EnemyNear,HitPauseTime),0)
;movetime = Cond((EnemyNear,HitPauseTime = [0,15]),15-(EnemyNear,HitPauseTime),0)

[State 701, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S700,0
channel = 0

[State 701, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S700,1+Random%2
channel = -1

[State 701, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 701, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 153
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;AIR JUST DEFEND
[StateDef 702]
type = A
physics = A
movetype = I
anim = 702
ctrl = 0
sprpriority = 1
facep2 = 1
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0

[State 702, LifeAdd]
type = LifeAdd
trigger1 = !Time
value = Ceil(Const(Data.Life)*1/100)
absolute = 1
ignorehitpause = 1

[State 702, CtrlSet]
type = CtrlSet
trigger1 = Time >= 15
value = 1

[State 702, Explod]
type = Explod
trigger1 = AnimElem = 2
ID = 7400
anim = 7400
pos = 20, -75
postype = P1  ;p2,front,back,left,right
pausemovetime = 60
scale = .4,.4
sprpriority = 5
ownpal = 1

[State 702, HitBy]
type = HitBy
trigger1 = Time < 15
value = SCA,AT
time = 1

[State 702, PalFX]
type = PalFX
trigger1 = !Time
time = 15
add = 0,30,200
sinadd = 0,-50,60,-255

[State 702, Pause]
type = Pause
trigger1 = !Time
time = 15
movetime = 15

[State 702, Pause]
type = Pause
trigger1 = !Time && NumEnemy
trigger1 = (EnemyNear,MoveHit = 1)
time = Cond((EnemyNear,HitPauseTime = [0,15]),15-(EnemyNear,HitPauseTime),0)
movetime = Cond((EnemyNear,HitPauseTime = [0,15]),15-(EnemyNear,HitPauseTime),0)

[State 702, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S700,0
channel = 0

[State 702, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S700,1+Random%2
channel = -1

[State 702, PosFreeze]
type = PosFreeze
trigger1 = Time < 15
value = 1

[State 702, StateTypeSet]
type = StateTypeSet
trigger1 = Time < 15
physics = N         ;A,C,S,N

[State 702, StateTypeSet]
type = StateTypeSet
trigger1 = Time >= 15
physics = A         ;A,C,S,N

[State 702, VelSet]
type = VelSet
trigger1 = Time = 15
x = Cond(Vel X > 2,2,Cond(Vel X < -2,-2,Vel X))
y = Cond(Vel Y < -2,Vel Y,-2)

;--------------------------------------------------------------------------------------------------------------------------------------------
;DODGE
[StateDef 710]
type = S
physics = S
MoveType = I
anim = 710
velset = 0,0
ctrl = 0
sprpriority = 0

[State 710, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
value = SCA
time = 1

[State 710, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 710, AfterImage]
type = AfterImage
trigger1 = Time = 1
time = 6
length = 9
palbright = 0,0,0
palcontrast = 128,128,128
palPostbright = 0,0,0
paladd = 0,0,0
palmul = .9,.9,.9
timegap = 1
framegap = 4
trans = Add1 ;"none","add1","sub"

[State 710, Pause]
type = Pause
trigger1 = NumEnemy
trigger1 = EnemyNear,MoveType = A
trigger1 = P2BodyDist X <= 65
trigger1 = AnimElemTime(5) < 0
trigger1 = Time%2 = 0
time = 4
movetime = 0
pausebg = 1
ignorehitpause = 1

[State 710, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S300,1
channel = -1

[State 710, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S200,1
channel = -1

[State 710, CtrlSet]
type = CtrlSet
trigger1 = Command != "holdback"
trigger1 = AnimElemTime(3) >= 5
value = 1

[State 710, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;FORWARD ROLL
[StateDef 720]
type = S
physics = N
MoveType = I
anim = 720
velset = 0,0
ctrl = 0
sprpriority = 1

[State 720, NotHitBy]
type = NotHitBy
trigger1 = Time <= 20
value = SCA,NA,SA,NP,SP,HP
time = 1

[State 720, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(2) > 0
value = 0

[State 720, AfterImage]
type = AfterImage
trigger1 = Time = 1
time = 6
length = 9
palbright = 0,0,0
palcontrast = 128,128,128
palPostbright = 0,0,0
paladd = 0,0,0
palmul = .9,.9,.9
timegap = 1
framegap = 4
trans = Add1 ;"none","add1","sub"

[State 720, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(2) >= 0
statetype = C       ;S,A,C,L

[State 720, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S720,0
channel = -1

[State 720, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
value = S53,0
channel = -1

[State 720, Width]
type = Width
trigger1 = 1
edge = 38,16
ignorehitpause = 1

[State 720, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 7

[State 720, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 0

[State 720, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = 17

[State 720, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;BACKWARD ROLL
[StateDef 725]
type = C
physics = N
MoveType = I
anim = 720
velset = 0,0
ctrl = 0
sprpriority = 1

[State 725, Turn]
type = Turn
trigger1 = !Time

[State 725, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 7

[State 725, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 0

[State 725, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3
x = 17

[State 725, NotHitBy]
type = NotHitBy
trigger1 = Time <= 20
value = SCA,NA,SA,NP,SP,HP
time = 1

[State 725, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(2) > 0
value = 0

[State 725, Width]
type = Width
trigger1 = 1
edge = 38,16
ignorehitpause = 1

[State 725, AfterImage]
type = AfterImage
trigger1 = Time = 1
time = 6
length = 9
palbright = 0,0,0
palcontrast = 128,128,128
palPostbright = 0,0,0
paladd = 0,0,0
palmul = .9,.9,.9
timegap = 1
framegap = 4
trans = Add1 ;"none","add1","sub"

[State 725, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
value = S720,0
channel = -1

[State 725, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
value = S53,0
channel = -1

[State 725, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;ZERO COUNTER 1
[StateDef 750]
type = S
physics = S
MoveType = A
anim = 750
velset = 0,0
ctrl = 0
facep2 = 1
poweradd = -500

[State 750, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1
ignorehitpause = 1
persistent = 1

[State 750, SuperPause]
type = SuperPause
trigger1 = !Time
time = 16
anim = -1
sound = S750,0
movetime = 16
darken = 0
p2defmul = 1

[State 750, BGPalFX]
type = BGPalFX
trigger1 = !Time
time = 5
add = 100,100,100
mul = 256,256,256
sinadd = -80,-80,-80,10
invertall = 1
color = 0

[State 750, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S750,1
channel = -1

[State 750, Width]
type = Width
trigger1 = 1
edge = 40,0
player = 1,0

[State 750, Explod]
type = Explod
trigger1 = !Time
ID = 7550
anim = 7550
postype = P1  ;p2,front,back,left,right
pos = 0,0
bindtime = 1
supermovetime = 900
pausemovetime = 900
scale = 1,1
sprpriority = -2
ownpal = 1
persistent = 0

[State 750, Explod]
type = Explod
trigger1 = !NumExplod(7100)
trigger1 = !Time
ID = 7100
anim = 7100
pos = 0,-60
postype = P1  ;p2,front,back,left,right
bindtime = 1
removetime = 16
supermovetime = 0
pausemovetime = 900
sprpriority = 5
ownpal = 1

[State 750, ModifyExplod]
type = ModifyExplod
trigger1 = NumExplod(7100)
ID = 7100
scale = .2+(.05*Time),.2+(.05*Time)
trans = AddAlpha
alpha = Ceil(256-(16*Time)),256

[State 750, Explod]
type = Explod
trigger1 = AnimElem = 8
ID = 6100
anim = 6100
postype = P1  ;p2,front,back,left,right
pos = 0,-40
bindtime = 5
supermovetime = 0
pausemovetime = 0
scale = .35,.35
sprpriority = 4
ownpal = 1
ignorehitpause = 0
persistent = 0

[State 750, Helper]
type = Helper
trigger1 = AnimElem = 6
name = "Dust FX"
ID = 7000
StateNo = 7000
postype = P1    ;p2,front,back,left,right
facing = 1
ownpal = 1

[State 750, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(750)
trigger1 = !NumExplod(750)
trigger1 = Target(750),StateType != L
ID = 750
anim = 8100+Random%32
pos = 30+Ceil(P2Dist X/3),-35-(30*(AnimElemTime(8) >= 0))-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 750, HitDef]
type = HitDef
trigger1 = AnimElemTime(6) >= 0
attr = A,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M
animtype = Up          ;light,medium,hard,back,up,diagup
air.animtype = Up
fall.animtype = Up
priority = 9,Hit
damage = 25,1
pausetime = 3,2
sparkno = -1
guard.sparkno = S8501
sparkxy = -30,-50
hitsound = S213,0+(Random%4)
guardsound = S200,2
ground.type = High      ;Low,Trip,None
air.type = High
ground.slidetime = 17
ground.hittime = 100
guard.hittime = 50
yaccel = .5
ground.velocity = -2,-13
air.velocity = Cond(P2Dist X < 2,2,-2),-13
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
p2facing = 1
getpower = 0,0
givepower = 0,10
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 750
persistent = 0

[State 750, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = SCA
time = 25

[State 750, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(6) = 0
statetype = A       ;S,A,C,L
physics = N         ;A,C,S,N

[State 750, VelSet]
type = VelSet
trigger1 = AnimElemTime(6) = 0
x = 3
y = -12

[State 750, VelMul]
type = VelMul
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(10) < 0
x = .95
y = .9

[State 750, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(10) >= 0
y = .5

[State 750, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
value = S1100,1
channel = -1

[State 750, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 7
value = S1100,2
channel = -1

[State 750, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
value = S40,1
channel = 3

[State 750, CtrlSet]
type = CtrlSet
trigger1 = AnimElem = 13
value = 1

[State 750, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
trigger1 = AnimElemTime(5) >= 2
value = 52

;--------------------------------------------------------------------------------------------------------------------------------------------
;ZERO COUNTER 2
[StateDef 751]
type = S
physics = N
MoveType = A
anim = 751
velset = 0,0
ctrl = 0
facep2 = 1
poweradd = -500

[State 751, SuperPause]
type = SuperPause
trigger1 = !Time
time = 16
anim = -1
sound = -1
movetime = 16
darken = 0
p2defmul = 1

[State 751, BGPalFX]
type = BGPalFX
trigger1 = !Time
time = 5
add = 100,100,100
mul = 256,256,256
sinadd = -80,-80,-80,10
invertall = 1
color = 0

[State 751, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1
ignorehitpause = 1
persistent = 1

[State 751, Width]
type = Width
trigger1 = AnimElemTime(5) < 0
edge = 15,0
player = 15,0

[State 751, Width]
type = Width
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(12) < 0
edge = 30,0
player = 20,0

[State 751, Width]
type = Width
trigger1 = AnimElemTime(12) >= 0
edge = 15,0
player = 15,0

[State 751, Explod]
type = Explod
trigger1 = !Time
ID = 7550
anim = 7550
postype = P1  ;p2,front,back,left,right
pos = 0,0
bindtime = 1
supermovetime = 900
pausemovetime = 900
scale = 1,1
sprpriority = -2
ownpal = 1
persistent = 0

[State 751, Explod]
type = Explod
trigger1 = !NumExplod(7100)
trigger1 = !Time
ID = 7100
anim = 7100
pos = 0,-60
postype = P1  ;p2,front,back,left,right
bindtime = 1
removetime = 16
supermovetime = 0
pausemovetime = 900
sprpriority = 5
ownpal = 1

[State 751, ModifyExplod]
type = ModifyExplod
trigger1 = NumExplod(7100)
ID = 7100
scale = .2+(.05*Time),.2+(.05*Time)
trans = AddAlpha
alpha = Ceil(256-(16*Time)),256

[State 751, Explod]
type = Explod
trigger1 = AnimElem = 3
ID = 6070
anim = 6070
postype = P1  ;p2,front,back,left,right
pos = 40,-22
bindtime = 5
vfacing = -1
supermovetime = 0
pausemovetime = 0
scale = .8,.7
sprpriority = 4
ownpal = 1
removeongethit = 1
ignorehitpause = 1
[State 751, Explod]
type = Explod
trigger1 = AnimElem = 9
ID = 6070
anim = 6070
postype = P1  ;p2,front,back,left,right
pos = 55,-20
bindtime = 5
vfacing = -1
supermovetime = 0
pausemovetime = 0
scale = .8,.7
sprpriority = 4
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 751, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(751)
trigger1 = !NumExplod(751)
trigger1 = Target(751),StateType != L
ID = 751
anim = 8100+Random%32
pos = 35+Ceil(P2BodyDist X),-20
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 751, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(752)
trigger1 = !NumExplod(752)
trigger1 = Target(752),StateType != L
ID = 752
anim = 8100+Random%32
pos = 35+Ceil(P2BodyDist X),-20
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 751, HitDef]
type = HitDef
trigger1 = AnimElem = 5
attr = C,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = L
animtype = Medium         ;light,medium,hard,back,up,diagup
air.animtype = Medium
fall.animtype = Medium
priority = 7,Hit
damage = 25,1
pausetime = 2,10
sparkno = -1
guard.sparkno = S8500
sparkxy = -15,0
hitsound = S213,0+(Random%4)
guardsound = S200,2
ground.type = Low      ;Low,Trip,None
air.type = Low
ground.slidetime = 25
ground.hittime = 10
guard.hittime = 10
air.hittime = 100
yaccel = .5
ground.velocity = -1
air.velocity = -1,-4
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -5
fall = 0
fall.recover = 0
air.fall = 1
kill = 0
getpower = 0,0
givepower = 0,5
persistent = 0
hitonce = 1
ID = 751

[State 751, HitDef]
type = HitDef
trigger1 = AnimElem = 11
attr = C,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = L
animtype = Hard          ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 7,Hit
damage = 25,1
pausetime = 10,10
sparkno = -1
guard.sparkno = S8500
sparkxy = -30,0
hitsound = S213,0+(Random%4)
guardsound = S200,2
ground.type = Trip      ;Low,Trip,None
air.type = Low
ground.slidetime = 20
ground.hittime = 50
guard.hittime = 50
air.hittime = 100
yaccel = .5
ground.velocity = -3,-8
air.velocity = -3,-8
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -5
fall = 1
fall.recover = 0
air.fall = 1
getpower = 0,0
givepower = 0,5
p2facing = 1
hitonce = 1
persistent = 0
ID = 752

[State 751, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = SCA
time = 25

[State 751, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S750,0
channel = -1

[State 751, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S750,1
channel = -1

[State 751, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 10
value = S211,0+(Random%2)
channel = -1

[State 751, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;KO
[StateDef 5150]
type = L
movetype = H
physics = N
sprpriority = -1

[State 5150, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5150

[State 5150, VelMul]
type = VelMul
trigger1 = 1
x = .85

[State 5150, VelSet]
type = VelSet
trigger1 = Abs(Vel X) < .05
x = 0

[State 5150, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;HIT FALL RECOVER (Falling)
[StateDef 5200]
type = A
MoveType = H
physics = N

[State 5200, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5035 && !AnimTime
value = 5050

[State 5200, VelAdd]
type = VelAdd
trigger1 = 1
y = GetHitVar(YAccel)

[State 5200, SelfState]
type = SelfState
trigger1 = (Pos Y >= -10) && (Vel Y > 0)
value = 5201

;--------------------------------------------------------------------------------------------------------------------------------------------
;HIT FALL RECOVER (On the Ground)
[StateDef 5201]
type = C
MoveType = I
physics = N
anim = Cond(Vel X > -2,5200,5201)
ctrl = 0
facep2 = 1

[State 5201, AfterImageTime]
type = AfterImageTime
trigger1 = !Time
time = 1
persistent = 0

[State 5201, Explod]
type = Explod
trigger1 = Anim = 5200 && AnimElem = 5
trigger2 = Anim = 5201 && AnimElem = 13
ID = 7002
anim = 7002
postype = P1  ;p2,front,back,left,right
pos = 0,0
supermovetime = 0
pausemovetime = 0
scale = .5,.5
sprpriority = -2
ownpal = 1

[State 5201, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

[State 5201, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 5201, Turn]
type = Turn
trigger1 = !Time
trigger1 = P2Dist X < -5

[State 5201, VelMul]
type = VelMul
trigger1 = 1
x = .95

[State 5201, VelSet]
type = VelSet
trigger1 = Anim = 5201
x = -6

[State 5201, PosAdd]
type = PosAdd
triggerall = Anim = 5200
trigger1 = AnimElem = 2
x = -10
[State 5201, PosAdd]
type = PosAdd
triggerall = Anim = 5200
trigger1 = AnimElem = 3 || AnimElem = 4
x = -30
[State 5201, PosAdd]
type = PosAdd
triggerall = Anim = 5201
trigger1 = AnimElem = 10
x = -10
[State 5201, PosAdd]
type = PosAdd
triggerall = Anim = 5201
trigger1 = AnimElem = 11 || AnimElem = 12
x = -30

[State 5201, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S5201,0
channel = -1

[State 5201, PlaySnd]
type = PlaySnd
trigger1 = Anim = 5200 && AnimElem = 3
trigger2 = Anim = 5201 && AnimElem = 11
value = S40,0
channel = -1

[State 5201, PlaySnd]
type = PlaySnd
trigger1 = Anim = 5200 && AnimElem = 5
trigger2 = Anim = 5201 && AnimElem = 13
value = S52,0
channel = 1

[State 5201, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;TARGET SAFE FALL
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
y = GetHitVar(YAccel)

[State 5205, SelfState (Ground)]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= Const(Movement.Air.GetHit.GroundRecover.Ground.Threshold)
value = 5200

[State 5205, SelfState (Air)]
type = SelfState
trigger1 = Time >= 60
value = 5210

;--------------------------------------------------------------------------------------------------------------------------------------------
;HIT AIR FALL RECOVER
[StateDef 5210]
type = A
MoveType = I
physics = N
anim = 5210
ctrl = 0
facep2 = 1

[State 5210, CtrlSet]
type = CtrlSet
trigger1 = Time >= 14
value = 1

[State 5210, NotHitBy]
type = NotHitBy
trigger1 = Time < 14
value = SCA
time = 1

[State 5210, VelAdd]
type = VelAdd
trigger1 = 1
y = .6

[State 5210, VelSet]
type = VelSet
trigger1 = !Time
x = Cond((Command = "holdfwd" && Command != "holdback"),0,Cond((Command != "holdfwd" && Command = "holdback"),-4,-2))
y = -7.55

[State 5210, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 52

;--------------------------------------------------------------------------------------------------------------------------------------------
;DIZZY
[StateDef 5300]
type = S
movetype = H
physics = S
ctrl = 0
anim = 5300
velset = 0,0

[State 5300, ChangeState]
type = ChangeState
trigger1 = Time >= 150
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;CONTINUE?
[StateDef 5500]
type = S
ctrl = 0
anim = 5500
velset = 0,0

[State 5500, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5500

;--------------------------------------------------------------------------------------------------------------------------------------------
;INITIALIZE (start of the round)
[statedef 5900]
type = S

[state 5900, VarRangeSet]
type = VarRangeSet
trigger1 = !RoundsExisted && MatchNo = 1
value = 0
[state 5900, VarRangeSet]
type = VarRangeSet
trigger1 = !RoundsExisted && MatchNo = 1
fvalue = 0

[State 5900, VarSet]
type = VarSet
trigger1 = 1
var(36) = 1

; If value = 1 Palette Selector is ON
; If value = 0 Palette Selector is OFF 
 
 
[State 5900, Helper]
type = Helper
triggerall = Var(36) && !NumHelper(12345) && !AILevel && NumEnemy 
trigger1 = RoundNo = 1 && MatchNo = 1 && !(TeamMode = Simul) && !(Enemy,TeamMode = Simul)
trigger2 = !Var(35) 
trigger3 = (TeamMode = Turns)
trigger3 = !RoundsExisted && (Enemy,RoundsExisted)
ID = 12345
StateNo = 12345
facing = Facing
ownpal = 1
size.xscale = .25
size.yscale = .25

[state 5900, RemapPal]
type = RemapPal
trigger1 = !Var(36) || AILevel
source = 1,1
dest = 1,PalNo
ignorehitpause = 1

[State 5900, ChangeState]
type = ChangeState
trigger1 = RoundNo = 1
value = 190

[State 5900, ChangeState]
type = ChangeState
trigger1 = !RoundsExisted
trigger1 = TeamMode = Turns
value = 190

[State 5900, ChangeState]
type = ChangeState
trigger1 = 1
value = 0

;--------------------------------------------------------------------------------------------------------------------------------------------
;GUARD CRUSH
[StateDef 5950]
type = S
MoveType = H
physics = S
anim = 5950
velset = 0,0

[State 5950, Explod]
type = Explod
trigger1 = AnimElem = 6
ID = 7002
anim = 7002
postype = P1  ;p2,front,back,left,right
pos = 0,0
supermovetime = 0
pausemovetime = 0
scale = .5,.5
sprpriority = -2
ownpal = 1

[State 5950, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 6
value = S54,0
channel = 1

[State 5950, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 5950, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 5950, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = Cond(Alive,5110,5150)
ctrl = 0

;--------------------------------------------------------------------------------------------------------------------------------------------
[StateDef -2]

;-------------------------------------------------------------------------------------------------------------------------------------------
;XCOSTUME
[state -2, No Clones]
type = RemapPal
triggerall = NumEnemy && (Var(35) = [1,24])  ;Var(35) = the number of pals available 
trigger1 = Var(36) && !NumHelper(12345) && MatchNo = 1 && RoundNo = 1
trigger1 = Enemy,AuthorName = "Burn" && Enemy,Name = "Guile" && Enemy,Var(35) = Var(35) 
source = 1,1
dest = 1,Cond(TeamSide != 1 && EnemyNear,NumHelper(12345) = 0,Enemy,Var(35)+TeamSide,Var(35))
ignorehitpause = 1

[state -2, Palette]
type = VarSet
trigger1 = NumHelper(12345)
trigger1 = Helper(12345),Var(35) = [1,24]
var(35) = Helper(12345),Var(35)
ignorehitpause = 1

[state -2, Palette Selection]
type = RemapPal
trigger1 = NumHelper(12345)
trigger1 = Helper(12345),Var(35) = [1,24]
source = 1,1
dest = 1,Var(35)
ignorehitpause = 1

[state -2, Continue Palette]
type = RemapPal
trigger1 = Var(36) && !AILevel && MatchNo > 1
source = 1,1
dest = 1,Var(35)
ignorehitpause = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;BODY WIND
[State -2, Explod]
type = Explod
trigger1 = MoveType != H
trigger1 = Anim != 170 && Anim != 175
trigger1 = !(StateNo = 500 && Time < 30)
trigger1 = !(Anim = 3400 && AnimElemTime(4) >= 0 && AnimElemTime(17) < 0)
trigger1 = !(Anim = 3430 && AnimElemTime(14) < 0)
trigger1 = StateNo != [4202,4208]
trigger1 = !(Anim = 4209 && AnimElemTime(4) < 0)
trigger1 = StateNo != 5120
trigger1 = StateNo != [1251101,1251133]
trigger1 = NumExplod(6080) < 1
trigger1 = Time%10 = 0
ID = 6080
anim = 6080+Random%4
pos = Var(30),Var(31)
postype = P1
bindtime = 5
facing = Cond(Random < 500,1,-1)
random = Abs(Var(32)),Abs(Var(33))
scale = .25,.25
pausemovetime = -1
supermovetime = -1
sprpriority = Cond(Random >= 600,2,-2)
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State -2, Explod]
type = Explod
trigger1 = StateNo = 4209
trigger1 = AnimElemTime(4) < 0
trigger1 = NumExplod(6080) < 1
trigger1 = Time%10 = 0
ID = 6080
anim = 6080+Random%4
pos = Var(30),Var(31)
postype = P1
bindtime = 5
facing = Cond(Random < 500,1,-1)
random = Abs(Var(32)),Abs(Var(33))
scale = 1,1
pausemovetime = -1
supermovetime = -1
sprpriority = Cond(Random >= 600,41,39)
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State -2, RemoveExplod]
type = RemoveExplod
trigger1 = Anim = 3103 && AnimElemTime(1) > 5 && AnimElemTime(10) < 0
trigger2 = Anim = 3203 && AnimElemTime(6) > 0
trigger3 = StateNo = [3204,3205]
ID = 6080

[State -2, VarSet]
type = VarSet
trigger1 = 1
var(30) = 1
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = Anim = 4209 && AnimElemTime(4) < 0
var(30) = 80
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = Anim = 744 && AnimElemTime(10) >= 0
trigger2 = (StateNo = 1300 || StateNo = 1310) && AnimElemTime(3) >= 0
var(30) = 60
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = Anim = 223 && AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
trigger2 = Anim = 3200 && AnimElemTime(29) >= 0 && AnimElemTime(30) < 0
trigger3 = (Anim = [3201,3202]) && AnimElemTime(42) >= 0 && AnimElemTime(43) < 0
var(30) = 50
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = Anim = 61 && AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
var(30) = 45
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = (Anim = 210 || Anim = 1007) && AnimElemTime(3) >= 0 && AnimElemTime(8) < 0
trigger2 = Anim = 223 && AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
trigger3 = Anim = 1005 && AnimElemTime(3) >= 0 && AnimElemTime(5) < 0
trigger4 = (Anim = [3200,3202]) && AnimElemTime(7) >= 0 && AnimElemTime(11) < 0
var(30) = 40
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = Anim = 720 && AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
trigger2 = Anim = 800 && AnimElemTime(3) >= 0 && AnimElemTime(5) < 0
trigger3 = Anim = 1303 && AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
trigger4 = Anim = 1703 && AnimElemTime(2) < 0
trigger5 = Anim = 3200 && AnimElemTime(28) >= 0 && AnimElemTime(29) < 0
trigger6 = (Anim = [3201,3202]) && AnimElemTime(41) >= 0 && AnimElemTime(42) < 0
trigger7 = Anim = 3206 && AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
var(30) = 35
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = Anim = 220 && AnimElemTime(2) >= 0 && AnimElemTime(7) < 0
trigger2 = Anim = 231 && AnimElemTime(2) >= 0 && AnimElemTime(5) < 0
trigger3 = Anim = 742 && AnimElemTime(10) >= 0
trigger4 = Anim = 820 && AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
trigger5 = Anim = 1005 && AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
trigger6 = Anim = 3206 && AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
var(30) = 30
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = Anim = 223 && AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
trigger2 = Anim = 810 && AnimElemTime(8) >= 0 && AnimElemTime(11) < 0
trigger3 = (Anim = [3200,3202]) && AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
trigger4 = (Anim = [3200,3202]) && AnimElemTime(11) >= 0 && AnimElemTime(12) < 0
trigger5 = Anim = 3200 && AnimElemTime(30) >= 0 && AnimElemTime(31) < 0
trigger6 = (Anim = [3201,3202]) && AnimElemTime(43) >= 0 && AnimElemTime(44) < 0
var(30) = 25
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = (Anim = 105 && AnimElemTime(4) >= 0)
trigger2 = Anim = 212 || Anim = 221 || (Anim = 440 && AnimElemTime(3) >= 0 && AnimElemTime(6) < 0)
trigger3 = Anim = 450 && AnimElemTime(9) >= 0 && AnimElemTime(12) < 0
trigger4 = Anim = 743 && AnimElemTime(10) >= 0
trigger5 = Anim = 720 && AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
trigger6 = Anim = 751 && AnimElemTime(11) >= 0 && AnimElemTime(14) < 0
trigger7 = Anim = 1006 || Anim = 1011
trigger8 = Anim = 1703 && AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
trigger9 = (Anim = 3002 && AnimElemTime(2) < 0) || Anim = 3003
trigger10 = (Anim = [3200,3202]) && AnimElemTime(12) >= 0 && AnimElemTime(17) < 0
trigger11 = (Anim = [3300,3302]) && AnimElemTime(3) < 0
var(30) = 20
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = Anim = 100
trigger2 = Anim = 720 && AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
trigger3 = Anim = 1005 && AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
trigger4 = Anim = 1005 && AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
trigger5 = Anim = 1303 && AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
trigger6 = (Anim = [3200,3202]) && AnimElemTime(2) >= 0 && AnimElemTime(5) < 0
var(30) = 15
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = (Anim = [102,103]) || (Anim = 105 && AnimElemTime(4) < 0) || Anim = 106
trigger2 = Anim = 183 || Anim = 184 || Anim = 185
trigger3 = Anim = 191 || (Anim = 192 && AnimElemTime(2) >= 0)
trigger4 = (Anim = 223 && AnimElemTime(2) < 0) || Anim = 230 || Anim = 240 || Anim = 242 || Anim = 250
trigger5 = (Anim = 251 && AnimElemTime(2) >= 0) || (Anim = 410)
trigger6 = Anim = 420 || Anim = 430 || (Anim = 450 && AnimElemTime(9) < 0)
trigger7 = Anim = 650 && AnimElemTime(4) >= 0 && AnimElemTime(8) < 0
trigger8 = Anim = 750 && AnimElemTime(3) >= 0 && AnimElemTime(7) < 0
trigger9 = Anim = 751 && AnimElemTime(9) >= 0 && AnimElemTime(11) < 0
trigger10 = Anim = 800 && AnimElemTime(3) < 0
trigger11 = Anim = 800 && AnimElemTime(5) >= 0
trigger12 = Anim = 810 && AnimElemTime(7) >= 0
trigger13 = Anim = 820 && AnimElemTime(3) >= 0 && AnimElemTime(8) < 0
trigger14 = Anim = 820 && AnimElemTime(9) >= 0 && AnimElemTime(10) < 0
trigger15 = Anim = 900
trigger16 = Anim = 1005 && AnimElemTime(6) >= 0
trigger17 = StateNo = 1100 && AnimElemTime(5) < 0
trigger18 = (StateNo = 1200 || StateNo = 1210) && AnimElemTime(6) >= 0
trigger19 = (StateNo = 1400 || StateNo = 1410) && AnimElemTime(10) >= 0 && AnimElemTime(12) < 0
trigger20 = (Anim = 1500 || Anim = 1510 || Anim = 1511) && AnimElemTime(2) < 0
trigger21 = (Anim = 3100 && AnimElemTime(3) >= 0 && AnimElemTime(6) < 0)
trigger22 = (Anim = 3100 && AnimElemTime(29) >= 0 && AnimElemTime(32) < 0)
trigger23 = ((Anim = [3200,3202]) && AnimElemTime(2) < 0)
trigger24 = (Anim = [3200,3202]) && AnimElemTime(23) >= 0 && AnimElemTime(26) < 0
trigger25 = Anim = 3200 && AnimElemTime(27) >= 0 && AnimElemTime(28) < 0
trigger26 = (Anim = [3201,3202]) && AnimElemTime(26) >= 0 && AnimElemTime(31) < 0
trigger27 = (Anim = [3201,3202]) && AnimElemTime(40) >= 0 && AnimElemTime(41) < 0
trigger28 = Anim = 3400 && AnimElemTime(20) >= 0 && AnimElemTime(24) < 0
var(30) = 10
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = (Anim = [0,20]) || Anim = 40 || (Anim = [47,48]) || Anim = 60
trigger2 = Anim = 61 && AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
trigger3 = Anim = 62 && AnimElemTime(4) < 0
trigger4 = Anim = 101 || Anim = 122 || Anim = 132 || Anim = 142 || Anim = 152 || (Anim = 223 && AnimElemTime(5) >= 0)
trigger5 = Anim = 600 || Anim = 610 || Anim = 620 || (Anim = 702 && AnimElemTime(5) < 0)
trigger6 = Anim = 751 && AnimElemTime(3) >= 0 && AnimElemTime(9) < 0
trigger7 = (StateNo = 1000 || StateNo = 1010 || Anim = 3000 || Anim = 3004) && AnimElemTime(3) >= 0
trigger8 = Anim = 1641 && AnimElemTime(3) < 0
trigger9 = Anim = 1703 && AnimElemTime(6) >= 0
trigger10 = Anim = 3100 && (AnimElemTime(3) < 0 || AnimElem = 15 || (AnimElemTime(27) >= 0 && AnimElemTime(29) < 0))
trigger11 = Anim = 3102 && AnimElemTime(4) < 0
trigger12 = (Anim = [3200,3202]) && AnimElemTime(21) >= 0 && AnimElemTime(23) < 0
trigger13 = Anim = 3200 && AnimElemTime(31) >= 0
trigger14 = (Anim = [3201,3202]) && AnimElemTime(31) >= 0 && AnimElemTime(33) < 0
trigger15 = (Anim = [3201,3202]) && AnimElemTime(44) >= 0
trigger16 = Anim = 3206 && AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
var(30) = 5
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = Anim = 121 || Anim = 131 || Anim = 141 || Anim = 151
trigger2 = Anim = 631 && AnimElemTime(4) < 0
trigger3 = Anim = 701 || Anim = 710 || Anim = 740
trigger4 = (Anim = 750 || 751) && AnimElemTime(3) < 0
trigger5 = Anim = 820 && AnimElemTime(14) >= 0
trigger6 = Anim = 3103 && AnimElemTime(10) >= 0 && AnimElemTime(13) < 0
trigger7 = Anim = 3206 && AnimElemTime(4) >= 0 && AnimElemTime(6) < 0
var(30) = -5
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = Anim = 120 || Anim = 140 || Anim = 194 || Anim = 241 || (Anim = 640 && AnimElemTime(4) < 0)
trigger2 = Anim = 700 && AnimElemTime(2) < 0
trigger3 = Anim = 810 && AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
trigger4 = Anim = 820 && AnimElemTime(10) >= 0 && AnimElemTime(11) < 0
trigger5 = (StateNo = 1400 || StateNo = 1410) && AnimElemTime(2) >= 0 && AnimElemTime(5) < 0
trigger6 = (StateNo = 1400 || StateNo = 1410) && AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
trigger7 = Anim = 1630 && AnimElemTime(10) < 0
trigger8 = Anim = 1631 && AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
trigger9 = Anim = 1631 && AnimElemTime(5) < 0
trigger10 = Anim = 1641 && AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
var(30) = -10
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = (StateNo = 1200 || StateNo = 1210 || Anim = 3001) && AnimElemTime(4) < 0
trigger2 = Anim = 1630 && AnimElemTime(10) >= 0
trigger3 = Anim = 1631 && AnimElemTime(2) < 0
var(30) = -15
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = Anim = 130 || Anim = 150
trigger2 = Anim = 700 && AnimElemTime(2) >= 0
trigger3 = Anim = 810 && AnimElemTime(5) >= 0
var(30) = -20
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = Anim = 1641 && AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
trigger2 = Anim = 1641 && AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
var(30) = -25
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = Anim = 820 && AnimElemTime(11) >= 0 && AnimElemTime(12) < 0
trigger2 = Anim = 1641 && AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
var(30) = -30
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = Anim = 820 && AnimElemTime(12) >= 0 && AnimElemTime(14) < 0
var(30) = -40
ignorehitpause = 1

;--------------------------------------;

[State -2, VarSet]
type = VarSet
trigger1 = StateType = S
var(31) = -40
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = StateType = C
var(31) = -20
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = StateType = A
trigger2 = Anim = 744 && AnimElemTime(10) >= 0
var(31) = -60
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = Anim = 4209 && AnimElemTime(4) < 0
var(31) = -200
ignorehitpause = 1

;--------------------------------------;

[State -2, VarSet]
type = VarSet
trigger1 = 1
var(32) = 30
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = StateType = S
var(33) = 70
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = StateType != S
var(33) = 20
ignorehitpause = 1

;-------------------------------------------------------------------------------------------------------------------------------------------

[State -2, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoAirGuard

[State -2, NotHitBy]
type = NotHitBy
trigger1 = StateNo = [180,199]
value = SCA
time = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;KO Velocity Cancel
[State -2, VarSet]
type = VarSet
trigger1 = 1
var(39) = 0

[State -2, VarSet]
type = VarSet
triggerall = RoundState = 3
triggerall = NumEnemy
triggerall = !EnemyNear,Alive
trigger1 = Win
trigger2 = NumHelper(7900)
trigger3 = NumHelper(7925)
trigger4 = NumHelper(7950)
var(39) = 1
ignorehitpause = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;KO SOUND
[State -2, KO sound]
type = PlaySnd
trigger1 = !Alive && (Var(21) != -999)
trigger1 = Var(21) := -999
value = 5400,Random%2

[State -2, AfterImageTime]
type = AfterImageTime
trigger1 = PrevStateNo = 0
trigger1 = StateNo != [1000,1999]
trigger1 = StateNo != [3000,4999]
time = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;AI SPAM BLOCK
[State -2, VarSet]
type = VarSet
trigger1 = Ctrl
trigger1 = PrevStateNo = [10,12]
var(41) = 10
[State -2, VarSet]
type = VarSet
trigger1 = Ctrl
trigger1 = PrevStateNo != [200,899]
var(41) = 0
[State -2, VarSet]
type = VarSet
trigger1 = Ctrl
trigger1 = PrevStateNo = 200
var(41) = 200
[State -2, VarSet]
type = VarSet
trigger1 = Ctrl
trigger1 = PrevStateNo = 220
var(41) = 220
[State -2, VarSet]
type = VarSet
trigger1 = Ctrl
trigger1 = PrevStateNo = 230
var(41) = 230
[State -2, VarSet]
type = VarSet
trigger1 = Ctrl
trigger1 = PrevStateNo = 250
var(41) = 250
[State -2, VarSet]
type = VarSet
trigger1 = Ctrl
trigger1 = PrevStateNo = 410
var(41) = 410
[State -2, VarSet]
type = VarSet
trigger1 = Ctrl
trigger1 = PrevStateNo = 420
var(41) = 420
[State -2, VarSet]
type = VarSet
trigger1 = Ctrl
trigger1 = PrevStateNo = 440
var(41) = 440
;[State -2, VarSet]
;type = VarSet
;trigger1 = Ctrl
;trigger1 = PrevStateNo = 450
;var(41) = 450
[State -2, VarSet]
type = VarSet
trigger1 = Ctrl
trigger1 = PrevStateNo = 600
var(41) = 600
[State -2, VarSet]
type = VarSet
triggerall = Ctrl
trigger1 = PrevStateNo = 800
trigger2 = PrevStateNo = 890
trigger3 = PrevStateNo = 895
var(41) = 800

[State -2, VarSet]
type = VarSet
triggerall = Ctrl
trigger1 = PrevStateNo = 1200
trigger2 = PrevStateNo = 1210
var(41) = 1200

[State -2, RemoveExplod]
type = RemoveExplod
triggerall = NumEnemy
trigger1 = EnemyNear,StateNo != 3255
trigger2 = EnemyNear,Ctrl
ID = 7200
ignorehitpause = 1

[State -2, TargetDrop]
type = TargetDrop
trigger1 = PrevStateNo = 3700 && MoveType = H
excludeID = -1
keepone = 0
ignorehitpause = 1
persistent = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;EXPLODSIVE BUFFERING HELPER
[State -2, EXPLODsive Buffering Helper]
type = Helper
trigger1 = !NumHelper(90000005)
StateNo = 90000005
ID = 90000005
name = "EXPLODsive Buffering helper"
postype = P1
facing = Cond(Facing = 1,1,-1)
keyCtrl = 1
ignoreHitPause = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;SPECIAL COMPATIBIILITY/PalFX

;this resets the var so he will go to state 5170 correctly in all instances
[State -2, System Variable Set]
type = VarSet
trigger1 = StateType = S || Statetype = C
sysvar(0) = 0
ignorehitpause = 1

[State -2, Sealed by Chizuru's Reigi no Ishizue]
type = PalFX
trigger1 = NumProjID(131035)
trigger1 = GameTime%2 = 1
time = 1
add = 0,0,92
sinAdd = 0,0,0,0
color = 0
invertAll = 0
color = 256
ignoreHitPause = 1

;=============== Applying various status to opponent outside of custom states================
[State -2, AssertSpecial]
type = AssertSpecial
trigger1 = Enemy,NumExplod(99980000);create this explod ID and the opponent will become Invisible if compatible
flag = Invisible
ignorehitpause = 1

[State -2, CtrlSet]
type = CtrlSet
trigger1 = Enemy,NumExplod(99980001);create this explod ID and the opponent will lose ctrl if compatible
value = 0

[State -2, CtrlSet]
type = CtrlSet
trigger1 = Enemy,NumExplod(99980002);create this explod ID and the opponent will gain ctrl if compatible
value = 1



;===============Pal FX applied by opponent================
;MUGEN does not allow us to give P2 a PalFX outside of a custom state so this work around was developed
;Use these expod ID ranges for their corresponding fx 
;these are more SNK style with inverted colors
;99991000 = Fire by O Illusionista
;99991001 = Ice by O Illusionista
;99991002 = Green Poison by O Illusionista
;99991003 = Purple Poison by O Illusionista
;99991004 = Blue Shock by O Illusionista
;99991005 = B&W Shock by O Illusionista
;99991006 = Evil Red by O Illusionista
;99991007 = Evil Purple by O Illusionista
;99991008 = Slow Pulse Fire by Elix
;99991009 = Yellow/Orange Burn by Sander71113
;99991010 = Blue/Violet/Crimson Burn  by Sander71113
;99991011 = Red/Blood Burn by Sander71113
;99991012 = Dust/Gray Burn by Sander71113
;99991013 = Fade to Darker fade to brighter by Odb718
;99991014 = Black and White Negative by Odb718
;99991015 = Rainbow by altoiddealer
;99991016 = White
;99991017 = Red
;99991018 = Blue
;99991019 = Green
;99991020 = Yellow
;99991021 = Pink
;99991022 = Light Blue
;99991023 = Black

;these make the fx not inverted more like Capcom
;99992000 = Fire by O Illusionista
;99992001 = Ice by O Illusionista
;99992002 = Green Poison by O Illusionista
;99992003 = Purple Poison by O Illusionista
;99992004 = Blue Shock by O Illusionista
;99992005 = B&W Shock by O Illusionista
;99992006 = Evil Red by O Illusionista
;99992007 = Evil Purple by O Illusionista
;99992008 = Slow Pulse Fire by Elix
;99992009 = Yellow/Orange Burn by Sander71113
;99992010 = Blue/Violet/Crimson Burn  by Sander71113
;99992011 = Red/Blood Burn by Sander71113
;99992012 = Dust/Gray Burn by Sander71113
;99992013 = Fade to Darker fade to brighter by Odb718
;99992014 = Black and White Negative by Odb718
;99992015 = Rainbow by altoiddealer

[State -2, SNK Fire PalFX]
type = PalFX
trigger1 = Enemy,NumExplod(99991000)
time = 1
add = Ceil(240+110*Sin(2*Pi*GameTime/10)),Ceil(50+55*Sin(2*Pi*GameTime/10)),Ceil(120+85*Sin(2*Pi*GameTime/10))
mul = 250,224,120 
color = 0 
invertall = 1 
ignorehitpause = 1

[State -2, SNK Ice PalFX]
type = PalFX
trigger1 = Enemy,NumExplod(99991001)
time = 1
add = Ceil(0+85*Sin(2*Pi*GameTime/10)),Ceil(50+55*Sin(2*Pi*GameTime/10)),Ceil(240+110*Sin(2*Pi*GameTime/10))
mul = 120,224,150 
color = 0 
invertall = 1 
ignorehitpause = 1

[State -2, SNK Green Poison PalFX]
type = PalFX
trigger1 = Enemy,NumExplod(99991002)
time = 1
add = Ceil(0+85*Sin(2*Pi*GameTime/10)),Ceil(100+110*Sin(2*Pi*GameTime/10)),Ceil(50+55*Sin(2*Pi*GameTime/10))
mul = 20,120,24 
color = 0 
invertall = 1 
ignorehitpause = 1

[State -2, SNK Purple Poison PalFX]
type = PalFX
trigger1 = Enemy,NumExplod(99991003)
time = 1
add = Ceil(100+85*Sin(2*Pi*GameTime/10)),Ceil(0+110*Sin(2*Pi*GameTime/10)),Ceil(100+55*Sin(2*Pi*GameTime/10))
mul = 120,20,124 
color = 0 
invertall = 1 
ignorehitpause = 1

[State -2, SNK Blue Shock PalFX]
type = PalFX
trigger1 = Enemy,NumExplod(99991004)
time = 1
add = Ceil(100 -80*Sin(2*Pi*GameTime/10)),Ceil(100 -80*Sin(2*Pi*GameTime/10)),Ceil(180 -80*Sin(2*Pi*GameTime/10))
color = 0 
invertall = 1
ignorehitpause = 1

[State -2, SNK B&W Shock PalFX]
type = PalFX
trigger1 = Enemy,NumExplod(99991005)
time = 1
add = Ceil(100 -80*Sin(2*Pi*GameTime/10)),Ceil(100 -80*Sin(2*Pi*GameTime/10)),Ceil(100 -80*Sin(2*Pi*GameTime/10))
color = 0 
invertall = 1
ignorehitpause = 1

[State -2, SNK Evil Red PalFX]
type = PalFX
trigger1 = Enemy,NumExplod(99991006)
time = 1
add = Ceil(0+40*Sin(2*Pi*GameTime/10)),Ceil(-200+80*Sin(2*Pi*GameTime/10)),Ceil(-200+40*Sin(2*Pi*GameTime/10))
color = 0 
invertall = 1
ignorehitpause = 1

[State -2, SNK Evil Purple PalFX]
type = PalFX
trigger1 = Enemy,NumExplod(99991007)
time = 1
add = Ceil(0+40*Sin(2*Pi*GameTime/10)),Ceil(-200+80*Sin(2*Pi*GameTime/10)),Ceil(0+40*Sin(2*Pi*GameTime/10))
color = 0 
invertall = 1
ignorehitpause = 1

[State -2, SNK Slow Pulse Fire PalFX]
type = PalFX
trigger1 = Enemy,NumExplod(99991008)
time = 1
add = Ceil(224 -160*Sin(2*Pi*GameTime/14)),Ceil(68 -160*Sin(2*Pi*GameTime/14)),Ceil(-40 -160*Sin(2*Pi*GameTime/14))
mul = 256,192,128
color = 0
invertall = 1
ignorehitpause = 1

[State -2, SNK Yellow/Orange Burn PalFX]
type = PalFX
trigger1 = Enemy,NumExplod(99991009)
time = 1
add = Ceil(40+40*Sin(2*Pi*GameTime/10)),Ceil(-70+30*Sin(2*Pi*GameTime/10)),Ceil(-200+0*Sin(2*Pi*GameTime/10))
color     = 0                                             
invertall = 1   
ignorehitpause = 1

[State -2, SNK Blue/Violet/Crimson Burn PalFX]
type = PalFX
trigger1 = Enemy,NumExplod(99991010)
time = 1
add = Ceil(-104+56*Sin(2*Pi*GameTime/10)),Ceil(-104+56*Sin(2*Pi*GameTime/10)),Ceil(7+0*Sin(2*Pi*GameTime/10))
color     = 0
invertall = 1
ignorehitpause = 1

[State -2, SNK Red/Blood Burn PalFX]
type = PalFX
trigger1 = Enemy,NumExplod(99991011)
time = 1
add = Ceil(7+30*Sin(2*Pi*GameTime/10)),Ceil(-200+30*Sin(2*Pi*GameTime/10)),Ceil(-200+0*Sin(2*Pi*GameTime/10))
color     = 0                                            
invertall = 1  
ignorehitpause = 1

[State -2, SNK Dust/Gray Burn PalFX]
type = PalFX
trigger1 = Enemy,NumExplod(99991012)
time = 1
add = Ceil(-100 -10*Sin(2*Pi*GameTime/10)),Ceil(-100 -10*Sin(2*Pi*GameTime/10)),Ceil(-100 -10*Sin(2*Pi*GameTime/10))
color     = 0
invertall = 1
ignorehitpause = 1

[State -2, SNK Fade to Darker fade to brighter PalFX]
type = PalFX
trigger1 = Enemy,NumExplod(99991013)
time = 1
add = Ceil(0 -65*Sin(2*Pi*GameTime/26)),Ceil(0 -65*Sin(2*Pi*GameTime/26)),Ceil(0 -65*Sin(2*Pi*GameTime/26))
mul = 164,164,164
invertall = 1
color = 256
ignorehitpause = 1

[State -2, SNK Black and White Negative PalFX]
type = PalFX
trigger1 = Enemy,NumExplod(99991014)
time = 1
add = Ceil(0+55*Sin(2*Pi*GameTime/10)),Ceil(0+55*Sin(2*Pi*GameTime/10)),Ceil(0+55*Sin(2*Pi*GameTime/10))
mul = 200,200,200
invertall = 1
color = 0 
ignorehitpause = 1

[State -2, SNK Rainbow PalFX]
type = PalFX
trigger1 = Enemy,NumExplod(99991015)
time = 1
add = Floor(Sin(GameTime/8)*64),Floor(Sin((GameTime-85)/8)*64),Floor(Sin((GameTime-170)/8)*64)
invertall = 1 
ignorehitpause = 1

[State -2, White PalFX]
type = PalFX
trigger1 = Enemy,NumExplod(99991016)
time = 1
add = 256,256,256
mul = 256,256,256
sinadd = 0,0,0,1
invertall = 0
color = 256
ignorehitpause = 1

[State -2, Red PalFX]
type = PalFX
trigger1 = Enemy,NumExplod(99991017)
time = 1
add = 256,0,0
mul = 256,0,0
sinadd = 0,0,0,1
invertall = 0
color = 256
ignorehitpause = 1

[State -2, Blue PalFX]
type = PalFX
trigger1 = Enemy,NumExplod(99991018)
time = 1
add = 0,0,256
mul = 0,0,256
sinadd = 0,0,0,1
invertall = 0
color = 256
ignorehitpause = 1

[State -2, Green PalFX]
type = PalFX
trigger1 = Enemy,NumExplod(99991019)
time = 1
add = 0,256,0
mul = 0,256,0
sinadd = 0,0,0,1
invertall = 0
color = 256
ignorehitpause = 1

[State -2, Yellow PalFX]
type = PalFX
trigger1 = Enemy,NumExplod(99991020)
time = 1
add = 256,256,0
mul = 256,256,0
sinadd = 0,0,0,1
invertall = 0
color = 256
ignorehitpause = 1

[State -2, Pink PalFX]
type = PalFX
trigger1 = Enemy,NumExplod(99991021)
time = 1
add = 256,0,256
mul = 256,0,256
sinadd = 0,0,0,1
invertall = 0
color = 256
ignorehitpause = 1

[State -2,Light Blue PalFX]
type = PalFX
trigger1 = Enemy,NumExplod(99991022)
time = 1
add = 0,256,256
mul = 0,256,256
sinadd = 0,0,0,1
invertall = 0
color = 256
ignorehitpause = 1

[State -2, Black PalFX]
type = PalFX
trigger1 = Enemy,NumExplod(99991023)
time = 1
add = 256,256,256
mul = 0,0,0
sinadd = 0,0,0,1
invertall = 0
color = 256
ignorehitpause = 1

[State -2, CAPCOM Fire PalFX]
type = PalFX
trigger1 = Enemy,NumExplod(99992000)
time = 1
add = Ceil(240+110*Sin(2*Pi*GameTime/10)),Ceil(50+55*Sin(2*Pi*GameTime/10)),Ceil(120+85*Sin(2*Pi*GameTime/10))
mul = 250,224,120 
color = 0 
invertall = 0
ignorehitpause = 1

[State -2, CAPCOM Ice PalFX]
type = PalFX
trigger1 = Enemy,NumExplod(99992001)
time = 1
add = Ceil(0+85*Sin(2*Pi*GameTime/10)),Ceil(50+55*Sin(2*Pi*GameTime/10)),Ceil(240+110*Sin(2*Pi*GameTime/10))
mul = 120,224,150 
color = 0 
invertall = 0
ignorehitpause = 1

[State -2, CAPCOM Green Poison PalFX]
type = PalFX
trigger1 = Enemy,NumExplod(99992002)
time = 1
add = Ceil(0+85*Sin(2*Pi*GameTime/10)),Ceil(100+110*Sin(2*Pi*GameTime/10)),Ceil(50+55*Sin(2*Pi*GameTime/10))
mul = 20,120,24 
color = 0 
invertall = 0
ignorehitpause = 1

[State -2, CAPCOM Purple Poison PalFX]
type = PalFX
trigger1 = Enemy,NumExplod(99992003)
time = 1
add = Ceil(100+85*Sin(2*Pi*GameTime/10)),Ceil(0+110*Sin(2*Pi*GameTime/10)),Ceil(100+55*Sin(2*Pi*GameTime/10))
mul = 120,20,124 
color = 0 
invertall = 0
ignorehitpause = 1

[State -2, CAPCOM Blue Shock PalFX]
type = PalFX
trigger1 = Enemy,NumExplod(99992004)
time = 1
add = Ceil(100 -80*Sin(2*Pi*GameTime/10)),Ceil(100 -80*Sin(2*Pi*GameTime/10)),Ceil(180 -80*Sin(2*Pi*GameTime/10))
color = 0 
invertall = 0
ignorehitpause = 1

[State -2, CAPCOM B&W Shock PalFX]
type = PalFX
trigger1 = Enemy,NumExplod(99992005)
time = 1
add = Ceil(100 -80*Sin(2*Pi*GameTime/10)),Ceil(100 -80*Sin(2*Pi*GameTime/10)),Ceil(100 -80*Sin(2*Pi*GameTime/10))
color = 0 
invertall = 0
ignorehitpause = 1

[State -2, CAPCOM Evil Red PalFX]
type = PalFX
trigger1 = Enemy,NumExplod(99992006)
time = 1
add = Ceil(0+40*Sin(2*Pi*GameTime/10)),Ceil(-200+80*Sin(2*Pi*GameTime/10)),Ceil(-200+40*Sin(2*Pi*GameTime/10))
color = 0 
invertall = 0
ignorehitpause = 1

[State -2, CAPCOM Evil Purple PalFX]
type = PalFX
trigger1 = Enemy,NumExplod(99992007)
time = 1
add = Ceil(0+40*Sin(2*Pi*GameTime/10)),Ceil(-200+80*Sin(2*Pi*GameTime/10)),Ceil(0+40*Sin(2*Pi*GameTime/10))
color = 0 
invertall = 0
ignorehitpause = 1

[State -2, CAPCOM Slow Pulse Fire PalFX]
type = PalFX
trigger1 = Enemy,NumExplod(99992008)
time = 1
add = Ceil(224 -160*Sin(2*Pi*GameTime/14)),Ceil(68 -160*Sin(2*Pi*GameTime/14)),Ceil(-40 -160*Sin(2*Pi*GameTime/14))
mul = 256,192,128
color = 0
invertall = 0
ignorehitpause = 1

[State -2, CAPCOM Yellow/Orange Burn PalFX]
type = PalFX
trigger1 = Enemy,NumExplod(99992009)
time = 1
add = Ceil(40+40*Sin(2*Pi*GameTime/10)),Ceil(-70+30*Sin(2*Pi*GameTime/10)),Ceil(-200+0*Sin(2*Pi*GameTime/10))
color     = 0                                        
invertall = 0  
ignorehitpause = 1

[State -2, CAPCOM Blue/Violet/Crimson Burn PalFX]
type = PalFX
trigger1 = Enemy,NumExplod(99992010)
time = 1
add = Ceil(-104+56*Sin(2*Pi*GameTime/10)),Ceil(-104+56*Sin(2*Pi*GameTime/10)),Ceil(7+0*Sin(2*Pi*GameTime/10))
color     = 0
invertall = 0
ignorehitpause = 1

[State -2, CAPCOM Red/Blood Burn PalFX]
type = PalFX
trigger1 = Enemy,NumExplod(99992011)
time = 1
add = Ceil(7+30*Sin(2*Pi*GameTime/10)),Ceil(-200+30*Sin(2*Pi*GameTime/10)),Ceil(-200+0*Sin(2*Pi*GameTime/10))
color     = 0 
ignorehitpause = 1

[State -2, CAPCOM Dust/Gray Burn PalFX]
type = PalFX
trigger1 = Enemy,NumExplod(99992012)
time = 1
add = Ceil(-100 -10*Sin(2*Pi*GameTime/10)),Ceil(-100 -10*Sin(2*Pi*GameTime/10)),Ceil(-100 -10*Sin(2*Pi*GameTime/10))
color     = 0
invertall = 0
ignorehitpause = 1

[State -2, CAPCOM Fade to Darker fade to brighter PalFX]
type = PalFX
trigger1 = Enemy,NumExplod(99992013)
time = 1
add = Ceil(0 -65*Sin(2*Pi*GameTime/26)),Ceil(0 -65*Sin(2*Pi*GameTime/26)),Ceil(0 -65*Sin(2*Pi*GameTime/26))
mul = 164,164,164
invertall = 0
color = 256
ignorehitpause = 1

[State -2, CAPCOM Black and White Negative PalFX]
type = PalFX
trigger1 = Enemy,NumExplod(99992014)
time = 1
add = Ceil(0+55*Sin(2*Pi*GameTime/10)),Ceil(0+55*Sin(2*Pi*GameTime/10)),Ceil(0+55*Sin(2*Pi*GameTime/10))
mul = 200,200,200
invertall = 0
color = 0 
ignorehitpause = 1

[State -2, CAPCOM Rainbow PalFX]
type = PalFX
trigger1 = Enemy,NumExplod(99992015)
time = 1
add = Floor(Sin(GameTime/8)*64),Floor(Sin((GameTime-85)/8)*64),Floor(Sin((GameTime-170)/8)*64)
invertall = 0
ignorehitpause = 1


;===============poisoning P2 see state 1510 for more info================

;ID ranges include; each represents how much life per tick is lost
;99990000 = -1
;99990001 = -2
;99990002 = -3
;99990003 = -4
;99990004 = -5
;99990005 = -10
;99990006 = -15
;99990007 = -20
;99990008 = -25
;99990009 = -30
;ID ranges include; each represents how much life per tick is gained
;99990010 = +1
;99990011 = +2
;99990012 = +3
;99990013 = +4
;99990014 = +5
;99990015 = +10
;99990016 = +15
;99990017 = +20
;99990018 = +25
;99990019 = +30

;this explod tells how long the duration of poison should last
[State -2, Explod]
type = Explod
trigger1 = NumProjID(99990000)
anim = 9999
ID = 99990000
removetime = 300 ;adjusts how long p2 is in poison status
removeongethit = 1 ;removes poison when you are hit
ignorehitpause = 1

;this explod tells how long the duration of poison PalFX should last
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990000)
anim = 9999
ID = 99992003
removetime = 1 
ignorehitpause = 1

;ID ranges include; each represents how much life per tick is lost
;99990020 = -1
;99990021 = -2
;99990022 = -3
;99990023 = -4
;99990024 = -5
;99990025 = -10
;99990026 = -15
;99990027 = -20
;99990028 = -25
;99990029 = -30
;ID ranges include; each represents how much life per tick is gained
;99990030 = +1
;99990031 = +2
;99990032 = +3
;99990033 = +4
;99990034 = +5
;99990035 = +10
;99990036 = +15
;99990037 = +20
;99990038 = +25
;99990039 = +30

;this explod tells how frequently the poison should take life
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990000)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often the poison takes/gives life
anim = 9999
ID = 99990020
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990001)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often the poison takes/gives life
anim = 9999
ID = 99990021
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990002)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often the poison takes/gives life
anim = 9999
ID = 99990022
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990003)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often the poison takes/gives life
anim = 9999
ID = 99990023
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990004)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often the poison takes/gives life
anim = 9999
ID = 99990024
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990005)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often the poison takes/gives life
anim = 9999
ID = 99990025
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990006)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often the poison takes/gives life
anim = 9999
ID = 99990026
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990007)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often the poison takes/gives life
anim = 9999
ID = 99990027
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990008)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often the poison takes/gives life
anim = 9999
ID = 99990028
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990009)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often the poison takes/gives life
anim = 9999
ID = 99990029
removetime = 1

;this explod tells how frequently the poison should give life
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990010)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often the poison takes/gives life
anim = 9999
ID = 99990030
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990011)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often the poison takes/gives life
anim = 9999
ID = 99990031
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990012)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often the poison takes/gives life
anim = 9999
ID = 99990032
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990013)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often the poison takes/gives life
anim = 9999
ID = 99990033
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990014)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often the poison takes/gives life
anim = 9999
ID = 99990034
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990015)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often the poison takes/gives life
anim = 9999
ID = 99990035
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990016)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often the poison takes/gives life
anim = 9999
ID = 99990036
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990017)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often the poison takes/gives life
anim = 9999
ID = 99990037
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990018)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often the poison takes/gives life
anim = 9999
ID = 99990038
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990019)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often the poison takes/gives life
anim = 9999
ID = 99990039
removetime = 1

;===============poisoning yourself see state 1520 for more info================

;ID ranges include; each represents how much life per tick is lost
;99990040 = -1
;99990041 = -2
;99990042 = -3
;99990043 = -4
;99990044 = -5
;99990045 = -10
;99990046 = -15
;99990047 = -20
;99990048 = -25
;99990049 = -30
;ID ranges include; each represents how much life per tick is gained
;99990050 = +1
;99990051 = +2
;99990052 = +3
;99990053 = +4
;99990054 = +5
;99990055 = +10
;99990056 = +15
;99990057 = +20
;99990058 = +25
;99990059 = +30

;this explod tells how long the duration of poison should last
[State -2, Explod]
type = Explod
trigger1 = NumProjID(99990040)
anim = 9999
ID = 99990040
removetime = 300

[State -2, RemoveExplod];removes poison when you hit P2
type = RemoveExplod
trigger1 = P2MoveType = H
ID = 99990040
ignorehitpause = 1

;this explod tells how long the duration of poison PalFX should last
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990040)
anim = 9999
ID = 1509
removetime = 1
ignorehitpause = 1

[State -2, RemoveExplod];removes poison PalFX when you hit P2
type = RemoveExplod
trigger1 = P2MoveType = H
ID = 1509
ignorehitpause = 1

;ID ranges include; each represents how much life per tick is lost
;99990060 = -1
;99990061 = -2
;99990062 = -3
;99990063 = -4
;99990064 = -5
;99990065 = -10
;99990066 = -15
;99990067 = -20
;99990068 = -25
;99990069 = -30
;ID ranges include; each represents how much life per tick is gained
;99990070 = +1
;99990071 = +2
;99990072 = +3
;99990073 = +4
;99990074 = +5
;99990075 = +10
;99990076 = +15
;99990077 = +20
;99990078 = +25
;99990079 = +30

;this explod tells how frequently the poison should take or give life
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990040)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often the poison takes/gives life
anim = 9999
ID = 99990060
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990041)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often the poison takes/gives life
anim = 9999
ID = 99990061
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990042)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often the poison takes/gives life
anim = 9999
ID = 99990062
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990043)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often the poison takes/gives life
anim = 9999
ID = 99990063
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990044)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often the poison takes/gives life
anim = 9999
ID = 99990064
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990045)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often the poison takes/gives life
anim = 9999
ID = 99990065
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990046)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often the poison takes/gives life
anim = 9999
ID = 99990066
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990047)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often the poison takes/gives life
anim = 9999
ID = 99990067
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990048)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often the poison takes/gives life
anim = 9999
ID = 99990068
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990049)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often the poison takes/gives life
anim = 9999
ID = 99990069
removetime = 1

;this explod tells how frequently the poison should take or give life
[State -2, Explod]
type = Explod
trigger1 = NumExplod(9999005)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often the poison takes/gives life
anim = 9999
ID = 99990070
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990051)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often the poison takes/gives life
anim = 9999
ID = 99990071
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990052)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often the poison takes/gives life
anim = 9999
ID = 99990072
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990053)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often the poison takes/gives life
anim = 9999
ID = 99990073
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990054)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often the poison takes/gives life
anim = 9999
ID = 99990074
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990055)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often the poison takes/gives life
anim = 9999
ID = 99990075
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990056)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often the poison takes/gives life
anim = 9999
ID = 99990076
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990057)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often the poison takes/gives life
anim = 9999
ID = 99990077
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990058)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often the poison takes/gives life
anim = 9999
ID = 99990078
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990059)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often the poison takes/gives life
anim = 9999
ID = 99990079
removetime = 1

;=============== It's time to take or give the life from poisoning================
; opponent poisons you
[State -2,LifeAdd]
type = LifeAdd
trigger1 = Enemy,NumExplod(99990020)
value = -1
kill = 0
[State -2,LifeAdd]
type = LifeAdd
trigger1 = Enemy,NumExplod(99990021)
value = -2
kill = 0
[State -2,LifeAdd]
type = LifeAdd
trigger1 = Enemy,NumExplod(99990022)
value = -3
kill = 0
[State -2,LifeAdd]
type = LifeAdd
trigger1 = Enemy,NumExplod(99990023)
value = -4
kill = 0
[State -2,LifeAdd]
type = LifeAdd
trigger1 = Enemy,NumExplod(99990024)
value = -5
kill = 0
[State -2,LifeAdd]
type = LifeAdd
trigger1 = Enemy,NumExplod(99990025)
value = -10
kill = 0
[State -2,LifeAdd]
type = LifeAdd
trigger1 = Enemy,NumExplod(99990026)
value = -15
kill = 0
[State -2,LifeAdd]
type = LifeAdd
trigger1 = Enemy,NumExplod(99990027)
value = -20
kill = 0
[State -2,LifeAdd]
type = LifeAdd
trigger1 = Enemy,NumExplod(99990028)
value = -25
kill = 0
[State -2,LifeAdd]
type = LifeAdd
trigger1 = Enemy,NumExplod(99990029)
value = -30
kill = 0

; opponent heals you
[State -2,LifeAdd]
type = LifeAdd
trigger1 = Enemy,NumExplod(99990030)
value = 1
kill = 0
[State -2,LifeAdd]
type = LifeAdd
trigger1 = Enemy,NumExplod(99990031)
value = 2
kill = 0
[State -2,LifeAdd]
type = LifeAdd
trigger1 = Enemy,NumExplod(99990032)
value = 3
kill = 0
[State -2,LifeAdd]
type = LifeAdd
trigger1 = Enemy,NumExplod(99990033)
value = 4
kill = 0
[State -2,LifeAdd]
type = LifeAdd
trigger1 = Enemy,NumExplod(99990034)
value = 5
kill = 0
[State -2,LifeAdd]
type = LifeAdd
trigger1 = Enemy,NumExplod(99990035)
value = 10
kill = 0
[State -2,LifeAdd]
type = LifeAdd
trigger1 = Enemy,NumExplod(99990036)
value = 15
kill = 0
[State -2,LifeAdd]
type = LifeAdd
trigger1 = Enemy,NumExplod(99990037)
value = 20
kill = 0
[State -2,LifeAdd]
type = LifeAdd
trigger1 = Enemy,NumExplod(99990038)
value = 25
kill = 0
[State -2,LifeAdd]
type = LifeAdd
trigger1 = Enemy,NumExplod(99990039)
value = 30
kill = 0

;you poison yourself
[State -2,LifeAdd]
type = LifeAdd
trigger1 = NumExplod(99990060)
value = -1
kill = 0
[State -2,LifeAdd]
type = LifeAdd
trigger1 = NumExplod(99990061)
value = -2
kill = 0
[State -2,LifeAdd]
type = LifeAdd
trigger1 = NumExplod(99990062)
value = -3
kill = 0
[State -2,LifeAdd]
type = LifeAdd
trigger1 = NumExplod(99990063)
value = -4
kill = 0
[State -2,LifeAdd]
type = LifeAdd
trigger1 = NumExplod(99990064)
value = -5
kill = 0
[State -2,LifeAdd]
type = LifeAdd
trigger1 = NumExplod(99990065)
value = -10
kill = 0
[State -2,LifeAdd]
type = LifeAdd
trigger1 = NumExplod(99990066)
value = -15
kill = 0
[State -2,LifeAdd]
type = LifeAdd
trigger1 = NumExplod(99990067)
value = -20
kill = 0
[State -2,LifeAdd]
type = LifeAdd
trigger1 = NumExplod(99990068)
value = -25
kill = 0
[State -2,LifeAdd]
type = LifeAdd
trigger1 = NumExplod(99990069)
value = -30
kill = 0

;you heal yourself
[State -2,LifeAdd]
type = LifeAdd
trigger1 = NumExplod(99990070)
value = 1
kill = 0
[State -2,LifeAdd]
type = LifeAdd
trigger1 = NumExplod(99990071)
value = 2
kill = 0
[State -2,LifeAdd]
type = LifeAdd
trigger1 = NumExplod(99990072)
value = 3
kill = 0
[State -2,LifeAdd]
type = LifeAdd
trigger1 = NumExplod(99990073)
value = 4
kill = 0
[State -2,LifeAdd]
type = LifeAdd
trigger1 = NumExplod(99990074)
value = 5
kill = 0
[State -2,LifeAdd]
type = LifeAdd
trigger1 = NumExplod(99990075)
value = 10
kill = 0
[State -2,LifeAdd]
type = LifeAdd
trigger1 = NumExplod(99990076)
value = 15
kill = 0
[State -2,LifeAdd]
type = LifeAdd
trigger1 = NumExplod(99990077)
value = 20
kill = 0
[State -2,LifeAdd]
type = LifeAdd
trigger1 = NumExplod(99990078)
value = 25
kill = 0
[State -2,LifeAdd]
type = LifeAdd
trigger1 = NumExplod(99990079)
value = 30
kill = 0

;===============taking power from P2: this is pretty much identical to poisoning so no examples are given in char================

;ID ranges include; each represents how much meter per tick is lost
;99990100 = -1
;99990101 = -2
;99990102 = -3
;99990103 = -4
;99990104 = -5
;99990105 = -10
;99990106 = -15
;99990107 = -20
;99990108 = -25
;99990109 = -30
;ID ranges include; each represents how much meter per tick is gained
;99990110 = +1
;99990111 = +2
;99990112 = +3
;99990113 = +4
;99990114 = +5
;99990115 = +10
;99990116 = +15
;99990117 = +20
;99990118 = +25
;99990119 = +30

;this explod tells how long the duration of meter drain/give should last
[State -2, Explod]
type = Explod
trigger1 = NumProjID(99990100)
anim = 9999
ID = 99990100
removetime = 300 ;adjusts how long p2 is meter drain/give status
removeongethit = 1 ;removes status when you are hit

;ID ranges include; each represents how much meter per tick is lost
;99990120 = -1
;99990121 = -2
;99990122 = -3
;99990123 = -4
;99990124 = -5
;99990125 = -10
;99990126 = -15
;99990127 = -20
;99990128 = -25
;99990129 = -30
;ID ranges include; each represents how much meter per tick is gained
;99990130 = +1
;99990131 = +2
;99990132 = +3
;99990133 = +4
;99990134 = +5
;99990135 = +10
;99990136 = +15
;99990137 = +20
;99990138 = +25
;99990139 = +30

;this explod tells how frequently to take meter
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990100)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often it takes/gives meter
anim = 9999
ID = 99990120
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990101)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often it takes/gives meter
anim = 9999
ID = 99990121
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990102)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often it takes/gives meter
anim = 9999
ID = 99990122
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990103)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often it takes/gives meter
anim = 9999
ID = 99990123
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990104)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often it takes/gives meter
anim = 9999
ID = 99990124
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990105)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often it takes/gives meter
anim = 9999
ID = 99990125
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990106)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often it takes/gives meter
anim = 9999
ID = 99990126
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990107)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often it takes/gives meter
anim = 9999
ID = 99990127
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990108)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often it takes/gives meter
anim = 9999
ID = 99990128
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990109)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often it takes/gives meter
anim = 9999
ID = 99990129
removetime = 1

;this explod tells how frequently to give meter
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990110)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often it takes/gives meter
anim = 9999
ID = 99990130
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990111)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often it takes/gives meter
anim = 9999
ID = 99990131
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990112)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often it takes/gives meter
anim = 9999
ID = 99990132
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990113)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often it takes/gives meter
anim = 9999
ID = 99990133
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990114)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often it takes/gives meter
anim = 9999
ID = 99990134
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990105)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often it takes/gives meter
anim = 9999
ID = 99990135
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990116)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often it takes/gives meter
anim = 9999
ID = 99990136
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990117)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often it takes/gives meter
anim = 9999
ID = 99990137
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990118)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often it takes/gives meter
anim = 9999
ID = 99990138
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990119)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often it takes/gives meter
anim = 9999
ID = 99990139
removetime = 1

;===============poisoning yourself see state 1520 for more info================

;ID ranges include; each represents how much life per tick is lost
;99990140 = -1
;99990141 = -2
;99990142 = -3
;99990143 = -4
;99990144 = -5
;99990145 = -10
;99990146 = -15
;99990147 = -20
;99990148 = -25
;99990149 = -30
;ID ranges include; each represents how much life per tick is gained
;99990150 = +1
;99990151 = +2
;99990152 = +3
;99990153 = +4
;99990154 = +5
;99990155 = +10
;99990156 = +15
;99990157 = +20
;99990158 = +25
;99990159 = +30

;this explod tells how long the duration of taking/giving meter should last
[State -2, Explod]
type = Explod
trigger1 = NumProjID(99990140)
anim = 9999
ID = 99990140
removetime = 300

[State -2, RemoveExplod];removes meter status when you hit P2
type = RemoveExplod
trigger1 = P2MoveType = H
ID = 99990140
ignorehitpause = 1

;ID ranges include; each represents how much life per tick is lost
;99990160 = -1
;99990161 = -2
;99990162 = -3
;99990163 = -4
;99990164 = -5
;99990165 = -10
;99990166 = -15
;99990167 = -20
;99990168 = -25
;99990169 = -30
;ID ranges include; each represents how much life per tick is gained
;99990170 = +1
;99990171 = +2
;99990172 = +3
;99990173 = +4
;99990174 = +5
;99990175 = +10
;99990176 = +15
;99990177 = +20
;99990178 = +25
;99990179 = +30

;this explod tells how frequently the status should take or give meter
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990140)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often it takes/gives meter
anim = 9999
ID = 99990160
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990141)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often it takes/gives meter
anim = 9999
ID = 99990161
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990142)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often it takes/gives meter
anim = 9999
ID = 99990162
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990143)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often it takes/gives meter
anim = 9999
ID = 99990163
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990144)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often it takes/gives meter
anim = 9999
ID = 99990164
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990145)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often it takes/gives meter
anim = 9999
ID = 99990165
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990146)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often it takes/gives meter
anim = 9999
ID = 99990166
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990147)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often it takes/gives meter
anim = 9999
ID = 99990167
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990148)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often it takes/gives meter
anim = 9999
ID = 99990168
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990149)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often it takes/gives meter
anim = 9999
ID = 99990169
removetime = 1

;this explod tells how frequently the status should take or give meter
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990150)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often it takes/gives meter
anim = 9999
ID = 99990170
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990151)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often it takes/gives meter
anim = 9999
ID = 99990171
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990152)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often it takes/gives meter
anim = 9999
ID = 99990172
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990153)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often it takes/gives meter
anim = 9999
ID = 99990173
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990154)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often it takes/gives meter
anim = 9999
ID = 99990174
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990155)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often it takes/gives meter
anim = 9999
ID = 99990175
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990156)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often it takes/gives meter
anim = 9999
ID = 99990176
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990157)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often it takes/gives meter
anim = 9999
ID = 99990177
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990158)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often it takes/gives meter
anim = 9999
ID = 99990178
removetime = 1
[State -2, Explod]
type = Explod
trigger1 = NumExplod(99990159)
trigger1 = GameTime%15 = 0 ;edit GameTime% to change how often it takes/gives meter
anim = 9999
ID = 99990179
removetime = 1

;=============== It's time to take or give the meter================
; opponent drains meter
[State -2, PowerAdd]
type = PowerAdd
trigger1 = Enemy,NumExplod(99990120)
value = -1

[State -2, PowerAdd]
type = PowerAdd
trigger1 = Enemy,NumExplod(99990121)
value = -2

[State -2, PowerAdd]
type = PowerAdd
trigger1 = Enemy,NumExplod(99990122)
value = -3

[State -2, PowerAdd]
type = PowerAdd
trigger1 = Enemy,NumExplod(99990123)
value = -4

[State -2, PowerAdd]
type = PowerAdd
trigger1 = Enemy,NumExplod(99990124)
value = -5

[State -2, PowerAdd]
type = PowerAdd
trigger1 = Enemy,NumExplod(99990125)
value = -10

[State -2, PowerAdd]
type = PowerAdd
trigger1 = Enemy,NumExplod(99990126)
value = -15

[State -2, PowerAdd]
type = PowerAdd
trigger1 = Enemy,NumExplod(99990127)
value = -20

[State -2, PowerAdd]
type = PowerAdd
trigger1 = Enemy,NumExplod(99990128)
value = -25

[State -2, PowerAdd]
type = PowerAdd
trigger1 = Enemy,NumExplod(99990129)
value = -30


; opponent gives meter
[State -2, PowerAdd]
type = PowerAdd
trigger1 = Enemy,NumExplod(99990130)
value = 1

[State -2, PowerAdd]
type = PowerAdd
trigger1 = Enemy,NumExplod(99990131)
value = 2

[State -2, PowerAdd]
type = PowerAdd
trigger1 = Enemy,NumExplod(99990132)
value = 3

[State -2, PowerAdd]
type = PowerAdd
trigger1 = Enemy,NumExplod(99990133)
value = 4

[State -2, PowerAdd]
type = PowerAdd
trigger1 = Enemy,NumExplod(99990134)
value = 5

[State -2, PowerAdd]
type = PowerAdd
trigger1 = Enemy,NumExplod(99990135)
value = 10

[State -2, PowerAdd]
type = PowerAdd
trigger1 = Enemy,NumExplod(99990136)
value = 15

[State -2, PowerAdd]
type = PowerAdd
trigger1 = Enemy,NumExplod(99990137)
value = 20

[State -2, PowerAdd]
type = PowerAdd
trigger1 = Enemy,NumExplod(99990138)
value = 25

[State -2, PowerAdd]
type = PowerAdd
trigger1 = Enemy,NumExplod(99990139)
value = 30


;you take your own meter
[State -2, PowerAdd]
type = PowerAdd
trigger1 = NumExplod(99990160)
value = -1

[State -2, PowerAdd]
type = PowerAdd
trigger1 = NumExplod(99990161)
value = -2

[State -2, PowerAdd]
type = PowerAdd
trigger1 = NumExplod(99990162)
value = -3

[State -2, PowerAdd]
type = PowerAdd
trigger1 = NumExplod(99990163)
value = -4

[State -2, PowerAdd]
type = PowerAdd
trigger1 = NumExplod(99990164)
value = -5

[State -2, PowerAdd]
type = PowerAdd
trigger1 = NumExplod(99990165)
value = -10

[State -2, PowerAdd]
type = PowerAdd
trigger1 = NumExplod(99990166)
value = -15

[State -2, PowerAdd]
type = PowerAdd
trigger1 = NumExplod(99990167)
value = -20

[State -2, PowerAdd]
type = PowerAdd
trigger1 = NumExplod(99990168)
value = -25

[State -2, PowerAdd]
type = PowerAdd
trigger1 = NumExplod(99990169)
value = -30


;you add to your own meter
[State -2, PowerAdd]
type = PowerAdd
trigger1 = NumExplod(99990170)
value = 1

[State -2, PowerAdd]
type = PowerAdd
trigger1 = NumExplod(99990171)
value = 2

[State -2, PowerAdd]
type = PowerAdd
trigger1 = NumExplod(99990172)
value = 3

[State -2, PowerAdd]
type = PowerAdd
trigger1 = NumExplod(99990173)
value = 4

[State -2, PowerAdd]
type = PowerAdd
trigger1 = NumExplod(99990174)
value = 5

[State -2, PowerAdd]
type = PowerAdd
trigger1 = NumExplod(99990175)
value = 10

[State -2, PowerAdd]
type = PowerAdd
trigger1 = NumExplod(99990176)
value = 15

[State -2, PowerAdd]
type = PowerAdd
trigger1 = NumExplod(99990177)
value = 20

[State -2, PowerAdd]
type = PowerAdd
trigger1 = NumExplod(99990178)
value = 25

[State -2, PowerAdd]
type = PowerAdd
trigger1 = NumExplod(99990179)
value = 30

;-

[State -2, ChangeState]
type = ChangeState
trigger1 = Anim = 5
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;SPIN OUT FX
[State -2, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(1300)
trigger1 = !NumExplod(6085)
trigger1 = Target(1300),StateType != L
ID = 6085
anim = 6085
pos = 0,0
postype = P2
bindtime = 5
removetime = -2
removeongethit = 1
scale = .45,.6
sprpriority = 3
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State -2, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(1310)
trigger1 = !NumExplod(6085)
trigger1 = Target(1310),StateType != L
ID = 6085
anim = 6085
pos = 0,0
postype = P2
bindtime = 5
removetime = -2
removeongethit = 1
scale = .45,.6
sprpriority = 3
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State -2, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(1700)
trigger1 = !NumExplod(6085)
trigger1 = Target(1700),StateNo = 2001 && Target(1700),Time = 1
ID = 6085
anim = 6085
pos = 0,0
postype = P2
bindtime = 5
removetime = -2
removeongethit = 1
scale = .45,.6
sprpriority = 3
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State -2, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(1710)
trigger1 = !NumExplod(6085)
trigger1 = Target(1710),StateNo = 2001 && Target(1710),Time = 1
ID = 6085
anim = 6085
pos = 0,0
postype = P2
bindtime = 5
removetime = -2
removeongethit = 1
scale = .45,.6
sprpriority = 3
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

;--------------------------------------------------------------------------------------------------------------------------------------------
;WALL BOUNCE FX
[State -2, Explod]
type = Explod
trigger1 = NumTarget(3000)
trigger1 = Target(3000),StateNo = 3051
trigger1 = Target(3000),Time = 1
trigger1 = !NumExplod(7290)
ID = 7290
anim = 7290
pos = -(Target(3000),BackEdgeDist),Target(3000),Const(Size.Mid.Pos.Y)
postype = P2  ;p2,front,back,left,right
angle = -90
supermovetime = 0
pausemovetime = 0
bindtime = 1
scale = .6*Target(3000),Const(Size.YScale),.5
sprpriority = -2
ownpal = 1
[State -2, Explod]
type = Explod
trigger1 = NumTarget(3000)
trigger1 = Target(3000),StateNo = 3051
trigger1 = Target(3000),Time = 1
trigger1 = !NumExplod(7291)
ID = 7291
anim = 7291
pos = -(Target(3000),BackEdgeDist),Target(3000),Const(Size.Mid.Pos.Y)
postype = P2  ;p2,front,back,left,right
angle = -90
supermovetime = 0
pausemovetime = 0
bindtime = 1
scale = .6*Target(3000),Const(Size.YScale),.5
sprpriority = -2
ownpal = 1

[State -2, Explod]
type = Explod
trigger1 = NumTarget(3207)
trigger1 = Target(3207),StateNo = 3253
trigger1 = Target(3207),AnimElemTime(2) < 0
trigger1 = Time%6 = 0
ID = 7007
anim = 7007
pos = 0,5
postype = P2  ;p2,front,back,left,right
facing = -1
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1*Target(3207),Const(Size.YScale),.5
sprpriority = 2
ownpal = 1

[State -2, Explod]
type = Explod
trigger1 = NumTarget(4200)
trigger1 = Target(4200),StateNo = 4251
trigger1 = Target(4200),Time = 1
trigger1 = !NumExplod(7290)
ID = 7290
anim = 7290
pos = -(Target(4200),BackEdgeDist),Target(4200),Const(Size.Mid.Pos.Y)
postype = P2  ;p2,front,back,left,right
angle = -90
supermovetime = 0
pausemovetime = 0
bindtime = 1
scale = .6*Target(4200),Const(Size.YScale),.5
sprpriority = -2
ownpal = 1
[State -2, Explod]
type = Explod
trigger1 = NumTarget(4200)
trigger1 = Target(4200),StateNo = 4251
trigger1 = Target(4200),Time = 1
trigger1 = !NumExplod(7291)
ID = 7291
anim = 7291
pos = -(Target(4200),BackEdgeDist),Target(4200),Const(Size.Mid.Pos.Y)
postype = P2  ;p2,front,back,left,right
angle = -90
supermovetime = 0
pausemovetime = 0
bindtime = 1
scale = .6*Target(4200),Const(Size.YScale),.5
sprpriority = -2
ownpal = 1

[State -2, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(3207)
trigger1 = Target(3207),StateNo = 3253
trigger1 = Target(3207),Time = 1
value = S100,1
channel = -1
[State -2, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(3207)
trigger1 = Target(3207),StateNo = 3253
trigger1 = Target(3207),Time = 1
value = S800,1
channel = -1

[State -2, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(4200)
trigger1 = Target(4200),StateNo = 4251
trigger1 = Target(4200),Time = 1
value = S820,0
channel = -1

;--------------------------------------------------------------------------------------------------------------------------------------------
;THROW EFFECTS
[State -2, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(800)
trigger1 = Target(800),StateNo = 812
trigger1 = Target(800),Time = 1
value = S800,1
channel = 7

[State -2, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(800)
trigger1 = Target(800),StateNo = 822
trigger1 = Target(800),Time = 1
value = S54,0
channel = 7

[State -2, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = NumTarget(1600)
trigger1 = Target(1600),StateNo = 1622
trigger1 = Target(1600),Time = 1
ID = 1600
value = -Ceil(FVar(5)*120)
kill = 1
absolute = 1
ignorehitpause = 1
persistent = 0

[State -2, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(1600)
trigger1 = Target(1600),StateNo = 1622
trigger1 = Target(1600),Time = 1
value = S820,0
channel = -1

[State -2, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(1600)
trigger1 = Target(1600),StateNo = 1622
trigger1 = Target(1600),Time = 1
value = S800,1
channel = 8

[State -2, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = NumTarget(1600)
trigger1 = Target(1600),StateNo = 1644
trigger1 = Target(1600),Time = 1
value = -Ceil(FVar(5)*20)
ID = 1600
kill = 1
absolute = 1
persistent = 0

[State -2, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(1600)
trigger1 = Target(1600),StateNo = 1644
trigger1 = Target(1600),Time = 1
value = S800,1
channel = 7

[State -2, StopSnd]
type = StopSnd
trigger1 = Time < 60
trigger1 = StateNo = [3000,4999]
channel = 7
[State -2, StopSnd]
type = StopSnd
trigger1 = Time < 60
trigger1 = StateNo = [3000,4999]
channel = 8

[State -2, Explod]
type = Explod
triggerall = !NumExplod(7290)
trigger1 = NumTarget(800)
trigger1 = Target(800),StateNo = 812
trigger1 = Target(800),Time = 1
ID = 7290
anim = 7290
pos = 0,0
postype = P2  ;p2,front,back,left,right
supermovetime = 0
pausemovetime = 0
bindtime = 1
scale = .6*Target(800),Const(Size.YScale),.5
sprpriority = -2
ownpal = 1
[State -2, Explod]
type = Explod
triggerall = !NumExplod(7291)
trigger1 = NumTarget(800)
trigger1 = Target(800),StateNo = 812
trigger1 = Target(800),Time = 1
ID = 7291
anim = 7291
pos = 0,0
postype = P2  ;p2,front,back,left,right
supermovetime = 0
pausemovetime = 0
bindtime = 1
scale = .6*Target(800),Const(Size.YScale),.5
sprpriority = -2
ownpal = 1

[State -2, Explod]
type = Explod
triggerall = !NumExplod(7290)
trigger1 = NumTarget(1600)
trigger1 = Target(1600),StateNo = 1622
trigger1 = Target(1600),Time = 1
ID = 7290
anim = 7290
pos = 0,0
postype = P2  ;p2,front,back,left,right
supermovetime = 0
pausemovetime = 0
bindtime = 1
scale = .6*Target(1600),Const(Size.YScale),.5
sprpriority = -2
ownpal = 1
[State -2, Explod]
type = Explod
triggerall = !NumExplod(7291)
trigger1 = NumTarget(1600)
trigger1 = Target(1600),StateNo = 1622
trigger1 = Target(1600),Time = 1
ID = 7291
anim = 7291
pos = 0,0
postype = P2  ;p2,front,back,left,right
supermovetime = 0
pausemovetime = 0
bindtime = 1
scale = .6*Target(1600),Const(Size.YScale),.5
sprpriority = -2
ownpal = 1

[State -2, Explod]
type = Explod
triggerall = !NumExplod(7290)
trigger1 = NumTarget(1600)
trigger1 = Target(1600),StateNo = 1644
trigger1 = Target(1600),Time = 1
ID = 7290
anim = 7290
pos = 0,0
postype = P2  ;p2,front,back,left,right
supermovetime = 0
pausemovetime = 0
bindtime = 1
scale = .5*Target(1600),Const(Size.YScale),.4
sprpriority = -2
ownpal = 1
[State -2, Explod]
type = Explod
triggerall = !NumExplod(7291)
trigger1 = NumTarget(1600)
trigger1 = Target(1600),StateNo = 1644
trigger1 = Target(1600),Time = 1
ID = 7291
anim = 7291
pos = 0,0
postype = P2  ;p2,front,back,left,right
supermovetime = 0
pausemovetime = 0
bindtime = 1
scale = .5*Target(1600),Const(Size.YScale),.4
sprpriority = -2
ownpal = 1

[State -2, Explod]
type = Explod
trigger1 = NumTarget(800)
trigger1 = Target(800),StateNo = 822
trigger1 = Target(800),Time = 1
trigger1 = !NumExplod(7004)
ID = 7004
anim = 7004
pos = 0,0
postype = P2  ;p2,front,back,left,right
supermovetime = 0
pausemovetime = 0
bindtime = 1
scale = .6*Target(800),Const(Size.YScale),.5
sprpriority = -2
ownpal = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;GETUP
[State -2, PosAdd]
type = PosAdd
triggerall = StateNo = 5120
trigger1 = AnimElem = 3
x = -10
[State -2, PosAdd]
type = PosAdd
triggerall = StateNo = 5120
trigger1 = AnimElem = 4 || AnimElem = 5
x = -30

[State -2, Explod]
type = Explod
trigger1 = StateNo = 5120 && AnimElem = 6
ID = 7002
anim = 7002
postype = P1  ;p2,front,back,left,right
pos = 0,0
supermovetime = 0
pausemovetime = 0
scale = .5,.5
sprpriority = -2
ownpal = 1

[State -2, PlaySnd]
type = PlaySnd
trigger1 = StateNo = 5120 && AnimElem = 3
value = S40,0
channel = -1

[State -2, PlaySnd]
type = PlaySnd
trigger1 = StateNo = 5120 && AnimElem = 6
value = S52,0
channel = -1

;--------------------------------------------------------------------------------------------------------------------------------------------
;CUSTOM TARGET FX

[State -2, Explod]
type = Explod
trigger1 = !NumExplod(7290)
trigger1 = NumTarget(1411)
trigger1 = Target(1411),StateNo = 1451
trigger1 = Target(1411),Time = 1
ID = 7290
anim = 7290
pos = 0,0
postype = P2  ;p2,front,back,left,right
supermovetime = 0
pausemovetime = 0
bindtime = 1
scale = .6*Target,Const(Size.YScale),.5
sprpriority = -2
ownpal = 1
[State -2, Explod]
type = Explod
trigger1 = !NumExplod(7291)
trigger1 = NumTarget(1411)
trigger1 = Target(1411),StateNo = 1451
trigger1 = Target(1411),Time = 1
ID = 7291
anim = 7291
pos = 0,0
postype = P2  ;p2,front,back,left,right
supermovetime = 0
pausemovetime = 0
bindtime = 1
scale = .6*Target,Const(Size.YScale),.5
sprpriority = -2
ownpal = 1
[State -2, Explod]
type = Explod
trigger1 = NumTarget(1411)
trigger1 = Target(1411),StateNo = 1451
trigger1 = Target(1411),Time = 1
ID = 7070
anim = 7070
pos = 0,0
postype = P2
facing = Cond(Random < 500,1,-1)
scale = .7,.6
sprpriority = -6
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[State -2, Explod]
type = Explod
trigger1 = !NumExplod(7290)
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3151
trigger1 = Target(3107),Time = 1
ID = 7290
anim = 7290
pos = 0,0
postype = P2  ;p2,front,back,left,right
supermovetime = 0
pausemovetime = 0
bindtime = 1
scale = .6*Target,Const(Size.YScale),.5
sprpriority = -2
ownpal = 1
[State -2, Explod]
type = Explod
trigger1 = !NumExplod(7291)
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3151
trigger1 = Target(3107),Time = 1
ID = 7291
anim = 7291
pos = 0,0
postype = P2  ;p2,front,back,left,right
supermovetime = 0
pausemovetime = 0
bindtime = 1
scale = .6*Target,Const(Size.YScale),.5
sprpriority = -2
ownpal = 1
[State -2, Explod]
type = Explod
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3151
trigger1 = Target(3107),Time = 1
ID = 7070
anim = 7070
pos = 0,0
postype = P2
facing = Cond(Random < 500,1,-1)
scale = .8,.7
sprpriority = -6
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[State -2, Explod]
type = Explod
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3151
trigger1 = Target(3107),Time = 1
ID = 7031
anim = 7031
postype = P2  ;p2,front,back,left,right
pos = 0,0
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1.2,1.2
sprpriority = 6
ownpal = 1
ignorehitpause = 1

[State -2, Explod]
type = Explod
trigger1 = !NumExplod(7290)
trigger1 = NumTarget(3407)
trigger1 = Target(3407),StateNo = 3453
trigger1 = Target(3407),Time = 1
ID = 7290
anim = 7290
pos = 0,0
postype = P2  ;p2,front,back,left,right
supermovetime = 0
pausemovetime = 0
bindtime = 1
scale = .6*Target,Const(Size.YScale),.5
sprpriority = -2
ownpal = 1
[State -2, Explod]
type = Explod
trigger1 = !NumExplod(7291)
trigger1 = NumTarget(3407)
trigger1 = Target(3407),StateNo = 3453
trigger1 = Target(3407),Time = 1
ID = 7291
anim = 7291
pos = 0,0
postype = P2  ;p2,front,back,left,right
supermovetime = 0
pausemovetime = 0
bindtime = 1
scale = .6*Target,Const(Size.YScale),.5
sprpriority = -2
ownpal = 1
[State -2, Explod]
type = Explod
trigger1 = NumTarget(3407)
trigger1 = Target(3407),StateNo = 3453
trigger1 = Target(3407),Time = 1
ID = 7070
anim = 7070
pos = 0,0
postype = P2
facing = Cond(Random < 500,1,-1)
scale = .7,.6
sprpriority = -6
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[State -2, Explod]
type = Explod
trigger1 = !NumExplod(7290)
trigger1 = NumTarget(4200)
trigger1 = Target(4200),StateNo = 4262
trigger1 = Target(4200),Time = 1
ID = 7290
anim = 7290
pos = 0,0
postype = P2  ;p2,front,back,left,right
supermovetime = 0
pausemovetime = 0
bindtime = 1
scale = .6*Target,Const(Size.YScale),.5
sprpriority = -2
ownpal = 1
[State -2, Explod]
type = Explod
trigger1 = !NumExplod(7291)
trigger1 = NumTarget(4200)
trigger1 = Target(4200),StateNo = 4262
trigger1 = Target(4200),Time = 1
ID = 7291
anim = 7291
pos = 0,0
postype = P2  ;p2,front,back,left,right
supermovetime = 0
pausemovetime = 0
bindtime = 1
scale = .6*Target,Const(Size.YScale),.5
sprpriority = -2
ownpal = 1
[State -2, Explod]
type = Explod
trigger1 = NumTarget(4200)
trigger1 = Target(4200),StateNo = 4262
trigger1 = Target(4200),Time = 1
ID = 7070
anim = 7070
pos = 0,0
postype = P2
facing = Cond(Random < 500,1,-1)
scale = .8,.7
sprpriority = -6
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[State -2, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(1411)
trigger1 = Target(1411),StateNo = 1451
trigger1 = Target(1411),Time = 1
value = S820,0
channel = -1

[State -2, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(1411)
trigger1 = Target(1411),StateNo = 1451
trigger1 = Target(1411),Time = 1
value = S800,1
channel = 8

[State -2, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(3000)
trigger1 = Target(3000),StateNo = 3051
trigger1 = Target(3000),Time = 1
value = S820,0
volumescale = 20
channel = -1

[State -2, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3151
trigger1 = Target(3107),Time = 1
value = S820,0
channel = -1

[State -2, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(3407)
trigger1 = Target(3407),StateNo = 3453
trigger1 = Target(3407),Time = 1
value = S820,0
channel = -1

[State -2, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(4200)
trigger1 = Target(4200),StateNo = 4262
trigger1 = Target(4200),Time = 1
value = S820,0
channel = -1

;--------------------------------------------------------------------------------------------------------------------------------------------
;KO FX
[State -2, VarSet]
type = VarSet
trigger1 = RoundState = 2
trigger2 = !NumHelper(7900) && !NumHelper(7925) && !NumHelper(7950)
var(15) = 0
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
triggerall = NumPartner
trigger1 = Partner,Name = "Ken"
trigger1 = Partner,AuthorName = "Burn"
trigger1 = (Partner,NumHelper(7900)) || (Partner,NumHelper(7925)) || (Partner,NumHelper(7950))
var(15) = 1
ignorehitpause = 1
persistent = 1

[State -2, VarSet]
type = VarSet
trigger1 = RoundState < 3
var(53) = 0
ignorehitpause = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;Normal Finish 1
[State -2, Normal KO Helper]
type = Helper
triggerall = WinKO
triggerall = !NumHelper(7900)
triggerall = !NumHelper(7925)
triggerall = !NumHelper(7950)
triggerall = !Var(15)
trigger1 = NumTarget(200) || NumTarget(210) || NumTarget(212) || NumTarget(220) || NumTarget(221) || NumTarget(223)
trigger2 = NumTarget(230) || NumTarget(231) || NumTarget(240) || NumTarget(241) || NumTarget(242)
trigger3 = NumTarget(250) || NumTarget(251) || NumTarget(252)
trigger4 = NumTarget(400) || NumTarget(410) || NumTarget(420)
trigger5 = NumTarget(430) || NumTarget(440) || NumTarget(450) || NumTarget(451)
trigger6 = NumTarget(600) || NumTarget(610) || NumTarget(620)
trigger7 = NumTarget(630) || NumTarget(631) || NumTarget(640)
trigger8 = NumTarget(650)
trigger9 = NumTarget(750) || NumTarget(751) || NumTarget(752)
trigger10 = NumTarget(800)
trigger10 = NumTarget(800) && Target(800),StateNo = 806
trigger10 = StateNo = 805 && AnimElemTime(12) >= 0
trigger11 = StateNo = 807 && AnimElemTime(11) >= 0
trigger12 = NumTarget(800)
trigger12 = NumTarget(800) && Target(800),StateNo = [812,813]
trigger13 = NumTarget(800)
trigger13 = NumTarget(800) && Target(800),StateNo = 821
name = "NormalKO"
ID = 7900
pos = 0,0
postype = P1
facing = 0
StateNo = 7900
ownpal = 1
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;Normal Finish 2
[State -2, Normal KO Helper]
type = Helper
triggerall = WinKO
triggerall = !NumHelper(7900)
triggerall = !NumHelper(7925)
triggerall = !NumHelper(7950)
triggerall = !Var(15)
triggerall = NumHelper(421)
trigger1 = NumHelper(421)
trigger1 = NumHelper(421) && Helper(421),NumTarget(421)
trigger2 = NumHelper(421)
trigger2 = NumHelper(421) && Helper(421),NumTarget(422)
trigger3 = NumHelper(421)
trigger3 = NumHelper(421) && Helper(421),NumTarget(423)
trigger4 = NumHelper(421)
trigger4 = NumHelper(421) && Helper(421),NumTarget(424)
trigger5 = NumHelper(421)
trigger5 = NumHelper(421) && Helper(421),NumTarget(425)
trigger6 = NumHelper(421)
trigger6 = NumHelper(421) && Helper(421),NumTarget(426)
name = "NormalKO"
ID = 7900
pos = 0,0
postype = P1
facing = 0
StateNo = 7900
ownpal = 1
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;Special Finish 1
[State -2, Helper]
type = Helper
triggerall = WinKO
triggerall = !NumHelper(7900)
triggerall = !NumHelper(7925)
triggerall = !NumHelper(7950)
triggerall = !Var(15)
trigger1 = NumTarget(1100) || NumTarget(1101) || NumTarget(1102)
trigger2 = NumTarget(1110) || NumTarget(1111)
trigger3 = NumTarget(1300) || NumTarget(1301) || NumTarget(1302) || NumTarget(1310)
trigger4 = NumTarget(1400) || NumTarget(1401) || NumTarget(1402) || NumTarget(1410) || NumTarget(1411)
trigger5 = NumTarget(1600) || NumTarget(1650)
trigger6 = NumTarget(1700) || NumTarget(1710)
name = "SpecialKO"
ID = 7925
pos = 0,0
postype = P1
size.xscale = 500
size.yscale = 500
facing = 0
StateNo = 7925
ownpal = 1
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;Special Finish 2
[State -2, Helper]
type = Helper
triggerall = WinKO
triggerall = !NumHelper(7900)
triggerall = !NumHelper(7925)
triggerall = !NumHelper(7950)
triggerall = !Var(15)
triggerall = NumHelper(6000) || NumHelper(6001) || NumHelper(6002)|| NumHelper(6010) || NumHelper(6017) || NumHelper(6018) || NumHelper(6040) || NumHelper(6042) || NumHelper(6050)
trigger1 = NumHelper(6000)
trigger1 = NumHelper(6000) && Helper(6000),NumTarget(6000)
trigger2 = NumHelper(6001)
trigger2 = NumHelper(6001) && Helper(6001),NumTarget(60001)
trigger3 = NumHelper(6002)
trigger3 = NumHelper(6002) && Helper(6002),NumTarget(60002)
trigger4 = NumHelper(6010)
trigger4 = NumHelper(6010) && Helper(6010),NumTarget(6010)
trigger5 = NumHelper(6010)
trigger5 = NumHelper(6010) && Helper(6010),NumTarget(6011)
trigger6 = NumHelper(6010)
trigger6 = NumHelper(6010) && Helper(6010),NumTarget(6012)
trigger7 = NumHelper(6017)
trigger7 = NumHelper(6017) && Helper(6017),NumTarget(6017)
trigger8 = NumHelper(6018)
trigger8 = NumHelper(6018) && Helper(6018),NumTarget(6017)
trigger9 = NumHelper(6040)
trigger9 = NumHelper(6040) && Helper(6040),NumTarget(6040)
trigger10 = NumHelper(6042)
trigger10 = NumHelper(6042) && Helper(6042),NumTarget(6042)
trigger11 = NumHelper(6050)
trigger11 = NumHelper(6050) && Helper(6050),NumTarget(6050)
name = "SpecialKO"
ID = 7925
pos = 0,0
postype = P1
size.xscale = 500
size.yscale = 500
facing = 0
StateNo = 7925
ownpal = 1
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;Special Finish 3
[State -2, Helper]
type = Helper
triggerall = WinKO
triggerall = !NumHelper(7900)
triggerall = !NumHelper(7925)
triggerall = !NumHelper(7950)
triggerall = !Var(15)
triggerall = NumHelper(6060) || NumHelper(6065)
trigger1 = NumHelper(6060)
trigger1 = NumHelper(6060) && Helper(6060),NumTarget(6060)
trigger2 = NumHelper(6065)
trigger2 = NumHelper(6065) && Helper(6065),NumTarget(6065)
name = "SpecialKO"
ID = 7925
pos = 0,0
postype = P1
size.xscale = 500
size.yscale = 500
facing = 0
StateNo = 7925
ownpal = 1
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;Super Finish 1
[State -2, Helper]
type = Helper
triggerall = WinKO
triggerall = !NumHelper(7900)
triggerall = !NumHelper(7925)
triggerall = !NumHelper(7950)
triggerall = !Var(15)
trigger1 = NumTarget(3000) || NumTarget(3001) || NumTarget(3002) || NumTarget(3003) || NumTarget(3004) || NumTarget(3005) || NumTarget(3006)
trigger2 = NumTarget(3007) || NumTarget(3008) || NumTarget(3009) || NumTarget(3010) || NumTarget(3011) || NumTarget(3012) || NumTarget(3013)
trigger3 = NumTarget(3014) || NumTarget(3015) || NumTarget(3016) || NumTarget(3017) || NumTarget(3018) || NumTarget(3019) || NumTarget(3020)
trigger4 = NumTarget(3021) || NumTarget(3022) || NumTarget(3023)
trigger5 = NumTarget(3100) || NumTarget(3101) || NumTarget(3102) || NumTarget(3103) || NumTarget(3104) || NumTarget(3105)
trigger6 = NumTarget(3106) || NumTarget(3107) || NumTarget(3108) || NumTarget(3109) || NumTarget(3110) || NumTarget(3111) || NumTarget(3112)
trigger7 = NumTarget(3113) || NumTarget(3114)
trigger8 = NumTarget(3200) || NumTarget(3201) || NumTarget(3202) || NumTarget(3203) || NumTarget(3204) || NumTarget(3205) || NumTarget(3206)
trigger9 = NumTarget(3207) || NumTarget(3208) || NumTarget(3209) || NumTarget(3210) || NumTarget(3211) || NumTarget(3212) || NumTarget(3213)
trigger10 = NumTarget(3214) || NumTarget(3215) || NumTarget(3216) || NumTarget(3217) || NumTarget(3218) || NumTarget(3219) || NumTarget(3220) || NumTarget(3221)
trigger11 = NumTarget(3300) || NumTarget(3301) || NumTarget(3302) || NumTarget(3303) || NumTarget(3304) || NumTarget(3305) || NumTarget(3306)
trigger12 = NumTarget(3307) || NumTarget(3308) || NumTarget(3309) || NumTarget(3310) || NumTarget(3311) || NumTarget(3312) || NumTarget(3313)
trigger13 = NumTarget(3314) || NumTarget(3315) || NumTarget(3316) || NumTarget(3317) || NumTarget(3318) || NumTarget(3319) || NumTarget(3320)
trigger14 = NumTarget(3321) || NumTarget(3608) || NumTarget(3609) || NumTarget(3610) || NumTarget(3611) || NumTarget(3612) || NumTarget(3613)
trigger15 = NumTarget(3400) || NumTarget(3401) || NumTarget(3402) || NumTarget(3403) || NumTarget(3404) || NumTarget(3405) || NumTarget(3406) || NumTarget(3407)
trigger16 = NumTarget(3408) || NumTarget(3409)
trigger17 = StateNo = 4005 && NumTarget(4000)
trigger17 = AnimElemTime(4) > 45
trigger18 = NumTarget(4100)
trigger19 = NumTarget(4200)
name = "SuperKO"
ID = 7950
pos = 0,0
postype = P1
facing = 0
StateNo = 7950
size.xscale = Cond((StateNo = 3908 || StateNo = 4004),500,1)
size.yscale = Cond((StateNo = 3908 || StateNo = 4004),500,1)
ownpal = 1
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;Super Finish 2
[State -2, Helper]
type = Helper
triggerall = WinKO
triggerall = !NumHelper(7900)
triggerall = !NumHelper(7925)
triggerall = !NumHelper(7950)
triggerall = !Var(15)
triggerall = NumHelper(6020) || NumHelper(6022)
trigger1 = NumHelper(6020)
trigger1 = NumHelper(6020) && (Helper(6020),NumTarget(6020) || Helper(6020),NumTarget(6021) || Helper(6020),NumTarget(6022))
trigger2 = NumHelper(6020)
trigger2 = NumHelper(6020) && (Helper(6020),NumTarget(6023) || Helper(6020),NumTarget(6024) || Helper(6020),NumTarget(6025))
trigger3 = NumHelper(6022)
trigger3 = NumHelper(6022) && (Helper(6022),NumTarget(6022) || Helper(6022),NumTarget(6023) || Helper(6022),NumTarget(6024))
trigger4 = NumHelper(6022)
trigger4 = NumHelper(6022) && (Helper(6022),NumTarget(6025) || Helper(6022),NumTarget(6026))
name = "SuperKO"
ID = 7950
pos = 0,0
postype = P1
facing = 0
StateNo = 7950
ownpal = 1
supermovetime = 1000
pausemovetime = 1000
ignorehitpause = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;ENEMY TURN
[State -2, TargetFacing]
type = TargetFacing
trigger1 = MoveContact && NumTarget
trigger1 = !(Target,HitShakeOver) && !(Target,HitFall) && (Target,Time <= 1)
value = Cond(P2Dist X >= 0,-1,1)
ignorehitpause = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;COUNTER CONFIRM
[State -2, VarSet]
type = VarSet
trigger1 = MoveContact = 1 && Var(7) < 0
var(7) = Ceil(HitPauseTime)
ignorehitpause = 1

[State -2, Helper]
type = Helper
trigger1 = MoveHit = 1 && Var(7) = HitPauseTime
trigger1 = NumEnemy && Var(6)
trigger1 = !(HitDefAttr = SCA,AT)
name = "Counter"
ID = 7100
StateNo = 7100
pos = Ceil(P2Dist X),-50
postype = P1    ;p2,front,back,left,right
facing = -1
ownpal = 1
size.xscale = 3.1
size.yscale = 3.1
supermovetime = 255
pausemovetime = 255
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = NumEnemy
var(6) = Ceil(EnemyNear,MoveType = A)
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = 1
var(7) = -1

[State -2, VarRangeSet]
type = VarRangeSet
trigger1 = MoveType = I
trigger2 = MoveType = H && Time
value = -1
first = 7
last = 8
ignorehitpause = 1

;===============================================================================
; ------- Damage Dampener 1 (Normals/Specials) --------
;===============================================================================
 
;Used to add counter hit scaling
[State -2, Counter Flag]
type = VarSet
trigger1 = Var(5) < 3
trigger1 = NumEnemy
trigger1 = (EnemyNear,MoveType = A)
fvar(1) = 1
ignoreHitPause = 1
[State -2, Counter Flag Reset]
type = VarSet
trigger1 = Var(5) < 3
trigger1 = NumEnemy
trigger1 = (EnemyNear,MoveType != A)
fvar(1) = 0
ignoreHitPause = 1

;Decreases damage if opponent has 50 0r 30% life
;[State -2,Life Scaling]
;type = VarSet
;trigger1 = Var(5) < 3
;trigger1 = NumEnemy
;trigger1 = (EnemyNear,Life > LifeMax*.50)      ;No scaling if over 50% life
;fvar(2) = 1
;ignorehitpause = 1
;[State -2,Life Scaling Reduction1]
;type = VarSet
;trigger1 = Var(5) < 3
;trigger1 = NumEnemy
;fvar(2) = Cond((EnemyNear,Life <= LifeMax*.50),(1-0.10),1)
;ignorehitpause = 1
;[State -2,Life Scaling Reduction2]
;type = VarSet
;trigger1 = Var(5) < 3
;trigger1 = NumEnemy
;trigger1 = FVar(2) < 1
;fvar(2) = Cond((EnemyNear,Life <= LifeMax*.30),(1-0.15),.90)
;ignorehitpause = 1

;Keeps track of current combo count
[State -2, Hit Count]
type = VarAdd
trigger1 = Var(5) < 3
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = !HitPauseTime
fvar(4) = .3
ignorehitpause = 1
[State -2, Hit Count Reset]
type = VarSet
trigger1 = Var(5) < 3
trigger1 = NumEnemy && FVar(4)
trigger1 = (EnemyNear,MoveType != H) && (EnemyNear,StateNo != 5300)
fvar(4) = 0
ignoreHitPause = 1
[State -2, Hit Count Reset]
type = VarSet
triggerall = Var(5) < 3
trigger1 = MoveGuarded
trigger2 = NumEnemy
trigger2 = EnemyNear,MoveType = A
fvar(4) = 0
ignoreHitPause = 1

[State -2, Scaling]
type = VarSet
trigger1 = Var(5) < 3
fvar(3) = Cond(FVar(4) >= 2,1-(.07*FVar(4)),1)
ignoreHitPause = 1

[State -2, Scaling Limit]
type = VarSet
trigger1 = Var(5) < 3
trigger1 = FVar(3) < .10
fvar(3) = .10
ignoreHitPause = 1

[State -2, Root Dampener]
type = VarSet
trigger1 = Var(5) < 3
fvar(5) = FVar(3)*Cond(FVar(1) = 1,1.2,1);*FVar(2)
ignoreHitPause = 1

;===============================================================================
; ------- Damage Dampener 2 (EX Specials) --------
;===============================================================================
 
;Used to add counter hit scaling
[State -2, Counter Flag]
type = VarSet
trigger1 = Var(5) = 3
trigger1 = NumEnemy
trigger1 = (EnemyNear,MoveType = A)
fvar(1) = 1
ignoreHitPause = 1
[State -2, Counter Flag Reset]
type = VarSet
trigger1 = Var(5) = 3
trigger1 = NumEnemy
trigger1 = (EnemyNear,MoveType != A)
fvar(1) = 0
ignoreHitPause = 1

;Keeps track of current combo count
[State -2, Hit Count]
type = VarAdd
trigger1 = Var(5) = 3
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = !HitPauseTime
fvar(4) = .3
ignorehitpause = 1
[State -2, Hit Count Reset]
type = VarSet
trigger1 = Var(5) = 3
trigger1 = NumEnemy && FVar(4)
trigger1 = (EnemyNear,MoveType != H) && (EnemyNear,StateNo != 5300)
fvar(4) = 0
ignoreHitPause = 1
[State -2, Hit Count Reset]
type = VarSet
triggerall = Var(5) = 3
trigger1 = MoveGuarded
trigger2 = NumEnemy
trigger2 = EnemyNear,MoveType = A
fvar(4) = 0
ignoreHitPause = 1

[State -2, Scaling]
type = VarSet
trigger1 = Var(5) = 3
fvar(3) = Cond(FVar(4) >= 2,1-(.065*FVar(4)),1)
ignoreHitPause = 1

[State -2, Scaling Limit]
type = VarSet
trigger1 = Var(5) = 3
trigger1 = FVar(3) < .30
fvar(3) = .30
ignoreHitPause = 1

[State -2, Root Dampener]
type = VarSet
trigger1 = Var(5) = 3
fvar(5) = FVar(3)*Cond(FVar(1) = 1,1.2,1)
ignoreHitPause = 1

;===============================================================================
; ------- Damage Dampener 3 (Supers) --------
;===============================================================================
 
;Used to add counter hit scaling
[State -2, Counter Flag]
type = VarSet
trigger1 = Var(5) >= 4
trigger1 = NumEnemy
trigger1 = (EnemyNear,MoveType = A)
fvar(1) = 1
ignoreHitPause = 1
[State -2, Counter Flag Reset]
type = VarSet
trigger1 = Var(5) >= 4
trigger1 = NumEnemy
trigger1 = (EnemyNear,MoveType != A)
fvar(1) = 0
ignoreHitPause = 1

;Keeps track of current combo count
[State -2, Hit Count]
type = VarAdd
trigger1 = Var(5) >= 4
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = !HitPauseTime
fvar(4) = .3
ignorehitpause = 1
[State -2, Hit Count Reset]
type = VarSet
trigger1 = Var(5) >= 4
trigger1 = NumEnemy && FVar(4)
trigger1 = (EnemyNear,MoveType != H) && (EnemyNear,StateNo != 5300)
fvar(4) = 0
ignoreHitPause = 1
[State -2, Hit Count Reset]
type = VarSet
triggerall = Var(5) >= 4
trigger1 = MoveGuarded
trigger2 = NumEnemy
trigger2 = EnemyNear,MoveType = A
fvar(4) = 0
ignoreHitPause = 1

[State -2, Scaling]
type = VarSet
trigger1 = Var(5) >= 4
fvar(3) = Cond(FVar(4) >= 2,1-(.06*FVar(4)),1)
ignoreHitPause = 1

[State -2, Scaling Limit]
type = VarSet
trigger1 = Var(5) >= 4
trigger1 = FVar(3) < .50
fvar(3) = .50
ignoreHitPause = 1

[State -2, Root Dampener]
type = VarSet
trigger1 = Var(5) >= 4
fvar(5) = FVar(3)*Cond(FVar(1) = 1,1.2,1)
ignoreHitPause = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;AIR JUGGLE
[State -2, VarSet]
type = VarSet
trigger1 = NumEnemy
trigger1 = EnemyNear,Ctrl
trigger2 = MoveGuarded
trigger3 = NumEnemy
trigger3 = EnemyNear,MoveType = H
trigger3 = EnemyNear,StateNo = 5120
trigger4 = NumEnemy
trigger4 = EnemyNear,MoveType = H
trigger4 = EnemyNear,StateNo = 2000
var(54) = Const(Data.AirJuggle)
[State -2, VarSet]
type = VarSet
trigger1 = NumTarget
trigger1 = Target,StateNo = 5120
var(54) = Const(Data.AirJuggle)

;Normal
[State -2, VarAdd]
type = VarAdd
triggerall = NumEnemy
triggerall = EnemyNear,StateType = A
trigger1 = NumTarget(200)
trigger1 = Target(200),MoveType = H
trigger1 = !(Target(200),Time)
trigger2 = NumTarget(230)
trigger2 = Target(230),MoveType = H
trigger2 = !(Target(230),Time)
trigger3 = NumTarget(231)
trigger3 = Target(231),MoveType = H
trigger3 = !(Target(231),Time)
trigger4 = NumTarget(400)
trigger4 = Target(400),MoveType = H
trigger4 = !(Target(400),Time)
trigger5 = NumTarget(420)
trigger5 = Target(420),MoveType = H
trigger5 = !(Target(420),Time)
trigger6 = NumTarget(430)
trigger6 = Target(430),MoveType = H
trigger6 = !(Target(430),Time)
trigger7 = NumTarget(600)
trigger7 = Target(600),MoveType = H
trigger7 = !(Target(600),Time)
trigger8 = NumTarget(630)
trigger8 = Target(630),MoveType = H
trigger8 = !(Target(630),Time)
trigger9 = NumTarget(631)
trigger9 = Target(631),MoveType = H
trigger9 = !(Target(631),Time)
var(54) = -15
ignorehitpause = 1
[State -2, VarAdd]
type = VarAdd
triggerall = NumEnemy
triggerall = EnemyNear,StateType = A
trigger1 = NumTarget(210)
trigger1 = Target(210),MoveType = H
trigger1 = !(Target(210),Time)
trigger2 = NumTarget(212)
trigger2 = Target(212),MoveType = H
trigger2 = !(Target(212),Time)
trigger3 = NumTarget(240)
trigger3 = Target(240),MoveType = H
trigger3 = !(Target(240),Time)
trigger4 = NumTarget(241)
trigger4 = Target(241),MoveType = H
trigger4 = !(Target(241),Time)
trigger5 = NumTarget(242)
trigger5 = Target(242),MoveType = H
trigger5 = !(Target(242),Time)
trigger6 = NumTarget(410)
trigger6 = Target(410),MoveType = H
trigger6 = !(Target(410),Time)
trigger7 = NumTarget(440)
trigger7 = Target(440),MoveType = H
trigger7 = !(Target(440),Time)
trigger8 = NumTarget(610)
trigger8 = Target(610),MoveType = H
trigger8 = !(Target(610),Time)
trigger9 = NumTarget(640)
trigger9 = Target(640),MoveType = H
trigger9 = !(Target(640),Time)
var(54) = -20
ignorehitpause = 1
[State -2, VarAdd]
type = VarAdd
triggerall = NumEnemy
triggerall = EnemyNear,StateType = A
trigger1 = NumTarget(220)
trigger1 = Target(220),MoveType = H
trigger1 = !(Target(220),Time)
trigger2 = NumTarget(221)
trigger2 = Target(221),MoveType = H
trigger2 = !(Target(221),Time)
trigger3 = NumTarget(250)
trigger3 = Target(250),MoveType = H
trigger3 = !(Target(250),Time)
trigger4 = NumTarget(251)
trigger4 = Target(251),MoveType = H
trigger4 = !(Target(251),Time)
trigger5 = NumTarget(252)
trigger5 = Target(252),MoveType = H
trigger5 = !(Target(252),Time)
trigger6 = NumTarget(450)
trigger6 = Target(450),MoveType = H
trigger6 = !(Target(450),Time)
trigger7 = NumTarget(451)
trigger7 = Target(451),MoveType = H
trigger7 = !(Target(451),Time)
trigger8 = NumTarget(620)
trigger8 = Target(620),MoveType = H
trigger8 = !(Target(620),Time)
trigger9 = NumTarget(650)
trigger9 = Target(650),MoveType = H
trigger9 = !(Target(650),Time)
var(54) = -25
ignorehitpause = 1

;Special
[State -2, VarAdd]
type = VarAdd
triggerall = NumEnemy
triggerall = EnemyNear,StateType = A
trigger1 = NumTarget(1100)
trigger1 = Target(1100),MoveType = H
trigger1 = !(Target(1100),Time)
trigger2 = NumTarget(1101)
trigger2 = Target(1101),MoveType = H
trigger2 = !(Target(1101),Time)
trigger3 = NumTarget(1102)
trigger3 = Target(1102),MoveType = H
trigger3 = !(Target(1102),Time)
trigger4 = NumTarget(1300)
trigger4 = Target(1300),MoveType = H
trigger4 = !(Target(1300),Time)
trigger5 = NumHelper(421)
trigger5 = Helper(421),Var(16)
trigger5 = Helper(421),AnimElem = 7
trigger6 = NumTarget(1700)
trigger6 = Target(1700),MoveType = H
trigger6 = !(Target(1700),Time)
var(54) = -10

;EX Special
[State -2, VarAdd]
type = VarAdd
triggerall = NumEnemy
triggerall = EnemyNear,StateType = A
trigger1 = NumTarget(1110)
trigger1 = Target(1110),MoveType = H
trigger1 = !(Target(1110),Time)
trigger2 = NumTarget(1111)
trigger2 = Target(1111),MoveType = H
trigger2 = !(Target(1111),Time)
trigger3 = NumTarget(1310)
trigger3 = Target(1310),MoveType = H
trigger3 = !(Target(1310),Time)
trigger4 = NumTarget(1710)
trigger4 = Target(1710),MoveType = H
trigger4 = !(Target(1710),Time)
var(54) = -5

[State -2, AssertSpecial]
type = AssertSpecial
trigger1 = Var(54) > 0
trigger2 = Var(5) > 3
flag = NoJuggleCheck
ignorehitpause = 1

;----SONIC BOOM JUGGLE----;
[State -2, VarSet]
type = VarSet
triggerall = NumEnemy
trigger1 = MoveType = H
trigger2 = EnemyNear,StateType = L
trigger3 = EnemyNear,MoveType != H
var(55) = 0

;--------------------------------------------------------------------------------------------------------------------------------------------
;UNO TAG SYSTEM v4.0 STATEDEF -2
[State -2, VarSet]
type = VarSet
trigger1 = 1
var(42) = 0

[State -2, VarSet]
type = VarSet
triggerall = StateNo != 100
trigger1 = Var(17)
trigger2 = Var(18)
trigger3 = Var(19)
var(42) = 1
ignorehitpause = 1

[State -2, VarSet]
type = VarSet
trigger1 = 1
var(45) = 0

[State -2, VarSet]
type = VarSet
trigger1 = StateNo != [125110,1251133]
trigger1 = PrevStateNo != [125110,1251133]
trigger1 = !NumHelper(1251101)
trigger1 = !NumHelper(1251102)
trigger1 = !NumHelper(1251103)
trigger1 = !NumHelper(1251104)
trigger1 = !NumHelper(1251105)
trigger1 = !NumHelper(1251107)
trigger1 = !NumHelper(1251114)
trigger1 = !NumHelper(1251115)
trigger1 = !NumHelper(1251124)
trigger1 = !NumHelper(1251125)
trigger1 = !NumHelper(1251130)
trigger1 = !NumHelper(1251139)
var(44) = 0

[State -2, VarSet]
type = VarSet
trigger1 = StateNo = [125110,1251133]
trigger2 = PrevStateNo = [125110,1251133]
trigger3 = NumHelper(1251101)
trigger4 = NumHelper(1251102)
trigger5 = NumHelper(1251103)
trigger6 = NumHelper(1251104)
trigger7 = NumHelper(1251105)
trigger8 = NumHelper(1251107)
trigger9 = NumHelper(1251114)
trigger10 = NumHelper(1251115)
trigger11 = NumHelper(1251124)
trigger12 = NumHelper(1251125)
trigger13 = NumHelper(1251130)
trigger14 = NumHelper(1251139)
var(44) = 1

[State -2, VarSet]
type = VarSet
triggerall = NumPartner
trigger1 = Partner,PrevStateNo = [125110,1251133]
trigger2 = Partner,NumHelper(1251101)
trigger3 = Partner,NumHelper(1251102)
trigger4 = Partner,NumHelper(1251103)
trigger5 = Partner,NumHelper(1251104)
trigger6 = Partner,NumHelper(1251105)
trigger7 = Partner,NumHelper(1251107)
trigger8 = Partner,NumHelper(1251114)
trigger9 = Partner,NumHelper(1251115)
trigger10 = Partner,NumHelper(1251124)
trigger11 = Partner,NumHelper(1251125)
trigger12 = Partner,NumHelper(1251130)
trigger13 = Partner,NumHelper(1251139)
var(44) = 1

[State -2, VarSet];Deactivate Tag
type = VarSet
triggerall = sysvar(4) > 0
triggerall = sysvar(4) != 6
triggerall = sysvar(4) != 3
triggerall = NumPartner
trigger1 = RoundState > 2
trigger1 = Win || Lose
trigger2 = RoundState < 1
trigger2 = TeamMode = Simul
trigger2 = !Partner,sysvar(4)
trigger2 = Time = [1,2]
trigger3 = Partner,sysvar(4)
trigger3 = !Life
sysvar(4) = 0

[State -2, VarSet]
type = VarSet
triggerall = NumPartner
triggerall = Partner,StateNo != [1251110,1251114]
triggerall = sysvar(4) != 3
trigger1 = sysvar(4) = 10
trigger2 = sysvar(4) != 2 && PrevStateNo = 1251131
sysvar(4) = 15

[State -2, VarSet]
type = VarSet
triggerall = NumPartner
trigger1 = Numhelper(1251105)
trigger1 = sysvar(4) != 12
sysvar(4) = 12

[State -2, ParentVarSet]
type = Null ;ParentVarSet
trigger1 = PrevStateNo = 1251106
sysvar(4) = 7

[State -2, ScreenBound]
type = ScreenBound
triggerall = NumPartner
trigger1 = Partner,sysvar(4) = 4
trigger1 = StateNo = 1251131 || PrevStateNo = 1251131
value = 1
movecamera = 1,1

[State -2, NotHitBy]
type = NotHitBy
trigger1 = NumPartner
trigger1 = sysvar(4) = [8,9]
trigger1 = StateNo != 1251112
value = ,AT

[State -2, VarSet]
type = VarSet
triggerall = NumPartner
triggerall = Partner,Time = [0,1]
triggerall = sysvar(4) != 15
trigger1 = Partner,StateNo = 1251104 && sysvar(4) != 3
trigger2 = Partner,StateNo = 1251110 && sysvar(4) != 3
trigger2 = StateNo != [1251101,1251133]
trigger3 = sysvar(4) = 3 && RoundState <= 2
sysvar(4) = 1

[State -2, ChangeState]
type = ChangeState
triggerall = NumPartner
triggerall = RoundState = 2 && Alive
triggerall = sysvar(4) = 12
trigger1 = StateNo != [1251101,1251133]
trigger1 = MoveType = I || (StateNo = 5120 && AnimTime < 2)
trigger1 = StateType != A
value = 1251118

[State -2, SelfState]
type = SelfState
triggerall = NumPartner
triggerall = sysvar(4) != [8,9]
triggerall = sysvar(4) != [12,15]
trigger1 = PrevStateNo = 1251112
trigger1 = !(StateNo = [1251101,1251133])
value = 1251112
ctrl = 0

[State -2, PowerAdd]
type = PowerAdd
triggerall = NumPartner
trigger1 = sysvar(4) = 5
trigger1 = RoundNo < 2
trigger1 = RoundState < 2
trigger1 = Time = 0
value = -Power
persistent = 0

;[State -2, PowerAdd]
;type = PowerAdd
;triggerall = NumPartner
;trigger1 = sysvar(4) = 5 && Power < 900
;trigger1 = RoundNo < 2
;trigger1 = RoundState < 2
;trigger1 = Time = 1
;value = 1000
;persistent = 0

[State -2, SprPriority]
type = SprPriority
triggerall = NumPartner
trigger1 = Partner,sysvar(4) = 2
trigger2 = (sysvar(4) = [8,9]) && StateNo != [1251110,1251111]
value = 2

[State -2, ChangeState]
type = ChangeState
trigger1 = NumPartner
trigger1 = ID > Partner,ID
trigger1 = RoundState = 2 && sysvar(4)
trigger1 = StateNo = 0 && Pos Y < 0
value = 1251112

[State -2, SelfState];Tag active ctrl
type = SelfState
trigger1 = TeamMode = Simul
trigger1 = NumPartner
trigger1 = Partner,sysvar(4)
trigger1 = !sysvar(4)
trigger1 = sysvar(4) != 8 && Partner,sysvar(4) != 8 && Partner,sysvar(4) != 12
trigger1 = StateNo != 5900
trigger1 = Partner,sysvar(4) != [2,15]
trigger1 = RoundState = 2
trigger1 = Life && Partner,Life
trigger1 = StateNo != [1000,1251199]
value = 1251112
ctrl = 0

[State -2, SelfState]
type = SelfState
triggerall = NumPartner
trigger1 = StateNo != 1251106 && Partner,StateNo = [1251128,1251129]
value = 1251106

[State -2, SelfState]
type = SelfState
triggerall = NumPartner
triggerall = Partner,Time = [0,1]
triggerall = (StateNo = 1251112 || StateNo = 1251114) && MoveType != A
trigger1 = Partner,StateNo = 1251132 || Partner,PrevStateNo = 1251132
trigger2 = Partner,StateNo = 1251127 && !NumHelper(1251101)
value = 1251131

[State -2, PalFX]
type = PalFX
triggerall = NumPartner
triggerall = RoundState = 2
triggerall = Time = [0,1]
trigger1 = StateNo = 1251123
trigger2 = NumTarget
trigger2 = StateNo = 1251125
time = 6
add = (110+Time*15),(110+Time*15),(190+Time*15)
sinadd = -245,-245,-250,(40+Time*5)

[State -2, TargetDrop]
type = TargetDrop
triggerall = NumPartner
triggerall = NumTarget
triggerall = Time = [0,1]
trigger1 = !Life
trigger2 = StateNo = [1251101,1251105]
trigger3 = StateNo = [1251115,1251116]  
trigger4 = StateNo = 1251106 || StateNo = 1251123
trigger5 = StateNo = [1251112,1251114]  ;--testing lang

[State -2, PosFreeze]
type = PosFreeze
triggerall = NumPartner
triggerall = NumTarget
trigger1 = PrevStateNo = 1251102 && StateNo != 1251123
trigger1 = sysvar(4) = 15
trigger1 = Anim != [42,45]
trigger1 = Time <= 5
trigger1 = Target,StateType != A
trigger1 = MoveType = A

[State -2, VelMul]
type = VelMul
triggerall = NumPartner
trigger1 = NumTarget
trigger1 = PrevStateNo = 1251102
trigger1 = StateNo != [1251100, 1251190]
trigger1 = MoveType = A && StateNo < 1000
x = Cond(P2BodyDist X < 0,.7,.9)
y = Cond(Vel Y < 2,2,.9)
[State -2, VelMul]
type = VelMul
triggerall = NumPartner
trigger1 = NumEnemy
trigger1 = P2BodyDist X < 0
trigger1 = PrevStateNo = 1251102
trigger1 = StateNo != [1251100, 1251190]
trigger1 = MoveType = A && StateNo < 1000
x = Cond(P2BodyDist X < 0,.7,.9)
y = Cond(Vel Y < 2,2,.9)

[State -2, VelAdd]
type = VelAdd
triggerall = NumPartner
triggerall = NumTarget
trigger1 = PrevStateNo = 1251123
trigger1 = Target,Vel Y < -.6
trigger1 = MoveType = A && (Time = [0,3])
y = -1.2

;[State -2, TargetState]
;type = TargetState
;triggerall = NumPartner
;triggerall = NumEnemy
;triggerall = Var(42)
;triggerall = MoveContact
;trigger1 = StateNo = 1251102 || PrevStateNo = 1251102 || StateNo = 1251123 || PrevStateNo = 1251123 || StateNo = 1251126 || PrevStateNo = 1251126
;trigger1 = (EnemyNear,Pos Y < 0)
;trigger1 = !(EnemyNear,StateNo = [120,152])
;trigger1 = (EnemyNear,StateNo != [1251109,1251119])
;trigger1 = (EnemyNear,Anim = [5100,5170])
;trigger1 = (EnemyNear,Anim != [5110,5120])
;trigger1 = (EnemyNear,PrevStateNo != 1251119)
;trigger1 = (EnemyNear,StateType != A)
;trigger1 = !(EnemyNear,HitOver)
;value = 1251119
;ignorehitpause = 1
;
;[State -2, TargetState]
;type = TargetState
;triggerall = Var(42)
;triggerall = NumPartner
;triggerall = NumEnemy
;triggerall = !(EnemyNear,StateNo = [120,152])
;triggerall = !(EnemyNear,Anim = [120,152])
;triggerall = Partner,StateNo = [1251101,1251133]
;triggerall = Time = [0,2]
;trigger1 = StateNo = 1251125
;trigger1 = Var(42)
;trigger1 = NumEnemy
;trigger1 = EnemyNear,StateType != A
;trigger2 = (StateNo = 1251126 || PrevStateNo = 1251126)
;trigger2 = Var(42)
;trigger2 = NumEnemy
;trigger2 = EnemyNear,Pos Y >= -10
;trigger2 = (EnemyNear,StateNo != [1251109,1251119])
;trigger2 = (EnemyNear,StateNo != [5000,5500])
;value = 1251117
;ignorehitpause = 1
;
;[State -2, TargetState]
;type = TargetState
;triggerall = NumPartner
;triggerall = NumEnemy
;triggerall = Var(42)
;triggerall = (EnemyNear,StateNo != [1251109,1251119])
;triggerall = !(EnemyNear,StateNo = [120,152])
;triggerall = !(EnemyNear,Anim = [120,152])
;triggerall = (EnemyNear,StateNo != [5000,5500])
;triggerall = (EnemyNear,PrevStateNo != 1251119)
;triggerall = (EnemyNear,StateNo = [5030,5100])
;triggerall = !(EnemyNear,HitOver)
;trigger1 = (StateNo = 1251125 && Time = [0,2]) 
;trigger2 = PrevStateNo = 1251102
;trigger2 = Var(42)
;trigger2 = NumEnemy
;trigger2 = EnemyNear,Pos Y < 0
;value = 1251119
;ignorehitpause = 1

;[State -2, TargetVelSet]
;type = Null
;triggerall = NumPartner
;triggerall = NumEnemy
;triggerall = Var(42)
;trigger1 = NumEnemy
;trigger1 = EnemyNear,MoveType = H
;trigger1 = EnemyNear,Vel X != 0
;trigger1 = StateNo = 1251126 || sysvar(4) = 3
;x = Cond((EnemyNear, Vel X > 0),.55,-.55)

[State -2, AssertSpecial]
type = AssertSpecial
triggerall = IsHelper
trigger1 = (Root,StateNo = [1251112,1251114])
flag = Invisible
flag2 = NoShadow

[State -2, SelfState]
type = SelfState
triggerall = NumPartner
trigger1 = Partner,StateNo = 1251106
trigger1 = StateNo = [1000,4500]
value = 1251129

;UNO TAG SYSTEM v4.0 STATEDEF -2 END LINE
;--------------------------------------------------------------------------------------------------------------------------------------------

;--------------------------------------------------------------------------------------------------------------------------------------------
[StateDef -3]

[State -3, DestroySelf]
type = DestroySelf
trigger1 = IsHelper
trigger1 = MoveType = H
ignorehitpause = 1
persistent = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;AFTERIMAGE CANCEL
[State -3, AfterImageTime]
type = AfterImageTime
trigger1 = MoveType = H
time = 1

[State -3, VarSet]
type = VarSet
trigger1 = Pos Y >= 0
var(1) = 0

;-------------------------------------------------------------------------------------------------------------------------------------------
;BIKE RESET
[State -3, Helper]
type = Helper
trigger1 = RoundsExisted < 1
trigger1 = !NumHelper(7052) && Var(0)
stateNo = 7052
ID = 7052
name = "Bike1"
postype = P1
facing = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;SOUND CANCEL
[State -3, StopSnd]
type = StopSnd
triggerall = Time < 5
trigger1 = PrevStateNo = 740
trigger2 = MoveType = H
channel = 1
[State -3, StopSnd]
type = StopSnd
triggerall = Time < 5
trigger1 = PrevStateNo = 741
trigger2 = MoveType = H
channel = 1
[State -3, StopSnd]
type = StopSnd
triggerall = Time < 5
trigger1 = PrevStateNo = 740
trigger2 = MoveType = H
channel = 2
[State -3, StopSnd]
type = StopSnd
triggerall = Time < 5
trigger1 = PrevStateNo = 741
trigger2 = MoveType = H
channel = 2

[State -3, StopSnd]
type = StopSnd
triggerall = Time < 5
trigger1 = PrevStateNo = 3000 || PrevStateNo = 3900
trigger1 = MoveType = H
channel = 11
[State -3, StopSnd]
type = StopSnd
triggerall = Time < 5
trigger1 = PrevStateNo = 3000 || PrevStateNo = 3900
trigger1 = MoveType = H
channel = 12
[State -3, StopSnd]
type = StopSnd
triggerall = Time < 5
trigger1 = PrevStateNo = 3000 || PrevStateNo = 3900
trigger1 = MoveType = H
channel = 13
[State -3, StopSnd]
type = StopSnd
triggerall = Time < 5
trigger1 = PrevStateNo = 3000 || PrevStateNo = 3900
trigger1 = MoveType = H
channel = 14
[State -3, StopSnd]
type = StopSnd
triggerall = Time < 5
trigger1 = PrevStateNo = 3000 || PrevStateNo = 3900
trigger1 = MoveType = H
channel = 15
[State -3, StopSnd]
type = StopSnd
triggerall = Time < 5
trigger1 = PrevStateNo = 3000 || PrevStateNo = 3900
trigger1 = MoveType = H
channel = 16

;--------------------------------------------------------------------------------------------------------------------------------------------
;EXPLOD REMOVE
[State -3, RemoveExplod]
type = RemoveExplod
trigger1 = StateNo = 52
ID = 6016
ignorehitpause = 1

[State -3, RemoveExplod]
type = RemoveExplod
trigger1 = StateNo != 0
ID = 60260
ignorehitpause = 1

[State -3, RemoveExplod]
type = RemoveExplod
triggerall = Pos Y >= 0
trigger1 = PrevStateNo = 1203
trigger2 = PrevStateNo = 1211
ID = 6082
ignorehitpause = 1

[State -3, RemoveExplod]
type = RemoveExplod
trigger1 = StateNo = 52 && !Time
ID = 6070
ignorehitpause = 1
[State -3, RemoveExplod]
type = RemoveExplod
trigger1 = StateNo = 52 && !Time
ID = 6071
ignorehitpause = 1

[State -3, RemoveExplod]
type = RemoveExplod
trigger1 = StateNo != 0
ID = 62020
ignorehitpause = 1

[State -3, RemoveExplod]
type = RemoveExplod
trigger1 = MoveType = H
ID = 6250

[State -3, RemoveExplod]
type = RemoveExplod
trigger1 = StateNo != 0
ID = 63201
ignorehitpause = 1

[State -3, RemoveExplod]
type = RemoveExplod
trigger1 = StateNo != 0
ID = 68500
ignorehitpause = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;SOUND CANCEL
[State -3, StopSnd]
type = StopSnd
trigger1 = MoveType = H
trigger1 = PrevStateNo = 3000
channel = 11
ignorehitpause = 1
persistent = 0
[State -3, StopSnd]
type = StopSnd
trigger1 = MoveType = H
trigger1 = PrevStateNo = 3000
channel = 12
ignorehitpause = 1
persistent = 0
[State -3, StopSnd]
type = StopSnd
trigger1 = MoveType = H
trigger1 = PrevStateNo = 3000
channel = 13
ignorehitpause = 1
persistent = 0
[State -3, StopSnd]
type = StopSnd
trigger1 = MoveType = H
trigger1 = PrevStateNo = 3000
channel = 14
ignorehitpause = 1
persistent = 0
[State -3, StopSnd]
type = StopSnd
trigger1 = MoveType = H
trigger1 = PrevStateNo = 3000
channel = 15
ignorehitpause = 1
persistent = 0
[State -3, StopSnd]
type = StopSnd
trigger1 = MoveType = H
trigger1 = PrevStateNo = 3000
channel = 16
ignorehitpause = 1
persistent = 0

;--------------------------------------------------------------------------------------------------------------------------------------------
;JUMP COLLISION
[State -3, PlayerPush]
type = PlayerPush
triggerall = StateType = A && MoveType != H && NumEnemy = 1
triggerall = P2BodyDist X = [-(EnemyNear,Const(Size.Ground.Back)+EnemyNear,Const(Size.Ground.Front)),0]
trigger1 = P2StateType = S
trigger1 = P2Dist Y >= (EnemyNear,Const(Size.Height)-30)
trigger2 = P2StateType = C
trigger2 = P2Dist Y >= (EnemyNear,Const(Size.Height)-56)
trigger3 = P2StateType = L
trigger3 = P2Dist Y >= 12
value = 0
ignorehitpause = 1

[State -3, VarSet]
type = VarSet
trigger1 = 1
;trigger1 = Ctrl
;trigger2 = MoveType = H
var(13) = 0

;--------------------------------------------------------------------------------------------------------------------------------------------
;PROJECTILE DETECTION
[state -3, Helper]
type = Helper
trigger1 = !NumHelper(33333333)
name = "AI Projectile Detection System"
ID = 33333333
StateNo = 33333333
postype = P1
ownpal = 1
keyctrl = 0
size.xscale = 1
size.yscale = 1
supermovetime = 2147483647
pausemovetime = 2147483647
ignorehitpause = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;HURT SOUNDS
[State -3, PlaySnd]
type = PlaySnd
triggerall = Alive && Time = 1
triggerall = StateNo = 5000 || StateNo = 5010
trigger1 = GetHitVar(AnimType) >= 2 && Random < 500
trigger2 = GetHitVar(AnimType) = 1 && Random < 375
trigger3 = GetHitVar(AnimType) = 0 && Random < 250
value = S5000,0+(Random%3)
channel = 0
ignorehitpause = 1

[State -3, PlaySnd]
type = PlaySnd
triggerall = Alive && Time = 1
trigger1 = (StateNo = 5000 || StateNo = 5010) && NumEnemy
trigger1 = GetHitVar(Fall) || (EnemyNear,HitDefAttr = SCA, SA, HA)
trigger2 = (StateNo = 5020 || StateNo = 5070 || StateNo = 5080)
trigger3 = (StateNo = 5050 || StateNo = 5100) && (PrevStateNo != [5000,5199])
value = S5000,0+(Random%3)
channel = 0
ignorehitpause = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;FALL SOUND
[State -3, PlaySnd]
type = PlaySnd
trigger1 = Time = 1
trigger1 = StateNo = 5100 || StateNo = 5110
value = S54,0
channel = 1
ignorehitpause = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;CHIP DEATH
[State -3, ChangeState]
type = ChangeState
trigger1 = !Alive && (StateNo = [5000,5010])
trigger1 = (PrevStateNo = [130,131]) || (PrevStateNo = [140,141]) || (PrevStateNo = [150,153])
value = 5950
ctrl = 0
ignorehitpause = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;UNO TAG SYSTEM v4.0 STATEDEF -3
[State -3, VarSet];Tag active definer
type = VarSet
triggerall = NumPartner
triggerall = sysvar(4) != 3
trigger1 = sysvar(4) = [8,9]
trigger1 = !(Partner,Life) || (Partner,StateNo = [1251110,1251114])
trigger2 = Partner,StateNo = [1251110,1251114]
trigger2 = sysvar(4) != [2,15] 
trigger3 = sysvar(4) = 5
trigger3 = Roundstate = 2 && StateNo = [1251111,1251114]
trigger4 = sysvar(4) = 14
trigger4 = MoveType = H && Partner,StateNo = [1251101,1251133]
trigger5 = NumEnemy
trigger5 = sysvar(4) = 15
trigger5 = EnemyNear,StateNo = [0,50]
trigger6 = sysvar(4) = 15 && StateNo != [1251101,1251133]
trigger6 = NumTarget = 0 && Partner,NumTarget = 0
sysvar(4) = 1

[State -3, VarSet];Partner
type = VarSet
triggerall = TeamMode = Simul
triggerall = NumPartner
trigger1 = RoundState < 1
sysvar(4) = 1+((ID > Partner,ID)*4)

[State -3, ChangeState]
type = ChangeState
triggerall = sysvar(4)
triggerall = NumPartner
trigger1 = StateNo = [1251112,1251114]	
trigger1 = Life && Partner,StateNo = 1251125
value = 1251104

[State -3, ChangeState];Jump into the screen (Change Attack)
type = ChangeState
triggerall = sysvar(4)
triggerall = NumPartner
triggerall = Partner,NumTarget
trigger1 = StateNo = 1251112
trigger1 = Partner,sysvar(4) = 12
trigger1 = Life
value = 1251102

[State -3, ChangeState];Jump into the screen (Game is OVER)
type = ChangeState
triggerall = NumPartner
triggerall = NumHelper(1251114)
triggerall = sysvar(4)
trigger1 = Helper(1251114),StateNo != 1251115
trigger1 = Alive
trigger1 = StateNo = [1251112,1251114]
trigger1 = Time > 0
trigger1 = RoundState > 2
trigger1 = Win || LoseTime || WinTime || DrawGame
value = 1251120

[State -3, AssertSpecial]
type = AssertSpecial
triggerall = NumPartner
trigger1 = Partner,sysvar(4) = [12,13]
trigger2 = sysvar(4) = [8,9]
trigger3 = PrevStateNo = [1251112,1251133]
trigger4 = sysvar(4) = 15 && Partner,Time < 150
flag = NoJuggleCheck
ignorehitpause = 1

;[State -3, RemoveExplod]
;type = RemoveExplod
;triggerall = NumPartner
;trigger1 = StateNo = [1251110,1251113]
;trigger2 = !Life
;trigger3 = StateNo = [1251126,1251127]

[State -3, SprPriority]
type = SprPriority
trigger1 = sysvar(4) = 3
value = -5

[State -3, PalFX]
type = PalFX
triggerall = RoundState = 2
trigger1 = Time = [0,1]
trigger1 = StateNo = 1251102
trigger2 = NumHelper(1251105)
trigger2 = Helper(1251105),Time = [2,35]
time = Cond(StateNo = 1251116,4,10)
add = (175-Time),(125-Time),(125-Time)
mul = 245,245,(125+Time)

[State -3, PalFX]
type = PalFX
triggerall = RoundState = 2
triggerall = NumPartner
trigger1 = NumHelper(1251105)
trigger1 = Helper(1251105),Time < 2
trigger2 = NumPartner
trigger2 = (Partner,StateNo = 1251102) && (Partner,Time <= 12)
time = 2
add = 256,256,256

[State -3, AssertSpecial]
type = AssertSpecial
triggerall = NumPartner
trigger1 = Partner,sysvar(4) = 7
trigger1 = !Alive && !NumHelper(1251130)
flag = NoKOSnd

[State -3, AssertSpecial]
type = AssertSpecial
triggerall = NumPartner
trigger1 = StateNo = 1251106
trigger2 = StateNo = 1251127 || Partner,StateNo = 1251127
trigger3 = NumHelper(1251101)
trigger3 = StateNo = 1251131 && Partner,StateNo != 1251125
flag = NoBG
flag2 = NoFG
flag3 = TimerFreeze
ignorehitpause = 1

[State -3, PalFX]
type = PalFX
triggerall = NumPartner
trigger1 = StateNo = 1251111
trigger2 = StateNo = 1251127
trigger3 = (sysvar(4) = [8,9]) && StateNo = 1251110 && Time > 12
trigger4 = StateNo = 1251110 && Time > 14
time = 2
add = 0,0,0
mul = 150,150,150

[State -3, BgPalFX]
type = BgPalFX
trigger1 = NumHelper(1251130)
trigger2 = StateNo = 1251106
time = 2
color = 0
invertall = 1
add = -16-Ceil(Cos(GameTime/60*Pi)*16),-16-Ceil(Cos(GameTime/60*Pi)*16),-16-Ceil(Cos(GameTime/60*Pi)*16)
ignorehitpause = 1

[State -3, PalFX]
type = PalFX
triggerall = NumEnemy
trigger1 = (Enemy,PrevStateNo = [1251128,1251129]) || (EnemyNear,PrevStateNo = [1251128,1251129])
trigger2 = Enemy,StateNo = 1251106 || EnemyNear,StateNo = 1251106
time = 2
color = 0
add = -16-Ceil(Cos(GameTime/60*Pi)*16),-16-Ceil(Cos(GameTime/60*Pi)*16),-16-Ceil(Cos(GameTime/60*Pi)*16)
ignorehitpause = 1

[State -3, PalFX]
type = PalFX
trigger1 = PrevStateNo = [1251128,1251129]
time = 10
invertall = 1
mul = 150, 150, 150

;[State -3, SuperPause]
;type = SuperPause
;triggerall = NumPartner
;trigger1 = Partner,StateNo = 1251106
;trigger1 = NumHelper(1251130)
;trigger2 = NumHelper(1251101) && Partner,StateNo != 1251125
;trigger2 = MoveType != H
;time = 10
;anim = -1
;sound = -1
;movetime = 10
;darken = 1
;p2defmul = 0
;unhittable = 1
;pausebg = 1

[State -3, AssertSpecial]
type = AssertSpecial
triggerall = NumPartner
trigger1 = sysvar(4) = 8
trigger1 = MoveType = A
trigger1 = PrevStateNo = 1251133
flag = NoAirGuard
flag2 = NoJuggleCheck
flag3 = NoWalk
ignorehitpause = 1

[State -3, VarSet]
Type = VarSet
Triggerall = sysvar(4) = 8 && RoundState = 2
triggerall = NumPartner
triggerall = Partner,Alive
trigger1 = MoveType = H
trigger2 = StateNo = [5000,5990]
trigger3 = StateNo = [150,151]
sysvar(4) = 9

[State -3, SelfState]
type = SelfState
triggerall = NumPartner
trigger1 = sysvar(4) = 9
trigger1 = Alive && Partner,Alive
trigger1 = StateNo != 5120
trigger1 = StateNo = 5110 || Anim = 5110
trigger1 = Time >= 12
value = 5120

[State -3, SelfState]
type = SelfState
triggerall = sysvar(4) = [8,9]
triggerall = StateType != A || PrevStateNo = [5000,5500]
triggerall = NumPartner
trigger1 = RoundState = 2
trigger1 = Life && Partner,Life
trigger1 = Partner,StateNo != [1251101,1251135]
trigger1 = StateNo != [200,1251199]
trigger1 = MoveType != H || ((StateNo = [5110, 5120]) && (Time >= 19 || AnimElemTime(4) >= 1))
value = Cond((sysvar(4) = 9 || (StateNo = [150,151])),1251112,1251110)
ctrl = 0

[State -3, SelfState]
type = SelfState
triggerall = NumPartner
trigger1 = StateNo = 7828
trigger1 = PrevStateNo = [1251110,1251114] 
trigger2 = sysvar(4) = [8,9]
trigger2 = Anim = 100 && StateNo != [1251101,1251133]
trigger3 = sysvar(4) = 5
trigger3 = PrevStateNo = [1251110,1251114] 
trigger3 = StateNo != [1251101,1251133]
value = 1251112

[State -3, Helper]
type = Helper
triggerall = sysvar(4) = 5
triggerall = NumPartner
trigger1 = RoundState >= 2
trigger1 = StateNo != [1000,1251199]
trigger1 = !NumHelper(1251114)
ID = 1251114
StateNo = 1251115
name = "Out"
pos = 0,0
postype = P1
ownpal = 1
size.shadowoffset = -10
supermovetime = 0;9999
pausemovetime = 0;9999
persistent = 0

[State -3, SelfState]
type = SelfState
triggerall = sysvar(4) = 5
triggerall = NumPartner
trigger1 = RoundState >= 2
trigger1 = StateNo != [1000,1251199]
trigger1 = NumHelper(1251114)
value = 1251112
ctrl = 0

[State -3, Helper]
type = Helper
trigger1 = sysvar(4) = 7
trigger1 = !NumHelper(1251139)
trigger1 = PrevStateNo = 1251106
trigger1 = Time <= 25
ID = 1251139
StateNo = 1251130
name = "dark"
ownpal = 1
supermovetime = 0;9999
pausemovetime = 0;9999

[State -3, ScreenBound]
type = ScreenBound
triggerall = NumPartner
trigger1 = sysvar(4) = [8,9]
value = Cond(MoveType = A,1,0)
movecamera = 0,0

[State -3, CtrlSet]
type = CtrlSet
triggerall = NumPartner
trigger1 = StateNo != [1251111,1251112]
trigger1 = sysvar(4) = [8,9]
value = Cond((Partner,Alive),0,1)

[State -3, CtrlSet]
type = Null
triggerall = NumPartner
triggerall = Partner,StateNo != [1251110,1251114]
trigger1 = Partner,sysvar(4) = 2
trigger1 = Movetype != A
trigger1 = StateNo != [5000,5500]
trigger1 = Partner,StateNo != [5000,5500]
trigger1 = PrevStateNo != [5000,5500]
value = Cond((PrevStateNo = [1251132,1251131]) || (Partner,StateNo = 1251125) ||(Partner,MoveType = A),0,1)

[State -3, AssertSpecial]
type = AssertSpecial
triggerall = NumPartner
triggerall = Partner,StateNo != [1251110,1251114]
trigger1 = Partner,sysvar(4) = 2
trigger1 = Movetype != A
trigger1 = StateNo != [5000,5500]
trigger1 = Partner,StateNo != [5000,5500]
trigger1 = PrevStateNo != [5000,5500]
flag = NoJuggleCheck

[State -3, CtrlSet]
type = Null
triggerall = NumPartner
triggerall = !Ctrl
triggerall = Partner,sysvar(4) = 2
triggerall = MoveType = I
triggerall = StateNo != [200,5500]
trigger1 = PrevStateNo = [5000,5500]
trigger2 = Partner,StateNo = 1251111
trigger3 = Partner,MoveType = H && !Partner,HitShakeOver
value = 1

[State -3, Trans]
type = Trans
triggerall = NumPartner
triggerall = RoundState = 2
trigger1 = !Life && Partner,Life
trigger1 = Partner,sysvar(4) = 7
trigger1 = StateNo = 5150
trans = Add
alpha = (256-Cond((Partner,sysvar(4) = 7),(Time*3),(Time*2))),(Time*Time)

[State -3, AssertSpecial]
type = AssertSpecial
triggerall = Alive = 0
triggerall = NumPartner
triggerall = (Partner,sysvar(4) || sysvar(4) = 6)
triggerall = RoundState = 2
triggerall = !IsHelper
trigger1 = StateNo = 5150 && (((Time = [80,150]) && (Time%10 < 5))||(Time > 150))
trigger1 = (Partner,StateNo != StateNo) || ((Partner,StateNo = StateNo) && (Partner,Time < Time))
flag = Invisible
flag2 = NoShadow

[state -3, PosSet]
type = PosSet
triggerall = NumPartner
trigger1 = sysvar(4)
trigger1 = StateNo = 5150 && Alive = 0 && (Time > 150) && !IsHelper
trigger1 = (Partner,StateNo != StateNo)||((Partner,StateNo = StateNo) && (Partner,Time < Time))
trigger1 = Partner,sysvar(4)
y = -3

[State -3, AssertSpecial]
type = AssertSpecial
triggerall = IsHelper
trigger1 = (Root,StateNo = [1251112,1251114])
flag = Invisible
flag2 = NoShadow

[state -3, VarSet]
type = VarSet
triggerall = !Alive
triggerall = RoundState = 2
triggerall = StateNo = [5131,5150]
triggerall = NumPartner
trigger1 = Time >= 125
trigger2 = Partner,sysvar(4) = 7
trigger2 = Time >= 85
sysvar(4) = 6

[state -3, VarSet]
type = VarSet
triggerall = NumPartner
triggerall = RoundState = 2
trigger1 = Alive
trigger1 = sysvar(4) = 6
trigger2 = Partner,Life
trigger2 = sysvar(4) = 7
sysvar(4) = 1

[state -3, NotHitBy]
type = NotHitBy
triggerall = NumPartner
trigger1 = sysvar(4) = 6
trigger2 = StateNo = 1251128 || PrevStateNo = 1251128
trigger3 = Partner,sysvar(4) = 6
trigger3 = (StateNo = [1251101,1251116]) || (StateNo = [1251120,1251133])
value = SCA

[state -3, SelfState]
type = SelfState
triggerall = NumPartner
trigger1 = RoundState = 2
trigger1 = StateNo = [5110,5150]
trigger1 = sysvar(4) = 6
trigger2 = Time >= 150 && !Alive && Partner,StateNo = 1251121
value = 1251113

[state -3, AssertSpecial]
type = AssertSpecial
triggerall = NumPartner
triggerall = !Alive
triggerall = RoundState >= 2
triggerall = sysvar(4) = 6
trigger1 = Anim = [5000,5600]
trigger2 = PrevStateNo = [1251113,1251121]
flag = Invisible
flag2 = NoShadow
ignorehitpause = 1

[State -3, LifeAdd]
type = LifeAdd
triggerall = NumPartner
triggerall = RoundState = 2
trigger1 = PrevStateNo = 1251129
trigger2 = sysvar(4) = 6
value = -LifeMax

[State -3, PosSet]
type = PosSet
triggerall = NumPartner
trigger1 = RoundState > 2
trigger1 = !Alive
trigger1 = PrevStateNo = 1251113
x = (Partner,Pos X)-5000*Facing
y = 0

[State -3, LifeAdd]
type = LifeAdd
triggerall = NumPartner
trigger1 = PrevStateNo = 1251129 && Time > 1
value = -LifeMax

[State -3, SelfState]
type = SelfState
triggerall = NumPartner
trigger1 = StateNo < 5000
trigger1 = PrevStateNo = 1251129 && AnimElemNo(3) = 7
value = 5150

[State -3, Helper]
type = Helper
triggerall = NumPartner
trigger1 = !NumHelper(1251124)
trigger1 = sysvar(4) = 7 && MoveType = I && (StateNo = 1251106 || Life <= (LifeMax*.2))
StateNo = 1251124
ID = 1251124
name = "AURA"
postype =p1
ownpal = 1
pausemovetime = 0;99999
supermovetime = 0;99999

; ----------- UNO MODE -----------
[State -3, LifeAdd]
type = LifeAdd
triggerall = NumPartner
trigger1 = RoundState = 2
trigger1 = StateNo != 1251106 && !(Partner,Life)
trigger1 = (GameTime%10) = 0
trigger1 = sysvar(4) = 7
value = (-3+Cond(Life < LifeMax/6,2,0))
kill = 0

[State -3, PowerAdd]
type = PowerAdd
triggerall = NumPartner
trigger1 = RoundState = 2
trigger1 = StateNo != 1251106 && !(Partner,Life)
trigger1 = sysvar(4) = 7
trigger1 = Power < PowerMax && MoveType != A
value = 100

[State -2, AttackMulSet]
type = AttackMulSet
trigger1 = RoundState = 2
trigger1 = sysvar(4) = 7 && StateNo = [200,4000]
value = 1.5

[State -3, DefenceMulSet]
type = DefenceMulSet
triggerall = NumPartner
trigger1 = RoundState = 2
trigger1 = sysvar(4) = 7 && !(Partner,Life)
value = Cond((Life > 150),(.2-((LifeMax/Life)*.015)),.15)

[State -2, AssertSpecial]
type = AssertSpecial
trigger1 = RoundState = 2
trigger1 = sysvar(4) = 7 && MoveType = A
flag = NoJuggleCheck
ignorehitpause = 1

[State -3, LifeAdd]	; timeOVER!
type = LifeAdd
triggerall = NumPartner
triggerall = RoundState > 2
trigger1 = StateNo != 1251106 && !(Partner,Life) && sysvar(4) = 7 && !Win
value = -(Life)
kill = 1

[State -3, SelfState]
type = SelfState
triggerall = NumPartner
triggerall = RoundState >= 3
trigger1 = Life > 1 && !(Partner,Life) && sysvar(4) = 7 && MoveType = H
value = Cond(StateNo = 5110,5120,5040)

[State -3, PalFX]
type = PalFX
triggerall = NumPartner
trigger1 = StateNo != 1251106
trigger1 = RoundState = 2
trigger1 = !Win && !Lose && !MatchOver && !DrawGame
trigger1 = !NumHelper(1251107)
trigger1 = sysvar(4) = 7
add = (50+Random*.15),(50+Random*.12),(50+Random*.12)
mul = (120+Random*.12511),(120+Random*.12511),(120+Random*.12511)
sinadd = -255,-245,-245,(40+Time*2)
time = 10

;[State -3, AfterImage]
;type = AfterImage
;triggerall = RoundState <= 2
;triggerall = !Win && !Lose && !MatchOver && !DrawGame
;triggerall = sysvar(4) = 7  && MoveType = A
;trigger1 = PrevStateNo = 5300 || PrevStateNo = 4600
;trigger2 = (GameTime%10) = 0
;trans = Add
;palcontrast = 0,256,0
;palbright = 50,0,0
;time = -1
;length = 17
;timegap = 1
;framegap = 1
;
;[State -3, AfterImageTime]
;type = AfterImageTime
;trigger1 = RoundState > 2
;trigger1 = sysvar(4) = 7
;trigger2 = !Alive
;trigger3 = NumPartner
;trigger3 = Partner,Alive
;trigger4 = sysvar(4) = 7 && MoveType != A
;time = 0

[State -3, SelfState]
type = SelfState
triggerall = NumPartner
triggerall = sysvar(4) = 7
trigger1 = !Life
trigger1 = StateType != A
trigger1 = StateNo != [5000,5950]
value = 5950

[State -3, SelfState]
type = SelfState
trigger1 = (PrevStateNo = [1251128, 1251129]) || (!Life)
trigger1 = StateNo = 5950
trigger1 = AnimTime = 0 || Time > 225
value = 5150
; ----------------------

[State -3, ScreenBound]
type = ScreenBound
trigger1 = RoundState > 2
trigger1 = !Alive
trigger1 = PrevStateNo = 1251113
value = 0
movecamera = 0,0

[State -3, PosFreeze]
type = PosFreeze
triggerall = NumPartner
triggerall = NumEnemy
trigger1 = NumEnemy && EnemyNear,NumHelper(1251107) || Enemy,NumHelper(1251107)
trigger2 = PrevStateNo = 1251121
trigger3 = StateNo = 1251125

[State -3, SelfState]
type = SelfState
triggerall = NumPartner
triggerall = sysvar(4) > 0
trigger1 = RoundState = 2  && Pos Y < 0
trigger1 = StateNo = 0 && (Partner,StateNo != [1251112,1251114])
trigger1 = PrevStateNo = [1251112,1251114]
value = 1251112

[State -3, SelfState]
type = SelfState
triggerall = NumPartner
triggerall = RoundState = 2
triggerall = Life && Partner,Life
triggerall = StateNo != [1251110,1251114]
trigger1 = sysvar(4) = 2				; performed team attack
trigger1 = (PrevStateNo = [5000,5500]) || (StateNo != [200,1251199]) && (MoveType = I)
trigger1 = StateType != A
trigger2 = NumHelper(1251125)
trigger2 = StateNo = [0,199]
value = 1251112
ctrl = 0
ignorehitpause = 1

;UNO TAG SYSTEM v4.0 STATEDEF -3 END LINE
;--------------------------------------------------------------------------------------------------------------------------------------------