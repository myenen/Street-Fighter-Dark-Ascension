;-----------------------------------------------------------
;流星落
[Statedef 1200]
type     = S
movetype = A
physics  = N
poweradd= 120
velset = 0,0
anim = 1200
ctrl = 0

[State 1200, 2]
type = VelSet
trigger1 = Time = 9
x = 8

[State 1200, 4]
type = HitDef
trigger1 = AnimElem = 5
attr = S, SA
animtype = Heavy
damage    = 80,2
priority  = 5
guardflag = L
pausetime = 0,0
sparkno = -1
sparkxy = -10,-60
hitsound   = s4,51
guardsound = S20,6
ground.type = Low
ground.slidetime = 12
ground.hittime  = 15
ground.velocity = -2.5, -7
air.velocity = -4,-3
air.type = trip
fall.yvelocity = -5
fall.xvelocity = -5
down.bounce = 1
fall.animtype = back
fall = 1
air.fall = 1

[State 210, 4]
type = Explod
trigger1 = MoveHit
persistent = 0
anim = 7003
pos = 0,-10
postype = p2
sprpriority = 2
supermove = 1
bindtime = 1
ignorehitpause = 1
ownpal = 1

[State 1200, 3]
type = explod
trigger1 = Movehit = 1
trigger1 = Time >= 0
anim = 7130
postype = p2
pos = 0,0
supermove = 1
ownpal = 1
sprpriority = 100
bindtime = 1
ignorehitpause = 1
persistent = 0

[State 1200, 7]
type = velset
trigger1 = vel x <=0
x = 0

;[State 1200, 5]
;type = ChangeState
;trigger1 = MoveHit
;value = 1201
;ctrl = 0

[State 1200, 2]
type = velSet
trigger1 = AnimElem = 7
x = 0

