; _________________________________________
;| Guile by Jmorphman                      |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;========================================<SUPER STATES>========================================
;==============================================================================================

;========================<SOMERSAULT STRIKE>=============================
[StateDef 3000]
type = S
physics = N
moveType = A
anim = 3000+var(55)
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
trigger1 = AnimElemTime(7) < 0
time = 1
value = SCA

[State 3000, SuperPause FX]
type = Helper
trigger1 = Time = 4
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(20 * const(size.xscale)), ceil(-24 * const(size.yscale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = Time = 4
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3050, Dust Helper]
type = Helper
trigger1 = AnimElem = 14
helperType = Normal
stateNo = 8100
ID = 8100
name = "Somersault Kick Dust"
posType = P1
ownPal = 1

[State 3100, Vel]
type = velmul
trigger1 = animelemtime(14) < 0
x = 0.85
[State 3100, Vel]
type = velset
trigger1 = animelem = 5
x = 12

[State 3100, Vel]
type = velmul
trigger1 = animelemtime(17) >= 0
x = 0.95
[State 3100, Accel]
type = veladd
trigger1 = animelemtime(17) >= 0
y = 0.675
[State 3100, Type]
type = statetypeset
trigger1 = animelemtime(17) >= 0
statetype = A

[State 3100, Vel]
type = velset
trigger1 = animelem = 17
x = 12
y = -8

[State 3100, Snd]
type = playsnd
trigger1 = animelem = 4 || animelem = 16
value = 3000, ifelse((animelem = 16), 1, 0)
channel = 0

[State 3100, Snd]
type = playsnd
trigger1 = animelem = 4 || animelem = 16
value = 1100, 1
channel = 3

[State 3100, Snd]
type = playsnd
trigger1 = animelem = 17
value = 41, 0
[State 3100, Dust]
type = helper
trigger1 = animelem = 17
helpertype = normal
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[State 3100, FX]
type = helper
trigger1 = !numhelper(1105) || !numhelper(11105)
trigger1 = animelem = 4 || animelem = 16
helpertype = normal
stateno = 1105+var(55)
ID = 1105
name = "Sommersault FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 3100, Hit]
type = hitdef
trigger1 = animelem = 4 || animelem = 5
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = 4, 4
guard.pausetime = 4, 4
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 18
ground.velocity = 0, 0
guard.velocity = 0
air.velocity = -3.22, -9.88
ground.cornerpush.veloff = 0;-10
guard.cornerpush.veloff = 0;-10
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) :=98), var(36) := -74
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
forcestand = 1

[State 3100, Hit]
type = hitdef
trigger1 = animelem = 6
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 23 < 7, 7, fvar(11) * 23)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = 4, 4
guard.pausetime = 4, 4
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = High
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 18
ground.velocity = 0, 0
guard.velocity = 0
air.velocity = -3.22, -9.88
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) :=98), var(36) := -74
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
forcestand = 1

[State 3100, Hit]
type = hitdef
trigger1 = animelem = 16
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 25 < 7, 7, fvar(11) * 25)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = 4, 4
guard.pausetime = 4, 4
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 19
air.hittime = 19
ground.velocity = -2.5, -9.85
guard.velocity = 0
air.velocity = -2.5, -9.85
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) :=98), var(36) := -74
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
forcestand = 1

[State 3100, Hit]
type = hitdef
trigger1 = animelem = 17 || animelem = 18
attr = A, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 20 < 7, 7, fvar(11) * 20)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = 4, 4
guard.pausetime = 4, 4
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = High
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 19
air.hittime = 19
ground.velocity = -2.5, -9.85
guard.velocity = 0
air.velocity = -2.5, -9.85
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) :=98), var(36) := -74
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
forcestand = 1

[State 3100, Hit]
type = hitdef
trigger1 = animelem = 19
attr = A, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 20 < 7, 7, fvar(11) * 20)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = 4, 4
guard.pausetime = 4, 4
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = High
air.type = High
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 19
air.hittime = 19
ground.velocity = -7, -6.1
guard.velocity = 0
air.velocity = -7, -6.1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) :=92), var(36) := -89
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
forcestand = 1

[State 3100, Type]
type = statetypeset
trigger1 = animelemtime(21) >= 0
movetype = I

[State 3100, ChangeState]
type = ChangeState
trigger1 = animelemtime(21) >= 0 && (vel y > 0 && pos y >= 0)
value = 3002

;Landing
[StateDef 3002]
type = S
anim = 1101 + var(55)
physics = N
moveType = I
velSet = 0,0

[State 3002, EX Flash Off]
type = VarSet
trigger1 = !Time
var(25) = 0

