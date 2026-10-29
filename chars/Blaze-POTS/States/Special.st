; _____________________________________
;| Character by ZMugens               |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;---------------------------------------------------------------------------
;Gou Hadouken
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
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1000, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !var(40)
trigger1 = !Time
value = ifElse(var(10) = 0, 1002, ifElse(var(10) = 1, 1003, 1004))

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = var(40)
trigger1 = !Time
value = ifElse(var(10) = 0, 1000, ifElse(var(10) = 1, 1001, 1002))

[State 1000, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1000,0
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = 5, 0
channel = 2
volumescale = 64

[State 1000, Projectile]
type = Helper
trigger1 = AnimElem = 5
stateNo = 1005
ID = 1005
name = "Gou Hadouken"
posType = P1
pos = 102,-80   ;45
size.xScale = 1
size.yScale = 1
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

;---------------------------------------------------------------------------
;Zankuu Hadouken
[StateDef 1070]
type = A
physics = N
moveType = A
anim = 1070
ctrl = 0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1070, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "x" || command = "rlsx"), 0, ifElse((command = "y" || command = "rlsy"), 1, 2))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1070, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(Random < 333, 2, ifElse(Random < 500, 1, 0))

[State 1070, Voice]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = var(40)
trigger2 = AnimElem = 2
value = 1000,0
channel = 0

