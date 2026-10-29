[Statedef 3000]
type    = S
movetype= A
physics = S
juggle  = 0
ctrl = 0
velset = 0,0
anim = 3000
sprpriority = 2

[State 3000, 1.1]
type = SuperPause
trigger1 = AnimElem = 3
pos = -39,-94
anim = S8100
sound = S8100, 0
time = 75
poweradd = -1000

[State 3000, 1.2]
type = Explod
trigger1 = AnimElem = 3 && NumExplod(6205) = 0
anim = 6205
id = 6205
pos = 20,-80
postype = p1
bindtime = -1
sprpriority = 1
removetime = -1
removeongethit = 1
supermove = 1
bind = p1

[State 3000, 2.1]
type = Explod
trigger1 = AnimElem = 3 && (NumExplod(8470) < 1)
ID = 8470
anim = 8470
postype = Back
pos = 0,0
sprpriority = -105
ownpal = 1
ignorehitpause = 1
supermove = 1

[State 3000, 2.2]
type = EnvColor
trigger1 = AnimElem = 3
value = 0,0,0
time = 75
under = 1
supermove = 1

[State 3000, 2.3]
type = PlaySnd
trigger1 = AnimElem = 3
value = 3000,0
channel = 0
supermove = 1

[State 3000, 3.1]
type = Explod
trigger1 = AnimElem = 3
anim = 3050
postype = p1
pos = 0,0
ownpal = 1
ignorehitpause = 1
sprpriority = 4
supermovetime = 40
removeongethit = 1
scale = 2,2

[State 3000, 3.2]
type = Explod
trigger1 = AnimElem = 3
anim = 3051
postype = p1
pos = 0,0
ownpal = 1
ignorehitpause = 1
sprpriority = 4
supermovetime = 40
removeongethit = 1
scale = 1.9,1.9

[State 3000, 3.3]
type = Explod
trigger1 = AnimElem = 3
anim = 3052
postype = p1
pos = 0,0
ownpal = 1
ignorehitpause = 1
sprpriority = 4
supermovetime = 40
removeongethit = 1
scale = 1.8,1.8

[State 3000, 3.4]
type = Explod
trigger1 = AnimElem = 3
anim = 3053
postype = p1
pos = 0,0
ownpal = 1
ignorehitpause = 1
sprpriority = 4
supermovetime = 40
removeongethit = 1
scale = 1.7,1.7

[State 3000, 3.5]
type = Explod
trigger1 = AnimElem = 3
anim = 3054
postype = p1
pos = 0,0
ownpal = 1
ignorehitpause = 1
sprpriority = 4
supermovetime = 40
removeongethit = 1
scale = 1.6,1.6

[State 3000, 3.6]
type = Explod
trigger1 = AnimElem = 3
anim = 3055
postype = p1
pos = 0,0
ownpal = 1
ignorehitpause = 1
sprpriority = 4
supermovetime = 40
removeongethit = 1
scale = 1.5,1.5

[State 3000, 3.7]
type = Explod
trigger1 = AnimElem = 3
anim = 3056
postype = p1
pos = 0,0
ownpal = 1
ignorehitpause = 1
sprpriority = 4
supermovetime = 40
removeongethit = 1
scale = 1.4,1.4

[State 3000, 3.8]
type = Explod
trigger1 = AnimElem = 3
anim = 3056
postype = p1
pos = 0,0
ownpal = 1
ignorehitpause = 1
sprpriority = 4
supermovetime = 40
removeongethit = 1
scale = 1.3,1.3

[State 3000, 3.9]
type = Explod
trigger1 = AnimElem = 3
anim = 3057
postype = p1
pos = 0,0
ownpal = 1
ignorehitpause = 1
sprpriority = 4
supermovetime = 40
removeongethit = 1
scale = 1.2,1.2

[State 3000, 3.10]
type = Explod
trigger1 = AnimElem = 3
anim = 3058
postype = p1
pos = 0,0
ownpal = 1
ignorehitpause = 1
sprpriority = 4
supermovetime = 40
removeongethit = 1
scale = 1.1,1.1

[State 3000, 3.11]
type = Explod
trigger1 = AnimElem = 3
anim = 3059
postype = p1
pos = 0,0
ownpal = 1
ignorehitpause = 1
sprpriority = 4
supermovetime = 40
removeongethit = 1
scale = 1,1