[State 3002, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3002, Landing Dust Explod]
type = Explod
trigger1 = !Time
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3002, Landing Sound]
type = PlaySnd
trigger1 = !Time
value = 52,0

[State 3002, End]
type = ChangeState
trigger1 = AnimElemTime(2) = 2 && command = "holddown"
value = 11
ctrl = 1

[State 3002, End]
type = ChangeState
trigger1 = AnimElemTime(3)=4
value = 0
ctrl = 1

;========================<MAX SOMERSAULT STRIKE>=============================
[StateDef 3050]
type = S
physics = N
moveType = A
anim = 3050+var(55)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -2000
faceP2 = 1

[State 3050, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

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
var(17) = 43

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
trigger1 = AnimElemTime(10) < 0
time = 1
value = SCA

[State 3050, Super Pause FX]
type = Helper
trigger1 = Time = 4
helperType = Normal
stateNo = 8510
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(20 * const(size.xscale)), ceil(-24 * const(size.yscale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3050, Super Pause]
type = SuperPause
trigger1 = Time = 4
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3050, Dust Helper]
type = Helper
trigger1 = AnimElem = 26
helperType = Normal
stateNo = 8100
ID = 8100
name = "Somersault Kick Dust"
posType = P1
ownPal = 1

[State 3100, Vel]
type = velmul
trigger1 = animelemtime(26) < 0
x = 0.85
[State 3100, Vel]
type = velset
trigger1 = animelem = 5 || animelem = 17
x = 12

[State 3100, Vel]
type = velmul
trigger1 = animelemtime(29) >= 0
x = 0.95
[State 3100, Accel]
type = veladd
trigger1 = animelemtime(29) >= 0
y = 0.675
[State 3100, Type]
type = statetypeset
trigger1 = animelemtime(29) >= 0
statetype = A

[State 3100, Vel]
type = velset
trigger1 = animelem = 29
x = 12
y = -12

[State 3100, Snd]
type = playsnd
trigger1 = animelem = 4
value = 4, 4
channel = 0

[State 3100, Snd]
type = playsnd
trigger1 = animelem = 16 || animelem = 28
value = 3000, ifelse((animelem = 28), 1, 0)
channel = 0

[State 3100, Snd]
type = playsnd
trigger1 = animelem = 4 || animelem = 16 || animelem = 28
value = 1100, 1
channel = 3

[State 3100, Snd]
type = playsnd
trigger1 = animelem = 29
value = 41, 0
[State 3100, Dust]
type = helper
trigger1 = animelem = 29
helpertype = normal
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[State 3100, FX]
type = helper
trigger1 = !numhelper(1105+var(55))
trigger1 = animelem = 4 || animelem = 16 || animelem = 28
helpertype = normal
stateno = 1105+var(55)
ID = 1105
name = "Sommersault FX"
postype = p1
size.xscale = 0.5 * const(size.xscale)
size.yscale = 0.5 * const(size.yscale)
pausemovetime = 65535
supermovetime = 65535
ownpal = 1

[State 3100, Hit]
type = hitdef
trigger1 = animelem = 4 || animelem = 5 || animelem = 16 || animelem = 17
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = 4, 4
guard.pausetime = 4, 4
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 18
ground.velocity = 0, 0
guard.velocity = 0
air.velocity = -3.22, -9.88
ground.cornerpush.veloff = 0;-10
guard.cornerpush.veloff = 0;-10
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) :=98), var(36) := -74
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
forcestand = 1

[State 3100, Hit]
type = hitdef
trigger1 = animelem = 6 || animelem = 18
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 23 < 7, 7, fvar(11) * 23)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = 4, 4
guard.pausetime = 4, 4
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = High
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 18
ground.velocity = 0, 0
guard.velocity = 0
air.velocity = -3.22, -9.88
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) :=98), var(36) := -74
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
forcestand = 1

[State 3100, Hit]
type = hitdef
trigger1 = animelem = 28
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 25 < 7, 7, fvar(11) * 25)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = 4, 4
guard.pausetime = 4, 4
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 19
air.hittime = 19
ground.velocity = -2.5, -9.85
guard.velocity = 0
air.velocity = -2.5, -9.85
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) :=98), var(36) := -74
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
forcestand = 1

[State 3100, Hit]
type = hitdef
trigger1 = animelem = 29 || animelem = 30
attr = A, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 20 < 7, 7, fvar(11) * 20)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = 4, 4
guard.pausetime = 4, 4
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = High
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 19
air.hittime = 19
ground.velocity = -2.5, -9.85
guard.velocity = 0
air.velocity = -2.5, -9.85
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) :=98), var(36) := -74
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
forcestand = 1