[State 1070, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = var(40)
trigger2 = AnimElem = 2
value = 5, 0
channel = 2
volumescale = 64

[State 1070, Width]
type = Width
trigger1 = AnimElem = 5
trigger2 = var(40)
trigger2 = AnimElem = 2
player = 15,0

[State 1070, Width]
type = Width
trigger1 = 1
player = 10,0

[State 1070, Gravity]
type = VelAdd
trigger1 = 1
y = .5

[State 1070, Projectile]
type = Helper
trigger1 = AnimElem = 2
stateNo = 1075
ID = 1075
name = "Zankuu Hadouken"
posType = P1
pos = 53,-57
size.xScale = 1
size.yScale = 1
keyctrl = 1
persistent = 0
ignorehitpause = 1

[State 1070, Projectile]
type = Helper
trigger1 = AnimElem = 5
stateNo = 1075
ID = 1075
name = "Zankuu Hadouken"
posType = P1
pos = 53,-57
size.xScale = 1
size.yScale = 1
keyctrl = 1
ownpal = 1
facing = 1
persistent = 0
ignorehitpause = 1

[State 1070, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(9) >= 0
moveType = I

[State 1070, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 1071


;Landing
[Statedef 1071]
type = S
movetype = I
physics = S
ctrl = 0
anim = 1071 + var(40)
velset = 0, 0

[State 1071, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 1071, Land Snd]
type = PlaySnd
trigger1 = Time = 1
value = 52,0

[State 1071, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprpriority = -3
postype = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1071, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
;Gou Shoryuken
[StateDef 1100]
type = S
physics = N
moveType = A
anim = 1100
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = ifElse(PrevStateNo = 750, 0, 72 * !var(20))
faceP2 = 1

[State 1100, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "z" || command = "rlsz"), 2, ifElse((command = "y" || command = "rlsy"), 1, 0))
var(10) = ifElse((NumExplod(90000220) || NumExplod(90000225)), 2, ifElse((NumExplod(90000210) || NumExplod(90000215)), 1, 0))

[State 1100, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(var(20) > 30, 0, ifelse((P2MoveType = H || Random < 333), 2, ifElse(Random < 500, 1, 0)))

[State 1100, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 2, 1120, ifElse(var(10) = 1, 1110, 1100))

[State 1100, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(4) < 0 && !var(10)
trigger2 = AnimElemTime(4) < 6 && var(10) = 1
trigger3 = AnimElemTime(2) < 0 && var(10) = 2
value = SCA
time = 1

[State 1100, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 4, 1
channel = 0

[State 1100, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 1,2
channel = 1

[State 1100, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 40,0
channel = 3

[State 1100, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 4
stateType = A
physics = N

[State 1100, Dust Helper]
type = Helper
trigger1 = AnimElem = 4
stateNo = 8100
ID = 8100
name = "Shoryuken Dust"
posType = P1
ownPal = 1

[State 1973, 1]
type = RemoveExplod
trigger1 = animelem = 6
id = 1978

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 4 + var(10) * 2.5
y = -8 - var(10) * 1.5

[State 1100, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) >= 0
y = 0.6

[State 1100, Velocity]
type = VelMul
trigger1 = AnimElemTime(4) >= 0
trigger1 = Vel X > 0
x = 0.85
persistent = 1

[State 1100, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = 0

[State 1100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 1330, Flames FX 1]
type = Explod
trigger1 = !NumExplod(1340)
trigger1 = !Time
anim = 1125
ID = 1340
sprPriority = 3
bindTime = 6
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0
pos = 0,30

[State 1330, Flames FX 2]
type = Explod
trigger1 = !NumExplod(1341)
trigger1 = AnimElem = 4
anim = 1126
id = 1341
sprPriority = 3
bindTime = -1
removeTime = 13
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0
pos = 0,30

[State 1330, Flames FX Fade]
type = Explod
trigger1 = !NumExplod(1342)
trigger1 = AnimElemTime(5) = -2
anim = 1127
id = 1342
sprPriority = 3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0
pos = 0,30

[State 1100, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 2
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 56 + (var(10) * 7) < 7, 7, fvar(11) * 56 + (var(10) * 7))), 7
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
ground.velocity = -1.3, -8
ground.cornerPush.velOff = 0
guard.velocity = -8
guard.cornerPush.velOff = 0
air.velocity = -1.3, -8
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -57
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
palfx.time = 80
palfx.add = ifelse(Var(25)=1,75,200),ifelse(Var(25)=1,25,80),ifelse(Var(25)=1,95,0)
palfx.mul = ifelse(Var(25)=1,170,220),ifelse(Var(25)=1,80,110),ifelse(Var(25)=1,210,110)
palfx.sinadd = ifelse(Var(25)=1,40,100),ifelse(Var(25)=1,10,20),ifelse(Var(25)=1,50,20),5

[State 1100, HitDef 2]
type = HitDef
trigger1 = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 3
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
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
ground.velocity = -1.3, -8
ground.cornerPush.velOff = 0
guard.velocity = -8
guard.cornerPush.velOff = 0
air.velocity = -1.3, -8
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
sparkXY = -10 + 0 * (var(35) := 41), var(36) := -84
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
palfx.time = 80
palfx.add = ifelse(Var(25)=1,75,200),ifelse(Var(25)=1,25,80),ifelse(Var(25)=1,95,0)
palfx.mul = ifelse(Var(25)=1,170,220),ifelse(Var(25)=1,80,110),ifelse(Var(25)=1,210,110)
palfx.sinadd = ifelse(Var(25)=1,40,100),ifelse(Var(25)=1,10,20),ifelse(Var(25)=1,50,20),5

[State 1100, HitDef 3]
type = HitDef
trigger1 = !var(16) && (var(15) < 5 || var(20))
trigger1 = AnimElem = 4
attr = S, SA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 21 + (var(10) * 7) < 7, 7, fvar(11) * 21 + (var(10) * 7))), 7
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
ground.velocity = -2.6, -8 - var(10)
ground.cornerPush.velOff = 0
guard.velocity = -8
guard.cornerPush.velOff = 0
air.velocity = -2.6, -8 - var(10)
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
sparkXY = -10 + 0 * (var(35) := 28), var(36) := -120
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120
palfx.time = 80
palfx.add = ifelse(Var(25)=1,75,200),ifelse(Var(25)=1,25,80),ifelse(Var(25)=1,95,0)
palfx.mul = ifelse(Var(25)=1,170,220),ifelse(Var(25)=1,80,110),ifelse(Var(25)=1,210,110)
palfx.sinadd = ifelse(Var(25)=1,40,100),ifelse(Var(25)=1,10,20),ifelse(Var(25)=1,50,20),5

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

[State 1100, ChangeState]
type = ChangeState
trigger1 = pos y > -vel y
value = 1101


;Landing
[StateDef 1101]
type = S
physics = N
moveType = I
velSet = 0,0
anim = 1101 + var(40)

[State 1973, 1]
type = RemoveExplod
trigger1 = Time = 0
id = 1978

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
trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Zankuu Gou Hadou Ken - Landing
[Statedef 1121]
type = S
ctrl = 0
anim = 2012

[State 1121, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1121, 2]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 1121, 3]
type = RemoveExplod
trigger1 = AnimElem = 3, = 6
ID = 8480

[State 1121, 4]
type = ChangeState
trigger1 = AnimElem = 3, = 6
value = 11
ctrl = 1
;---------------------------------------------------------------------------
;Tatsumaki Zankuukyaku
[StateDef 1200]
type = A
physics = N
moveType = A
anim = 1200
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 72 * !var(20)
faceP2 = 1

[State 1200, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "a" || command = "rlsa"), 0, ifElse((command = "b" || command = "rlsb"), 1, 2))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1200, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1200, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = ifElse(var(10) = 0, 1200, ifElse(var(10) = 1, 1210, 1220))

[State 1200, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4,2
channel = 0

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 || AnimElem = 5 || AnimElem = 9
trigger2 = var(10) && (AnimElem = 12 || AnimElem = 15 || AnimElem = 18 || AnimElem = 21)
trigger3 = var(10) = 2 && (AnimElem = 24 || AnimElem = 27)
value = 1, 5
;channel = 2

[State 1200, Width]
type = Width
trigger1 = 1
edge = 15,0
player = 5,10

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = ifelse(!var(10), 2.7, ifelse(var(10)=1, 3, 3.6))
y = -5

[State 1200, VelMul]
type = VelMul
trigger1 = !var(10) && AnimElemTime(13) >= 0
trigger2 = var(10) = 1 && AnimElemTime(25) >= 0
trigger3 = var(10) = 2 && AnimElemTime(31) >= 0
x = .96

[State 1200, VelSet]
type = VelSet
trigger1 = AnimElem = 6
y = 0

[State 1200, Gravity]
type = VelAdd
trigger1 = AnimElemTime(5) < 0
trigger2 = !var(10) && AnimElemTime(13) >= 0
trigger3 = var(10) = 1 && AnimElemTime(25) >= 0
trigger4 = var(10) = 2 && AnimElemTime(31) >= 0
y = .51

[State 1200, Dust Helper]
type = Helper
trigger1 = AnimElem = 1
stateNo = 8100
ID = 8100
name = "Tatsumaki Dust"
posType = P1
ownPal = 1

[State 1200, Helper]
type = Helper
;triggerall = Anim = 1220 
trigger1 = AnimElem = 7 || AnimElem = 13 || AnimElem = 19 || AnimElem = 25 || AnimElem = 31
helpertype = normal 
name = "Flame FX"
ID = 1205
stateno = 1205
pos = 65,-54
postype = p1    
facing = 1
ownpal = 1
size.xscale = .5
size.yscale = .3

[State 1200, Helper]
type = Helper
;triggerall = Anim = 1220 
trigger1 = AnimElem = 7 || AnimElem = 13 || AnimElem = 19 || AnimElem = 25 || AnimElem = 31
helpertype = normal 
name = "Flame FX"
ID = 1206
stateno = 1206
pos = 55,-54
postype = p1    
facing = 1
ownpal = 1
size.xscale = .5
size.yscale = .3

[State 1200, Helper]
type = Helper
;triggerall = Anim = 1220 
trigger1 = AnimElem = 9 || AnimElem = 15 ||AnimElem = 21 || AnimElem = 27 || AnimElem = 30
trigger2 = AnimElem = 33 || AnimElem = 36
helpertype = normal 
name = "Flame FX"
ID = 1207
stateno = 1207
pos = 35,-54
postype = p1    
facing = -1
ownpal = 1
size.xscale = .5
size.yscale = .3

[State 1200, Helper]
type = Helper
;triggerall = Anim = 1220 
trigger1 = AnimElem = 9 || AnimElem = 15 ||AnimElem = 21 || AnimElem = 27 || AnimElem = 30
trigger2 = AnimElem = 33 || AnimElem = 36
helpertype = normal 
name = "Flame FX"
ID = 1208
stateno = 1208
pos = 25,-54
postype = p1    
facing = -1
ownpal = 1
size.xscale = .5
size.yscale = .3

[State 1200, Helper]
type = Helper
;triggerall = Anim = 1220
trigger1 = AnimElem = 10 || AnimElem = 16 || AnimElem = 22 || AnimElem = 28 || AnimElem = 34
helpertype = normal 
name = "Flame FX"
ID = 1209
stateno = 1209
pos = -35,-54
postype = p1    
facing = -1
ownpal = 1
size.xscale = .5
size.yscale = .3

[State 1200, Helper]
type = Helper
;triggerall = Anim = 1220 
trigger1 = AnimElem = 10 || AnimElem = 16 || AnimElem = 22 || AnimElem = 28 || AnimElem = 34
helpertype = normal 
name = "Flame FX"
ID = 1213
stateno = 1213
pos = -45,-54
postype = p1    
facing = -1
ownpal = 1
size.xscale = .5
size.yscale = .3

[State 1200, Helper]
type = Helper
;triggerall = Anim = 1220 
trigger1 = AnimElem = 12 || AnimElem = 18 ||AnimElem = 24 || AnimElem = 30 || AnimElem = 36
helpertype = normal 
name = "Flame FX"
ID = 1211
stateno = 1211
pos = -15,-54
postype = p1    
facing = 1
ownpal = 1
size.xscale = .5
size.yscale = .3

[State 1200, Helper]
type = Helper
;triggerall = Anim = 1220 
trigger1 = AnimElem = 12 || AnimElem = 18 ||AnimElem = 24 || AnimElem = 30 || AnimElem = 36
helpertype = normal 
name = "Flame FX"
ID = 1212
stateno = 1212
pos = -5,-54
postype = p1    
ownpal = 1
size.xscale = .5
size.yscale = .3

[State 1200, HitDef 1]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 35 < 7, 7, fvar(11) * 35)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -4, -7.5
ground.cornerPush.velOff = 0
guard.velocity = -8
guard.cornerPush.velOff = 0
air.velocity = -4, -7
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 33), var(36) := -67
palfx.time = 80
palfx.add = ifelse(Var(25)=1,75,200),ifelse(Var(25)=1,25,80),ifelse(Var(25)=1,95,0)
palfx.mul = ifelse(Var(25)=1,170,220),ifelse(Var(25)=1,80,110),ifelse(Var(25)=1,210,110)
palfx.sinadd = ifelse(Var(25)=1,40,100),ifelse(Var(25)=1,10,20),ifelse(Var(25)=1,50,20),5
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 1200, HitDef 2]
type = HitDef
triggerall = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 8
trigger2 = AnimElem = 11
trigger3 = AnimElem = 14
trigger4 = AnimElem = 17
trigger5 = AnimElem = 20
trigger6 = AnimElem = 23
trigger7 = AnimElem = 26
trigger8 = AnimElem = 29
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -1.5 * ifElse(P2Dist X > 0 ,1 ,-1), -7.5
ground.cornerPush.velOff = 0
guard.velocity = -8 * ifElse(P2Dist X > 0 ,1 ,-1)
guard.cornerPush.velOff = 0
air.velocity = -1.5 * ifElse(P2Dist X > 0 ,1 ,-1), -7.5
airguard.velocity = -6.67, -1
air.cornerPush.velOff = 0
yAccel = 0.49
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 60), var(36) := -67
palfx.time = 80
palfx.add = ifelse(Var(25)=1,75,200),ifelse(Var(25)=1,25,80),ifelse(Var(25)=1,95,0)
palfx.mul = ifelse(Var(25)=1,170,220),ifelse(Var(25)=1,80,110),ifelse(Var(25)=1,210,110)
palfx.sinadd = ifelse(Var(25)=1,40,100),ifelse(Var(25)=1,10,20),ifelse(Var(25)=1,50,20),5
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

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
[State 1200, NHB]
type = NotHitBy
triggerall = var(40)
trigger1 = AnimElemTime(3) < 0
value = SCA
ignorehitpause = 1


[State 1200, Idle]
type = StateTypeSet
trigger1 = !var(10) && AnimElemTime(12) > 0
trigger2 = var(10) = 1 && AnimElemTime(24) > 0
trigger3 = var(10) = 2 && AnimElemTime(30) > 0
movetype = I

[State 1200, End]
type = ChangeState
trigger1 = Pos Y > -Vel Y
value = 1201

;---------------------------------------------------------------------------
;Air Tatsumaki Zankuukyaku
[StateDef 1250]
type = A
physics = N
moveType = A
anim = 1250
ctrl = 0
sprPriority = 1
powerAdd = 72 * !var(20)
;faceP2 = 1

[State 1250, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = ifElse((command = "a" || command = "rlsa"), 0, ifElse((command = "b" || command = "rlsb"), 1, 2))
var(10) = ifElse((NumExplod(90000250) || NumExplod(90000255)), 2, ifElse((NumExplod(90000240) || NumExplod(90000245)), 1, 0))

[State 1250, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse((P2MoveType = H || Random < 500), 2, ifElse(Random < 500, 1, 0))

[State 1250, Voice]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4,2
channel = 0

[State 1250, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3 || AnimElem = 6 || AnimElem = 9 || AnimElem = 12
value = 1, 5
;channel = 2

[State 1250, Width]
type = Width
trigger1 = 1
edge = 5,0

[State 1250, VelAdd]
type = VelAdd
trigger1 = AnimElem = 1
x = ifelse(Vel X >= 0, 1.5, -1.5)
y = ifelse(Vel Y <= 0, (-5-var(10))*.4, (5+var(10))*.2)

[State 1250, Gravity]
type = VelAdd
trigger1 = Time >= 0
y = .4

[State 1250, HitDef 2]
type = HitDef
triggerall = !var(16) && (var(15) < 3 || var(20))
trigger1 = AnimElem = 5
trigger2 = AnimElem = 8
trigger3 = AnimElem = 11
trigger4 = AnimElem = 14
attr = A, SA
hitFlag = MAF
guardFlag = MA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 42 < 7, 7, fvar(11) * 42)), 7
getPower = ifElse(!var(13), 72, 36) * !var(20), 12 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Heavy
air.animType = Back
fall.animType = Back
ground.type = High
air.type = High
ground.hitTime = 18
ground.slideTime = 18
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -1.5 * ifElse(p2dist X > 0 ,1 ,-1), -7.5
ground.cornerPush.velOff = 0
guard.velocity = -8 * ifElse(p2dist X > 0 ,1 ,-1)
guard.cornerPush.velOff = 0
air.velocity = -1.5 * ifElse(p2dist X > 0 ,1 ,-1), -7
airguard.velocity = -6.67, -1
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 33), var(36) := -67
palfx.time = 80
palfx.add = ifelse(Var(25)=1,75,200),ifelse(Var(25)=1,25,80),ifelse(Var(25)=1,95,0)
palfx.mul = ifelse(Var(25)=1,170,220),ifelse(Var(25)=1,80,110),ifelse(Var(25)=1,210,110)
palfx.sinadd = ifelse(Var(25)=1,40,100),ifelse(Var(25)=1,10,20),ifelse(Var(25)=1,50,20),5
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

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

[State 1270, Helper]
type = Helper
triggerall = Var(10) = 2
trigger1 = AnimElem = 4 || AnimElem = 10 || AnimElem = 16 || AnimElem = 22 || AnimElem = 28
helpertype = normal 
name = "Flame FX"
ID = 1205
stateno = 1205
pos = 65,-59
postype = p1    
facing = 1
ownpal = 1
size.xscale = .5
size.yscale = .3
ignorehitpause = 1

[State 1270, Helper]
type = Helper
triggerall = Var(10) = 2
trigger1 = AnimElem = 4 || AnimElem = 10 || AnimElem = 16 || AnimElem = 22 || AnimElem = 28
helpertype = normal 
name = "Flame FX"
ID = 1206
stateno = 1206
pos = 55,-59
postype = p1    
facing = 1
ownpal = 1
size.xscale = .5
size.yscale = .3
ignorehitpause = 1

[State 1270, Helper]
type = Helper
triggerall = Var(10) = 2
trigger1 = AnimElem = 6 || AnimElem = 12 ||AnimElem = 18 || AnimElem = 24 || AnimElem = 30
helpertype = normal 
name = "Flame FX"
ID = 1207
stateno = 1207
pos = 35,-56
postype = p1    
facing = -1
ownpal = 1
size.xscale = .5
size.yscale = .3

[State 1270, Helper]
type = Helper
triggerall = Var(10) = 2
trigger1 = AnimElem = 6 || AnimElem = 12 ||AnimElem = 18 || AnimElem = 24 || AnimElem = 30
helpertype = normal 
name = "Flame FX"
ID = 1208
stateno = 1208
pos = 25,-56
postype = p1   
facing = -1
ownpal = 1
size.xscale = .5
size.yscale = .3

[State 1270, Helper]
type = Helper
triggerall = Var(10) = 2
trigger1 = AnimElem = 7 || AnimElem = 13 || AnimElem = 19 || AnimElem = 25 || AnimElem = 31
helpertype = normal 
name = "Flame FX"
ID = 1209
stateno = 1209
pos = -35,-59
postype = p1   
facing = -1
ownpal = 1
size.xscale = .5
size.yscale = .3

[State 1270, Helper]
type = Helper
triggerall = Var(10) = 2
trigger1 = AnimElem = 7 || AnimElem = 13 || AnimElem = 19 || AnimElem = 25 || AnimElem = 31
helpertype = normal 
name = "Flame FX"
ID = 1213
stateno = 1213
pos = -45,-59
postype = p1    
facing = -1
ownpal = 1
size.xscale = .5
size.yscale = .3

[State 1270, Helper]
type = Helper
triggerall = Var(10) = 2
trigger1 = AnimElem = 9 || AnimElem = 15 ||AnimElem = 21 || AnimElem = 27 || AnimElem = 33
helpertype = normal 
name = "Flame FX"
ID = 1211
stateno = 1211
pos = -15,-56
postype = p1    
facing = 1
ownpal = 1
size.xscale = .5
size.yscale = .3

[State 1270, Helper]
type = Helper
triggerall = Var(10) = 2
trigger1 = AnimElem = 9 || AnimElem = 15 ||AnimElem = 21 || AnimElem = 27 || AnimElem = 33
helpertype = normal 
name = "Flame FX"
ID = 1212
stateno = 1212
pos = -25,-56
postype = p1    
facing = 1
ownpal = 1
size.xscale = .5
size.yscale = .3

[State 1250, End]
type = ChangeState
trigger1 = Pos y > -Vel y
value = 1201

;Landing
[StateDef 1201]
type = S
physics = S
moveType = I
velSet = 0,0
anim = 1201 + var(40)

[State 1201, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1201, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 1201, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 1201, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

; Light Gou Ryuu Zanshou - Attack
[Statedef 2000]
type    = A
movetype= A
physics = N
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0
anim = 2000
sprpriority = 2

[State 2000, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2000,0
channel = 0

[State 2000, 2]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2000,1
channel = 1

[State 2000, 3]
type = HitDef
trigger1 = AnimElem = 5
attr = A, SA
animtype = Heavy
damage = floor(60/(1+(Var(32)/5.0))),6
getpower = 20,5
givepower = 20,7
hitflag = MAF
priority = 4, Hit
guardflag = MA
pausetime = 10,9
ground.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -6,-9
fall = 1
fall.recover = 0
air.type = Low
air.velocity = -6,-7
air.fall = 1
envshake.time = 5
envshake.ampl = 3
fall.envshake.time = 10
fall.envshake.ampl = -5
palfx.time = 80
palfx.add = ifelse(Var(25)=1,75,200),ifelse(Var(25)=1,25,80),ifelse(Var(25)=1,95,0)
palfx.mul = ifelse(Var(25)=1,170,220),ifelse(Var(25)=1,80,110),ifelse(Var(25)=1,210,110)
palfx.sinadd = ifelse(Var(25)=1,40,100),ifelse(Var(25)=1,10,20),ifelse(Var(25)=1,50,20),5
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -70
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

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

[State 2000, 6]
type = Width
trigger1 = Time >= 0
value = 40

[State 2000, 7]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 2000, 8]
type = VelSet
trigger1 = AnimElem = 4, = 4
x = 3
y = -6

[State 40, Dust]
type = helper
trigger1 = animelem = 3
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[State 2000, 10]
type = ChangeState
trigger1 = AnimElem = 8
value = 2001
ctrl = 0
;-------------------------------------------------------------------------
;ashura zankou
[StateDef 1400]
type = S
physics = N
moveType = I
anim = 1400
ctrl = 0
velSet = 0,0
sprPriority = 2
powerAdd = 72 * !var(20)
;faceP2 = 1

;[State 1400, Button Detect]
;type = VarSet
;trigger1 = !Time && !AILevel
;var(10) = ifelse(command = "fdf3p", 0, ifelse(command = "bdb3p", 1, ifelse(command = "fdf3k", 2, 3)))
;
;[State 1400, Button Detect]
;type = VarSet
;trigger1 = !Time && !AILevel && var(40)
;var(10) = ifelse(command = "fdf2p", 0, ifelse(command = "bdb2p", 1, ifelse(command = "fdf2k", 2, 3)))

[State 1400, Button Detect]
type = Null;VarSet
triggerall = !Time && !AILevel
;command = "F, D, DF"
trigger1 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && (NumExplod(90010203) || NumExplod(90010253))) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && (NumExplod(90010301) || NumExplod(90010351)))
;x + y / x + z / y + z
trigger1 = (ifElse(NumExplod(90000200), 1, 0) + ifElse(NumExplod(90000210), 1, 0) + ifElse(NumExplod(90000220), 1, 0) >= 2) || (ifElse(NumExplod(90000205), 1, 0) + ifElse(NumExplod(90000215), 1, 0) + ifElse(NumExplod(90000225), 1, 0) >= 2)
trigger1 = var(10) := 0
;command = "B, D, DB"
trigger2 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && (NumExplod(90010301) || NumExplod(90010351))) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && (NumExplod(90010203) || NumExplod(90010253)))
;x + y / x + z / y + z
trigger2 = (ifElse(NumExplod(90000200), 1, 0) + ifElse(NumExplod(90000210), 1, 0) + ifElse(NumExplod(90000220), 1, 0) >= 2) || (ifElse(NumExplod(90000205), 1, 0) + ifElse(NumExplod(90000215), 1, 0) + ifElse(NumExplod(90000225), 1, 0) >= 2)
trigger2 = var(10) := 1
;command = "F, D, DF"
trigger3 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && (NumExplod(90010203) || NumExplod(90010253))) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && (NumExplod(90010301) || NumExplod(90010351)))
;a + b / a + c / b + c
trigger3 = (ifElse(NumExplod(90000230), 1, 0) + ifElse(NumExplod(90000240), 1, 0) + ifElse(NumExplod(90000250), 1, 0) >= 2) || (ifElse(NumExplod(90000235), 1, 0) + ifElse(NumExplod(90000245), 1, 0) + ifElse(NumExplod(90000255), 1, 0) >= 2)
trigger3 = var(10) := 2
;command = "B, D, DB"
trigger4 = (ifElse(P2dist x < 0, Facing = -1, Facing = 1) && (NumExplod(90010301) || NumExplod(90010351))) || (ifElse(P2dist x < 0, Facing = 1, Facing = -1) && (NumExplod(90010203) || NumExplod(90010253)))
;a + b / a + c / b + c
trigger4 = (ifElse(NumExplod(90000230), 1, 0) + ifElse(NumExplod(90000240), 1, 0) + ifElse(NumExplod(90000250), 1, 0) >= 2) || (ifElse(NumExplod(90000235), 1, 0) + ifElse(NumExplod(90000245), 1, 0) + ifElse(NumExplod(90000255), 1, 0) >= 2)
trigger4 = var(10) := 3

