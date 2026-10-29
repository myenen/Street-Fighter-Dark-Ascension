;Triggerall = var(28) = 1

;------------------------------------------------------------------------------------------
[Statedef 22000]
type = S
movetype = I
physics = N
anim = 22000
velset = 0,0
poweradd = 53
ctrl = 0

[State 22000, Attack]
type = playsnd
trigger1 = time = 1
value = 5,2
channel = 0

[State 22000, Attack]
type = playsnd
trigger1 = time = 117
value = 5,3
channel = 0

[State 22000, Attack]
type = playsnd
trigger1 = time = 224
value = 5,4
channel = 0

[State 22000, Cancel]
type = ChangeState
trigger1 = time >= 4
trigger1 = command = "hold_x"
trigger1 = command = "a"
trigger2 = time >= 4
trigger2 = command = "hold_x"
trigger2 = command = "b"
trigger3 = time >= 4
trigger3 = command = "hold_x"
trigger3 = command = "c"
trigger4 = time = 470
value = 0
ctrl = 0

[State 22000, Attack]
type = ChangeState
trigger1 = time >= 4
trigger1 = command != "hold_x"
value = 22010
ctrl = 0
;---------------------------
[Statedef 22010]
type = S
movetype = A
physics = S
anim = 22010
juggle = 10
poweradd = 53
ctrl = 0

[State 22010, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype = hard
damage = 60,5
guardflag = M
pausetime = 12,12
sparkno = S1041
guard.sparkno = S1042
sparkxy = 0,-52
hitsound = S280,0
guardsound = S200,3
ground.type = low
ground.slidetime = 24
ground.hittime = 22
ground.velocity = -11
air.velocity = -9,-2
ground.cornerpush.veloff = -13
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -13
airguard.velocity = -3,-1.5
guard.velocity = -11
givepower = 30,10
getpower  = 30,30
air.juggle = 10

[State 22010, 3]
type = HitDef
trigger1 = MoveContact
trigger1 = p2statetype != A
trigger1 = AnimElem = 6
attr = S, SA
animtype = hard
hitflag = M
damage = 60,5
guardflag = MA
pausetime = 12,12
sparkno = S1041
guard.sparkno = S1042
sparkxy = -10,-10
hitsound = S280,0
guardsound = S200,3
ground.type = low
ground.slidetime = 24
ground.hittime = 22
ground.velocity = -12
air.velocity = -11,-4
airguard.velocity = -3,-1.5
guard.velocity = -11
ground.cornerpush.veloff = -11
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -11
air.fall = 1
fall.recover = 0
givepower = 30,10
getpower  = 30,30
air.juggle = 10

[State 22010, 3]
type = HitDef
trigger1 = !MoveContact
trigger1 = p2statetype != A
trigger1 = AnimElem = 6
attr = S, SA
animtype = hard
hitflag = M
damage = 60,5
guardflag = LA
pausetime = 12,12
sparkno = S1041
guard.sparkno = S1042
sparkxy = -10,-10
hitsound = S280,0
guardsound = S200,3
ground.type = low
ground.slidetime = 24
ground.hittime = 22
ground.velocity = -12
air.velocity = -11,-4
airguard.velocity = -3,-1.5
guard.velocity = -11
ground.cornerpush.veloff = -11
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -11
air.fall = 1
fall.recover = 0
givepower = 30,10
getpower  = 30,30
air.juggle = 10

[State 22010, 3]
type = HitDef
trigger1 = p2statetype = A
trigger1 = AnimElem = 6
attr = S, SA
animtype = hard
hitflag = MAF
damage = 60,5
guardflag = M
pausetime = 12,12
sparkno = S1041
guard.sparkno = S1042
sparkxy = -10,-10
hitsound = S280,0
guardsound = S200,3
ground.type = low
ground.slidetime = 24
ground.hittime = 22
ground.velocity = -12
air.velocity = -6,2
airguard.velocity = -3,-1.5
guard.velocity = -11
ground.cornerpush.veloff = -11
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -11
air.fall = 1
fall.recover = 0
givepower = 30,10
getpower  = 30,30
air.juggle = 10
p2stateno = 22300

[State 22010, 3]
type = HitDef
trigger1 = p2statetype = L
trigger1 = AnimElem = 6
attr = S, SA
animtype = hard
hitflag = MAFD
damage = 60,5
guardflag = M
pausetime = 12,12
sparkno = S1041
guard.sparkno = S1042
sparkxy = -10,-10
hitsound = S280,0
guardsound = S200,3
ground.type = low
ground.slidetime = 24
ground.hittime = 22
ground.velocity = -12
air.velocity = -6,2
airguard.velocity = -3,-1.5
guard.velocity = -11
down.velocity = -11,0
ground.cornerpush.veloff = -11
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -11
down.cornerpush.veloff = -4
air.fall = 1
fall.recover = 0
givepower = 30,10
getpower  = 30,30
air.juggle = 10

[State 22010, explod]
type = Explod
trigger1 = animelem = 3
id = 1012
anim = 1012
pos = 0,0
sprpriority = 2
ownpal = 1
removeongethit = 1
removetime = 3

[State 22010, explod]
type = Explod
trigger1 = animelem = 5
id = 1014
anim = 1014
pos = 0,0
sprpriority = 2
ownpal = 1
removeongethit = 1
removetime = 7

[State 22010, Attack]
type = playsnd
trigger1 = animelem = 4, = 1
value = 5,5

[State 22010, Attack]
type = playsnd
trigger1 = animelem = 2, = 0
value = 5,6
channel = 0

[State 22010, Attack]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-----------------------------------------------------
[Statedef 22100]
type = S
movetype = I
physics = N
anim = 22000
velset = 0,0
poweradd = 53
ctrl = 0

[State 22100, Attack]
type = playsnd
trigger1 = time = 1
value = 5,2
channel = 0

[State 22100, Attack]
type = playsnd
trigger1 = time = 117
value = 5,3
channel = 0

[State 22100, Attack]
type = playsnd
trigger1 = time = 224
value = 5,4
channel = 0

[State 22100, Cancel]
type = ChangeState
trigger1 = time >= 4
trigger1 = command = "hold_y"
trigger1 = command = "a"
trigger2 = time >= 4
trigger2 = command = "hold_y"
trigger2 = command = "b"
trigger3 = time >= 4
trigger3 = command = "hold_y"
trigger3 = command = "c"
trigger4 = time = 470
value = 0
ctrl = 0

[State 22100, Attack]
type = ChangeState
trigger1 = time >= 4
trigger1 = command != "hold_y"
value = 22110
ctrl = 0
;-----------------------------
[Statedef 22110]
type = S
movetype = A
physics = S
anim = 22110
juggle = 10
poweradd = 53
ctrl = 0

[State 22110, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype = hard
damage = 60,5
guardflag = M
pausetime = 12,12
sparkno = S1041
guard.sparkno = S1042
sparkxy = 0,-82
hitsound = S280,0
guardsound = S200,3
ground.type = high
ground.slidetime = 24
ground.hittime = 22
ground.velocity = -11
air.velocity = -9,-2
airguard.velocity = -3,-1.5
ground.cornerpush.veloff = -13
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -13
guard.velocity = -11
givepower = 30,10
getpower  = 30,30
air.juggle = 10

[State 22110, 3]
type = HitDef
trigger1 = p2statetype != A
trigger1 = AnimElem = 6
attr = S, SA
animtype = hard
hitflag = M
damage = 60,5
guardflag = M
pausetime = 12,12
sparkno = S1041
guard.sparkno = S1042
sparkxy = -15,-88
hitsound = S280,0
guardsound = S200,3
ground.type = high
ground.slidetime = 24
ground.hittime = 22
ground.velocity = -12
air.velocity = -11,-4
airguard.velocity = -3,-1.5
guard.velocity = -11
ground.cornerpush.veloff = -12
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -12
air.fall = 1
fall.recover = 0
givepower = 30,10
getpower  = 30,30
air.juggle = 10

[State 22110, 3]
type = HitDef
trigger1 = p2statetype = A
trigger1 = AnimElem = 6
attr = S, SA
animtype = hard
hitflag = MAF
damage = 60,5
guardflag = M
pausetime = 12,12
sparkno = S1041
guard.sparkno = S1042
sparkxy = -15,-88
hitsound = S280,0
guardsound = S200,3
ground.type = high
ground.slidetime = 24
ground.hittime = 22
ground.velocity = -12
air.velocity = -6,2
airguard.velocity = -3,-1.5
guard.velocity = -11
air.fall = 1
fall.recover = 0
givepower = 30,10
getpower  = 30,30
air.juggle = 10
p2stateno = 22300

[State 22110, explod]
type = Explod
trigger1 = animelem = 3
id = 1002
anim = 1002
pos = 0,0
sprpriority = 2
ownpal = 1
removeongethit = 1
removetime = 3

[State 22110, explod]
type = Explod
trigger1 = animelem = 5
id = 1004
anim = 1004
pos = 0,0
sprpriority = 2
ownpal = 1
removeongethit = 1
removetime = 7

[State 22110, Attack]
type = playsnd
trigger1 = animelem = 4, = 1
value = 5,5

[State 22110, Attack]
type = playsnd
trigger1 = animelem = 2, = 0
value = 5,6
channel = 0

[State 22110, Attack]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-----------------------------------------------------
[Statedef 22200]
type = S
movetype = I
physics = N
anim = 22000
velset = 0,0
poweradd = 53
ctrl = 0

[State 22200, Attack]
type = playsnd
trigger1 = time = 1
value = 5,2
channel = 0

[State 22200, Attack]
type = playsnd
trigger1 = time = 117
value = 5,3
channel = 0

[State 22200, Attack]
type = playsnd
trigger1 = time = 224
value = 5,4
channel = 0

[State 22200, Cancel]
type = ChangeState
trigger1 = time >= 4
trigger1 = command = "hold_z"
trigger1 = command = "a"
trigger2 = time >= 4
trigger2 = command = "hold_z"
trigger2 = command = "b"
trigger3 = time >= 4
trigger3 = command = "hold_z"
trigger3 = command = "c"
trigger4 = time = 470
value = 0
ctrl = 0

[State 22200, Attack]
type = ChangeState
trigger1 = time >= 4
trigger1 = command != "hold_z"
value = 22210
ctrl = 0
;-----------------------------
[Statedef 22210]
type = S
movetype = A
physics = S
anim = 22210
juggle = 10
poweradd = 53
ctrl = 0

[State 22210, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = S, SA
animtype = hard
damage = 60,5
guardflag = M
pausetime = 12,12
sparkno = S1041
guard.sparkno = S1042
sparkxy = 0,-102
hitsound = S280,0
guardsound = S200,3
ground.type = high
ground.slidetime = 24
ground.hittime = 22
ground.velocity = -11
air.velocity = -9,-2
airguard.velocity = -3,-1.5
guard.velocity = -11
ground.cornerpush.veloff = -13
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -13
givepower = 30,10
getpower  = 30,30
air.juggle = 10

[State 22210, 3]
type = HitDef
trigger1 = p2statetype != A
trigger1 = AnimElem = 6
attr = S, SA
animtype = hard
hitflag = MAF
damage = 60,5
guardflag = M
pausetime = 12,12
sparkno = S1041
guard.sparkno = S1042
sparkxy = -10,-148
hitsound = S280,0
guardsound = S200,3
ground.type = high
ground.slidetime = 24
ground.hittime = 22
ground.velocity = -12
air.velocity = -11,-4
airguard.velocity = -3,-1.5
guard.velocity = -11
ground.cornerpush.veloff = -11
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -11
air.fall = 1
fall.recover = 0
givepower = 30,10
getpower  = 30,30
air.juggle = 10

[State 22210, 3]
type = HitDef
trigger1 = p2statetype = A
trigger1 = AnimElem = 6
attr = S, SA
animtype = hard
hitflag = MAFD
damage = 60,5
guardflag = M
pausetime = 12,12
sparkno = S1041
guard.sparkno = S1042
sparkxy = -10,-148
hitsound = S280,0
guardsound = S200,3
ground.type = high
ground.slidetime = 24
ground.hittime = 22
ground.velocity = -12
air.velocity = -6,-2
airguard.velocity = -3,-1.5
guard.velocity = -11
air.fall = 1
fall.recover = 0
givepower = 30,10
getpower  = 30,30
air.juggle = 10
;p2stateno = 22300

[State 22210, explod]
type = Explod
trigger1 = animelem = 3
id = 1022
anim = 1022
pos = 0,0
sprpriority = 2
ownpal = 1
removeongethit = 1
removetime = 3

[State 22210, explod]
type = Explod
trigger1 = animelem = 5
id = 1024
anim = 1024
pos = 0,0
sprpriority = 2
ownpal = 1
removeongethit = 1
removetime = 7

[State 22210, Attack]
type = playsnd
trigger1 = animelem = 4, = 1
value = 5,5

[State 22210, Attack]
type = playsnd
trigger1 = animelem = 2, = 0
value = 5,6
channel = 0

[State 22210, Attack]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-----------------------------------------------------
[Statedef 22300]
type    = A
movetype= H
physics = N
velset = 0,0

[State 5020, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(airtype) = 1),5000,5010) + GetHitVar(animtype)

[State 5020, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5020, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5020, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5020, 5]
type = ChangeState
trigger1 = HitShakeOver
value = 22310

[State 5020, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 5020, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5020, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
trigger4 = anim = [5051,5059]
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

[Statedef 22310]
type    = A
movetype= H
physics = N
ctrl = 0

[State 5030, 1]
type = VelAdd;Gravity
trigger1 = 1
y = GetHitVar(yaccel)

[State 5030, 2]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5030, 4]
type = ChangeState
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= 0  ;.
value = 22330 ;HITA_FALL

[State 5030, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 22320 ;HITA_UP (transition)

[Statedef 22320]
type    = A
movetype= H
physics = N

[State 5035, 1]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5035)
trigger1 = Anim != [5051,5059] ;Not if in hit up anim
trigger1 = Anim != 5090 ;Not if hit off ground anim
value = 5035

[State 5035, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5035, 4]
type = ChangeState
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Anim is over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >= 0  ;.
trigger4 = Time = 0     ;No transition anim
trigger4 = Anim != 5035 ;.
value = 22330 ;HITA_FALL

[Statedef 22330]
type    = A
movetype= H
physics = N

[State 5050, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050

[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 5050, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5050, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 22340 ;HIT_BOUNCE

[Statedef 22340]
type    = S
movetype= H
physics = N

[State 5110, EnvShake]
type = velset
trigger1 = time = 0
trigger1 =  vel x > 0
x = 4
y = 0

[State 5110, EnvShake]
type = velset
trigger1 = time = 0
trigger1 =  vel x < 0
x = -4
y = 0

[State 5110, EnvShake]
type = nothitby
trigger1 = Time >= 0
value = SCA
time = 1

[State 5100, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5100, Var]
type = VarSet
trigger1 = Time = 0
;trigger1 = GetHitVar(fall.yvel) = 0
sysvar(1) = floor(vel y)

[State 5100, 2]
type = ChangeAnim
trigger1 = time = 0
value = 5080

[State 5100, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5100, 6] ;Reduce speed
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 5100, 8]
type = GameMakeAnim
trigger1 = Time = 1
value = 61
pos = 0, 0
under = sysvar(1) <= 10

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 5100, 10]
type = PlaySnd
trigger1 = Time = 1
;value = F7, 0 ;Hit ground
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5100, 12]
type = ChangeState
trigger1 = Time = 20
value = 22350

[State 5100, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

[Statedef 22350]
type    = L
movetype= H
physics = N
ctrl = 0

[State 5110, EnvShake]
type = screenbound
trigger1 = Time >= 0
value = 1
movecamera = 1,0

[State 5110, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

9[State 5110, 4]
type = HitFallDamage
trigger1 = Time = 0

[State 5110, 5]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5100, 2]
type = ChangeAnim
trigger1 = time = 0
value = 5110

[State 5110, Var] ;Get fall velocity
type = VarSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[State 5110, 8]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5110, 11] ;If just died
type = ChangeState
triggerall = !alive
trigger1 = AnimTime = 0
trigger2 = SysVar(0) ;SysVar(0) = 1 avoids hit ground frame
trigger3 = Anim = [5110,5119]
value = 5150

[State 5110, 11] ;If just died
type = selfState
triggerall = alive
trigger1 = time = 50
value = 5120

[State 5110, 12]
type = VarSet
trigger1 = SysVar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 5110, 13] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5110, 14]
type = ForceFeedback
trigger1 = alive
trigger1 = Time = 0
time = 8
ampl = 240
waveform = sine