[State 3100, Hit]
type = hitdef
trigger1 = animelem = 31
attr = A, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 20 < 7, 7, fvar(11) * 20)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = 4, 4
guard.pausetime = 4, 4
animtype = Hard
air.animtype = Hard
fall.animtype = Hard
ground.type = High
air.type = High
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 19
air.hittime = 19
ground.velocity = -7, -6.1
guard.velocity = 0
air.velocity = -7, -6.1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 1
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) :=92), var(36) := -89
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
forcestand = 1

[State 3100, Type]
type = statetypeset
trigger1 = animelemtime(33) >= 0
movetype = I

[State 3100, ChangeState]
type = ChangeState
trigger1 = animelemtime(33) >= 0 && (vel y > 0 && pos y >= 0)
value = 3002

;========================<CROSSFIRE  BLITZ>=============================
[StateDef 3100]
type = S
physics = N
moveType = A
anim = 3100+var(55)
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
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(-29 * const(size.xscale)), ceil(-18 * const(size.yscale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3100, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3100, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 8
trigger3 = AnimElem = 14
value = 4,0
channel = 0

[State 3100, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 20
value = 4,4
channel = 0

[State 3100, Woosh Sound 1]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 8
trigger3 = AnimElem = 14
trigger4 = AnimElem = 20
value = 1,4
channel = 1

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 3.5

[State 3100, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3100, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 18
value = 52,0
channel = 3

[State 3100, Landing Dust Expod]
type = Explod
trigger1 = AnimElem = 18
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3100, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 =  AnimElem = 4
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32, -3.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 79), var(36) := -88
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, HitDef 2]
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 =  AnimElem = 10
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32, -3.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 100), var(36) := -93
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, HitDef 3]
type = HitDef
trigger1 = !var(16) && var(15) < 3
trigger1 =  AnimElem = 15
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = 0,0
ground.cornerPush.velOff = 0
guard.velocity = 0
guard.cornerPush.velOff = 0
air.velocity = -4.32, -3.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 78), var(36) := -61
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, HitDef 4]
type = HitDef
trigger1 = !var(16) && var(15) < 4
trigger1 =  AnimElem = 21
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 70 < 7, 7, fvar(11) * 70)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = -5.16, -8.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -5.16, -8.81
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 79), var(36) := -88
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(22) >= 0
moveType = I

[State 3100, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1



;========================<MAX CROSSFIRE BLITZ>=============================
[StateDef 3150]
type = S
physics = N
moveType = A
anim = 3150+var(55)
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
var(17) = 43

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
trigger1 = AnimElemTime(9) < 0
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
pos = ceil(-29 * const(size.xscale)), ceil(-18 * const(size.yscale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3150, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3100, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 8
trigger3 = AnimElem = 14
trigger4 = AnimElem = 18
trigger5 = AnimElem = 24
value = 4,0
channel = 0

[State 3100, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 27
value = 4,4
channel = 0

[State 3100, Woosh Sound 1]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 8
trigger3 = AnimElem = 14
trigger4 = AnimElem = 18
value = 1,4
channel = 1

[State 3100, Woosh Sound 2]
type = PlaySnd
trigger1 = AnimElem = 24
trigger2 = AnimElem = 27
value = 1000,1
channel = 1

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 3.5

[State 2000, PosAdd]
type = PosAdd
trigger1 = AnimElem = 26
x = 60

[State 3100, VelSet]
type = VelSet
trigger1 = AnimElem = 26
x = 0

[State 3100, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 3100, Landing Sound]
type = PlaySnd
trigger1 = AnimElem = 18
value = 52,0
channel = 3

[State 3100, Landing Dust Expod]
type = Explod
trigger1 = AnimElem = 18
anim = 8102
sprPriority = -3
posType = P1
scale = 0.5,0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1

[State 3100, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 =  AnimElem = 4
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = -6,0
ground.cornerPush.velOff = -6
guard.velocity = -6
guard.cornerPush.velOff = -6
air.velocity = -4.32, -3.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 79), var(36) := -88
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, HitDef 2]
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 =  AnimElem = 10
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = -6,0
ground.cornerPush.velOff = -6
guard.velocity = -6
guard.cornerPush.velOff = -6
air.velocity = -4.32, -3.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 100), var(36) := -93
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3100, HitDef 3]
type = HitDef
trigger1 = !var(16) && var(15) < 3
trigger1 =  AnimElem = 15
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = -6,0
ground.cornerPush.velOff = -6
guard.velocity = -6
guard.cornerPush.velOff = -6
air.velocity = -4.32, -3.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 78), var(36) := -61
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, HitDef 4]
type = HitDef
trigger1 = !var(16) && var(15) < 4
trigger1 =  AnimElem = 19
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = -6,0
ground.cornerPush.velOff = -6
guard.velocity = -6
guard.cornerPush.velOff = -6
air.velocity = -4.32, -3.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 62), var(36) := -90
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 1000, Sonic BackFist FX]
type = Explod
trigger1 = AnimElem = 24
anim = 3151
sprPriority = 3
posType = P1
scale = 0.5 * const(size.xScale),0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0
bindtime = -2