[State 1400, Button Detect AI]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifelse(P2BodyDist X >= 120, ifelse(Random < 500, 0, 2), ifelse(Random < 500, 1, 3))

[State 1400, Aura]
type = Explod
trigger1 = !NumExplod(735)
trigger1 = !Time
anim = 735
ID = 735
pos = 0, 0
postype = P1
sprpriority = -1
ignorehitpause = 1
bindtime = -1
removetime = -1
ownpal = 1
removeongethit = 1

[State 1400, VelSet]
type = VelSet
trigger1 = !Time || AnimElemTime(4) = 0
x = ifelse(!Time = 0, 3.5, -3.5)

[State 1400, NHB]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1400, ChangeState]
type = ChangeState
Trigger1 = !AnimTime
value = 1401


;Teleport
[Statedef 1401]
type = S
movetype = I
physics = N
anim = 1401
ctrl = 0
velset = ifelse(!var(10), 15, ifelse(var(10) = 1, -15, ifelse(var(10) = 2, 10, -10))),0

[State 1401, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(1) > 0
x = ifelse(Vel X > 0, -.32, .32)

[State 1401, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = 850,0

[State 1401, Voice]
type = PlaySnd
triggerall = !var(40)
trigger1 = AnimElem = 1
value = 192, 0
channel = 0

[State 1401, 3]
type = AfterImage
trigger1 = Time = 0
Time = 50
TimeGap  = 1
FrameGap = 4
length = 20
trans = add1
PalColor = 0
palbright = 200,0,0
palcontrast = 200,0,0
palpostbright = 0,0,0

[State 1401, NHB]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1401, Push]
type = PlayerPush
trigger1 = 1
value = 0

[State 1401,Turn]
type = Turn
trigger1 = P2Dist X < -5

[State -1, Tenshou Kaireki Jin]
type = ChangeState
value = 3800
triggerAll = var(40)=2
triggerAll = !AILevel
;triggerAll = command = "hcb2k" ;"2hcbk"
;HCB
triggerAll = NumExplod(90000518)
;2K
triggerAll = (ifElse(NumExplod(90000230), 1, 0) + ifElse(NumExplod(90000240), 1, 0) + ifElse(NumExplod(90000250), 1, 0) >= 2)
triggerAll = RoundState = 2
trigger1 = ifelse(var(53) <= 0, power >= 3000 && !var(20), power >= 1000)

[State 1401, ChangeState]
type = ChangeState
Trigger1 = (Time = 34 && var(10) = [0,1]) || (Time = 22 && var(10) = [2,3])
Trigger2 = Vel X > 0 && FrontEdgeDist <= 10 && AnimElemTime(1) > 0
Trigger3 = Vel X < 0 && BackEdgeDist <= 10 && AnimElemTime(1) > 0
value = 1402


;End
[Statedef 1402]
type = S
movetype = I
physics = N
anim = 1402 ;+ var(40)
velset = 0,0
ctrl = 0

[State 0, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && var(40)=1
value = 1403

[State 1402, End]
type = ChangeState
Trigger1 = !AnimTime
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Light Gou Ryuu Zanshou - Falling
[Statedef 2001]
type    = A
movetype= I
physics = N
ctrl = 0
velset = 1,-6
anim = 2001

[State 2001, 1]
type = VelAdd
trigger1 = Time >= 0
y = .6

[State 2001, 2]
type = ChangeState
trigger1 = Pos Y >= 0
value = 2012
ctrl = 0

;---------------------------------------------------------------------------
; Medium Gou Ryuu Zanshou - Attack
[Statedef 2010]
type    = A
movetype= A
physics = N
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0
anim = 2010
sprpriority = 2

[State 2010, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2000,0
channel = 0

[State 2010, 2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2000,1
channel = 1

[State 2010, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = A, SA
animtype = Heavy
damage = floor(50/(1+(Var(32)/5.0))),5
getpower = 12,4
givepower = 12,4
hitflag = MAF
priority = 4, Hit
guardflag = MA
pausetime = 10,9
guard.sparkno = S8007
ground.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -6,-9
fall = 1
fall.recover = 0
air.type = Low
air.velocity = -6,-7
air.fall = 1
envshake.time = 10
envshake.ampl = 5
fall.envshake.time = 15
fall.envshake.ampl = -7
palfx.time = 80
palfx.add = ifelse(Var(25)=1,75,200),ifelse(Var(25)=1,25,80),ifelse(Var(25)=1,95,0)
palfx.mul = ifelse(Var(25)=1,170,220),ifelse(Var(25)=1,80,110),ifelse(Var(25)=1,210,110)
palfx.sinadd = ifelse(Var(25)=1,40,100),ifelse(Var(25)=1,10,20),ifelse(Var(25)=1,50,20),5
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -70
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

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

[State 40, Dust]
type = helper
trigger1 = animelem = 3
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1


[State 2010, 9]
type = Width
trigger1 = Time >= 0
value = 20

[State 2010, 10]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 3

[State 2010, 11]
type = VelSet
trigger1 = AnimElem = 4, = 2
x = 2
y = -6

[State 2010, 13]
type = ChangeState
trigger1 = AnimElem = 10
value = 2011
ctrl = 0

;---------------------------------------------------------------------------
; Medium Gou Ryuu Zanshou - Falling
[Statedef 2011]
type    = A
movetype= I
physics = N
ctrl = 0
velset = 1,-2.9
anim = 2011

[State 2011, 1]
type = VelAdd
trigger1 = Time >= 0
y = .6

[State 2011, 2]
type = ChangeState
trigger1 = Pos Y >= 0
value = 2012
ctrl = 0

;---------------------------------------------------------------------------
; Heavy Gou Ryuu Zanshou - Attack
[Statedef 2020]
type    = A
movetype= A
physics = N
juggle  = 4
poweradd= 30
ctrl = 0
velset = 0,0
anim = 2020
sprpriority = 2

[State 2020, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 2000,0
channel = 0

[State 2020, 2]
type = PlaySnd
trigger1 = AnimElem = 4
value = 2000,1
channel = 1

[State 2020, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = A, SA
animtype = Heavy
damage = floor(35/(1+(Var(32)/5.0))),4
getpower = 14,3
givepower = 14,5
hitflag = MAF
priority = 5, Hit
guardflag = MA
pausetime = 10,9
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -6, -7
fall = 1
fall.recover = 0
air.type = Low
air.velocity = -6,-7
air.fall = 1
envshake.time = 15
envshake.ampl = 7
fall.envshake.time = 20
fall.envshake.ampl = -10
palfx.time = 100
palfx.add = ifelse(Var(25)=1,75,200),ifelse(Var(25)=1,25,80),ifelse(Var(25)=1,95,0)
palfx.mul = ifelse(Var(25)=1,170,220),ifelse(Var(25)=1,80,110),ifelse(Var(25)=1,210,110)
palfx.sinadd = ifelse(Var(25)=1,40,100),ifelse(Var(25)=1,10,20),ifelse(Var(25)=1,50,20),5
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -70
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120






[State 2020, 6]
type = HitDef
trigger1 = AnimElem = 8
attr = A, SA
animtype = Heavy
damage = floor(35/(1+(Var(32)/5.0))),4
getpower = 14,3
givepower = 14,5
hitflag = MAF
priority = 5, Hit
guardflag = MA
pausetime = 10,9
ground.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -6,-3
fall.recover = 0
fall = 1
air.type = Low
air.velocity = -6,-3
air.fall = 1
envshake.time = 15
envshake.ampl = 7
fall.envshake.time = 20
fall.envshake.ampl = -10
palfx.time = 100
palfx.add = ifelse(Var(25)=1,75,200),ifelse(Var(25)=1,25,80),ifelse(Var(25)=1,95,0)
palfx.mul = ifelse(Var(25)=1,170,220),ifelse(Var(25)=1,80,110),ifelse(Var(25)=1,210,110)
palfx.sinadd = ifelse(Var(25)=1,40,100),ifelse(Var(25)=1,10,20),ifelse(Var(25)=1,50,20),5
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -70
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

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

[State 40, Dust]
type = helper
trigger1 = animelem = 3
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[State 2020, 10]
type = Width
trigger1 = Time >= 0
value = 10

[State 2020, 11]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 3

[State 2020, 12]
type = PosFreeze
trigger1 = Time = [13, 14]

[State 2020, 13]
type = VelAdd
trigger1 = AnimElem = 5,=1
x = 2.4
y = -8

[State 2020, 14]
type = VelSet
trigger1 = AnimElem = 9
x = 0



[State 2020, 16]
type = ChangeState
trigger1 = AnimElem = 10
value = 2021
ctrl = 0

;---------------------------------------------------------------------------
; Heavy Gou Ryuu Zanshou - Falling
[Statedef 2021]
type    = A
movetype= I
physics = N
ctrl = 0
velset = 1,-4.7
anim = 2021

[State 2021, 1]
type = VelAdd
trigger1 = Time >= 0
y = .6

[State 2021, 2]
type = ChangeState
trigger1 = Pos Y >= 0
value = 2012
ctrl = 0

;---------------------------------------------------------------------------
; All Gou Ryuu Zanshou - Landing
[Statedef 2012]
type = S
ctrl = 0
anim = 2012

[State 2012, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 2012, 2]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 52, Snd]
type = playsnd
trigger1 = !time
value = 52,0

[State 52, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 2012, 3]
type = ChangeState
trigger1 = AnimElem = 3, = 6
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Light Tenma Kuujin Kyaku - Attack
[Statedef 2200]
type    = A
movetype= A
physics = N
juggle  = 1
poweradd= 40
ctrl = 0
anim = 2200
sprpriority = 2

[State 2200, 1]
type = PosFreeze
trigger1 = Time = [0,8]

[State 2200, 2]
type = VelSet
trigger1 = Time = 8
x = 10
y = 10

[State 2200, 3]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 5

[State 2200, 4]
type = Explod
trigger1 = AnimElem = 3 && NumExplod(2201) = 0
anim = 2201
id = 2201
pos = 55,-8
postype = p1
bindtime = -1
removeongethit = 1
sprpriority = 3
removetime = -1
ignorehitpause = 1
bind = p1
scale = .5,.5

[State 2200, 5]
type = HitDef
trigger1 = AnimElem = 3, = 2
attr = A, SA
animtype = Medium
damage = floor(70/(1+(Var(32)/5.0))),7
getpower = 18,5
givepower = 18,6
guardflag = HA
hitflag = MAF
priority = 5, Hit
pausetime = 9,10
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -9.3
guard.velocity = -10
airguard.velocity = -5,0
air.type = Low
air.velocity = 0,-7
air.fall = 1
down.velocity = -4,-4
ground.cornerpush.veloff = 0
yaccel = 0.5
envshake.time = 5
envshake.ampl = 3
palfx.time = 40
palfx.add = ifelse(Var(25)=1,75,200),ifelse(Var(25)=1,25,80),ifelse(Var(25)=1,95,0)
palfx.mul = ifelse(Var(25)=1,170,220),ifelse(Var(25)=1,80,110),ifelse(Var(25)=1,210,110)
palfx.sinadd = ifelse(Var(25)=1,40,100),ifelse(Var(25)=1,10,20),ifelse(Var(25)=1,50,20),5
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -20
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 2200, 6]
type = Explod
trigger1 = (MoveHit) && (P2MoveType = H) && (NumExplod(8600) < 1)
anim = 8603
id = 8600
postype = p2
pos = 0,-30
supermove = 1
ownpal = 1
sprpriority = 100
bindtime = -1
ignorehitpause = 1
persistent = 0

[State 2200, 7]
type = Explod
trigger1 = (MoveHit) && (P2MoveType = H) && (NumExplod(8601) < 1)
anim = 8603
id = 8601
postype = p2
pos = -20,-60
supermove = 1
ownpal = 1
sprpriority = -100
bindtime = -1
ignorehitpause = 1
persistent = 0

[State 2200, 8]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2200,0
channel = 0

[State 2200, 9]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2200,1
channel = 1

[State 2200, 11]
type = Explod
trigger1 = Time = 10
anim = 2205
ID = 2205
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 3
removeongethit = 1
scale = .5,.5

[State 2200, 12]
type = RemoveExplod
trigger1 = Pos Y >= 0 || AnimTime = 0
ID = 2201

[State 2200, 13]
type = RemoveExplod
trigger1 = Pos Y >= 0 || AnimTime = 0
ID = 2205

[State 2200, 14.1]
type = Explod
trigger1 = AnimElem = 3, = 0
anim = 2203
id = 2203
postype = P1
pos = -10,-10
sprpriority = -10
ownpal = 1

[State 2200, 14.2]
type = Explod
trigger1 = (Time%3 = 2) && (AnimElem = 3, >= 0)
anim = 2203
id = 2203
postype = P1
pos = 0,0
sprpriority = -10 + Var(22)
ownpal = 1

[State 2200, 15.1]
type = VarSet
trigger1 = Time = 0
v = 22
value = 0

[State 2200, 15.2]
type = VarAdd
trigger1 = (Time%3 = 0) && (AnimElem = 3, >= 3) && (Var(22) < 10)
v = 22
value = 1

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

[State 2200, 16]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > -5)
value = 2202
ctrl = 0

;---------------------------------------------------------------------------
; Tenma Kuujin Kyaku - Landing
[Statedef 2202]
type = S
ctrl = 0
anim = 2202

[State 2202, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 2202, 2]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 2202, 3]
type = VarSet
trigger1 = Time = 0
v = 22
value = 0

[State 2202, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Medium Tenma Kuujin Kyaku - Attack
[Statedef 2210]
type    = A
movetype= A
physics = N
juggle  = 1
poweradd= 40
ctrl = 0
anim = 2200
sprpriority = 2

[State 2210, 1]
type = PosFreeze
trigger1 = Time = [0,8]

[State 2210, 2]
type = VelSet
trigger1 = Time = 8
x = 10
y = 10

[State 2210, 3]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 5

[State 2210, 4]
type = Explod
trigger1 = AnimElem = 3 && NumExplod(2201) = 0
anim = 2201
id = 2201
pos = 55,-8
postype = p1
bindtime = -1
sprpriority = 3
removeongethit = 1
removetime = -1
ignorehitpause = 1
bind = p1
scale = .5,.5

[State 2210, 5]
type = HitDef
trigger1 = AnimElem = 3, = 2
trigger2 = AnimElem = 3, = 4
attr = A, SA
animtype = Medium
damage = floor(40/(1+(Var(32)/5.0))),4
getpower = 13,3
givepower = 13,4
guardflag = HA
hitflag = MAF
priority = 5, Hit
pausetime = 9,10
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -9.3
guard.velocity = -10
airguard.velocity = -5,0
air.type = Low
air.velocity = 0,-7
air.fall = 1
down.velocity = -4,-4
ground.cornerpush.veloff = 0
yaccel = 0.5
envshake.time = 10
envshake.ampl = 5
palfx.time = 40
palfx.add = ifelse(Var(25)=1,75,200),ifelse(Var(25)=1,25,80),ifelse(Var(25)=1,95,0)
palfx.mul = ifelse(Var(25)=1,170,220),ifelse(Var(25)=1,80,110),ifelse(Var(25)=1,210,110)
palfx.sinadd = ifelse(Var(25)=1,40,100),ifelse(Var(25)=1,10,20),ifelse(Var(25)=1,50,20),5
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -20
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 2210, 6]
type = Explod
trigger1 = (MoveHit) && (P2MoveType = H) && (NumExplod(8600) < 1)
anim = 8602
id = 8600
postype = p2
pos = 0,-30
supermove = 1
ownpal = 1
sprpriority = 100
bindtime = -1
ignorehitpause = 1
persistent = 0

[State 2210, 7]
type = Explod
trigger1 = (MoveHit) && (P2MoveType = H) && (NumExplod(8601) < 1)
anim = 8603
id = 8601
postype = p2
pos = -20,-60
supermove = 1
ownpal = 1
sprpriority = -100
bindtime = -1
ignorehitpause = 1
persistent = 0

[State 2210, 8]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2200,0
channel = 0

[State 2210, 9]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2200,1
channel = 1

[State 2210, 11]
type = Explod
trigger1 = Time = 10
anim = 2205
ID = 2205
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 3
removeongethit = 1
scale = .5,.5

[State 2210, 12]
type = RemoveExplod
trigger1 = Pos Y >= 0 || AnimTime = 0
ID = 2201

[State 2210, 13]
type = RemoveExplod
trigger1 = Pos Y >= 0 || AnimTime = 0
ID = 2205

[State 2210, 14.1]
type = Explod
trigger1 = AnimElem = 3, = 0
anim = 2203
id = 2203
postype = P1
pos = -10,-10
sprpriority = -10
ownpal = 1

[State 2210, 14.2]
type = Explod
trigger1 = (Time%3 = 2) && (AnimElem = 3, >= 0)
anim = 2203
id = 2203
postype = P1
pos = 0,0
sprpriority = -10 + Var(22)
ownpal = 1

[State 2210, 15.1]
type = VarSet
trigger1 = Time = 0
v = 22
value = 0

[State 2210, 15.2]
type = VarAdd
trigger1 = (Time%3 = 0) && (AnimElem = 3, >= 3) && (Var(22) < 10)
v = 22
value = 1

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

[State 2210, 16]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > -5)
value = 2202

;---------------------------------------------------------------------------
; Heavy Tenma Kuujin Kyaku - Attack
[Statedef 2220]
type    = A
movetype= A
physics = N
juggle  = 1
poweradd= 40
ctrl = 0
anim = 2200
sprpriority = 2

[State 2220, 1]
type = PosFreeze
trigger1 = Time = [0,8]

[State 2220, 2]
type = VelSet
trigger1 = Time = 8
x = 10
y = 10

[State 2220, 3]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 5

[State 2220, 4]
type = Explod
trigger1 = AnimElem = 3 && NumExplod(2201) = 0
anim = 2201
id = 2201
pos = 55,-8
postype = p1
bindtime = -1
sprpriority = 3
removeongethit = 1
removetime = -1
ignorehitpause = 1
bind = p1
scale = .5,.5

[State 2220, 5]
type = HitDef
trigger1 = AnimElem = 3, = 2
trigger2 = AnimElem = 3, = 3
trigger3 = AnimElem = 3, = 4
attr = A, SA
animtype = Medium
damage = floor(30/(1+(Var(32)/5.0))),3
getpower = 12,2
givepower = 12,4
guardflag = HA
hitflag = MAF
priority = 5, Hit
pausetime = 9,10
ground.type = Low
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -9.3
guard.velocity = -10
airguard.velocity = -5,0
air.type = Low
air.velocity = 0,-7
air.fall = 1
down.velocity = -4,-4
ground.cornerpush.veloff = 0
yaccel = 0.5
envshake.time = 15
envshake.ampl = 7
palfx.time = 40
palfx.add = ifelse(Var(25)=1,75,200),ifelse(Var(25)=1,25,80),ifelse(Var(25)=1,95,0)
palfx.mul = ifelse(Var(25)=1,170,220),ifelse(Var(25)=1,80,110),ifelse(Var(25)=1,210,110)
palfx.sinadd = ifelse(Var(25)=1,40,100),ifelse(Var(25)=1,10,20),ifelse(Var(25)=1,50,20),5
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -20
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 2220, 6]
type = Explod
trigger1 = (MoveHit) && (P2MoveType = H) && (NumExplod(8600) < 1)
anim = 8602
id = 8600
postype = p2
pos = 0,-30
supermove = 1
ownpal = 1
sprpriority = 100
bindtime = -1
ignorehitpause = 1
persistent = 0

[State 2220, 7]
type = Explod
trigger1 = (MoveHit) && (P2MoveType = H) && (NumExplod(8601) < 1)
anim = 8602
id = 8601
postype = p2
pos = -20,-60
supermove = 1
ownpal = 1
sprpriority = -100
bindtime = -1
ignorehitpause = 1
persistent = 0

[State 2220, 8]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2200,0
channel = 0

[State 2220, 9]
type = PlaySnd
trigger1 = AnimElem = 3
value = 2200,1
channel = 1

[State 2220, 11]
type = Explod
trigger1 = Time = 10
anim = 2205
ID = 2205
postype = p1
pos = 0,0
ownpal = 1
sprpriority = 3
removeongethit = 1
scale = .5,.5

[State 2220, 12]
type = RemoveExplod
trigger1 = Pos Y >= 0 || AnimTime = 0
ID = 2201

[State 2220, 13]
type = RemoveExplod
trigger1 = Pos Y >= 0 || AnimTime = 0
ID = 2205

[State 2220, 14.1]
type = Explod
trigger1 = AnimElem = 3, = 0
anim = 2203
id = 2203
postype = P1
pos = -10,-10
sprpriority = -10
ownpal = 1

[State 2220, 14.2]
type = Explod
trigger1 = (Time%3 = 2) && (AnimElem = 3, >= 0)
anim = 2203
id = 2203
postype = P1
pos = 0,0
sprpriority = -10 + Var(22)
ownpal = 1

[State 2220, 15.1]
type = VarSet
trigger1 = Time = 0
v = 22
value = 0

[State 2220, 15.2]
type = VarAdd
trigger1 = (Time%3 = 0) && (AnimElem = 3, >= 3) && (Var(22) < 10)
v = 22
value = 1

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


[State 2220, 16]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > -5)
value = 2202

