;--------------------------------------------------------------------------------------------------------------------------------------------
;STANDING LIGHT PUNCH
[StateDef 200]
type = S
movetype = A
physics = S
juggle = 100
anim = 200
velset = 0,0
poweradd = 10*Var(3)
sprpriority = 1
ctrl = 0
facep2 = 1

;[State 200, ChangeState]
;type = ChangeState
;trigger1 = !AILevel
;value = 3000
;ctrl = 0

[State 200, Width]
type = Width
trigger1 = 1
edge = 25,0
player = 25,0

[State 200, NotHitBy]
type = NotHitBy
trigger1 = PrevStateNo = 710
trigger1 = !Time
value = SCA
time = 5

[State 200, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(200)
trigger1 = !NumExplod(200)
trigger1 = Target(200),StateType != L
ID = 200
anim = 8000+Random%3
pos = 15+Ceil(P2BodyDist X),-80
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 200, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = S,NA
hitflag = MAF
guardflag = M
animtype = Light
air.animtype = Back
fall.animtype = Back
priority = 5,Hit
damage = Ceil(FVar(5)*20),0
pausetime = 9,9
sparkno = -1
guard.sparkno = S8500
sparkxy = -15,-86
hitsound = S200,0
guardsound = S200,2
ground.type = High
air.type = High
ground.slidetime = 2
ground.hittime = 11
air.hittime = 11
yaccel = .4
ground.velocity = -2
air.velocity = -.2,-5
ground.cornerpush.veloff = -4
air.cornerpush.veloff = -4
fall = 0
fall.recover = 0
air.fall = 1
getpower = 30*Var(3),15*Var(3)
givepower = 0,5
p2facing = 1
hitonce = 1
ID = 200

[State 200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(4) > 0
movetype = I        ;I,A,H

[State 200, PlaySnd]
type = PlaySnd
trigger1 = !Time && Random < 700
value = S300,0+(Random%3)
channel = 0

[State 200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S200,1
channel = 1

[State 200, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 200, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;STANDING MEDIUM PUNCH
[StateDef 210]
type = S
movetype = A
physics = S
juggle = 100;20
anim = Cond(P2BodyDist X <= 40,212,210)
velset = 0,0
poweradd = 20*Var(3)
sprpriority = 1
ctrl = 0
facep2 = 1

;[State 210, ChangeState]
;type = ChangeState
;trigger1 = !AILevel
;value = 3000
;ctrl = 0

[State 210, Width]
type = Width
trigger1 = Anim = 210 && AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
edge = 50,0
player = 30,0
[State 210, Width]
type = Width
trigger1 = Anim = 210 && AnimElemTime(3) >= 0 && AnimElemTime(8) < 0
edge = 60,0
player = 60,0
[State 210, Width]
type = Width
trigger1 = Anim = 210 && AnimElemTime(8) >= 0
edge = 20,0
player = 15,0

[State 210, Width]
type = Width
trigger1 = Anim = 212
edge = 30,0
player = 30,0

[State 210, NotHitBy]
type = NotHitBy
trigger1 = PrevStateNo = 710
trigger1 = !Time
value = SCA
time = 5

[State 210, Helper]
type = Helper
trigger1 = Anim = 210 && AnimElemTime(3) = 1
name = "Slash"
ID = 210
stateno = 6071
postype = P1    ;p2,front,back,left,right
facing = 1
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1

[State 210, Helper]
type = Helper
trigger1 = Anim = 212 && Time = 1
name = "Slash"
ID = 212
stateno = 6071
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1

[State 210, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(210)
trigger1 = !NumExplod(210)
trigger1 = Target(210),StateType != L
trigger1 = Anim = 210
ID = 210
anim = 8000+Random%3
pos = 25+Ceil(P2BodyDist X),-78-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 210, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(212)
trigger1 = !NumExplod(212)
trigger1 = Target(212),StateType != L
trigger1 = Anim = 212
ID = 211
anim = 8000+Random%3
pos = 25+Ceil(P2BodyDist X),-75
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 210, HitDef]
type = HitDef
trigger1 = Anim = 210 && AnimElem = 4
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
air.animtype = Up
fall.animtype = Medium
priority = 6,Hit
damage = Ceil(FVar(5)*40),0
pausetime = 9,13
sparkno = -1
guard.sparkno = S8500
sparkxy = -16,-78
hitsound = S213,0+(Random%4)
guardsound = S200,2
ground.type = High      ;Low,Trip,None
air.type = High
ground.slidetime = 15
ground.hittime = 15
air.hittime = 15
yaccel = .5
ground.velocity = -5
air.velocity = -1,-5
ground.cornerpush.veloff = -2
air.cornerpush.veloff = -2
fall = 0
fall.recover = 0
air.fall = 1
forcestand = 1
getpower = 40*Var(3),20*Var(3)
givepower = 0,5
p2facing = 1
hitonce = 1
ID = 210

[State 210, HitDef]
type = HitDef
trigger1 = Anim = 212 && AnimElem = 3
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
air.animtype = Medium
fall.animtype = Medium
priority = 6,Hit
damage = Ceil(FVar(5)*40),0
pausetime = 9,15
sparkno = -1
guard.sparkno = S8500
sparkxy = -16,-75
hitsound = S213,0+(Random%4)
guardsound = S200,2
ground.type = Low      ;Low,Trip,None
air.type = Low
ground.slidetime = 11
ground.hittime = 11
air.hittime = 11
yaccel = .8
ground.velocity = -5
air.velocity = -3,0
ground.cornerpush.veloff = -2
air.cornerpush.veloff = -2
fall.recover = 0
air.fall = 1
forcestand = 1
getpower = 40*Var(3),20*Var(3)
givepower = 0,5
p2facing = 1
p2sprpriority = -3
hitonce = 1
ID = 212

[State 210, StateTypeSet]
type = StateTypeSet
trigger1 = Anim = 210 && AnimElemTime(6) > 0
trigger2 = Anim = 212 && AnimElemTime(4) > 0
movetype = I        ;I,A,H

[State 210, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && Random < 200
value = S300,3+(Random%3)
channel = 0

[State 210, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S211,0+(Random%2)
channel = 1

[State 210, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 210, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && PrevStateNo = 210
value = 210
ignorehitpause = 1

[State 210, ChangeState]
type = ChangeState
trigger1 = AILevel
trigger1 = Var(59) < (1000*(AILevel**2/64.0))
trigger1 = Anim = 210
trigger1 = MoveContact
trigger1 = NumEnemy
trigger1 = EnemyNear,MoveType = H
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
value = 420
ctrl = 0

[State 210, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;STANDING HEAVY PUNCH
[StateDef 220]
type = S
movetype = A
physics = S
juggle = 100;25
anim = Cond(P2BodyDist X < 40,221,220)
velset = 0,0
poweradd = 30*Var(3)
sprpriority = 1
ctrl = 0
facep2 = 1

;[State 220, ChangeState]
;type = ChangeState
;trigger1 = !AILevel
;value = 3200
;ctrl = 0

[State 220, Width]
type = Width
trigger1 = Anim = 220 && AnimElemTime(3) < 0
edge = 15,0
player = 15,0
ignorehitpause = 1

[State 220, Width]
type = Width
trigger1 = Anim = 220 && AnimElemTime(3) >= 0 && AnimElemTime(5) < 0
edge = 35,0
player = 35,0
ignorehitpause = 1

[State 220, Width]
type = Width
trigger1 = Anim = 220 && AnimElemTime(5) >= 0
edge = 15,0
player = 15,0
ignorehitpause = 1

[State 220, Width]
type = Width
trigger1 = Anim = 221 
edge = 30,0
player = 30,0
ignorehitpause = 1

[State 220, NotHitBy]
type = NotHitBy
trigger1 = PrevStateNo = 710
trigger1 = !Time
value = SCA
time = 5

[State 220, Helper]
type = Helper
trigger1 = Anim = 220 && AnimElemTime(1) = 2
name = "Slash"
ID = 220
stateno = 6070
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1

[State 220, Helper]
type = Helper
trigger1 = Anim = 221 && AnimElem = 3
name = "Slash"
ID = 221
stateno = 6071
postype = P1    ;p2,front,back,left,right
facing = 1
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1

[State 220, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(220)
trigger1 = !NumExplod(220)
trigger1 = Target(220),StateType != L
ID = 220
anim = 8000+Random%3
pos = 25+Ceil(P2BodyDist X),-75
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 220, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(221)
trigger1 = !NumExplod(221)
trigger1 = Target(221),StateType != L
ID = 221
anim = 8000+Random%3
pos = 30+Ceil(P2BodyDist X),-78-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 220, HitDef]
type = HitDef
trigger1 = Anim = 220
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard          ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 7,Hit
damage = Ceil(FVar(5)*60),0
pausetime = 12,12
sparkno = -1
guard.sparkno = S8500
sparkxy = -15,-75
hitsound = S213,0+(Random%4)
guardsound = S200,2
ground.type = High      ;Low,Trip,None
air.type = High
ground.slidetime = 20
ground.hittime = 23
air.hittime = 50
yaccel = .5
ground.velocity = -8
air.velocity = -6,-4
ground.cornerpush.veloff = -12
air.cornerpush.veloff = -12
fall = 0
fall.recover = 0
air.fall = 1
getpower = 50*Var(3),25*Var(3)
givepower = 0,5
p2facing = 1
hitonce = 1
persistent = 0
ID = 220

[State 220, HitDef]
type = HitDef
trigger1 = Anim = 221 && AnimElem = 3
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard          ;light,medium,hard,back,up,diagup
air.animtype = Up
fall.animtype = Up
priority = 7,Hit
damage = Ceil(FVar(5)*60),0
pausetime = 12,14
guard.pausetime = 10,10
sparkno = -1
guard.sparkno = S8500
sparkxy = -15,-70
hitsound = S213,0+(Random%4)
guardsound = S200,2
ground.type = High      ;Low,Trip,None
air.type = High
ground.slidetime = 20
ground.hittime = 20
air.hittime = 20
yaccel = .5
ground.velocity = -6
guard.velocity = -5
air.velocity = -2,-7
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -5
fall = 0
fall.recover = 0
air.fall = 1
getpower = 50*Var(3),25*Var(3)
givepower = 0,5
p2facing = 1
p2sprpriority = -2
hitonce = 1
ID = 221

[State 220, StateTypeSet]
type = StateTypeSet
trigger1 = Anim = 220
trigger1 = AnimElemTime(6) > 0
movetype = I        ;I,A,H

[State 220, StateTypeSet]
type = StateTypeSet
trigger1 = Anim = 221
trigger1 = AnimElemTime(5) > 0
movetype = I        ;I,A,H

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && Random < 600
value = S300,6+(Random%3)
channel = 0

[State 220, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S212,0+(Random%2)
channel = 1

[State 220, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 220, ChangeState]
type = ChangeState
trigger1 = !Time && PrevStateNo = 220
value = 223
ignorehitpause = 1

[State 220, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;SPINNING BACK KNUCKLE
[StateDef 223]
type = S
movetype = A
physics = N
juggle = 100
anim = 223
velset = 0,0
poweradd = 30*Var(3)
sprpriority = 1
ctrl = 0
facep2 = 0

[State 223, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1
ignorehitpause = 1
persistent = 1

[State 223, Width]
type = Width
trigger1 = AnimElemTime(3) < 0
edge = 40,0
player = 40,0

[State 223, Width]
type = Width
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
edge = 70,0
player = 70,0

[State 223, Width]
type = Width
trigger1 = AnimElemTime(4) >= 0
edge = 20,0
player = 20,0

[State 223, NotHitBy]
type = NotHitBy
trigger1 = PrevStateNo = 710
trigger1 = !Time
value = SCA
time = 5

[State 223, Explod]
type = Explod
trigger1 = AnimElem = 3
ID = 7002
anim = 7002
postype = P1  ;p2,front,back,left,right
pos = 85,2
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .5,.5
facing = -1
sprpriority = -2
ownpal = 1

[State 223, Helper]
type = Helper
trigger1 = AnimElemTime(2) = 2
name = "Slash"
ID = 223
stateno = 6070
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1

[State 223, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(223)
trigger1 = !NumExplod(223)
trigger1 = Target(223),StateType != L
ID = 223
anim = 8000+Random%3
pos = 40+Ceil(P2BodyDist X),-80
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 223, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard          ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 7,Hit
damage = Ceil(FVar(5)*60),0
pausetime = 11,11
guard.pausetime = 10,10
sparkno = -1
guard.sparkno = S8500
sparkxy = -15,-80
hitsound = S213,0+(Random%4)
guardsound = S200,2
ground.type = High      ;Low,Trip,None
air.type = Low
ground.slidetime = 20
ground.hittime = 25
air.hittime = 25
yaccel = .5
ground.velocity = -8
air.velocity = -6,-4
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
fall = 0
fall.recover = 0
air.fall = 1
getpower = 20*Var(3),10*Var(3)
givepower = 0,5
p2facing = 1
p2sprpriority = -2
hitonce = 1
persistent = 0
ID = 223

[State 223, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(4) > 0
movetype = I        ;I,A,H

[State 223, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S212,0+(Random%2)
channel = 1

[State 223, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S300,6+(Random%3)
channel = 0

[State 223, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 223, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;STANDING LIGHT KICK
[StateDef 230]
type = S
movetype = A
physics = S
juggle = 100
anim = Cond(P2BodyDist X < 35,231,230)
velset = 0,0
poweradd = 10*Var(3)
sprpriority = 1
ctrl = 0
facep2 = 1

;[State 230, ChangeState]
;type = ChangeState
;trigger1 = !AILevel
;value = 1100
;ctrl = 0

[State 230, Width]
type = Width
trigger1 = AnimElemTime(3) < 0
edge = 25,0
player = 25,0
ignorehitpause = 1

[State 230, Width]
type = Width
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(5) < 0
edge = 35,0
player = 35,0
ignorehitpause = 1

[State 230, Width]
type = Width
trigger1 = AnimElemTime(5) >= 0
edge = 15,0
player = 15,0
ignorehitpause = 1

[State 230, NotHitBy]
type = NotHitBy
trigger1 = PrevStateNo = 710
trigger1 = !Time
value = SCA
time = 5

[State 230, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(230)
trigger1 = !NumExplod(230)
trigger1 = Target(230),StateType != L
ID = 230
anim = 8000+Random%3
pos = 75,-23
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 230, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(231)
trigger1 = !NumExplod(231)
trigger1 = Target(231),StateType != L
ID = 231
anim = 8000+Random%3
pos = 75,-105
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 230, HitDef]
type = HitDef
trigger1 = Anim = 230
trigger1 = AnimElem = 3
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Light          ;light,medium,hard,back,up,diagup
air.animtype = Light
fall.animtype = Light
priority = 5,Hit
damage = Ceil(FVar(5)*20),0
pausetime = 8,8
sparkno = -1
guard.sparkno = S8500
sparkxy = -15,-23
hitsound = S230,0
guardsound = S200,2
ground.type = Low      ;Low,Trip,None
air.type = Low
ground.slidetime = 11
ground.hittime = 11
air.hittime = 11
yaccel = .5
ground.velocity = -4
air.velocity = -3,-5
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -6
forcestand = 1
fall.recover = 0
air.fall = 1
getpower = 30*Var(3),15*Var(3)
givepower = 0,5
p2facing = 1
hitonce = 1
ID = 230

[State 230, HitDef]
type = HitDef
trigger1 = Anim = 231
trigger1 = AnimElem = 3
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Light          ;light,medium,hard,back,up,diagup
air.animtype = Light
fall.animtype = Light
priority = 5,Hit
damage = Ceil(FVar(5)*20),0
pausetime = 8,8
sparkno = -1
guard.sparkno = S8500
sparkxy = -15,-95
hitsound = S230,0
guardsound = S200,2
ground.type = High      ;Low,Trip,None
air.type = High
ground.slidetime = 12
ground.hittime = 17
air.hittime = 17
yaccel = .5
ground.velocity = -3
air.velocity = -3,-5
ground.cornerpush.veloff = -4
air.cornerpush.veloff = -4
forcestand = 1
fall.recover = 0
air.fall = 1
getpower = 30*Var(3),15*Var(3)
givepower = 0,5
p2facing = 1
hitonce = 1
ID = 231

[State 230, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(4) > 0
movetype = I        ;I,A,H

[State 230, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 150
value = S300,0+(Random%3)
channel = 0

[State 230, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S230,1
channel = 1

[State 230, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 230, PosAdd]
type = PosAdd
triggerall = Anim = 230
trigger1 = AnimElemTime(1) = [0,1]
trigger2 = AnimElemTime(2) = [0,1]
x = 2

[State 230, ChangeState]
type = ChangeState
trigger1 = AILevel
trigger1 = Var(59) < (1000*(AILevel**2/64.0))
;trigger1 = Var(48) < 10
;trigger1 = Var(50) < 10
trigger1 = MoveContact
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
value = Cond(Anim = 230,240,250)
ctrl = 0

[State 230, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;STANDING MEDIUM KICK
[StateDef 240]
type = S
movetype = A
physics = S
juggle = 100
anim = Cond(P2BodyDist X >= 40,241,240)
velset = 0,0
poweradd = 20*Var(3)
sprpriority = 1
ctrl = 0
facep2 = 1

;[State 240, ChangeState]
;type = ChangeState
;trigger1 = !AILevel
;value = 1100
;ctrl = 0

[State 240, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = PrevStateNo = 230
value = 240
elem = 1
ignorehitpause = 1

[State 240, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1
ignorehitpause = 1

[State 240, Width]
type = Width
trigger1 = Anim = 240
trigger1 = AnimElem = 1
edge = 30,0
player = 25,0

[State 240, Width]
type = Width
trigger1 = Anim = 240
trigger1 = AnimElem = 2
edge = 30,0
player = 35,0

[State 240, Width]
type = Width
trigger1 = Anim = 240
trigger1 = AnimElemTime(3) >= 0
edge = 30,0
player = 40,0

[State 240, Width]
type = Width
trigger1 = Anim = 240
trigger1 = AnimElemTime(4) >= 0
edge = 15,0
player = 15,0

[State 240, Width]
type = Width
trigger1 = Anim = 241 && AnimElemTime(3) >= 0
edge = 35,0
player = 35,0
ignorehitpause = 1

[State 240, Width]
type = Width
trigger1 = Anim = 241 && AnimElemTime(4) >= 0
edge = 20,0
player = 20,0
ignorehitpause = 1

[State 240, NotHitBy]
type = NotHitBy
trigger1 = PrevStateNo = 710
trigger1 = !Time
value = SCA
time = 5

[State 240, Helper]
type = Helper
trigger1 = Anim = 240 && AnimElem = 2
name = "Slash"
ID = 240
stateno = 6070
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1

[State 240, Helper]
type = Helper
trigger1 = Anim = 241 && AnimElem = 2
name = "Slash"
ID = 241
stateno = 6070
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1

[State 240, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(240)
trigger1 = !NumExplod(240)
trigger1 = Target(240),StateType != L
ID = 240
anim = 8000+Random%3
pos = 25+Ceil(P2BodyDist X),-85-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 240, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(241)
trigger1 = !NumExplod(241)
trigger1 = Target(241),StateType != L
ID = 241
anim = 8000+Random%3
pos = 25+Ceil(P2BodyDist X),-90
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 240, HitDef]
type = HitDef
trigger1 = Anim = 240 && AnimElem = 4
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
air.animtype = Medium
fall.animtype = Medium
priority = 6,Hit
damage = Ceil(FVar(5)*40),0
pausetime = 9,11
sparkno = -1
guard.sparkno = S8500
sparkxy = -15,-80
hitsound = S213,0+(Random%4)
guardsound = S200,2
ground.type = High      ;Low,Trip,None
air.type = High
ground.slidetime = 12
ground.hittime = 15
air.hittime = 15
yaccel = .5
ground.velocity = -5
air.velocity = -3,-7
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -5
forcestand = 1
fall.recover = 0
air.fall = 1
getpower = 15*Var(3),8*Var(3)
givepower = 0,5
p2facing = 1
hitonce = 1
ID = 240

[State 240, HitDef]
type = HitDef
trigger1 = Anim = 241 && AnimElem = 3
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Medium
fall.animtype = Medium
priority = 6,Hit
damage = Ceil(FVar(5)*40),0
pausetime = 9,5
sparkno = -1
guard.sparkno = S8500
sparkxy = -15,-90
hitsound = S213,0+(Random%4)
guardsound = S200,2
ground.type = High      ;Low,Trip,None
air.type = High
ground.slidetime = 20
ground.hittime = 20
guard.hittime = 20
air.hittime = 20
yaccel = .5
ground.velocity = -5
air.velocity = -4,-6
ground.cornerpush.veloff = -4
air.cornerpush.veloff = -4
forcestand = 1
fall = 0
fall.recover = 0
air.fall = 1
getpower = 50*Var(3),25*Var(3)
givepower = 0,5
p2facing = 1
hitonce = 1
ID = 241

[State 240, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
movetype = I        ;I,A,H

[State 240, PosAdd]
type = PosAdd
trigger1 = (Time = [0,4]) && PrevStateNo = 230
x = 8

[State 240, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && Random < 600
value = S300,3+(Random%3)
channel = 0

[State 240, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S211,0+(Random%2)
channel = -1

[State 240, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 240, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;ROLLING SOBAT
[StateDef 242]
type = S
movetype = A
physics = S
juggle = 100
anim = 242
velset = 0,0
poweradd = 20*Var(3)
sprpriority = 1
ctrl = 0
facep2 = 1

;[State 242, ChangeState]
;type = ChangeState
;trigger1 = !AILevel
;value = 1100
;ctrl = 0

[State 242, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1
ignorehitpause = 1

[State 242, Width]
type = Width
trigger1 = AnimElemTime(4) < 0
edge = 25,0
player = 25,0

[State 242, Width]
type = Width
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(9) < 0
edge = 60,0
player = 60,0

[State 242, Width]
type = Width
trigger1 = AnimElemTime(9) >= 0
edge = 20,0
player = 20,0

[State 242, NotHitBy]
type = NotHitBy
trigger1 = PrevStateNo = 710
trigger1 = !Time
value = SCA
time = 5

[State 242, Explod]
type = Explod
trigger1 = AnimElem = 2
ID = 7000
anim = 7000
pos = 0,10
postype = P1  ;p2,front,back,left,right
facing = 1
bindtime = 1
removetime = -2
pausemovetime = 0
supermovetime = 0
scale = .5,.5
sprpriority = 3
ownpal = 1
ignorehitpause = 1
[State 242, Explod]
type = Explod
trigger1 = AnimElem = 2
ID = 7001
anim = 7001
pos = 0,0
postype = P1  ;p2,front,back,left,right
facing = 1
bindtime = 1
removetime = -2
pausemovetime = 0
supermovetime = 0
scale = .5,.5
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 242, Helper]
type = Helper
trigger1 = AnimElemTime(2) = 3
name = "Slash"
ID = 242
stateno = 6070
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1

[State 242, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = NumTarget(242)
trigger1 = Target(242),StateType != L
trigger1 = !MoveGuarded
trigger1 = !NumExplod(242)
ID = 242
anim = 8000+Random%3
pos = 20+Ceil(P2BodyDist X),-75
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 242, HitDef]
type = HitDef
trigger1 = AnimElem = 4
attr = A,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard          ;light,medium,hard,back,up,diagup
fall.animtype = Hard
priority = 6,Hit
damage = Ceil(FVar(5)*40),0
pausetime = 9,9
sparkno = -1
guard.sparkno = S8500
sparkxy = -15,-75
hitsound = S213,0+(Random%4)
guardsound = S200,2
ground.type = High      ;Low,Trip,None
air.type = Low
ground.slidetime = 10
ground.hittime = 17
guard.ctrltime = 19
yaccel = .5
ground.velocity = -4
guard.velocity = -5
air.velocity = -4,-5
ground.cornerpush.veloff = -2
air.cornerpush.veloff = -2
guard.cornerpush.veloff = -2
forcestand = 1
fall = 0
fall.recover = 0
air.fall = 1
p2facing = 1
p2sprpriority = -2
getpower = 50*Var(3),25*Var(3)
givepower = 0,5
hitonce = 1
ID = 242

[State 242, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 242, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(2) >= 0
statetype = A        ;I,A,H
physics = N

[State 242, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(8) > 0
movetype = I        ;I,A,H

[State 242, VelSet]
type = VelSet
trigger1 = !AILevel
trigger1 = AnimElemTime(1) = 0
x = Cond(Command = "holdback",-3,3)
y = -4
[State 242, VelSet]
type = VelSet
trigger1 = AILevel
trigger1 = PrevStateNo != 102
trigger1 = AnimElemTime(1) = 0
x = 3
y = -4
[State 242, VelSet]
type = VelSet
trigger1 = AILevel
trigger1 = PrevStateNo = 102
trigger1 = AnimElemTime(1) = 0
x = Cond(EnemyNear,StateType != A && EnemyNear,MoveType != H,-3,3);-3
y = -4

[State 242, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(1) >= 0
y = .5

[State 242, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S40,0
channel = -1

[State 242, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && Random < 500
value = S300,3+(Random%3)
channel = 0

[State 242, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S211,0+(Random%2)
channel = 1

[State 242, ChangeState]
type = ChangeState
trigger1 = AILevel
trigger1 = PrevStateNo = 102
trigger1 = Var(59) < (100*(AILevel**2/64.0))
trigger1 = !Time
value = 252
ctrl = 0

[State 242, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 52
ctrl = 0

;--------------------------------------------------------------------------------------------------------------------------------------------
;STANDING HEAVY KICK
[StateDef 250]
type = S
movetype = A
physics = S
juggle = 100
anim = Cond(P2BodyDist X <= 30,251,250)
velset = 0,0
poweradd = 30*Var(3)
sprpriority = 1
ctrl = 0
facep2 = 1

;[State 250, ChangeState]
;type = ChangeState
;trigger1 = !AILevel
;value = 1100
;ctrl = 0

[State 250, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = PrevStateNo = 230
value = 250
elem = 1
ignorehitpause = 1

[State 250, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = PrevStateNo = 240
value = 251
elem = 1
ignorehitpause = 1

[State 250, Width]
type = Width
trigger1 = Anim = 250 && AnimElemTime(4) < 0
edge = 30,0
player = 30,0
ignorehitpause = 1

[State 250, Width]
type = Width
trigger1 = Anim = 250 && AnimElemTime(4) >= 0 && AnimElemTime(6) < 0
edge = 63,0
player = 63,0
ignorehitpause = 1

[State 250, Width]
type = Width
trigger1 = Anim = 250 && AnimElemTime(6) >= 0
edge = 20,0
player = 20,0
ignorehitpause = 1

[State 250, Width]
type = Width
trigger1 = Anim = 251
trigger1 = AnimElemTime(4) < 0
edge = 25,0
player = 25,0

[State 250, Width]
type = Width
trigger1 = Anim = 251
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(6) < 0
edge = 45,0
player = 45,0

[State 250, Width]
type = Width
trigger1 = Anim = 251
trigger1 = AnimElemTime(6) >= 0
edge = 25,0
player = 25,0

[State 250, NotHitBy]
type = NotHitBy
trigger1 = PrevStateNo = 710
trigger1 = !Time
value = SCA
time = 5

[State 250, Helper]
type = Helper
trigger1 = Anim = 250 && AnimElem = 2
name = "Slash"
ID = 250
stateno = 6070
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1

[State 250, Helper]
type = Helper
trigger1 = Anim = 251 && AnimElemTime(3) = 2
name = "Slash"
ID = 251
stateno = 6070
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1

[State 250, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(250)
trigger1 = !NumExplod(250)
trigger1 = Target(250),StateType != L
ID = 250
anim = 8000+Random%3
pos = 25+Ceil(P2BodyDist X),-55
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 250, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(251)
trigger1 = !NumExplod(251)
trigger1 = Target(251),StateType != L
ID = 251
anim = 8000+Random%3
pos = 25+Ceil(P2BodyDist X),-95-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 250, HitDef]
type = HitDef
trigger1 = Anim = 250 && AnimElem = 4
attr = S,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Medium
priority = 7,Hit
damage = Ceil(FVar(5)*60),0
pausetime = 10,10
sparkno = -1
guard.sparkno = S8500
sparkxy = -15,-55
hitsound = S213,0+(Random%4)
guardsound = S200,2
ground.type = Low      ;Low,Trip,None
ground.slidetime = 25
ground.hittime = 25
air.hittime = 25
guard.ctrltime = 25
yaccel = .5
ground.velocity = -10
air.velocity = -6,-6
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 0
fall.recover = 0
air.fall = 1
getpower = 50*Var(3),25*Var(3)
givepower = 0,10
p2facing = 1
hitonce = 1
ID = 250

[State 250, HitDef]
type = HitDef
trigger1 = Anim = 251 && AnimElem = 4
attr = S,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
air.animtype = Back
fall.animtype = Back
priority = 7,Hit
damage = Ceil(FVar(5)*60),0
pausetime = 10,11
guard.pausetime = 17,10
sparkno = -1
guard.sparkno = S8500
sparkxy = -15,-95
hitsound = S213,0+(Random%4)
guardsound = S200,2
ground.type = High      ;Low,Trip,None
air.type = High
ground.slidetime = 10
ground.hittime = 25
air.hittime = 25
yaccel = .5
ground.velocity = -3,-8
guard.velocity = -2
air.velocity = -3,-8
ground.cornerpush.veloff = -5
guard.cornerpush.veloff = -5
air.cornerpush.veloff = -5
fall = 1
fall.recover = 0
air.fall = 1
getpower = 20*Var(3),10*Var(3)
givepower = 0,5
p2facing = 1
hitonce = 1
ID = 251

[State 250, StateTypeSet]
type = StateTypeSet
trigger1 = Anim = 250
trigger1 = AnimElemTime(6) > 0
movetype = I        ;I,A,H

[State 250, StateTypeSet]
type = StateTypeSet
trigger1 = Anim = 251
trigger1 = AnimElemTime(6) > 0
movetype = I        ;I,A,H

[State 250, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && Random < 800
value = S300,6+(Random%3)
channel = 0

[State 250, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S212,0+(Random%2)
channel = 1

[State 250, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 250, VelSet]
type = VelSet
trigger1 = Anim = 250 && AnimElem = 1
x = 8

[State 250, VelSet]
type = VelSet
trigger1 = Anim = 250 && AnimElem = 3
x = 0

[State 250, VelSet]
type = VelSet
trigger1 = Anim = 251 && (PrevStateNo = 210 || PrevStateNo = 240)
trigger1 = !Time
x = 5

[State 250, VelMul]
type = VelMul
trigger1 = Anim = 251 && (PrevStateNo = 210 || PrevStateNo = 240)
x = .9

[State 250, ChangeState]
type = ChangeState
trigger1 = !Time && PrevStateNo = 450
value = 252
ignorehitpause = 1

[State 250, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;REVERSE SPIN KICK
[StateDef 252]
type = S
movetype = A
physics = S
juggle = 100
anim = 252
velset = 0,0
poweradd = 30*Var(3)
sprpriority = 1
ctrl = 0
facep2 = 1

;[State 252, ChangeState]
;type = ChangeState
;trigger1 = !AILevel
;value = 1100
;ctrl = 0

[State 252, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1
ignorehitpause = 1

[State 252, Width]
type = Width
trigger1 = AnimElemTime(4) < 0
edge = 25,0
player = 25,0

[State 252, Width]
type = Width
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(9) < 0
edge = 60,0
player = 60,0

[State 252, Width]
type = Width
trigger1 = AnimElemTime(9) >= 0
edge = 20,0
player = 20,0

[State 252, NotHitBy]
type = NotHitBy
trigger1 = PrevStateNo = 710
trigger1 = !Time
value = SCA
time = 5

[State 252, Explod]
type = Explod
trigger1 = AnimElem = 2
ID = 7000
anim = 7000
pos = 0,5
postype = P1  ;p2,front,back,left,right
facing = 1
bindtime = 1
removetime = -2
pausemovetime = 0
supermovetime = 0
scale = .5,.5
sprpriority = 3
ownpal = 1
ignorehitpause = 1
[State 252, Explod]
type = Explod
trigger1 = AnimElem = 2
ID = 7001
anim = 7001
pos = 0,0
postype = P1  ;p2,front,back,left,right
facing = 1
bindtime = 1
removetime = -2
pausemovetime = 0
supermovetime = 0
scale = .5,.5
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 252, Helper]
type = Helper
trigger1 = AnimElem = 5
name = "Slash"
ID = 252
stateno = 6070
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1

[State 252, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = NumTarget(252)
trigger1 = Target(252),StateType != L
trigger1 = !MoveGuarded
trigger1 = !NumExplod(252)
ID = 252
anim = 8000+Random%3
pos = 20+Ceil(P2BodyDist X),-75
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 252, HitDef]
type = HitDef
trigger1 = AnimElem = 7
attr = A,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard          ;light,medium,hard,back,up,diagup
fall.animtype = DiagUp
priority = 7,Hit
damage = Ceil(FVar(5)*60),0
pausetime = 9,11
sparkno = -1
guard.sparkno = S8500
sparkxy = -15,-75
hitsound = S213,0+(Random%4)
guardsound = S200,2
ground.type = High      ;Low,Trip,None
air.type = Low
ground.slidetime = 10
ground.hittime = 20
guard.ctrltime = 20
yaccel = .5
ground.velocity = -3,-9
guard.velocity = -5
air.velocity = -3,-9
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
p2facing = 1
getpower = 50*Var(3),25*Var(3)
givepower = 0,5
hitonce = 1
ID = 252

[State 252, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 252, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(1) >= 0
statetype = A        ;I,A,H
physics = N

[State 252, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(8) > 0
movetype = I        ;I,A,H

[State 252, VelSet]
type = VelSet
trigger1 = !AILevel
trigger1 = PrevStateNo != 440
trigger1 = AnimElemTime(1) = 0
x = Cond(Command = "holdback",-3,3)
y = -2
[State 252, VelSet]
type = VelSet
trigger1 = !AILevel
trigger1 = PrevStateNo = 440
trigger1 = AnimElemTime(1) = 0
x = Cond(Command = "holdback",-5,5)
y = -2
[State 252, VelSet]
type = VelSet
trigger1 = AILevel
trigger1 = PrevStateNo = 440 
trigger1 = AnimElemTime(1) = 0
x = 5
y = -2
[State 252, VelMul]
type = VelMul
trigger1 = PrevStateNo = 440 
trigger1 = AnimElemTime(1) > 0
x = .95
[State 252, VelSet]
type = VelSet
trigger1 = AILevel
trigger1 = PrevStateNo != 242 && PrevStateNo != 440
trigger1 = AnimElemTime(1) = 0
x = Cond(Var(59) < (10*(AILevel**2/64.0)),-1,1)
y = -2
[State 252, VelSet]
type = VelSet
trigger1 = AILevel
trigger1 = PrevStateNo = 242
trigger1 = AnimElemTime(1) = 0
x = Cond(EnemyNear,StateType != A,-3,3);-1
y = -2

[State 252, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) = 0
y = 0

[State 252, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(10) >= 0
y = .5

[State 252, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S40,0
channel = -1

[State 252, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && Random < 500
value = S300,3+(Random%3)
channel = -1

[State 252, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S212,0+(Random%2)
channel = 1

[State 252, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 0 && Vel Y > 0
value = 52
ctrl = 0

;--------------------------------------------------------------------------------------------------------------------------------------------
;CROUCHING LIGHT PUNCH
[StateDef 400]
type = C
movetype = A
physics = C
juggle = 100
anim = 400
velset = 0,0
poweradd = 10*Var(3)
sprpriority = 1
ctrl = 0
facep2 = 1

[State 400, Width]
type = Width
trigger1 = 1
edge = 20,0
player = 20,0

[State 400, NotHitBy]
type = NotHitBy
trigger1 = PrevStateNo = 710
trigger1 = !Time
value = SCA
time = 5

[State 400, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(400)
trigger1 = !NumExplod(400)
trigger1 = Target(400),StateType != L
ID = 400
anim = 8000+Random%3
pos = 15+Ceil(P2BodyDist X),-50
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 400, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = C,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = Back
fall.animtype = Back
priority = 5,Hit
damage = Ceil(FVar(5)*20),0
pausetime = 9,9
sparkno = -1
guard.sparkno = S8500
sparkxy = -15,-50
hitsound = S200,0
guardsound = S200,2
ground.type = Low      ;Low,Trip,None
air.type = High
ground.slidetime = 6
ground.hittime = 13
air.hittime = 15
yaccel = .5
ground.velocity = -6
air.velocity = -2,-4
ground.cornerpush.veloff = -6
air.cornerpush.veloff = -6
fall.recover = 0
air.fall = 1
getpower = 30*Var(3),15*Var(3)
givepower = 0,5
p2facing = 1
hitonce = 1
ID = 400

[State 400, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(3) > 0
movetype = I        ;I,A,H

[State 400, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && Random < 200
value = S300,0+(Random%3)
channel = 0

[State 400, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S200,1
channel = 1

[State 400, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 400, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;CROUCHING MEDIUM PUNCH
[StateDef 410]
type = C
movetype = A
physics = C
juggle = 100
anim = 410
velset = 0,0
poweradd = 20*Var(3)
sprpriority = 1
ctrl = 0
facep2 = 1

[State 410, Width]
type = Width
trigger1 = 1
edge = 25,0
player = 25,0

[State 410, NotHitBy]
type = NotHitBy
trigger1 = PrevStateNo = 710
trigger1 = !Time
value = SCA
time = 5

[State 410, Helper]
type = Helper
trigger1 = AnimElem = 1
name = "Slash"
ID = 410
stateno = 6070
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1

[State 410, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(410)
trigger1 = !NumExplod(410)
trigger1 = Target(410),StateType != L
ID = 410
anim = 8000+Random%3
pos = 25+Ceil(P2BodyDist X),-45
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 410, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = C,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
air.animtype = Medium
fall.animtype = Medium
priority = 6,Hit
damage = Ceil(FVar(5)*40),0
pausetime = 9,12
sparkno = -1
guard.sparkno = S8500
sparkxy = -15,-45
hitsound = S213,0+(Random%4)
guardsound = S200,2
ground.type = Low      ;Low,Trip,None
air.type = Low
ground.slidetime = 14
ground.hittime = 14
air.hittime = 14
yaccel = .5
ground.velocity = -6
air.velocity = -6,-4
ground.cornerpush.veloff = -10
air.cornerpush.veloff = -10
fall = 0
fall.recover = 0
air.fall = 1
getpower = 40*Var(3),20*Var(3)
givepower = 0,5
p2facing = 1
hitonce = 1
ID = 410

[State 410, TargetBind]
type = TargetBind
trigger1 = MoveContact = 1
trigger1 = NumTarget(410) && NumEnemy
trigger1 = (Target(410),Time = 0) && (Target(410),ID = EnemyNear,ID)
trigger1 = !(Target(410),HitShakeOver) && (Target(410),Pos Y > 0)
pos = Ceil(P2Dist X),Ceil(-Pos Y)
time = 1
ignoreHitPause = 1

[State 410, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(4) > 0
movetype = I        ;I,A,H

[State 410, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && Random < 500
value = S300,3+(Random%3)
channel = 0

[State 410, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S211,0+(Random%2)
channel = 1

[State 410, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 410, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;LAWFUL UPPER
[StateDef 420]
type = C
movetype = A
physics = C
juggle = 100
anim = 420
velset = 0,0
poweradd = 30*Var(3)
sprpriority = 1
ctrl = 0
facep2 = 1

[State 420, Width]
type = Width
trigger1 = 1
player = 30,0

[State 420, NotHitBy]
type = NotHitBy
trigger1 = PrevStateNo = 710
trigger1 = !Time
value = SCA
time = 5

[State 420, Helper]
type = Helper
trigger1 = AnimElem = 1
name = "Slash"
ID = 420
stateno = 6071
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1

[State 420, Helper]
type = Helper
trigger1 = AnimElemTime(3) = 3
name = "Tornado"
ID = 421
stateno = 421
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0

[State 420, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(420)
trigger1 = !NumExplod(420)
trigger1 = Target(420),StateType != L
ID = 420
anim = 8000+Random%3
pos = 15+Ceil(P2BodyDist X),-80-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 420, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = C,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Up
priority = 7,Hit
damage = Ceil(FVar(5)*60),0
pausetime = 13,15
sparkno = -1
guard.sparkno = S8500
sparkxy = -15,-80
hitsound = S213,0+(Random%4)
guardsound = S200,2
ground.type = High      ;Low,Trip,None
air.type = High
ground.slidetime = 20
ground.hittime = 25
air.hittime = 20
yaccel = .5
ground.velocity = -8
air.velocity = Cond(P2Dist X <= 0,1,0),-7
ground.cornerpush.veloff = -10
air.cornerpush.veloff = -10
fall = 0
fall.recover = 0
air.fall = 1
getpower = 50*Var(3),25*Var(3)
givepower = 0,5
forcestand = 1
p2facing = 1
p2sprpriority = -2
hitonce = 1
ID = 420
persistent = 0

[State 420, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(3) > 3
movetype = I        ;I,A,H

[State 420, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && Random < 600
value = S300,6+(Random%3)
channel = 0

[State 420, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S212,0+(Random%2)
channel = 1

[State 420, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 420, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;CROUCHING LIGHT KICK
[StateDef 430]
type = C
movetype = A
physics = C
juggle = 100
anim = 430
velset = 0,0
poweradd = 10*Var(3)
sprpriority = 1
ctrl = 0
facep2 = 1

[State 430, Width]
type = Width
trigger1 = !Time
player = 20,0

[State 430, NotHitBy]
type = NotHitBy
trigger1 = PrevStateNo = 710
trigger1 = !Time
value = SCA
time = 5

[State 430, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(430)
trigger1 = !NumExplod(430)
trigger1 = Target(430),StateType != L
ID = 430
anim = 8000+Random%3
pos = 20+Ceil(P2BodyDist X),-22
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 430, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = C,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MF        ;HLAFD+-
guardflag = L         ;HLA
animtype = Light          ;light,medium,hard,back,up,diagup
air.animtype = Back
fall.animtype = Back
priority = 5,Hit
damage = Ceil(FVar(5)*20),0
pausetime = 9,9
sparkno = -1
guard.sparkno = S8500
sparkxy = -15,-22
hitsound = S230,0
guardsound = S200,2
ground.type = Low      ;Low,Trip,None
air.type = High
ground.slidetime = 6
ground.hittime = 13
air.hittime = 15
yaccel = .5
ground.velocity = -6
air.velocity = -6,0
ground.cornerpush.veloff = -8
air.cornerpush.veloff = -8
fall.recover = 0
air.fall = 1
getpower = 30*Var(3),15*Var(3)
givepower = 0,5
p2facing = 1
hitonce = 1
ID = 430

[State 430, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(4) > 0
movetype = I        ;I,A,H

[State 430, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && Random < 400
value = S300,0+(Random%3)
channel = 0

[State 430, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S230,1
channel = 1

[State 430, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 430, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;CROUCHING MEDIUM KICK
[StateDef 440]
type = C
movetype = A
physics = C
juggle = 100
anim = 440
velset = 0,0
poweradd = 20*Var(3)
sprpriority = 1
ctrl = 0
facep2 = 1

[State 440, Width]
type = Width
trigger1 = AnimElemTime(3) < 0
player = 35,0

[State 440, Width]
type = Width
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
player = 60,0

[State 440, Width]
type = Width
trigger1 = AnimElemTime(4) >= 0
player = 35,0

[State 440, NotHitBy]
type = NotHitBy
trigger1 = PrevStateNo = 710
trigger1 = !Time
value = SCA
time = 5

[State 440, Helper]
type = Helper
trigger1 = AnimElem = 1
name = "Slash"
ID = 440
stateno = 6070
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1

[State 440, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(440)
trigger1 = !NumExplod(440)
trigger1 = Target(440),StateType != L
ID = 440
anim = 8000+Random%3
pos = 30+Ceil(P2BodyDist X),-20
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 440, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = C,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MF        ;HLAFD+-
guardflag = L         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
air.animtype = Medium
fall.animtype = Medium
priority = 6,Hit
damage = Ceil(FVar(5)*40),0
pausetime = 10,10
sparkno = -1
guard.sparkno = S8500
sparkxy = -15,-20
hitsound = S213,0+(Random%4)
guardsound = S200,2
ground.type = Low      ;Low,Trip,None
air.type = Low
ground.slidetime = 20
ground.hittime = 20
air.hittime = 20
yaccel = .5
ground.velocity = -3
air.velocity = -3,-4
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -5
fall = 0
fall.recover = 0
air.fall = 1
getpower = 40*Var(3),20*Var(3)
givepower = 0,5
p2facing = 1
hitonce = 1
ID = 440

[State 440, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(4) > 0
movetype = I        ;I,A,H

[State 440, PlaySnd]
type = PlaySnd
trigger1 = !Time && Random < 800
value = S300,3+(Random%3)
channel = 0

[State 440, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S211,0+(Random%2)
channel = 1

[State 440, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 440, ChangeState]
type = ChangeState
trigger1 = !AILevel
trigger1 = MoveContact
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
trigger1 = Command = "c"
value = 252
ctrl = 0
[State 440, ChangeState]
type = ChangeState
trigger1 = AILevel
trigger1 = Var(59) < (1000*(AILevel**2/64.0))
trigger1 = NumEnemy
trigger1 = EnemyNear,StateType != C
trigger1 = MoveContact
trigger1 = P2BodyDist X >= 60
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
value = 252
ctrl = 0

[State 440, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;CROUCHING HEAVY KICK
[StateDef 450]
type = C
movetype = A
physics = C
juggle = 100
anim = 450
velset = 0,0
poweradd = 30*Var(3)
sprpriority = 1
ctrl = 0
facep2 = 1

[State 450, Width]
type = Width
trigger1 = AnimElemTime(3) < 0
player = 45,0

[State 450, Width]
type = Width
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(10) < 0
player = 65,0

[State 450, Width]
type = Width
trigger1 = AnimElemTime(10) >= 0
player = 35,0

[State 450, NotHitBy]
type = NotHitBy
trigger1 = PrevStateNo = 710
trigger1 = !Time
value = SCA
time = 5

[State 450, Helper]
type = Helper
trigger1 = AnimElemTime(1) = 2
name = "Slash"
ID = 450
stateno = 6070
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1

[State 450, Helper]
type = Helper
trigger1 = AnimElem = 8
name = "Slash"
ID = 440
stateno = 6070
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1

[State 450, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(450)
trigger1 = !NumExplod(450)
trigger1 = Target(450),StateType != L
ID = 450
anim = 8000+Random%3
pos = 20+Ceil(P2BodyDist X),-22
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 450, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(451)
trigger1 = !NumExplod(451)
trigger1 = Target(451),StateType != L
ID = 451
anim = 8000+Random%3
pos = 20+Ceil(P2BodyDist X),-20
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 450, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = C,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = L         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
air.animtype = Medium
fall.animtype = Medium
priority = 7,Hit
damage = Ceil(FVar(5)*60),0
pausetime = 5,5
sparkno = -1
guard.sparkno = S8500
sparkxy = -15,0
hitsound = S213,0+(Random%4)
guardsound = S200,2
ground.type = Low      ;Low,Trip,None
air.type = Low
ground.slidetime = 20
ground.hittime = 20
guard.hittime = 20
air.hittime = 20
yaccel = .5
ground.velocity = -2
air.velocity = -2,-4
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -5
fall = 0
fall.recover = 0
air.fall = 1
getpower = 50*Var(3),25*Var(3)
givepower = 0,5
p2facing = 1
hitonce = 1
ID = 450
[State 450, HitDef]
type = HitDef
trigger1 = AnimElem = 9
attr = C,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = L         ;HLA
animtype = Hard          ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 7,Hit
damage = Ceil(FVar(5)*60),0
pausetime = 12,12
sparkno = -1
guard.sparkno = S8500
sparkxy = -15,0
hitsound = S213,0+(Random%4)
guardsound = S200,2
ground.type = Trip      ;Low,Trip,None
air.type = Trip
ground.slidetime = 20
ground.hittime = 20
guard.hittime = 20
air.hittime = 20
yaccel = .5
ground.velocity = -2,-7
air.velocity = -2,-7
ground.cornerpush.veloff = -5
air.cornerpush.veloff = -5
fall = 1
fall.recover = 0
air.fall = 1
down.velocity = -4,-6
getpower = 50*Var(3),25*Var(3)
givepower = 0,5
p2facing = 1
hitonce = 1
ID = 451

[State 450, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(10) > 0
movetype = I        ;I,A,H

[State 450, VelSet]
type = VelSet
trigger1 = AnimElem = 2
trigger2 = AnimElem = 7
x = 8

[State 450, VelSet]
type = VelSet
trigger1 = AnimElem = 3
trigger2 = AnimElem = 9
x = 0

[State 450, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && Random < 100
value = S300,6+(Random%3)
channel = 0

[State 450, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 8
value = S212,0+(Random%2)
channel = 1

[State 450, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 450, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;JUMP LIGHT PUNCH
[StateDef 600]
type = A
movetype = A
physics = A
juggle = 100
anim = 600
poweradd = 10
sprpriority = 1
ctrl = 0

;[State 600, ChangeState]
;type = ChangeState
;trigger1 = !AILevel
;value = 4200
;ctrl = 0

[State 600, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(600)
trigger1 = !NumExplod(600)
trigger1 = Target(600),StateType != L
ID = 600
anim = 8000+Random%3
pos = 30+Ceil(P2BodyDist X),-50
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 600, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = A,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = H         ;HLA
animtype = Light          ;light,medium,hard,back,up,diagup
air.animtype = Light
fall.animtype = Light
priority = 5,Hit
damage = Ceil(FVar(5)*20),0
pausetime = 8,8
sparkno = -1
guard.sparkno = S8500
sparkxy = -15,-50
hitsound = S200,0
guardsound = S200,2
ground.type = High      ;Low,Trip,None
air.type = Low
ground.slidetime = 9
ground.hittime = 12
air.hittime = 12
yaccel = .5
ground.velocity = -2
air.velocity = 0,0
ground.cornerpush.veloff = -2
air.cornerpush.veloff = -2
fall.recover = 0
air.fall = 1
getpower = 30*Var(3),15*Var(3)
givepower = 0,5
p2sprpriority = -5
p2facing = 1
hitonce = 1
ID = 600
persistent = 0

[State 600, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(4) > 0
movetype = I        ;I,A,H

[State 600, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && Random < 500
value = S300,0+(Random%3)
channel = 0

[State 600, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S200,1
channel = 1

[State 600, StopSnd]
type = StopSnd
trigger1 = !Time
channel = 0
ignorehitpause = 1
persistent = 0

[State 600, CtrlSet]
type = CtrlSet
trigger1 = AnimElem = 4
value = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;JUMP MEDIUM PUNCH
[StateDef 610]
type = A
movetype = A
physics = A
juggle = 100
anim = 610
poweradd = 20*Var(3)
sprpriority = 1
ctrl = 0

;[State 610, ChangeState]
;type = ChangeState
;trigger1 = !AILevel
;value = 4200
;ctrl = 0

[State 610, Helper]
type = Helper
trigger1 = AnimElem = 2
name = "Slash"
ID = 610
stateno = 6071
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1

[State 610, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(610)
trigger1 = !NumExplod(610)
trigger1 = Target(610),StateType != L
ID = 610
anim = 8000+Random%3
pos = 25+Ceil(P2BodyDist X),-60-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 610, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = A,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = H         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
air.animtype = Medium
fall.animtype = Medium
priority = 6,Hit
damage = Ceil(FVar(5)*40),0
pausetime = 10,10
sparkno = -1
guard.sparkno = S8500
sparkxy = -15,-50
hitsound = S213,0+(Random%4)
guardsound = S200,2
ground.type = High      ;Low,Trip,None
air.type = Low
ground.slidetime = 17
ground.hittime = 17
air.hittime = 17
yaccel = .5
ground.velocity = -4
air.velocity = 0,0
ground.cornerpush.veloff = -2
air.cornerpush.veloff = -2
fall.recover = 0
air.fall = 1
getpower = 40*Var(3),20*Var(3)
givepower = 0,5
p2sprpriority = -5
p2facing = 1
hitonce = 1
ID = 610

[State 610, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5) > 0
movetype = I        ;I,A,H

[State 610, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && Random < 500
value = S300,3+(Random%3)
channel = 0

[State 610, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S211,0+(Random%2)
channel = 1

[State 610, StopSnd]
type = StopSnd
trigger1 = !Time
channel = 0
ignorehitpause = 1
persistent = 0

[State 610, CtrlSet]
type = CtrlSet
trigger1 = AnimElem = 5
value = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;JUMP HEAVY PUNCH
[StateDef 620]
type = A
movetype = A
physics = A
juggle = 100
anim = 620
poweradd = 30*Var(3)
sprpriority = 1
ctrl = 0

;[State 620, ChangeState]
;type = ChangeState
;trigger1 = !AILevel
;value = 4200
;ctrl = 0

[State 620, Helper]
type = Helper
trigger1 = AnimElem = 2
name = "Slash"
ID = 620
stateno = 6070
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1

[State 620, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(620)
trigger1 = !NumExplod(620)
trigger1 = Target(620),StateType != L
ID = 620
anim = 8000+Random%3
pos = 30+Ceil(P2BodyDist X),-40
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 620, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = A,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = H         ;HLA
animtype = Hard          ;light,medium,hard,back,up,diagup
air.animtype = Back
fall.animtype = Back
priority = 7,Hit
damage = Ceil(FVar(5)*60),0
pausetime = 11,11
sparkno = -1
guard.sparkno = S8500
sparkxy = -15,-50
hitsound = S213,0+(Random%4)
guardsound = S200,2
ground.type = High      ;Low,Trip,None
air.type = High
ground.slidetime = 11
ground.hittime = 16
air.hittime = 16
ground.velocity = -6
air.velocity = -6,0
ground.cornerpush.veloff = -2
air.cornerpush.veloff = -2
fall.recover = 0
air.fall = 1
getpower = 50*Var(3),25*Var(3)
givepower = 0,5
p2sprpriority = -5
p2facing = 1
hitonce = 1
ID = 620

[State 620, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(4) > 0
movetype = I        ;I,A,H

[State 620, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && Random < 300
value = S300,6+(Random%3)
channel = 0

[State 620, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S212,0+(Random%2)
channel = 1

[State 620, StopSnd]
type = StopSnd
trigger1 = !Time
channel = 0
ignorehitpause = 1
persistent = 0

[State 620, CtrlSet]
type = CtrlSet
trigger1 = AnimElem = 4
value = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;JUMP LIGHT KICK
[StateDef 630]
type = A
movetype = A
physics = A
juggle = 100
anim = Cond(Vel X,631,630)
poweradd = 10*Var(3)
sprpriority = 1
ctrl = 0

;[State 630, ChangeState]
;type = ChangeState
;trigger1 = !AILevel
;value = 4200
;ctrl = 0

[State 630, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(630)
trigger1 = !NumExplod(630)
trigger1 = Target(630),StateType != L
ID = 630
anim = 8000+Random%3
pos = 25+Ceil(P2BodyDist X),-80+Ceil(P2Dist Y/2)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 630, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(631)
trigger1 = !NumExplod(631)
trigger1 = Target(631),StateType != L
ID = 631
anim = 8000+Random%3
pos = Ceil(P2Dist X),-45
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 630, HitDef]
type = HitDef
trigger1 = Anim = 630 && AnimElem = 2
attr = A,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = H         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = Up
fall.animtype = Up
priority = 5,Hit
damage = Ceil(FVar(5)*20),0
pausetime = 8,8
sparkno = -1
guard.sparkno = S8500
sparkxy = -15,-50
hitsound = S230,0
guardsound = S200,2
ground.type = High      ;Low,Trip,None
ground.slidetime = 9
ground.hittime = 13
air.hittime = 13
yaccel = .5
ground.velocity = -2,-10
air.velocity = 0,-10
ground.cornerpush.veloff = -2
air.cornerpush.veloff = -2
fall = 1
fall.recover = 0
air.fall = 1
getpower = 30*Var(3),15*Var(3)
givepower = 0,5
p2sprpriority = -5
p2facing = 1
hitonce = 1
ID = 630

[State 630, HitDef]
type = HitDef
trigger1 = Anim = 631
attr = A,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = H         ;HLA
animtype = light          ;light,medium,hard,back,up,diagup
air.animtype = Back
fall.animtype = Back
priority = 5,Hit
damage = Ceil(FVar(5)*20),0
pausetime = 8,8
sparkno = -1
guard.sparkno = S8500
sparkxy = -15,-50
hitsound = S230,0
guardsound = S200,2
ground.type = High      ;Low,Trip,None
ground.slidetime = 12
ground.hittime = 12
air.hittime = 12
yaccel = .5
ground.velocity = -4
air.velocity = 0,-2
ground.cornerpush.veloff = -2
air.cornerpush.veloff = -2
fall.recover = 0
air.fall = 1
getpower = 30*Var(3),15*Var(3)
givepower = 0,5
p2sprpriority = -5
p2facing = 1
hitonce = 1
ID = 631
persistent = 0

[State 630, StateTypeSet]
type = StateTypeSet
trigger1 = Anim = 630
trigger1 = AnimElemTime(4) > 0
movetype = I        ;I,A,H

[State 630, StateTypeSet]
type = StateTypeSet
trigger1 = Anim = 631
trigger1 = AnimElemTime(13) > 0
movetype = I        ;I,A,H

[State 630, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && Random < 500
value = S300,0+(Random%3)
channel = 0

[State 630, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S230,1
channel = 1

[State 630, StopSnd]
type = StopSnd
trigger1 = !Time
channel = 0
ignorehitpause = 1
persistent = 0

[State 630, CtrlSet]
type = CtrlSet
trigger1 = AnimElem = 6
value = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;JUMP MEDIUM KICK
[StateDef 640]
type = A
movetype = A
physics = A
juggle = 100
anim = 640
poweradd = 20*Var(3)
sprpriority = 1
ctrl = 0

;[State 640, ChangeState]
;type = ChangeState
;trigger1 = !AILevel
;value = 3400
;ctrl = 0

[State 640, Helper]
type = Helper
trigger1 = AnimElem = 1
name = "Slash"
ID = 640
stateno = 6070
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1

[State 640, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(640)
trigger1 = !NumExplod(640)
trigger1 = Target(640),StateType != L
ID = 640
anim = 8000+Random%3
pos = 30+Ceil(P2BodyDist X),-40
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 640, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = A,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = H         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
air.animtype = Medium
priority = 6,Hit
damage = Ceil(FVar(5)*40),0
pausetime = 10,10
sparkno = -1
guard.sparkno = S8500
sparkxy = -15,-60
hitsound = S213,0+(Random%4)
guardsound = S200,2
ground.type = High      ;Low,Trip,None
air.type = Low
ground.slidetime = 18
ground.hittime = 18
air.hittime = 18
yaccel = .5
ground.velocity = -4
air.velocity = -4,-2
ground.cornerpush.veloff = -2
air.cornerpush.veloff = -2
fall.recover = 0
air.fall = 1
getpower = 40*Var(3),20*Var(3)
givepower = 0,5
p2sprpriority = -5
p2facing = 1
hitonce = 1
ID = 640

[State 640, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(3) > 0
movetype = I        ;I,A,H

[State 640, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2 && Random < 400
value = S300,3+(Random%3)
channel = 0

[State 640, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S211,0+(Random%2)
channel = 1

[State 640, StopSnd]
type = StopSnd
trigger1 = !Time
channel = 0
ignorehitpause = 1
persistent = 0

[State 640, CtrlSet]
type = CtrlSet
trigger1 = AnimElem = 5
value = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;JUMP HEAVY KICK
[StateDef 650]
type = A
movetype = A
physics = A
juggle = 100
anim = 650
poweradd = 30*Var(3)
sprpriority = 1
ctrl = 0

;[State 650, ChangeState]
;type = ChangeState
;trigger1 = !AILevel
;value = 3400
;ctrl = 0

[State 650, Helper]
type = Helper
trigger1 = AnimElem = 2
name = "Slash"
ID = 650
stateno = 6070
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1

[State 650, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(650)
trigger1 = !NumExplod(650)
trigger1 = Target(650),StateType != L
ID = 650
anim = 8000+Random%3
pos = 30+Ceil(P2BodyDist X),-59
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 650, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = A,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = H         ;HLA
animtype = Hard        ;light,medium,hard,back,up,diagup
air.animtype = Hard
priority = 7,Hit
damage = Ceil(FVar(5)*60),0
pausetime = 11,11
sparkno = -1
guard.sparkno = S8500
sparkxy = -15,-60
hitsound = S213,0+(Random%4)
guardsound = S200,2
ground.type = High      ;Low,Trip,None
air.type = Low
ground.slidetime = 12
ground.hittime = 20
air.hittime = 20
yaccel = .5
ground.velocity = -6
air.velocity = -6,-4
ground.cornerpush.veloff = -2
air.cornerpush.veloff = -2
fall.recover = 0
air.fall = 1
getpower = 50*Var(3),25*Var(3)
givepower = 0,5
p2sprpriority = -5
p2facing = 1
hitonce = 1
ID = 650

[State 650, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5) > 0
movetype = I        ;I,A,H

[State 650, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1 && Random < 500
value = S300,6+(Random%3)
channel = 0

[State 650, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S212,0+(Random%2)
channel = 1

[State 650, StopSnd]
type = StopSnd
trigger1 = !Time
channel = 0
ignorehitpause = 1
persistent = 0

[State 650, CtrlSet]
type = CtrlSet
trigger1 = AnimElem = 8
value = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;POWER CHARGE
[StateDef 740]
type = S
physics = S
MoveType = I
anim = 740
ctrl = 0
velset = 0,0
sprpriority = 1

[State 740, EnvShake]
type = EnvShake
trigger1 = Anim = 740 && !(Time%4)
time = 4
freq = 80
ampl = 2

[State 740, PowerAdd]
type = PowerAdd
trigger1 = Power < Const(Data.Power) && Power < PowerMax
trigger1 = Command = "holdc" && Command = "holdz" || AILevel
value = 2+Cond(Time < 60,0,(Time-60)/10)

[State 740, PlaySnd]
type = PlaySnd
trigger1 = NumHelper(7500)
value = S740,0
channel = 2
lowpriority = 1
persistent = 0

[State 740, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S740,1
channel = 0

[State 740, PalFX]
type = PalFX
trigger1 = 1
time = 1
add = 0,25+Ceil(Sin(Time/6*Pi)*75),75+Ceil(Sin(Time/6*Pi)*25)

[State 740, Helper]
type = Helper
trigger1 = !NumHelper(7500)
name = "Power Charge FX"
ID = 7500
StateNo = 7500
postype = P1    ;p2,front,back,left,right
ownpal = 1
size.xscale = 1
size.yscale = .6
supermovetime = 0
pausemovetime = 0
persistent = 0

[State 740, ChangeState]
type = ChangeState
triggerall = !AILevel
triggerall = AnimElemTime(3) > 0
triggerall = !(Enemy,AuthorName = "Burn" && (Enemy,StateNo = 740 || Enemy,StateNo = 742))
trigger1 = Power >= Const(Data.Power) || Power >= PowerMax || RoundState != 2
trigger2 = Command != "holdc" && Command != "holdz"
value = 741
ctrl = 0

[State 740, ChangeState]
type = ChangeState
triggerall = AILevel
triggerall = AnimElemTime(3) > 0
triggerall = !(Power < Const(Data.Power) && Enemy,AuthorName = "Burn" && (Enemy,StateNo = 740 || Enemy,StateNo = 742))
trigger1 = Power >= Const(Data.Power) || Power >= PowerMax || RoundState != 2
trigger2 = Abs(P2BodyDist X) <= 100
trigger3 = NumEnemy
trigger3 = EnemyNear,NumProj
trigger4 = PlayerIdExist(Helper(33333333),Var(23))
value = 741
ctrl = 0

[State 740, ChangeState]
type = ChangeState
triggerall = !(TeamMode = Simul) && !(Enemy,TeamMode = Simul)
triggerall = NumEnemy
triggerall = Enemy,StateNo = 740 || Enemy,StateNo = 742
trigger1 = Enemy,AuthorName = "Burn" && Enemy,Name = "Guile"
trigger2 = Enemy,AuthorName = "Burn" && Enemy,Name = "Ken"
trigger3 = Enemy,AuthorName = "Burn" && Enemy,Name = "Ryu"
value = 742
ctrl = 0

;--------------------------------------------------------------------------------------------------------------------------------------------
;POWER CHARGE END
[StateDef 741]
type = S
physics = S
MoveType = I
anim = 741
velset = 0,0

[State 741, StopSnd]
type = StopSnd
trigger1 = !Time
channel = 0

[State 741, StopSnd]
type = StopSnd
trigger1 = !Time
channel = 2

[State 741, PlaySnd]
type = PlaySnd
trigger1 = Power >= Const(Data.Power)
trigger1 = !Time
value = S740,2
channel = 0

[State 741, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;POWER CLASH
[StateDef 742]
type = S
physics = S
movetype = I
anim = 742
velset = 0,0
facep2 = 1
sprpriority = 1

[State 742, VarSet]
type = VarSet
trigger1 = !Time
fvar(13) = .8

[State 742, ChangeAnim]
type = ChangeAnim
trigger1 = NumEnemy
trigger1 = EnemyNear,Name = "Ken"
trigger1 = !Time
value = 743

[State 742, SprPriority]
type = SprPriority
trigger1 = Anim = 743
value = 2

[State 742, SprPriority]
type = SprPriority
trigger1 = Anim = 744
value = -1

[State 742, ChangeAnim]
type = ChangeAnim
trigger1 = NumEnemy
trigger1 = EnemyNear,Name = "Ryu"
trigger1 = !Time
value = 744

[State 742, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 742
trigger1 = AnimElem = 10
trigger1 = NumEnemy
trigger1 = AnimElemTime(10) = 0 && !(Enemy,AnimElemTime(10) = 0)
value = 742
elem = 10
persistent = 0
[State 742, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 742
trigger1 = AnimElem = 12
trigger1 = NumEnemy
trigger1 = AnimElemTime(12) = 0 && !(Enemy,AnimElemTime(12) = 0)
value = 742
elem = 12
persistent = 0

[State 742, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 743
trigger1 = AnimElem = 10
trigger1 = NumEnemy
trigger1 = AnimElemTime(10) = 0 && !(Enemy,AnimElemTime(10) = 0)
value = 743
elem = 10
persistent = 0
[State 742, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 743
trigger1 = AnimElem = 12
trigger1 = NumEnemy
trigger1 = AnimElemTime(12) = 0 && !(Enemy,AnimElemTime(12) = 0)
value = 743
elem = 12
persistent = 0

[State 742, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 744
trigger1 = AnimElem = 1
trigger1 = NumEnemy
trigger1 = AnimElemTime(1) = 0 && !(Enemy,AnimElemTime(1) = 0)
value = 744
elem = 1
persistent = 0
[State 742, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 744
trigger1 = AnimElem = 11
trigger1 = NumEnemy
trigger1 = AnimElemTime(2) = 0 && !(Enemy,AnimElemTime(2) = 0)
value = 744
elem = 2
persistent = 0

[State 742, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 742, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 742, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1
persistent = 1

[State 742, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(9) >= 1 && AnimElemTime(10) < 0
flag = Invisible

[State 742, Explod]
type = Explod
trigger1 = AnimElem = 9
ID = 7285
anim = 7285
pos = 0,-60
postype = P1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .4,.3
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 742, Explod]
type = Explod
trigger1 = Anim = 742 || Anim = 743
trigger1 = AnimElem = 10
ID = 7285
anim = 7285
pos = 20,-60
postype = P1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .4,.3
sprpriority = 3
ownpal = 1
ignorehitpause = 1
[State 742, Explod]
type = Explod
trigger1 = Anim = 744
trigger1 = AnimElem = 10
ID = 7285
anim = 7285
pos = 50,-55
postype = P1  ;p2,front,back,left,right
bindtime = -1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .4,.3
sprpriority = 3
ownpal = 1
ignorehitpause = 1

;Vs Guile

[State 742, Explod]
type = Explod
trigger1 = Anim = 742 && AnimElem = 11
ID = 6070
anim = 6070
postype = P1  ;p2,front,back,left,right
pos = 50,-78
bindtime = 5
vfacing = -1
supermovetime = 0
pausemovetime = 0
scale = .8,.7
sprpriority = 4
ownpal = 1
removeongethit = 1
ignorehitpause = 1
[State 742, Explod]
type = Explod
trigger1 = Anim = 742
trigger1 = AnimElemTime(12) = 0
ID = 6041
anim = 6041
pos = 95,-78
postype = P1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .5,.5
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 742, Explod]
type = Explod
trigger1 = Anim = 742
trigger1 = AnimElemTime(12) >= 0
trigger1 = Time%7 = 0
ID = 6860
anim = 6860
pos = -80,0
postype = P1
vel = 5,0
bindtime = 1
removetime = -2
scale = .5,.5
sprpriority = 8
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[State 742, Explod]
type = Explod
trigger1 = Anim = 742
trigger1 = AnimElemTime(12) = 15
ID = 7550
anim = 7550
postype = P1  ;p2,front,back,left,right
pos = 50,0
bindtime = 1
supermovetime = 900
pausemovetime = 900
scale = 1,1
sprpriority = 6
ownpal = 1
[State 742, Explod]
type = Explod
trigger1 = Anim = 742
trigger1 = AnimElemTime(12) = 19
ID = 7776
anim = 7776
postype = P1  ;p2,front,back,left,right
pos = 0,0
bindtime = 1
removetime = -2
supermovetime = 900
pausemovetime = 900
scale = 500,500
sprpriority = 10
ownpal = 1

[State 742, EnvShake]
type = EnvShake
trigger1 = Anim = 742
trigger1 = AnimElemTime(12) >= 0
time = 20

[State 742, Pause]
type = Pause
trigger1 = Anim = 742
trigger1 = AnimElemTime(12) >= 0
trigger1 = Time%2 = 0
time = 2
movetime = 0
pausebg = 1
ignorehitpause = 1

;Vs Ken

[State 742, Helper]
type = Helper
trigger1 = Anim = 743
trigger1 = AnimElemTime(11) = 0
name = "Slash"
ID = 240
stateno = 6070
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 900
ignorehitpause = 1

[State 742, Explod]
type = Explod
trigger1 = Anim = 743
trigger1 = AnimElemTime(12) = 0
ID = 6041
anim = 6041
pos = 50,-90
postype = P1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .5,.5
sprpriority = 3
ownpal = 1
ignorehitpause = 1
[State 742, Explod]
type = Explod
trigger1 = Anim = 743
trigger1 = AnimElemTime(12) = 15
ID = 7550
anim = 7550
postype = P1  ;p2,front,back,left,right
pos = 50,0
bindtime = 1
supermovetime = 900
pausemovetime = 900
scale = 1,1
sprpriority = 6
ownpal = 1
[State 742, Explod]
type = Explod
trigger1 = Anim = 743
trigger1 = AnimElemTime(12) = 19
ID = 7776
anim = 7776
postype = P1  ;p2,front,back,left,right
pos = 0,0
bindtime = 1
removetime = -2
supermovetime = 900
pausemovetime = 900
scale = 500,500
sprpriority = 10
ownpal = 1

[State 742, EnvShake]
type = EnvShake
trigger1 = Anim = 743
trigger1 = AnimElemTime(12) >= 0
time = 20

[State 742, Pause]
type = Pause
trigger1 = Anim = 743
trigger1 = Time%2 = 0
trigger1 = AnimElemTime(12) >= 0
time = 2
movetime = 0
pausebg = 1
ignorehitpause = 1

;Vs Ryu

[State 742, Explod]
type = Explod
trigger1 = Anim = 744
trigger1 = AnimElemTime(10) = 1
ID = 7009
anim = 7009
postype = P1
pos = 20,15
bindtime = 1
removetime = -2
sprpriority = 4
scale = .3,.3
ownpal = 1
[State 742, Explod]
type = Explod
trigger1 = Anim = 744
trigger1 = AnimElemTime(10) = 1
ID = 6090
anim = 6090
pos = 0,25
postype = P1
bindtime = 1
removetime = -2
scale = .35,.35
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
[State 1300, Explod]
type = Explod
trigger1 = Anim = 744
trigger1 = AnimElemTime(10) = 0
ID = 6721
anim = 6721
postype = P1
pos = 0,-65
facing = 1
removetime = -2
bindtime = 1
pausemovetime = 900
supermovetime = 0
removeongethit = 0
scale = 1.5,.5
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 742, Explod]
type = Explod
trigger1 = Anim = 744
trigger1 = AnimElemTime(12) = 0
ID = 6041
anim = 6041
pos = 100,-55
postype = P1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .5,.5
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 742, Explod]
type = Explod
trigger1 = Anim = 744
trigger1 = AnimElemTime(19) = 2
ID = 7550
anim = 7550
postype = P1  ;p2,front,back,left,right
pos = 50,15
bindtime = 1
supermovetime = 900
pausemovetime = 900
scale = 1,1
sprpriority = 6
ownpal = 1
[State 742, Explod]
type = Explod
trigger1 = Anim = 744
trigger1 = AnimElemTime(20) = 2
ID = 7776
anim = 7776
postype = P1  ;p2,front,back,left,right
pos = 0,0
bindtime = 1
removetime = -2
supermovetime = 900
pausemovetime = 900
scale = 500,500
sprpriority = 10
ownpal = 1

[State 742, EnvShake]
type = EnvShake
trigger1 = Anim = 744
trigger1 = AnimElemTime(10) >= 0
time = 20

[State 742, Pause]
type = Pause
trigger1 = Anim = 744
trigger1 = Time%2 = 0
trigger1 = AnimElemTime(12) >= 10
time = 3
movetime = 0
pausebg = 1
ignorehitpause = 1

[State 742, VelSet]
type = VelSet
trigger1 = Anim = 744
trigger1 = AnimElemTime(10) = 0
x = 50
[State 742, VelSet]
type = VelSet
trigger1 = Anim = 744
trigger1 = AnimElemTime(12) = 0
x = 0

[State 742, Pause]
type = Pause
trigger1 = Anim = 744
trigger1 = AnimElemTime(12) >= 0
trigger1 = Time%2 = 0
time = 3
movetime = 0
pausebg = 1
ignorehitpause = 1

;Default

[State 742, PowerAdd]
type = PowerAdd
trigger1 = !Time
value = Const(Data.Power)
ignorehitpause = 1

[State 742, PosSet]
type = PosSet
trigger1 = AnimElemTime(10) = 0
x = 0
ignorehitpause = 1

[State 742, PosAdd]
type = PosAdd
trigger1 = Anim = 742
trigger1 = AnimElemTime(10) = 0
x = -97
ignorehitpause = 1

[State 742, PosAdd]
type = PosAdd
trigger1 = Anim = 743
trigger1 = AnimElemTime(10) = 0
x = -60;-70
ignorehitpause = 1

[State 742, PosAdd]
type = PosAdd
trigger1 = Anim = 744
trigger1 = AnimElemTime(10) = 0
x = -220
y = -15
ignorehitpause = 1
[State 742, PosAdd]
type = PosAdd
trigger1 = Anim = 744
trigger1 = AnimElemTime(12) = 0
x = (P2BodyDist X)-100
ignorehitpause = 1

[State 742, Explod]
type = Explod
trigger1 = Time < 3
trigger1 = !NumExplod(7340)
ID = 7340
anim = 7340
pos = 0,1
postype = P1  ;p2,front,back,left,right
bindtime = -1
removetime = 33
supermovetime = 0
pausemovetime = 900
scale = 1,1
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1
persistent = 0

[State 742, ModifyExplod]
type = ModifyExplod
trigger1 = NumExplod(7340)
ID = 7340
scale = 1+(.04*(Time)),1+(.04*(Time))
trans = AddAlpha
alpha = Ceil(256-5*(Time)),256

[State 742, Helper]
type = Helper
trigger1 = AnimElem = 9
name = "Afterimage"
ID = 749
stateno = 749
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 900
supermovetime = 900

[State 742, Helper]
type = Helper
triggerall = !NumHelper(9501) && Abs(P2Dist Y) < 140
trigger1 = NumEnemy
trigger1 = !EnemyNear,NumHelper(9501)
trigger1 = Anim = 742
trigger1 = AnimElem = 10
;trigger2 = Anim = 743
;trigger2 = AnimElem = 10
ID = 9501
stateno = 9501
name = "ZoomHelper"
facing = 1
postype = P1
supermovetime = 999
pausemovetime = 999
size.xscale = Const(Size.XScale)
size.yscale = Const(Size.YScale)
size.proj.doscale = ID; Give Parent ID to Child
size.shadowoffset = 45
persistent = 0

[State 742, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S740,2
channel = 0

[State 742, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S3002,2
channel = -1

[State 742, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 9
value = S3100,4
channel = -1
persistent = 0

[State 742, PlaySnd]
type = PlaySnd
trigger1 = Anim = 742
trigger1 = AnimElem = 11
value = S742,0
channel = -1
[State 742, PlaySnd]
type = PlaySnd
trigger1 = Anim = 742
trigger1 = AnimElem = 11
value = S742,1
channel = -1

[State 742, PlaySnd]
type = PlaySnd
trigger1 = Anim = 743
trigger1 = AnimElem = 12
value = S742,1
channel = -1

[State 742, PlaySnd]
type = PlaySnd
trigger1 = Anim = 744
trigger1 = AnimElem = 10
value = S1000,2
channel = -1
[State 742, PlaySnd]
type = PlaySnd
trigger1 = Anim = 744
trigger1 = AnimElem = 12
value = S742,0
channel = -1
[State 742, PlaySnd]
type = PlaySnd
trigger1 = Anim = 744
trigger1 = AnimElem = 12
value = S742,1
channel = -1

[State 742, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 105
ctrl = 0

;--------------------------------------------------------------------------------------------------------------------------------------------
;POWER CLASH AFTERIMAGE
[StateDef 749]
type = S
physics = N
movetype = I
anim = 749
ctrl = 0
velset = 0,0
sprpriority = -1

[State 749, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 749, Trans]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256-(Time*16),Time*16

[State 749, DestroySelf]
type = DestroySelf
trigger1 = Time >= 16

;--------------------------------------------------------------------------------------------------------------------------------------------
;THROW ATTEMPT
[StateDef 800]
type = S
physics = S
movetype = A
anim = 800
ctrl = 0
velset = 0,0
sprpriority = 1
poweradd = 10
facep2 = 1

[State 800, AttackDist]
type = AttackDist
trigger1 = 1
value = 0

;[State 800, VarSet]
;type = VarSet
;trigger1 = !AILevel
;trigger1 = !Time
;var(5) = Cond(Command = "holdback",2,Cond(Command = "holdfwd",1,0))

[State 800, VarSet]
type = VarSet
trigger1 = !AILevel
trigger1 = !Time
var(5) = Cond(Command = "holdback",2,1)

;[State 800, VarSet]
;type = VarSet
;trigger1 = AILevel
;trigger1 = !Time
;var(5) = Cond(BackEdgeDist <= 50,2,0+Random%2)

[State 800, VarSet]
type = VarSet
trigger1 = AILevel
trigger1 = !Time
var(5) = Cond(BackEdgeDist <= 50,2,1)

[State 800, NotHitBy]
type = NotHitBy
trigger1 = PrevStateNo = 710
trigger1 = !Time
value = SCA
time = 5

[State 800, HitDef]
type = HitDef
trigger1 = AnimelemTime(2) < 0
trigger1 = P2MoveType != H
trigger1 = P2StateNo != [150,155]
attr = S,NT        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = M-        ;HLAFD+-
priority = 6,Miss
hitsound = -1
yaccel = .5
p1facing = 1
p2facing = Cond(Var(5) < 2,1,-1)
numhits = 0
getpower = 0
givepower = 0
ID = 800
nochainID = 800

[State 800, TargetState]
type = TargetState
trigger1 = NumTarget(800)
trigger1 = !MoveGuarded
trigger1 = Target(800),StateType != L
trigger1 = Target(800),StateType != A
value = Cond(Var(5) = 2,821,811)
ID = 800
ignorehitpause = 1
persistent = 0

[State 800, ChangeState]
type = ChangeState
trigger1 = NumTarget(800)
trigger1 = !MoveGuarded
trigger1 = Target(800),StateType != L
trigger1 = Target(800),StateType != A
value = Cond(Var(5) = 2,820,810)
ignorehitpause = 1
persistent = 0

[State 800, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S800,2+Random%2
channel = 0

[State 800, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 800, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(2) >= 0
movetype = I        ;I,A,H

[State 800, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;JUDO THROW - PLAYER
[StateDef 810]
type = S
movetype = A
physics = N
anim = 810
ctrl = 0
sprpriority = 1

[State 810, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 810, SprPriority]
type = SprPriority
trigger1 = AnimElem = 2
value = -2

[State 810, SprPriority]
type = SprPriority
trigger1 = AnimElem = 5
value = 1

[State 810, SprPriority]
type = SprPriority
trigger1 = AnimElem = 7
value = -2

[State 810, SprPriority]
type = SprPriority
trigger1 = AnimElem = 8
value = 1

[State 810, PosAdd]
type = PosAdd
trigger1 = FrontEdgeBodyDist < 120
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(10) < 0
x = -7

[State 810, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 810, PowerAdd]
type = PowerAdd
trigger1 = AnimElem = 10
value = 50

[State 810, TargetDrop]
type = TargetDrop
trigger1 = 1
excludeID = 800
keepone = 1

[State 810, TargetState]
type = TargetState
trigger1 = NumTarget(800)
trigger1 = !Time
value = 811
ID = 800

[State 810, TargetBind]
type = TargetBind
trigger1 = NumTarget(800)
trigger1 = AnimElem = 1
time = -1
pos = 34,0
ID = 800

[State 810, BindToTarget]
type = BindToTarget
trigger1 = NumTarget(800)
trigger1 = AnimElem = 2
time = -1
pos = 20,0,Foot
ID = 800

[State 810, BindToTarget]
type = BindToTarget
trigger1 = NumTarget(800)
trigger1 = AnimElem = 3
time = -1
pos = -1,0,Foot
ID = 800

[State 810, BindToTarget]
type = BindToTarget
trigger1 = NumTarget(800)
trigger1 = AnimElem = 4
time = -1
pos = -25,0,Foot
ID = 800

[State 810, BindToTarget]
type = BindToTarget
trigger1 = NumTarget(800)
trigger1 = AnimElem = 5
time = -1
pos = -35,0,Foot
ID = 800

[State 810, TargetBind]
type = TargetBind
trigger1 = NumTarget(800)
trigger1 = AnimElem = 6
time = -1
pos = -40,-60
ID = 800

[State 810, TargetBind]
type = TargetBind
trigger1 = NumTarget(800)
trigger1 = AnimElem = 7
time = -1
pos = -10,-102
ID = 800

[State 810, TargetBind]
type = TargetBind
trigger1 = NumTarget(800)
trigger1 = AnimElem = 8
time = 1
pos = 60,-102
ID = 800
persistent = 0

[State 810, TargetBind]
type = TargetBind
trigger1 = NumTarget(800)
trigger1 = AnimElemTime(9) = 0
time = 1
pos = 90,-102
ID = 800

[State 810, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget(800)
trigger1 = AnimElem = 10
value = 36
ID = 800

[State 810, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S800,0
channel = -1

[State 810, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 7
value = S300,6
channel = 0

[State 810, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 7
value = S220,1
channel = 1

[State 810, VarSet]
type = VarSet
trigger1 = Time = 0
var(34) = 0

[State 810, VarSet]
type = VarSet
triggerall = NumTarget(800)
triggerall = Time <= 8
trigger1 = Target(800),Command = "holdfwd" || Target(800),Command = "holdback"
trigger1 = Target(800),Command = "c"
trigger2 = Target(800),Command = "holdfwd" || Target(800),Command = "holdback"
trigger2 = Target(800),Command = "z"
trigger3 = Target(800),Command = "a" && Target(800),Command = "x"
var(34) = 1

[State 810, TargetState]
type = TargetState
trigger1 = NumTarget(800)
trigger1 = Var(34) = 1
trigger1 = Time = 11
value = 895

[State 810, ChangeState]
type = ChangeState
trigger1 = NumTarget(800)
trigger1 = Target(800),Stateno = 895
value = 890

[State 810, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;JUDO THROW - TARGET 1
[StateDef 811]
type = A
movetype = H
physics = N
sprpriority = -2

[State 811, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 811

[State 811, ScreenBound]
type = ScreenBound
trigger1 = 1
movecamera = 1,0
value = 1

[State 811, Width]
type = Width
trigger1 = AnimElemTime(8) >= 0
edge = 20,20

[State 811, Offset]
type = Offset
trigger1 = AnimElemTime(8) >= 0
x = 0
y = Ceil(Const(Size.Mid.Pos.Y))

[State 811, Offset]
type = Offset
trigger1 = AnimElemTime(8) >= 0 && Pos Y >= -30
x = 0
y = 0

[State 811, SprPriority]
type = SprPriority
trigger1 = AnimElem = 2
value = -2

[State 811, SprPriority]
type = SprPriority
trigger1 = AnimElem = 5
value = -2

[State 811, SprPriority]
type = SprPriority
trigger1 = AnimElem = 7
value = 2

[State 811, SprPriority]
type = SprPriority
trigger1 = AnimElem = 8
value = -2

[State 811, Turn]
type = Turn
trigger1 = AnimElemTime(8) > 0
trigger1 = (Pos Y >= -30) && (Vel Y > 0)

[State 811, VelSet]
type = VelSet
trigger1 = Time = 29
x = -5
y = -5;7

[State 811, VelAdd]
type = VelAdd
trigger1 = Time >= 29
y = .5

[State 811, ChangeState]
type = ChangeState
trigger1 = AnimElemTime(8) > 0
trigger1 = (Pos Y >= -30) && (Vel Y > 0)
value = 812

;--------------------------------------------------------------------------------------------------------------------------------------------
;JUDO THROW - TARGET 2
[StateDef 812]
type = L
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = -1

[State 812, EnvShake]
type = EnvShake
trigger1 = !Time
time = 20

[State 812, LifeAdd]
type = LifeAdd
trigger1 = AnimElemTime(1) < 2
value = -80
kill = 1
absolute = 1
ignorehitpause = 1
persistent = 0

[State 812, VelMul]
type = VelMul
trigger1 = 1
x = .9

[State 812, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 812, PosFreeze]
type = PosFreeze
trigger1 = 1

[State 812, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 812

[State 812, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1
persistent = 1

[State 812, ChangeState]
type = ChangeState
trigger1 = Anim = 812 && AnimElem = 2
value = 813
ctrl = 0

;--------------------------------------------------------------------------------------------------------------------------------------------
;JUDO THROW - TARGET 3
[StateDef 813]
type = L
movetype = H
physics = N

[State 813, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5160

[State 813, VelSet]
type = VelSet
trigger1 = !Time
x = 1
y = -7

[State 813, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 813, VelAdd]
type = VelAdd
trigger1 = 1
y = .6

[State 813, SelfState]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 12
value = 5110

;--------------------------------------------------------------------------------------------------------------------------------------------
;DRAGON SUPLEX - PLAYER
[StateDef 820]
type = S
movetype = A
physics = N
anim = 820
ctrl = 0

[State 820, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 820, SprPriority]
type = SprPriority
trigger1 = AnimElemTime(5) < 0
value = -2
[State 820, SprPriority]
type = SprPriority
trigger1 = AnimElemTime(5) >= 0
value = 1

[State 820, Width]
type = Width
trigger1 = AnimElemTime(3) < 0
edge = 11,11

[State 820, Width]
type = Width
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
edge = 50,0
[State 820, Width]
type = Width
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
edge = 70,0
[State 820, Width]
type = Width
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(10) < 0
edge = 90,0

[State 820, Width]
type = Width
trigger1 = AnimElemTime(10) >= 0
edge = 30,50
[State 820, Width]
type = Width
trigger1 = AnimElemTime(11) >= 0
edge = 60,70
[State 820, Width]
type = Width
trigger1 = AnimElemTime(12) >= 0
edge = 75,80
[State 820, Width]
type = Width
trigger1 = AnimElemTime(13) >= 0
edge = 80,90

[State 820, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 820, PowerAdd]
type = PowerAdd
trigger1 = AnimElem = 13
value = 72

[State 820, TargetDrop]
type = TargetDrop
trigger1 = 1
excludeID = 800
keepone = 1

[State 820, TargetState]
type = TargetState
trigger1 = NumTarget(800)
trigger1 = !Time
value = 821
ID = 800

[State 820, TargetBind]
type = TargetBind
trigger1 = NumTarget(800)
trigger1 = AnimElem = 1
time = 1
pos = 50,0
ID = 800

[State 820, TargetBind]
type = TargetBind
trigger1 = NumTarget(800)
trigger1 = AnimElem = 9
time = -1
pos = 40,0
ID = 800

[State 820, TargetBind]
type = TargetBind
trigger1 = NumTarget(800)
trigger1 = AnimElem = 10
time = -1
pos = 10,-100
ID = 800

[State 820, TargetBind]
type = TargetBind
trigger1 = NumTarget(800)
trigger1 = AnimElem = 11
time = -1
pos = -8,-105
ID = 800

[State 820, TargetBind]
type = TargetBind
trigger1 = NumTarget(800)
trigger1 = AnimElem = 12
time = 1
pos = -60,-90
ID = 800

[State 820, TargetBind]
type = TargetBind
trigger1 = NumTarget(800)
trigger1 = AnimElem = 13
time = 1
pos = -80,-10
ID = 800

[State 820, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget(800)
trigger1 = AnimElem = 5
value = 36
ID = 800

[State 820, HitAdd]
type = HitAdd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 13
value = 1

[State 820, Explod]
type = Explod
trigger1 = AnimElem = 13
ID = 7290
anim = 7290
pos = -80,4
postype = P1  ;p2,front,back,left,right
bindtime = 1
supermovetime = 0
pausemovetime = 0
scale = .6,.5
sprpriority = -4
ownpal = 1
persistent = 0
[State 820, Explod]
type = Explod
trigger1 = AnimElem = 13
ID = 7291
anim = 7291
pos = -80,4
postype = P1  ;p2,front,back,left,right
bindtime = 1
supermovetime = 0
pausemovetime = 0
scale = .6,.5
sprpriority = -4
ownpal = 1
persistent = 0

[State 820, Explod]
type = Explod
trigger1 = NumTarget(800)
trigger1 = !NumExplod(800)
trigger1 = Target(800),StateType != L
trigger1 = AnimElem = 4
ID = 800
anim = 8000+Random%3
pos = 25+Ceil(P2BodyDist X),-23
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 820, Explod]
type = Explod
trigger1 = NumTarget(800)
trigger1 = !NumExplod(800)
trigger1 = Target(800),StateType != L
trigger1 = AnimElem = 13
ID = 800
anim = 8000+Random%3
pos = -80,-10
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 820, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(13) >= 0 && AnimElemTime(20) < 0
statetype = C        ;I,A,H
[State 820, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(20) >= 0
statetype = S        ;I,A,H

[State 820, PosAdd]
type = PosAdd
trigger1 = AnimElem = 14
x = -30

[State 820, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8
value = S800,0
channel = -1

[State 820, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S250,1
channel = -1

[State 820, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S250,0
channel = -1

[State 820, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 10
value = S300,4
channel = 0

[State 820, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(11) = 8
value = S250,1
channel = -1

[State 820, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 13
value = S820,0
channel = -1

[State 820, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 13
value = S800,1
channel = -1

[State 820, VarSet]
type = VarSet
trigger1 = Time = 0
var(34) = 0

[State 820, VarSet]
type = VarSet
triggerall = NumTarget(800)
triggerall = Time <= 8
trigger1 = Target(800),Command = "holdfwd" || Target(800),Command = "holdback"
trigger1 = Target(800),Command = "c"
trigger2 = Target(800),Command = "holdfwd" || Target(800),Command = "holdback"
trigger2 = Target(800),Command = "z"
trigger3 = Target(800),Command = "a" && Target(800),Command = "x"
var(34) = 1

[State 820, TargetState]
type = TargetState
trigger1 = NumTarget(800)
trigger1 = Var(34) = 1
trigger1 = Time > 15 && Time <= 26
value = 895

[State 820, ChangeState]
type = ChangeState
trigger1 = NumTarget(800)
trigger1 = Target(800),Stateno = 895
value = 890

[State 820, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;DRAGON SUPLEX - TARGET 1
[StateDef 821]
type = A
movetype = H
physics = N
velset = 0,0
sprpriority = -1

[State 821, ScreenBound]
type = ScreenBound
trigger1 = AnimElemTime(6) < 0
value = 1
movecamera = 1,0
[State 821, ScreenBound]
type = ScreenBound
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(10) < 0
value = 0
movecamera = 0,0
[State 821, ScreenBound]
type = ScreenBound
trigger1 = AnimElemTime(10) >= 0
value = 1
movecamera = 1,0

[State 821, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 821, Width]
type = Width
trigger1 = AnimElemTime(10) < 0
edge = 2,2

[State 821, Width]
type = Width
trigger1 = AnimElemTime(10) >= 0
edge = 0,2

[State 821, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 821

[State 821, LifeAdd]
type = LifeAdd
trigger1 = Time = 11
value = -20
kill = 0
absolute = 1
ignorehitpause = 1
persistent = 0

[State 821, LifeAdd]
type = LifeAdd
trigger1 = AnimElem = 9
value = -80
kill = 1
absolute = 1
ignorehitpause = 1
persistent = 0

[State 822, EnvShake]
type = EnvShake
trigger1 = AnimElem = 9
time = 20

[State 821, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 20
[State 821, VelMul]
type = VelMul
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(6) < 0
x = .6

[State 821, VelSet]
type = VelSet
trigger1 = AnimElem = 10
x = -5
y = -4.5

[State 821, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(10) > 0
y = .5

[State 821, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(10) < 0
value = SCA
time = 1
ignorehitpause = 1
persistent = 1

[State 821, ChangeState]
type = ChangeState
trigger1 = AnimElemTime(10) > 0
trigger1 = (Pos Y >= -15) && (Vel Y > 0)
value = 822

;--------------------------------------------------------------------------------------------------------------------------------------------
;DRAGON SUPLEX - TARGET 2
[StateDef 822]
type = L
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = -1

[State 822, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 822, PosFreeze]
type = PosFreeze
trigger1 = 1

[State 822, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 822

[State 822, ChangeState]
type = ChangeState
trigger1 = Anim = 822 && AnimElem = 2
value = 823
ctrl = 0

;--------------------------------------------------------------------------------------------------------------------------------------------
;DRAGON SUPLEX - TARGET 3
[StateDef 823]
type = L
movetype = H
physics = N

[State 823, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5160

[State 823, VelSet]
type = VelSet
trigger1 = !Time
x = -1
y = -5

[State 823, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 823, VelAdd]
type = VelAdd
trigger1 = 1
y = .5

[State 823, SelfState]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 12
value = 5110

;--------------------------------------------------------------------------------------------------------------------------------------------
;THROW BREAK - PLAYER
[StateDef 890]
type = S
physics = N
movetype = I
anim = 5945
ctrl = 0
velset = 0,0
sprpriority = 1

[State 890, Explod]
type = Explod
trigger1 = !Time
ID = 7600
anim = 7600
pos = 0,-60
postype = P1  ;p2,front,back,left,right
supermovetime = -1
pausemovetime = -1
scale = .5,.5
sprpriority = 5
ownpal = 1

[State 890, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 890, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 890, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S5000,2
channel = 0

[State 890, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S890,0
channel = 1

[State 890, PosAdd]
type = PosAdd
trigger1 = !Time
x = 24

[State 890, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 890, TargetState]
type = TargetState
trigger1 = NumTarget
trigger1 = !Time
value = 895

[State 890, TargetBind]
type = TargetBind
trigger1 = NumTarget
trigger1 = !Time
pos = 0,0

[State 890, TargetFacing]
type = TargetFacing
trigger1 = NumTarget
trigger1 = !Time
value = -1

[State 890, VelSet]
type = VelSet
trigger1 = 1
x = -1.425
y = 0

[State 890, ChangeState]
type = ChangeState
trigger1 = Time >= 27
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;THROW BREAK - TARGET
[StateDef 895]
type = S
physics = N
movetype = I
ctrl = 0
velset = 0,0
sprpriority = 0

[State 895, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = Cond(SelfAnimExist(5945),5945,130)

[State 895, ChangeAnim]
type = ChangeAnim
trigger1 = Time >= 20 && Anim = 130
value = 140

[State 895, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && !SelfAnimExist(5945) && SelfAnimExist(5910)
value = 5910

[State 895, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 895, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 895, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 895, VelSet]
type = VelSet
trigger1 = 1
x = -1.425
y = 0

[State 895, SelfState]
type = SelfState
trigger1 = Time >= 27
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;TAUNT
[StateDef 900]
type = S
movetype = I
physics = S
anim = 900
velset = 0,0
sprpriority = 1
poweradd = 100
ctrl = 0

[State 900, PlaySnd]
type = PlaySnd
trigger1 = PrevStateNo != 3203
trigger1 = Anim = 900
trigger1 = !Time
value = S900,Cond(Random < 500,0,1)
channel = 0

[State 900, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 900, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1