[State 1000, Sonic Upper FX]
type = Explod
trigger1 = AnimElem = 27
anim = 3152
sprPriority = 3
posType = P1
scale = 0.5 * const(size.xScale),0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0
bindtime = -2

[State 2000, Width]
type = Width
trigger1 = AnimElemTime(23) >= 0
trigger1 = AnimElemTime(24) < 0
value = 20,-10

[State 2000, Width]
type = Width
trigger1 = AnimElemTime(24) >= 0
trigger1 = AnimElemTime(25) < 0
value = 60,-30

[State 2000, Width]
type = Width
trigger1 = AnimElemTime(25) >= 0
trigger1 = AnimElemTime(26) < 0
value = 80,-40

[State 3150, HitDef 5]
type = HitDef
trigger1 = !var(16) && var(15) < 5
trigger1 =  AnimElem = 25
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 55 < 7, 7, fvar(11) * 55)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = -6,0
ground.cornerPush.velOff = -6
guard.velocity = -6
guard.cornerPush.velOff = -6
air.velocity = -4.32, -3.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 6)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 142), var(36) := -78
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, HitDef 6]
type = HitDef
trigger1 = !var(16) && var(15) < 6
trigger1 =  AnimElem = 28
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 77 < 7, 7, fvar(11) * 77)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = -5.16, -8.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -5.16, -8.81
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 6)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0 * (var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 72), var(36) := -98
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(29) >= 0
moveType = I

[State 3150, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;========================<SONIC BREAK>=============================
[StateDef 3200]
type = S
physics = N
moveType = A
anim = 3200+var(55)
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
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(-52 * const(size.xscale)), ceil(-75 * const(size.yscale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3100, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3100, Voice 1]
type = PlaySnd
trigger1 = AnimElem = 2
value = 3200,0
channel = 0

[State 3100, Woosh Sound 1]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 6
trigger3 = AnimElem = 9
trigger4 = AnimElem = 13
value = 1000,1
channel = 1

[State 3100, Dust Helper]
type = Helper
trigger1 = AnimElem = 2
trigger2 = AnimElem = 6
trigger3 = AnimElem = 9
trigger4 = AnimElem = 13
helperType = Normal
stateNo = 8103
ID = 8100
name = "Dash Dust"
posType = P1
pauseMoveTime = 255
superMoveTime = 255
ownPal = 1

[State 1000, Sonic BackFist FX]
type = Explod
trigger1 = AnimElem = 2
anim = 1004
sprPriority = 3
posType = P1
scale = 0.5 * const(size.xScale),0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0
bindtime = -2

[State 1000, Sonic Upper FX]
type = Explod
trigger1 = AnimElem = 6
anim = 3152
sprPriority = 3
posType = P1
scale = 0.5 * const(size.xScale),0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0
bindtime = -2

[State 1000, Sonic BackFist FX]
type = Explod
trigger1 = AnimElem = 9
anim = 3151
sprPriority = 3
posType = P1
scale = 0.5 * const(size.xScale),0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0
bindtime = -2

[State 1030, Projectile 1]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 3205
ID = 3205
name = "EX Sonic Boom Projectile"
posType = P1
pos = ceil(47 * const(size.xscale)), ceil(-68 * const(size.yscale))
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1030, Projectile 2]
type = Helper
trigger1 = AnimElem = 7
helperType = Normal
stateNo = 3205
ID = 3205
name = "EX Sonic Boom Projectile"
posType = P1
pos = ceil(64 * const(size.xscale)), ceil(-68 * const(size.yscale))
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1030, Projectile 3-4]
type = Helper
trigger1 = AnimElem = 10
trigger2 = AnimElem = 14
helperType = Normal
stateNo = 3205
ID = 3205
name = "EX Sonic Boom Projectile"
posType = P1
pos = ceil(101 * const(size.xscale)), ceil(-68 * const(size.yscale))
size.xScale = 0.5
size.yScale = 0.5
ownPal = 1