; Light Hyakki Shuu - Start
[Statedef 2500]
type = S
movetype = A
physics = S
anim = 2500
velset = 0, 0
juggle = 7
poweradd = 20
ctrl = 0

[State 2500, 1]
type = StateTypeSet
trigger1 = Time = 1
statetype = A
physics = N

[State 2500, 2.1]
type = VelSet
trigger1 = Time = 1
x = 1.3
y = -12.0

[State 2500, 2.2]
type = VelAdd
trigger1 = Time >= 1
y = .5

[State 2500, 3.1]
type = PlaySnd
trigger1 = Time = 1
value = 3, 4
channel = 0

[State 2500, 3.2]
type = PlaySnd
trigger1 = Time = 1
value = 1900,1
channel = 1

[State 52, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 2500, 5]
type = ChangeState
triggerall = Time = [21,45]
trigger1 = Command = "x" || Command = "y" || Command = "z"
value = 2510

[State 2500, 6]
type = ChangeState
triggerall = Time = [21,45]
trigger1 = Command = "a" || Command = "b" || Command = "c"
value = ifelse(Command = "holddown", 2515, 2512)

[State 2500, 7]
type = ChangeState
trigger1 = Time > 1
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 2505

;---------------------------------------------------------------------------
; Light Hyakki Gou Zan - Attack
[Statedef 2505]
type = S
movetype = A
physics = S
anim = 2505
velset = 4.8, 0
poweradd = 20