[State 5110, 15]
type = ForceFeedback
trigger1 = !alive
trigger1 = Time = 0
ampl = 200, 7, -.467
time = 30
waveform = sine

;------------------------------------------------------------------------------------------
[Statedef 25000]
type = S
movetype = A
physics = S
anim = 25000
velset = 0,0
ctrl = 0

[State 25000, Var2]
type = Varset
trigger1 = time = 0
var(40) = 0

[State 25000, 2KStyleSDM]
type = Bgpalfx
trigger1 = time > 0
invertall = 1
time = 1
mul = 120,120,120
ignorehitpause = 1

[State 25000, env]
type = EnvColor
trigger1 = animelem = 1
value = 0,0,0
time = 29
under = 1

[State 25000, SparkSound]
type = PlaySnd
trigger1 = animelem = 1, = 2
value = 4,59
channel = 1

[State 25000, Super Pause]
type = SuperPause
trigger1 = animelem = 1, = 1
movetime = 28
poweradd = -1000
time = 28
anim = -1
p2defmul = 1
darken = 1

[State 25000,Explod1]
type = Explod
trigger1 = animelem = 1, = 3
anim = 22430
id   = 22430
pos = 40,-110
postype = p1
supermove = 1
supermovetime = 9999
sprpriority = 1
bindtime = 1
ontop = 1
ownpal = 1

[State 25000,Explod2]
type = Explod
trigger1 = animelem = 1, = 3
anim = 22431
id   = 22431
pos = 40,-110
postype = p1
sprpriority = -2
supermove = 1
supermovetime = 9999
bindtime = 1
ontop = 0
ownpal = 1

[State 25000, NOTHITBY]
type = Nothitby
trigger1 = 1
value = SCA

[State 25000, Hit1]
type = HitDef
trigger1 = AnimElem = 8, = 1
attr = S, HA
animtype = hard
damage = 20,0
guardflag = M
hitflag = MAF
pausetime = 12,30
sparkno = S22412
sparkxy = 0,ceil(p2bodydist y - 64)
hitsound = S4,39
guardsound = S20,6
ground.type = High
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -2.3,-8
air.velocity = -2.3,-8
airguard.velocity = 0
guard.velocity = 0
getpower = 0,0
givepower = 21,21
guard.pausetime = 3,3
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
yaccel = .5
kill = 0
fall = 1
fall.recover = 0
p2getp1stateno = 1
p2stateno = 25030
envshake.time = 36
envshake.freq = 180
envshake.ampl = -6

[State 25000, Blo0d Spark]
type = Explod
trigger1 = AnimElem = 8, = 1
ignorehitpause = 1
id = 22413
anim = 22413
pos = 0,-64
postype = p2
facing = -1
sprpriority = 1
ownpal = 1

[State 25000, Burn]
type = Varset
trigger1 = movehit
persistent = 0
ignorehitpause = 1
var(41) = 0

[State 25000, 5]
type = ChangeState
trigger1 = movehit
trigger1 = AnimTime = 0
value = 25010
ctrl = 0

