; _____________________________________
;| Character by ZMugens               |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;Gou Hadouken EX
[Statedef 1010]
type = S
physics = S
moveType = A
anim = 1010
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1050, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -500

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !var(40)
trigger1 = !Time
value = ifElse(var(10) = 0, 1010, ifElse(var(10) = 1, 1010, 1010))

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = var(40)
trigger1 = !Time
value = ifElse(var(10) = 0, 1010, ifElse(var(10) = 1, 1010, 1010))


[State 1050,Posset]
type=posset
trigger1=!time
y=0

[State 1050, Button Detect]
type = VarSet
trigger1 = !Time
var(10) = 3

[State 1050, Custom Combo Juggle Points Reset]
type = varset
trigger1 = !time && var(20)
var(15) = 0
ignorehitpause = 1

[State 1050, CC Reset]
type = palfx
trigger1 = !time
trigger1 = var(20) := -1
time = 1

[State 1050, ExFX]
type = varset
trigger1 = !time
var(25) = 44

[State 1050, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = 10, -66
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1050, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
channel = 2

[State 1050, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
trigger2 = animelem = 7
value = 1000,0
channel = 0

[State 1050, PlaySnd]
type = PlaySnd
trigger1 = animelem = 2
trigger2 = animelem = 7
value = 5,0
channel = 1
volumescale = 64

[State 1000, Projectile]
type = Helper
trigger1 = AnimElem = 3
stateNo = 1015
ID = 1015
name = "Gou Hadouken"
posType = P1
pos = 90,-80
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 1000, Projectile]
type = Helper
trigger1 = AnimElem = 8
stateNo = 1015
ID = 1015
name = "Gou Hadouken"
posType = P1
pos = 86,-80
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
;EX Zankuu Hadouken
[StateDef 1080]
type = A
physics = N
moveType = A
anim = 1070
ctrl = 0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1050, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -500

[State 1050, ExFX]
type = varset
trigger1 = !time
var(25) = 44

[State 1050, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = 10, -86
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1050, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
channel = 2

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
channel = 3
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
trigger2 = AnimElem = 5,=1
trigger3 = AnimElem = 5,=2
stateNo = 1075
ID = 1075
name = "Zankuu Hadouken"
posType = P1
pos = 53,-57
size.xScale = 1
size.yScale = 1
keyctrl = 1
persistent = 1
ignorehitpause = 1
ownpal = 1

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
;Ex Gou Shoryuken
[StateDef 1130]
type = S
physics = N
moveType = A
anim = 1120
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -500
faceP2 = 1

[State 1050, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -500

[State 1050, ExFX]
type = varset
trigger1 = !time
var(25) = 44

[State 1050, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = 10, -86
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1050, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
channel = 2



[State 1100, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = ifElse(var(20) > 30, 0, ifelse((P2MoveType = H || Random < 333), 2, ifElse(Random < 500, 1, 0)))


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
value = 4, ifelse(var(40), 4, 1)
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
x = 8 + var(10) * 2.5
y = -14 - var(10) * 1.5

[State 1100, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) >= 0
y = 0.8

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
pos = -6,30

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
pos = -6,30

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
pos = -6,30

[State 1100, HitDef 1]
type = HitDef
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
ground.velocity = -1.3, -12
ground.cornerPush.velOff = 0
guard.velocity = -8
guard.cornerPush.velOff = 0
air.velocity = -1.3, -12
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

[State 1100, HitDef 3]
type = HitDef
trigger1 = AnimElem = 5
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

;EX TATSUMAKI SENPUU KYAKKU
[Statedef 1255]
type = S
physics = S
movetype = A
anim = 3200
ctrl = 0
velset = 0, 0
poweradd = -500
;juggle = ifelse((prevstateno = [1000, 4999]), 0, 6) * !var(20)
facep2 = 1
sprpriority = 2

[State 1050, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -500

[State 1050, ExFX]
type = varset
trigger1 = !time
var(25) = 44

[State 1050, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = 10, -86
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1050, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
channel = 2


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
palFX.time = 80
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
palFX.time = 80
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4


[State 3250, hitfinal]
type = hitdef
trigger1 = !var(16) && var(15) < 14
trigger1 = anim = 3250 && animelem = 20
attr = S, HA
damage = ceil(ifElse(fvar(11) * 29 < 7, 7, fvar(11) * 29)), 4
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


[State 3250, hitevilfinal]
type = hitdef
trigger1 = !var(16) && var(15) < 13
trigger1 = anim = 3251 && animelem = 20
attr = S, HA
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 4
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


[State 3250, HitSound]
type = playsnd
triggerall = movehit = 1 && hitcount > 1
trigger1 = anim = 3250 && hitpausetime = 4
trigger2 = anim = 3251 && hitpausetime = 2
value = 2, 6
channel = 2
ignorehitpause = 1

[State 3250, Dust]
type = null;explod
trigger1 = (anim = [3250, 3251]) && !numexplod(3210)
anim = 1307
ID = 3210
sprpriority = -3
postype = p1
facing = 1
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


ignorehitpause = 1

[State 3250, flames]
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

[State 1200, Helper]
type = Helper
;triggerall = Anim = 1220 
trigger1 = AnimElem = 7 || AnimElem = 13 || AnimElem = 19 || AnimElem = 25 || AnimElem = 31
helpertype = normal 
name = "Flame FX"
ID = 1205
stateno = 1205
pos = 65,-74
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
pos = 55,-74
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
pos = 35,-74
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
pos = 25,-74
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
pos = -35,-74
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
pos = -45,-74
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
pos = -15,-74
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
pos = -5,-74
postype = p1    
ownpal = 1
size.xscale = .5
size.yscale = .3

[State Idle]
type = statetypeset
trigger1 = anim = 1207
movetype = I

;EX TATSUMAKI SENPUU KYAKKU
[Statedef 1256]
type = A
physics = A
movetype = A
anim = 3260
ctrl = 0
velset = 0, 0
poweradd = -500
;juggle = ifelse((prevstateno = [1000, 4999]), 0, 6) * !var(20)
facep2 = 1
sprpriority = 2

[State 1050, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -500

[State 1050, ExFX]
type = varset
trigger1 = !time
var(25) = 44

[State 1050, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = 10, -86
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1050, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
channel = 2


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


[State Corner Push]
type = varset
trigger1 = anim = 3260 && animelem = 3
fvar(5) = 0

[State 3250, NHB]
type = nothitby
trigger1 = anim = 3260
time = 1
value = SCA
[State 3250, width]
type = width
trigger1 = (anim = [3201, 3202]) && movehit
edge = 50, 35


[State 3250, Snd]
type = playsnd
trigger1 = anim = 3260 && animelem = 5
value = 0, 41



[State 3250, Dust]
type = helper
trigger1 = anim = 3260 && animelem = 5
helpertype = normal
stateno = 8100
ID = 8100
name = "Dust"
postype = p1
ownpal = 1
[State 3250, Vel]
type = velset
trigger1 = anim = 3260 && animelem = 5
y = -3.3

[State 3250, Anim]
type = changeanim
trigger1 = anim = 3260 && !animtime
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
palFX.time = 80
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
palFX.time = 80
palFX.mul = 128, 128, 128
palFX.sinAdd = 96, 96, 96, 4


[State 3250, hitfinal]
type = hitdef
trigger1 = !var(16) && var(15) < 14
trigger1 = anim = 3250 && animelem = 20
attr = S, HA
damage = ceil(ifElse(fvar(11) * 29 < 7, 7, fvar(11) * 29)), 4
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


[State 3250, hitevilfinal]
type = hitdef
trigger1 = !var(16) && var(15) < 13
trigger1 = anim = 3251 && animelem = 20
attr = S, HA
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 4
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


[State 3250, HitSound]
type = playsnd
triggerall = movehit = 1 && hitcount > 1
trigger1 = anim = 3250 && hitpausetime = 4
trigger2 = anim = 3251 && hitpausetime = 2
value = 2, 6
channel = 2
ignorehitpause = 1

[State 3250, Dust]
type = null;explod
trigger1 = (anim = [3250, 3251]) && !numexplod(3210)
anim = 1307
ID = 3210
sprpriority = -3
postype = p1
facing = 1
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

[State 3250, flames]
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

[State 1200, Helper]
type = Helper
;triggerall = Anim = 1220 
trigger1 = AnimElem = 7 || AnimElem = 13 || AnimElem = 19 || AnimElem = 25 || AnimElem = 31
helpertype = normal 
name = "Flame FX"
ID = 1205
stateno = 1205
pos = 65,-74
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
pos = 55,-74
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
pos = 35,-74
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
pos = 25,-74
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
pos = -35,-74
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
pos = -45,-74
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
pos = -15,-74
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
pos = -5,-74
postype = p1    
ownpal = 1
size.xscale = .5
size.yscale = .3

[State Idle]
type = statetypeset
trigger1 = anim = 1207
movetype = I

;---------------------------------------------------------------------------
; Heavy Gou Ryuu Zanshou - Attack
[Statedef 2030]
type    = A
movetype= A
physics = N
juggle  = 4
poweradd= -500
ctrl = 0
velset = 0,0
anim = 2020
sprpriority = 2

[State 1050, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -500

[State 1050, ExFX]
type = varset
trigger1 = !time
var(25) = 44

[State 1050, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = 10, -86
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1050, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
channel = 2

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
getpower = 0,0
givepower = 14,5
hitflag = MAF
priority = 5, Hit
guardflag = MA
pausetime = 10,9
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -6, -9
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
getpower = 0,0
givepower = 14,5
hitflag = MAF
priority = 5, Hit
guardflag = MA
pausetime = 10,9
ground.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -6,-9
fall.recover = 0
fall = 1
air.type = Low
air.velocity = -6,-10
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
value = 2031
ctrl = 0

;---------------------------------------------------------------------------
; Heavy Gou Ryuu Zanshou - Falling
[Statedef 2031]
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
; EX Tenma Kuujin Kyaku - Attack
[Statedef 2230]
type    = A
movetype= A
physics = N
juggle  = 1
poweradd= -500
ctrl = 0
anim = 2200
sprpriority = 2

[State 1050, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -500

[State 1050, ExFX]
type = varset
trigger1 = !time
var(25) = 44

[State 1050, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = 10, -86
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1050, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
channel = 2

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
trigger1 = AnimElem = 3, = 1
trigger2 = AnimElem = 3, = 2
trigger3 = AnimElem = 3, = 3
trigger4 = AnimElem = 3, = 4
trigger5 = AnimElem = 3, = 5
attr = A, SA
animtype = Medium
damage = floor(22/(1+(Var(32)/5.0))),3
getpower = 0,0
givepower = 12,4
guardflag = HA
hitflag = MAF
priority = 5, Hit
pausetime = 9,10
ground.type = Low
ground.slidetime = 27
ground.hittime  = 27
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


;---------------------------------------------------------------------------
; EX Hyakki Shuu - Start
[Statedef 2580]
type = S
movetype = A
physics = S
anim = 2560
velset = 0, 0
juggle = 7
poweradd = -500
ctrl = 0

[State 1050, MAX Timer Drain]
type = VarAdd
trigger1 = !Time
trigger1 = var(53) > 0
var(53) = -500

[State 1050, ExFX]
type = varset
trigger1 = !time
var(25) = 44

[State 1050, ExFX]
type = explod
trigger1 = !time
anim = 8210
sprpriority = 3
postype = p1
pos = 10, -86
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 1050, ExFX]
type = playsnd
trigger1 = !time
value = 0, 1000
channel = 2

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
value = 2590

[State 2560, 6]
type = ChangeState
triggerall = Time = [21,45]
trigger1 = Command = "a" || Command = "b" || Command = "c"
value = ifelse(Command = "holddown", 2595, 2592)

[State 2560, 7]
type = ChangeState
trigger1 = Time > 1
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 2585

;---------------------------------------------------------------------------
; EX Hyakki Gou Zan - Attack
[Statedef 2585]
type = S
movetype = A
physics = S
anim = 2565
velset = 6.3, 0
poweradd = 0

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
damage = floor(90/(1+(Var(32)/5.0))),9
getpower = 0,0
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
[Statedef 2590]
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
damage = floor(105/(1+(Var(32)/5.0))),10
getpower = 0,0
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
[Statedef 2592]
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
damage = floor(112/(1+(Var(32)/5.0))),11
getpower = 0,0
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
[Statedef 2593]
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
[Statedef 2595]
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
damage = floor(112/(1+(Var(32)/5.0))),11
getpower = 0,0
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