[State 2505, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 2505, 2.1]
type = PlaySnd
trigger1 = Time = 0
value = 2000,0

[State 2505, 2.2]
type = PlaySnd
trigger1 = Time = 0
value = 2505,1
channel = 1

[State 2505, 3]
type = Explod
trigger1 = AnimElem = 2, = 0 && NumExplod(2501) = 0
anim = 2501
id = 2501
pos = 130,0
postype = p1
bindtime = -1
sprpriority = 3
removeongethit = 1
removetime = -1
ignorehitpause = 1
bind = p1
scale = .5,.5

[State 2505, 4]
type = RemoveExplod
trigger1 = AnimElem = 3, = 0
id = 2501

[State 2505, 5]
type = HitDef
trigger1 = Time = 0
attr = C, SA
animtype = Heavy
damage = floor(60/(1+(Var(32)/5.0))),6
getpower = 10,5
givepower = 10,3
hitflag = MAF
guardflag = L
pausetime = 12,12
ground.type = Trip
ground.slidetime = 4
ground.hittime  = 18
ground.velocity = -2.8,-2.2
guard.velocity = -6.0
air.velocity = -3.0,-3.2
fall = 1
air.recover = 0
fall.recover = 0
recover = 0
envshake.time = 7
envshake.ampl = 3
palfx.time = 40
palfx.add = ifelse(Var(25)=1,75,200),ifelse(Var(25)=1,25,80),ifelse(Var(25)=1,95,0)
palfx.mul = ifelse(Var(25)=1,170,220),ifelse(Var(25)=1,80,110),ifelse(Var(25)=1,210,110)
palfx.sinadd = ifelse(Var(25)=1,40,100),ifelse(Var(25)=1,10,20),ifelse(Var(25)=1,50,20),5
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 2505, 6]
type = Explod
trigger1 = (MoveHit) && (P2MoveType = H) && (NumExplod(8600) < 1)
anim = 8603
id = 8600
postype = p2
pos = 0,-30
supermove = 1
ownpal = 1
sprpriority = 100
bindtime = -1
ignorehitpause = 1
persistent = 0

[State 2505, 7]
type = Explod
trigger1 = (MoveHit) && (P2MoveType = H) && (NumExplod(8601) < 1)
anim = 8603
id = 8601
postype = p2
pos = -20,-60
supermove = 1
ownpal = 1
sprpriority = -100
bindtime = -1
ignorehitpause = 1
persistent = 0



[State 101, Dust]
type = explod
trigger1 = !time
anim = 8104
sprpriority = 3
postype = p1
pos = 0, 0
vel = 0, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 101, Dust]
type = explod
trigger1 = !time
anim = 8104
sprpriority = 3
postype = p1
pos = 0, 0
vel = 0, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

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

[State 2505, 10]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Light Hyakki Gou Shou - Attack
[Statedef 2510]
type = A
movetype = A
physics = N
anim = 2510
poweradd = 20

[State 2510, 1]
type = VelAdd
trigger1 = 1
y = .5

[State 2510, 2]
type = PlaySnd
trigger1 = Time = 0
value = 2510,0
channel = 0

[State 2510, 3]
type = Explod
trigger1 = AnimElem = 2, = 1 && NumExplod(2511) = 0
anim = 2511
id = 2511
pos = 0,0
postype = p1
bindtime = -1
sprpriority = 3
removetime = -1
removeongethit = 1
supermove = 1
bind = p1
scale = .5,.5

[State 2510, 4]
type = RemoveExplod
trigger1 = AnimElem = 3, = 0
id = 2511

[State 2510, 5]
type = HitDef
trigger1 = Time = 0
attr = A, SA
animtype = Hard
damage = floor(70/(1+(Var(32)/5.0))),7
getpower = 18,5
givepower = 18,6
guardflag = HA
hitflag = MAF
pausetime = 12,12
ground.type = High
ground.slidetime = 7
ground.hittime  = 15
ground.velocity = -3.0,-3.2
guard.velocity = -6.0
air.velocity = -3.0,-3.2
airguard.velocity = -3.0,-3.0
fall = 1
fall.recover = 0
air.recover = 0
recover = 0
envshake.time = 7
envshake.ampl = 3
palfx.time = 40
palfx.add = ifelse(Var(25)=1,75,200),ifelse(Var(25)=1,25,80),ifelse(Var(25)=1,95,0)
palfx.mul = ifelse(Var(25)=1,170,220),ifelse(Var(25)=1,80,110),ifelse(Var(25)=1,210,110)
palfx.sinadd = ifelse(Var(25)=1,40,100),ifelse(Var(25)=1,10,20),ifelse(Var(25)=1,50,20),5
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -50
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 2510, 6]
type = Explod
trigger1 = (MoveHit) && (P2MoveType = H) && (NumExplod(8600) < 1)
anim = 8603
id = 8600
postype = p2
pos = 0,-30
supermove = 1
ownpal = 1
sprpriority = 100
bindtime = -1
ignorehitpause = 1
persistent = 0