[State 25000, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-----------------------------------------------
[Statedef 25010]
type = S
movetype = A
physics = S
anim = 25010
velset = 0,0
ctrl = 0

[State 25010, 2KStyleSDM]
type = Bgpalfx
trigger1 = time > 0
invertall = 1
time = 1
mul = 120,120,120
ignorehitpause = 1

[State 25010, posadd]
type = posadd
trigger1 = Animelem = 9
x = 8

[State 25010, Hit1]
type = HitDef
trigger1 = AnimElem = 5
trigger2 = Animelem = 8
attr = S, HA
animtype = hard
damage = 15,0
guardflag = M
hitflag = MAF
pausetime = 1,1
sparkno = S22412
sparkxy = 0,ceil(p2bodydist y - 74)
hitsound = S4,ifelse(random <=500,60,39)
guardsound = S20,6
ground.type = High
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -2.2,-4.5
air.velocity = -2.2,-4.5
airguard.velocity = 0
guard.velocity = 0
getpower = 0,0
givepower = 21,21
guard.pausetime = 3,3
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
yaccel = .5
kill = 0
fall = 1
fall.recover = 0
p2getp1stateno = 1
p2stateno = 25040

[State 25010, Hit1]
type = HitDef
trigger1 = Animelem = 7
trigger2 = AnimElem = 10
attr = S, HA
animtype = hard
damage = 15,0
guardflag = M
hitflag = MAF
pausetime = 1,1
sparkno = S22412
sparkxy = 0,ceil(p2bodydist y - 37)
hitsound = S4,ifelse(random <=700,60,39)
guardsound = S20,6
ground.type = High
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -2,-4.6
air.velocity = -2.2,-4.6
airguard.velocity = 0
guard.velocity = 0
getpower = 0,0
givepower = 21,21
guard.pausetime = 3,3
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
yaccel = .5
kill = 0
fall = 1
fall.recover = 0
p2getp1stateno = 1
p2stateno = 25040

[State 25010, Hit1]
type = HitDef
trigger1 = Animelem = 11
attr = S, HA
animtype = Hitup
damage = 20,0
guardflag = M
hitflag = MAF
pausetime = 1,36
sparkno = S22411
sparkxy = 0, ceil(p2bodydist y - 74)
hitsound = S4,39
guardsound = S20,6
ground.type = Low
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -0,-12
air.velocity = -0,-12
airguard.velocity = 0
guard.velocity = 0
getpower = 0,0
givepower = 21,21
guard.pausetime = 3,3
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
yaccel = .5
kill = 0
fall = 1
fall.recover = 0
p2getp1stateno = 1
p2stateno = 25040
palfx.time = 56
palfx.add = -70,-110,-10
palfx.sinadd = 30,10,0,10
palfx.color = 0
palfx.invertall = 1
envshake.time = 30
envshake.freq = 180
envshake.ampl = -6

[State 25010, Blo0d Spark]
type = Explod
trigger1 = AnimElem = 5
trigger2 = Animelem = 8
trigger3 = Animelem = 11
ignorehitpause = 1
id = 22413
anim = 22413
pos = 0,-74
postype = p2
facing = -1
sprpriority = 1
ownpal = 1

[State 25010, Blo0d Spark]
type = Explod
trigger1 = Animelem = 7
trigger2 = AnimElem = 10
ignorehitpause = 1
id = 22413
anim = 22413
pos = 0,-37
postype = p2
facing = -1
sprpriority = 1
ownpal = 1

[State 25010, Burn]
type = Varset
trigger1 = animelem = 11
persistent = 0
ignorehitpause = 1
var(41) = 1

[State 25010, boom]
type = Screenbound
trigger1 = 1
value = 1

[State 25010, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 25020
ctrl = 0
;-----------------------------------------------
[Statedef 25020]
type = S
movetype = A
physics = S
anim = 25020
velset = 0,0
ctrl = 0

[State 961, PalFX 1]
type = PalFX
trigger1 = Animelem = 4
time = 3
add = -50,-50,-50
[State 961, PalFX 1]
type = PalFX
trigger1 = Animelem = 5
time = 6
add = -100,-100,-100
[State 961, PalFX 1]
type = PalFX
trigger1 = Animelem = 6
time = 6
add = -150,-150,-150
[State 961, PalFX 1]
type = PalFX
trigger1 = Animelem = 7
trigger2 = Animelem = 10
time = 6
add = -200,-200,-200
[State 961, PalFX 1]
type = PalFX
trigger1 = Animelem = 8
time = 7
add = -200,-200,-200
[State 961, PalFX 1]
type = PalFX
trigger1 = Animelem = 9
time = 4
add = -200,-200,-200
[State 961, PalFX 1]
type = PalFX
trigger1 = Animelem = 11
time = 3
add = -135,-135,-135
[State 961, PalFX 1]
type = PalFX
trigger1 = Animelem = 12
time = 3
add = -70,-70,-70

[State 25000, eye]
type = Explod
trigger1 = AnimElem = 4
ignorehitpause = 1
id = 25025
anim = 25025
pos = -17,-66
postype = p1
sprpriority = 3
ownpal = 1
supermove = 1

[State 25020, 2KStyleSDM]
type = Bgpalfx
trigger1 = time > 0
invertall = 1
time = 2
mul = 120,120,120
ignorehitpause = 1
supermovetime = 1
pausemovetime = 1

[State 25020, boom]
type = PlaySnd
trigger1 = AnimElem = 16, = 1
value = 4,12
volume = 50

[State 2000, 4]
type = Projectile
trigger1 = AnimElem = 16, = 1
attr = S, HP
projID = 2005
projanim = 25060
projshadow = 68,68,68
projremove = 0
projremovetime = 30
projpriority = 99999
offset = 0,0
ownpal = 1
damage = 110,10
animtype = Hard
hitflag = MAFP
guardflag = M
pausetime = 0,12
sparkno = S22411
sparkxy = ceil(p2bodydist x - 15), ceil(p2bodydist y - 44)
hitsound   = S4,58
guardsound = S20,6
ground.type = Low
ground.slidetime = 18
ground.hittime  = 18
air.hittime = 18
ground.velocity = -.8,-13
air.animtype = Diagup
air.velocity = -.8,-12
palfx.time = 70
palfx.add = -70,-110,-10
palfx.sinadd = 30,10,0,10
palfx.color = 0
palfx.invertall = 1
fall = 1
fall.recovertime = 65
fall.yvelocity = -3.5
fall.xvelocity = -3
getpower = 0,0
givepower = 21,21
air.juggle = 0
yaccel = .5
fall.envshake.time = 12
fall.envshake.freq = 180
fall.envshake.ampl = -6
p2getp1stateno = 1
p2stateno = 25050

[State 25020, EnvShake]
type = EnvShake
trigger1 = AnimElem = 16, = 1
time = 40
ampl = -9
freq = 180

[State 25020, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-----------------------------------------------
[Statedef 25030]
type    = A
movetype= H
physics = N
velset = 0,0

[State 25030, Flash]
type = PalFX
trigger1 = time = 0
ignorehitpause = 1
time = 1
add = 0,0,0
mul = 256,256,256

[State 25030, 2] ;Anim for HIT_BACK
type = ChangeAnim2
trigger1 = Time = 0
value = 25030

[State 25030, 4] ;Freeze anim
type = ChangeAnim2
trigger1 = Time > 0
value = anim

[State 25030, 5]
type = ChangeState
trigger1 = HitShakeOver
value = 25032

[State 25030, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 25030, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 25030, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
trigger4 = anim = [5051,5059]
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

[Statedef 25032]
type    = A
movetype= H
physics = N
velset = 0,0

[State 25032, 2] ;Anim for HIT_BACK
type = ChangeAnim2
trigger1 = Time = 0
value = 25032

[State 25032, 5]
type = SelfState
trigger1 = time >= 30
value = 5020
;-----------------------------------------------
[Statedef 25040]
type    = A
movetype= H
physics = N
velset = 0,0

[State 25040, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
value = 5012

[State 25040, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 25040, 5]
type = Changestate
trigger1 = HitShakeOver
value = 25042

[State 25040, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 25040, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 25040, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
trigger4 = anim = [5051,5059]
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

[Statedef 25042]
type    = A
movetype= H
physics = N
ctrl = 0

[State 25042, 1]
type = VelAdd;Gravity
trigger1 = 1
y = GetHitVar(yaccel)

[State 25042, 2]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 25042, 3]
type = Selfstate
triggerall = !HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= 10  ;.
value = 5040 ;HITA_RECOV

[State 25042, 4]
type = SelfState
triggerall = HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= 10  ;.
value = 5050 ;HITA_FALL

[State 25042, 5]
type = Selfstate
trigger1 = AnimTime = 0
value = 5035 ;HITA_UP (transition)
;-----------------------------------------------
[Statedef 25050]
type    = A
movetype= H
physics = N
velset = 0,0

[State 25050, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
value = 5012

[State 25050, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 25050, 5]
type = Changestate
trigger1 = HitShakeOver
value = 25052

[State 25050, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 25050, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 25050, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
trigger4 = anim = [5051,5059]
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

[Statedef 25052]
type    = A
movetype= H
physics = N
ctrl = 0

[State 25052, 1]
type = VelAdd;Gravity
trigger1 = 1
y = GetHitVar(yaccel)

[State 25052, 2]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 25052, 5]
type = Changestate
trigger1 = AnimTime = 0
value = 25053 ;HITA_UP (transition)

[Statedef 25053]
type    = A
movetype= H
physics = N
ctrl = 0

[State 25050, 2] ;Anim for HIT_BACK
type = ChangeAnim2
trigger1 = Time = 0
value = 25053

[State 25053, 1]
type = VelAdd;Gravity
trigger1 = 1
y = GetHitVar(yaccel)

[State 25053, 5]
type = Changestate
trigger1 = vel y > 0 && pos y >= 0
value = 25054 ;HITA_UP (transition)
ctrl = 0

[Statedef 25054]
type    = A
movetype= H
physics = N
velset = 0,0

[State 25054, Envshake]
type = envshake
Trigger1 = time = 0
time = 10
ampl = -3
freq = 110

[State 25054, posadd]
type = posadd
trigger1 = Time = 0
x = -20

[State 25054,1]
type = nothitby
trigger1 = Time >= 0
value = SCA
time = 1

[State 25054, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 25054, Var]
type = VarSet
trigger1 = Time = 0
;trigger1 = GetHitVar(fall.yvel) = 0
sysvar(1) = floor(vel y)

[State 25054, 2]
type = ChangeAnim
triggerall = time = 0
trigger1 = SelfAnimExist(5102)
value = 5102

[State 25054, 2]
type = ChangeAnim
triggerall = time = 0
trigger1 = SelfAnimExist(5101)
trigger1 = !SelfAnimExist(5102)
value = 5101

[State 25054, 2]
type = ChangeAnim
triggerall = time = 0
trigger1 = !SelfAnimExist(5101)
trigger1 = !SelfAnimExist(5102)
value = 5100

[State 25054, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 25054, 6] ;Reduce speed
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 25054, 8]
type = GameMakeAnim
trigger1 = Time = 1
value = 61
pos = 0, 0
under = sysvar(1) <= 10

[State 25054, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 25054, 10]
type = PlaySnd
trigger1 = Time = 1
;value = F7, 0 ;Hit ground
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 25054, 12]
type = selfState
trigger1 = Time = 4
value = 5101

[State 25054, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

;------------------------------------------------------------------------------------------
;î™ítèó(ñ\ëñ)
[Statedef 22600]
type    = S
movetype= I
physics = S
poweradd= 0
ctrl = 0
anim = 22600
velset = 0,0

[State 22600, 4]
type = PlaySnd
trigger1 = time = 1
value = s4,17
volume = 30

[State 22600, 5]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 22600, 6]
type = Velset
trigger1 = time != 1
x = 0

[State 22600, 7]
type = PosFreeze
trigger1 = time >= 0

[State 22600, 9]
type = SuperPause
trigger1 = time = 0
poweradd = -2000
movetime = 14
darken = 0
time = 28
anim = -1

[State 22600, 10]
type = Explod
trigger1 = Time = 0
anim = 6400
id   = 6400
pos = -8,-89
postype = p1
supermove = 1
bindtime = 30
ontop = 1
ownpal = 1

[State 22600, 11]
type = Explod
trigger1 = Time = 0
anim = 6475
id   = 6475
pos = -8,-89
postype = p1
supermove = 1
bindtime = 30
ontop = 0
ownpal = 1

[State 22600, 13]
type = ChangeState
trigger1 = animtime = 0
value = 22601

;------------------------------------
;Play Dash Level3
[Statedef 22601]
type     = S
movetype = A
physics  = S
juggle = 4
anim = 22401
ctrl = 0
velset = 0,0

[State 22601, 5]
type = AfterImage
trigger1 = Time = 0
time = 25
trans = add1
timegap = 1
framegap = 2
length = 10

[State 22601, 6]
type = AfterImageTime
trigger1 = animtime = 0
Time = 0

[State 22601, 7]
type = NotHitBy
trigger1 = animelem = 4, <2
value = SCA, NP, SP, HP
time = 1

[State 22601, 8]
type = Veladd
trigger1 = animelem = 1
x = 4

[State 22601, 9]
type = Velset
trigger1 = animelem = 2
x = 8

[State 22601, 10]
type = Veladd
trigger1 = animelem = 2, >= 0
x = 3

[State 22601, 11]
type = HitDef
trigger1 = AnimElem = 2
animtype = Hard
attr = S, HA
damage = 0,0
hitflag = MAF
pausetime = 2, 5
guard.pausetime = 9,11
p2facing = 1          
p1stateno = 22605
p2stateno = 22615
p2getp1state = 1
sparkxy = 1,-61
sparkno = -1
hitsound = S4,39
guardsound = S20,6
guardflag = M
ground.Velocity = 0,0
air.Velocity = 0,0
fall.xVelocity = 5
fall = 1

[State 22601, 12]
type = ChangeState
trigger1 = animtime = 0
value = 22402

;======================================================
[Statedef 22605]
type     = S
movetype = I
physics  = N
poweradd = 0
anim = 22605
ctrl = 0
velset = 0,0,0

[State 22605, 2]
type = targetstate
trigger1 = time = 0	
value = 22615

[State 22605, 2]
type = Targetfacing
trigger1 = AnimElem = 1
value = -1

[State 22605, 3]
type = TargetBind
trigger1 = AnimElem = 1
pos = 42, 0
time = 22

[State 22605, 3]
type = TargetBind
trigger1 = AnimElem = 4
pos = 18, 0
time = 22

[State 22605, 3]
type = TargetBind
trigger1 = AnimElem = 5, =2
pos = 0, 0
time = 22

[State 22605, 6]
type = explod
trigger1 = time = 0
anim = 308
id   = 308
postype = p2
pos = 5, -62
sprpriority = 2
ownpal = 1
pausemovetime = 9999 

[State 22605, 7]
type = explod
trigger1 = AnimElem = 4
anim = 1043
postype = p2
pos = 5, -75
sprpriority = 2
ownpal = 1
pausemovetime = 9999 

[State 22605, 8]
type = explod
trigger1 = AnimElem = 4
anim = 1047
postype = p2
pos = 10, -75
sprpriority = 2
pausemovetime = 9999  
ownpal = 1

[State 22605, 9]
type = PlaySnd
trigger1 = AnimElem = 9
trigger2 = AnimElem = 16
trigger3 = AnimElem = 20
trigger4 = AnimElem = 23
value = s4,60
volume = -20

[State 22605, 10]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 9
trigger3 = AnimElem = 13
trigger4 = AnimElem = 16
trigger5 = AnimElem = 20
trigger6 = AnimElem = 23
value = S4,39
volume = 10

[State 22605, 11]
type = explod
trigger1 = AnimElem = 8
trigger2 = AnimElem = 15
trigger3 = AnimElem = 23
anim = 1043
id   = 1043
postype = p1
pos = 25, -20
sprpriority = 2
pausemovetime = 9999   
ownpal = 1

[State 22605, 12]
type = explod
trigger1 = AnimElem = 8
trigger2 = AnimElem = 15
trigger3 = animelem = 23
anim = 1047
id   = 1047
postype = p1
pos = 25, -20
sprpriority = 2
pausemovetime = 9999  
ownpal = 1

[State 22605, 13]
type = explod
trigger1 = AnimElem = 12
trigger2 = AnimElem = 19
trigger3 = AnimElem = 23
anim = 1047
id   = 1047
postype = p1
pos = -35, -20
sprpriority = 2
pausemovetime = 9999  
ownpal = 1

[State 22605, 14]
type = explod
trigger1 = AnimElem = 12
trigger2 = AnimElem = 19
trigger3 = AnimElem = 23
anim = 1043
id   = 1043
postype = p1
pos = -35, -20
sprpriority = 2
pausemovetime = 9999  
ownpal = 1

[State 22605, 15]
type = Explod
triggerall = random > 450
trigger1 = AnimElem = 12
trigger2 = AnimElem = 19
trigger3 = AnimElem = 23
anim = 1049
ID = 1049
sprpriority = 5
postype = p2
pos = -7,-92
random = 50,50
supermovetime = 9999
pausemovetime = 9999
bindtime = 1
ignorehitpause = 1
ownpal = 1

[State 22605, 16]
type = targetlifeadd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 9
trigger3 = AnimElem = 13
trigger4 = AnimElem = 16
trigger5 = AnimElem = 20
trigger6 = AnimElem = 23
value = -44
kill = 0
absolute = 1

[State 22605, 17]
type = targetpoweradd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 9
trigger3 = AnimElem = 13
trigger4 = AnimElem = 16
trigger5 = AnimElem = 20
trigger6 = AnimElem = 23
value = 10

[State 22605, 18]
type = PosSet
trigger1 = time = 0
y = 0

[State 22605, 19]
type = AfterImageTime
trigger1 = animtime = 0
Time = 0

[State 22605, 20]
type = ChangeState
trigger1 = animtime = 0
value = 22610
ctrl = 0

;---------------------------------
;Pumping Scene
[Statedef 22610]
type     = S
movetype = I
physics  = N
poweradd = 0
anim = 22610
ctrl = 0
velset = 0,0,0

[State 22610, 3]
type = PlaySnd
trigger1 = AnimElem = 9
trigger2 = AnimElem = 18
trigger3 = AnimElem = 27
value = 4,62
volume = 10

[State 22610, 4]
type = Explod
trigger1 = AnimElem = 9
trigger2 = AnimElem = 18
trigger3 = AnimElem = 27
anim = 1506
id   = 1506
postype = p1
pos = 0,-1
shadow = 68,68,68
pausemovetime = 9999
ownpal = 1

[State 22610, 5]
type = Explod
trigger1 = AnimElem = 27
anim = 1505
id   = 1505
postype = p1
pos = 0,1
shadow = 68,68,68
pausemovetime = 9999
ownpal = 1

[State 22610, 6]
type = Explod
trigger1 = AnimElem = 9
trigger2 = AnimElem = 18
trigger3 = AnimElem = 27
anim = 1507
id   = 1507
postype = p1
pos = 0,-1
shadow = 68,68,68
pausemovetime = 9999
sprpriority = 1
ownpal = 1

[State 22610, 7]
type = targetlifeadd
trigger1 = AnimElem = 9
trigger2 = AnimElem = 18
value = -38
kill = 0
absolute = 1

[State 22610, 8]
type = targetlifeadd
trigger1 = AnimElem = 27
value = -121
kill = 1
absolute = 1

[State 22610, 9]
type = envshake
trigger1 = animelem = 9
trigger2 = animelem = 18
trigger3 = animelem = 27
time = 10
ampl = -6
freq = 40
phase = 2

[State 22610, 10]
type = Explod
trigger1 = animelem = 27, = [3,10]
trigger1 = NumExplod(22440) < 2
trigger1 = Random < 750
anim = 22440
ID = 22440
sprpriority = 5
postype = p2
pos = 0,-50
random = 100,100
pausemovetime = 9999
ignorehitpause = 1
ownpal = 1

[State 22610, 11]
type = Explod
trigger1 = animelem = 27, = [3,10]
trigger1 = NumExplod(22441) < 3
trigger1 = Random < 700
anim = 22441
ID = 22441
sprpriority = 5
postype = p2
pos = 0,-50
random = 100,100
pausemovetime = 9999
ignorehitpause = 1
ownpal = 1

[State 22610, 12]
type = Explod
trigger1 = animelem = 27, = [3,10]
trigger1 = NumExplod(22442) < 3
trigger1 = Random < 450
anim = 22442
ID = 22442
sprpriority = 5
postype = p2
pos = 0,-50
random = 100,100
pausemovetime = 9999
ignorehitpause = 1
persistent = 3
ownpal = 1

[State 22610, 13]
type = Explod
trigger1 = animelem = 27, = [3,13]
trigger1 = NumExplod(22443) < 4
trigger1 = Random < 750
anim = 22443
ID = 22443
sprpriority = 5
postype = p2
pos = 0,-50
random = 100,100
pausemovetime = 9999
ignorehitpause = 1
ownpal = 1

[State 22610, 14]
type = Explod
trigger1 = animelem = 27, >=3
trigger1 = NumExplod(22444) < 5
trigger1 = Random < 970
anim = 22444
ID = 22444
sprpriority = 5
postype = p2
pos = 0,-50
random = 100,100
pausemovetime = 9999
ignorehitpause = 1
persistent = 4
ownpal = 1

[State 22610, 15]
type = Explod
trigger1 = animelem = 27, >=3
trigger1 = NumExplod(22445) < 9
trigger1 = Random < 1000
anim = 22445
ID = 22445
sprpriority = 5
postype = p2
pos = 0,-50
random = 100,100
pausemovetime = 9999
ignorehitpause = 1
persistent = 4
ownpal = 1

[State 22610, 16]
type = targetstate
trigger1 = animelem = 27, = 6
value = 22616

[State 22610, 18]
type = Varadd
trigger1 = animelem = 23, >= 0
Trigger1 = Timemod = 4,3
var(5) = 15

[State 22610, 20]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;-----------------------------
;Squirting Blood P2
[Statedef 22615]
type     = S
movetype = H
physics  = N
poweradd = 0
ctrl = 0
velset = 0,0

[State 22615, 1]
type = assertspecial
trigger1 = time >= 0	
flag = noautoturn

[State 22615, 2]
type = turn
trigger1 = animelem = 3	

[State 22615, 3]
type = PosSet
trigger1 = time = 0
y = 0

[State 22615, 3]
type = ChangeAnim2
trigger1 = time = 0
value = 22615

[State 22615, 4]
type = palfx
trigger1 = animelem = 23
time = 49
add = -100,-100,7
sinadd = 30,30,0,10
color = 0
invertall = 1

[State 22615, 5]
type = selfstate
Trigger1 = time < 3 
trigger1 = p2stateno != 22605
value = 5100
ctrl = 0

[State 22615, 6]
type = selfState
Trigger1 = AnimTime = 0
value = 5100
ctrl = 0
;--------------------------------
;--------------------------------
;====================================================================

;---------------------------------------------------------------------------
; (hit by, into air)
[Statedef 22616]
type    = A
movetype= A 
physics = N
velset = 4,-7
ctrl = 0

[State 22605, 2]
type = assertspecial
trigger1 = time >= 0	
flag = noautoturn

[State 1407, 4]
type = posadd
Trigger1 = Time = 0
y = 20

[State 1407, 1]
type = palfx
trigger1 = time = 0
time = 49
add = -100,-100,7
sinadd = 56,56,0,10
color = 0
invertall = 1

[State 1407, 2]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5160)
value = 5160

[State 1407, 4]
type = VelAdd
Trigger1 = Time > 0
y = .45

[State 1407, 5]
type = changestate
trigger1 = time > 5
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 22617 ;Hit ground
;-----------------------------
;---------------------------------------------------------------------------
; HIT_BOUNCE (hit ground)
[Statedef 22617]
type    = L
movetype= H
physics = N

[State 5100, 1]
type = VelSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
trigger1 = vel x > 1
x = 1

[State 5100, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5100, Var] ;Save fall velocity
type = VarSet
trigger1 = Time = 0
;trigger1 = GetHitVar(fall.yvel) = 0
sysvar(1) = floor(vel y)

[State 5100, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = (anim != [5051,5059]) && (anim != [5061,5069])
trigger2 = !SelfAnimExist(5100 + (anim % 10))
value = 5100

[State 5100, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
trigger1 = time = 0
trigger1 = (anim = [5051,5059]) || (anim = [5061,5069])
trigger1 = SelfAnimExist(5100 + (anim % 10))
value = 5100 + (anim % 10)

[State 5100, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5100, 5]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5100, 6] ;Reduce speed
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 5100, 7]
type = ChangeState
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
value = 5110 ;HIT_LIEDOWN

[State 5100, 8]
type = GameMakeAnim
trigger1 = Time = 1
;value = 61
;pos = 0, 0
;under = 1
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 10

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 5100, 10]
type = PlaySnd
trigger1 = Time = 1
;value = F7, 0 ;Hit ground
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5100, 11]
type = PosFreeze
trigger1 = 1

[State 5100, 12]
type = ChangeState
trigger1 = AnimTime = 0
value = 22618

[State 5100, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

;---------------------------------------------------------------------------
; HIT_BOUNCE (bounce into air)
[Statedef 22618]
type    = L
movetype= H
physics = N
velset = 3,-4

[State 5101, 1] ;Coming hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5101,5109]
trigger2 = !SelfAnimExist(5160 + (anim % 10))
value = 5160

[State 5101, 2] ;Coming hit ground anim (for hit up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5101,5109]
trigger1 = SelfAnimExist(5160 + (anim % 10))
value = 5160 + (anim % 10)

[State 5101, 4]
type = PosSet
trigger1 = Time = 0
y = 20

[State 5101, 5] ;Acceleration
type = VelAdd
trigger1 = 1
y = .4

[State 5101, 6] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 12
type = selfState
value = 5110

;------------------------------------------------------------------------------------------
;î™ítèó(ÉmÅ[É}Éã)
[Statedef 22400]
type = S
movetype = A
physics = S
anim = 22400
velset = 0,0
ctrl = 0

[State 3000, env]
type = EnvColor
trigger1 = animelem = 1
value = 0,0,0
time = 29
under = 1

[State 1455, 1]
type = Bgpalfx
trigger1 = time >= 0
invertall = 1
time = 1

[State 3000, SparkSound]
type = PlaySnd
trigger1 = animelem = 1, = 2
value = 4,59
channel = 1

[State 3000, Super Pause]
type = SuperPause
trigger1 = animelem = 1, = 1
movetime = 28
poweradd = -2000
time = 28
anim = -1
darken = 1

[State 3000,Explod1]
type = Explod
trigger1 = animelem = 1, = 3
anim = 22430
id   = 22430
pos = 5,-95
postype = p1
supermove = 1
supermovetime = 9999
sprpriority = 1
bindtime = 1
ontop = 1
ownpal = 1

[State 3000,Explod2]
type = Explod
trigger1 = animelem = 1, = 3
anim = 22431
id   = 22431
pos = 5,-95
postype = p1
sprpriority = -2
supermove = 1
supermovetime = 9999
bindtime = 1
ontop = 0
ownpal = 1

[State 3000, NOTHITBY]
type = Nothitby
trigger1 = 1
value = SCA

[State 1450, 14]
type = ChangeState
trigger1 = animtime = 0
value = 22401

;------------------------------------
;Play Dash Level2
[Statedef 22401]
type = S
movetype = A
physics = S
anim = 22401
sprpriority = 2
ctrl = 0
juggle = 4
velset = 0,0

[State 1455, 1]
type = Bgpalfx
trigger1 = time >= 0
invertall = 1
time = 1

[State 3010, End]
type = Width
trigger1 = 1
edge = 30,0

[State 3010, 1]
type = VelSet
trigger1 = Animelem = 1, >= 0
x = 12

[State 3010, AfterImage]
type = AfterImage
trigger1 = Animelem = 1
time = 16
trans = add1
timegap = 2
framegap = 1
length = 4

[State 22601, 7]
type = NotHitBy
trigger1 = animelem = 4, <2
value = SCA, NP, SP, HP
time = 1

[State 3010, Hit]
type = HitDef
;trigger1 = (p2stateno != [5020,5040])  
;trigger1 = p2stateno != [154,155]
trigger1 = AnimElem = 1, = 1
animtype = Hard
attr = S, HA
damage = 0,0
hitflag = MAF
pausetime = 2, 5
sparkno = S22411
guard.pausetime = 9,11
p2facing = 1          
p2stateno = 22404
p2getp1state = 1
sparkxy = 1,-61
hitsound = S4,39
guardsound = S20,6
guardflag = M
ground.Velocity = 0,0
air.Velocity = 0,0
fall.xVelocity = 5
fall = 1

[State 3010, End]
type = ChangeState
trigger1 = movehit
value = 22403
ctrl = 0

[State 1451, 10]
type = ChangeState
trigger1 = animtime = 0
value = 22402

[Statedef 22402]
type = S
movetype = I
physics = N
anim = 22402
sprpriority = 2
ctrl = 0

[State 3020, AfterImage]
type = AfterImageTime
trigger1 = time = 0
time = 0

[State 3020, 1]
type = Velmul
trigger1 = 1
x = .92

[State 22402, 2]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------------------------
[Statedef 22404]
type    = S
movetype= H
physics = N
velset = 0,0

[State 3320, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(groundtype) = 1),5000,5010) + GetHitVar(animtype)