[State 3000, 3.12]
type = Explod
trigger1 = AnimElem = 3
anim = 8115
postype = p1
pos = 20,-80
ownpal = 1
ignorehitpause = 1
sprpriority = 4
supermovetime = 40
removeongethit = 1

[State 3000, 3.13]
type = RemoveExplod
trigger1 = AnimElem = 4, = 0
id = 6205

[State 3000, 4.1]
type = VarSet
trigger1 = Time = 0
v = 35
value = 0

[State 3000, 4.2]
type = VarAdd
triggerall = (Time%10) = 0
trigger1 = Command = "holdx"
trigger2 = Command = "holdy"
trigger3 = Command = "holdz"
v = 35
value = 1

[State 3000, 7]
type = Explod
anim = 3001
id = 3001
trigger1 = (Time%14) = 10 && NumExplod(3001) = 0
postype = P1
pos = -42,-95
ownpal = 1
persistent = 1
removeongethit = 1
sprpriority = 5

[State 3000, 8]
type = Explod
anim = 7000
trigger1 = (Time%14) = 10
postype = P1
pos = 10,0
ownpal = 1
persistent = 1
removeongethit = 1

[State 3000, 9]
type = Explod
anim = 7001
trigger1 = (Time%14) = 10
postype = P1
pos = 0,0
ownpal = 1
sprpriority = 5
persistent = 1
removeongethit = 1

[State 3000, 10]
type = PlaySnd
trigger1 = (Time%14) = 10
value = 7000,0

[State 3000, 11]
type = Explod
trigger1 = Random = [0,124]
trigger1 = (Time%14) = 10
trigger1 = NumExplod(7104) < 1
anim = 7003
id = 7003
pos = -42,-95
postype = p1
facing = -1
ontop = 1
bindtime = 1
ownpal = 1

[State 3000, 12]
type = Explod
trigger1 = Random = [125,249]
trigger1 = (Time%14) = 10
trigger1 = NumExplod(7003) < 1
anim = 7003
id = 7013
pos = -42,-95
postype = p1
facing = 1
ontop = 1
bindtime = 1
ownpal = 1

[State 3000, 13]
type = Explod
trigger1 = Random = [250,374]
trigger1 = (Time%14) = 10
trigger1 = NumExplod(7013) < 1
anim = 7004
id = 7004
pos = -42,-95
postype = p1
ontop = 1
bindtime = 1
ownpal = 1

[State 3000, 14]
type = Explod
trigger1 = Random = [375,499]
trigger1 = (Time%14) = 10
trigger1 = NumExplod(7004) < 1
anim = 7005
id = 7005
pos = -42,-95
postype = p1
facing = 1
ontop = 1
bindtime = 1
ownpal = 1

[State 3000, 15]
type = Explod
trigger1 = Random = [500,624]
trigger1 = (Time%14) = 10
trigger1 = NumExplod(7005) < 1
anim = 7005
id = 7015
pos = -42,-95
postype = p1
facing = -1
ontop = 1
bindtime = -1
ownpal = 1

[State 3000, 16]
type = Explod
trigger1 = Random = [625,744]
trigger1 = (Time%14) = 10
trigger1 = NumExplod(7015) < 1
anim = 7003
id = 7103
pos = -42,-95
postype = p1
facing = -1
vfacing = -1
ontop = 1
bindtime = 1
ownpal = 1

[State 3000, 17]
type = Explod
trigger1 = Random = [750,874]
trigger1 = (Time%14) = 10
trigger1 = NumExplod(7103) < 1
anim = 7003
id = 7113
pos = -42,-95
postype = p1
facing = 1
vfacing = -1
ontop = 1
bindtime = 1
ownpal = 1

[State 3000, 18]
type = Explod
trigger1 = Random = [875,999]
trigger1 = (Time%14) = 10
trigger1 = NumExplod(7113) < 1
anim = 7004
id = 7104
pos = -42,-95
postype = p1
vfacing = -1
ontop = 1
bindtime = 1
ownpal = 1

[State 3000, 19]
type = ChangeState
triggerall = Var(59) != 2
triggerall = AnimTime = 0
trigger1 = Command != "holdx"
trigger1 = Command != "holdy"
trigger1 = Command != "holdz"
trigger2 = Var(35) = 12
value = 3003
ctrl = 0

[State 3000, 20]
type = PlaySnd
trigger1 = AnimElem = 4
value = 3300,0
channel = 0