[State 1000, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;========================<CROSSFIRE BLITZ>=============================
[StateDef 3300]
type = S
physics = N
moveType = A
anim = 3300+var(55)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -3000
faceP2 = 1

[State 3200, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3200, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3200, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3200, Corner Push]
type = VarSet
trigger1 = 1
fvar(5) = 0

[State 3200, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3200, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3200, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3200, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
time = 1
value = SCA

[State 3200, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = ceil(-29 * const(size.xscale)), ceil(-18 * const(size.yscale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3200, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 0, PlaySnd]
type = PlaySnd
trigger1 = !time
value = S3300,0

[State 3300, Vel]
type = velmul
trigger1 = animelemtime(4) >= 0
x = 0.9

[State 3300, Vel]
type = velset
trigger1 = animelem = 4
x = 16

[State 3300, Vel]
type = velset
trigger1 = animelem = 9
x = 0

[State 3100, Hit]
type = hitdef
trigger1 = animelem = 4
trigger2 = !movehit && animelem = 5
trigger3 = !movehit && animelem = 6
attr = S, HA
hitflag = MAF
guardflag = M
priority = 4, Hit
damage = ceil(ifelse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 7
getpower = 0, 0
givepower = 36, 36
pausetime = 4, 4
guard.pausetime = 4, 4
animtype = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Low
air.type = Low
ground.hittime = 18
ground.slidetime = 18
guard.hittime = 18
air.hittime = 18
ground.velocity = 0, 0
guard.velocity = 0
air.velocity = -3.22, -9.88
ground.cornerpush.veloff = 0;-10
guard.cornerpush.veloff = 0;-10
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = 0.5
fall = 0
air.fall = 1
fall.recover = 0
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) :=40), var(36) := -55
palfx.time = 12 * var(9)
palfx.add = 255, 255, 255
palfx.sinadd = -255, -255, -255, 48
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
forcestand = 1

[State 3300, p1state]
type = changestate
trigger1 = animelemtime(4) >= 0
trigger1 = movehit || movereversed
value = 3301

[State 3300, blocked]
type = changeanim
trigger1 = animelemtime(4) >= 0 && animelemtime(7) < 0
trigger1 = moveguarded
value = 3300
elem = 7

[State 3300, Type]
type = statetypeset
trigger1 = animelemtime(7) >= 0
movetype = I

[State 3300, End]
type = changestate
trigger1 = animelemtime(10)=5
value = 0
ctrl = 1

;Connected
[Statedef 3301]
type = S
physics = N
movetype = A
anim = 3301+var(55)
ctrl = 0
velset = 0, 0
sprpriority = 1

[State 3301, p2state]
type = targetstate
trigger1 = !time && numtarget(3300)
value = 3302
ID = 3300

[State 3301, Bind]
type = targetbind
trigger1 = !time && numtarget(3300)
pos = 64, 0
ID = 3300

[State 3301, Vel]
type = velset
trigger1 = animelem = 1
x = 4
[State 3301, Vel]
type = velset
trigger1 = animelem = 27
x = 0

[State 3301, Vel]
type = velset
trigger1 = animelem = 31
x = 4.5
y = -6

[State 3100, Accel]
type = veladd
trigger1 = animelemtime(31) >= 0
y = 0.5

[State 3100, Type]
type = statetypeset
trigger1 = animelemtime(31) >= 0
statetype = A

[State 3301, Snd]
type = playsnd
trigger1 = animelem = 2 || animelem = 4 || animelem = 7
trigger2 = animelem = 12 || animelem = 18 || animelem = 21
value = 4, (random % 4)
channel = 0

[State 3301, Snd]
type = playsnd
trigger1 = animelem = 27
value = 4,4
channel = 0

[State 3301, Snd]
type = playsnd
trigger1 = animelem = 32
value = 3300, 1
channel = 0

[State 3301, Snd]
type = playsnd
trigger1 = animelem = 2 || animelem = 4 || animelem = 18 || animelem = 21 || animelem = 27
value = 1, 2
channel = 1

[State 3301, Snd]
type = playsnd
trigger1 = animelem = 7 || animelem = 12 || animelem = 32
value = 1, 5
channel = 1

[State 3301, Dust]
type = helper
trigger1 = animelem = 31
helpertype = normal
stateno = 8100
ID = 8100
name = "Jump Dust"
postype = p1
ownpal = 1

[State 3150, HitDef 1,2,6]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 =  AnimElem = 2 || AnimElem = 5 || AnimElem = 22
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 44 < 7, 7, fvar(11) * 44)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = -6,0
ground.cornerPush.velOff = -3
guard.velocity = -6
guard.cornerPush.velOff = -6
air.velocity = -4.32, -3.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 78), var(36) := -82
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, HitDef 3]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 =  AnimElem = 8
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 44 < 7, 7, fvar(11) * 44)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = -6,0
ground.cornerPush.velOff = -3
guard.velocity = -6
guard.cornerPush.velOff = -6
air.velocity = -4.32, -3.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 82), var(36) := -25
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, HitDef 4]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 =  AnimElem = 13
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 44 < 7, 7, fvar(11) * 44)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = -6,0
ground.cornerPush.velOff = -3
guard.velocity = -6
guard.cornerPush.velOff = -6
air.velocity = -4.32, -3.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 104), var(36) := -57
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, HitDef 5]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 =  AnimElem = 18
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 44 < 7, 7, fvar(11) * 44)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = -6,0
ground.cornerPush.velOff = -3
guard.velocity = -6
guard.cornerPush.velOff = -6
air.velocity = -4.32, -3.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 78), var(36) := -71
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, HitDef 7]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 =  AnimElem = 27
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 44 < 7, 7, fvar(11) * 44)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = -4, -7
guard.velocity = -12.75
air.velocity = -4, -7
ground.cornerPush.velOff = 0
guard.cornerPush.velOff = 0
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
air.fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 49), var(36) := -69
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3150, HitDef 8]
type = HitDef
trigger1 = !var(16) && var(15) < 2
trigger1 =  AnimElem = 32
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 55 < 7, 7, fvar(11) * 55)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = -10, -5
guard.velocity = -12.75
air.velocity = -10, -2.5
ground.cornerPush.velOff = -3
guard.cornerPush.velOff = -6
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 100), var(36) := -70
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3301, Type]
type = statetypeset
trigger1 = animelemtime(33) >= 0
movetype = I