[State 3320, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 3320, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) 

[State 3320, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 3320, 6]
type = ChangeState
trigger1 = HitShakeOver
value = 22410

[State 3320, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 3320, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 3320, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

[Statedef 22410]
type    = S
movetype= H
physics = S

[State 3325, 1]
type = Hitfallset
trigger1 = Time = 0
value = 0

[State 3325, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 3325, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = SelfAnimExist(5005 + GetHitVar(animtype) + (GetHitVar(groundtype)=2)*10)
value = 5005 + GetHitVar(animtype) + (GetHitVar(groundtype)=2)*10

[State 3325, 3] ;Stop sliding back
type = VelMul
trigger1 = Time >= GetHitVar(slidetime)
x = .6

[State 3325, 4]
type = VelSet
trigger1 = HitOver
x = 0

[State 3325, 5]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 3325, 6]
type = SelfState
trigger1 = HitOver
value = 0
ctrl = 1

;======================================================
;Play Time Molestion Level2
[Statedef 22403]
type = S
movetype = A
physics = N
anim = 22403
sprpriority = 2
velset = 0,0
juggle = 0
ctrl = 0

[State 1455, 1]
type = Bgpalfx
trigger1 = time >= 0
invertall = 1
time = 1

[State 3030, Var]
type = Varset
trigger1 = time = 0
var(3) = 0

[State 3030, AfterImage]
type = AfterImageTime
trigger1 = time = 0
time = 0

[State 3030, Width]
type = Width
trigger1 = 1
edge = 50,0

[State 3030, Hit1]
type = HitDef
trigger1 = AnimElem = 7
attr = S, HA
animtype = hard
damage = 30,0
guardflag = M
hitflag = MAF
pausetime = 1,1
sparkno = S22411
sparkxy = 0,-53
hitsound = S4,ifelse(random <=500,39,60)
guardsound = S20,6
ground.type = High
ground.slidetime = 17
ground.hittime = 17
ground.velocity = 0
air.velocity = 0
airguard.velocity = 0
guard.velocity = 0
getpower = 0,0
givepower = 21,21
guard.pausetime = 3,3
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
yaccel = .5
kill = 0
snap = 48,0
p2getp1stateno = 1
p2stateno = 22404
p2facing = 1

[State 3030, Hit2]
type = HitDef
trigger1 = AnimElem = 11
attr = S, HA
animtype = hard
damage = 30,0
guardflag = M
hitflag = MAF
pausetime = 1,1
sparkno = S22411
sparkxy = 0,-53
hitsound = S4,ifelse(random <=500,39,60)
guardsound = S20,6
ground.type = Low
ground.slidetime = 17
ground.hittime = 17
ground.velocity = 0
air.velocity = 0
airguard.velocity = 0
guard.velocity = 0
getpower = 0,0
givepower = 21,21
guard.pausetime = 3,3
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
yaccel = .5
kill = 0
snap = 48,0
p2getp1stateno = 1
p2stateno = 22404
p2facing = 1

[State 3030, Hit3]
type = HitDef
trigger1 = AnimElem = 19
attr = S, HA
animtype = hard
damage = 30,0
guardflag = M
hitflag = MAF
pausetime = 1,1
sparkno = S22412
sparkxy = 0,-64
hitsound = S4,ifelse(random <=100,39,60)
guardsound = S20,6
ground.type = High
ground.slidetime = 17
ground.hittime = 17
ground.velocity = 0
air.velocity = 0
airguard.velocity = 0
guard.velocity = 0
getpower = 0,0
givepower = 21,21
guard.pausetime = 3,3
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
yaccel = .5
kill = 0
snap = 48,0
p2getp1stateno = 1
p2stateno = 22404
p2facing = 1

[State 3030, Hit4]
type = HitDef
trigger1 = AnimElem = 29
attr = S, HA
animtype = hard
damage = 30,0
guardflag = M
hitflag = MAF
pausetime = 1,1
sparkno = S22412
sparkxy = 0,-64
hitsound = S4,ifelse(random <=100,39,60)
guardsound = S20,6
ground.type = Low
ground.slidetime = 17
ground.hittime = 17
ground.velocity = 0
air.velocity = 0
airguard.velocity = 0
guard.velocity = 0
getpower = 0,0
givepower = 21,21
guard.pausetime = 3,3
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
yaccel = .5
kill = 0
snap = 48,0
p2getp1stateno = 1
p2stateno = 22404
p2facing = 1

[State 3030, Hit5]
type = HitDef
trigger1 = AnimElem = 36
attr = S, HA
animtype = hard
damage = 30,0
guardflag = M
hitflag = MAF
pausetime = 1,1
sparkno = S22412
sparkxy = 0,-64
hitsound = S4,ifelse(random <=100,39,60)
guardsound = S20,6
ground.type = Low
ground.slidetime = 17
ground.hittime = 17
ground.velocity = 0
air.velocity = 0
airguard.velocity = 0
guard.velocity = 0
getpower = 0,0
givepower = 21,21
guard.pausetime = 3,3
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
yaccel = .5
kill = 0
snap = 48,0
p2getp1stateno = 1
p2stateno = 22404
p2facing = 1

[State 3030, Hit6]
type = HitDef
trigger1 = AnimElem = 42
attr = S, HA
animtype = hard
damage = 30,0
guardflag = M
hitflag = MAF
pausetime = 1,1
sparkno = S22412
sparkxy = 0,-64
hitsound = S4,ifelse(random <=500,39,60)
guardsound = S20,6
ground.type = High
ground.slidetime = 17
ground.hittime = 17
ground.velocity = 0
air.velocity = 0
airguard.velocity = 0
guard.velocity = 0
getpower = 0,0
givepower = 21,21
guard.pausetime = 3,3
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
yaccel = .5
kill = 0
snap = 48,0
p2getp1stateno = 1
p2stateno = 22404
p2facing = 1

[State 3030, Hit7]
type = HitDef
trigger1 = AnimElem = 50
attr = S, HA
animtype = hard
damage = 30,0
guardflag = M
hitflag = MAF
pausetime = 1,1
sparkno = S22412
sparkxy = 0,-64
hitsound = S4,39
guardsound = S20,6
ground.type = Low
ground.slidetime = 17
ground.hittime = 17
ground.velocity = 0
air.velocity = 0
airguard.velocity = 0
guard.velocity = 0
getpower = 0,0
givepower = 21,21
guard.pausetime = 3,3
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
yaccel = .5
kill = 0
snap = 48,0
p2getp1stateno = 1
p2stateno = 22404
p2facing = 1

[State 3030, Blo0d Spark]
type = Explod
trigger1 = AnimElem = 19
trigger2 = AnimElem = 29
trigger3 = Animelem = 36
trigger4 = Animelem = 42
trigger5 = Animelem = 50
id = 22413
anim = 22413
pos = 48,-64
sprpriority = 1
ownpal = 1

[State 1, 5]
type = ChangeState
trigger1 = animtime = 0
value = 22405
;====================================================
;------------------------
[Statedef 22405]
type    = S
movetype= A
physics = S
poweradd= 0
ctrl = 0
velset = 0,0
anim = 22405

[State 1455, 1]
type = Bgpalfx
trigger1 = time >= 0
invertall = 1
time = 1

[State 1455, 1]
type = Width
trigger1 = time >= 0
edge = 30,30

[State 1455, 1]
type = Targetstate
trigger1 = time =0
value    = 22406

[State 1455, 1]
type = envshake
trigger1 = animelem = 7, = 12
trigger2 = animelem = 9, = 2
trigger3 = animelem = 11, = 2
trigger4 = animelem = 13, = 2
trigger5 = animelem = 15, = 2
trigger6 = animelem = 17, = 2
time = 10
ampl = -6
freq = 10
phase = 2

[State 1455, 1]
type = Targetlifeadd
trigger1 = animelem = 7, = 12
trigger2 = animelem = 9, = 2
trigger3 = animelem = 11,= 2
trigger4 = animelem = 13,= 2
trigger5 = animelem = 15,= 2
trigger6 = animelem = 17,= 2
value    = -24
kill = 0
absolute = 0

[State 1455, 1]
type = PlaySnd
trigger1 = animelem = 2
value = s4,25
volume = 30

[State 1455, 1]
type = PlaySnd
trigger1 = animelem = 7, = 12
trigger2 = animelem = 9, = 2
trigger3 = animelem = 11, = 2
trigger4 = animelem = 13, = 2
trigger5 = animelem = 15, = 2
trigger6 = animelem = 17, = 2
volume = 55
value = 4,58

[State 1455, 1]
type = Explod
trigger1 = animelem = 2
persistent = 1
ignorehitpause = 1
persistent = 1
anim = 307
id = 307
facing = -1
pos= -2, -66
postype = P2
bindtime = 1
supermove = 0
sprpriority = 2
ontop = 1
ownpal = 1

[State 1455, 1]
type = Targetbind
trigger1 = time >=0
pos = 33,0
time = 5

[State 1455, 1]
type = Explod
triggerall = NumExplod(22440) < 3
triggerall = Random < 750
trigger1 = animelem = 7, >= 12
trigger2 = animelem = 9, >= 2
trigger3 = animelem = 11, >= 2
trigger4 = animelem = 13, >= 2
trigger5 = animelem = 15, >= 2
trigger6 = animelem = 17, >= 2
anim = 22440
ID = 22440
sprpriority = 5
postype = p2
pos = 0,-70
random = 10,10
pausemovetime = 9999
ignorehitpause = 1
ownpal = 1

[State 1455, 1]
type = Explod
triggerall = NumExplod(22441) < 4
triggerall = Random < 700
trigger1 = animelem = 7, >= 12
trigger2 = animelem = 9, >= 2
trigger3 = animelem = 11, >= 2
trigger4 = animelem = 13, >= 2
trigger5 = animelem = 15, >= 2
trigger6 = animelem = 17, >= 2
anim = 22441
ID = 22441
sprpriority = 5
postype = p2
pos = 0,-70
random = 10,10
pausemovetime = 9999
ignorehitpause = 1
ownpal = 1

[State 1455, 1]
type = Explod
triggerall = NumExplod(22442) < 3
triggerall = Random < 450
trigger1 = animelem = 7, >= 12
trigger2 = animelem = 9, >= 2
trigger3 = animelem = 11, >= 2
trigger4 = animelem = 13, >= 2
trigger5 = animelem = 15, >= 2
trigger6 = animelem = 17, >= 2
anim = 22442
ID = 22442
sprpriority = 5
postype = p2
pos = 0,-75
random = 30,30
pausemovetime = 9999
ignorehitpause = 1
persistent = 3
ownpal = 1

[State 1455, 1]
type = Explod
triggerall = NumExplod(22443) < 4
triggerall = Random < 750
trigger1 = animelem = 7, >= 12
trigger2 = animelem = 9, >= 2
trigger3 = animelem = 11, >= 2
trigger4 = animelem = 13, >= 2
trigger5 = animelem = 15, >= 2
trigger6 = animelem = 17, >= 2
anim = 22443
ID = 22443
sprpriority = 5
postype = p2
pos = 0,-65
random = 40,40
pausemovetime = 9999
ignorehitpause = 1
ownpal = 1

[State 1455, 1]
type = Explod
triggerall = NumExplod(22444) < 5
triggerall = Random < 970
trigger1 = animelem = 7, >= 12
trigger2 = animelem = 9, >= 2
trigger3 = animelem = 11, >= 2
trigger4 = animelem = 13, >= 2
trigger5 = animelem = 15, >= 2
trigger6 = animelem = 17, >= 2
anim = 22444
ID = 22444
sprpriority = 5
postype = p2
pos = 0,-50
random = 100,100
pausemovetime = 9999
ignorehitpause = 1
persistent = 4
ownpal = 1

[State 1455, 1]
type = Explod
triggerall = NumExplod(22445) < 7
triggerall = Random < 970
trigger1 = animelem = 7, >= 12
trigger2 = animelem = 9, >= 2
trigger3 = animelem = 11, >= 2
trigger4 = animelem = 13, >= 2
trigger5 = animelem = 15, >= 2
trigger6 = animelem = 17, >= 2
anim = 22445
ID = 22445
sprpriority = 5
postype = p2
pos = 0,-50
random = 100,100
pausemovetime = 9999
ignorehitpause = 1
persistent = 4
ownpal = 1

[State 1455, 1]
type = ChangeState
trigger1 = animtime = 0
value = 22407

;--------------------------------------------------
[Statedef 22407]
type    = S
movetype= A
physics = S
poweradd= 0
ctrl = 0
velset = 0,0
anim = 22407

[State 3035, EnvShake]
type = EnvShake
trigger1 = AnimElem = 3, = 0
time = 20
ampl = -5
freq = 180

[State 1455, 1]
type = Bgpalfx
trigger1 = time >= 0
invertall = 1
time = 1

[State 1455, 1]
type = Targetbind
trigger1 = animelem = 1
trigger2 = animelem = 2
pos = 33,0
time = 5

[State 1455, 1]
type = Width
trigger1 = time >= 0
edge = 30,30

[State 1455, 1]
type = Targetstate
trigger1 = time = 0
value    = 22408

[State 1455, 1]
type = PlaySnd
trigger1 = animelem = 3
volume = 185
value = 4,12

[State 1455, 1]
type = Targetstate
trigger1 = animelem = 3
value    = 22409

[State 1455, 1]
type = Targetlifeadd
trigger1 = animelem = 3
value    = -71
absolute = 1

[State 3035, Burn 0]
type = Explod
trigger1 = (Animelem = 3, = [0,15]) && random <= 900
trigger1 = numexplod(22446) <= 4
ignorehitpause = 1
;persistent = 0
anim = 22446
id = 22446
pos = -10,-80
postype = P2
bindtime = 1
supermovetime = 9999999999999
pausemovetime = 999999999999
random = 30,40
sprpriority = 2
ownpal = 1

[State 3035, Burn 1]
type = Explod
trigger1 = (Animelem = 3, = [0,15]) && random <= 800
trigger1 = numexplod(22447) <= 4 
ignorehitpause = 1
;persistent = 1
anim = 22447
id = 22447
pos = -10,-80
postype = P2
bindtime = 1
supermovetime = 9999999999999
pausemovetime = 999999999999
random = 75,75
sprpriority = 2
ownpal = 1

[State 1455, 1]
type = Targetveladd
trigger1 = animelem = 3
x    = -4.5
y    = -7

[State 3035, Var2]
type = Varset
triggerall = power >= 1000
trigger1 = Animelem = 3, > 0 && Animelem = 5, <= 8
trigger1 = command = "saika"
var(40) = 1

[State 3035, End]
type = ChangeState
triggerall = var(40) > 0
trigger1 = Animelem = 3, >= 8 && Animelem = 5, <= 9
value = 25000
ctrl = 0

[State 1455, 1]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;--------------------------------------------------
;-------------------------------------------
[Statedef 22406]
type    = S
movetype= H
physics = N
velset = 0,0
ctrl = 0

[State 1455, 1]
type = palfx
trigger1 = time = 52
time = 100
add = -100,-100,7
sinadd = 56,56,0,10
color = 0
invertall = 1

[State 1455, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 22406

;-------------------------------------------

[Statedef 22408]
type    = S
movetype= H; 
physics = N
velset = 0,0
ctrl = 0

[State 1455, 1]
type = palfx
trigger1 = time = 0
time = 100
add = -100,-100,7
sinadd = 56,56,0,10
color = 0
invertall = 1

[State 1455, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 22408

[Statedef 22409]
type    = A
movetype= A 
physics = N
ctrl = 0

[State 1407, 1]
type = palfx
trigger1 = time = 0
time = 49
add = -100,-100,7
sinadd = 56,56,0,10
color = 0
invertall = 1

[State 1407, 2]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5030)
value = 5030

[State 1407, Anim 5060] 
type = ChangeAnim
trigger1 = Vel Y > -2
trigger1 = Anim = 5052
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5060

[State 1407, 4]
type = VelAdd
Trigger1 = Time > 0
y = .45

[State 1407, 5]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;------------------------------------------------------------------------------------------
;ìäÇ∞(ñ\ëñ)
[Statedef 24000]
type    = S
movetype= A
physics = S
ctrl = 0
velset = 0
poweradd = 32
anim = 24000

[State Power Add]
type     = Poweradd
trigger1 = MoveContact
value    = 50

[State 24000, 0]
type = HitDef
Trigger1 = time = 0
attr = S, NT
givepower = 40
hitflag = M-
numhits = 0
AnimType = Up
pausetime = 0
priority = 1, Miss
snap = 44, -87, 0, 1
sparkno = -1
ground.velocity = 2
p2facing = 1
p1stateno = 24001
p2stateno = 24002
p2getp1state = 1
hitsound = S4,53
fall = 1
fall.recover = 0

[State 24000, 1]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 24001]
type    = S
movetype= A
physics = N
anim = 24001

[State 24001, 0]
type = Width
Trigger1 = 1
Trigger1 = AnimElem = 2, < 0
edge = 40

[State 24001, 1]
type = Width
Trigger1 = AnimElem = 4, >= 0
Trigger1 = AnimElem = 5, < 0
edge = 0,50

[State 24001, 2]
type = PlaySnd
Trigger1 = AnimElem = 4
value = S4,54

[State 24001, 4]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 24002]
type    = A
movetype= H
physics = S
velset  = 0,0
ctrl    = 0
facing = 1