[State 3000, 21]
type = Explod
trigger1 = AnimElem = 4, = 0
ID = 8480
anim = 8480
postype = Back
pos = 0,0
sprpriority = -115
bindtime = -1
removetime = -1
ownpal = 1
supermovetime = 9999
removeongethit = 1
under = 1

[State 3000, 22]
type = RemoveExplod
trigger1 = AnimElem = 4, = 0
ID = 8470

[State 3000, 23]
type = ChangeState
triggerall = Var(59) = 2
trigger1 = Time = 20
value = 3003
ctrl = 0

;---------------------------------------------------------------------------
; Gokunetsu Gou Hadou Ken - Attack

[Statedef 3003]
type    = S
movetype= A
physics = S
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0
anim = 3003
sprpriority = 2

[State 3003, 1]
type = RemoveExplod
trigger1 = Time = 0
id = 3001

[State 3003, 2]
type = AfterImage
trigger1 = AnimElem = 1
length = 15
time = 40
trans = add1
PalColor = 0
palbright = 200,0,0
palcontrast = 200,0,0
palpostbright = 0,0,0

[State 3003, 3]
type = Explod
triggerall = (Var(35) = [1,2]) || (Var(59) = 2)
trigger1 = AnimElem = 2, = 1
anim = 1001
id = 1001
postype = P1
pos = 5,5
ownpal = 1
sprpriority = 9

[State 3003, 4]
type = Explod
triggerall = Var(35) = [3,4]
trigger1 = AnimElem = 2, = 1
trigger2 = AnimElem = 6, = 1
anim = 1001
id = 1001
postype = P1
pos = 5,5
ownpal = 1
sprpriority = 9

[State 3003, 5]
type = Explod
triggerall = Var(35) >= 5
trigger1 = AnimElem = 2, = 1
trigger2 = AnimElem = 6, = 1
trigger3 = AnimElem = 10, = 1
anim = 1001
id = 1001
postype = P1
pos = 5,5
ownpal = 1
sprpriority = 9

[State 3003, 6]
type = Projectile
triggerall = (Var(35) = [1,2]) || (Var(59) = 2)
trigger1 = AnimElem = 2, = 0
ProjID = 3010
projanim = 3007
projhitanim = 3006
projremanim = 3006
projsprpriority = 3
projhits = 2
projedgebound = 120
projstagebound = 120
postype = P1
offset = 70,-75
velocity = 12,0
attr = S, HP
animtype  = Back
damage    = 120,12
getpower = 0,0
givepower = 72,0
guardflag = MA
hitflag = MAFP
priority = 7, Hit
pausetime = 0,8
guard.sparkno = S8007
sparkno = S8004
sparkxy = 20,0
hitsound   = S1, 2
guardsound = S0, 1
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5.0,-6.0
fall = 1
air.juggle = 7
air.animtype = Back
air.velocity = -5.0,-6
air.juggle = 3
air.fall = 1
down.velocity = -5.0,-6
down.hittime = 30
down.bounce = 0
envshake.time = 15
envshake.ampl = 7
fall.envshake.time = 15
fall.envshake.ampl = -7
palfx.time = 40
palfx.add = ifelse(Var(25)=1,75,200),ifelse(Var(25)=1,25,80),ifelse(Var(25)=1,95,0)
palfx.mul = ifelse(Var(25)=1,170,220),ifelse(Var(25)=1,80,110),ifelse(Var(25)=1,210,110)
palfx.sinadd = ifelse(Var(25)=1,40,100),ifelse(Var(25)=1,10,20),ifelse(Var(25)=1,50,20),5

[State 3003, 7]
type = PowerAdd
triggerall = Var(35) = [3,4]
trigger1 = Time = 0
value = -500

[State 3003, 8]
type = Projectile
triggerall = Var(35) = [3,4]
trigger1 = AnimElem = 2, = 0
ProjID = 3000
projanim = 3005
projhitanim = 3006
projremanim = 3006
projsprpriority = 3
projhits = 2
projedgebound = 120
projstagebound = 120
postype = P1
offset = 70,-75
velocity = 10,0
attr = S, HP
animtype  = Back
damage    = 70,7
getpower = 0,0
givepower = 42,0
guardflag = MA
hitflag = MAFP
priority = 7, Hit
pausetime = 0,8
guard.sparkno = S8007
sparkno = S8004
sparkxy = 20,0
hitsound   = S1, 2
guardsound = S0, 1
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5.0,-6.0
fall = 1
air.juggle = 5
air.animtype = Back
air.velocity = -5.0,0
air.fall = 1
down.velocity = -5.0,-6
down.hittime = 30
down.bounce = 0
envshake.time = 15
envshake.ampl = 7
fall.envshake.time = 15
fall.envshake.ampl = -7
palfx.time = 40
palfx.add = ifelse(Var(25)=1,75,200),ifelse(Var(25)=1,25,80),ifelse(Var(25)=1,95,0)
palfx.mul = ifelse(Var(25)=1,170,220),ifelse(Var(25)=1,80,110),ifelse(Var(25)=1,210,110)
palfx.sinadd = ifelse(Var(25)=1,40,100),ifelse(Var(25)=1,10,20),ifelse(Var(25)=1,50,20),5