[State 2510, 7]
type = Explod
trigger1 = (MoveHit) && (P2MoveType = H) && (NumExplod(8601) < 1)
anim = 8603
id = 8601
postype = p2
pos = -20,-60
supermove = 1
ownpal = 1
sprpriority = -100
bindtime = -1
ignorehitpause = 1
persistent = 0

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

[State 2510, 8]
type = ChangeState
trigger1 = Time > 0
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 1121

;---------------------------------------------------------------------------
; Light Hyakki Gou Sen - Attack
[Statedef 2512]
type = A
movetype = A
physics = N
anim = 2512
poweradd = 20

[State 2512, 1]
type = VelAdd
trigger1 = 1
y = .5

[State 2512, 2.1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4,2
channel = 0

[State 2512, 2.2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,2
channel = 1

[State 2512, 3]
type = HitDef
trigger1 = Time = 0
attr = A, SA
animtype = Hard
damage = floor(70/(1+(Var(32)/5.0))),7
getpower = 18,5
givepower = 18,6
guardflag = HA
hitflag = MAF
pausetime = 12,12
ground.type = High
ground.slidetime = 7
ground.hittime  = 15
ground.velocity = -3.0,-3.2
guard.velocity = -6.0
air.velocity = -3.0,-3.2
airguard.velocity = -3.0,-3.0
fall = 1
fall.recover = 0
air.recover = 0
recover = 0
envshake.time = 7
envshake.ampl = 3
palfx.time = 40
palfx.add = ifelse(Var(25)=1,75,200),ifelse(Var(25)=1,25,80),ifelse(Var(25)=1,95,0)
palfx.mul = ifelse(Var(25)=1,170,220),ifelse(Var(25)=1,80,110),ifelse(Var(25)=1,210,110)
palfx.sinadd = ifelse(Var(25)=1,40,100),ifelse(Var(25)=1,10,20),ifelse(Var(25)=1,50,20),5
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -63
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

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


[State 2512, 6]
type = ChangeState
trigger1 = Time > 0
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 2513

;---------------------------------------------------------------------------
; Light Hyakki Gou Sen - Landing
[Statedef 2513]
type = A
movetype = I
physics = N
anim = 2513
velset = 4.0, 0

[State 2513, 1]
type = PlaySnd
trigger1 = Time = 0
value = 2505,1

[State 2513, 2]
type = Explod
trigger1 = Time = 0
Anim = 8102
id = 8102
postype = P1
pos = 20,0
ownpal = 1
sprpriority = 5



[State 2513, 5]
type = EnvShake
trigger1 = Time = 0
time = 10
ampl = -5

[State 2513, 6]
type = VelAdd
trigger1 = Time = [0,7]
x = -.5

[State 2513, 7]
type = PosSet
trigger1 = Time = 0
y = 0

[State 2513, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Light Hyakki Gou Jin - Attack
[Statedef 2515]
type = A
movetype = A
physics = N
anim = 2515
poweradd = 20

[State 2515, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4,2
channel = 0

[State 2515, 2]
type = VelSet
trigger1 = AnimElem = 2
x = 7.5
y = 10.5

[State 2515, 3]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 5

[State 2515, 4]
type = Explod
trigger1 = AnimElem = 2 && NumExplod(2516) = 0
anim = 2516
id = 2516
pos = 70,-12
postype = p1
bindtime = -1
sprpriority = 3
removetime = -1
ignorehitpause = 1
bind = p1
scale = .5,.5

[State 2515, 5]
type = HitDef
trigger1 = AnimElem = 2
attr = A, SA
animtype = Medium
damage = floor(70/(1+(Var(32)/5.0))),7
getpower = 18,5
givepower = 18,6
guardflag = HA
hitflag = MAF
priority = 5, Hit
pausetime = 10,12
ground.type = Low
ground.slidetime = 7
ground.hittime  = 15
ground.velocity = -3.0,-3.2
guard.velocity = -6.0
air.velocity = -3.0,-3.2
airguard.velocity = -3.0,-3.0
fall = 1
fall.recover = 0
air.recover = 0
recover = 0
envshake.time = 7
envshake.ampl = 3
palfx.time = 40
palfx.add = ifelse(Var(25)=1,75,200),ifelse(Var(25)=1,25,80),ifelse(Var(25)=1,95,0)
palfx.mul = ifelse(Var(25)=1,170,220),ifelse(Var(25)=1,80,110),ifelse(Var(25)=1,210,110)
palfx.sinadd = ifelse(Var(25)=1,40,100),ifelse(Var(25)=1,10,20),ifelse(Var(25)=1,50,20),5
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -20
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

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


[State 2515, 8]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2200,1
channel = 1

[State 2515, 9]
type = RemoveExplod
trigger1 = Pos Y >= 0 || AnimTime = 0
ID = 2516

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

[State 2515, 10]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > -5)
value = 2520
ctrl = 0

;---------------------------------------------------------------------------
; Light Hyakki Gou Jin - Landing
[Statedef 2520]
type = A
movetype = I
physics = N
anim = 2520
velset = 0, 0

[State 2520, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 2520, 2]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 2520, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Medium Hyakki Shuu - Start
[Statedef 2530]
type = S
movetype = A
physics = S
anim = 2530
velset = 0, 0
juggle = 7
poweradd = 25
ctrl = 0

[State 2530, 1]
type = StateTypeSet
trigger1 = Time = 1
statetype = A
physics = N

[State 2530, 2.1]
type = VelSet
trigger1 = Time = 1
x = 3
y = -12

[State 2530, 2.2]
type = VelAdd
trigger1 = Time >= 1
y = .5

[State 2530, 3]
type = PlaySnd
trigger1 = Time = 1
value = 3,4
channel = 0

[State 2530, 3.2]
type = PlaySnd
trigger1 = Time = 1
value = 1900,1
channel = 1

[State 52, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 2530, 5]
type = ChangeState
triggerall = Time = [21,45]
trigger1 = Command = "x" || Command = "y" || Command = "z"
value = 2540

[State 2530, 6]
type = ChangeState
triggerall = Time = [21,45]
trigger1 = Command = "a" || Command = "b" || Command = "c"
value = ifelse(Command = "holddown", 2545, 2542)

[State 2530, 7]
type = ChangeState
trigger1 = Time > 1
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 2535

;---------------------------------------------------------------------------
; Medium Hyakki Gou Zan - Attack
[Statedef 2535]
type = S
movetype = A
physics = S
anim = 2535
velset = 5.8, 0
poweradd = 25

[State 2535, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 2535, 2.1]
type = PlaySnd
trigger1 = Time = 0
value = 2000,0

[State 2535, 2.2]
type = PlaySnd
trigger1 = Time = 0
value = 2505,1
channel = 1

[State 2535, 3]
type = Explod
trigger1 = AnimElem = 2, = 0 && NumExplod(2531) = 0
anim = 2501
id = 2531
pos = 130,0
postype = p1
bindtime = -1
sprpriority = 3
removeongethit = 1
removetime = -1
ignorehitpause = 1
bind = p1
scale = .5,.5

[State 2535, 4]
type = RemoveExplod
trigger1 = AnimElem = 3, = 0
id = 2531

[State 2535, 5]
type = HitDef
trigger1 = Time = 0
attr = C, SA
animtype = Heavy
damage = floor(70/(1+(Var(32)/5.0))),7
getpower = 8,5
givepower = 8,3
hitflag = MAF
guardflag = L
pausetime = 12,12
ground.type = Trip
ground.slidetime = 4
ground.hittime  = 18
ground.velocity = -2.8,-2.2
guard.velocity = -6.0
air.velocity = -3.0,-3.2
fall = 1
air.recover = 0
fall.recover = 0
recover = 0
envshake.time = 10
envshake.ampl = 5
palfx.time = 40
palfx.add = ifelse(Var(25)=1,75,200),ifelse(Var(25)=1,25,80),ifelse(Var(25)=1,95,0)
palfx.mul = ifelse(Var(25)=1,170,220),ifelse(Var(25)=1,80,110),ifelse(Var(25)=1,210,110)
palfx.sinadd = ifelse(Var(25)=1,40,100),ifelse(Var(25)=1,10,20),ifelse(Var(25)=1,50,20),5
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

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


[State 101, Dust]
type = explod
trigger1 = !time
anim = 8104
sprpriority = 3
postype = p1
pos = 0, 0
vel = 0, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 101, Dust]
type = explod
trigger1 = !time
anim = 8104
sprpriority = 3
postype = p1
pos = 0, 0
vel = 0, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

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

[State 2535, 10]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Medium Hyakki Gou Shou - Attack
[Statedef 2540]
type = A
movetype = A
physics = N
anim = 2540
poweradd = 25

[State 2540, 1]
type = VelAdd
trigger1 = 1
y = .5

[State 2540, 2]
type = PlaySnd
trigger1 = Time = 0
value = 2510,0
channel = 0

[State 2540, 3]
type = Explod
trigger1 = AnimElem = 2, = 1 && NumExplod(2511) = 0
anim = 2511
id = 2511
pos = 0,0
postype = p1
bindtime = -1
sprpriority = 3
removetime = -1
removeongethit = 1
supermove = 1
bind = p1
scale = .5,.5

[State 2540, 4]
type = RemoveExplod
trigger1 = AnimElem = 3, = 0
id = 2511

[State 2540, 5]
type = HitDef
trigger1 = Time = 0
attr = A, SA
animtype = Hard
damage = floor(80/(1+(Var(32)/5.0))),8
getpower = 17,6
givepower = 17,6
guardflag = HA
hitflag = MAF
pausetime = 12,12
ground.type = High
ground.slidetime = 7
ground.hittime  = 15
ground.velocity = -3.0,-3.2
guard.velocity = -6.0
air.velocity = -3.0,-3.2
airguard.velocity = -3.0,-3.0
fall = 1
fall.recover = 0
air.recover = 0
recover = 0
envshake.time = 10
envshake.ampl = 5
palfx.time = 40
palfx.add = ifelse(Var(25)=1,75,200),ifelse(Var(25)=1,25,80),ifelse(Var(25)=1,95,0)
palfx.mul = ifelse(Var(25)=1,170,220),ifelse(Var(25)=1,80,110),ifelse(Var(25)=1,210,110)
palfx.sinadd = ifelse(Var(25)=1,40,100),ifelse(Var(25)=1,10,20),ifelse(Var(25)=1,50,20),5
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -50
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 2540, 6]
type = Explod
trigger1 = (MoveHit) && (P2MoveType = H) && (NumExplod(8600) < 1)
anim = 8602
id = 8600
postype = p2
pos = 0,-30
supermove = 1
ownpal = 1
sprpriority = 100
bindtime = -1
ignorehitpause = 1
persistent = 0

[State 2540, 7]
type = Explod
trigger1 = (MoveHit) && (P2MoveType = H) && (NumExplod(8601) < 1)
anim = 8603
id = 8601
postype = p2
pos = -20,-60
supermove = 1
ownpal = 1
sprpriority = -100
bindtime = -1
ignorehitpause = 1
persistent = 0

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


[State 2540, 8]
type = ChangeState
trigger1 = Time > 0
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 1121

;---------------------------------------------------------------------------
; Medium Hyakki Gou Sen - Attack
[Statedef 2542]
type = A
movetype = A
physics = N
anim = 2542
poweradd = 0

[State 2542, 1]
type = VelAdd
trigger1 = 1
y = .5

[State 2542, 2.1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4,2
channel = 0

[State 2542, 2.2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,2
channel = 1

[State 2542, 3]
type = HitDef
trigger1 = Time = 0
attr = A, SA
animtype = Hard
damage = floor(85/(1+(Var(32)/5.0))),9
getpower = 21,6
givepower = 21,7
guardflag = HA
hitflag = MAF
pausetime = 12,12
ground.type = High
ground.slidetime = 7
ground.hittime  = 15
ground.velocity = -3.0,-3.2
guard.velocity = -6.0
air.velocity = -3.0,-3.2
airguard.velocity = -3.0,-3.0
fall = 1
fall.recover = 0
air.recover = 0
recover = 0
envshake.time = 10
envshake.ampl = 5
palfx.time = 40
palfx.add = ifelse(Var(25)=1,75,200),ifelse(Var(25)=1,25,80),ifelse(Var(25)=1,95,0)
palfx.mul = ifelse(Var(25)=1,170,220),ifelse(Var(25)=1,80,110),ifelse(Var(25)=1,210,110)
palfx.sinadd = ifelse(Var(25)=1,40,100),ifelse(Var(25)=1,10,20),ifelse(Var(25)=1,50,20),5
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -63
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 2542, 4]
type = Explod
trigger1 = (MoveHit) && (P2MoveType = H) && (NumExplod(8600) < 1)
anim = 8602
id = 8600
postype = p2
pos = 0,-30
supermove = 1
ownpal = 1
sprpriority = 100
bindtime = -1
ignorehitpause = 1
persistent = 0

[State 2542, 5]
type = Explod
trigger1 = (MoveHit) && (P2MoveType = H) && (NumExplod(8601) < 1)
anim = 8603
id = 8601
postype = p2
pos = -20,-60
supermove = 1
ownpal = 1
sprpriority = -100
bindtime = -1
ignorehitpause = 1
persistent = 0

[State 2542, 6]
type = ChangeState
trigger1 = Time > 0
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 2543

;---------------------------------------------------------------------------
; Medium Hyakki Gou Sen - Landing
[Statedef 2543]
type = A
movetype = I
physics = N
anim = 2543
velset = 4.0, 0

[State 2543, 1]
type = PlaySnd
trigger1 = Time = 0
value = 2505,1

[State 2513, 2]
type = Explod
trigger1 = Time = 0
Anim = 8102
id = 8102
postype = P1
pos = 20,0
ownpal = 1
sprpriority = 5


[State 2543, 5]
type = EnvShake
trigger1 = Time = 0
time = 10
ampl = -5

[State 2543, 6]
type = VelAdd
trigger1 = Time = [0,7]
x = -.5

[State 2543, 7]
type = PosSet
trigger1 = Time = 0
y = 0

[State 2543, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Medium Hyakki Gou Jin - Attack
[Statedef 2545]
type = A
movetype = A
physics = N
anim = 2545
poweradd = 0

[State 2545, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4,2
channel = 0

[State 2545, 2]
type = VelSet
trigger1 = AnimElem = 2
x = 7.5
y = 10.5

[State 2545, 3]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 5

[State 2545, 4]
type = Explod
trigger1 = AnimElem = 2 && NumExplod(2516) = 0
anim = 2516
id = 2516
pos = 70,-12
postype = p1
bindtime = -1
sprpriority = 3
removetime = -1
ignorehitpause = 1
bind = p1
scale = .5,.5

[State 2545, 5]
type = HitDef
trigger1 = AnimElem = 2
attr = A, SA
animtype = Medium
damage = floor(85/(1+(Var(32)/5.0))),9
getpower = 21,6
givepower = 21,7
guardflag = HA
hitflag = MAF
priority = 5, Hit
pausetime = 10,12
ground.type = Low
ground.slidetime = 7
ground.hittime  = 15
ground.velocity = -3.0,-3.2
guard.velocity = -6.0
air.velocity = -3.0,-3.2
airguard.velocity = -3.0,-3.0
fall = 1
fall.recover = 0
air.recover = 0
recover = 0
envshake.time = 7
envshake.ampl = 3
palfx.time = 40
palfx.add = ifelse(Var(25)=1,75,200),ifelse(Var(25)=1,25,80),ifelse(Var(25)=1,95,0)
palfx.mul = ifelse(Var(25)=1,170,220),ifelse(Var(25)=1,80,110),ifelse(Var(25)=1,210,110)
palfx.sinadd = ifelse(Var(25)=1,40,100),ifelse(Var(25)=1,10,20),ifelse(Var(25)=1,50,20),5
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -20
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 2545, 6]
type = Explod
trigger1 = (MoveHit) && (P2MoveType = H) && (NumExplod(8600) < 1)
anim = 8603
id = 8600
postype = p2
pos = 0,-30
supermove = 1
ownpal = 1
sprpriority = 100
bindtime = -1
ignorehitpause = 1
persistent = 0

[State 2545, 7]
type = Explod
trigger1 = (MoveHit) && (P2MoveType = H) && (NumExplod(8601) < 1)
anim = 8603
id = 8601
postype = p2
pos = -20,-60
supermove = 1
ownpal = 1
sprpriority = -100
bindtime = -1
ignorehitpause = 1
persistent = 0

[State 2545, 8]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2200,1
channel = 1

[State 2545, 9]
type = RemoveExplod
trigger1 = Pos Y >= 0 || AnimTime = 0
ID = 2516

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


[State 2545, 10]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > -5)
value = 2520
ctrl = 0

;---------------------------------------------------------------------------
; Heavy Hyakki Shuu - Start
[Statedef 2560]
type = S
movetype = A
physics = S
anim = 2560
velset = 0, 0
juggle = 7
poweradd = 30
ctrl = 0

[State 2560, 1]
type = StateTypeSet
trigger1 = Time = 1
statetype = A
physics = N

[State 2560, 2.1]
type = VelSet
trigger1 = Time = 1
x = 4
y = -12

[State 2560, 2.2]
type = VelAdd
trigger1 = Time >= 1
y = .5

[State 2560, 3]
type = PlaySnd
trigger1 = Time = 1
value = 3,4
channel = 0

[State 2560, 3.2]
type = PlaySnd
trigger1 = Time = 1
value = 1900,1
channel = 1

[State 52, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 2560, 5]
type = ChangeState
triggerall = Time = [21,45]
trigger1 = Command = "x" || Command = "y" || Command = "z"
value = 2570

[State 2560, 6]
type = ChangeState
triggerall = Time = [21,45]
trigger1 = Command = "a" || Command = "b" || Command = "c"
value = ifelse(Command = "holddown", 2575, 2572)

[State 2560, 7]
type = ChangeState
trigger1 = Time > 1
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 2565

;---------------------------------------------------------------------------
; Heavy Hyakki Gou Zan - Attack
[Statedef 2565]
type = S
movetype = A
physics = S
anim = 2565
velset = 6.3, 0
poweradd = 30

[State 2565, 1]
type = PosSet
trigger1 = Time = 0
y = 0

[State 2565, 2.1]
type = PlaySnd
trigger1 = Time = 0
value = 2000,0

[State 2565, 2.2]
type = PlaySnd
trigger1 = Time = 0
value = 2505,1
channel = 1

[State 2565, 3]
type = Explod
trigger1 = AnimElem = 2, = 0 && NumExplod(2561) = 0
anim = 2501
id = 2561
pos = 130,0
postype = p1
bindtime = -1
sprpriority = 3
removeongethit = 1
removetime = -1
ignorehitpause = 1
bind = p1
scale = .5,.5

[State 2565, 4]
type = RemoveExplod
trigger1 = AnimElem = 3, = 0
id = 2561

[State 2565, 5]
type = HitDef
trigger1 = Time = 0
attr = C, SA
animtype = Heavy
damage = floor(80/(1+(Var(32)/5.0))),8
getpower = 7,6
givepower = 7,2
hitflag = MAF
guardflag = L
pausetime = 12,12
ground.type = Trip
ground.slidetime = 4
ground.hittime  = 18
ground.velocity = -2.8,-2.2
guard.velocity = -6.0
air.velocity = -3.0,-3.2
fall = 1
air.recover = 0
fall.recover = 0
recover = 0
envshake.time = 15
envshake.ampl = 7
palfx.time = 40
palfx.add = ifelse(Var(25)=1,75,200),ifelse(Var(25)=1,25,80),ifelse(Var(25)=1,95,0)
palfx.mul = ifelse(Var(25)=1,170,220),ifelse(Var(25)=1,80,110),ifelse(Var(25)=1,210,110)
palfx.sinadd = ifelse(Var(25)=1,40,100),ifelse(Var(25)=1,10,20),ifelse(Var(25)=1,50,20),5
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -4
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 2565, 6]
type = Explod
trigger1 = (MoveHit) && (P2MoveType = H) && (NumExplod(8600) < 1)
anim = 8602
id = 8600
postype = p2
pos = 0,-30
supermove = 1
ownpal = 1
sprpriority = 100
bindtime = -1
ignorehitpause = 1
persistent = 0

[State 2565, 7]
type = Explod
trigger1 = (MoveHit) && (P2MoveType = H) && (NumExplod(8601) < 1)
anim = 8602
id = 8601
postype = p2
pos = -20,-60
supermove = 1
ownpal = 1
sprpriority = -100
bindtime = -1
ignorehitpause = 1
persistent = 0



[State 101, Dust]
type = explod
trigger1 = !time
anim = 8104
sprpriority = 3
postype = p1
pos = 0, 0
vel = 0, 0
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

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



[State 2565, 10]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;---------------------------------------------------------------------------
; Heavy Hyakki Gou Shou - Attack
[Statedef 2570]
type = A
movetype = A
physics = N
anim = 2570
poweradd = 30

[State 2570, 1]
type = VelAdd
trigger1 = 1
y = .5

[State 2570, 2]
type = PlaySnd
trigger1 = Time = 0
value = 2510,0
channel = 0

[State 2570, 3]
type = Explod
trigger1 = AnimElem = 2, = 1 && NumExplod(2511) = 0
anim = 2511
id = 2511
pos = 0,0
postype = p1
bindtime = -1
sprpriority = 3
removetime = -1
removeongethit = 1
supermove = 1
bind = p1
scale = .5,.5

[State 2570, 4]
type = RemoveExplod
trigger1 = AnimElem = 3, = 0
id = 2511

[State 2570, 5]
type = HitDef
trigger1 = Time = 0
attr = A, SA
animtype = Hard
damage = floor(90/(1+(Var(32)/5.0))),9
getpower = 15,7
givepower = 15,5
guardflag = HA
hitflag = MAF
pausetime = 12,12
ground.type = High
ground.slidetime = 7
ground.hittime  = 15
ground.velocity = -3.0,-3.2
guard.velocity = -6.0
air.velocity = -3.0,-3.2
airguard.velocity = -3.0,-3.0
fall = 1
fall.recover = 0
air.recover = 0
recover = 0
envshake.time = 15
envshake.ampl = 7
palfx.time = 40
palfx.add = ifelse(Var(25)=1,75,200),ifelse(Var(25)=1,25,80),ifelse(Var(25)=1,95,0)
palfx.mul = ifelse(Var(25)=1,170,220),ifelse(Var(25)=1,80,110),ifelse(Var(25)=1,210,110)
palfx.sinadd = ifelse(Var(25)=1,40,100),ifelse(Var(25)=1,10,20),ifelse(Var(25)=1,50,20),5
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -50
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 2570, 6]
type = Explod
trigger1 = (MoveHit) && (P2MoveType = H) && (NumExplod(8600) < 1)
anim = 8602
id = 8600
postype = p2
pos = 0,-30
supermove = 1
ownpal = 1
sprpriority = 100
bindtime = -1
ignorehitpause = 1
persistent = 0