[State 1200, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 1210
ctrl = 0

[Statedef 1201]
type    = A
movetype= A
phsyics = N
anim = 1205
ctrl = 0
ownpal = 1

[State 1041, 1]
type = velset
trigger1 = Time = 0
x = 3
y = -8

[State 1041, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = s4, 52

[State 1041, 2]
type = explod
trigger1 = AnimTime = 7
anim = 7040
postype = p1
pos = 60,6
ownpal = 1
sprpriority = 4
bindtime = 1
ignorehitpause = 1
persistent = 0

[State 1041, 3]
type = explod
trigger1 = Movehit = 1
trigger1 = Time >= 1
anim = 7150
postype = p2
pos = 0,0
supermove = 1
ownpal = 1
sprpriority = 100
bindtime = 1
ignorehitpause = 1
persistent = 0

[State 1041, 3]
type = HitDef
trigger1 = AnimElem = 5
attr = S, SA
animtype = Hard
damage = 70
guardflag = MAF
pausetime = 6,11
sparkxy = -3,-68
hitsound = s4,16
guardsound = s20,6
ground.type = Hard
ground.slidetime = 25
ground.hittime = 25
ground.velocity = -4.5, 4   
air.animtype = low
air.velocity = -4.5, 4
fall = 1
fall.recover = 0
down.bounce = 2
palfx.time = 80
palfx.add = -105,-30,80
palfx.sinadd = 54,54,0,10
palfx.color = 0
palfx.invertall = 1

[State 1041, 3]
type = explod
trigger1 = Movehit = 1
trigger1 = AnimElem = 6
anim = 7172
postype = p2
pos = 0,0
supermove = 1
ownpal = 1
sprpriority = 100
bindtime = 28
ignorehitpause = 1
persistent = 0

[State 1041, 13]
type = velset
trigger1 = AnimTime = 9
y = 0

[State 1041, 14] 
type = VelAdd
trigger1 = Time = 10 
y = 2.8

[State 1041, 15] 
type = VelAdd
trigger1 = Time >= 11
y = 0.2

[State 1041, 15] 
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -2
type = ChangeState
value = 1211

;---------------------------------------------------------------------------
[Statedef 1210]
type    = A
movetype= A
anim = 1210
ctrl = 0
ownpal = 1

[State 1051, 1]
type = velset
trigger1 = Time = 0
x = 3.5
y = -7

[State 1051, 1]
type = PlaySnd
trigger1 = AnimElem = 4
value = s4, 52

[State 1051, 2]
type = explod
trigger1 = AnimTime = 7
anim = 7040
postype = p1
pos = 60,6
ownpal = 1
sprpriority = 4
bindtime = 1
ignorehitpause = 1
persistent = 0

[State 1051, 3]
type = HitDef
triggerall = Palno = 1
trigger1 = AnimElem = 5
attr = S, SA
animtype = Hard
damage = 70
guardflag = MAF
pausetime = 2,15
sparkno = -1
sparkxy = -3,-68
hitsound = s4,16
guardsound = s20,6
ground.type = Hard
ground.slidetime = 25
ground.hittime = 25
ground.velocity = -4.5, 4   
air.animtype = low
air.velocity = -4.5, 4
fall = 1
fall.recover = 0
down.bounce = 2
palfx.time = 60
palfx.add = -105,-30,80
palfx.sinadd = 54,54,0,10
palfx.color = 0
palfx.invertall = 1

[State 1051, 3]
type = HitDef
triggerall = Palno = 2
trigger1 = AnimElem = 5
attr = S, SA
animtype = Hard
damage = 70
guardflag = MAF
pausetime = 2,15
sparkno = -1
sparkxy = -3,-68
hitsound = s4,16
guardsound = s20,6
ground.type = Hard
ground.slidetime = 25
ground.hittime = 25
ground.velocity = -4.5, 4   
air.animtype = low
air.velocity = -4.5, 4
fall = 1
fall.recover = 0
down.bounce = 2
palfx.time = 60
palfx.add = -155,-50,-35
palfx.sinadd = 54,54,0,10
palfx.color = 0
palfx.invertall = 1

[State 1051, 3]
type = HitDef
triggerall = Palno = 3
trigger1 = AnimElem = 5
attr = S, SA
animtype = Hard
damage = 70
guardflag = MAF
pausetime = 2,15
sparkno = -1
sparkxy = -3,-68
hitsound = s4,16
guardsound = s20,6
ground.type = Hard
ground.slidetime = 25
ground.hittime = 25
ground.velocity = -4.5, 4   
air.animtype = low
air.velocity = -4.5, 4
fall = 1
fall.recover = 0
down.bounce = 2
palfx.time = 60
palfx.add = 255,0,-105
palfx.sinadd = 54,54,0,10
palfx.color = 0
palfx.invertall = 1

[State 1051, 3]
type = HitDef
triggerall = Palno = 4
trigger1 = AnimElem = 5
attr = S, SA
animtype = Hard
damage = 70
guardflag = MAF
pausetime = 2,15
sparkno = -1
sparkxy = -3,-68
hitsound = s4,16
guardsound = s20,6
ground.type = Hard
ground.slidetime = 25
ground.hittime = 25
ground.velocity = -4.5, 4   
air.animtype = low
air.velocity = -4.5, 4
fall = 1
fall.recover = 0
down.bounce = 2
palfx.time = 60
palfx.add = -13,-125,50
palfx.sinadd = 54,54,0,10
palfx.color = 0
palfx.invertall = 1

[State 1051, 3]
type = HitDef
triggerall = Palno = 5
trigger1 = AnimElem = 5
attr = S, SA
animtype = Hard
damage = 70
guardflag = MAF
pausetime = 2,15
sparkno = -1
sparkxy = -3,-68
hitsound = s4,16
guardsound = s20,6
ground.type = Hard
ground.slidetime = 25
ground.hittime = 25
ground.velocity = -4.5, 4   
air.animtype = low
air.velocity = -4.5, 4
fall = 1
fall.recover = 0
down.bounce = 2
palfx.time = 60
palfx.add = -105,-105,-105
palfx.sinadd = 54,54,0,10
palfx.color = 0
palfx.invertall = 1

[State 1051, 3]
type = HitDef
triggerall = Palno = 6
trigger1 = AnimElem = 5
attr = S, SA
animtype = Hard
damage = 70
guardflag = MAF
pausetime = 2,15
sparkno = -1
sparkxy = -3,-68
hitsound = s4,16
guardsound = s20,6
ground.type = Hard
ground.slidetime = 25
ground.hittime = 25
ground.velocity = -4.5, 4   
air.animtype = low
air.velocity = -4.5, 4
fall = 1
fall.recover = 0
down.bounce = 2
palfx.time = 60
palfx.add = -105,-105,-105
palfx.sinadd = 54,54,0,10
palfx.color = 0
palfx.invertall = 1

[State 1051, 3]
type = explod
trigger1 = Movehit = 1
;rigger1 = AnimElem = 6
anim = 7105
postype = p2
pos = 0,0
supermove = 1
ownpal = 1
sprpriority = 100
bindtime = 28
ignorehitpause = 1
persistent = 0

[State 1051, 13]
type = velset
trigger1 = AnimTime = 9
y = 0

[State 1051, 14] 
type = VelAdd
trigger1 = Time = 10 
y = 2.8

[State 1051, 15] 
type = VelAdd
trigger1 = Time >= 11
y = 0.1

[State 1051, 15] 
trigger1 = Vel Y > 0
trigger1 = Pos Y >= -2
type = ChangeState
value = 1211

[Statedef 1211]
type    = S
movetype= I
physics = S
ownpal = 1

[State 3012, 3]
type = AfterImage
trigger1 = time = 0
time = 0
PalBright   =   0,  0,  0
PalContrast = 50,50,50
PalMul      =  1,1,1
framegap = 6

[State 1022, 1]
type = ChangeAnim
trigger1 = Time = 0
value = 1211

[State 1022, 2]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0

[State 1022, 3]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1022, 4]
type = CtrlSet
trigger1 = AnimTime = 0
value = 1

[State 1022, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0

;----------------------------------------------------------------------
; ブロッキング 
[Statedef 18000] 
type = S　
movetype= I
physics = S
juggle = 0
ctrl = 0

[State 20, 3]
type = ChangeAnim
Triggerall = var(28) = 0
trigger1 = Time = 0
value = 18000

[State 20, 3]
type = ChangeAnim
Triggerall = var(28) = 1
trigger1 = Time = 0
value = 20020

[State 1700, 1]
type = VelSet
Triggerall = var(28) = 0
trigger1 = AnimElem = 1
x = 2.6

[state 9500,1]
type = ReversalDef
trigger1 = Time = 0
attr = S,NT
reversal.attr = SA, NA, SA, HA, SP, HP, NP
pausetime = 0,15
sparkno = -1
sprpriority = 2
p1stateno = 18100

[State 1030, 4] 
type = ChangeState 
trigger1 = animTime = 0
value = 20
ctrl = 1

[Statedef 20022] 
type = S　
movetype= I
physics = S
juggle = 0
ctrl = 0

[State 20, 3]
type = ChangeAnim
Triggerall = var(28) = 1
trigger1 = Time = 0
value = 20023

[State 1030, 4] 
type = ChangeState 
trigger1 = animTime = 0
value = 20
ctrl = 1
;----------------------------------------------------------------------
;ブロッキング2
[Statedef 18100] 
type = S 
movetype= I 
physics = N 
anim = 18100
velset = -0.05,0 

[State 1031, 1] 
type = PlayerPush 
trigger1 = Time >= 0 
value = 0

[State 1031, 2] 
type = PowerAdd
trigger1 = Time = 0 
value = 150

[State 9550, 50]
type = PalFX
trigger1 = Time = 0
time = 6
add = 80,80,255

[State 1031, 2] 
type = Playsnd 
trigger1 = Time = 0 
value = 4,46
volume = 255

[State 180, 2]
type = Explod
trigger1 = time = 0
id = 10000
anim = 10000
pos = 27,-62
sprpriority = 2
ownpal = 1
removeongethit = 1

[State 180, 2]
type = Explod
trigger1 = time = 0
id = 10001
anim = 10001
pos = 25,-62
ontop = 1
ownpal = 1
removeongethit = 1

[State 1031, 3] 
type = ChangeState 
Trigger1 = AnimTime = 0 
value = 0 
ctrl = 1

;----------------------------------------------------------------------
; 下段ブロッキング
[Statedef 18200] 
type = C
movetype= I
physics = S
juggle = 0
ctrl = 0
velset = 0,0

[State 11, 1]
type = ChangeAnim
Triggerall = var(28) = 0
trigger1 = Time = 0
value = 18200

[State 11, 1]
type = ChangeAnim
Triggerall = var(28) = 1
trigger1 = Time = 0
value = 20010

[state 9500,1]
type = ReversalDef
trigger1 = Time = 0
attr = C,NT
reversal.attr = SCA, NA, SA, HA, SP, HP, NP
pausetime = 0,15
sparkno = -1
sprpriority = 2
p1stateno = 18300

[State 1030, 4] 
type = ChangeState 
trigger1 = AnimTime = 0
value = 11
ctrl = 1
;----------------------------------------------------------------------
;下段ブロッキング２
[Statedef 18300] 
type = C
movetype= I 
physics = N 
anim = 18300
velset = 0,0 

[State 1031, 1] 
type = PlayerPush 
trigger1 = Time >= 0 
value = 0

[State 9550, 50]
type = PalFX
trigger1 = Time = 0
time = 6
add = 80,80,255

[State 1031, 2] 
type = PowerAdd
trigger1 = Time = 0 
value = 150

[State 1031, 2] 
type = Playsnd 
trigger1 = Time = 0 
value = 4,46
volume = 255

[State 180, 2]
type = Explod
trigger1 = time = 0
id = 10000
anim = 10000
pos = 27,-22
sprpriority = 2
ownpal = 1
removeongethit = 1

[State 180, 2]
type = Explod
trigger1 = time = 0
id = 10001
anim = 10001
pos = 28,-20
ontop = 1
ownpal = 1
removeongethit = 1

[State 1031, 3] 
type = ChangeState 
Trigger1 = AnimTime = 0 
value = 11
ctrl = 1

;----------------------------------------------------------------------
;空中ブロッキング
[Statedef 18400]
type    = A
physics = N
movetype = I
sprpriority = 0
anim = 18500

[State 586,init]
type = VarSet
trigger1 = 1
v = 26
value = 0

[State 586,Go]
type = ChangeState
trigger1 = 1
value = 18500

[Statedef 18500]
type    = A
movetype= I
physics = A
juggle  = 0
velset = -2.5,-2.9
anim = 18500
ctrl = 0
sprpriority = 2

[state 587, ctrlset]
type = ctrlset
trigger1 = time = 1
value = 1

[State 587, init]
type = VarSet
trigger1 = time = 0
v = 7
value = 0

[State 587, 1]
type = Pause
trigger1 = time = 0
time = 7

[State 587, 1]
type = PosFreeze
trigger1 = Time <= 7
time = 2

[State 1031, 2] 
type = PowerAdd
trigger1 = Time = 0 
value = 150

[State 1031, 2] 
type = Playsnd 
trigger1 = Time = 0 
value = 4,46
volume = 255

[State 180, 2]
type = Explod
trigger1 = time = 0
id = 10000
anim = 10000
pos = 27,-22
sprpriority = 2
ownpal = 1
removeongethit = 1

[State 180, 2]
type = Explod
trigger1 = time = 0
id = 10001
anim = 10001
pos = 28,-20
ontop = 1
ownpal = 1
removeongethit = 1

[State 587, 1]
type = NotHitBy
trigger1 = Time <= 7
value = SCA
time = 2

[State 9550, 50]
type = PalFX
trigger1 = Time = 0
time = 6
add = 80,80,255

[State 587, 5]
type = PlayerPush
trigger1 = time >= 0
value = 0

[State 587, ReBlock]	
type = VarSet
trigger1 = command = "block"
trigger1 = Var(25) <= 7
v = 25
value = 12


[State 587, 2]
type = ChangeState
trigger1 = Animtime = 0
value = 50
ctrl = 1

;----------------------------------------------------------
;爆弾パチキ
[Statedef 2300]
type    = S
movetype= A
physics = S
juggle  = 5
velset = 0,0
ctrl = 0
anim = 2300

[State 813, 7]
type = Width
trigger1 = time >= 0
edge = 20,20

[State 1800, 1]
type = HitDef
trigger1 = var(5)<=0
trigger1 = p2stateno != 150 && 151 && 152 && 153 && 130 && 131 && 140
Trigger1 = Time = 0
Trigger1 = palno = 1
attr = S, ST          
hitflag = M          
priority = 4, Miss    
sparkxy = -10,-60
sparkno = S307
sprpriority = 1  
hitsound = 240,0     
p2facing = 1          
p1stateno = 2301       
p2stateno = 2302       
air.juggle = 11
fall = 1
fall.recover = 0

[State 1800, 1]
type = HitDef
trigger1 = var(5)<=0
trigger1 = p2stateno != 150 && 151 && 152 && 153 && 130 && 131 && 140
Trigger1 = Time = 0
Trigger1 = palno = 2
attr = S, ST          
hitflag = M          
priority = 4, Miss    
sparkno = S307
sparkxy = -10,-60
sprpriority = 1  
hitsound = 240,0     
p2facing = 1          
p1stateno = 2301       
p2stateno = 2305   
air.juggle = 11
fall = 1
fall.recover = 0

[State 1800, 1]
type = HitDef
trigger1 = var(5)<=0
trigger1 = p2stateno != 150 && 151 && 152 && 153 && 130 && 131 && 140
Trigger1 = Time = 0
Trigger1 = palno = 3
attr = S, ST          
hitflag = M          
priority = 4, Miss    
sparkno = S307
sparkxy = -10,-60
sprpriority = 1  
hitsound = 240,0     
p2facing = 1          
p1stateno = 2301       
p2stateno = 2307  
air.juggle = 11
fall = 1
fall.recover = 0

[State 1800, 1]
type = HitDef
trigger1 = var(5)<=0
trigger1 = p2stateno != 150 && 151 && 152 && 153 && 130 && 131 && 140
Trigger1 = Time = 0
Trigger1 = palno = 4
attr = S, ST          
hitflag = M          
priority = 4, Miss    
sparkno = S307
sparkxy = -10,-60
sprpriority = 1  
hitsound = 240,0     
p2facing = 1          
p1stateno = 2301       
p2stateno = 2309
air.juggle = 11
fall = 1
fall.recover = 0

[State 1800, 1]
type = HitDef
trigger1 = var(5)<=0
trigger1 = p2stateno != 150 && 151 && 152 && 153 && 130 && 131 && 140
Trigger1 = Time = 0
Trigger1 = palno = 5
attr = S, ST          
hitflag = M          
priority = 4, Miss    
sparkno = S307
sparkxy = -10,-60
sprpriority = 1  
hitsound = 240,0     
p2facing = 1          
p1stateno = 2301       
p2stateno = 2311
air.juggle = 11
fall = 1
fall.recover = 0

[State 1800, 1]
type = HitDef
trigger1 = var(5)<=0
trigger1 = p2stateno != 150 && 151 && 152 && 153 && 130 && 131 && 140
Trigger1 = Time = 0
Trigger1 = palno = 6
attr = S, ST          
hitflag = M          
priority = 4, Miss    
sparkno = S307
sparkxy = -10,-60
sprpriority = 1  
hitsound = 240,0     
p2facing = 1          
p1stateno = 2301       
p2stateno = 2313  
air.juggle = 11
fall = 1
fall.recover = 0

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 2
volume = 20
value = 1,7
channel = 0

[State 1800, 2]
type = ChangeState
trigger1 = !MoveContact
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 2301] 
type    = S
movetype= A
physics = S
anim = 2301
sprpriority = 1
velset = 0,0
poweradd = 100

[State 813, 7]
type = Width
trigger1 = time >= 0
edge = 50,20

[State 301, Bind]
type = TargetBind
trigger1 = animelem = 3, <0
pos = 45, 0
time = 1

[State 301, Bind]
type = TargetBind
trigger1 = animelem = 3, >=0
trigger1 = animelem = 4, <0
pos = 31, -98
time = 1

[State 301, Bind]
type = TargetBind
trigger1 = animelem = 4, >=0
trigger1 = animelem = 5, <0
pos = 28, -98
time = 1

[State 301, Bind]
type = TargetBind
trigger1 = animelem = 5, >=0
trigger1 = animelem = 6, <0
pos = 20, -95
time = 1

[State 301, Bind]
type = TargetBind
trigger1 = animelem = 6, >=0
trigger1 = animelem = 7, <0
pos = 25,-95
time = 1

[State 301, Bind]
type = TargetBind
trigger1 = animelem = 7, >=0
trigger1 = animelem = 8, <0
pos = 20, -95
time = 1

[State 301, Bind]
type = TargetBind
trigger1 = animelem = 8, >=0
trigger1 = animelem = 9, <0
pos = 45, -88
time = 1

[State 301, Bind]
type = targetstate
trigger1 = animelem = 8
trigger1 = palno = 1
value = 2303

[State 301, Bind]
type = targetstate
trigger1 = animelem = 8
trigger1 = palno = 2
value = 2306

[State 301, Bind]
type = targetstate
trigger1 = animelem = 8
trigger1 = palno = 3
value = 2308

[State 301, Bind]
type = targetstate
trigger1 = animelem = 8
trigger1 = palno = 4
value = 2310

[State 301, Bind]
type = targetstate
trigger1 = animelem = 8
trigger1 = palno = 5
value = 2312

[State 301, Bind]
type = targetstate
trigger1 = animelem = 8
trigger1 = palno = 6
value = 2314

[State 301, Bind]
type = targetlifeadd
trigger1 = animelem = 8, =2
value = -225

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 3
volume = 30
value = 4,25

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 8, = 1
volume = 120
value = 4,12

[State 200, 1]
type = PlaySnd
trigger1 = time = 20
volume = 255
value = 99,14

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 8, =0
volume = 30
value = 4,26

[State 180, 2]
type = Explod
trigger1 = animelem = 8
id = 61
anim = F61
pos = 48,0
sprpriority = -1
ownpal = 1
removetime = 14

[State 3010, Envshake]
type = envshake
Trigger1 = animelem = 8, = 0
time = 15
ampl = -8
freq = 105

[State 180, 2]
type = Explod
trigger1 = numexplod(1508) < 12
trigger1 = animelem = 8, = [0, 10]
id = 1508
anim = 1508
pos = 50,-85
sprpriority = 2
random = 70,70
ownpal = 1
removetime = 18

[State 180, 2]
type = Explod
trigger1 = numexplod(1509) < 7
trigger1 = animelem = 8, = [4,14]
id = 1509
anim = 1509
pos = 50,-85
random = 50,50
sprpriority = 3
ownpal = 1
removetime = 15

[State 301, liftoff]
type = ChangeState
Trigger1 = animTime = 0
value = 0
ctrl = 1

[Statedef 2302]
type    = S
movetype= H
physics = S
velset = 0,0
ctrl = 0

[State 1800, 2]
type = screenbound
Trigger1 = Time >= 0
value = 1
movecamera = 0,0

[State 1800, 2]
type = changeanim2
Trigger1 = Time = 0
value = 2302

[State 1800, 2]
type = null
Trigger1 = AnimTime = 0
value = 2303
ctrl = 0

[Statedef 2303]
type    = S
movetype= H
physics = N
velset = 0,0

[State 1800, 2]
type = screenbound
Trigger1 = Time >= 0
value = 1
movecamera = 0,0

[State 5000, 1]
type = palfx
trigger1 = Time = 0
time = 35
add = -105,-30,80
sinadd = 54,54,0,10
color = 0
invertall = 1

[State 5000, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 2303

[State 5000, 6]
type = changestate
trigger1 = animtime = 0
value = 2304

[State 5000, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

[Statedef 2305]
type    = S
movetype= H
physics = S
velset = 0,0
ctrl = 0

[State 1800, 2]
type = screenbound
Trigger1 = Time >= 0
value = 1
movecamera = 0,0

[State 1800, 2]
type = changeanim2
Trigger1 = Time = 0
value = 2302

[State 1800, 2]
type = null
Trigger1 = AnimTime = 0
value = 2306
ctrl = 0

[Statedef 2306]
type    = S
movetype= H
physics = N
velset = 0,0

[State 1800, 2]
type = screenbound
Trigger1 = Time >= 0
value = 1
movecamera = 0,0

[State 5000, 1]
type = palfx
trigger1 = Time = 0
time = 35
add = -155,-50,-35
sinadd = 54,54,0,10
color = 0
invertall = 1

[State 5000, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 2303

[State 5000, 6]
type = changestate
trigger1 = animtime = 0
value = 2304

[State 5000, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

[Statedef 2307]
type    = S
movetype= H
physics = S
velset = 0,0
ctrl = 0

[State 1800, 2]
type = screenbound
Trigger1 = Time >= 0
value = 1
movecamera = 0,0

[State 1800, 2]
type = changeanim2
Trigger1 = Time = 0
value = 2302

[State 1800, 2]
type = null
Trigger1 = AnimTime = 0
value = 2308
ctrl = 0

[Statedef 2308]
type    = S
movetype= H
physics = N
velset = 0,0

[State 1800, 2]
type = screenbound
Trigger1 = Time >= 0
value = 1
movecamera = 0,0

[State 5000, 1]
type = palfx
trigger1 = Time = 0
time = 35
add = 255,0,-105
sinadd = 54,54,0,10
color = 0
invertall = 1

[State 5000, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 2303

[State 5000, 6]
type = changestate
trigger1 = animtime = 0
value = 2304

[State 5000, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

[Statedef 2309]
type    = S
movetype= H
physics = S
velset = 0,0
ctrl = 0

[State 1800, 2]
type = screenbound
Trigger1 = Time >= 0
value = 1
movecamera = 0,0

[State 1800, 2]
type = changeanim2
Trigger1 = Time = 0
value = 2302

[State 1800, 2]
type = null
Trigger1 = AnimTime = 0
value = 2310
ctrl = 0

[Statedef 2310]
type    = S
movetype= H
physics = N
velset = 0,0

[State 1800, 2]
type = screenbound
Trigger1 = Time >= 0
value = 1
movecamera = 0,0

[State 5000, 1]
type = palfx
trigger1 = Time = 0
time = 35
add = -13,-125,50
sinadd = 54,54,0,10
color = 0
invertall = 1

[State 5000, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 2303

[State 5000, 6]
type = changestate
trigger1 = animtime = 0
value = 2304

[State 5000, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

[Statedef 2311]
type    = S
movetype= H
physics = S
velset = 0,0
ctrl = 0

[State 1800, 2]
type = screenbound
Trigger1 = Time >= 0
value = 1
movecamera = 0,0

[State 1800, 2]
type = changeanim2
Trigger1 = Time = 0
value = 2302

[State 1800, 2]
type = null
Trigger1 = AnimTime = 0
value = 2312
ctrl = 0

[Statedef 2312]
type    = S
movetype= H
physics = N
velset = 0,0

[State 1800, 2]
type = screenbound
Trigger1 = Time >= 0
value = 1
movecamera = 0,0

[State 5000, 1]
type = palfx
trigger1 = Time = 0
time = 35
add = -105,-105,-105
sinadd = 54,54,0,10
color = 0
invertall = 1

[State 5000, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 2303

[State 5000, 6]
type = changestate
trigger1 = animtime = 0
value = 2304

[State 5000, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

[Statedef 2313]
type    = S
movetype= H
physics = S
velset = 0,0
ctrl = 0

[State 1800, 2]
type = screenbound
Trigger1 = Time >= 0
value = 1
movecamera = 0,0

[State 1800, 2]
type = changeanim2
Trigger1 = Time = 0
value = 2302

[State 1800, 2]
type = null
Trigger1 = AnimTime = 0
value = 2314
ctrl = 0

[Statedef 2314]
type    = S
movetype= H
physics = N
velset = 0,0

[State 1800, 2]
type = screenbound
Trigger1 = Time >= 0
value = 1
movecamera = 0,0

[State 5000, 1]
type = palfx
trigger1 = Time = 0
time = 35
add = -105,-105,-105
sinadd = 54,54,0,10
color = 0
invertall = 1

[State 5000, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 2303

[State 5000, 6]
type = changestate
trigger1 = animtime = 0
value = 2304

[State 5000, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

[Statedef 2304]
type    = A
movetype= H
physics = N
velset = -4,-4
ctrl = 0

[State 5030, 3]
type = posadd
trigger1 = time = 0
y = 70 

[State 5030, 3]
type = selfState
triggerall = !HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0    
trigger2 = Pos Y >= 10  
value = 5040

[State 5030, 4]
type = selfstate
triggerall = HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0    
trigger2 = Pos Y >= 10  
value = 5050

[State 5030, 5]
type = selfState
trigger1 = AnimTime = 0
value = 5035

;---------------------------------------------------------------------------
;弱ブラックアウト
[Statedef 1700]
type = S
movetype = I
physics = N
anim = 1700
poweradd = 50
velset = 0
ctrl = 0

[State 961, PalFX 1]
type = PalFX
trigger1 = Animelem = 4
time = 2
add = -60,-60,-60
[State 961, PalFX 1]
type = PalFX
trigger1 = Animelem = 5
time = 2
add = -120,-120,-120
[State 961, PalFX 1]
type = PalFX
trigger1 = Animelem = 6
time = 1
add = -180,-180,-180
[State 961, PalFX 1]
type = PalFX
trigger1 = Animelem = 10
time = 1
add = -60,-60,-60
[State 961, PalFX 1]
type = PalFX
trigger1 = Animelem = 9
time = 1
add = -120,-120,-120
[State 961, PalFX 1]
type = PalFX
trigger1 = Animelem = 7
time = 8
add = -180,-180,-180

[State 1010, 4]
type = Projectile
triggerall = time = 0
trigger1 = (prevstateno = 1000) || (prevstateno = 1006)
ProjAnim = 1002
ProjRemovetime = 10
offset = 10,-40
projshadow = 68,68,68
projsprpriority = 2

[State 1700, 0]
type = PlaySnd
trigger1 = animelem = 3, = 3
value = 4,24

[State 1700, 0]
type = varset
trigger1 = time = 0
v = 2
value = 0

[State 1700, 1]
type = VelSet
trigger1 = AnimElem = 3, = 3
x = 11

[State 1700, 2]
type = Veladd
trigger1 = AnimElem = 3, > 3
x = -0.2

[State 1700, 3]
type = PlayerPush
trigger1 = (Time > 10) && (Time < 30)
value = 0

[State 1700, 4]
type = AfterImage
trigger1 = AnimElem = 4, = 3
time = 14
length = 12
framegap = 6

[State 1700, 5]
type = VelSet
trigger1 = AnimElem = 12, = 3
x = 0

[State 1700, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------
;中ブラックアウト
[Statedef 1705]
type = S
movetype = I
physics = N
anim = 1705
poweradd = 50
velset = 0
ctrl = 0

[State 961, PalFX 1]
type = PalFX
trigger1 = Animelem = 4
time = 2
add = -60,-60,-60
[State 961, PalFX 1]
type = PalFX
trigger1 = Animelem = 5
time = 2
add = -120,-120,-120
[State 961, PalFX 1]
type = PalFX
trigger1 = Animelem = 6
time = 1
add = -180,-180,-180
[State 961, PalFX 1]
type = PalFX
trigger1 = Animelem = 10
time = 1
add = -60,-60,-60
[State 961, PalFX 1]
type = PalFX
trigger1 = Animelem = 9
time = 1
add = -120,-120,-120
[State 961, PalFX 1]
type = PalFX
trigger1 = Animelem = 7
time = 8
add = -180,-180,-180

[State 1010, 4]
type = Projectile
triggerall = time = 0
trigger1 = (prevstateno = 1000) || (prevstateno = 1006)
ProjAnim = 1002
ProjRemovetime = 10
offset = 10,-40
projshadow = 68,68,68
projsprpriority = 2

[State 1700, 0]
type = PlaySnd
trigger1 = animelem = 3, = 3
value = 4,24

[State 1700, 0]
type = varset
trigger1 = time = 0
v = 2
value = 0

[State 1700, 1]
type = VelSet
trigger1 = AnimElem = 3, = 3
x = 11

[State 1700, 2]
type = Veladd
trigger1 = AnimElem = 3, > 3
x = -0.2

[State 1700, 3]
type = PlayerPush
trigger1 = (Time > 10) && (Time < 30)
value = 0

[State 1700, 4]
type = AfterImage
trigger1 = AnimElem = 4, = 3
time = 14
length = 12
framegap = 6

[State 1700, 5]
type = VelSet
trigger1 = AnimElem = 12, = 3
x = 0

[State 1700, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;--------------------
;強ブラックアウト
[Statedef 1710]
type = S
movetype = I
physics = N
anim = 1710
velset = 0
poweradd = 50
ctrl = 0

[State 961, PalFX 1]
type = PalFX
trigger1 = Animelem = 4
time = 2
add = -60,-60,-60
[State 961, PalFX 1]
type = PalFX
trigger1 = Animelem = 5
time = 2
add = -120,-120,-120
[State 961, PalFX 1]
type = PalFX
trigger1 = Animelem = 6
time = 3
add = -180,-180,-180
[State 961, PalFX 1]
type = PalFX
trigger1 = Animelem = 10
time = 1
add = -60,-60,-60
[State 961, PalFX 1]
type = PalFX
trigger1 = Animelem = 9
time = 2
add = -120,-120,-120
[State 961, PalFX 1]
type = PalFX
trigger1 = Animelem = 7
time = 11
add = -180,-180,-180

[State 1700, 4]
type = AfterImage
trigger1 = AnimElem = 4, = 3
time = 22
length = 12
framegap = 6

[State 1710,04]
type = Projectile
triggerall = time = 0
trigger1 = (prevstateno = 1000) || (prevstateno = 1006)
ProjAnim = 1002
ProjRemovetime = 10
offset = 10,-40
projshadow = 68,68,68
projsprpriority = 2

[State 1710, 0]
type = PlaySnd
trigger1 = Time = 0
value = 1700,0

[State 1710, 0]
type = PlaySnd
trigger1 = animelem = 3, = 3
value = 4,24

[State 1710, 0]
type = varset
trigger1 = animtime = 0
v = 2
value = 0

[State 1710, 1]
type = VelSet
trigger1 = AnimElem = 3, = 5
x = 15

[State 1710, 2]
type = VelAdd
trigger1 = AnimElem = 3, > 3
x = -.3

[State 1710, 3]
type = PlayerPush
trigger1 = (Time > 10) && (Time < 33)
value = 0

[State 1710, 5]
type = VelSet
trigger1 = AnimElem = 12, = 3
x = 0

[State 1710, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 1711]
type = S
movetype = I
physics = N
anim = 1710
velset = 0
poweradd = 50
ctrl = 0

[State 961, PalFX 1]
type = PalFX
trigger1 = Animelem = 4
time = 2
add = -60,-60,-60
[State 961, PalFX 1]
type = PalFX
trigger1 = Animelem = 5
time = 2
add = -120,-120,-120
[State 961, PalFX 1]
type = PalFX
trigger1 = Animelem = 6
time = 3
add = -180,-180,-180
[State 961, PalFX 1]
type = PalFX
trigger1 = Animelem = 10
time = 1
add = -60,-60,-60
[State 961, PalFX 1]
type = PalFX
trigger1 = Animelem = 9
time = 2
add = -120,-120,-120
[State 961, PalFX 1]
type = PalFX
trigger1 = Animelem = 7
time = 11
add = -180,-180,-180

[State 1700, 4]
type = AfterImage
trigger1 = AnimElem = 4, = 3
time = 22
length = 12
framegap = 6

[State 1710,04]
type = Projectile
triggerall = time = 0
trigger1 = (prevstateno = 1000) || (prevstateno = 1006)
ProjAnim = 1002
ProjRemovetime = 10
offset = 10,-40
projshadow = 68,68,68
projsprpriority = 2

[State 1710, 0]
type = PlaySnd
trigger1 = Time = 0
value = 1700,0

[State 1710, 0]
type = PlaySnd
trigger1 = animelem = 3, = 3
value = 4,24

[State 1710, 0]
type = varset
trigger1 = animtime = 0
v = 2
value = 0

[State 1710, 1]
type = VelSet
trigger1 = AnimElem = 3, = 5
x = 15

[State 1710, 2]
type = VelAdd
trigger1 = AnimElem = 3, > 3
x = -.3

[State 1710, 3]
type = PlayerPush
trigger1 = (Time > 10) && (Time < 33)
value = 0

[State 1710, 5]
type = VelSet
trigger1 = AnimElem = 12, = 3
x = 0

[State 1710, 6]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;ドリル
[Statedef 8000]
type = S
movetype = A
physics = S
anim = 8000
juggle = 0
velset = 0,0
ctrl = 0

[State 8000, afterimage]
type = afterimage
trigger1 = time = 4
time = 14
timegap = 1
framegap = 2
length = 6
trans = add1

[State 8000, Chime]
type = playsnd
trigger1 = time = 2
value = 4,17

[State 8000, Super Pause]
type = SuperPause
trigger1 = time = 2
movetime = 13
poweradd = -1000
time = 26
anim = -1

[State 4100, 0]
type = Explod
trigger1 = AnimElem = 2
persistent = 0
anim = 6400
id = 6400
pos = 39, -110
supermove = 1
postype = p1
sprpriority = -1
ownpal = 1

[State 7000, 0]
type = Explod
trigger1 = AnimElem = 2
persistent = 0
anim = 6475
id = 6475
pos = 39, -110
supermove = 1
postype = p1
sprpriority = 2
ownpal = 1

[State 180, 2]
type = Explod
trigger1 = animelem = 8, = 0
id = 1
anim = 1
pos = 23,0
sprpriority = -1
ownpal = 1
supermove = 1
removeongethit = 1
removetime = 11

[State 8000, hitdef]
type = Hitdef
trigger1 = var(5) <= 0
trigger1 = time = 0
trigger1 = p2stateno != 150 && 151 && 152 && 153 && 130 && 131 && 140
attr = S, HT
hitflag = M
guardflag = N
priority = 3, Miss
sparkno = -1
sprpriority = 2
p2facing = 1
p1stateno = 8001
p2stateno = 8002
p2getp1state = 1
id = 3000
numhits = 0
givepower = 108
persistent = 0

[State 8000, Land]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;-----------------------------

[Statedef 8001] 
type    = S
movetype= A
physics = S
anim = 8001
juggle = 14
sprpriority = 2

[State 8000, Chime]
type = playsnd
trigger1 = time = 0
value = 4,17

[State 4001, Super Pause]
type = SuperPause
trigger1 = time = 0
movetime = 1
poweradd = -1000
time = 1
anim = -1

[State 4100, 0]
type = Explod
trigger1 = AnimElem = 2
persistent = 0
anim = 6400
id = 6400
pos = 39, -110
supermove = 1
postype = p1
sprpriority = -1
ownpal = 1

[State 7000, 0]
type = Explod
trigger1 = AnimElem = 2
persistent = 0
anim = 6475
id = 6475
pos = 39, -110
supermove = 1
postype = p1
sprpriority = 2
ownpal = 1

[State 4001, width]
type = Width
trigger1 = time >= 0
edge = 50,20

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 2
volume = 30
value = 4,25

[State 180, 2]
type = Explod
trigger1 = animelem = 2
id = 307
anim = 307
pos = 34,-82
sprpriority = 1
ownpal = 1
removeongethit = 1
removetime = 25

[State 4001, Bind1]
type = TargetBind
trigger1 = animelem = 3, <0
pos = 30, 0
time = 1

[State 4001, Bind2]
type = TargetBind
trigger1 = animelem = 3, >=0
trigger1 = animelem = 4, <0
pos = 42,-125
time = 1

[State 4001, Bind3]
type = TargetBind
trigger1 = animelem = 4, >=0
trigger1 = animelem = 5, <0
pos = 43,-125
time = 1

[State 4001, liftoff]
type = targetState
Trigger1 = time = 0
value = 8002
ctrl = 0

[State 4001, liftoff]
type = targetState
Trigger1 = animelem = 5, =0
value = 8003
ctrl = 0

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 7
volume = 255
value = 1,2

[State 3000, hitdef]
type = Hitdef
trigger1 = AnimElem = 8
attr = S, HA
hitflag = MAF
animtype = hard
damage = 55,5
guardflag = N
pausetime = 10,10
sparkno = S308

sparkxy = -10,-80
hitsound = S4,27
guardsound = S20,6
ground.type = low
air.animtype = Low
ground.slidetime = 23
ground.hittime = 22
ground.velocity = 0,-6
air.velocity = 0,-6
airguard.velocity = -6,-1.5
guard.velocity = -6
air.juggle = 10
hitonce = 0
p2stateno = 6007
kill = 0

[State 3000, hitdef]
type = Hitdef
trigger1 = AnimElem = 9
attr = S, HA
hitflag = MAF
animtype = hard
damage = 55,5
guardflag = N
pausetime = 14,14
sparkno = S308

sparkxy = 10,-125
hitsound = S4,27
guardsound = S20,6
ground.type = Low
air.animtype = Low
ground.slidetime = 23
ground.hittime = 22
ground.velocity = -.8,-11
air.velocity = -.8,-11
airguard.velocity = -6,-1.5
guard.velocity = -6
air.juggle = 10
fall = 1
fall.recover = 0
fall.xvelocity = -2
fall.yvelocity = -3
p2stateno = 6007
kill = 0
hitonce = 0
yaccel = .52

[State 4010, varset]
type = varset
Trigger1 = Time = 0
var(17) = 0

[State 4010, varadd]
type = varadd
triggerall = animelem = 10, >= 0
Trigger1 = command = "x"
trigegr2 = command = "y"
trigegr3 = command = "z"
var(17) = 1

;------------------------------------
[State 4001, End]
type = ChangeState
triggerall = var(20) = 1
triggerall = var(29) = [0,9]
Trigger1 = animTime = 0
value = 8501
ctrl = 0

[State 4001, End]
type = ChangeState
triggerall = var(29) = [10,21]
triggerall = var(20) = 1
Trigger1 = animTime = 0
value = 8502
ctrl = 0

[State 4001, End]
type = ChangeState
triggerall = var(29) = [22,34]
triggerall = var(20) = 1
Trigger1 = animTime = 0
value = 8503
ctrl = 0

[State 4001, End]
type = ChangeState
triggerall = var(29) = [35,49]
triggerall = var(20) = 1
Trigger1 = animTime = 0
value = 8504
ctrl = 0

[State 4001, End]
type = ChangeState
triggerall = var(29) = [50,64]
triggerall = var(20) = 1
Trigger1 = animTime = 0
value = 8505
ctrl = 0

[State 4001, End]
type = ChangeState
triggerall = var(29) = [65,77]
triggerall = var(20) = 1
Trigger1 = animTime = 0
value = 8506
ctrl = 0

[State 4001, End]
type = ChangeState
triggerall = var(29) = [78,89]
triggerall = var(20) = 1
Trigger1 = animTime = 0
value = 8507
ctrl = 0

[State 4001, End]
type = ChangeState
triggerall = var(29) = [90,99]
triggerall = var(20) = 1
Trigger1 = animTime = 0
value = 8508
ctrl = 0

[State 4001, End]
type = ChangeState
Trigger1 = animTime = 0
value = 8010
ctrl = 0

;------------------------------------

[Statedef 8002]
type    = A
movetype= H 
physics = N
ctrl = 0

[State 4002, SCR]
type = screenbound
Trigger1 = Time >= 0
value = 0
movecamera = 0,0

[State 4002, ANIM]
type = ChangeAnim2
Trigger1 = Time = 0
value = 8002

[State 4002, ANIM]
type = selfstate
Trigger1 = Time = 50
value = 5100
ctrl = 0

;-----------------------------

[Statedef 8003]
type    = A
movetype= H 
physics = N
velset = .01,0
ctrl = 0

[State 4003, hitby]
type = hitby
trigger1 = time >= 0
value = S, HA

[State 4003, posadd]
type = posadd
trigger1 = time = 0
y = 70

[State 4003, Gravity]
type = veladd
Trigger1 = Time >= 0
y = .39

[State 4003, SCR]
type = screenbound
Trigger1 = Time >= 0
value = 0
movecamera = 0,0

[State 4003, Anim]
type = ChangeAnim2
Trigger1 = Time = 0
value = 5071

[State 4003, End]
type = selfstate
Trigger1 = pos y >= 0 && vel y > 0
value = 5100
ctrl = 0

;----------------------------------------------
[Statedef 8501] 
type    = S
movetype= A
physics = S
anim = 8010
sprpriority = 2

[State 1230, 2]
type = PlaySnd
trigger1 = Time = 10
value = 0,1
channel = 0
volume = 100

[State 4010, Level1]
type = ChangeState
Trigger1 = Time = 51
value = 8050
ctrl = 0

;----------------------------------------------
[Statedef 8502] 
type    = S
movetype= A
physics = S
anim = 8010
sprpriority = 2

[State 1230, 2]
type = PlaySnd
trigger1 = Time = 10
value = 0,1
channel = 0
volume = 100

[State 4010, Level1]
type = ChangeState
Trigger1 = Time = 51
value = 8070
ctrl = 0

;----------------------------------------------
[Statedef 8503] 
type    = S
movetype= A
physics = S
anim = 8010
sprpriority = 2

[State 1230, 2]
type = PlaySnd
trigger1 = Time = 10
value = 0,1
channel = 0
volume = 100

[State 4010, Anim 2]
type = changeanim
triggerall = time = 40
trigger1 = anim != 8011
value = 8011

[State 4010, Level1]
type = ChangeState
Trigger1 = Time = 51
value = 8080
ctrl = 0

;----------------------------------------------
[Statedef 8504] 
type    = S
movetype= A
physics = S
anim = 8010
sprpriority = 2

[State 1230, 2]
type = PlaySnd
trigger1 = Time = 10
value = 0,1
channel = 0
volume = 100

[State 4010, Anim 2]
type = changeanim
triggerall = time = 30
trigger1 = anim != 8011
value = 8011

[State 4010, Level1]
type = ChangeState
Trigger1 = Time = 51
value = 8100
ctrl = 0

;----------------------------------------------
[Statedef 8505] 
type    = S
movetype= A
physics = S
anim = 8010
sprpriority = 2

[State 1230, 2]
type = PlaySnd
trigger1 = Time = 10
value = 0,1
channel = 0
volume = 100

[State 4010, Anim 2]
type = changeanim
triggerall = time = 20
trigger1 = anim != 8011
value = 8011

[State 4010, Level1]
type = ChangeState
Trigger1 = Time = 51
value = 8510
ctrl = 0

;----------------------------------------------
[Statedef 8506] 
type    = S
movetype= A
physics = S
anim = 8010
sprpriority = 2

[State 1230, 2]
type = PlaySnd
trigger1 = Time = 10
value = 0,1
channel = 0
volume = 100

[State 4010, Anim 2]
type = changeanim
triggerall = time = 20
trigger1 = anim != 8011
value = 8011

[State 4010, Anim 3]
type = changeanim
triggerall = time = 40
trigger1 = anim != 8012
value = 8012

[State 4010, Level1]
type = ChangeState
Trigger1 = Time = 51
value = 8520
ctrl = 0

;----------------------------------------------
[Statedef 8507] 
type    = S
movetype= A
physics = S
anim = 8010
sprpriority = 2

[State 1230, 2]
type = PlaySnd
trigger1 = Time = 10
value = 0,1
channel = 0
volume = 100

[State 4010, Anim 2]
type = changeanim
triggerall = time = 15
trigger1 = anim != 8011
value = 8011

[State 4010, Anim 3]
type = changeanim
triggerall = time = 30
trigger1 = anim != 8012
value = 8012

[State 4010, Level1]
type = ChangeState
Trigger1 = Time = 51
value = 8530
ctrl = 0

;----------------------------------------------
[Statedef 8508] 
type    = S
movetype= A
physics = S
anim = 8010
sprpriority = 2

[State 1230, 2]
type = PlaySnd
trigger1 = Time = 10
value = 0,1
channel = 0
volume = 100

[State 4010, Anim 2]
type = changeanim
triggerall = time = 10
trigger1 = anim != 8011
value = 8011

[State 4010, Anim 3]
type = changeanim
triggerall = time = 25
trigger1 = anim != 8012
value = 8012

[State 4010, Level1]
type = ChangeState
Trigger1 = Time = 51
value = 8550
ctrl = 0

;----------------------------------------------
[Statedef 8010] 
type    = S
movetype= A
physics = S
anim = 8010
sprpriority = 2

[State 1230, 2]
type = PlaySnd
trigger1 = Time = 10
value = 0,1
channel = 0
volume = 100

[State 4010, varminus]
type = varadd
trigger1 = var(9) != 1
trigger1 = command != "x" && command != "y" && command != "z"
Trigger1 = timemod = 18,3
var(17) = -1

[State 4010, varadd]
type = varadd
Trigger1 = command = "z"
var(17) = 1

[State 4010, varadd]
type = varadd
trigger1 = command = "y"
var(17) = 1

[State 4010, varadd]
type = varadd
Trigger1 = command = "x"
var(17) = 1

;[State 4010, varadd AI]
;type = varadd
;Trigger1 = var(9) = 1
;trigger1 = random <= 600
;trigger1 = gametime(%6) = 0
;var(17) = 2

;[State 4010, varadd AI]
;type = varadd
;Trigger1 = var(9) = 1
;trigger1 = random <= 600
;trigger1 = gametime(%6) = 0
;var(17) = -1

[State 4010, Anim 2]
type = changeanim
triggerall = time >= 5
trigger1 = anim != 8011
Trigger1 = var (17) = [8,16]
value = 8011

[State 4010, Anim 3]
type = changeanim
triggerall = time >= 10
trigger1 = anim != 8012
Trigger1 = var (17) >=17
value = 8012

[State 4010, Level4]
type = ChangeState
trigger1 = var(17) > 22
Trigger1 = Time = 51
value = 8550
ctrl = 0

[State 4010, Level4]
type = ChangeState
trigger1 = var(17) = [20,22]
Trigger1 = Time = 51
value = 8530
ctrl = 0

[State 4010, Level4]
type = ChangeState
trigger1 = var(17) = [17,19]
Trigger1 = Time = 51
value = 8520
ctrl = 0

[State 4010, Level4]
type = ChangeState
trigger1 = var(17) = [14,16]
Trigger1 = Time = 51
value = 8510
ctrl = 0

[State 4010, Level4]
type = ChangeState
trigger1 = var(17) = [11,13]
Trigger1 = Time = 51
value = 8100
ctrl = 0

[State 4010, Level3]
type = ChangeState
trigger1 = var(17) = [8,10]
Trigger1 = Time = 51
value = 8080
ctrl = 0

[State 4010, Level2]
type = ChangeState
trigger1 = var(17) = [5,7]
Trigger1 = Time = 51
value = 8070
ctrl = 0

[State 4010, Level1]
type = ChangeState
trigger1 = var(17) < 5
Trigger1 = Time = 51
value = 8050
ctrl = 0

;====================================================================
;=========================
[Statedef 8050]
type = S
movetype = A
physics = S
anim = 8050
velset = 0,0
ctrl = 0

[State 1230, 2]
type = stopsnd
trigger1 = Time = 0
value = 0,1
channel = 0

[State 4001, width]
type = Width
trigger1 = time >= 0
edge = 40,20

[State 270, 2]
type = PlaySnd
trigger1 = animelem = 1, =2
value = 4,28

[State 270, 2]
type = Velset
trigger1 = animelem = 6
x = 9

[State 3010, Envshake]
type = envshake
Trigger1 = animelem = 7, = 0
time = 14
ampl = -8
freq = 105

[State 230, 3]
type = HitDef
trigger1 = AnimElem = 7
attr = S, HA
animtype = Hard
damage = 40
hitflag = MAFD
guardflag = L
pausetime = 13,20
sparkno = S308
sparkxy = -10,-5
hitsound = S4,27
guardsound = S20,6
priority = 7, Hit
ground.type = low
ground.slidetime = 18
ground.hittime = 18
down.hittime = 24
ground.velocity = -1,-9
air.velocity = 0,-9
down.velocity = 0,-9
airguard.velocity = -4,-4
guard.velocity = -11
guard.slidetime = 18
ground.cornerpush.veloff = -11
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -10
p2stateno = 6008
yaccel = .4
kill = 0
fall = 1
fall.recover = 0

[State 180, 2]
type = Explod
trigger1 = animelem = 7, = 0
id = 1507
anim = 1507
pos = 0, 7
postype = p2
ontop = 0
sprpriority = -1
ownpal = 1

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 8051
ctrl = 0

;---------------------------------------------
[Statedef 8051]
type = S
movetype = A
physics = S
anim = 8051
velset = 0,0
ctrl = 0

[State 4051, 0]
type = velset
trigger1 = animelem = 3
x = 5

[State 4001, width]
type = Width
trigger1 = time >= 0
edge = 40,20

[State 230, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = S, HA
animtype = Hard
damage = 46
hitflag = MAFD
guardflag = MA
pausetime = 12,12
sparkno = S308
sparkxy = 0,-70
hitsound = S4,27
guardsound = S20,6
priority = 7, Hit
ground.type = low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -1, -6
air.velocity = -1,-6
airguard.velocity = -9,-1
guard.velocity = -11
guard.slidetime = 18
ground.cornerpush.veloff = -11
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -10
p2stateno = 6007
yaccel = .39
kill = 0
fall = 1
fall.recover = 0
snap = 50, -40

[State 4051, 0]
type = ChangeState
trigger1 = AnimTime = 0
value = 8052
ctrl = 0
;---------------------------------------------------
[Statedef 8052]
type = S
movetype = A
physics = N
anim = 8052
velset = 4,-4.5
ctrl = 0

[State 230, 3]
type = HitDef
trigger1 = AnimElem = 1
attr = S, HA
animtype = Hard
damage = 46
hitflag = MAFD
guardflag = MA
pausetime = 12,12
sparkno = S308
sparkxy = 0,-125
hitsound = S4,27
guardsound = S20,6
priority = 7, Hit
ground.type = low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -3.5, -6
air.velocity = -3.5,-6
airguard.velocity = -9,-1
guard.velocity = -11
guard.slidetime = 18
ground.cornerpush.veloff = -11
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -10
p2stateno = 6000
yaccel = .39
kill = 0
fall = 1
fall.recover = 0

[State 4051, 0]
type = veladd
trigger1 = time >= 0
y = .45

[State 4051, 0]
type = ChangeState
trigger1 = pos y >= 0 && vel y > 0
value = 8053
ctrl = 0


;------------------------------------------------
[Statedef 8053]
type = S
movetype = A
physics = S
anim = 8053
velset = 0,0
ctrl = 0

[State 270, 2]
type = PlaySnd
trigger1 = animelem = 1, =2
value = 4,28

[State 4001, width]
type = posset
trigger1 = time = 0
y = 0

[State 52, 3]
type = PlaySnd
trigger1 = Time = 0
value = 4,29
volume = 10

[State 4001, width]
type = Width
trigger1 = time >= 0
edge = 50,20

[State 1000, Cancel]
type = velset
trigger1 = animelem = 2
x = 10

[State 1000, Cancel]
type = velset
trigger1 = animelem = 5
x = 0

[State 230, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = S, HA
animtype = Hard
damage = 46
hitflag = MAFD
guardflag = MA
pausetime = 12,12
sparkno = S308
sparkxy = 5,-65
hitsound = S4,27
guardsound = S20,6
priority = 7, Hit
ground.type = low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -4,-4
air.velocity = -4,-4
airguard.velocity = -9,-1
guard.velocity = -11
guard.slidetime = 18
ground.cornerpush.veloff = -11
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -10
yaccel = .39
kill = 0
fall = 1
fall.recover = 0
p2stateno = 6007

[State 230, 3]
type = HitDef
trigger1 = animelem = 4
attr = S, HA
animtype = Hard
damage = 46
hitflag = MAFD
guardflag = MA
pausetime = 12,13
sparkno = S308
sparkxy = -15,-95
hitsound = S4,27
guardsound = S20,6
priority = 7, Hit
ground.type = low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -3,-7
air.velocity = -3,-7
airguard.velocity = -9,-1
down.velocity = -1,-9
guard.velocity = -11
guard.slidetime = 18
ground.cornerpush.veloff = -11
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -10
yaccel = .39
kill = 0
fall = 1
fall.recover = 0
p2stateno = 6000

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 8054
ctrl = 0

;===================================================

[Statedef 8054]
type = S
movetype = A
physics = N
anim = 8054
velset = 0,0
ctrl = 0

[State 1000, Taunt Var 18]
type = varset
trigger1 = time = 0
var(18) = 0

[State 4001, width]
type = Width
trigger1 = time >= 0
edge = 50,20

[State 180, explod]
type = Explod
trigger1 = animelem = 2
id = 2106
anim = 2106
pos = -19,8
sprpriority = 2
ownpal = 1
removeongethit = 1
removetime = 1

[State 180, explod]
type = Explod
trigger1 = animelem = 3
id = 2107
anim = 2107
pos = -19,8
sprpriority = 2
ownpal = 1
bindtime = -1
removeongethit = 1
removetime = 2

[State 180, explod]
type = Explod
trigger1 = animelem = 4
id = 2108
anim = 2108
pos = -19,8
sprpriority = 2
ownpal = 1
removeongethit = 1
bindtime = -1
removetime = 10

[State 1000, Cancel]
type = velset
trigger1 = animelem = 2 
x = 10

[State 1000, Cancel]
type = velset
trigger1 = animelem = 5, = 0 
x = 2

[State 1000, Cancel]
type = velset
trigger1 = animelem = 5, = 3
x = 0

[State 280, 3]
type = HitDef
trigger1 = AnimElem = 4
trigger2 = animelem = 5
trigger3 = animelem = 6
attr = S, HA
damage = 25
animtype = Diagup
hitflag = MAF
guardflag = MA
pausetime = 4,4
sparkno = S308

sparkxy = -10,-115
hitsound = S4,27
guardsound = S20,6
ground.velocity = -0,-1
air.velocity = -0,-1
guard.velocity = -11
fall = 1
guard.velocity = -8.9
p2stateno = 6007
kill = 0
fall.recover = 0

[State 280, 3]
type = HitDef
trigger1 = AnimElem = 7
attr = S, HA
damage = 25
animtype = Diagup
hitflag = MAF
guardflag = MA
pausetime = 14,14
sparkno = S308

sparkxy = -10,-115
hitsound = S4,27
guardsound = S20,6
ground.velocity = -4,-9
air.velocity = -4,-6
guard.velocity = -11
fall = 1
guard.velocity = -8.9
fall.recover = 0

[State 200, 1]
type = afterimage
trigger1 = time = 0
time = 39
palbright = 0,0,0
palcontrast = 250,250,250
paladd = 0,0,0
palmul = 0.6,0.6,0.6
timegap = 1
framegap = 2
length = 5

[State 180, explod]
type = Explod
trigger1 = animelem = 4
id = 8055
anim = 8055
pos = -17,8
sprpriority = 2
ownpal = 1
removeongethit = 1
bindtime = 30

[State 1000, END]
type = ChangeState
trigger1 = var(18) = 0
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 8070]
type = S
movetype = A
physics = S
anim = 8070
velset = 0,0
ctrl = 0

[State 1230, 2]
type = stopsnd
trigger1 = Time = 0
value = 0,1
channel = 0

[State 4001, width]
type = Width
trigger1 = time >= 0
edge = 40,20

[State 270, 2]
type = PlaySnd
trigger1 = animelem = 1, =2
value = 4,28

[State 270, 2]
type = Velset
trigger1 = animelem = 1
x = 14

[State 230, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = S, HA
animtype = Hard
damage = 35
hitflag = MAFD
guardflag = L
pausetime = 10,10
sparkno = S308

sparkxy = 0,-15
hitsound = S4,30
guardsound = S20,6
priority = 7, Hit
ground.type = low
ground.slidetime = 18
ground.hittime = 18
down.hittime = 24
ground.velocity = -1,-8
air.velocity = -2,-6
down.velocity = -2,-5
airguard.velocity = -4,-4
guard.velocity = -11
guard.slidetime = 18
ground.cornerpush.veloff = -11
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -10
p2stateno = 6009
yaccel = .4
kill = 0
fall = 1
fall.recover = 0

[State 230, 3]
type = HitDef
trigger1 = AnimElem = 7
attr = S, HA
animtype = Hard
damage = 40
hitflag = MAFD
guardflag = MA
pausetime = 10,10
sparkno = S308
sparkxy = -5,-68
hitsound = S4,30
guardsound = S20,6
priority = 7, Hit
ground.type = low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -2,-7.5
air.velocity = -2,-7.5
airguard.velocity = -9,-1
guard.velocity = -11
guard.slidetime = 18
ground.cornerpush.veloff = -11
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -10
yaccel = .39
kill = 0
fall = 1
fall.recover = 0
p2stateno = 6000

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 8071
ctrl = 0

;---------------------------------------------
[Statedef 8071]
type = A
movetype = A
physics = N
anim = 8071
velset = 4.5,-10.5
ctrl = 0

[State 9000, 1b]
type = PlaySnd
trigger1 = Time = 0
value = 4,31
volume = -10

[State 4001, width]
type = Width
trigger1 = time >= 0
edge = 40,20

[State 4051, 0]
type = Statetypeset
trigger1 = animelem = 4
value = S

[State 270, 2]
type = PlaySnd
trigger1 = animelem = 4 
value = 4,28

[State 230, 3]
type = HitDef
trigger1 = AnimElem = 5
attr = S, HA
animtype = Hard
damage = 40
hitflag = MAFD
guardflag = HA
pausetime = 12,12
sparkno = S308

sparkxy = -10,-47
hitsound = S4,30
guardsound = S20,6
priority = 7, Hit
ground.type = low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -2, -6
air.velocity = -1.8,-6
airguard.velocity = -9,-1
guard.velocity = -11
guard.slidetime = 18
ground.cornerpush.veloff = -11
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -10
p2stateno = 6007
yaccel = .39
kill = 0
fall = 1
fall.recover = 0

[State 4051, 0]
type = velset
trigger1 = animelem = 7
x = 1
y = .15

[State 4051, 0]
type = veladd
trigger1 = time >= 0
y = .45

[State 4051, 0]
type = ChangeState
trigger1 = pos y >= 0 && vel y > 0
value = 8072
ctrl = 0
;----------------------------------------
[Statedef 8072]
type = S
movetype = A
physics = S
anim = 8072
velset = 0,0
ctrl = 0

[State 4001, width]
type = posset
trigger1 = time = 0
y = 0

[State 52, 3]
type = PlaySnd
trigger1 = Time = 0
value = 4,29
volume = 10

[State 4001, width]
type = Width
trigger1 = time >= 0
edge = 50,20

[State 1000, Cancel]
type = velset
trigger1 = animelem = 1
x = 0

[State 1000, Cancel]
type = velset
trigger1 = animelem = 5
x = 0

[State 230, 3]
type = HitDef
trigger1 = AnimElem = 6
attr = S, HA
animtype = Hard
damage = 47
hitflag = MAFD
guardflag = MA
pausetime = 12,12
sparkno = S308
sparkxy = 5,-85
hitsound = S4,27
guardsound = S20,6
priority = 7, Hit
ground.type = low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -.5,11
air.velocity = -.5,11
airguard.velocity = -9,-1
guard.velocity = -11
guard.slidetime = 18
ground.cornerpush.veloff = -11
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -10
yaccel = .39
fall.xvelocity = 0
fall.yvelocity = 0
kill = 0
fall = 1
fall.recover = 0
p2stateno = 6007

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 8073
ctrl = 0

;===================================================
[Statedef 8073]
type = S
movetype = A
physics = S
anim = 8073
velset = 0,0
ctrl = 0

[State 270, 2]
type = Velset
trigger1 = animelem = 2
x = 5

[State 4001, width]
type = Width
trigger1 = time >= 0
edge = 40,20

[State 3010, Envshake]
type = envshake
Trigger1 = animelem = 4, = 0
time = 15
ampl = -8
freq = 105

[State 180, 2]
type = Explod
trigger1 = animelem = 4, = 0
id = 1507
anim = 1507
pos = 0, 7
postype = p2
ontop = 0
sprpriority = -1
ownpal = 1

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 4, =0
volume = 30
value = 4,32

[State 230, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = S, HA
animtype = Hard
damage = 43
hitflag = MAFD
guardflag = L
pausetime = 13,27
sparkno = S308
sparkxy = -10,-5
hitsound = S4,30
guardsound = S20,6
priority = 7, Hit
ground.type = low
ground.slidetime = 18
ground.hittime = 18
down.hittime = 28
ground.velocity = -1,-9
air.velocity = -4,-9
down.velocity = -4,-9
airguard.velocity = -4,-4
guard.velocity = -11
guard.slidetime = 18
ground.cornerpush.veloff = -11
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -10
p2stateno = 6008
yaccel = .4
kill = 0
fall = 1
fall.recover = 0

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 8074
ctrl = 0

;----------------------------------------------------

;===================================================
[Statedef 8074]
type = S
movetype = A
physics = S
anim = 8074
velset = 0,0
ctrl = 0

[State 4001, width]
type = Width
trigger1 = animelem = 4, >= 0
edge = 60,20

[State 270, 2]
type = PlaySnd
trigger1 = animelem = 1, =2
value = 4,28

[State 230, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = S, HA
animtype = Hard
damage = 51
hitflag = MAFD
guardflag = MA
pausetime = 12,12
sparkno = S308

sparkxy = -10,-76
hitsound = S4,30
guardsound = S20,6
priority = 7, Hit
ground.type = low
ground.slidetime = 18
ground.hittime = 18
down.hittime = 24
ground.velocity = -3,-6
air.velocity = -3,-6
down.velocity = -3,-6
airguard.velocity = -4,-4
guard.velocity = -11
guard.slidetime = 18
ground.cornerpush.veloff = -11
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -10
p2stateno = 6007
yaccel = .4
kill = 0
fall = 1
fall.recover = 0

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 8054
ctrl = 0

;====================================================================
[Statedef 8080]
type = S
movetype = A
physics = S
anim = 8080
velset = 0,0
ctrl = 0

[State 1230, 2]
type = stopsnd
trigger1 = Time = 0
value = 0,1
channel = 0

[State 4001, width]
type = Width
trigger1 = time >= 0
edge = 40,20

[State 270, 2]
type = Velset
trigger1 = animelem = 2
x = 20

[State 270, 2]
type = Velset
trigger1 = animelem = 3
x = 0

[State 230, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = S, HA
animtype = Hard
damage = 33
hitflag = MAFD
guardflag = MA
pausetime = 0,0
sparkno = S307
sparkxy = -11,-5
hitsound = S4,25
guardsound = S20,6
priority = 7, Hit
ground.type = low
ground.slidetime = 18
ground.hittime = 18
down.hittime = 24
ground.velocity = -1,-9
air.velocity = 0,-9
down.velocity = 0,-9
airguard.velocity = -4,-4
guard.velocity = -11
guard.slidetime = 18
ground.cornerpush.veloff = -11
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -10
p2stateno = 8083
yaccel = .4
p2facing = 1
kill = 0
fall = 1
fall.recover = 0

[State 301, Bind]
type = TargetBind
trigger1 = animelem = 3, >=0
trigger1 = animelem = 4, < 0
pos = 40,0
time = 1

[State 301, Bind]
type = TargetBind
trigger1 = animelem = 4, >=0
trigger1 = animelem = 5, < 0
pos = 83, -30
time = 1

[State 301, Bind]
type = TargetBind
trigger1 = animelem = 5, >=0
trigger1 = animelem = 6, < 0
pos = 74,-53
time = 1

[State 301, Bind]
type = TargetBind
trigger1 = animelem = 6, >=0
trigger1 = animelem = 7, < 0
pos = 35,-122
time = 1

[State 301, Bind]
type = TargetBind
trigger1 = animelem = 7, >=0
trigger1 = animelem = 8, < 0
pos = 30,-142
time = 1

[State 240, 4]
type = hitadd
trigger1 = animelem = 7
value = 1

[State 240, 4]
type = varset
trigger1 = Time = 0
var(21) = 0

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 8081
ctrl = 0

;--------------------------------------------

[Statedef 8081]
type = S
movetype = A
physics = S
anim = 8081
velset = 0,0
ctrl = 0

[State 4001, width]
type = Width
trigger1 = time >= 0
edge = 40,20

[State 240, 4]
type = hitadd
trigger1 = animelem = 6
value = 1

[State 301, Bind]
type = targetstate
trigger1 = time = 0
value = 8084

[State 301, Bind]
type = TargetBind
trigger1 = animelem = 1, >=0
trigger1 = animelem = 2, <0
pos = 31, -98
time = 1

[State 301, Bind]
type = TargetBind
trigger1 = animelem = 2, >=0
trigger1 = animelem = 3, <0
pos = 28, -98
time = 1

[State 301, Bind]
type = TargetBind
trigger1 = animelem = 3, >=0
trigger1 = animelem = 4, <0
pos = 20, -95
time = 1

[State 301, Bind]
type = TargetBind
trigger1 = animelem = 4, >=0
trigger1 = animelem = 5, <0
pos = 25,-95
time = 1

[State 301, Bind]
type = TargetBind
trigger1 = animelem = 5, >=0
trigger1 = animelem = 6, <0
pos = 20, -95
time = 1

[State 301, Bind]
type = TargetBind
trigger1 = animelem = 6, >=0
trigger1 = animelem = 7, <0
pos = 38, -88
time = 1

[State 301, Bind]
type = TargetBind
trigger1 = animelem = 7, >=0
trigger1 = animelem = 8, <0
pos = 43, -90
time = 1

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 6, = 0
volume = 30
value = 4,33

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 6, =0
volume = 30
value = 4,32

[State 180, 2]
type = Explod
trigger1 = animelem = 6
id = 308
anim = 308
pos = 37,-92
sprpriority = -1
ownpal = 1
ontop = 1
removeongethit = 1

[State 180, 2]
type = Explod
trigger1 = animelem = 6
id = 61
anim = F61
pos = 48,0
sprpriority = -1
ownpal = 1
removetime = 14

[State 301, Bind]
type = targetlifeadd
trigger1 = animelem = 6, =1
value = -30
kill = 0

[State 3010, Envshake]
type = envshake
Trigger1 = animelem = 6, = 0
time = 7
ampl = -8
freq = 105

[State 240, 4]
type = varadd
trigger1 = Time = 0
var(21) = 1

[State 240, 4]
type = ChangeState
trigger1 = var(21) >= 7
trigger1 = AnimTime = 0
value = 8082
ctrl = 0

[State 240, 4]
type = ChangeState
trigger1 = var(21) < 7
trigger1 = AnimTime = 0
value = 8081
ctrl = 0

;----------------------------------

[Statedef 8082]
type = S
movetype = A
physics = S
anim = 8082
velset = 0,0
ctrl = 0

[State 240, 4]
type = hitadd
trigger1 = animelem = 6
value = 1

[State 301, Bind]
type = targetstate
trigger1 = time = 0
value = 8084

[State 301, Bind]
type = TargetBind
trigger1 = animelem = 1, >=0
trigger1 = animelem = 2, <0
pos = 31, -98
time = 1

[State 301, Bind]
type = TargetBind
trigger1 = animelem = 2, >=0
trigger1 = animelem = 3, <0
pos = 28, -98
time = 1

[State 301, Bind]
type = TargetBind
trigger1 = animelem = 3, >=0
trigger1 = animelem = 4, <0
pos = 20, -95
time = 1

[State 301, Bind]
type = TargetBind
trigger1 = animelem = 4, >=0
trigger1 = animelem = 5, <0
pos = 25,-95
time = 1

[State 301, Bind]
type = TargetBind
trigger1 = animelem = 5, >=0
trigger1 = animelem = 6, <0
pos = 20, -95
time = 1

[State 301, Bind]
type = TargetBind
trigger1 = animelem = 6, >=0
trigger1 = animelem = 7, <0
pos = 38, -88
time = 1

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 6, = 1
volume = 120
value = 4,12

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 6, =0
volume = 30
value = 4,32

[State 180, 2]
type = Explod
trigger1 = animelem = 6
id = 61
anim = F61
pos = 48,0
sprpriority = -1
ownpal = 1
removetime = 14

[State 180, 2]
type = Explod
trigger1 = animelem = 6
id = 308
anim = 308
pos = 48,-85
sprpriority = -1
ownpal = 1
ontop = 1
removeongethit = 1

[State 301, Bind]
type = targetstate
trigger1 = animelem = 6
trigger1 = palno = 1
value = 8085

[State 301, Bind]
type = targetstate
trigger1 = animelem = 6
trigger1 = palno = 2
value = 8087

[State 301, Bind]
type = targetstate
trigger1 = animelem = 6
trigger1 = palno = 3
value = 8088

[State 301, Bind]
type = targetstate
trigger1 = animelem = 6
trigger1 = palno = 4
value = 8089

[State 301, Bind]
type = targetstate
trigger1 = animelem = 6
trigger1 = palno = 5
value = 8090

[State 301, Bind]
type = targetstate
trigger1 = animelem = 6
trigger1 = palno = 6
value = 8091

[State 301, Bind]
type = targetlifeadd
trigger1 = animelem = 6, =1
value = -39
kill = 0

[State 3010, Envshake]
type = envshake
Trigger1 = animelem = 6, = 0
time = 15
ampl = -8
freq = 105

;-----------------------

[State 180, 2]
type = Explod
trigger1 = numexplod(1508) < 14
trigger1 = animelem = 6, = [0, 16]
id = 1508
anim = 1508
pos = 50,-85
sprpriority = 2
random = 70,80
ownpal = 1
removetime = 18

[State 180, 2]
type = Explod
trigger1 = numexplod(1509) < 9
trigger1 = animelem = 6, = [3,16]
id = 1509
anim = 1509
pos = 50,-85
random = 50,60
sprpriority = 3
ownpal = 1
removetime = 15
;---------------------------

[State 240, 4]
type = varset
trigger1 = Time = 0
var(21) = 0

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 8054
ctrl = 0

;----------------------------------
[Statedef 8083]
type    = A
movetype= H 
physics = N
ctrl = 0

[State 820, 1]
type = screenbound
Trigger1 = Time >= 0
value = 0
movecamera = 0,0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 8083
;-------------------------------------

[Statedef 8084]
type    = A
movetype= H 
physics = N
ctrl = 0

[State 820, 1]
type = screenbound
Trigger1 = Time >= 0
value = 0
movecamera = 0,0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 8084
;-------------------------------------

;---------------------------------------------------------------------------
[Statedef 8085]
type    = S
movetype= H
physics = N
velset = 0,0

[State 1800, 2]
type = screenbound
Trigger1 = Time >= 0
value = 1
movecamera = 0,0

[State 5000, 1]
type = palfx
trigger1 = Time = 0
time = 45
add = -105,-30,80
sinadd = 54,54,0,10
color = 0
invertall = 1

[State 5000, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 2303

[State 5000, 6]
type = changestate
trigger1 = animtime = 0
value = 8086

[State 5000, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

[Statedef 8087]
type    = S
movetype= H
physics = N
velset = 0,0

[State 1800, 2]
type = screenbound
Trigger1 = Time >= 0
value = 1
movecamera = 0,0

[State 5000, 1]
type = palfx
trigger1 = Time = 0
time = 45
add = -155,-50,-35
sinadd = 54,54,0,10
color = 0
invertall = 1

[State 5000, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 2303

[State 5000, 6]
type = changestate
trigger1 = animtime = 0
value = 8086

[State 5000, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

[Statedef 8088]
type    = S
movetype= H
physics = N
velset = 0,0

[State 1800, 2]
type = screenbound
Trigger1 = Time >= 0
value = 1
movecamera = 0,0

[State 5000, 1]
type = palfx
trigger1 = Time = 0
time = 45
add = 255,0,-105
sinadd = 54,54,0,10
color = 0
invertall = 1

[State 5000, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 2303

[State 5000, 6]
type = changestate
trigger1 = animtime = 0
value = 8086

[State 5000, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

[Statedef 8089]
type    = S
movetype= H
physics = N
velset = 0,0

[State 1800, 2]
type = screenbound
Trigger1 = Time >= 0
value = 1
movecamera = 0,0

[State 5000, 1]
type = palfx
trigger1 = Time = 0
time = 45
add = -13,-125,50
sinadd = 54,54,0,10
color = 0
invertall = 1

[State 5000, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 2303

[State 5000, 6]
type = changestate
trigger1 = animtime = 0
value = 8086

[State 5000, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

[Statedef 8090]
type    = S
movetype= H
physics = N
velset = 0,0

[State 1800, 2]
type = screenbound
Trigger1 = Time >= 0
value = 1
movecamera = 0,0

[State 5000, 1]
type = palfx
trigger1 = Time = 0
time = 45
add = -105,-105,-105
sinadd = 54,54,0,10
color = 0
invertall = 1

[State 5000, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 2303

[State 5000, 6]
type = changestate
trigger1 = animtime = 0
value = 8086

[State 5000, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

[Statedef 8091]
type    = S
movetype= H
physics = N
velset = 0,0

[State 1800, 2]
type = screenbound
Trigger1 = Time >= 0
value = 1
movecamera = 0,0

[State 5000, 1]
type = palfx
trigger1 = Time = 0
time = 45
add = -105,-105,-105
sinadd = 54,54,0,10
color = 0
invertall = 1

[State 5000, 1]
type = ChangeAnim2
trigger1 = Time = 0
value = 2303

[State 5000, 6]
type = changestate
trigger1 = animtime = 0
value = 8086

[State 5000, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[Statedef 8086]
type    = A
movetype= H
physics = N
velset = -3,-8

[State 5030, 3]
type = posadd
trigger1 = time = 0
y = 70 

[State 4003, hitby]
type = hitby
trigger1 = time >= 0
value = S, HA

[State 5050, 1] 
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 
value = 5050

[State 5050, 2] 
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 5050, 3] 
type = VelAdd
trigger1 = time >=0
y = .43

[State 5050, 6]
type = ChangeState
trigger1 = time >= 50
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 6004 

;---------------------------------------------------------------------------


[Statedef 8100]
type = S
movetype = A
physics = S
anim = 8100
velset = 0,0
ctrl = 0

[State 1230, 2]
type = stopsnd
trigger1 = Time = 0
value = 0,1
channel = 0

[State 4001, width]
type = Width
trigger1 = time >= 0
edge = 50,20

[State 240, 4]
type = varset
trigger1 = Time = 0
var(21) = 0

[State 240, 4]
type = ChangeState
trigger1 = animtime = 0
value = 8101
ctrl = 0

;----------------------------

[Statedef 8101]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0

[State 240, DOWN]
type = ChangeState
trigger1 = time = 0
trigger1 = var(21) = 0 || var(21) = 2 || var(21) = 7  || var(21) = 9 || var(21) = 15 || var(21) = 19
value = 8102
ctrl = 0

[State 240, FORWARD]
type = ChangeState
trigger1 = time = 0
trigger1 = var(21) = 1 || var(21) = 3 || var(21) = 5  || var(21) = 6 || var(21) = 8 || var(21) = 10 || var(21) = 11  || var(21) = 13 || var(21) = 17 || var(21) = 20
value = 8103
ctrl = 0

[State 240, UP]
type = ChangeState
trigger1 = time = 0
trigger1 = var(21) = 4 || var(21) = 12 || var(21) = 14 || var(21) = 16 || var(21) = 18
value = 8104
ctrl = 0

[State 240, 4]
type = ChangeState
trigger1 = var(21) >= 21
trigger1 = time = 0
value = 8105
ctrl = 0

;----------------------------
[Statedef 8102]
type = S
movetype = A
physics = S
velset = 0,0
anim = 8102
ctrl = 0

[State 240, 4]
type = varadd
trigger1 = Time = 0
var(21) = 1

[State 230, 3]
type = HitDef
trigger1 = var(21) <= 1
trigger1 = AnimElem = 2
attr = S, HA
animtype = Hard
damage = 16
hitflag = MAFD
guardflag = MA
pausetime = 2,2
sparkno = S308
sparkxy = -10,-13
hitsound = S4,33
guardsound = S20,6
priority = 7, Hit
ground.type = low
ground.slidetime = 18
ground.hittime = 18
down.hittime = 24
ground.velocity = -0,-0
air.velocity = -0,-0
down.velocity = -0,-0
airguard.velocity = -4,-4
guard.velocity = -11
guard.slidetime = 18
ground.cornerpush.veloff = -0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -0
p2stateno = 6012
forcestand = 1
snap = 80,0
yaccel = .4
kill = 0

[State 230, 3]
type = HitDef
trigger1 = var(21) > 1
trigger1 = AnimElem = 2
attr = S, HA
animtype = Hard
damage = 15
hitflag = MAFD
guardflag = MA
pausetime = 2,2
sparkno = S308
sparkxy = -10,-20
hitsound = S4,33
guardsound = S20,6
priority = 7, Hit
ground.type = low
ground.slidetime = 18
ground.hittime = 18
down.hittime = 24
ground.velocity = -0,-0
air.velocity = -0,-0
down.velocity = -0,-0
airguard.velocity = -4,-4
guard.velocity = -11
guard.slidetime = 18
ground.cornerpush.veloff = -0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -0
p2stateno = 6012
yaccel = .4
kill = 0

[State 240, 4]
type = ChangeState
trigger1 = animtime = 0
value = 8101
ctrl = 0

;----------------------------
[Statedef 8103]
type = S
movetype = A
physics = S
velset = 0,0
anim = 8103
ctrl = 0

[State 230, 3]
type = HitDef
trigger1 = var(21) < 20
trigger1 = AnimElem = 2
attr = S, HA
animtype = Hard
damage = 15
hitflag = MAFD
guardflag = MA
pausetime = 2,2
sparkno = S308
sparkxy = -10,-58
hitsound = S4,38
guardsound = S20,6
priority = 7, Hit
ground.type = high
ground.slidetime = 18
ground.hittime = 18
down.hittime = 24
ground.velocity = -0,-0
air.velocity = -0,-0
down.velocity = -0,-0
airguard.velocity = -4,-4
guard.velocity = -11
guard.slidetime = 18
ground.cornerpush.veloff = -0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -0
p2stateno = 6014
yaccel = .4
kill = 0

[State 230, 3]
type = HitDef
trigger1 = var(21) >= 20
trigger1 = AnimElem = 2
attr = S, HA
animtype = Hard
damage = 16
hitflag = MAFD
guardflag = MA
pausetime = 2,2
sparkno = S308
sparkxy = -10,-58
hitsound = S4,30
guardsound = S20,6
priority = 7, Hit
ground.type = high
ground.slidetime = 18
ground.hittime = 18
down.hittime = 24
ground.velocity = -2.7,-8.7
air.velocity = -2.7,-8.7
down.velocity = -4,-6
airguard.velocity = -4,-4
guard.velocity = -11
guard.slidetime = 18
ground.cornerpush.veloff = -0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -0
p2stateno = 6000
yaccel = .4
kill = 0
fall = 1
fall.recover = 0

[State 240, 4]
type = varadd
trigger1 = Time = 0
var(21) = 1

[State 240, 4]
type = ChangeState
trigger1 = animtime = 0
value = 8101
ctrl = 0

;---------------------------
[Statedef 8104]
type = S
movetype = A
physics = S
velset = 0,0
anim = 8104
ctrl = 0

[State 230, 3]
type = HitDef
trigger1 = AnimElem = 2
attr = S, HA
animtype = Hard
damage = 16
hitflag = MAFD
guardflag = MA
pausetime = 2,2
sparkno = S308
sparkxy = -10,-98
hitsound = S4,30
guardsound = S20,6
priority = 7, Hit
ground.type = high
ground.slidetime = 18
ground.hittime = 18
down.hittime = 24
ground.velocity = -0,-0
air.velocity = -0,-0
down.velocity = -0,-0
airguard.velocity = -4,-4
guard.velocity = -11
guard.slidetime = 18
ground.cornerpush.veloff = -0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -0
p2stateno = 6014
yaccel = .4
kill = 0

[State 240, 4]
type = varadd
trigger1 = Time = 0
var(21) = 1

[State 240, 4]
type = ChangeState
trigger1 = animtime = 0
value = 8101
ctrl = 0

;-----------------------------

[Statedef 8105]
type = S
movetype = A
physics = S
velset = 0,0
anim = 8105
ctrl = 0

[State 240, 4]
type = ChangeState
trigger1 = animtime = 0
value = 8054
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 6000]
type    = A
movetype= H
physics = N
velset = 0,0

[State 4003, hitby]
type = hitby
trigger1 = time >= 0
value = S, HA

[State 4003, push]
type = playerpush
trigger1 = time >= 0
value = 0

[State 5020, 1] 
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(airtype) = 1),5000,5010) + GetHitVar(animtype)

[State 5020, 2] 
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5020, 3] 
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) 

[State 5020, 4] 
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5020, 5]
type = ChangeState
trigger1 = HitShakeOver
value = 6001

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

;---------------------------------------------------------------------------
[Statedef 6001]
type    = A
movetype= H
physics = N
ctrl = 0

[State 4003, push]
type = playerpush
trigger1 = time >= 0
value = 0

[State 4003, hitby]
type = hitby
trigger1 = time >= 0
value = S, HA

[State 5030, 1]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5030, 2]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 5030, 4]
type = ChangeState
trigger1 = Vel Y > 0    
trigger1 = Pos Y >= 0  
value = 6003 

[State 5030, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 6002 

;---------------------------------------------------------------------------
[Statedef 6002]
type    = A
movetype= H
physics = N

[State 5035, 1]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5035)
trigger1 = Anim != [5051,5059] 
trigger1 = Anim != 5090 
value = 5035

[State 5035, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5035, 4]
type = ChangeState
trigger1 = HitOver  
trigger2 = AnimTime = 0 
trigger3 = Vel Y > 0    
trigger3 = Pos Y >= 0  
trigger4 = Time = 0     
trigger4 = Anim != 5035 
value = 6003 

;---------------------------------------------------------------------------
[Statedef 6003]
type    = A
movetype= H
physics = N

[State 4003, push]
type = playerpush
trigger1 = time >= 0
value = 0

[State 4003, hitby]
type = hitby
trigger1 = time >= 0
value = S, HA

[State 5050, 1] 
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 
value = 5050

[State 5050, 2] 
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 5050, 3] 
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5050, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 6004 

;---------------------------------------------------------------------------
[Statedef 6004]
type    = L
movetype= H
sprpriority = 1
physics = N

[State 4003, hitby]
type = hitby
trigger1 = time >= 0
value = S, HA

[State 4003, push]
type = playerpush
trigger1 = time >= 0
value = 0

[State 5100, 1]
type = VelSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
trigger1 = vel x > 1
x = 1

[State 5100, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5100, Var] 
type = VarSet
trigger1 = Time = 0
sysvar(1) = floor(vel y)

[State 5100, 2] 
type = ChangeAnim
triggerall = time = 0
trigger1 = (anim != [5051,5059]) && (anim != [5061,5069])
trigger2 = !SelfAnimExist(5100 + (anim % 10))
value = 5100

[State 5100, 3] 
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

[State 5100, 6] 
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 5100, 7]
type = ChangeState
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
value = 6006

[State 5100, 8]
type = GameMakeAnim
trigger1 = Time = 1
value = 61
pos = 0, 0
under = 1

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 5100, 10]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5100, 11]
type = PosFreeze
trigger1 = 1

[State 5100, 12]
type = ChangeState
trigger1 = AnimTime = 0
value = 6005

[State 5100, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

;--------------------------------------------------------------
[Statedef 6005]
type    = L
movetype= H
physics = N

[State 4003, push]
type = playerpush
trigger1 = time >= 0
value = 0

[State 4003, hitby]
type = hitby
trigger1 = time >= 0
value = S, HA

[State 5101, 1] 
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5101,5109]
trigger2 = !SelfAnimExist(5160 + (anim % 10))
value = 5160

[State 5101, 2] 
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5101,5109]
trigger1 = SelfAnimExist(5160 + (anim % 10))
value = 5160 + (anim % 10)

[State 5101, 3]
type = HitFallVel
trigger1 = Time = 0

[State 5101, 4]
type = PosSet
trigger1 = Time = 0
y = 20

[State 5101, 5] 
type = VelAdd
trigger1 = 1
y = .4

[State 5101, 6] 
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 12
type = ChangeState
value = 6006

;---------------------------------------------------------------------------
[Statedef 6006]
type    = L
movetype= H
physics = N

[State 4003, push]
type = playerpush
trigger1 = time <= 20
value = 0

[State 4003, hitby]
type = hitby
trigger1 = time <= 50
value = S, HA

[State 5110, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5110, 1]
type = ChangeAnim
persistent = 0
trigger1 = SelfAnimExist(5110 + (anim % 10))
trigger1 = anim = [5081,5089]
value = 5110 + (anim % 10)

[State 5110, 2] 
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] 
trigger1 = anim != [5161,5169]
trigger2 = !SelfAnimExist(5170 + (anim % 10))
value = 5170

[State 5110, 3] 
type = ChangeAnim
triggerall = time = 0
triggerall = anim != [5110,5119] 
trigger1 = anim = [5161,5169]
trigger1 = SelfAnimExist(5170 + (anim % 10))
value = 5170 + (anim % 10)

[State 5110, 4]
type = HitFallDamage
trigger1 = Time = 0

[State 5110, 5]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5110, Var] 
type = VarSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[State 5110, 6]
type = PlaySnd
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5110, 7]
type = GameMakeAnim
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 10

[State 5110, 8]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5110, 9]
type = ChangeAnim
persistent = 0
triggerall = anim = [5171,5179]
triggerall = SelfAnimExist(5110 + (anim % 10))
trigger1 = AnimTime = 0
trigger2 = SysVar(0)
value = 5110 + (anim % 10)

[State 5110, 10]
type = ChangeAnim
persistent = 0
triggerall = Anim != [5111,5119]
trigger1 = AnimTime = 0
trigger2 = SysVar(0)
value = 5110

[State 5110, 11] 
type = ChangeState
triggerall = !alive
trigger1 = AnimTime = 0
trigger2 = SysVar(0)
trigger3 = Anim = [5110,5119]
value = 5150

[State 5110, 12]
type = VarSet
trigger1 = SysVar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 5110, 13] 
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

[State 5101, GETUP] 
trigger1 = time >= 150
type = selfstate
value = 5120

[Statedef 6007]
type    = A
movetype= H
physics = N
velset = 0,0

[State 4003, push]
type = playerpush
trigger1 = time >= 0
value = 0

[State 4003, hitby]
type = hitby
trigger1 = time >= 0
value = S, HA

[State 5020, 3] 
type = ChangeAnim2
trigger1 = Time = 0
value = 6007

[State 5020, 4]
type = ChangeAnim2
trigger1 = Time > 0
value = anim

[State 5020, 5]
type = ChangeState
trigger1 = HitShakeOver
value = 6001

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

[Statedef 6008]
type    = L
movetype= H
physics = N
velset = 0,0

[State 4003, push]
type = playerpush
trigger1 = time >= 0
value = 0

[State 4003, hitby]
type = hitby
trigger1 = time >= 0
value = S, HA

[State 5080, 1] 
type = VarSet
trigger1 = time = 0
sysvar(2) = ifelse (GetHitVar(yvel) = 0, 5080, 5090)

[State 5080, 2]
type = VarAdd
trigger1 = time = 0
trigger1 = (anim = [5081,5089]) || (anim = [5111,5119])
trigger1 = SelfAnimExist(sysvar(2) + (anim % 10))
sysvar(2) = anim % 10

[State 5080, 3] 
type = VarSet
trigger1 = time = 0
trigger1 = sysvar(2) = 5090
trigger1 = !SelfAnimExist(5090)
sysvar(2) = 5030

[State 5080, 3] 
type = null
trigger1 = 1
value = sysvar(2)

[State 5020, 3] 
type = ChangeAnim2
trigger1 = Time = 0
value = 6008

[State 5020, 4] 
type = ChangeAnim2
trigger1 = Time > 0
value = anim

[State 5100, 8]
type = GameMakeAnim
trigger1 = Time = [1,5]
value = 61
pos = 0, -10
under = 1

[State 5080, 5]
type = ChangeState
trigger1 = HitShakeOver
value = 6001 
;---------------------------------------------------------------------------
[Statedef 6009]
type    = L
movetype= H
physics = N
velset = 0,0

[State 4003, push]
type = playerpush
trigger1 = time >= 0
value = 0

[State 4003, hitby]
type = hitby
trigger1 = time >= 0
value = S, HA

[State 5080, 1] 
type = VarSet
trigger1 = time = 0
sysvar(2) = ifelse (GetHitVar(yvel) = 0, 5080, 5090)

[State 5080, 2]
type = VarAdd
trigger1 = time = 0
trigger1 = (anim = [5081,5089]) || (anim = [5111,5119])
trigger1 = SelfAnimExist(sysvar(2) + (anim % 10))
sysvar(2) = anim % 10

[State 5080, 3] 
type = VarSet
trigger1 = time = 0
trigger1 = sysvar(2) = 5090
trigger1 = !SelfAnimExist(5090)
sysvar(2) = 5030

[State 5080, 3] 
type = null
trigger1 = 1
value = sysvar(2)

[State 5020, 3] 
type = ChangeAnim2
trigger1 = Time = 0
value = 6008

[State 5020, 4] 
type = ChangeAnim2
trigger1 = Time > 0
value = anim

[State 5080, 5]
type = ChangeState
trigger1 = HitShakeOver
value = 6001 

;---------------------------------------------------------------------------
[Statedef 6010]
type    = S
movetype= H
physics = N
velset = 0,0

[State 4003, push]
type = playerpush
trigger1 = time >= 0
value = 0

[State 4003, hitby]
type = hitby
trigger1 = time >= 0
value = S, HA

[State 5000, 1] 
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(groundtype) = 1),5000,5010) + GetHitVar(animtype)

[State 5000, 2] 
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5000, 3] 
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) 

[State 5000, 3] 
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5000, 4] 
type = StateTypeSet
trigger1 = Time = 0
trigger1 = GetHitVar(yvel) != 0 && GetHitVar(fall)
trigger2 = Pos Y != 0
type = a

[State 5000, 5]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0
value = 6011 

[State 5000, 6]
type = ChangeState
trigger1 = HitShakeOver
value = 6001

[State 5000, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 5000, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5000, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;---------------------------------------------------------------------------
[Statedef 6011]
type    = S
movetype= H
physics = S

[State 4003, push]
type = playerpush
trigger1 = time >= 0
value = 0

[State 4003, hitby]
type = hitby
trigger1 = time >= 0
value = S, HA

[State 5001, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 5001, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
value = 5005 + GetHitVar(animtype) + (GetHitVar(groundtype)=2)*10

[State 5001, 3] 
type = VelMul
trigger1 = Time >= GetHitVar(slidetime)
x = .6

[State 5001, 4]
type = VelSet
trigger1 = HitOver
x = 0

[State 5001, 5]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 5001, 6]
type = ChangeState
trigger1 = HitOver
value = 0
ctrl = 1

;---------------------------------------------------------------------------

;---------------------
;---------------------------------------------------------------------------
[Statedef 6012]
type    = S
movetype= H
physics = N
velset = 0,0

[State 4003, push]
type = posset
trigger1 = time = 0
y = 0

[State 4003, push]
type = playerpush
trigger1 = time >= 0
value = 0

[State 4003, hitby]
type = hitby
trigger1 = time >= 0
value = S, HA

[State 5020, 3] 
type = ChangeAnim
trigger1 = Time = 0
value = 5012

[State 5080, 5]
type = ChangeState
trigger1 = HitShakeOver
value = 6013 
ctrl = 0

;---------------------------------------------------------------------------
[Statedef 6013]
type    = S
movetype= H
physics = N
velset = 0,0

[State 4003, push]
type = playerpush
trigger1 = time >= 0
value = 0

[State 4003, hitby]
type = hitby
trigger1 = time >= 0
value = S, HA

[State 4003, push]
type = posset
trigger1 = time = 0
y = 0

[State 5020, 3] 
type = ChangeAnim
trigger1 = Time = 0
value = 5017

[State 5080, 5]
type = ChangeState
trigger1 = time = 15
value = 6000 
ctrl = 0

;---------------------------------------------
[Statedef 6014]
type    = S
movetype= H
physics = N
velset = 0,0

[State 4003, push]
type = playerpush
trigger1 = time >= 0
value = 0

[State 4003, hitby]
type = hitby
trigger1 = time >= 0
value = S, HA

[State 4003, push]
type = posset
trigger1 = time = 0
y = 0

[State 5020, 3] 
type = ChangeAnim
trigger1 = Time = 0
value = 5002

[State 5080, 5]
type = ChangeState
trigger1 = HitShakeOver
value = 6015 
ctrl = 0
;------------------------------------
[Statedef 6015]
type    = S
movetype= H
physics = N
velset = 0,0

[State 4003, push]
type = playerpush
trigger1 = time >= 0
value = 0

[State 4003, hitby]
type = hitby
trigger1 = time >= 0
value = S, HA

[State 4003, push]
type = posset
trigger1 = time = 0
y = 0

[State 5020, 3] 
type = ChangeAnim
trigger1 = Time = 0
value = 5007

[State 5080, 5]
type = ChangeState
trigger1 = time = 15
value = 6000 
ctrl = 0

;-----------------------------------------------------------

;---------------------------------------------------------------------------
[Statedef 6016]
type    = L
movetype= H
physics = N
velset = 0,0

[State 4003, hitby]
type = hitby
trigger1 = time >= 0
value = S, HA

[State 4003, push]
type = playerpush
trigger1 = time >= 0
value = 0

[State 5080, 1] 
type = VarSet
trigger1 = time = 0
sysvar(2) = ifelse (GetHitVar(yvel) = 0, 5080, 5090)

[State 5080, 2]
type = VarAdd
trigger1 = time = 0
trigger1 = (anim = [5081,5089]) || (anim = [5111,5119])
trigger1 = SelfAnimExist(sysvar(2) + (anim % 10))
sysvar(2) = anim % 10

[State 5080, 3] 
type = VarSet
trigger1 = time = 0
trigger1 = sysvar(2) = 5090
trigger1 = !SelfAnimExist(5090)
sysvar(2) = 5030

[State 5080, 3] 
type = ChangeAnim
trigger1 = 1
value = sysvar(2)

[State 5080, 4]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0
value = 6006 

[State 5080, 5]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) != 0
value = 6001 
;---------------------------------------------------------------------------

;===================================================
;===============

[Statedef 8510]
type = S
movetype = A
physics = S
anim = 8510
velset = 0,0
ctrl = 0

[State 1230, 2]
type = stopSnd
trigger1 = Time = 0
value = 0,1
channel = 0

[State 270, 2]
type = Velset
trigger1 = animelem = 2
x = 11

[State 4001, width]
type = Width
trigger1 = time >= 0
edge = 40,20

[State 3010, Envshake]
type = envshake
Trigger1 = animelem = 5, = 0
time = 15
ampl = -5
freq = 105

[State 180, 2]
type = Explod
trigger1 = animelem = 5, = 0
id = 1507
anim = 1507
pos = 7, 7
postype = p2
ontop = 0
sprpriority = -1
ownpal = 1

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 5, =0
volume = 30
value = 4,32

[State 230, 3]
type = HitDef
trigger1 = AnimElem = 5
attr = S, HA
animtype = Hard
damage = 30
hitflag = MAFD
guardflag = L
pausetime = 2,4
sparkno = S308
sparkxy = -0,-5
hitsound = S4,30
guardsound = S200,3
priority = 7, Hit
ground.type = low
ground.slidetime = 18
ground.hittime = 18
down.hittime = 28
ground.velocity = -0,-0
air.velocity = -0,-0
down.velocity = -0,-0
airguard.velocity = -4,-4
guard.velocity = -11
guard.slidetime = 18
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
p2stateno = 6016
yaccel = .4
kill = 0
fall = 1
fall.recover = 0

[State 240, 4]
type = varset
trigger1 = Time = 0
var(21) = 0

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 4511
ctrl = 0

;----------------------------------------------------
[Statedef 4511]
type = S
movetype = A
physics = S
anim = 4511
velset = 0,0
ctrl = 0

[State 4001, width]
type = Width
trigger1 = time >= 0
edge = 40,20

[State 3010, Envshake]
type = envshake
Trigger1 = animelem = 4, = 0
time = 15
ampl = -5
freq = 105

[State 180, 2]
type = Explod
trigger1 = animelem = 4, = 0
id = 1507
anim = 1507
pos = 7, 7
postype = p2
ontop = 0
sprpriority = -1
ownpal = 1

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 4, =0
volume = 30
value = 4,32

[State 230, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = S, HA
animtype = Hard
damage = 38
hitflag = MAFD
guardflag = L
pausetime = 2,4
sparkno = S308
sparkxy = -0,-5
hitsound = S4,30
guardsound = S200,3
priority = 7, Hit
ground.type = low
ground.slidetime = 18
ground.hittime = 18
down.hittime = 28
ground.velocity = -0,-0
air.velocity = -0,-0
down.velocity = -0,-0
airguard.velocity = -4,-4
guard.velocity = -11
guard.slidetime = 18
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff =0
p2stateno = 6016
yaccel = .4
kill = 0
fall = 1
fall.recover = 0

[State 240, 4]
type = varadd
trigger1 = Time = 0
var(21) = 1

[State 240, 4]
type = ChangeState
trigger1 = var(21)  < 5 
trigger1 = AnimTime = 0
value = 4511
ctrl = 0

[State 240, 4]
type = ChangeState
trigger1 = var(21)  >= 5 
trigger1 = AnimTime = 0
value = 4514
ctrl = 0
;----------------------------------------------------

;----------------------------------------------------
[Statedef 4514]
type = S
movetype = A
physics = S
anim = 4511
velset = 0,0
ctrl = 0

[State 4001, width]
type = Width
trigger1 = time >= 0
edge = 40,20

[State 3010, Envshake]
type = envshake
Trigger1 = animelem = 4, = 0
time = 15
ampl = -8
freq = 105

[State 180, 2]
type = Explod
trigger1 = animelem = 4, = 0
id = 1507
anim = 1507
pos = 7,7
postype = p2
ontop = 0
sprpriority = -1
ownpal = 1

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 4, =0
volume = 30
value = 4,32

[State 230, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = S, HA
animtype = Hard
damage = 42
hitflag = MAFD
guardflag = L
pausetime = 9,11
sparkno = S308
sparkxy = -0,-5
hitsound = S4,30
guardsound = S200,3
priority = 7, Hit
ground.type = low
ground.slidetime = 18
ground.hittime = 18
down.hittime = 28
ground.velocity = -4,-0
air.velocity = -4,-0
down.velocity = -4,-0
airguard.velocity = -4,-4
guard.velocity = -11
guard.slidetime = 18
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
p2stateno = 6016
yaccel = .4
kill = 0
fall = 1
fall.recover = 0

[State 240, 4]
type = varset
trigger1 = Time = 0
var(21) = 0

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 4512
ctrl = 0
;----------------------------------------------------

[Statedef 4512]
type = S
movetype = A
physics = S
anim = 4512
velset = 0,0
ctrl = 0

[State 270, 2]
type = PlaySnd
trigger1 = animelem = 1, =2
value = 4,28

[State 270, 2]
type = Velset
trigger1 = animelem = 1
x = 5

[State 230, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = S, HA
animtype = Hard
damage = 35
hitflag = MAFD
guardflag = L
pausetime = 12,12
sparkno = S308
sparkxy = -22,-15
hitsound = S4,30
guardsound = S200,3
priority = 7, Hit
ground.type = low
ground.slidetime = 18
ground.hittime = 18
down.hittime = 24
ground.velocity = -1,-9
air.velocity = -3,-6
down.velocity = -3,-6
airguard.velocity = -4,-4
guard.velocity = -11
guard.slidetime = 18
ground.cornerpush.veloff = -0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -0
p2stateno = 6009
yaccel = .4
kill = 0
fall = 1
fall.recover = 0

[State 230, 3]
type = HitDef
trigger1 = AnimElem = 6
attr = S, HA
animtype = Hard
damage = 35
hitflag = MAFD
guardflag = MA
pausetime = 12,12
sparkno = S308
sparkxy = 5,-65
hitsound = S4,30
guardsound = S200,3
priority = 7, Hit
ground.type = low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -2,-5
air.velocity = -2,-5
airguard.velocity = -9,-1
guard.velocity = -11
guard.slidetime = 18
ground.cornerpush.veloff = -0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -0
yaccel = .39
kill = 0
fall = 1
fall.recover = 0
p2stateno = 6000

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 4513
ctrl = 0

;---------------------------------------

[Statedef 4513]
type = S
movetype = A
physics = S
anim = 4513
velset = 0,0
ctrl = 0

[State 270, 2]
type = Velset
trigger1 = animelem = 1
x = 4

[State 270, 2]
type = Velset
trigger1 = animelem = 3, = 2
x = 0

[State 4001, width]
type = Width
trigger1 = animelem = 1, >= 0
edge = 60,20

[State 270, 2]
type = PlaySnd
trigger1 = animelem = 1, =2
value = 4,28

[State 180, explod]
type = Explod
trigger1 = animelem = 3, = 0
id = 2005
anim = 2005
pos = 0,0
sprpriority = 2
ownpal = 1
removeongethit = 1
removetime = 24

[State 230, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = S, HA
animtype = Hard
damage = 39
hitflag = MAFD
guardflag = MA
pausetime = 14,14
sparkno = S308
sparkxy = -10,-90
hitsound = S4,30
guardsound = S200,3
priority = 7, Hit
ground.type = low
ground.slidetime = 18
ground.hittime = 18
down.hittime = 24
ground.velocity = -3,-7
air.velocity = -3,-7
down.velocity = -3,-7
airguard.velocity = -4,-4
guard.velocity = -11
guard.slidetime = 18
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff =0
p2stateno = 6007
yaccel = .4
kill = 0
fall = 1
fall.recover = 0
palfx.time = 25
palfx.add = -100,-100,-100
palfx.sinadd = -10,-10,-10,10
palfx.color = 0
palfx.invertall = 1

[State 1000, Attack]
type = playsnd
trigger1 = animelem = 3,=0
value = 4,34

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 4515
ctrl = 0
;-------------------------------------------

;===================================================
[Statedef 4515]
type = S
movetype = A
physics = N
anim = 4515
velset = 0,0
ctrl = 0

[State 1000, Taunt Var 18]
type = varset
trigger1 = time = 0
var(18) = 0

[State 4001, width]
type = Width
trigger1 = time >= 0
edge = 50,20

[State 180, explod]
type = Explod
trigger1 = animelem = 2
id = 2106
anim = 2106
pos = 0,0
sprpriority = 2
ownpal = 1
removeongethit = 1
removetime = 1

[State 180, explod]
type = Explod
trigger1 = animelem = 3
id = 2107
anim = 2107
pos = 0,0
sprpriority = 2
ownpal = 1
bindtime = -1
removeongethit = 1
removetime = 2

[State 180, explod]
type = Explod
trigger1 = animelem = 4
id = 2108
anim = 2108
pos = 0,0
sprpriority = 2
ownpal = 1
removeongethit = 1
bindtime = -1
removetime = 10

[State 1000, Cancel]
type = velset
trigger1 = animelem = 2 
x = 10

[State 1000, Cancel]
type = velset
trigger1 = animelem = 5, = 0 
x = 2

[State 1000, Cancel]
type = velset
trigger1 = animelem = 5, = 3
x = 0

[State 280, 3]
type = HitDef
trigger1 = animelem = 5
trigger2 = AnimElem = 7
trigger3 = animelem = 9
attr = S, HA
damage = 11
animtype = Diagup
hitflag = MAF
guardflag = MA
pausetime = 4,4
sparkno = S308

sparkxy = -10,-115
hitsound = -1
guardsound = S200,3
ground.velocity = -0,-1
air.velocity = -0,-1
guard.velocity = -11
fall = 1
guard.velocity = -8.9
p2stateno = 6007
kill = 0
fall.recover = 0

[State 280, 3]
type = HitDef
trigger1 = AnimElem = 4
trigger2 = animelem = 6
trigger3 = animelem = 8
trigger4 = AnimElem = 10
attr = S, HA
damage = 11
animtype = Diagup
hitflag = MAF
guardflag = MA
pausetime = 4,4
sparkno = S308

sparkxy = -10,-115
hitsound = S4,27
guardsound = S200,3
ground.velocity = -0,-1
air.velocity = -0,-1
guard.velocity = -11
fall = 1
guard.velocity = -8.9
p2stateno = 6007
kill = 0
fall.recover = 0

[State 280, 3]
type = HitDef
trigger1 = AnimElem = 11
attr = S, HA
damage = 11
animtype = Diagup
hitflag = MAF
guardflag = MA
pausetime = 14,14
sparkno = S308

sparkxy = -10,-115
hitsound = S4,27
guardsound = S200,3
ground.velocity = -4,-9
air.velocity = -4,-6
guard.velocity = -11
fall = 1
guard.velocity = -8.9
fall.recover = 0

[State 200, 1]
type = afterimage
trigger1 = time = 0
time = 39
palbright = 0,0,0
palcontrast = 250,250,250
paladd = 0,0,0
palmul = 0.6,0.6,0.6
timegap = 1
framegap = 2
length = 5

[State 180, explod]
type = Explod
trigger1 = animelem = 4
id = 8055
anim = 8055
pos = 0,0
sprpriority = 2
ownpal = 1
removeongethit = 1
bindtime = 30

[State 1000, END]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1
;----------------------------------------


;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
;===================

[Statedef 8520]
type = S
movetype = A
physics = S
anim = 8520
velset = 0,0
ctrl = 0

[State 1230, 2]
type = stopSnd
trigger1 = Time = 0
value = 0,1
channel = 0


[State 270, 2]
type = PlaySnd
trigger1 = animelem = 1, =2
value = 4,28

[State 180, explod]
type = Explod
trigger1 = animelem = 3, = 0
id = 2005
anim = 2005
pos = 0,0
sprpriority = 2
ownpal = 1
removeongethit = 1
removetime = 24

[State 230, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = S, HA
animtype = Hard
damage = 36
hitflag = MAFD
guardflag = MA
pausetime = 10,10
sparkno = S308
sparkxy = 10,-5
hitsound = S4,27
guardsound = S200,3
priority = 7, Hit
ground.type = low
ground.slidetime = 18
ground.hittime = 18
down.hittime = 24
ground.velocity = -.5,-7
air.velocity = -.5,-7
down.velocity = -1,-7
airguard.velocity = -4,-4
guard.velocity = -11
guard.slidetime = 18
ground.cornerpush.veloff =0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
p2stateno = 6008
yaccel = .4
kill = 0
fall = 1
fall.recover = 0
palfx.time = 25
palfx.add = -100,-100,-100
palfx.sinadd = -10,-10,-10,10
palfx.color = 0
palfx.invertall = 1

[State 1000, Attack]
type = playsnd
trigger1 = animelem = 3,=0
value = 4,34

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 4521
ctrl = 0

;------------------------------------------
;----------
[Statedef 4521]
type = S
movetype = A
physics = S
anim = 4521
velset = 0,0
ctrl = 0

[State 4001, width]
type = Width
trigger1 = time >= 0
edge = 30,20

[State 2503, vel]
type = velset
trigger1 = animelem = 2
x = 16

[State 2503, fx]
type = playsnd
trigger1 = animelem = 4
value = 4,35
volume = -40

[State 2503, hitdef]
type = HitDef
trigger1 = AnimElem = 4
attr = S, HA
animtype = hard
damage = 30,5
guardflag = M
pausetime = 2,2
sparkno = S1043
sparkxy = -10,-70
hitsound = S4,39
guardsound = S200,3
ground.type = Low
ground.slidetime = 24
ground.hittime = 22
ground.velocity = -0,-0
air.velocity = -0,-0
airguard.velocity = -3,-1.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
guard.velocity = -11
fall = 1
air.juggle = 10
p2stateno = 6012
yaccel = .39
kill = 0

[State 2503, explod]
type = explod
trigger1 = animelem = 4
id = 1047
anim = 1047
pos = 80,-70
postype = p1
sprpriority = 2
ownpal = 1
removeongethit = 1
persistent = 0
ignorehitpause = 1
removetime = 23

[State 2503, fx]
type = playsnd
trigger1 = animelem = 10
value = 4,35
volume = -40

[State 2503, hitdef]
type = HitDef
trigger1 = AnimElem = 10
attr = S, HA
animtype = hard
damage = 30,5
guardflag = M
pausetime = 2,2
sparkno = S1043
sparkxy = -10,-70
hitsound = S4,39
guardsound = S200,3
ground.type = Low
ground.slidetime = 24
ground.hittime = 22
ground.velocity = -.00001,-0
air.velocity = -.00001,-0
airguard.velocity = -3,-1.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
guard.velocity = -11
fall = 1
air.juggle = 10
p2stateno = 6014
yaccel = .39
kill = 0

[State 2503, explod]
type = explod
trigger1 = animelem = 10
id = 1047
anim = 1047
pos = -10,-70
postype = p2
facing = -1
sprpriority = 2
ownpal = 1
removeongethit = 1
persistent = 0
ignorehitpause = 1
removetime = 23

[State 2503, Var]
type = varset
trigger1 = time = 0
var(21) = 0

[State 2503, changestate]
type = changeState
trigger1 = animtime = 0
value = 4522
ctrl = 0

;------------------------------------------
;------------------------------------------
[Statedef 4522]
type = S
movetype = A
physics = S
anim = 4522
velset = 0,0
ctrl = 0

[State 4001, width]
type = Width
trigger1 = time >= 0
edge = 30,20

[State 2503, fx]
type = playsnd
trigger1 = animelem = 2
value = 4,35
volume = -40

[State 2503, hitdef]
type = HitDef
trigger1 = AnimElem = 2
attr = S, HA
animtype = hard
damage = 30,5
guardflag = M
pausetime = 2,2
sparkno = S1043
sparkxy = 0,-70
hitsound = S4,39
guardsound = S200,3
ground.type = Low
ground.slidetime = 24
ground.hittime = 22
ground.velocity = -0,-0
air.velocity = -0,-0
airguard.velocity = -3,-1.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
guard.velocity = -11
fall = 1
air.juggle = 10
p2stateno = 6012
snap = 60 , -0
yaccel = .39
kill = 0

[State 2503, fx]
type = playsnd
trigger1 = animelem = 7
value = 4,35
volume = -40

[State 2503, hitdef]
type = HitDef
trigger1 = AnimElem = 7
attr = S, HA
animtype = hard
damage = 32,5
guardflag = M
pausetime = 2,2
sparkno = S1043
sparkxy = -10,-70
hitsound = S4,39
guardsound = S200,3
ground.type = Low
ground.slidetime = 24
ground.hittime = 22
ground.velocity = -0,-0
air.velocity = -0,-0
airguard.velocity = -3,-1.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
guard.velocity = -11
fall = 1
air.juggle = 10
p2stateno = 6014
yaccel = .39
kill = 0

[State 2503, explod]
type = explod
trigger1 = animelem = 2,= 0
id = 1047
anim = 1047
pos = -10,-70
postype = p2
facing = -1
sprpriority = 2
ownpal = 1
removeongethit = 1
persistent = 0
ignorehitpause = 1
removetime = 23

[State 2503, explod]
type = explod
trigger1 = animelem = 7,= 0
id = 1047
anim = 1047
pos = -10,-70
postype = p2
facing = -1
sprpriority = 2
ownpal = 1
removeongethit = 1
persistent = 0
ignorehitpause = 1
removetime = 23

[State 2503, Var]
type = varadd
trigger1 = time = 0
var(21) = 1

[State 2503, changestate]
type = changeState
trigger1 = var(21) < 4
trigger1 = animtime = 0
value = 4522
ctrl = 0

[State 2503, changestate]
type = changeState
trigger1 = var(21) >= 4
trigger1 = animtime = 0
value = 4523
ctrl = 0

;--------------------------------------------

;------------------------------------------
[Statedef 4523]
type = S
movetype = A
physics = S
anim = 4523
velset = 0,0
ctrl = 0

[State 4001, width]
type = Width
trigger1 = time >= 0
edge = 30,20

[State 2503, fx]
type = playsnd
trigger1 = animelem = 2
value = 4,35
volume = -40

[State 2503, hitdef]
type = HitDef
trigger1 = AnimElem = 2
attr = S, HA
animtype = hard
damage = 40,5
guardflag = M
pausetime = 2,2
sparkno = S1043

sparkxy = 0,-70
hitsound = S4,39
guardsound = S200,3
ground.type = Low
ground.slidetime = 24
ground.hittime = 22
ground.velocity = -0,-0
air.velocity = -0,-0
airguard.velocity = -3,-1.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
guard.velocity = -11
fall = 1
air.juggle = 10
p2stateno = 6012
yaccel = .39
kill = 0

[State 2503, fx]
type = playsnd
trigger1 = animelem = 8
value = 4,35
volume = -40

[State 2503, hitdef]
type = HitDef
trigger1 = AnimElem = 8
attr = S, HA
animtype = hard
damage = 40,5
guardflag = M
pausetime = 10,10
sparkno = S1043

sparkxy = -10,-70
hitsound = S4,39
guardsound = S200,3
ground.type = High
ground.slidetime = 24
ground.hittime = 22
ground.velocity = -3,-7
air.velocity = -3,-7
airguard.velocity = -3,-1.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
guard.velocity = -11
fall = 1
air.juggle = 10
p2stateno = 6000
yaccel = .39
kill = 0

[State 2503, explod]
type = explod
trigger1 = animelem = 2, = 1
id = 1047
anim = 1047
pos = -10,-70
postype = p2
facing = -1
sprpriority = 2
ownpal = 1
removeongethit = 1
persistent = 0
ignorehitpause = 1
removetime = 23

[State 2503, explod]
type = explod
trigger1 = animelem = 8, = 1
id = 1047
anim = 1047
pos = -10,-70
postype = p2
facing = -1
sprpriority = 2
ownpal = 1
removeongethit = 1
persistent = 0
ignorehitpause = 1
removetime = 23

[State 2503, explod]
type = explod
trigger1 = animelem = 8, = 1
id = 1047
anim = 1047
pos = -10,-70
postype = p2
facing = 1
sprpriority = 2
ownpal = 1
removeongethit = 1
persistent = 0
ignorehitpause = 1
removetime = 23

[State 2503, Var]
type = varset
trigger1 = time = 0
var(21) = 0

[State 2503, changestate]
type = changeState
trigger1 = animtime = 0
value = 4515
ctrl = 0

;--------------------------------------------


;=====================================================
;=============

[Statedef 8530]
type = S
movetype = A
physics = S
anim = 8080
velset = 0,0
ctrl = 0

[State 1230, 2]
type = stopSnd
trigger1 = Time = 0
value = 0,1
channel = 0

[State 4001, width]
type = Width
trigger1 = time >= 0
edge = 40,20

[State 270, 2]
type = Velset
trigger1 = animelem = 2
x = 5

[State 270, 2]
type = Velset
trigger1 = animelem = 3
x = 0

[State 230, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = S, HA
animtype = Hard
damage = 32
hitflag = MAFD
guardflag = MA
pausetime = 0,0
sparkno = S307
sparkxy = -11,-5
hitsound = S4,25
guardsound = S200,3
priority = 7, Hit
ground.type = low
ground.slidetime = 18
ground.hittime = 18
down.hittime = 24
ground.velocity = -1,-9
air.velocity = 0,-9
down.velocity = 0,-9
airguard.velocity = -4,-4
guard.velocity = -11
guard.slidetime = 18
ground.cornerpush.veloff = -11
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -10
p2stateno = 4083
yaccel = .4
p2facing = 1
kill = 0
fall = 1
fall.recover = 0

[State 301, Bind]
type = TargetBind
trigger1 = animelem = 3, >=0
trigger1 = animelem = 4, < 0
pos = 40,0
time = 1

[State 301, Bind]
type = TargetBind
trigger1 = animelem = 4, >=0
trigger1 = animelem = 5, < 0
pos = 83, -30
time = 1

[State 301, Bind]
type = TargetBind
trigger1 = animelem = 5, >=0
trigger1 = animelem = 6, < 0
pos = 74,-53
time = 1

[State 301, Bind]
type = TargetBind
trigger1 = animelem = 6, >=0
trigger1 = animelem = 7, < 0
pos = 35,-122
time = 1

[State 301, Bind]
type = TargetBind
trigger1 = animelem = 7, >=0
trigger1 = animelem = 8, < 0
pos = 30,-142
time = 1

[State 240, 4]
type = varset
trigger1 = Time = 0
var(21) = 0

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 4531
ctrl = 0
;--------------------------------------------
[Statedef 4083]
type    = A
movetype= H 
physics = N
ctrl = 0

[State 820, 1]
type = screenbound
Trigger1 = Time >= 0
value = 0
movecamera = 0,0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 4083

;=============================================================
[Statedef 4531] 
type    = S
movetype= A
physics = S
anim = 4531
sprpriority = 1

[State 813, 7]
type = Width
trigger1 = time >= 0
edge = 50,20

[State 810, 10]
type = playsnd
trigger1 = animelem = 2
value = 4,36
volume = 100

[State 810, 10]
type = playsnd
trigger1 = animelem = 1
value = 4,37
volume = 20

[State 301, Bind]
type = TargetBind
trigger1 = animelem = 1, >=0
trigger1 = animelem = 2, <0
pos = 22, -105
time = 1

[State 301, Bind]
type = TargetBind
trigger1 = animelem = 2, >= 0
trigger1 = animelem = 4, <0
pos = 42, -7
time = 1

[State 3010, Envshake]
type = envshake
trigger1 = animelem = 2, = 0
time = 5
ampl = -2
freq = 105

[State 4000,Explod1]
type = Explod
trigger1 = animelem = 2
anim = 1507
id   = 1507
pos = 55,7
postype = p1
supermove = 1
bindtime = 1
ontop = 0
ownpal = 1

[State 301, liftoff]
type = targetState
Trigger1 = time = 0
value = 4532
ctrl = 0

[State 301, liftoff]
type = targetState
Trigger1 = animelem = 2, =0
value = 4534
ctrl = 0

[State 301, liftoff]
type = targetState
Trigger1 = animelem = 3, =0
value = 4533
ctrl = 0

[State 301, Bind]
type = TargetBind
trigger1 = animelem = 3, >=0
trigger1 = animelem = 4, < 0
pos = 57, -40
time = 1

[State 301, Bind]
type = TargetBind
trigger1 = animelem = 4, >=0
trigger1 = animelem = 5, < 0
pos = 47,-63
time = 1

[State 301, Bind]
type = TargetBind
trigger1 = animelem = 5, >=0
trigger1 = animelem = 6, < 0
pos = 37,-125
time = 1

[State 301, Bind]
type = TargetBind
trigger1 = animelem = 6, >=0
trigger1 = animelem = 7, < 0
pos = 33,-122
time = 1

[State 3010, Envshake]
type = envshake
Trigger1 = animelem = 2, = 0
time = 10
ampl = -8
freq = 125

[State 5110, 12]
type = hitadd
trigger1 = animelem = 2
value = 1

[State 5110, 12]
type = targetlifeadd
trigger1 = animelem = 2
value = -27
kill = 0

[State 5110, 12]
type = Varadd
trigger1 = Time = 0
var(21) = 1

[State 301, liftoff]
type = ChangeState
trigger1 = var(21) >= 14
Trigger1 = animTime = 0
value = 4536
ctrl = 0

[State 301, liftoff]
type = ChangeState
trigger1 = var(21) < 14
Trigger1 = animTime = 0
value = 4531
ctrl = 0
;------------------------------------

[Statedef 4536] 
type    = S
movetype= A
physics = S
anim = 4536
sprpriority = 1

[State 813, 7]
type = Width
trigger1 = time >= 0
edge = 50,20

[State 810, 10]
type = playsnd
trigger1 = animelem = 2
value = 4,36
volume = 100

[State 810, 10]
type = playsnd
trigger1 = animelem = 1
value = 4,37
volume = 20

[State 301, Bind]
type = TargetBind
trigger1 = animelem = 1, >=0
trigger1 = animelem = 2, <0
pos = 22, -105
time = 1

[State 301, Bind]
type = TargetBind
trigger1 = animelem = 2, >= 0
trigger1 = animelem = 4, <0
pos = 42, -7
time = 1

[State 3010, Envshake]
type = envshake
trigger1 = animelem = 2, = 0
time = 5
ampl = -2
freq = 105

[State 4000,Explod1]
type = Explod
trigger1 = animelem = 2
anim = 1507
id   = 1507
pos = 55,7
postype = p1
supermove = 1
bindtime = 1
ontop = 0
ownpal = 1

[State 301, liftoff]
type = targetState
Trigger1 = time = 0
value = 4532
ctrl = 0

[State 301, liftoff]
type = targetState
Trigger1 = animelem = 2, =0
value = 4534
ctrl = 0

[State 301, liftoff]
type = targetState
Trigger1 = animelem = 3, =0
value = 4533
ctrl = 0

[State 301, Bind]
type = TargetBind
trigger1 = animelem = 3, >=0
trigger1 = animelem = 4, < 0
pos = 57, -40
time = 1

[State 301, Bind]
type = TargetBind
trigger1 = animelem = 4, >=0
trigger1 = animelem = 5, < 0
pos = 47,-63
time = 1

[State 301, Bind]
type = TargetBind
trigger1 = animelem = 5, >=0
trigger1 = animelem = 6, < 0
pos = 37,-125
time = 1

[State 301, Bind]
type = TargetBind
trigger1 = animelem = 6, >=0
trigger1 = animelem = 7, < 0
pos = 23,-112
time = 1

[State 4001, liftoff]
type = targetState
Trigger1 = animtime = 0
value = 4538
ctrl = 0

[State 5110, 12]
type = hitadd
trigger1 = animelem = 2
value = 1

[State 5110, 12]
type = targetlifeadd
trigger1 = animelem = 2
value = -28
kill = 0

[State 3010, Envshake]
type = envshake
Trigger1 = animelem = 2, = 0
time = 15
ampl = -8
freq = 125

[State 5110, 12]
type = Varset
trigger1 = Time = 0
var(21) = 0

[State 301, liftoff]
type = ChangeState
Trigger1 = animTime = 0
value = 4537
ctrl = 0

;------------------------------------

[Statedef 4537]
type = S
movetype = A
physics = S
anim = 4537
velset = 0,0
ctrl = 0

[State 4001, width]
type = Width
trigger1 = time >= 0
edge = 50,20

[State 230, 3]
type = HitDef
trigger1 = AnimElem = 6
trigger1 = palno = 1
attr = S, HA
animtype = Hard
damage = 34,5
hitflag = MAFD
guardflag = MA
pausetime = 12,12
sparkno = S308
sparkxy = 5,-85
hitsound = S4,12
guardsound = S200,3
priority = 7, Hit
ground.type = low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -4,-7
air.velocity = -4,-7
airguard.velocity = -9,-1
guard.velocity = -11
guard.slidetime = 18
ground.cornerpush.veloff = -11
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -10
yaccel = .39
fall.xvelocity = 0
fall.yvelocity = 0
kill = 0
fall = 1
fall.recover = 0
p2stateno = 6007
palfx.time = 35
palfx.add = -105,-30,80
palfx.sinadd = 54,54,0,10
palfx.color = 0
palfx.invertall = 1

[State 230, 3]
type = HitDef
trigger1 = AnimElem = 6
trigger1 = palno = 2
attr = S, HA
animtype = Hard
damage = 44,5
hitflag = MAFD
guardflag = MA
pausetime = 12,12
sparkno = S308
sparkxy = 5,-85
hitsound = S4,12
guardsound = S200,3
priority = 7, Hit
ground.type = low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -4,-7
air.velocity = -4,-7
airguard.velocity = -9,-1
guard.velocity = -11
guard.slidetime = 18
ground.cornerpush.veloff = -11
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -10
yaccel = .39
fall.xvelocity = 0
fall.yvelocity = 0
kill = 0
fall = 1
fall.recover = 0
p2stateno = 6007
palfx.time = 35
palfx.add = -155,-50,-35
palfx.sinadd = 54,54,0,10
palfx.color = 0
palfx.invertall = 1

[State 230, 3]
type = HitDef
trigger1 = AnimElem = 6
trigger1 = palno = 3
attr = S, HA
animtype = Hard
damage = 44,5
hitflag = MAFD
guardflag = MA
pausetime = 12,12
sparkno = S308
sparkxy = 5,-85
hitsound = S4,12
guardsound = S200,3
priority = 7, Hit
ground.type = low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -4,-7
air.velocity = -4,-7
airguard.velocity = -9,-1
guard.velocity = -11
guard.slidetime = 18
ground.cornerpush.veloff = -11
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -10
yaccel = .39
fall.xvelocity = 0
fall.yvelocity = 0
kill = 0
fall = 1
fall.recover = 0
p2stateno = 6007
palfx.time = 35
palfx.add = 255,0,-105
palfx.sinadd = 54,54,0,10
palfx.color = 0
palfx.invertall = 1

[State 230, 3]
type = HitDef
trigger1 = AnimElem = 6
trigger1 = palno = 4
attr = S, HA
animtype = Hard
damage = 44,5
hitflag = MAFD
guardflag = MA
pausetime = 12,12
sparkno = S308
sparkxy = 5,-85
hitsound = S4,12
guardsound = S200,3
priority = 7, Hit
ground.type = low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -4,-7
air.velocity = -4,-7
airguard.velocity = -9,-1
guard.velocity = -11
guard.slidetime = 18
ground.cornerpush.veloff = -11
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -10
yaccel = .39
fall.xvelocity = 0
fall.yvelocity = 0
kill = 0
fall = 1
fall.recover = 0
p2stateno = 6007
palfx.time = 35
palfx.add = -13,-125,50
palfx.sinadd = 54,54,0,10
palfx.color = 0
palfx.invertall = 1

[State 230, 3]
type = HitDef
trigger1 = AnimElem = 6
trigger1 = palno = 5
attr = S, HA
animtype = Hard
damage = 44,5
hitflag = MAFD
guardflag = MA
pausetime = 12,12
sparkno = S308
sparkxy = 5,-85
hitsound = S4,12
guardsound = S200,3
priority = 7, Hit
ground.type = low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -4,-7
air.velocity = -4,-7
airguard.velocity = -9,-1
guard.velocity = -11
guard.slidetime = 18
ground.cornerpush.veloff = -11
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -10
yaccel = .39
fall.xvelocity = 0
fall.yvelocity = 0
kill = 0
fall = 1
fall.recover = 0
p2stateno = 6007
palfx.time = 35
palfx.add = -105,-105,-105
palfx.sinadd = 54,54,0,10
palfx.color = 0
palfx.invertall = 1

[State 230, 3]
type = HitDef
trigger1 = AnimElem = 6
trigger1 = palno = 6
attr = S, HA
animtype = Hard
damage = 44,5
hitflag = MAFD
guardflag = MA
pausetime = 12,12
sparkno = S308
sparkxy = 5,-85
hitsound = S4,12
guardsound = S200,3
priority = 7, Hit
ground.type = low
ground.slidetime = 18
ground.hittime = 18
ground.velocity = -4,-7
air.velocity = -4,-7
airguard.velocity = -9,-1
guard.velocity = -11
guard.slidetime = 18
ground.cornerpush.veloff = -11
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -10
yaccel = .39
fall.xvelocity = 0
fall.yvelocity = 0
kill = 0
fall = 1
fall.recover = 0
p2stateno = 6007
palfx.time = 35
palfx.add = -105,-105,-105
palfx.sinadd = 54,54,0,10
palfx.color = 0
palfx.invertall = 1

;-----------------------

[State 180, 2]
type = Explod
trigger1 = numexplod(1508) < 14
trigger1 = animelem = 6, = [0, 12]
id = 1508
anim = 1508
pos = 65,-85
sprpriority = 2
random = 70,80
ignorehitpause = 1
ownpal = 1
removetime = 18

[State 180, 2]
type = Explod
trigger1 = numexplod(1509) < 9
trigger1 = animelem = 6, = [3,16]
id = 1509
anim = 1509
pos = 65,-85
random = 50,60
sprpriority = 3
ignorehitpause = 1
ownpal = 1
removetime = 15
;---------------------------

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 6, =0
volume = 30
value = 4,32

[State 180, 2]
type = Explod
trigger1 = animelem = 6
id = 61
anim = F61
pos = 48,0
sprpriority = -1
ownpal = 1
removetime = 14

[State 240, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 4515
ctrl = 0

;---------------------------------------------------------
[Statedef 4532]
type    = A
movetype= H 
physics = N
ctrl = 0

[State 820, 1]
type = screenbound
Trigger1 = Time >= 0
value = 0
movecamera = 0,0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 4532

;-------------------------------------

;----------------------------------

[Statedef 4533]
type    = A
movetype= H 
physics = N
ctrl = 0

[State 820, 1]
type = null
Triggerall = Time = 0
trigger1 = !SelfAnimExist(5102)
trigger2 = !SelfAnimExist(5101)
trigger2 = !selfanimexist(5102)

[State 820, 1]
type = screenbound
Trigger1 = Time >= 0
value = 0
movecamera = 0,0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 4533

;-------------------------------------

;----------------------------------------------------------------------

[Statedef 4534]
type    = L
movetype= H
physics = N
ctrl = 0

[State 5110, EnvShake]
type = nothitby
trigger1 = Time >= 0
value = SCA
time = 1

[State 820, 1]
type = null
Trigger1 = Time = 0
x = -40

[State 820, 1]
type = null
Triggerall = Time = 0
trigger1 = !SelfAnimExist(5102)
trigger2 = !SelfAnimExist(5101)
trigger2 = !selfanimexist(5102)

[State 5100, 1]
type = null
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
trigger1 = vel x > 1
x = 7

[State 5100, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5100, Var]
type = VarSet
trigger1 = Time = 0
sysvar(1) = floor(vel y)

[State 5100, 2]
type = ChangeAnim2
trigger1 = time = 0
value = 4534

[State 5100, 2]
type = null
triggerall = time = 0
trigger1 = SelfAnimExist(5102)
value = 5102

[State 5100, 2]
type = null
triggerall = time = 0
trigger1 = SelfAnimExist(5101)
trigger1 = !SelfAnimExist(5102)
value = 5101

[State 5100, 2]
type = null
triggerall = time = 0
trigger1 = !SelfAnimExist(5101)
trigger1 = !SelfAnimExist(5102)
value = 5100

[State 5100, 4]
type = null
trigger1 = Time = 0
y = 0

[State 5100, 5]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5100, 6] 
type = VelMul
trigger1 = Time = 0
x = 0.75


[State 5100, 8]
type = GameMakeAnim
trigger1 = Time = 1
value = 61
pos = 0, 7
under = sysvar(1) <= 10

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 5100, 10]
type = PlaySnd
trigger1 = Time = 1
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5100, 11]
type = PosFreeze
trigger1 = 1

[State 5100, 12]
type = ChangeState
trigger1 = Time = 2
value = 4535

[State 5100, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

;---------------------------------------

;---------------------------------------

[Statedef 4535]
type    = S
movetype= H
physics = N
ctrl = 0

[State 5110, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5110, EnvShake]
type = nothitby
trigger1 = Time >= 0
value = SCA
time = 1

[State 5110, 4]
type = HitFallDamage
trigger1 = Time = 0

[State 5110, 5]
type = null
trigger1 = Time = 0
y = 0

[State 5100, 2]
type = ChangeAnim2
trigger1 = time = 0
value = 4535

[State 5100, 2]
type = null
triggerall = time = 0
trigger1 = SelfAnimExist(5112)
value = 5112

[State 5100, 2]
type = null
triggerall = time = 0
trigger1 = SelfAnimExist(5111)
trigger1 = !SelfAnimExist(5112)
value = 5111

[State 5100, 2]
type = null
triggerall = time = 0
trigger1 = !SelfAnimExist(5111)
trigger1 = !SelfAnimExist(5112)
value = 5110

[State 5110, Var] 
type = VarSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) != 0
sysvar(1) = floor(vel y)

[State 5110, 7]
type = GameMakeAnim
trigger1 = Time = 0
trigger1 = !SysVar(0)
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 7
under = sysvar(1) <= 10

[State 5110, 8]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5110, 11]
type = ChangeState
trigger1 = Time = 10
value = 305
ctrl = 0

[State 5110, 12]
type = VarSet
trigger1 = SysVar(0)
trigger1 = Time = 0
sysvar(0) = 0

[State 5110, 13] 
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

;-----------------------------------------

[Statedef 4538]
type    = A
movetype= H 
physics = N
velset = .01,0
ctrl = 0

[State 4003, hitby]
type = hitby
trigger1 = time >= 0
value = S, HA

[State 4003, posadd]
type = posadd
trigger1 = time = 0
y = 70

[State 4003, Gravity]
type = veladd
Trigger1 = Time >= 0
y = .7

[State 4003, SCR]
type = screenbound
Trigger1 = Time >= 0
value = 0
movecamera = 0,0

[State 4003, Anim]
type = ChangeAnim2
Trigger1 = Time = 0
value = 5071

[State 4003, End]
type = selfstate
Trigger1 = pos y >= 0 && vel y > 0
value = 5100
ctrl = 0


[Statedef 8550]
type = S
movetype = A
physics = S
anim = 8100
velset = 0,0
ctrl = 0

[State 1230, 2]
type = stopSnd
trigger1 = Time = 0
value = 0,1
channel = 0

[State 4001, width]
type = Width
trigger1 = time >= 0
edge = 50,20

[State 240, 4]
type = varset
trigger1 = Time = 0
var(21) = 0

[State 240, 4]
type = ChangeState
trigger1 = animtime = 0
value = 4551
ctrl = 0

;----------------------------

[Statedef 4551]
type = S
movetype = A
physics = S
velset = 0,0
ctrl = 0

[State 240, DOWN]
type = ChangeState
triggerall = time = 0
trigger1 = var(21) = 0 || var(21) = 2 || var(21) = 7  || var(21) = 9 || var(21) = 15
trigger2 =  var(21) = 19 || var(21) = 23 || var(21) = 27 || var(21) = 29
value = 4552
ctrl = 0

[State 240, FORWARD]
type = ChangeState
triggerall = time = 0
trigger1 = var(21) = 1 || var(21) = 3 || var(21) = 5  || var(21) = 6 || var(21) = 8
trigger2 = var(21) = 10 || var(21) = 11  || var(21) = 13 || var(21) = 17 || var(21) = 20
trigger3 = var(21) = 22 || var(21) = 24 || var(21) = 26 || var(21) = 28 || var(21) = 30
trigger4 = var(21) = 32
value = 4553
ctrl = 0

[State 240, UP]
type = ChangeState
triggerall = time = 0
trigger1 = var(21) = 4 || var(21) = 12 || var(21) = 14 || var(21) = 16
trigger2 = var(21) = 18  || var(21) = 21 || var(21) = 25  || var(21) = 31
value = 4554
ctrl = 0

[State 240, 4]
type = ChangeState
trigger1 = var(21) > 32
trigger1 = time = 0
value = 4555
ctrl = 0

;----------------------------
[Statedef 4552]
type = S
movetype = A
physics = S
velset = 0,0
anim = 4552
ctrl = 0

[State 240, 4]
type = varadd
trigger1 = Time = 0
ignorehitpause = 1
var(21) = 1

[State 230, 3]
type = HitDef
trigger1 = var(21) <= 1
trigger1 = AnimElem = 2
attr = S, HA
animtype = Hard
damage = 25
hitflag = MAFD
guardflag = MA
pausetime = 2,2
sparkno = S308
sparkxy = -10,-13
hitsound = S4,33
guardsound = S200,3
priority = 7, Hit
ground.type = low
ground.slidetime = 18
ground.hittime = 18
down.hittime = 24
ground.velocity = -0,-0
air.velocity = -0,-0
down.velocity = -0,-0
airguard.velocity = -4,-4
guard.velocity = -11
guard.slidetime = 18
ground.cornerpush.veloff = -0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -0
p2stateno = 6012
forcestand = 1
snap = 80,0
yaccel = .4
kill = 0

[State 230, 3]
type = HitDef
trigger1 = var(21) > 1
trigger1 = AnimElem = 2
attr = S, HA
animtype = Hard
damage = 16
hitflag = MAFD
guardflag = MA
pausetime = 2,2
sparkno = S308
sparkxy = -10,-20
hitsound = S4,33
guardsound = S200,3
priority = 7, Hit
ground.type = low
ground.slidetime = 18
ground.hittime = 18
down.hittime = 24
ground.velocity = -0,-0
air.velocity = -0,-0
down.velocity = -0,-0
airguard.velocity = -4,-4
guard.velocity = -11
guard.slidetime = 18
ground.cornerpush.veloff = -0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -0
p2stateno = 6012
yaccel = .4
kill = 0

[State 240, 4]
type = ChangeState
trigger1 = animtime = 0
value = 4551
ctrl = 0

;----------------------------
[Statedef 4553]
type = S
movetype = A
physics = S
velset = 0,0
anim = 4553
ctrl = 0

[State 230, 3]
type = HitDef
trigger1 = var(21) < 33
trigger1 = AnimElem = 2
attr = S, HA
animtype = Hard
damage = 17
hitflag = MAFD
guardflag = MA
pausetime = 2,2
sparkno = S308
sparkxy = -10,-58
hitsound = S4,40
guardsound = S200,3
priority = 7, Hit
ground.type = high
ground.slidetime = 18
ground.hittime = 18
down.hittime = 24
ground.velocity = -0,-0
air.velocity = -0,-0
down.velocity = -0,-0
airguard.velocity = -4,-4
guard.velocity = -11
guard.slidetime = 18
ground.cornerpush.veloff = -0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -0
p2stateno = 6014
yaccel = .4
kill = 0

[State 230, 3]
type = HitDef
trigger1 = var(21) >= 33
trigger1 = AnimElem = 2
attr = S, HA
animtype = Hard
damage = 13
hitflag = MAFD
guardflag = MA
pausetime = 2,2
sparkno = S308
sparkxy = -10,-58
hitsound = S4,30
guardsound = S200,3
priority = 7, Hit
ground.type = high
ground.slidetime = 18
ground.hittime = 18
down.hittime = 24
ground.velocity = -2.7,-8.7
air.velocity = -2.7,-8.7
down.velocity = -4,-6
airguard.velocity = -4,-4
guard.velocity = -11
guard.slidetime = 18
ground.cornerpush.veloff = -0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -0
p2stateno = 6000
yaccel = .4
kill = 0
fall = 1
fall.recover = 0

[State 240, 4]
type = varadd
trigger1 = Time = 0
ignorehitpause = 1
var(21) = 1

[State 240, 4]
type = ChangeState
trigger1 = animtime = 0
value = 4551
ctrl = 0

;---------------------------
[Statedef 4554]
type = S
movetype = A
physics = S
velset = 0,0
anim = 4554
ctrl = 0

[State 230, 3]
type = HitDef
trigger1 = AnimElem = 2
attr = S, HA
animtype = Hard
damage = 14
hitflag = MAFD
guardflag = MA
pausetime = 2,2
sparkno = S308
sparkxy = -10,-98
hitsound = S4,30
guardsound = S200,3
priority = 7, Hit
ground.type = high
ground.slidetime = 18
ground.hittime = 18
down.hittime = 24
ground.velocity = -0,-0
air.velocity = -0,-0
down.velocity = -0,-0
airguard.velocity = -4,-4
guard.velocity = -11
guard.slidetime = 18
ground.cornerpush.veloff = -0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -0
p2stateno = 6014
yaccel = .4
kill = 0

[State 240, 4]
type = varadd
trigger1 = Time = 0
ignorehitpause = 1
var(21) = 1

[State 240, 4]
type = ChangeState
trigger1 = animtime = 0
value = 4551
ctrl = 0

;-----------------------------

[Statedef 4555]
type = S
movetype = A
physics = S
velset = 0,0
anim = 8105
ctrl = 0

[State 240, 4]
type = ChangeState
trigger1 = animtime = 0
value = 4515
ctrl = 0

;-------------------------------------------------------------------
;ギロチン
[Statedef 4050]
type = S
movetype = A
physics = S
anim = 3070
juggle = 13
velset = 0,0
ctrl = 0

[State 3000, afterimage]
type = afterimage
trigger1 = time = 4
time = 14
timegap = 1
framegap = 2
length = 6
trans = add1

[State 8000, Chime]
type = playsnd
trigger1 = Time = 0
value = 4,45
volume = 255

[State 8000, Chime]
type = playsnd
trigger1 = Time = 0
value = 4,17

[State 3000, Super Pause]
type = SuperPause
trigger1 = time = 0
movetime = 6
poweradd = -1000
time = 26
anim = -1

[State 4100, 0]
type = Explod
trigger1 = Time = 0
persistent = 0
anim = 6400
id = 6400
pos = -16, -42
supermove = 1
postype = p1
sprpriority = -1
ownpal = 1

[State 7000, 0]
type = Explod
trigger1 = Time = 0
persistent = 0
anim = 6475
id = 6475
pos = -16, -42
supermove = 1
postype = p1
sprpriority = 2
ownpal = 1

[State 3000, hitdef]
type = Hitdef
trigger1 = AnimElem = 4
attr = S, HA
hitflag = MAF
animtype = hard
damage = 15,5
guardflag = M
pausetime = 12,13
sparkno = S308
sparkxy = -10,-70
hitsound = S4,33
guardsound = S200,3
ground.type = low
ground.slidetime = 23
ground.hittime = 22
ground.velocity = -.5,-2
air.velocity = -2,-2.5
airguard.velocity = -6,-1.5
guard.velocity = -6
getpower = 30,10
givepower = 30,10
air.juggle = 10
kill = 0

[State 3001, NothitBy]
type = NothitBy
trigger1 = animelem = 4, <= 0
value = SCA, AA

[State 3000, Land]
type = ChangeState
trigger1 = animtime = 0
value = 4051
ctrl = 0
;-----------------------------

[Statedef 4051]
type = A
movetype = A
physics = N
anim = 3004
velset = 4.7,-5.4
ctrl = 0

[State 3000, DM1 FX1]
type = playsnd
trigger1 = time = 0
value = 4,41
volume = 30

[State 3001, afterimage]
type = afterimage
trigger1 = time = 0
time = 30
timegap = 1
framegap = 2
length = 9
ignorehitpause = 1
trans = add1

[State 3002, width]
type = width
trigger1 = animelem = 2, >= 0
edge = 50,10

[State 3001, Gravity]
type = posadd
trigger1 = time = 0
x = 10

[State 3001, Gravity]
type = Veladd
trigger1 = time >= 3
y = .38

[State 3000, Hitdef]
type = HitDef
trigger1 = AnimElem = 1
attr = S, HA
damage = 15,5
animtype = Hard
hitflag = MAF
guardflag = MA
pausetime = 10,10
sparkno = S308
sparkxy = -10,-100
hitsound = S4,33
guardsound = S200,3
groun.type = High
ground.velocity = -5.5,-6
air.velocity = -6,-5
guard.velocity = -11
fall = 1
fall.recover = 0
getpower = 30,10
givepower = 30,10
kill = 0

[State 3000, Hitdef]
type = HitDef
trigger1 = AnimElem = 5
attr = S, HA
damage = 10,10
animtype = Back
hitflag = MAF
guardflag = HA
pausetime = 10,10
sparkno = S308
sparkxy = -10,-14
hitsound = S4,25
guardsound = S200,3
groun.type = low
ground.velocity = -5,1
air.velocity = -5,1
guard.velocity = -11
fall = 1
fall.recover = 0
getpower = 30,10
givepower = 30,10
p2facing = 1
p2stateno = 3006
p2getp1state = 1
hitonce = 0
kill = 0

[State 3000,Explod2]
type = Explod
trigger1 = animelem = 3
anim = 3101
id   = 3101
pos = 5,5
postype = p1
bindtime = -1
removetime = 5
sprpriority = 1
ontop = 1
ownpal = 1

[State 3000,Explod2]
type = Explod
trigger1 = animelem = 4
anim = 3102
id   = 3102
pos = 5,5
postype = p1
removetime = 2
bindtime = -1
sprpriority = 1
ontop = 1
ownpal = 1

[State 3000,Explod2]
type = Explod
trigger1 = animelem = 5
anim = 3003
id   = 3003
pos = 5,0
postype = p1
bindtime = -1
ontop = 1
removetime = 8
ownpal = 1

[State 3001, Bind]
type = TargetBind
trigger1 = movehit
trigger1 = animelem = 5, >=1
pos = 60, -14
time = 1

[State 3001, NothitBy]
type = NothitBy
trigger1 = movehit
trigger1 = animelem = 5, >=1
value = SCA

[State 3001, Land]
type = ChangeState
trigger1 = p2stateno = 3006
trigger1 = p2movetype = H
trigger1 = vel y > 0 && pos y >= 0
value = 4052
ctrl = 0

[State 3001, Land]
type = ChangeState
trigger1 = p2stateno != 3006
trigger1 = vel y > 0 && pos y >= 0
value = 3102
ctrl = 0
;-----------------------------

[Statedef 4052]
type     = S
movetype = A
physics  = N
anim     = 3050
velset   = 0,0
ctrl = 0

[State 52, 3]
type = PlaySnd
trigger1 = Time = 0
value = 4,29
volume = 50

[State 3000, DM1 voice]
type = playsnd
trigger1 = time = 0
value = 4,42
volume = 30

[State 3001, posset]
type = posset
trigger1 = time = 0
y = 0

[State 3010, afterimage]
type = afterimage
trigger1 = time = 0
time = 250
timegap = 1
framegap = 3
length = 9
trans = add1

[State 3010, sharpspark]
type = Explod
trigger1 = animelem = 1
trigger2 = animelem = 5
trigger3 = animelem = 9
trigger4 = animelem = 13
trigger5 = animelem = 17
trigger6 = animelem = 21
anim = 1036
id   = 1036
pos = 60,-7
postype = p1
bindtime = 1
ontop = 1
removetime = 19
sprpriority = 2
ownpal = 1

[State 3010, blood]
type = explod
trigger1 = animelem = 1
trigger2 = animelem = 5
trigger3 = animelem = 9
trigger4 = animelem = 13
trigger5 = animelem = 17
trigger6 = animelem = 21
id = 1047
anim = 1047
pos = 60,-7
postype = p1
facing = 1
ontop = 1
bindtime = 1
ownpal = 1
removeongethit = 1
removetime = 23

[State 3000, DM1 FX3]
type = playsnd
trigger1 = animelem = 1
trigger2 = animelem = 5
trigger3 = animelem = 9
trigger4 = animelem = 13
trigger5 = animelem = 17
trigger6 = animelem = 21
value = 4,43
volume = 30

[State 3000, DM1 FX4]
type = playsnd
trigger1 = animelem = 1
trigger2 = animelem = 5
trigger3 = animelem = 9
trigger4 = animelem = 13
trigger5 = animelem = 17
trigger6 = animelem = 21
value = 4,44
volume = 30

[State 3010, Bind5]
type = targetlifeadd
trigger1 = TimeMod = 4, 1
trigger1 = animelem = 25 <0
value = -10
kill = 0

[State 3010, width]
type = width
trigger1 = time >= 0
edge = 50,10

[State 3010, posadd]
type = posadd
trigger1 = animelem = 1
x = 15

[State 3010, posset]
type = posset
trigger1 = time = 0
y = 0

[State 3010, velset1]
type = velset
trigger1 = animelem = 25, < 0
x = 5

[State 3010, velset2]
type = velset
trigger1 = animelem = 25, = 0
x = 2.4

[State 3010, velset3]
type = velset
trigger1 = animelem = 26, = 0
x = .1

[State 3010, Bind1]
type = TargetBind
trigger1 = animelem = 25, <0
pos = 60, -7
time = 1

[State 3010, Bind1]
type = TargetBind
trigger1 = animelem = 25, >=0
pos = 35, 0
time = 1

[State 3010, targetstate]
type = targetstate
Trigger1 = time = 0
value = 4060
ctrl = 0

[State 3010, varset20]
type = varset
Trigger1 = time = 0
var(20) = 0

[State 3010, End]
type = Changestate
Trigger1 = animtime = 0
value = 4053
ctrl = 0

;------------------------------------

[Statedef 4053]
type = S
movetype = A
physics = N
anim = 3053
velset = 0,0
ctrl = 0

[State 3010, Bind1]
type = TargetBind
trigger1 = time = 0
pos = 35, -0
time = 1

[State 3010, targetstate]
type = targetstate
Trigger1 = time = 0
value = 4061
ctrl = 0

[State 3010, Kick spark]
type = Explod
trigger1 = animelem = 4
anim = 308
id   = 308
pos = 35, -7
postype = p1
bindtime = 1
ontop = 1
removetime = 20
sprpriority = 2
ownpal = 1

[State 3010, Kick hit sound]
type = playsnd
Trigger1 = animelem = 4, =1 
value = 4,27

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 4, =0
volume = -50
value = 4,32

[State 3010, Targetlifeadd]
type = targetlifeadd
Trigger1 = animelem = 4 
value = -17
kill = 0

[State 3010, Envshake]
type = envshake
Trigger1 = animelem = 4, = 0
time = 7
ampl = -8
freq = 105

[State 3010, var20]
type = varadd
Trigger1 = time = 0
var(20) = 1

[State 3010, hitadd]
type = hitadd
Trigger1 = animelem = 4
value = 1

[State 180, 2]
type = Explod
trigger1 = animelem = 4, = [0,3]
id = 61
anim = F61
pos = 35, 2
sprpriority = -1
ownpal = 1
removetime = 14

[State 180, 2]
type = Explod
trigger1 = animelem = 4, = 0
id = 1507
anim = 1507
pos = 35, 7
ontop = 0
sprpriority = -1
ownpal = 1

[State 3010, End]
type = Changestate
Trigger1 = animtime = 0
value = 4153
ctrl = 0

[Statedef 4153]
type = S
movetype = A
physics = N
anim = 3053
velset = 0,0
ctrl = 0

[State 3010, Bind1]
type = TargetBind
trigger1 = time = 0
pos = 35, -0
time = 1

[State 3010, targetstate]
type = targetstate
Trigger1 = time = 0
value = 4061
ctrl = 0

[State 3010, Kick spark]
type = Explod
trigger1 = animelem = 4
anim = 308
id   = 308
pos = 35, -7
postype = p1
bindtime = 1
ontop = 1
removetime = 20
sprpriority = 2
ownpal = 1

[State 3010, Kick hit sound]
type = playsnd
Trigger1 = animelem = 4, =1 
value = 4,27

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 4, =0
volume = -50
value = 4,32

[State 3010, Targetlifeadd]
type = targetlifeadd
Trigger1 = animelem = 4 
value = -17
kill = 0

[State 3010, Envshake]
type = envshake
Trigger1 = animelem = 4, = 0
time = 7
ampl = -8
freq = 105

[State 3010, var20]
type = varadd
Trigger1 = time = 0
var(20) = 1

[State 3010, hitadd]
type = hitadd
Trigger1 = animelem = 4
value = 1

[State 180, 2]
type = Explod
trigger1 = animelem = 4, = [0,3]
id = 61
anim = F61
pos = 35, 2
sprpriority = -1
ownpal = 1
removetime = 14

[State 180, 2]
type = Explod
trigger1 = animelem = 4, = 0
id = 1507
anim = 1507
pos = 35, 7
ontop = 0
sprpriority = -1
ownpal = 1

[State 3010, End]
type = Changestate
Trigger1 = animtime = 0
value = 4154
ctrl = 0

[Statedef 4154]
type = S
movetype = A
physics = N
anim = 3053
velset = 0,0
ctrl = 0

[State 3010, Bind1]
type = TargetBind
trigger1 = time = 0
pos = 35, -0
time = 1

[State 3010, targetstate]
type = targetstate
Trigger1 = time = 0
value = 4061
ctrl = 0

[State 3010, Kick spark]
type = Explod
trigger1 = animelem = 4
anim = 308
id   = 308
pos = 35, -7
postype = p1
bindtime = 1
ontop = 1
removetime = 20
sprpriority = 2
ownpal = 1

[State 3010, Kick hit sound]
type = playsnd
Trigger1 = animelem = 4, =1 
value = 4,27

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 4, =0
volume = -50
value = 4,32

[State 3010, Targetlifeadd]
type = targetlifeadd
Trigger1 = animelem = 4 
value = -17
kill = 0

[State 3010, Envshake]
type = envshake
Trigger1 = animelem = 4, = 0
time = 7
ampl = -8
freq = 105

[State 3010, var20]
type = varadd
Trigger1 = time = 0
var(20) = 1

[State 3010, hitadd]
type = hitadd
Trigger1 = animelem = 4
value = 1

[State 180, 2]
type = Explod
trigger1 = animelem = 4, = [0,3]
id = 61
anim = F61
pos = 35, 2
sprpriority = -1
ownpal = 1
removetime = 14

[State 180, 2]
type = Explod
trigger1 = animelem = 4, = 0
id = 1507
anim = 1507
pos = 35, 7
ontop = 0
sprpriority = -1
ownpal = 1

[State 3010, End]
type = Changestate
Trigger1 = animtime = 0
value = 4155
ctrl = 0

[Statedef 4155]
type = S
movetype = A
physics = N
anim = 3053
velset = 0,0
ctrl = 0

[State 3010, Bind1]
type = TargetBind
trigger1 = time = 0
pos = 35, -0
time = 1

[State 3010, targetstate]
type = targetstate
Trigger1 = time = 0
value = 4061
ctrl = 0

[State 3010, Kick spark]
type = Explod
trigger1 = animelem = 4
anim = 308
id   = 308
pos = 35, -7
postype = p1
bindtime = 1
ontop = 1
removetime = 20
sprpriority = 2
ownpal = 1

[State 3010, Kick hit sound]
type = playsnd
Trigger1 = animelem = 4, =1 
value = 4,27

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 4, =0
volume = -50
value = 4,32

[State 3010, Targetlifeadd]
type = targetlifeadd
Trigger1 = animelem = 4 
value = -17
kill = 0

[State 3010, Envshake]
type = envshake
Trigger1 = animelem = 4, = 0
time = 7
ampl = -8
freq = 105

[State 3010, var20]
type = varadd
Trigger1 = time = 0
var(20) = 1

[State 3010, hitadd]
type = hitadd
Trigger1 = animelem = 4
value = 1

[State 180, 2]
type = Explod
trigger1 = animelem = 4, = [0,3]
id = 61
anim = F61
pos = 35, 2
sprpriority = -1
ownpal = 1
removetime = 14

[State 180, 2]
type = Explod
trigger1 = animelem = 4, = 0
id = 1507
anim = 1507
pos = 35, 7
ontop = 0
sprpriority = -1
ownpal = 1

[State 3010, End]
type = Changestate
Trigger1 = animtime = 0
value = 4156
ctrl = 0

[Statedef 4156]
type = S
movetype = A
physics = N
anim = 3053
velset = 0,0
ctrl = 0

[State 3010, Bind1]
type = TargetBind
trigger1 = time = 0
pos = 35, -0
time = 1

[State 3010, targetstate]
type = targetstate
Trigger1 = time = 0
value = 4061
ctrl = 0

[State 3010, Kick spark]
type = Explod
trigger1 = animelem = 4
anim = 308
id   = 308
pos = 35, -7
postype = p1
bindtime = 1
ontop = 1
removetime = 20
sprpriority = 2
ownpal = 1

[State 3010, Kick hit sound]
type = playsnd
Trigger1 = animelem = 4, =1 
value = 4,27

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 4, =0
volume = -50
value = 4,32

[State 3010, Targetlifeadd]
type = targetlifeadd
Trigger1 = animelem = 4 
value = -17
kill = 0

[State 3010, Envshake]
type = envshake
Trigger1 = animelem = 4, = 0
time = 7
ampl = -8
freq = 105

[State 3010, var20]
type = varadd
Trigger1 = time = 0
var(20) = 1

[State 3010, hitadd]
type = hitadd
Trigger1 = animelem = 4
value = 1

[State 180, 2]
type = Explod
trigger1 = animelem = 4, = [0,3]
id = 61
anim = F61
pos = 35, 2
sprpriority = -1
ownpal = 1
removetime = 14

[State 180, 2]
type = Explod
trigger1 = animelem = 4, = 0
id = 1507
anim = 1507
pos = 35, 7
ontop = 0
sprpriority = -1
ownpal = 1

[State 3010, End]
type = Changestate
Trigger1 = animtime = 0
value = 4157
ctrl = 0

[Statedef 4157]
type = S
movetype = A
physics = N
anim = 3053
velset = 0,0
ctrl = 0

[State 3010, Bind1]
type = TargetBind
trigger1 = time = 0
pos = 35, -0
time = 1

[State 3010, targetstate]
type = targetstate
Trigger1 = time = 0
value = 4061
ctrl = 0

[State 3010, Kick spark]
type = Explod
trigger1 = animelem = 4
anim = 308
id   = 308
pos = 35, -7
postype = p1
bindtime = 1
ontop = 1
removetime = 20
sprpriority = 2
ownpal = 1

[State 3010, Kick hit sound]
type = playsnd
Trigger1 = animelem = 4, =1 
value = 4,27

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 4, =0
volume = -50
value = 4,32

[State 3010, Targetlifeadd]
type = targetlifeadd
Trigger1 = animelem = 4 
value = -17
kill = 0

[State 3010, Envshake]
type = envshake
Trigger1 = animelem = 4, = 0
time = 7
ampl = -8
freq = 105

[State 3010, var20]
type = varadd
Trigger1 = time = 0
var(20) = 1

[State 3010, hitadd]
type = hitadd
Trigger1 = animelem = 4
value = 1

[State 180, 2]
type = Explod
trigger1 = animelem = 4, = [0,3]
id = 61
anim = F61
pos = 35, 2
sprpriority = -1
ownpal = 1
removetime = 14

[State 180, 2]
type = Explod
trigger1 = animelem = 4, = 0
id = 1507
anim = 1507
pos = 35, 7
ontop = 0
sprpriority = -1
ownpal = 1

[State 3010, End]
type = Changestate
Trigger1 = animtime = 0
value = 4158
ctrl = 0

[Statedef 4158]
type = S
movetype = A
physics = N
anim = 3053
velset = 0,0
ctrl = 0

[State 3010, Bind1]
type = TargetBind
trigger1 = time = 0
pos = 35, -0
time = 1

[State 3010, targetstate]
type = targetstate
Trigger1 = time = 0
value = 4061
ctrl = 0

[State 3010, Kick spark]
type = Explod
trigger1 = animelem = 4
anim = 308
id   = 308
pos = 35, -7
postype = p1
bindtime = 1
ontop = 1
removetime = 20
sprpriority = 2
ownpal = 1

[State 3010, Kick hit sound]
type = playsnd
Trigger1 = animelem = 4, =1 
value = 4,27

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 4, =0
volume = -50
value = 4,32

[State 3010, Targetlifeadd]
type = targetlifeadd
Trigger1 = animelem = 4 
value = -17
kill = 0

[State 3010, Envshake]
type = envshake
Trigger1 = animelem = 4, = 0
time = 7
ampl = -8
freq = 105

[State 3010, var20]
type = varadd
Trigger1 = time = 0
var(20) = 1

[State 3010, hitadd]
type = hitadd
Trigger1 = animelem = 4
value = 1

[State 180, 2]
type = Explod
trigger1 = animelem = 4, = [0,3]
id = 61
anim = F61
pos = 35, 2
sprpriority = -1
ownpal = 1
removetime = 14

[State 180, 2]
type = Explod
trigger1 = animelem = 4, = 0
id = 1507
anim = 1507
pos = 35, 7
ontop = 0
sprpriority = -1
ownpal = 1

[State 3010, End]
type = Changestate
Trigger1 = animtime = 0
value = 4159
ctrl = 0

[Statedef 4159]
type = S
movetype = A
physics = N
anim = 3053
velset = 0,0
ctrl = 0

[State 3010, Bind1]
type = TargetBind
trigger1 = time = 0
pos = 35, -0
time = 1

[State 3010, targetstate]
type = targetstate
Trigger1 = time = 0
value = 4061
ctrl = 0

[State 3010, Kick spark]
type = Explod
trigger1 = animelem = 4
anim = 308
id   = 308
pos = 35, -7
postype = p1
bindtime = 1
ontop = 1
removetime = 20
sprpriority = 2
ownpal = 1

[State 3010, Kick hit sound]
type = playsnd
Trigger1 = animelem = 4, =1 
value = 4,27

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 4, =0
volume = -50
value = 4,32

[State 3010, Targetlifeadd]
type = targetlifeadd
Trigger1 = animelem = 4 
value = -17
kill = 0

[State 3010, Envshake]
type = envshake
Trigger1 = animelem = 4, = 0
time = 7
ampl = -8
freq = 105

[State 3010, var20]
type = varadd
Trigger1 = time = 0
var(20) = 1

[State 3010, hitadd]
type = hitadd
Trigger1 = animelem = 4
value = 1

[State 180, 2]
type = Explod
trigger1 = animelem = 4, = [0,3]
id = 61
anim = F61
pos = 35, 2
sprpriority = -1
ownpal = 1
removetime = 14

[State 180, 2]
type = Explod
trigger1 = animelem = 4, = 0
id = 1507
anim = 1507
pos = 35, 7
ontop = 0
sprpriority = -1
ownpal = 1

[State 3010, End]
type = Changestate
Trigger1 = animtime = 0
value = 4054
ctrl = 0
;------------------------------------
[Statedef 4054]
type = S
movetype = A
physics = N
anim = 3054
juggle   = 13
velset = 0,0
ctrl = 0

[State 3000, DM1 voice2]
type = playsnd
trigger1 = time = 0
value = 99,11
volume = 255
channel = 0
[State 3000, DM1 voice2]
type = playsnd
trigger1 = time = 0
value = 99,11
volume = 255
channel = 0

[State 3010, Bind1]
type = TargetBind
trigger1 = time = 0
pos = 35, -0
time = 1

[State 3010, varset20]
type = varset
Trigger1 = time = 0
var(20) = 0

[State 3010, targetstate]
type = targetstate
Trigger1 = time = 0
value = 4062
ctrl = 0

[State 3010, Kick hit sound]
type = playsnd
Trigger1 = animelem = 3 
value = 4,27
volume = 30

[State 3010, Envshake]
type = envshake
Trigger1 = animelem = 3, = 0
time = 12
ampl = -5
freq = 100

[State 3010, Kick spark]
type = Explod
trigger1 = animelem = 3
anim = 308
id   = 308
pos = 45, -45
postype = p1
bindtime = 1
ontop = 1
removetime = 20
sprpriority = 2
ownpal = 1

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 3, = 1
volume = 120
value = 4,12

;-----------------------

[State 180, 2]
type = Explod
trigger1 = numexplod(1508) < 15
trigger1 = animelem = 3, = [0, 20]
id = 1508
anim = 1508
pos = 45,-45
sprpriority = 2
random = 100,100
ownpal = 1
removetime = 18

[State 180, 2]
type = Explod
trigger1 = numexplod(1509) < 10
trigger1 = animelem = 3, = [4,24]
id = 1509
anim = 1509
pos = 45,-45
random = 70,70
sprpriority = 3
ownpal = 1
removetime = 15

;---------------------------

[State 3010, Targetlifeadd]
type = targetlifeadd
Trigger1 = animelem = 3 
value = -20

[State 3010, targetstate]
type = targetstate
Trigger1 = animelem = 3, = 1
Trigger1 = palno = 1
value = 4063
ctrl = 0

[State 3010, targetstate]
type = targetstate
Trigger1 = animelem = 3, = 1
Trigger1 = palno = 2
value = 4065
ctrl = 0

[State 3010, targetstate]
type = targetstate
Trigger1 = animelem = 3, = 1
Trigger1 = palno = 3
value = 4066
ctrl = 0

[State 3010, targetstate]
type = targetstate
Trigger1 = animelem = 3, = 1
Trigger1 = palno = 4
value = 4067
ctrl = 0

[State 3010, targetstate]
type = targetstate
Trigger1 = animelem = 3, = 1
Trigger1 = palno = 5
value = 4068
ctrl = 0

[State 3010, targetstate]
type = targetstate
Trigger1 = animelem = 3, = 1
Trigger1 = palno = 6
value = 4069
ctrl = 0

[State 3010, End]
type = Changestate
Trigger1 = animtime = 0
value = 0
ctrl = 1

;------------------------------------

[Statedef 4060]
type    = S
movetype= H 
physics = N
velset = 0,0
ctrl = 0

[State 4060, anim]
type = ChangeAnim2
Trigger1 = time =0 
value = 3060

[State 3060, anim]
type = velset
Trigger1 = animelem = 13, = 0
x = 0


[State 4060, anim]
type = null
Trigger1 = animelem = 13, = 7
x = 0

[State 4060, MakeDust]
type = MakeDust
trigger1 = time >= 0
spacing = 4
pos = 10, 10

;====================================================
;------------------------------------
[Statedef 4061]
type    = S
movetype= H 
physics = N
velset = 0,0
ctrl = 0

[State 3061, anim]
type = ChangeAnim2
Trigger1 = time =0 
value = 3063

[State 180, 2]
type = Explod
trigger1 = numexplod(120) <7
trigger1 = time >= 0
id = 120
anim = F120
pos = 0, 5
random = 70,10
vel = -2,-.5
sprpriority = -1
ownpal = 1
removetime = 14

[State 3061, anim]
type = selfstate
Trigger1 = time = 60
value = 5100
ctrl = 0
;-------------------------------------

[Statedef 4062]
type    = S
movetype= H 
physics = N
velset = 0,0
ctrl = 0

[State 3062, anim]
type = ChangeAnim2
Trigger1 = time =0 
value = 3062

[State 3062, MakeDust]
type = MakeDust
trigger1 = time >= 0
spacing = 4
pos = -40, 10
random = 40,40

[State 3062, anim]
type = selfstate
Trigger1 = time = 60
value = 5100
ctrl = 0

;------------------------------------------------

;------------------------------------
[Statedef 4063]
type    = A
movetype= H
physics = N
velset = 0,0

[State 5000, 1]
type = palfx
trigger1 = Time = 0
time = 35
add = -105,-30,80
sinadd = 54,54,0,10
color = 0
invertall = 1

[State 5020, 2] 
type = ChangeAnim
trigger1 = Time = 0
value = 5030

[State 5020, 4] 
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5020, 5]
type = ChangeState
trigger1 = time = 11
value = 4064

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

;------------------------------------
[Statedef 4065]
type    = A
movetype= H
physics = N
velset = 0,0

[State 5000, 1]
type = palfx
trigger1 = Time = 0
time = 35
add = -155,-50,-35
sinadd = 54,54,0,10
color = 0
invertall = 1

[State 5020, 2] 
type = ChangeAnim
trigger1 = Time = 0
value = 5030

[State 5020, 4] 
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5020, 5]
type = ChangeState
trigger1 = time = 11
value = 4064

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

;------------------------------------
[Statedef 4066]
type    = A
movetype= H
physics = N
velset = 0,0

[State 5000, 1]
type = palfx
trigger1 = Time = 0
time = 35
add = 255,0,-105
sinadd = 54,54,0,10
color = 0
invertall = 1

[State 5020, 2] 
type = ChangeAnim
trigger1 = Time = 0
value = 5030

[State 5020, 4] 
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5020, 5]
type = ChangeState
trigger1 = time = 11
value = 4064

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

;------------------------------------
[Statedef 4067]
type    = A
movetype= H
physics = N
velset = 0,0

[State 5000, 1]
type = palfx
trigger1 = Time = 0
time = 35
add = -13,-125,50
sinadd = 54,54,0,10
color = 0
invertall = 1

[State 5020, 2] 
type = ChangeAnim
trigger1 = Time = 0
value = 5030

[State 5020, 4] 
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5020, 5]
type = ChangeState
trigger1 = time = 11
value = 4064

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

;------------------------------------
[Statedef 4068]
type    = A
movetype= H
physics = N
velset = 0,0

[State 5000, 1]
type = palfx
trigger1 = Time = 0
time = 35
add = -105,-105,-105
sinadd = 54,54,0,10
color = 0
invertall = 1

[State 5020, 2] 
type = ChangeAnim
trigger1 = Time = 0
value = 5030

[State 5020, 4] 
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5020, 5]
type = ChangeState
trigger1 = time = 11
value = 4064

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

;------------------------------------
[Statedef 4069]
type    = A
movetype= H
physics = N
velset = 0,0

[State 5000, 1]
type = palfx
trigger1 = Time = 0
time = 35
add = -105,-105,-105
sinadd = 54,54,0,10
color = 0
invertall = 1

[State 5020, 2] 
type = ChangeAnim
trigger1 = Time = 0
value = 5030

[State 5020, 4] 
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5020, 5]
type = ChangeState
trigger1 = time = 11
value = 4064

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

;---------------------------------------------------------------------------
[Statedef 4064]
type    = A
movetype= A
physics = N
ctrl = 0

[State 3064, anim]
type = ChangeAnim2
Trigger1 = time = 0 
value = 3064

[State 3064, Velset]
type = VelSet
trigger1 = Time = 0
x = -2
y = -15

[State 3064, Veladd]
type = Veladd
trigger1 = Time >= 3
y = .39

[State 6064, angleADD]
type = AngleAdd
trigger1 = Time >= 1
value = 22.5

[State 3064, angle draw]
type = AngleDraw
trigger1 = Time >= 1
trigger1 = Pos Y <= 10

[State 3064, Changeanim] 
type = ChangeAnim
Trigger1 = Vel Y > -1
trigger1 = Pos Y = [10,0]
trigger1 = SelfAnimExist(5062)
persistent = 0
value = 5062

[State 3064, EnvShake]
type = envshake
trigger1 = (Vel y > 0) && (Pos y >= 0)
time = 30
            
[State 3064, selfstate] 
type = SelfState
Trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

[Statedef 3102]
type = S
movetype = I
physics = S
anim = 3005
velset = 0,0
ctrl = 0
	
[State 3002, afterimage]
type = afterimage
trigger1 = time = 0
time = 10
timegap = 1
framegap = 2
length = 6
trans = add1

[State 3002, width]
type = width
trigger1 = time >= 0
edge = 40,10

[State 3002, posadd]
type = posadd
trigger1 = animelem = 2
x = 15

[State 3001, posset]
type = posset
trigger1 = time = 0
y = 0

[State 3001, land snd]
type = PlaySnd
trigger1 = Time = 0
value = 4,29
volume = 50

[State 3001, Land]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

[Statedef 3006]
type    = A
movetype= H 
physics = N
velset = 0,0
ctrl = 0

[State 3001, NothitBy]
type = NothitBy
trigger1 = time >= 0
value = SCA

[State 3006, Screenbound]
type = null
Trigger1 = Time >= 0
value = 0
movecamera = 0,0

[State 3006, anim]
type = ChangeAnim2
Trigger1 = time =9
value = 3006

[State 3011, anim]
type = selfstate
Trigger1 = time = 30
value = 5100
ctrl = 0

;---------------------------------------------------------------------------