[State 3003, 9]
type = Projectile
triggerall = Var(35) = [3,4]
trigger1 = AnimElem = 6, = 0
ProjID = 3005
projanim = 3007
projhitanim = 3006
projremanim = 3006
projsprpriority = 3
projhits = 2
projedgebound = 120
projstagebound = 120
postype = P1
offset = 70,-75
velocity = 10,0
attr = S, HP
animtype  = Back
damage    = 70,7
getpower = 0,0
givepower = 42,0
guardflag = MA
hitflag = MAFP
priority = 7, Hit
pausetime = 0,10
guard.sparkno = S8007
sparkno = S8004
sparkxy = 20,0
hitsound   = S1, 2
guardsound = S0, 1
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -6,-4
air.velocity = -6,-3
air.animtype = Back
fall = 1
fall.recover = 0
envshake.time = 15
envshake.ampl = 7
fall.envshake.time = 15
fall.envshake.ampl = -7
palfx.time = 40
palfx.add = ifelse(Var(25)=1,75,200),ifelse(Var(25)=1,25,80),ifelse(Var(25)=1,95,0)
palfx.mul = ifelse(Var(25)=1,170,220),ifelse(Var(25)=1,80,110),ifelse(Var(25)=1,210,110)
palfx.sinadd = ifelse(Var(25)=1,40,100),ifelse(Var(25)=1,10,20),ifelse(Var(25)=1,50,20),5

[State 3003, 10]
type = PowerAdd
triggerall = Var(35) >= 5
trigger1 = Time = 0
value = -1000

[State 3003, 11]
type = Projectile
triggerall = Var(35) >= 5
trigger1 = AnimElem = 2, = 0
ProjID = 3000
projanim = 3005
projhitanim = 3006
projremanim = 3006
projsprpriority = 3
projhits = 2
projedgebound = 120
projstagebound = 120
postype = P1
offset = 70,-75
velocity = 8,0
attr = S, HP
animtype  = Back
damage    = 60,6
getpower = 0,0
givepower = 36,0
guardflag = MA
hitflag = MAFP
priority = 7, Hit
pausetime = 0,8
guard.sparkno = S8007
sparkno = S8004
sparkxy = 20,0
hitsound   = S1, 2
guardsound = S0, 1
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5.0,-6.0
fall = 1
air.juggle = 5
air.animtype = Back
air.velocity = -5.0,0
air.fall = 1
down.velocity = -5.0,-6
down.hittime = 30
down.bounce = 0
envshake.time = 15
envshake.ampl = 7
fall.envshake.time = 15
fall.envshake.ampl = -7
palfx.time = 40
palfx.add = ifelse(Var(25)=1,75,200),ifelse(Var(25)=1,25,80),ifelse(Var(25)=1,95,0)
palfx.mul = ifelse(Var(25)=1,170,220),ifelse(Var(25)=1,80,110),ifelse(Var(25)=1,210,110)
palfx.sinadd = ifelse(Var(25)=1,40,100),ifelse(Var(25)=1,10,20),ifelse(Var(25)=1,50,20),5