[State 2570, 7]
type = Explod
trigger1 = (MoveHit) && (P2MoveType = H) && (NumExplod(8601) < 1)
anim = 8602
id = 8601
postype = p2
pos = -20,-60
supermove = 1
ownpal = 1
sprpriority = -100
bindtime = -1
ignorehitpause = 1
persistent = 0

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


[State 2570, 8]
type = ChangeState
trigger1 = Time > 0
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 1121

;---------------------------------------------------------------------------
; Heavy Hyakki Gou Sen - Attack
[Statedef 2572]
type = A
movetype = A
physics = N
anim = 2572
poweradd = 30

[State 2572, 1]
type = VelAdd
trigger1 = 1
y = .5

[State 2572, 2.1]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4,2
channel = 0

[State 2572, 2.2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,2
channel = 1

[State 2572, 3]
type = HitDef
trigger1 = Time = 0
attr = A, SA
animtype = Hard
damage = floor(100/(1+(Var(32)/5.0))),10
getpower = 23,8
givepower = 23,8
guardflag = HA
hitflag = MAF
pausetime = 12,12
ground.type = High
ground.slidetime = 7
ground.hittime  = 15
ground.velocity = -3.0,-3.2
guard.velocity = -6.0
air.velocity = -3.0,-3.2
airguard.velocity = -3.0,-3.0
fall = 1
fall.recover = 0
air.recover = 0
recover = 0
envshake.time = 15
envshake.ampl = 7
palfx.time = 40
palfx.add = ifelse(Var(25)=1,75,200),ifelse(Var(25)=1,25,80),ifelse(Var(25)=1,95,0)
palfx.mul = ifelse(Var(25)=1,170,220),ifelse(Var(25)=1,80,110),ifelse(Var(25)=1,210,110)
palfx.sinadd = ifelse(Var(25)=1,40,100),ifelse(Var(25)=1,10,20),ifelse(Var(25)=1,50,20),5
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -63
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 2572, 4]
type = Explod
trigger1 = (MoveHit) && (P2MoveType = H) && (NumExplod(8600) < 1)
anim = 8602
id = 8600
postype = p2
pos = 0,-30
supermove = 1
ownpal = 1
sprpriority = 100
bindtime = -1
ignorehitpause = 1
persistent = 0