[State 24002, 0]
type = AssertSpecial
Trigger1 = 1
flag = noautoturn
ignorehitpause = 1

[state screenbound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1

[state 24002, 1]
type = Playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 24002, 2]
type     = ChangeAnim2
Trigger1 = time = 0
value    = 24002
ignorehitpause = 1
persistent = 0

[State 24002, 3]
type     = PosFreeze
Trigger1 = Time = 0

[State 24002, 4]
type     = SprPriority
Trigger1 = AnimElem = 1
value    = 2

[State 24002, 5]
type     = SprPriority
Trigger1 = AnimElem >= 2
value    = -2

[State 24002, 6]
type     = PosAdd
Trigger1 = AnimElem = 2, 0
x        = 30
y        = 38

[State 24002, 7]
type     = PosAdd
Trigger1 = AnimElem = 3
x        = 20
y        = -26;30

[State 24002, 8]
type     = PosAdd
Trigger1 = AnimElem = 4
x        = -38
y        = -33

[State 24002, 9]
type     = PosAdd
Trigger1 = AnimElem = 5
x        = -89
y        = 32

[State 24002, 10]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 24003

[State 24002, 11]
type     = null
trigger1 = AnimTime = 0
value    = 5030

[State 24002, 12]
type     = SelfState
trigger1 = Vel Y > 0 && Pos Y >= 0
value    = 5100

[Statedef 24003]
type    = A
movetype= H
physics = N
velset  = -20,1;3.3
ctrl    = 0
anim = 5030

[state 24003, 0]
type = changeanim2
trigger1 = 1
value = 24003
persistent = 0

[State 24003, 1]
type     = LifeAdd
trigger1 = backedgedist <= 5
trigger2 = Vel Y > 0 && Pos Y >= 0
value    = -137

[State 24003, 2]
type     = SelfState
trigger1 = Vel Y > 0 && Pos Y >= 0
value    = 5100

[state 24003, 3]
type = Playerpush
trigger1 = 1 ;time = 0
value = 0

[state 24003, 4]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0,0

[State 24003, 5]
type     = PosAdd
Trigger1 = Time = 0
y = 50

[State 24003, 6]
type     = ChangeState
trigger1 = backedgedist <= 5
value    = 24004

[statedef 24004]
type = A
movetype = H
Physics = N
anim = 5030
velset = 2,0

[State 24004, 0]
type = Explod
trigger1 = time = 1
anim = F72
pos = -10,-54
facing = 1
sprpriority = 2
bindtime = 2
supermove = 1

[state 24004, 1]
type = screenbound
trigger1 = 1
value = 0
movecamera = 0,0

[state 24004, 6]
type = PlaySnd
trigger1 = time = 1
value = 4,55
persistent = 0

[state 24004, 10]
type = Turn
trigger1 = time = 7

[State 24004, 11]
type = VelSet
trigger1 = time = 9
x = 2

[State 24004, 12]
type = EnvShake
Trigger1 = Time = 0
time = 15
ampl = -6
freq = 120
phase = 120

[state 24004, 13]
type = Playerpush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 24004, 14]
type = SelfState
trigger1 = Time = 10
value = 5030

;------------------------------------------------------------------------------------------
;é„ÉpÉìÉ`
[Statedef 20200]
type    = S
movetype= A
physics = S
juggle  = 6
ctrl = 0
velset = 0,0
anim = 20200
PowerAdd = 7

[State 220, 1]
type = HitDef
trigger1 = AnimElem = 6
attr = S, NA
animtype = Medium
damage    = 40
guardflag = MA
hitflag = MAF
pausetime = 3,5
sparkno = -1
guard.sparkno = -1
sparkxy = -10,-55
hitsound = S20,1
guardsound = S20,6
ground.type = High
ground.slidetime = 18
ground.hittime  = 18
ground.velocity = -2
air.velocity = -2,-1.2

[State 220, 2]
type = Explod
trigger1 = MoveHit
persistent = 0
anim = 7002
pos = 8,-78
postype = p2
sprpriority = 2
bindtime = 1
ignorehitpause = 1
supermove = 1
ownpal = 1

[State 220, 8]
type = PlaySnd
trigger1 = animelem = 2
value = 4,61

[State 220, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------------------
; ÇµÇ·Ç™Ç›íÜÉpÉìÉ`
[Statedef 20401]
type     = C
movetype = A
physics  = U
juggle   = 5
ctrl     = 0
poweradd = 20
anim     = 20401

[State Power Add]
type     = Playerpush
trigger1 = 1
value    = 1
ignorehitpause = 1

[State 300, Sound Effect]
type     = PlaySnd
trigger1 = AnimElem = 3
value    = 4,57
channel = 2

[State 300, HitDef]
p2facing         = 1
type             = HitDef
trigger1         = AnimElem = 4
attr             = C, NA
damage           = 33
animtype         = Medium
guardflag        = L
pausetime        = 9,9
sparkno = 2
sparkxy          = -36,-32
hitsound         = S4,56
guardsound       = S20,6
ground.type      = Low
ground.slidetime = 14
ground.hittime   = 25
ground.velocity  = -5
air.type         = Low
air.velocity     = -1.8,-3.1
mindist          = 60

[state hahah]
type = velset
trigger1 = animelemno(0) >= 4
trigger2 = movecontact
x = 0
y = 0

[State 410, 4]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 11
ctrl     = 1

;------------------------------------------------------------------------------------------
; ÇµÇ·Ç™Ç›ã≠ÉpÉìÉ`
[Statedef 20402]
type     = C
movetype = A
physics  = U
ctrl     = 0
anim     = 20402
poweradd = 35
juggle   = 6

[state 20402, velset]
type = velset
trigger1 = animelem >= 3
x = 0
y = 0

[State 20402, sound]
type     = PlaySnd
trigger1 = AnimElem = 3
value    = 4,48
channel = 2

[state 20402, sound]
type = Playsnd
trigger1 = animelem = 3
value = 4,49

[State 20402, shake]
type = EnvShake
Trigger1 = animelem = 3
time = 12
ampl = -4
freq = 120
phase = 120

[State 1211, Exclamation]
type = Explod
trigger1 = animelem = 3
anim = 20412
id = 20412
pos = 0,0
postype = p1
sprpriority = 2
bindtime = -1
supermove = 1
pausemovetime = -1
ignorehitpause = 1
shadow = -1,-1,-1

[State 300, HitDef]
p2facing         = 1
type             = HitDef
trigger1         = time = 0 && var(37) = 1
attr             = C, NA
hitflag          = MAFPD
damage           = 65
animtype         = Up
guardflag        = L
pausetime        = 0,10
sparkno          = 3
sparkxy          = -16,-12
hitsound         = S4,50
guardsound       = S20,6
ground.type      = Low
ground.slidetime = 14
ground.hittime   = 28
ground.velocity  = -1.2,-9
guard.velocity   = -3
air.type         = Low
air.velocity     = -1.8,-8.1
fall             = 1
;fall.recover     = 0
air.juggle       = 5

[State 300, HitDef]
p2facing         = 1
type             = HitDef
trigger1         = time = 0 && var(37) = 0
attr             = C, NA
hitflag          = MAFP
damage           = 65
animtype         = Up
guardflag        = L
pausetime        = 0,10
sparkno          = 3
sparkxy          = -16,-12
hitsound         = S4,50
guardsound       = S20,6
ground.type      = Low
ground.slidetime = 14
ground.hittime   = 28
ground.velocity  = -1.2,-9
guard.velocity   = -3
air.type         = Low
air.velocity     = -1.8,-8.1
fall             = 1
;fall.recover     = 0
air.juggle       = 5

;åä
;[State 195, Macula]
;type          = Helper
;trigger1      = AnimElem = 3
;helpertype    = normal
;id            = (30000)
;name          = "hole"
;pos           = 85,-6
;postype       = p1
;stateno       = 30000
;facing        = 1
;keyctrl       = 0
;ownpal        = 1
;sprpriority   = -5
;pausemovetime = 99999999999999
;supermovetime = ifelse(var(5) = 1, 99999999999999, 0)
;ignorehitpause = 1

[State 410, 4]
type     = ChangeState
trigger1 = AnimTime = 0
value    = 11
ctrl     = 1

[statedef 30000]
type     = C
movetype = I
physics  = C
ctrl     = 0
anim     = 323
velset   = 0,0,0

[state hehe]
type = assertspecial
trigger1 = 1
flag = noshadow

[state ahha]
type = varset
trigger1 = time = 0
var(34) = 255

[State that starts the palfx]
type     = PalFx
trigger1 = 1
add      = (ifelse((time = [0, 90]), 255, var(34))),(ifelse((time = [0,90]), 255, var(34))),(ifelse((time = [0, 90]), 255, var(34)))
time     = 1

[state ahha]
type = varadd
trigger1 = time >= 90 ;&& var(34) >= 0
var(34) = -6

[state haha]
type = destroyself
trigger1 = var(34) <= 0
;trigger2 = time >= 135

;------------------------------------------------------------------------------------------
; óßÇøãﬂãóó£ã≠ÉpÉìÉ`
[Statedef 20302]
type = S
movetype = A
physics = S
anim = 20302
velset = 0
ctrl = 0
juggle = 8

[State 20302, 1]
type = HitDef
trigger1 = AnimElem = 6
attr = S, NA
damage = floor(35/2**HitCount)+5,0
animtype = Hard
guardflag = M
hitflag = MAF
getpower = 50,0
pausetime = 1,1
sparkno = S22414
sparkxy = 0, -75
hitsound = S4,39
guardsound = S20,6
ground.type = High
ground.slidetime = 10
ground.hittime  = 18
ground.velocity = -8
air.velocity = -4,-3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -8

[State 20302, 1]
type = HitDef
trigger1 = AnimElem = 6,= 1
attr = S, NA
damage = floor(35/2**HitCount)+5,0
animtype = Hard
guardflag = M
hitflag = MAF
getpower = 50,0
pausetime = 1,1
sparkno = S22414
sparkxy = -15, -75
hitsound = S4,39
guardsound = S20,6
ground.type = High
ground.slidetime = 10
ground.hittime  = 18
ground.velocity = -8
air.velocity = -4,-3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -8