[State 3301, End]
type = changestate
trigger1 = vel y > 0 && pos y >= 0
value = 3303

;Target
[Statedef 3302]
type = S
physics = S
movetype = H
ctrl = 0
velset = 0, 0

[State 3302, Pos]
type = posset
trigger1 = 1
y = 0

[State 3302, fall]
type = hitfallset
trigger1 = 1
value = 0

[State 3302, End]
type = selfstate
trigger1 = 1
value = 5000

;Landing
[Statedef 3303]
type = S
physics = S
ctrl = 0
anim = 3303+var(55)
velset = 0, 0
movehitpersist = 1

[State 3303, Pos]
type = posset
trigger1 = 1
y = 0

[State 3303, Snd]
type = playsnd
trigger1 = !time
value = 0, 52

[State 3303, Dust]
type = explod
trigger1 = !time
anim = 8102
sprpriority = -3
postype = p1
scale = 0.5, 0.5
pausemovetime = -1
supermovetime = -1
ownpal = 1

[State 3303, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1

;========================<SONIC BREAK>=============================
[StateDef 3400]
type = S
physics = N
moveType = A
anim = 3400
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -1000
faceP2 = 1

[State 3300, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3300, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3300, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3300, Corner Push]
type = VarSet
trigger1 = Time = 3
fvar(5) = 0

[State 3300, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3300, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3300, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3300, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 0
time = 1
value = SCA

[State 3300, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8500
ID = 8500
name = "Superpause FX"
posType = P1
pos = ceil(5 * const(size.xScale)), ceil(-65 * const(size.yScale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownPal = 1

[State 3300, SuperPause]
type = SuperPause
trigger1 = Time = 3
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 3300, Voice 1]
type = PlaySnd
trigger1 = !Time
value = 730,1
channel = 0

[State 3300, Voice 2]
type = PlaySnd
trigger1 = AnimElem = 3
value = 4,2
channel = 0

[State 3300, Voice 3]
type = PlaySnd
trigger1 = AnimElem = 6
value = 4,3
channel = 0

[State 3300, Voice 4]
type = PlaySnd
trigger1 = AnimElem = 11
value = 3100,0
channel = 0

[State 3300, Jump Sound]
type = PlaySnd
trigger1 = AnimElem = 11
value = 1100,1
channel = 1

[State 3300, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 6
value = 1,2

[State 3300, Dust Helper]
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

[State 3300, PosAdd]
type = PosAdd
trigger1 = AnimElem = 7
x = 140
ignoreHitPause = 1

[State 3300, PosAdd]
type = PosAdd
trigger1 = AnimElem = 8
x = 6
ignoreHitPause = 1

[State 3300, StateTypeSet: Air, Physics: None]
type = StateTypeSet
trigger1 = AnimElem = 11
stateType = A
physics = N

[State 3300, Dust Helper]
type = Helper
trigger1 = AnimElem = 11
helperType = Normal
stateNo = 8100
ID = 8100
name = "Somersault Kick Dust"
posType = P1
ownPal = 1

[State 3300, VelSet]
type = VelSet
trigger1 = AnimElem = 11
x = 1.333
y = -9.333

[State 3300, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(11) >= 0
y = 0.58

[State 3300, Somersault Kick FX (Additive) Explod]
type = Explod
trigger1 = AnimElem = 15
anim = 1105
ID = 1105
sprPriority = 3
bindTime = -1
posType = P1
scale = 0.5 * const(size.xScale),0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3300, Somersault Kick FX (Subtractive) Explod]
type = Explod
trigger1 = AnimElem = 15
anim = 1106
ID = 1106
sprPriority = 3
bindTime = -1
posType = P1
scale = 0.5 * const(size.xScale),0.5
pauseMoveTime = -1
superMoveTime = -1
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3300, Width]
type = Width
trigger1 = AnimElem = 2
player = 60,0
ignoreHitPause = 1

[State 3300, HitDef 1]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 =  AnimElem = 3
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = -6.32,0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.32, -3.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 146), var(36) := -80
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3300, HitDef 2]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 =  AnimElem = 6
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 63 < 7, 7, fvar(11) * 63)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = -10.32,0
ground.cornerPush.velOff = 0
guard.velocity = -10.52
guard.cornerPush.velOff = 0
air.velocity = -4.32, -3.49
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10 + 0 * (var(35) := 180), var(36) := -72
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3300, Spark XY]
type = Null
trigger1 = AnimElem = 12
trigger1 = var(35) := 57 || var(36) := -39
trigger2 = AnimElem = 13
trigger2 = var(35) := 43 || var(36) := -54
trigger3 = AnimElem = 15
trigger3 = var(35) := 20 || var(36) := -107