[State 3003, 12]
type = Projectile
triggerall = Var(35) >= 5
trigger1 = AnimElem = 6, = 0
ProjID = 3005
projanim = 3007
projhitanim = 3006
projremanim = 3006
projsprpriority = 3
projhits = 2
projedgebound = 120
projstagebound = 120
postype = P1
offset = 70,-75
velocity = 8,0
attr = S, HP
damage    = 50,5
getpower = 0,0
givepower = 30,0
animtype = Back
guardflag = MA
hitflag = MAFP
priority = 7, Hit
pausetime = 0,8
guard.sparkno = S8007
sparkno = S8004
sparkxy = 20,0
hitsound   = S1, 2
guardsound = S0, 1
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -5.0,-6.0
fall = 1
air.juggle = 4
air.animtype = Back
air.velocity = -5.0,-6
air.juggle = 5
air.fall = 1
down.velocity = -5.0,-6
down.hittime = 30
down.bounce = 0
envshake.time = 15
envshake.ampl = 7
fall.envshake.time = 15
fall.envshake.ampl = -7
palfx.time = 40
palfx.add = ifelse(Var(25)=1,75,200),ifelse(Var(25)=1,25,80),ifelse(Var(25)=1,95,0)
palfx.mul = ifelse(Var(25)=1,170,220),ifelse(Var(25)=1,80,110),ifelse(Var(25)=1,210,110)
palfx.sinadd = ifelse(Var(25)=1,40,100),ifelse(Var(25)=1,10,20),ifelse(Var(25)=1,50,20),5

[State 3003, 13]
type = Projectile
triggerall = Var(35) >= 5
trigger1 = AnimElem = 10, = 0
ProjID = 3010
projanim = 3005
projhitanim = 3006
projremanim = 3006
projsprpriority = 3
projhits = 2
projedgebound = 120
projstagebound = 120
postype = P1
offset = 70,-75
velocity = 8,0
attr = S, HP
animtype  = Back
damage    = 50,5
getpower = 0,0
givepower = 30,0
guardflag = MA
hitflag = MAFP
priority = 7, Hit
pausetime = 0,8
guard.sparkno = S8007
sparkno = S8004
sparkxy = 20,0
hitsound   = S1, 2
guardsound = S0, 1
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = -6,-4
air.velocity = -6,-3
air.animtype = Back
fall = 1
fall.recover = 0
envshake.time = 15
envshake.ampl = 7
fall.envshake.time = 15
fall.envshake.ampl = -7
palfx.time = 40
palfx.add = ifelse(Var(25)=1,75,200),ifelse(Var(25)=1,25,80),ifelse(Var(25)=1,95,0)
palfx.mul = ifelse(Var(25)=1,170,220),ifelse(Var(25)=1,80,110),ifelse(Var(25)=1,210,110)
palfx.sinadd = ifelse(Var(25)=1,40,100),ifelse(Var(25)=1,10,20),ifelse(Var(25)=1,50,20),5

[State 3003, 14]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1000,0
channel = 0

[State 3003, 15]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1000,1
channel = 1

[State 3003, 16]
type = Width
trigger1 = Time = [2,31]
value = 50,0

[State 3003, 17]
type = Explod
trigger1 = AnimElem = 2
anim = 8910
postype = p1
pos = 0,0
ownpal = 1
bindtime = -1
ignorehitpause = 1
sprpriority = 3
removeongethit = 1

[State 3003, 18]
type = Helper
triggerall = (Var(35) = [1,2]) || (Var(59) = 2) 
trigger1 = AnimElem = 2, = 1
helpertype = Normal
name = "Dust Trail 1"
postype = P1
pos = -4,0
stateno = 3004
ownpal = 1

[State 3003, 19]
type = Helper
triggerall = Var(35) = [3,4] 
trigger1 = AnimElem = 2, = 1
trigger2 = AnimElem = 6, = 1
helpertype = Normal
name = "Dust Trail 2"
postype = P1
pos = -4,0
stateno = 3005
ownpal = 1

[State 3003, 20]
type = Helper
triggerall = Var(35) >= 5
trigger1 = AnimElem = 2, = 1
trigger2 = AnimElem = 6, = 1
trigger3 = AnimElem = 10, = 1
helpertype = Normal
name = "Dust Trail 3"
postype = P1
pos = -4,0
stateno = 3006
ownpal = 1

[State 3003, 21]
type = Explod
trigger1 = (RoundState = 3) && (NumExplod(8400) < 1) && (P2Life <= 0) && (Alive = 1)
trigger1 = (ProjHitTime(3000) = 1) || (ProjHitTime(3005) = 1) || (ProjHitTime(3010) = 1)
ID = 8400
anim = 8400
postype = Back
pos = 0,0
scale = 0.8333,1.0714
sprpriority = -105
ownpal = 1
ignorehitpause = 1
bindtime = -1
removetime = -1

[State 3003, 22]
type = PlaySnd
trigger1 = (NumExplod(8400) != 0) && (RoundState = 3)
value = 8400,0
persistent = 0
ignorehitpause = 1

[State 3003, 23]
type = RemoveExplod
trigger1 = AnimTime = 0
ID = 8480

[State 3003, 24]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1