[State 20302, 1]
type = HitDef
trigger1 = AnimElem = 7
attr = S, NA
damage = floor(35/2**HitCount)+5,0
animtype = Hard
guardflag = M
hitflag = MAF
getpower = 50,0
pausetime = 12,12
guard.pausetime = 1,12
sparkno = S22414
sparkxy = -20, -70
hitsound = S4,39
guardsound = S20,6
ground.type = High
ground.slidetime = 12
ground.hittime  = 18
ground.velocity = -12
air.velocity = -4,-3

[State 20302, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------------------
; óßÇøâìãóó£ã≠ÉpÉìÉ`(ê√é~)
[Statedef 20203]
type = S
movetype = A
physics = S
anim = 20201
velset = 0
ctrl = 0
juggle = 8

[State 20203, 1]
type = HitDef
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 7
trigger4 = AnimElem = 9
attr = S, NA
damage = floor(35/2**HitCount)+5,0
animtype = Hard
guardflag = M
hitflag = MAF
getpower = 30,0
pausetime = 2,4
sparkno = S7002
sparkxy = -5, -65
hitsound = S4,33
guardsound = S20,6
ground.type = High
ground.slidetime = 10
ground.hittime  = 18
ground.velocity = -.00000001
air.velocity = -4,-3
guard.cornerpush.veloff = -8

[State 20203, 1]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
damage = floor(35/2**HitCount)+5,0
animtype = Hard
guardflag = M
hitflag = MAF
getpower = 30,0
pausetime = 2,4
sparkno = S7002
sparkxy = -5, -65
hitsound = S4,33
guardsound = S20,6
ground.type = High
ground.slidetime = 10
ground.hittime  = 18
ground.velocity = -.00000001
air.velocity = -4,-3
guard.cornerpush.veloff = -8

[State 20203, 1]
type = HitDef
trigger1 = AnimElem = 8
attr = S, NA
damage = floor(35/2**HitCount)+5,0
animtype = Hard
guardflag = M
hitflag = MAF
getpower = 30,0
pausetime = 2,4
sparkno = S7002
sparkxy = -5, -65
hitsound = S4,33
guardsound = S20,6
ground.type = High
ground.slidetime = 10
ground.hittime  = 18
ground.velocity = -.00000001
air.velocity = -4,-3
guard.cornerpush.veloff = -8

[State 20203, 1]
type = HitDef
trigger1 = AnimElem = 9
attr = S, NA
damage = floor(35/2**HitCount)+5,0
animtype = Hard
guardflag = M
hitflag = MAF
getpower = 30,0
pausetime = 2,4
sparkno = S7002
sparkxy = -5, -65
hitsound = S4,33
guardsound = S20,6
ground.type = High
ground.slidetime = 10
ground.hittime  = 18
ground.velocity = -10
air.velocity = -4,-3
guard.cornerpush.veloff = -8

[State 20203, 1]
type = MoveHitReset
trigger1 = movehit
ignorehitpause = 1

[State 20203, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

; óßÇøâìãóó£ã≠ÉpÉìÉ`(ëOêi)
[Statedef 20201]
type = S
movetype = A
physics = N
anim = 20201
velset = 0
ctrl = 0
juggle = 8

[State 20201, 1]
type = velset
trigger1 = AnimElem = 4
x = 12

[State 20201, 1]
type = velmul
trigger1 = AnimElem = 4,> 0 && AnimElem = 11,< 0
x = .75

[State 20201, 1]
type = velset
trigger1 = AnimElem = 11
x = 0

[State 20201, 1]
type = HitDef
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 7
attr = S, NA
damage = floor(35/2**HitCount)+5,0
animtype = Hard
guardflag = H
hitflag = MAF
getpower = 30,0
pausetime = 2,4
sparkno = S7002
sparkxy = -5, -65
hitsound = S4,33
guardsound = S20,6
ground.type = High
ground.slidetime = 10
ground.hittime  = 18
ground.velocity = -.00000001
air.velocity = -4,-3
guard.cornerpush.veloff = -8

[State 20201, 1]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
damage = floor(35/2**HitCount)+5,0
animtype = Hard
guardflag = H
hitflag = MAF
getpower = 30,0
pausetime = 2,4
sparkno = S7002
sparkxy = -5, -65
hitsound = S4,33
guardsound = S20,6
ground.type = High
ground.slidetime = 10
ground.hittime  = 18
ground.velocity = -.00000001
air.velocity = -4,-3
guard.cornerpush.veloff = -8
id = 20201

[State 20201, 1]
type = HitDef
trigger1 = AnimElem = 8
attr = S, NA
damage = floor(35/2**HitCount)+5,0
animtype = Hard
guardflag = H
hitflag = MAF
getpower = 30,0
pausetime = 2,4
sparkno = S7002
sparkxy = -5, -65
hitsound = S4,33
guardsound = S20,6
ground.type = High
ground.slidetime = 10
ground.hittime  = 18
ground.velocity = -.00000001
air.velocity = -4,-3
guard.cornerpush.veloff = -8
id = 20202

[State 20201, 1]
type = HitDef
trigger1 = AnimElem = 9
attr = S, NA
damage = floor(35/2**HitCount)+5,0
animtype = Hard
guardflag = H
hitflag = MAF
getpower = 30,0
pausetime = 2,4
sparkno = S7002
sparkxy = -5, -65
hitsound = S4,33
guardsound = S20,6
ground.type = High
ground.slidetime = 10
ground.hittime  = 18
ground.velocity = -4.5,-4
air.velocity = -4.5,-4
guard.cornerpush.veloff = -8
fall = 1
fall.recover = 0

[State 20201, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------------------
; óßÇøâìãóó£íÜÉpÉìÉ`	
[Statedef 20202]
type = S
movetype = A
physics = S
anim = 20202
velset = 0
juggle = 10
poweradd = 40
ctrl = 0

[State 240, 2]
type = PlaySnd
trigger1 = Time = 0
value = 4,47

[State 240, 3]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
animtype = hard
damage = 79
guardflag = MA
priority = 7, Hit
pausetime = 12,12
sparkno = S1043
sparkxy = 1,-61
sparkno = S1037
hitsound = S4,39
guardsound = S20,6
ground.type = Low
ground.slidetime = 22
ground.hittime = 18
ground.velocity = -8.5
air.velocity = -9,-2.5
airguard.velocity = -3,-1.5
guard.velocity = -11
ground.cornerpush.veloff = -8.5
air.cornerpush.veloff = -8.5
guard.cornerpush.veloff = -8.5
getpower = 30
givepower = 30

[State 240, 4]
type = Explod
trigger1 = movehit
trigger1 = animelem = 5, =1
persist = 0
anim = 1047
ID = 1047
ownpal = 1
persistent = 0
sprpriority = 5
facing = -1
postype = p2
pos = 10,-62
supermovetime = 9999
pausemovetime = 9999
bindtime = 1
ignorehitpause = 1

[State 240, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------------------
;ñ\ëñâª
[Statedef 23000]
type    = S
movetype= I
physics = S
poweradd= 0
ctrl = 0
anim = 23000
velset = 0,0

[State 2500, 1]
type = Varset
Trigger1 = time = 0
var(28) = 1

[State 2500, 5]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 2500, 7]
type = Velset
trigger1 = time != 1
x = 0

[State 2500, 8]
type = PosFreeze
trigger1 = time >= 0

[State 2500, 9]
type = SuperPause
trigger1 = time = 0
poweradd = 0
movetime = 335
darken = 0
time = 335
anim = -1

[State 1070, 2]
type = EnvColor
trigger1 = command = "s"
persistant = 0
time = 1
value = 255,255,255
under = 1
supermovetime = 1

[State 2500, 9]
type = SuperPause
trigger1 = command = "s"
poweradd = 0
movetime = 0
darken = 0
time = 0
anim = -1

[State 2500, 10]
type = ChangeState
trigger1 = command = "s"
value = 0
ctrl = 1

[State 2500, 10]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------------------------------------------------------------------------------
;ãSèƒÇ´
[Statedef 21200]
type = S
movetype = A
physics = S
anim = 21200
poweradd = 100
juggle = 11
velset = 0
ctrl = 0

[State 1200, 1]
type = VarSet
trigger1 = time = 0
var(3) = 0

[State 1200, 2]
type = Nothitby
trigger1 = animelem = 3, <=0
value = SCA
time = 1

[State 1200, 4]
type = PlaySnd
trigger1 = Time = 5
value = 4,13

[State 1200, 6]
type = HitDef
trigger1 = AnimElem = 4
attr = S, SA
animtype = hard
damage = 97,10
priority = 7, hit
hitflag = MFA
guardflag = M
pausetime = 12,12
sparkno = S1041
sparkxy = 0,-62
hitsound = S4,58
guardsound = S20,6
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -3.5,-9
air.velocity = -3.5,-9
airguard.velocity = -3,-1.5
airjuggle = 15
guard.velocity = -4
ground.cornerpush.veloff = -4
air.cornerpush.veloff = -4
guard.cornerpush.veloff = -4
fall = 1
palfx.time = 25
palfx.add = -104,-104,7
palfx.sinadd = 56,56,0,10
palfx.color = 0
palfx.invertall = 1
getpower = 30,30
givepower = 30,30
yaccel = .50

[State 1200, 7]
type = VarSet
trigger1 = Movehit = 1
var(3) = 1

;-------------------------
[State 1200, explod]
type = Explod
triggerall = NumExplod(22440) < 1
triggerall = Random < 350
trigger1 = moveHit = 1
anim = 22440
ID = 22440
sprpriority = 5
postype = p2
pos = -35,-60
random = 0,50
bindtime = 2
ignorehitpause = 1
ownpal = 1

[State 1200, explod]
type = Explod
triggerall = NumExplod(22441) < 1
triggerall = Random < 300
trigger1 = moveHit = 1
anim = 22441
ID = 22441
sprpriority = 5
postype = p2
pos = -35,-50
random = 100,100
bindtime = 2
ignorehitpause = 1
ownpal = 1

[State 1200, explod]
type = Explod
triggerall = NumExplod(22442) < 1
triggerall = Random < 450
trigger1 = moveHit = 1
anim = 22442
ID = 22442
sprpriority = 5
postype = p2
pos = 0,-60
random = 100,100
bindtime = 2
ignorehitpause = 1
ownpal = 1

[State 1200, explod]
type = Explod
triggerall = NumExplod(22443) <1
triggerall = Random < 450
trigger1 = moveHit = 1
anim = 22443
ID = 22443
sprpriority = 5
postype = p2
pos = 0,-60
random = 100,100
bindtime = 2
ignorehitpause = 1
ownpal = 1

[State 1200, explod]
type = Explod
triggerall = NumExplod(22443) < 2
triggerall = Random < 850
trigger1 = moveHit = 1
anim = 22443
ID = 22443
sprpriority = 5
postype = p2
pos = 0,-54
random = 100,100
bindtime = 2
ignorehitpause = 1
ownpal = 1

[State 1200, explod]
type = Explod
triggerall = NumExplod(22444) < 2
triggerall = Random < 950
trigger1 = moveHit = 1
anim = 22444
ID = 22444
sprpriority = 5
postype = p2
pos = 0,-75
random = 100,100
bindtime = 2
ignorehitpause = 1
ownpal = 1

[State 1200, explod]
type = Explod
triggerall = NumExplod(22445) < 4
triggerall = Random < 950
trigger1 = moveHit = 1
anim = 22445
ID = 22445
sprpriority = 5
postype = p2
pos = 0,-15
random = 100,10
bindtime = 1
ignorehitpause = 1
ownpal = 1

;------------------------------

[State 1200, CS JUMP]
type = ChangeState
trigger1 = AnimTime = 0
value = 21210

;In the air
[Statedef 21210]
type = A
movetype = A
physics = N
anim = 21210
juggle = 8

[State 210, 3]
type = Velset
trigger1 = time = 0
x = 3

[State 210, 3]
type = VelAdd
trigger1 = time >= 0
trigger1 = vel x >= 0.3
x = -0.2

[State 210, 3]
type = VelSet
trigger1 = vel x = 0.3
x = 0

[State 1210, 1]
type = VelSet
trigger1 = Time = 0
y = -5.5

[State 1210, 2]
type = VelAdd
trigger1 = Time > 0
y = .5

[State 1210, 3]
type = Explod
trigger1 = time = 0
anim = 1201
id   = 1201
postype = p1
pausemovetime = 9999
pos = 0,0
sprpriority = 2
bindtime = 3
ownpal = 1

[State 1210, 4]
type = Explod
trigger1 = animelem = 5,=1
anim = 1202
id   = 1202
postype = p1
vel = 0,-.6
pausemovetime = 9999
pos = 0,0
sprpriority = 2
bindtime = 1
ownpal = 1

[State 1200, 7]
type = VarSet
trigger1 = Movehit = 1
var(3) = 1

[State 1210, 5]
type = HitDef
triggerall = Var(3) != 1
trigger1 = AnimElem = 1
trigger2 = Animelem = 2 
attr = A, SA
animtype = hard
damage = 97,10
hitflag = MAF
guardflag = MA
pausetime = 12,12
sparkno = S1041
priority = 7, Hit
sparkxy = -10,-80
hitsound = S4,58
guardsound = S20,6
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -3.5,-9
air.velocity = -3.5,-9
airguard.velocity = -3,-1.5
airjuggle = 15
guard.velocity = -4
ground.cornerpush.veloff = -4
air.cornerpush.veloff = -4
guard.cornerpush.veloff = -4
fall = 1
palfx.time = 45
palfx.add = -102,-102,7
palfx.sinadd = 54,54,0,10
palfx.color = 0
palfx.invertall = 1
getpower = 30,30
givepower = 30,30
yaccel = .50

;-------------------------
[State 1200, explod]
type = Explod
triggerall = NumExplod(22440) < 1
triggerall = Random < 350
trigger1 = moveHit = 1
anim = 22440
ID = 22440
sprpriority = 5
postype = p2
pos = -35,-60
random = 0,50
bindtime = 2
ignorehitpause = 1
ownpal = 1

[State 1200, explod]
type = Explod
triggerall = NumExplod(22441) < 1
triggerall = Random < 300
trigger1 = moveHit = 1
anim = 22441
ID = 22441
sprpriority = 5
postype = p2
pos = -35,-50
random = 100,100
bindtime = 2
ignorehitpause = 1
ownpal = 1

[State 1200, explod]
type = Explod
triggerall = NumExplod(22442) < 1
triggerall = Random < 450
trigger1 = moveHit = 1
anim = 22442
ID = 22442
sprpriority = 5
postype = p2
pos = 0,-60
random = 100,100
bindtime = 2
ignorehitpause = 1
ownpal = 1

[State 1200, explod]
type = Explod
triggerall = NumExplod(22443) <1
triggerall = Random < 450
trigger1 = moveHit = 1
anim = 22443
ID = 22443
sprpriority = 5
postype = p2
pos = 0,-60
random = 100,100
bindtime = 2
ignorehitpause = 1
ownpal = 1

[State 1200, explod]
type = Explod
triggerall = NumExplod(22443) < 2
triggerall = Random < 850
trigger1 = moveHit = 1
anim = 22443
ID = 22443
sprpriority = 5
postype = p2
pos = 0,-54
random = 100,100
bindtime = 2
ignorehitpause = 1
ownpal = 1

[State 1200, explod]
type = Explod
triggerall = NumExplod(22444) < 2
triggerall = Random < 950
trigger1 = moveHit = 1
anim = 22444
ID = 22444
sprpriority = 5
postype = p2
pos = 0,-75
random = 100,100
bindtime = 2
ignorehitpause = 1
ownpal = 1

[State 1200, explod]
type = Explod
triggerall = NumExplod(22445) < 4
triggerall = Random < 950
trigger1 = moveHit = 1
anim = 22445
ID = 22445
sprpriority = 5
postype = p2
pos = 0,-15
random = 100,10
bindtime = 1
ignorehitpause = 1
ownpal = 1

;------------------------------

[State 1210, CS LAND]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 0
ctrl = 1

; Landing
[Statedef 21220]
type = S
movetype = I
physics = S
anim = 21220
velset = 0,0
ctrl = 0

[State 1200, explod]
type = Explod
triggerall = NumExplod(22445) < 15
triggerall = Random < 950
trigger1 = var(3) = 1
anim = 22445
ID = 22445
sprpriority = 5
postype = p2
pos = 0,-15
random = 100,100
bindtime = 2
ignorehitpause = 1
ownpal = 1

[State 1200, explod]
type = Explod
triggerall = NumExplod(22444) < 5
triggerall = Random < 950
trigger1 = var(3) = 1
anim = 22444
ID = 22444
sprpriority = 5
postype = p2
pos = 0,-75
random = 100,100
bindtime = 2
ignorehitpause = 1
ownpal = 1

[State 1200, explod]
type = Explod
triggerall = NumExplod(22445) < 15
triggerall = Random < 950
trigger1 = var(3) = 2
anim = 22445
ID = 22445
sprpriority = 5
postype = p2
pos = 0,-15
random = 100,100
bindtime = 2
ignorehitpause = 1
ownpal = 1

[State 1200, explod]
type = Explod
triggerall = NumExplod(22444) < 10
triggerall = Random < 950
trigger1 = var(3) = 2
anim = 22444
ID = 22444
sprpriority = 5
postype = p2
pos = 0,-75
random = 100,100
bindtime = 2
ignorehitpause = 1
ownpal = 1


;------------------------------

[State 1220, 1]
type = VarSet
trigger1 = animTime = 0
var(3) = 0

[State 1220, 2]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1220, 3]
type = PlaySnd
trigger1 = Time = 0
value = 21,4

[State 1220, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;------------------------------------------------------------------------------------------
[Statedef 21230]
type = S
movetype = A
physics = S
anim = 21230
poweradd = 100
juggle = 4
velset = 0
ctrl = 0

[State 1200, 2]
type = Nothitby
trigger1 = animelem = 3, <=0
value = SCA
time = 1

[State 1230, 3]
type = PlaySnd
trigger1 = Time = 5
value = 4,13

[State 1230, 5]
type = HitDef
trigger1 = AnimElem = 4
trigger2 = animelem = 5
attr = S, SA
animtype = hard
damage = 12,10
hitflag = MFA
guardflag = M
pausetime = 12,12
sparkno = S1041
sparkxy = 0,-62
priority = 7, Hit
hitsound = S4,58
guardsound = S20,6
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -2,-6
air.velocity = -3,-6
airguard.velocity = -3,-1.5
guard.velocity = -2
ground.cornerpush.veloff = -1
air.cornerpush.veloff = -4
guard.cornerpush.veloff = -2
fall = 1
palfx.time = 45
palfx.add = -105,-105,7
palfx.sinadd = 54,54,0,10
palfx.color = 0
palfx.invertall = 1
getpower = 30,30
givepower = 30,30

[State 1230, 6]
type = VarSet
trigger1 = MoveContact
var(3) = 1

;-------------------------
[State 1200, explod]
type = Explod
triggerall = vel y <= 0
triggerall = NumExplod(22440) < 1
triggerall = Random < 350
trigger1 = moveHit = 1
anim = 22440
ID = 22440
sprpriority = 5
postype = p2
pos = -35,-60
random = 0,50
bindtime = 2
ignorehitpause = 1
ownpal = 1

[State 1200, explod]
type = Explod
triggerall = vel y <= 0
triggerall = NumExplod(22441) < 1
triggerall = Random < 300
trigger1 = moveHit = 1
anim = 22441
ID = 22441
sprpriority = 5
postype = p2
pos = -35,-50
random = 100,100
bindtime = 2
ignorehitpause = 1
ownpal = 1

[State 1200, explod]
type = Explod
triggerall = vel y <= 0
triggerall = NumExplod(22442) < 1
triggerall = Random < 450
trigger1 = moveHit = 1
anim = 22442
ID = 22442
sprpriority = 5
postype = p2
pos = 0,-60
random = 100,100
bindtime = 2
ignorehitpause = 1
ownpal = 1

[State 1200, explod]
type = Explod
triggerall = vel y <= 0
triggerall = NumExplod(22443) <1
triggerall = Random < 450
trigger1 = moveHit = 1
anim = 22443
ID = 22443
sprpriority = 5
postype = p2
pos = 0,-60
random = 100,100
bindtime = 2
ignorehitpause = 1
ownpal = 1

[State 1200, explod]
type = Explod
triggerall = vel y <= 0
triggerall = NumExplod(22443) < 2
triggerall = Random < 850
trigger1 = moveHit = 1
anim = 22443
ID = 22443
sprpriority = 5
postype = p2
pos = 0,-54
random = 100,100
bindtime = 2
ignorehitpause = 1
ownpal = 1

[State 1200, explod]
type = Explod
triggerall = vel y <= 0
triggerall = NumExplod(22444) < 2
triggerall = Random < 950
trigger1 = moveHit = 1
anim = 22444
ID = 22444
sprpriority = 5
postype = p2
pos = 0,-75
random = 100,100
bindtime = 2
ignorehitpause = 1
ownpal = 1

[State 1200, explod]
type = Explod
triggerall = vel y <= 0
triggerall = NumExplod(22445) < 4
triggerall = Random < 950
trigger1 = moveHit = 1
anim = 22445
ID = 22445
sprpriority = 5
postype = p2
pos = 0,-15
random = 100,10
bindtime = 1
ignorehitpause = 1
ownpal = 1
;------------------------------

[State 1230, CS jump]
type = ChangeState
trigger1 = AnimTime = 0
value = 21240

;----------------------------------------------

;In the air
[Statedef 21240]
type = A
movetype = A
physics = N
juggle = 4
anim = 21240

[State 1240, 1]
type = screenbound
trigger1 = Time >= 0
value = 1
movecamera = 1,1

[State 210, 3]
type = VelAdd
trigger1 = time >= 0
trigger1 = vel x >= 0.3
x = -0.2

[State 210, 3]
type = VelSet
trigger1 = vel y >= 0
x = 0

[State 1240, 2]
type = VelSet
trigger1 = Time = 0
x = 4.5
y = -8.3

[State 1240, 4]
type = VelAdd
trigger1 = Time > 0
y = .45

[State 1240, 5]
type = Explod
trigger1 = time = 3
anim = 1201
id   = 1201
postype = p1
pausemovetime = 9999
pos = 0,0
sprpriority = 2
ownpal = 1
bindtime = 3

[State 1240, 6]
type = Explod
trigger1 = animelem = 5,=1
anim = 1202
id   = 1202
postype = p1
vel = 0,-.6
pausemovetime = 9999
pos = 0,0
ownpal = 1
sprpriority = 2
bindtime = 1

[State 1240, 7]
type = HitDef
trigger1 = AnimElem = 1
attr = A, SA
animtype = hard
damage = 92,10
guardflag = MA
hitflag   = MAF
pausetime = 12,12
sparkno = S1041
priority = 7, Hit
sparkxy = -10,-80
hitsound = S4,58
guardsound = S20,6
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -4.5,-11.4
air.velocity = -3.0,-11.4
airguard.velocity = -3,-1.5
guard.velocity = -4
ground.cornerpush.veloff = -1
air.cornerpush.veloff = -1
guard.cornerpush.veloff = -4
fall = 1
palfx.time = 45
palfx.add = -105,-105,7
palfx.sinadd = 56,56,0,10
palfx.color = 0
palfx.invertall = 1
getpower = 30,30
givepower = 30,30
yaccel = .5

;-------------------------
[State 1200, explod]
type = Explod
triggerall = vel y <= 0
triggerall = NumExplod(22440) < 1
triggerall = Random < 350
trigger1 = moveHit = 1
anim = 22440
ID = 22440
sprpriority = 5
postype = p2
pos = -35,-60
random = 0,50
bindtime = 2
ignorehitpause = 1
ownpal = 1

[State 1200, explod]
type = Explod
triggerall = vel y <= 0
triggerall = NumExplod(22441) < 1
triggerall = Random < 300
trigger1 = moveHit = 1
anim = 22441
ID = 22441
sprpriority = 5
postype = p2
pos = -35,-50
random = 100,100
bindtime = 2
ignorehitpause = 1
ownpal = 1

[State 1200, explod]
type = Explod
triggerall = vel y <= 0
triggerall = NumExplod(22442) < 1
triggerall = Random < 450
trigger1 = moveHit = 1
anim = 22442
ID = 22442
sprpriority = 5
postype = p2
pos = 0,-60
random = 100,100
bindtime = 2
ignorehitpause = 1
ownpal = 1

[State 1200, explod]
type = Explod
triggerall = vel y <= 0
triggerall = NumExplod(22443) <1
triggerall = Random < 450
trigger1 = moveHit = 1
anim = 22443
ID = 22443
sprpriority = 5
postype = p2
pos = 0,-60
random = 100,100
bindtime = 2
ignorehitpause = 1
ownpal = 1

[State 1200, explod]
type = Explod
triggerall = vel y <= 0
triggerall = NumExplod(22443) < 2
triggerall = Random < 850
trigger1 = moveHit = 1
anim = 22443
ID = 22443
sprpriority = 5
postype = p2
pos = 0,-54
random = 100,100
bindtime = 2
ignorehitpause = 1
ownpal = 1

[State 1200, explod]
type = Explod
triggerall = vel y <= 0
triggerall = NumExplod(22444) < 2
triggerall = Random < 950
trigger1 = moveHit = 1
anim = 22444
ID = 22444
sprpriority = 5
postype = p2
pos = 0,-75
random = 100,100
bindtime = 2
ignorehitpause = 1
ownpal = 1

;------------------------------

[State 1240, CS LAND]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 0
ctrl = 1
;===========================================================
;------------------------------------------------------------------------------------------
[Statedef 21250]
type = S
movetype = A
physics = S
anim = 21230
poweradd = 100
juggle = 4
velset = 0
ctrl = 0

[State 1200, 2]
type = Nothitby
trigger1 = animelem = 3, <=0
value = SCA
time = 1

[State 1230, 3]
type = PlaySnd
trigger1 = Time = 5
value = 4,13

[State 1230, 5]
type = HitDef
trigger1 = AnimElem = 4
trigger2 = animelem = 5
attr = S, SA
animtype = hard
damage = 12,10
hitflag = MFA
guardflag = M
pausetime = 12,12
sparkno = S1041
sparkxy = 0,-62
priority = 7, Hit
hitsound = S4,58
guardsound = S20,6
ground.type = Low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -2,-6
air.velocity = -3,-6
airguard.velocity = -3,-1.5
guard.velocity = -2
ground.cornerpush.veloff = -1
air.cornerpush.veloff = -4
guard.cornerpush.veloff = -2
fall = 1
palfx.time = 45
palfx.add = -105,-105,7
palfx.sinadd = 54,54,0,10
palfx.color = 0
palfx.invertall = 1
getpower = 30,30
givepower = 30,30

[State 1230, 6]
type = VarSet
trigger1 = MoveContact
var(3) = 1

;-------------------------
[State 1200, explod]
type = Explod
triggerall = vel y <= 0
triggerall = NumExplod(22440) < 1
triggerall = Random < 350
trigger1 = moveHit = 1
anim = 22440
ID = 22440
sprpriority = 5
postype = p2
pos = -35,-60
random = 0,50
bindtime = 2
ignorehitpause = 1
ownpal = 1

[State 1200, explod]
type = Explod
triggerall = vel y <= 0
triggerall = NumExplod(22441) < 1
triggerall = Random < 300
trigger1 = moveHit = 1
anim = 22441
ID = 22441
sprpriority = 5
postype = p2
pos = -35,-50
random = 100,100
bindtime = 2
ignorehitpause = 1
ownpal = 1

[State 1200, explod]
type = Explod
triggerall = vel y <= 0
triggerall = NumExplod(22442) < 1
triggerall = Random < 450
trigger1 = moveHit = 1
anim = 22442
ID = 22442
sprpriority = 5
postype = p2
pos = 0,-60
random = 100,100
bindtime = 2
ignorehitpause = 1
ownpal = 1

[State 1200, explod]
type = Explod
triggerall = vel y <= 0
triggerall = NumExplod(22443) <1
triggerall = Random < 450
trigger1 = moveHit = 1
anim = 22443
ID = 22443
sprpriority = 5
postype = p2
pos = 0,-60
random = 100,100
bindtime = 2
ignorehitpause = 1
ownpal = 1

[State 1200, explod]
type = Explod
triggerall = vel y <= 0
triggerall = NumExplod(22443) < 2
triggerall = Random < 850
trigger1 = moveHit = 1
anim = 22443
ID = 22443
sprpriority = 5
postype = p2
pos = 0,-54
random = 100,100
bindtime = 2
ignorehitpause = 1
ownpal = 1

[State 1200, explod]
type = Explod
triggerall = vel y <= 0
triggerall = NumExplod(22444) < 2
triggerall = Random < 950
trigger1 = moveHit = 1
anim = 22444
ID = 22444
sprpriority = 5
postype = p2
pos = 0,-75
random = 100,100
bindtime = 2
ignorehitpause = 1
ownpal = 1

[State 1200, explod]
type = Explod
triggerall = vel y <= 0
triggerall = NumExplod(22445) < 4
triggerall = Random < 950
trigger1 = moveHit = 1
anim = 22445
ID = 22445
sprpriority = 5
postype = p2
pos = 0,-15
random = 100,10
bindtime = 1
ignorehitpause = 1
ownpal = 1
;------------------------------

[State 1230, CS jump]
type = ChangeState
trigger1 = AnimTime = 0
value = 21260

;----------------------------------------------

;In the air
[Statedef 21260]
type = A
movetype = A
physics = N
juggle = 4
anim = 21240

[State 1240, 1]
type = screenbound
trigger1 = Time >= 0
value = 1
movecamera = 1,1

[State 210, 3]
type = VelAdd
trigger1 = time >= 0
trigger1 = vel x >= 0.3
x = -0.2

[State 210, 3]
type = VelSet
trigger1 = vel y >= 0
x = 0

[State 1240, 3]
type = VelSet
trigger1 = Time = 0
x = 6
y = -11

[State 1240, 4]
type = VelAdd
trigger1 = Time > 0
y = .45

[State 1240, 5]
type = Explod
trigger1 = time = 3
anim = 1201
id   = 1201
postype = p1
pausemovetime = 9999
pos = 0,0
sprpriority = 2
ownpal = 1
bindtime = 9

[State 1240, 6]
type = Explod
trigger1 = animelem = 5,=1
anim = 1202
id   = 1202
postype = p1
vel = 0,-.6
pausemovetime = 9999
pos = 0,0
ownpal = 1
sprpriority = 2
bindtime = 1

[State 1240, 7]
type = HitDef
trigger1 = AnimElem = 1
attr = A, SA
animtype = hard
damage = 92,10
guardflag = MA
hitflag   = MAF
pausetime = 12,12
sparkno = S1041
priority = 7, Hit
sparkxy = -10,-80
hitsound = S4,58
guardsound = S20,6
ground.type = High
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -4.5,-11.4
air.velocity = -3.0,-11.4
airguard.velocity = -3,-1.5
guard.velocity = -4
ground.cornerpush.veloff = -1
air.cornerpush.veloff = -1
guard.cornerpush.veloff = -4
fall = 1
palfx.time = 45
palfx.add = -105,-105,7
palfx.sinadd = 56,56,0,10
palfx.color = 0
palfx.invertall = 1
getpower = 30,30
givepower = 30,30
yaccel = .5

;-------------------------
[State 1200, explod]
type = Explod
triggerall = vel y <= 0
triggerall = NumExplod(22440) < 1
triggerall = Random < 350
trigger1 = moveHit = 1
anim = 22440
ID = 22440
sprpriority = 5
postype = p2
pos = -35,-60
random = 0,50
bindtime = 2
ignorehitpause = 1
ownpal = 1

[State 1200, explod]
type = Explod
triggerall = vel y <= 0
triggerall = NumExplod(22441) < 1
triggerall = Random < 300
trigger1 = moveHit = 1
anim = 22441
ID = 22441
sprpriority = 5
postype = p2
pos = -35,-50
random = 100,100
bindtime = 2
ignorehitpause = 1
ownpal = 1

[State 1200, explod]
type = Explod
triggerall = vel y <= 0
triggerall = NumExplod(22442) < 1
triggerall = Random < 450
trigger1 = moveHit = 1
anim = 22442
ID = 22442
sprpriority = 5
postype = p2
pos = 0,-60
random = 100,100
bindtime = 2
ignorehitpause = 1
ownpal = 1

[State 1200, explod]
type = Explod
triggerall = vel y <= 0
triggerall = NumExplod(22443) <1
triggerall = Random < 450
trigger1 = moveHit = 1
anim = 22443
ID = 22443
sprpriority = 5
postype = p2
pos = 0,-60
random = 100,100
bindtime = 2
ignorehitpause = 1
ownpal = 1

[State 1200, explod]
type = Explod
triggerall = vel y <= 0
triggerall = NumExplod(22443) < 2
triggerall = Random < 850
trigger1 = moveHit = 1
anim = 22443
ID = 22443
sprpriority = 5
postype = p2
pos = 0,-54
random = 100,100
bindtime = 2
ignorehitpause = 1
ownpal = 1

[State 1200, explod]
type = Explod
triggerall = vel y <= 0
triggerall = NumExplod(22444) < 2
triggerall = Random < 950
trigger1 = moveHit = 1
anim = 22444
ID = 22444
sprpriority = 5
postype = p2
pos = 0,-75
random = 100,100
bindtime = 2
ignorehitpause = 1
ownpal = 1

;------------------------------

[State 1240, CS LAND]
type = ChangeState
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 0
ctrl = 1
;======================================================================================
;ãSâã
[Statedef 21170]
type    = S
movetype= A
physics = N
poweradd= -1000
ctrl = 0
anim = 21150
velset = 0

[State 1531, 5]
type = PosFreeze
trigger1 = time >= 0

[State 191, 3]
type = Playsnd
trigger1 = time = 0
persistent = 0
value = 23,0

;[State 3500,AfterImage]
;type = AfterImage
;trigger1 = Time = 0
;time = 999
;length = 16
;palcolor = 256
;palinvertall = 0
;palbright = 30,30,30
;palcontrast = 220,100,100
;palpostbright = 0, 0, 0
;paladd = 45,10,10
;palmul = .85,.65,.65
;timegap = 2
;framegap = 4
;trans = add1

[State 3500,AfterImage]
type = AfterImage
trigger1 = Time = 0
time = 999
length = 13
;palcolor = 256
;palinvertall = 0
;palbright = 30,30,30
;palcontrast = 220,100,100
;palpostbright = 0, 0, 0
;paladd = 45,10,10
;palmul = .85,.65,.65
timegap = 2
;timegap = 4
framegap = 6
trans = add1
ignorehitpause = 1 

[State 4120, 1]
type = SuperPause
trigger1 = time = 0
movetime = 30
time = 30
pos = 15, -46
anim = 100

[State 1531, 5]
type = PlaySnd
trigger1 = time = 0
value = S22,1

[State 610, 4]
type = ChangeState
trigger1 = Time = 30
value = 21171

[Statedef 21171]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
anim = 21151
velset = 12,0,0

[State 100, 6]
type = MakeDust
trigger1 = Time >= 0
pos = -10,-2
spacing = 2

[State 1531, 5]
type = PlaySnd
trigger1 = time = 0
value = 24,0

[State 1531, 5]
type = PlaySnd
trigger1 = time = 0
value = 21,3

[State 182, 2]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 4
attr = S, HA
animtype  = Heavy
damage    = 40,5
guardflag = MHC
getpower = 0,0
hitflag = MAFP
pausetime = 4,4
sparkno = -1
sparkxy = -25,-60
priority = 7, Hit
hitsound = S20,2
guardsound = S20,6
ground.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -2
air.velocity = -3,-4
fall = 0
air.fall = 1
fall.recover = 0
air.recover = 0
recover = 0

[State 210, 4]
type = Explod
trigger1 = AnimElem = 4,>= 0
trigger1 = MoveHit
persistent = 0
anim = 7003
pos = 10,-60
postype = p2
sprpriority = 2
supermove = 1
bindtime = 1
ignorehitpause = 1
ownpal = 1

[State 210, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 21172

[Statedef 21172]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
anim = 21152

[State 182, 2]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 1
attr = A, HA
animtype  = Heavy
damage    = 40,5
guardflag = MHC
getpower = 0,0
hitflag = MAFP
pausetime = 0,4
sparkno = -1
sparkxy = -25,-60
priority = 7, Hit
hitsound = S20,2
guardsound = S20,6
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -2
air.velocity = -3,-6
fall = 0
air.fall = 1
fall.recover = 0
air.recover = 0
recover = 0

[State 210, 4]
type = Explod
trigger1 = AnimElem = 1,>= 0
trigger1 = MoveHit
persistent = 0
anim = 7003
pos = 10,-50
postype = p2
sprpriority = 2
supermove = 1
bindtime = 1
ignorehitpause = 1
ownpal = 1

[State 210, 3]
type = ChangeState
trigger1 = Time = 8
value = 21173

[Statedef 21173]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
anim = 21153

[State 210, 3]
type = ChangeState
trigger1 = time = 2
value = 21174

[Statedef 21174]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0
anim = 21103

[State 52, 3]
type = PosSet
trigger1 = Vel Y = 0
y = 0

[State 209, 1]
type = Velset
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
y = 0

[State 210, 3]
type = ChangeState
trigger1 = time = 4
value = 21175

[Statedef 21175]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
anim = 21151
velset = 12,0,0

[State 1531, 5]
type = PlaySnd
trigger1 = time = 0
value = 1,4

[State 100, 6]
type = MakeDust
trigger1 = Time >= 0
pos = -10,-2
spacing = 2

[State 1531, 5]
type = PlaySnd
trigger1 = time = 0
value = 24,0

[State 1531, 5]
type = PlaySnd
trigger1 = time = 0
value = 21,3

[State 182, 2]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 1
attr = S, HA
animtype  = Heavy
damage    = 40,5
guardflag = MHC
getpower = 0,0
hitflag = MAFP
pausetime = 4,4
sparkno = -1
sparkxy = -25,-60
priority = 7, Hit
hitsound = S20,2
guardsound = S20,6
ground.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -2
air.velocity = -3,-4
fall = 0
air.fall = 1
fall.recover = 0
air.recover = 0
recover = 0

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, HA
animtype  = Heavy
damage    = 40,5
guardflag = MHC
getpower = 0,0
hitflag = MAFP
pausetime = 4,4
sparkno = -1
sparkxy = -25,-60
priority = 7, Hit
hitsound = S20,2
guardsound = S20,6
ground.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -2
air.velocity = -3,-4
fall = 0
air.fall = 1
fall.recover = 0
air.recover = 0
recover = 0

[State 210, 4]
type = Explod
trigger1 = AnimElem = 1,>= 0
trigger1 = AnimElem = 2,< 0
trigger1 = MoveHit
persistent = 0
anim = 7003
pos = 10,-50
postype = p2
supermove = 1
sprpriority = 2
bindtime = 1
ignorehitpause = 1
ownpal = 1

[State 210, 4]
type = Explod
trigger1 = AnimElem = 2,>= 0
trigger1 = MoveHit
persistent = 0
anim = 7003
pos = 10,-60
postype = p2
supermove = 1
sprpriority = 2
bindtime = 1
ignorehitpause = 1
ownpal = 1

[State 210, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 21176

[Statedef 21176]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
anim = 21152

[State 182, 2]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 1
attr = A, HA
animtype  = Heavy
damage    = 40,5
guardflag = MHC
getpower = 0,0
hitflag = MAFP
pausetime = 0,4
sparkno = -1
sparkxy = -25,-60
priority = 7, Hit
hitsound = S20,2
guardsound = S20,6
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -2
air.velocity = -3,-6
fall = 0
air.fall = 1
fall.recover = 0
air.recover = 0
recover = 0

[State 210, 4]
type = Explod
trigger1 = AnimElem = 1,>= 0
trigger1 = MoveHit
persistent = 0
anim = 7003
pos = 10,-50
postype = p2
supermove = 1
sprpriority = 2
bindtime = 1
ignorehitpause = 1
ownpal = 1


[State 210, 3]
type = ChangeState
trigger1 = Time = 8
value = 21177

[Statedef 21177]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
anim = 21153

[State 210, 3]
type = ChangeState
trigger1 = time = 2
value = 21178

[Statedef 21178]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0
anim = 21103

[State 52, 3]
type = PosSet
trigger1 = Vel Y = 0
y = 0

[State 209, 1]
type = Velset
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
y = 0

[State 210, 3]
type = ChangeState
trigger1 = time = 4
value = 21179

[Statedef 21179]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
anim = 21151
velset = 10,0,0

[State 100, 6]
type = MakeDust
trigger1 = Time >= 0
pos = -10,-2
spacing = 2

[State 1531, 5]
type = PlaySnd
trigger1 = time = 0
value = 24,0

[State 1531, 5]
type = PlaySnd
trigger1 = time = 0
value = 21,3

[State 1531, 5]
type = PlaySnd
trigger1 = time = 0
value = 1,3

[State 182, 2]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 1
attr = S, HA
animtype  = Heavy
damage    = 40,5
guardflag = MHC
getpower = 0,0
hitflag = MAFP
pausetime = 4,4
sparkno = -1
sparkxy = -25,-60
priority = 7, Hit
hitsound = S20,2
guardsound = S20,6
ground.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -2
air.velocity = -3,-4
fall = 0
air.fall = 1
fall.recover = 0
air.recover = 0
recover = 0

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 2
attr = S, HA
animtype  = Heavy
damage    = 40,5
guardflag = MHC
getpower = 0,0
hitflag = MAFP
pausetime = 4,4
sparkno = -1
sparkxy = -25,-60
priority = 7, Hit
hitsound = S20,2
guardsound = S20,6
ground.type = Low
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -2
air.velocity = -3,-5
fall = 0
air.fall = 1
fall.recover = 0
air.recover = 0
recover = 0

[State 210, 4]
type = Explod
trigger1 = AnimElem = 1,>= 0
trigger1 = AnimElem = 2,< 0
trigger1 = MoveHit
persistent = 0
anim = 7003
pos = 10,-50
postype = p2
sprpriority = 2
supermove = 1
bindtime = 1
ignorehitpause = 1
ownpal = 1

[State 210, 4]
type = Explod
trigger1 = AnimElem = 2,>= 0
trigger1 = MoveHit
persistent = 0
anim = 7003
pos = 10,-60
supermove = 1
postype = p2
sprpriority = 2
bindtime = 1
ignorehitpause = 1
ownpal = 1

[State 210, 3]
type = ChangeState
trigger1 = AnimTime = 0
value = 21180

[Statedef 21180]
type    = A
movetype= A
physics = A
juggle  = 0
poweradd= 0
ctrl = 0
anim = 21240

[State 182, 2]
type = NotHitBy
trigger1 = Time >= 0
value = SCA
time = 1

[State 210, 2]
type = HitDef
trigger1 = AnimElem = 1
attr = A, HA
animtype  = Heavy
damage    = 40,5
guardflag = MHC
getpower = 0,0
hitflag = MAFP
pausetime = 4,4
sparkno = -1
sparkxy = -25,-60
priority = 7, Hit
hitsound = S20,2
guardsound = S20,6
ground.type = High
ground.slidetime = 15
ground.hittime  = 20
ground.velocity = -4,-9
air.velocity = -4, -9
fall = 1
air.fall = 1
fall.recover = 0
air.recover = 0
recover = 0

[State 210, 4]
type = Explod
trigger1 = AnimElem = 1,>= 0
trigger1 = MoveHit
persistent = 0
anim = 7003
pos = 10,-80
postype = p2
sprpriority = 2
supermove = 1
bindtime = 1
ignorehitpause = 1
ownpal = 1

[State 1240, 5]
type = Explod
trigger1 = time = 3
anim = 1201
id   = 1201
postype = p1
pausemovetime = 9999
pos = 0,0
sprpriority = 2
ownpal = 1
bindtime = 7

[State 1240, 6]
type = Explod
trigger1 = animelem = 5,=1
anim = 1202
id   = 1202
postype = p1
vel = 0,-.6
pausemovetime = 9999
pos = 0,0
ownpal = 1
sprpriority = 2
bindtime = 1

;[State 1240, 3]
;type = VelSet
;trigger1 = vel y >= 0
;y = 0

;[State 210, 3]
;type = VelAdd
;trigger1 = time >= 0
;trigger1 = vel y >= 0
;y = 0.2

;[State 1240, 3]
;type = VelSet
;trigger1 = Time = 0
;x = 16
;y = -17

[State 1240, 3]
type = VelSet
trigger1 = Time = 0
x = 16
y = -17

[State 1240, 4]
type = VelAdd
trigger1 = Time > 0
trigger1 = vel y < 0
y = .2

;---------------------
[State 210, 3]
type = VelAdd
trigger1 = time >= 0
trigger1 = vel x >= 0.3
x = -1

[State 210, 3]
type = VelSet
trigger1 = vel y >= 0
x = 0



[State 1240, 3]
type = VelSet
trigger1 = Time = 3
y = -10

[State 1531, 5]
type = PlaySnd
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
persistent = 0
value = 21,4

[State 52, 3]
type = PosSet
trigger1 = Vel Y = 0
y = 0

[State 209, 1]
type = Velset
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
y = 0

[State 210, 1]
type = AfterImageTime
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
Time = 0

[State 209, 1]
type = Changestate
trigger1 = Pos Y >= 0
trigger1 = Vel Y > 0
value = 0
ctrl = 1