[State 2572, 5]
type = Explod
trigger1 = (MoveHit) && (P2MoveType = H) && (NumExplod(8601) < 1)
anim = 8602
id = 8601
postype = p2
pos = -20,-60
supermove = 1
ownpal = 1
sprpriority = -100
bindtime = -1
ignorehitpause = 1
persistent = 0

[State 2572, 6]
type = ChangeState
trigger1 = Time > 0
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 2573

;---------------------------------------------------------------------------
; Heavy Hyakki Gou Sen - Landing
[Statedef 2573]
type = A
movetype = I
physics = N
anim = 2573
velset = 4.0, 0

[State 2573, 1]
type = PlaySnd
trigger1 = Time = 0
value = 2505,1

[State 2513, 2]
type = Explod
trigger1 = Time = 0
Anim = 8102
id = 8102
postype = P1
pos = 20,0
ownpal = 1
sprpriority = 5



[State 2573, 5]
type = EnvShake
trigger1 = Time = 0
time = 10
ampl = -5

[State 2573, 6]
type = VelAdd
trigger1 = Time = [0,7]
x = -.5

[State 2573, 7]
type = PosSet
trigger1 = Time = 0
y = 0

[State 2573, 8]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; Heavy Hyakki Gou Jin - Attack
[Statedef 2575]
type = A
movetype = A
physics = N
anim = 2575
poweradd = 30

[State 2575, 1]
type = PlaySnd
trigger1 = AnimElem = 1
value = 4,2
channel = 0

[State 2575, 2]
type = VelSet
trigger1 = AnimElem = 2
x = 7.5
y = 10.5

[State 2575, 3]
type = NotHitBy
trigger1 = Time = 0
value = SCA
time = 5

[State 2575, 4]
type = Explod
trigger1 = AnimElem = 2 && NumExplod(2516) = 0
anim = 2516
id = 2516
pos = 70,-12
postype = p1
bindtime = -1
sprpriority = 3
removetime = -1
ignorehitpause = 1
bind = p1
scale = .5,.5

[State 2575, 5]
type = HitDef
trigger1 = AnimElem = 2
attr = A, SA
animtype = Medium
damage = floor(100/(1+(Var(32)/5.0))),10
getpower = 23,8
givepower = 23,8
guardflag = HA
hitflag = MAF
priority = 5, Hit
pausetime = 10,12
ground.type = Low
ground.slidetime = 7
ground.hittime  = 15
ground.velocity = -3.0,-3.2
guard.velocity = -6.0
air.velocity = -3.0,-3.2
airguard.velocity = -3.0,-3.0
fall = 1
fall.recover = 0
air.recover = 0
recover = 0
envshake.time = 7
envshake.ampl = 3
palfx.time = 40
palfx.add = ifelse(Var(25)=1,75,200),ifelse(Var(25)=1,25,80),ifelse(Var(25)=1,95,0)
palfx.mul = ifelse(Var(25)=1,170,220),ifelse(Var(25)=1,80,110),ifelse(Var(25)=1,210,110)
palfx.sinadd = ifelse(Var(25)=1,40,100),ifelse(Var(25)=1,10,20),ifelse(Var(25)=1,50,20),5
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8013)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 25), var(36) := -20
envShake.time = 14
envShake.ampl = 4
envShake.freq = 120

[State 2575, 6]
type = Explod
trigger1 = (MoveHit) && (P2MoveType = H) && (NumExplod(8600) < 1)
anim = 8603
id = 8600
postype = p2
pos = 0,-30
supermove = 1
ownpal = 1
sprpriority = 100
bindtime = -1
ignorehitpause = 1
persistent = 0

[State 2575, 7]
type = Explod
trigger1 = (MoveHit) && (P2MoveType = H) && (NumExplod(8601) < 1)
anim = 8603
id = 8601
postype = p2
pos = -20,-60
supermove = 1
ownpal = 1
sprpriority = -100
bindtime = -1
ignorehitpause = 1
persistent = 0

[State 2575, 8]
type = PlaySnd
trigger1 = AnimElem = 2
value = 2200,1
channel = 1

[State 2575, 9]
type = RemoveExplod
trigger1 = Pos Y >= 0 || AnimTime = 0
ID = 2516

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


[State 2575, 10]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > -5)
value = 2520
ctrl = 0

;PUNCH ZERO COUNTER
[STATEDEF 2900]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 0
faceP2 = 1

[STATE 2900,POSSET]
type=posset
trigger1=!time
y=0

[STATE 2900,ANIM]
type=changeanim
trigger1=!time
value=2900

[STATE 2900,DUST]
type = helper
trigger1 = Animelem=3
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[STATE 2900,WIDTH]
type = Width
trigger1 = 1
edge = 30,0

[STATE 2900,NOT HIT BY]
type = NotHitBy
trigger1 = Anim = 2900
trigger1 = AnimElemNo(0) = [1,5]
value = SCA
time = 1

[STATE 2900,HIT]
type=hitdef
trigger1= !var(16) && (var(15)<15 || var(20))
trigger1= !Time
ID = 2900
attr = S,SA
hitflag = MAF
guardflag = M
damage = ceil(ifelse(fvar(11) * 100 < 7, 7, fvar(11) * 100)), 7
getpower = 0
givepower = 0, 0
pausetime = ceil(13*(2-(var(20)>0))/2),ceil(13*(2-(var(20)>0))/2)
guard.pausetime = ceil(10*(2-(var(20)>0))/2),ceil(10*(2-(var(20)>0))/2)
animtype = Heavy
air.animtype = Heavy
fall.animtype = Diagup
ground.type = hIGH
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 9 - var(10)
air.hittime = 120
ground.velocity = -3,-7.5
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2,-7
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 1
fall.recoverTime = 120
forcestand = 1
hitsound = -1 + 0*(var(31):=2)
guardsound = -1 + 0*(var(32):=0)
sparkno = S-1 + 0*(var(33):=8013)
guard.sparkno = S-1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=92), var(36):=-77
palfx.time = 12*var(9)
palfx.add = 255,255,255
palfx.sinadd= -255,-255,-255,48
envshake.time = 14
envshake.ampl = 4
envshake.freq = 120

[STATE 2900,IDLE]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[STATE 2900,CHANGE STATE]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1
 
;KICK ZERO COUNTER
[STATEDEF 2910]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0, 0
sprpriority = 1
poweradd = 0

[STATE 2910,POSSET]
type=posset
trigger1=!time
y=0

[STATE 2910,ANIM]
type=changeanim
trigger1=!time
value=2910

[STATE 2910,NOT HIT BY]
type = nothitby
trigger1 = animelemtime(6) < 0
value = SCA
time = 1
ignorehitpause = 1

[STATE 2910,WIDTH]
type = Width
trigger1 = 1
edge = 40,0

[STATE 2910,HIT]
type = hitdef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = !Time
ID = 2910
attr = S, SA
hitFlag = MAF
guardFlag = M
damage =ceil(ifelse(fvar(11) * 100 < 7, 7, fvar(11) * 100)), 7
getPower = 0, 0
givePower = 0, 0
pausetime = ceil(13*(2-(var(20)>0))/2),ceil(13*(2-(var(20)>0))/2)
guard.pausetime = ceil(10*(2-(var(20)>0))/2),ceil(10*(2-(var(20)>0))/2)
animType = Back
air.animType = Back
fall.animType = Diagup
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 18 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -6,-5.5
ground.cornerPush.velOff = 0
guard.velocity = -6
guard.cornerPush.velOff = 0
air.velocity = -6.46, -4.25
air.cornerPush.velOff = 0
yaccel = 0.58
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitsound = -1 + 0*(var(31):=5)
guardsound = -1 + 0*(var(32):=0)
sparkno = S-1 + 0*(var(33):=8013)
guard.sparkno = S-1 + 0*(var(34):=8001)
sparkxy = -10 + 0*(var(35):=76), var(36):=-83
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[STATE 2910,IDLE]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
movetype = I

[STATE 2910,CHANGE STATE]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1