[State 3300, HitDef 3]
type = HitDef
trigger1 = !var(16) && var(15) < 1
trigger1 =  AnimElem = 12
attr = S, HA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 91 < 7, 7, fvar(11) * 91)), 7
getPower = 0,0
givePower = 36, 36
pauseTime = 4,4
guard.pauseTime = 4,4
animType = Back
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 30
ground.slideTime = 30
guard.hitTime = 30
air.hitTime = 120
ground.velocity = -2.16, -10.81
ground.cornerPush.velOff = 0
guard.velocity = -12.64
guard.cornerPush.velOff = 0
air.velocity = -2.16, -10.81
air.cornerPush.velOff = 0
yAccel = 0.5
fall = 1
fall.recover = 0
fall.recoverTime = 120
forceStand = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8014)
guard.sparkNo = -1 + 0*(var(34) := 8001)
sparkXY = -10
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
envShake.time = 18
envShake.ampl = 6
envShake.freq = 120

[State 3300, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 3002

;========================<PUNISHMENT SABER>=============================
[StateDef 3800]
type = S
physics = N
moveType = A
anim = 3800+var(55)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = -3000
faceP2 = 1

[State 1100, Voice]
type = PlaySnd
trigger1 = !time
value = 3800,0
channel = 0

[State 3200, Super Cancel Flag]
type = VarSet
trigger1 = !Time
var(21) = ((PrevStateNo = [1000,2999]) && var(7)) || var(20)

[State 3200, Hyper Cancel Flag]
type = VarSet
trigger1 = !Time
var(22) = (PrevStateNo = [3000,4999]) && var(8)

[State 3200, Custom Combo Reset]
type = PalFX
trigger1 = !Time
trigger1 = !(var(20) := 0)
time = 1

[State 3200, Corner Push]
type = VarSet
trigger1 = 1
fvar(5) = 0

[State 3200, Unguardable]
type = VarSet
trigger1 = Time = 3 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 43

[State 3200, Super Cancel Flash]
type = PalFX
trigger1 = var(21) || var(22)
trigger1 = !(Time % 2) && Time <= 12
time = 1
add = 255,255,255
ignoreHitPause = 1

[State 3200, Super Cancel Juggle]
type = VarSet
trigger1 = !Time
trigger1 = var(21) || var(22)
var(15) = 0
ignoreHitPause = 1

[State 3200, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
time = 1
value = SCA

[State 3200, Super Pause FX]
type = Helper
trigger1 = Time = 3
helperType = Normal
stateNo = 8520
ID = 8500
name = "Superpause FX"
posType = p1
pos = ceil(35 * const(size.xscale)), ceil(-44 * const(size.yscale))
superMoveTime = 255
size.xScale = 1
size.yScale = 1
ownpal = 1

[State 3200, Super Pause]
type = SuperPause
trigger1 = Time = 3
time = 38
moveTime = 38
p2DefMul = 1
unHittable = 1
anim = -1
sound = s8500,0
darken = 0

[State 105, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1100,1

[State 0, VelSet]
type = VelSet
trigger1 = animelem = 4
x = 14

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = animelem = 6
physics = S

[State 0, Explod]
type = Explod
trigger1 = animelemtime(5)=0
trigger2 = animelemtime(5)=1 && vel x>0
trigger3 = animelemtime(5)=3 && vel x>0
anim = 3801
ID = 3801
ontop = 1
postype = P1
pos = 49, -49
scale = 0.35, 0.25
bindTime = 0
removeTime = 12
pauseMoveTime = -1
superMoveTime = -1
ignorehitpause = 1

[State 1100, Hit-Grab]
type = HitDef
trigger1 = AnimElem = 5
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
P1stateno = 3805
hitonce = 1
numhits = 0

[State 0, ChangeState]
type = ChangeState
trigger1 = Animelemtime(11)=3
value = 0
ctrl = 1

;Connected
[Statedef 3805]
type = S
physics = N
moveType = A
anim = 3805+var(55)
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 0, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 3850

[State 0, TargetBind]
type = TargetBind
trigger1 = !time
time = 1
pos = 45

[State 0, AllPalFX]
type = AllPalFX
trigger1 = !time
time = 36
add = 0,0,0
sinadd = -256,-256,-256,80

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time >= 28
flag = nobardisplay
flag2 = noBG
flag3 = noFG

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 105, Dash Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1400,0

[State 0, VelSet]
type = VelSet
trigger1 = !time
x = 16

[State 0, VelSet]
type = VelSet
trigger1 = time = 25
x = 0

[State 0, BindToTarget]
type = BindToTarget
trigger1 = time = 26
time = 1
ID = -1
pos = -75,0,Foot;"Mid","Head"

[State 0, AllPalFX]
type = PalFX
trigger1 = animelem = 9
time = 30
add = -256,-256,-256
sinadd = 256,256,256,120

[State 1030, Sonic Boom Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 19
value = 3800,1
channel = 3

[State 3200, Sonic Hurricane Projectile]
type = Helper
trigger1 = AnimElem = 19
helperType = Normal
stateNo = 3205
ID = 3205
name = "Sonic Hurricane Projectile"
posType = P1
pos = ceil(79 * const(size.xScale)), ceil(-61 * const(size.yScale))
size.xScale = 0.15*1.5
size.yScale = 0.5*1.5
ownPal = 1

[State 3200, End]
type = ChangeState
trigger1 = !animtime
value = 3806

;Fireball throw
[StateDef 3806]
type = S
physics = S
moveType = A
anim = 3806+var(55)
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 3200, Sonic Hurricane Startup Sound]
type = PlaySnd
trigger1 = AnimElem = 1
value = 3800,1
channel = 1

[State 3200, Sonic Hurricane Startup FX]
type = Explod
trigger1 = AnimElem = 1
anim = 3152
sprPriority = 3
posType = P1
scale = 0.5 * const(size.xScale),0.5
ownPal = 1
removeOnGetHit = 1
ignoreHitPause = 0

[State 3200, Sonic Hurricane Projectile]
type = Helper
trigger1 = AnimElem = 3
helperType = Normal
stateNo = 3505
ID = 3505
name = "Sonic Hurricane Projectile"
posType = P1
pos = ceil(81 * const(size.xScale)), ceil(-98 * const(size.yScale))
size.xScale = 0.15*1.5
size.yScale = 0.5*1.5
ownPal = 1

[State 0, Explod]
type = Explod
trigger1 = NumTarget && animelem = 2
anim = 3210
ID = 3210
postype = p1
pos = 81, 0
scale = 0.25, 0.5 * (1.3333333 * GameHeight / GameWidth)
ownPal = 1
ontop = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 0, BGPalFX]
type = BGPalFX
trigger1 = !time
time = 6
add = -256,-256,-256

[State 0, BGPalFX]
type = BGPalFX
trigger1 = time = 6
time = 145
add = 256,256,256

[State 3200, End]
type = ChangeState
trigger1 = !animtime
value = 3807

;Finish
[StateDef 3807]
type = S
anim = 13807-var(55)
physics = N
moveType = I
velSet = 0,0

[State 0, BGPalFX]
type = BGPalFX
trigger1 = time = 6
time = 15
add = 256,256,256
sinadd = -256, -256, -256, 60

[State 3807, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;Target
[StateDef 3850]
type = A
moveType = H
physics = S
velSet = 0,0
sprPriority = 0

[State 0, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3850+var(55)

[State 0, PosSet]
type = PosSet
trigger1 = time >= 25
x = 0
y = 0

[State 0, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 0,0
ignoreHitPause = 1

[State 0, PosFreeze]
type = PosFreeze
trigger1 = time = 30
value = 1

[State 0, NotHitBy]
type = NotHitBy
trigger1 = !time
value = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
;value2 = S,NA
time = 35

[State 0, HitOverride]
type = HitOverride
trigger1 = time >= 35
attr = S,HP
stateno = 5000
time = 1