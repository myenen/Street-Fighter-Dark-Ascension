;--------------------------------------------------------------------------------------------------------------------------------------------
;LAWFUL UPPER TORNADO
[StateDef 421]
type = A
physics = N
movetype = A
anim = 421

[State 421, BindToRoot]
type = BindToRoot
trigger1 = !Time
time = 1
pos = 65,0
ignorehitpause = 1
persistent = 0

;Used to add counter hit scaling
[State 421, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = (EnemyNear,MoveType = A)
fvar(6) = 1
ignorehitpause = 1
[State 421, Counter Flag Reset]
type = VarSet
trigger1 = NumEnemy
trigger1 = (EnemyNear,MoveType != A)
fvar(6) = 0
ignorehitpause = 1

;Keeps track of current combo count
[State 421, Hit Count]
type = VarAdd
trigger1 = NumTarget
trigger1 = !MoveGuarded
trigger1 = !HitPauseTime
trigger2 = Root,NumTarget
trigger2 = !Root,MoveGuarded
trigger2 = !Root,HitPauseTime
fvar(9) = 1+Root,Var(4)
ignorehitpause = 1
[State 421, Hit Count Reset]
type = VarSet
trigger1 = NumEnemy && FVar(9)
trigger1 = (EnemyNear,MoveType != H) && (EnemyNear,StateNo != 5300)
fvar(9) = 0
ignorehitpause = 1
[State 421, Hit Count Reset]
type = VarSet
trigger1 = MoveGuarded
trigger2 = NumEnemy
trigger2 = EnemyNear,MoveType = A
trigger3 = NumEnemy
trigger3 = EnemyNear,StateType = L
fvar(9) = 0
ignorehitpause = 1

[State 421, Scaling]
type = VarSet
trigger1 = 1
fvar(8) = Cond(FVar(9) >= 1,1-(.001*FVar(9)+.7*Root,FVar(3)),1);.01
ignorehitpause = 1

[State 421, Scaling Limit]
type = VarSet
trigger1 = FVar(8) < 0.10
fvar(8) = 0.10
ignorehitpause = 1

[State 421, Root Dampener]
type = VarSet
trigger1 = 1
fvar(10) = FVar(8);*Cond(FVar(6) = 1,1.2,1)
ignorehitpause = 1

[State 421, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 421, Explod]
type = Explod
trigger1 = !Time
ID = 6075
anim = 6075
postype = P1  ;p2,front,back,left,right
pos = 0,0
bindtime = -1
supermovetime = 0
pausemovetime = 0
scale = .5,.4
sprpriority = 4
ownpal = 1
ignorehitpause = 1

[State 421, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(421)
trigger1 = !NumExplod(421)
trigger1 = Target(421),StateType != L
ID = 421
anim = 8000+Random%3
pos = 0+Ceil(P2Dist X),-50-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0
[State 421, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(422)
trigger1 = !NumExplod(422)
trigger1 = Target(422),StateType != L
ID = 422
anim = 8000+Random%3
pos = 0+Ceil(P2Dist X),-60-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0
[State 421, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(423)
trigger1 = !NumExplod(423)
trigger1 = Target(423),StateType != L
ID = 423
anim = 8000+Random%3
pos = 0+Ceil(P2Dist X),-70-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0
[State 421, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(424)
trigger1 = !NumExplod(424)
trigger1 = Target(424),StateType != L
ID = 424
anim = 8000+Random%3
pos = 0+Ceil(P2Dist X),-80-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0
[State 421, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(425)
trigger1 = !NumExplod(425)
trigger1 = Target(425),StateType != L
ID = 425
anim = 8000+Random%3
pos = 0+Ceil(P2Dist X),-90-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0
[State 421, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(426)
trigger1 = !NumExplod(426)
trigger1 = Target(426),StateType != L
ID = 426
anim = 8000+Random%3
pos = 0+Ceil(P2Dist X),-100-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 421, HitDef]
type = HitDef
trigger1 = NumEnemy
trigger1 = Root,Var(55) < 200
trigger1 = AnimElem = 1
attr = A,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 7,Hit
damage = Ceil(FVar(10)*5),0
pausetime = 2,2
sparkno = -1
guard.sparkno = S8500
sparkxy = -15,-50
hitsound = S213,0+(Random%4)
guardsound = S200,2
ground.type = Low      ;Low,Trip,None
air.type = Low
ground.slidetime = 20
ground.hittime = 20
air.hittime = 20
yaccel = .5
ground.velocity = Cond(P2BodyDist X >= 0,4,-2),-5
air.velocity = Cond(P2BodyDist X >= 0,4,-2),-5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
fall = 1
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,5
forcestand = 1
p2facing = 1
hitonce = 1
ID = 421
[State 421, HitDef]
type = HitDef
trigger1 = NumEnemy
trigger1 = Root,Var(55) < 200
trigger1 = AnimElem = 2
attr = A,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 7,Hit
damage = Ceil(FVar(10)*5),0
pausetime = 2,2
sparkno = -1
guard.sparkno = S8500
sparkxy = -15,-60
hitsound = S213,0+(Random%4)
guardsound = S200,2
ground.type = High      ;Low,Trip,None
air.type = High
ground.slidetime = 20
ground.hittime = 20
air.hittime = 20
yaccel = .5
ground.velocity = Cond(P2BodyDist X >= 0,4,-2),-5
air.velocity = Cond(P2BodyDist X >= 0,4,-2),-4
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
fall = 1
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,5
forcestand = 1
p2facing = 1
hitonce = 1
ID = 422
[State 421, HitDef]
type = HitDef
trigger1 = NumEnemy
trigger1 = Root,Var(55) < 200
trigger1 = AnimElem = 3
attr = A,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 7,Hit
damage = Ceil(FVar(10)*5),0
pausetime = 2,2
sparkno = -1
guard.sparkno = S8500
sparkxy = -15,-70
hitsound = S213,0+(Random%4)
guardsound = S200,2
ground.type = Low      ;Low,Trip,None
air.type = Low
ground.slidetime = 20
ground.hittime = 20
air.hittime = 20
yaccel = .5
ground.velocity = Cond(P2BodyDist X >= 0,4,-2),-5
air.velocity = Cond(P2BodyDist X >= 0,4,-2),-3
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
fall = 1
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,5
forcestand = 1
p2facing = 1
hitonce = 1
ID = 423
[State 421, HitDef]
type = HitDef
trigger1 = NumEnemy
trigger1 = Root,Var(55) < 200
trigger1 = AnimElem = 4
attr = A,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 7,Hit
damage = Ceil(FVar(10)*5),0
pausetime = 2,2
sparkno = -1
guard.sparkno = S8500
sparkxy = -15,-80
hitsound = S213,0+(Random%4)
guardsound = S200,2
ground.type = High      ;Low,Trip,None
air.type = High
ground.slidetime = 20
ground.hittime = 20
air.hittime = 20
yaccel = .5
ground.velocity = Cond(P2BodyDist X >= 0,4,-2),-5
air.velocity = Cond(P2BodyDist X >= 0,4,-2),-2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
fall = 1
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,5
forcestand = 1
p2facing = 1
hitonce = 1
ID = 424
[State 421, HitDef]
type = HitDef
trigger1 = NumEnemy
trigger1 = Root,Var(55) < 200
trigger1 = AnimElem = 5
attr = A,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 7,Hit
damage = Ceil(FVar(10)*5),0
pausetime = 2,2
sparkno = -1
guard.sparkno = S8500
sparkxy = -15,-90
hitsound = S213,0+(Random%4)
guardsound = S200,2
ground.type = Low      ;Low,Trip,None
air.type = Low
ground.slidetime = 20
ground.hittime = 20
air.hittime = 20
yaccel = .5
ground.velocity = Cond(P2BodyDist X >= 0,4,-2),-5
air.velocity = Cond(P2BodyDist X >= 0,4,-2),-2
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
fall = 1
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,5
forcestand = 1
p2facing = 1
hitonce = 1
ID = 425
[State 421, HitDef]
type = HitDef
trigger1 = Root,Var(55) < 200
trigger1 = AnimElem = 6
attr = A,NA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = DiagUp
fall.animtype = DiagUp
priority = 7,Hit
damage = Ceil(FVar(10)*5),0
pausetime = 2,2
sparkno = -1
guard.sparkno = S8500
sparkxy = -15,-100
hitsound = S213,0+(Random%4)
guardsound = S200,2
ground.type = High      ;Low,Trip,None
air.type = High
ground.slidetime = 20
ground.hittime = 20
air.hittime = 20
yaccel = .5
ground.velocity = Cond(P2BodyDist X >= 0,2,-2),-9
air.velocity = Cond(P2BodyDist X >= 0,2,-2),-9
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
fall = 1
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,5
forcestand = 1
p2facing = Cond(P2BodyDist X > 0,-1,1)
hitonce = 1
ID = 426

[State 421, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
movetype = I        ;I,A,H

[State 421, VarSet]
type = VarSet
trigger1 = MoveHit
trigger1 = !MoveGuarded
trigger1 = NumTarget(426)
trigger1 = Target(426),MoveType = H
var(16) = 1

[State 421, ParentVarAdd]
type = ParentVarAdd
triggerall = !MoveGuarded
trigger1 = NumTarget(426)
trigger1 = Target(426),MoveType = H
var(55) = 50
persistent = 0

[State 421, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S1000,2
channel = -1

[State 421, DestroySelf]
type = DestroySelf
trigger1 = !NumExplod(6075)

;--------------------------------------------------------------------------------------------------------------------------------------------
;SOMERSAULT STRIKE KICKS
[StateDef 3160]
type = A
physics = N
movetype = I
ctrl = 0
sprpriority = 1

[State 3160, VarSet]
type = VarSet
trigger1 = !Time
var(0) = Const(Size.ShadowOffset)

[State 3160, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = Cond(IsHelper(3160),3104,Cond(IsHelper(3161),3105,3106))

[State 3160, BindToRoot]
type = BindToRoot
trigger1 = IsHelper(3160)
trigger1 = !Time
time = 1
facing = 1
pos = 90,60

[State 3160, BindToRoot]
type = BindToRoot
trigger1 = IsHelper(3161)
trigger1 = !Time
time = 1
facing = 1
pos = -90,40

[State 3160, BindToRoot]
type = BindToRoot
trigger1 = IsHelper(3162)
trigger1 = !Time
time = 1
facing = 1
pos = 90,50

[State 3160, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 3160, Trans]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256-(Time*16),Time*16

[State 3160, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(3160)
value = -30
ignorehitpause = 1
persistent = 1
[State 3160, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(3161)
value = 30
ignorehitpause = 1
persistent = 1
[State 3160, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(3162)
value = -25
ignorehitpause = 1
persistent = 1

[State 3160, Helper]
type = Helper
trigger1 = PlayerIDExist(Var(0))
trigger1 = PlayerID(Var(0)),StateNo = 3150
trigger1 = IsHelper(3160)
trigger1 = !NumHelper(6072)
trigger1 = !Time
name = "Slash1"
ID = 6072
stateno = 6072
postype = P1    ;p2,front,back,left,right
facing = -1
ownpal = 1
pausemovetime = 0
supermovetime = 0

[State 3160, Helper]
type = Helper
trigger1 = PlayerIDExist(Var(0))
trigger1 = PlayerID(Var(0)),StateNo = 3150
trigger1 = IsHelper(3161)
trigger1 = !NumHelper(60721)
trigger1 = !Time
name = "Slash2"
ID = 60721
stateno = 6072
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0

[State 3160, Helper]
type = Helper
trigger1 = PlayerIDExist(Var(0))
trigger1 = PlayerID(Var(0)),StateNo = 3150
trigger1 = IsHelper(3162)
trigger1 = !NumHelper(60722)
trigger1 = !Time
name = "Slash3"
ID = 60722
stateno = 6072
postype = P1    ;p2,front,back,left,right
facing = -1
ownpal = 1
pausemovetime = 0
supermovetime = 0

[State 3160, VelSet]
type = VelSet
trigger1 = IsHelper(3160) && !Time
x = -12
y = -5
;[State 3160, VelMul]
;type = VelMul
;trigger1 = IsHelper(3160) && Time < 15
;x = .9
;y = .9
[State 3160, VelSet]
type = VelSet
trigger1 = IsHelper(3160) && Time = 7
x = 0
y = 0

[State 3160, VelSet]
type = VelSet
trigger1 = IsHelper(3161) && !Time
x = 12
y = -5
;[State 3160, VelMul]
;type = VelMul
;trigger1 = IsHelper(3161) && Time < 15
;x = .9
;y = .9
[State 3160, VelSet]
type = VelSet
trigger1 = IsHelper(3161) && Time = 7
x = 0
y = 0

[State 3160, VelSet]
type = VelSet
trigger1 = IsHelper(3162) && !Time
x = -12
y = -5
;[State 3160, VelMul]
;type = VelMul
;trigger1 = IsHelper(3162) && Time < 15
;x = .9
;y = .9
[State 3160, VelSet]
type = VelSet
trigger1 = IsHelper(3162) && Time = 7
x = 0
y = 0

[State 3160, DestroySelf]
type = DestroySelf
trigger1 = Time >= 16

;--------------------------------------------------------------------------------------------------------------------------------------------
;SKY FISSURE KICKS
[StateDef 3420]
type = A
physics = N
movetype = I
ctrl = 0
sprpriority = 1

[State 3420, VarSet]
type = VarSet
trigger1 = !Time
var(0) = Const(Size.ShadowOffset)

[State 3420, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 3105

[State 3420, BindToRoot]
type = BindToRoot
triggerall = !Time
trigger1 = IsHelper(3420)
trigger2 = IsHelper(3422)
trigger3 = IsHelper(3424)
time = 1
facing = 1
pos = -10,-80

[State 3420, BindToRoot]
type = BindToRoot
triggerall = !Time
trigger1 = IsHelper(3421)
trigger2 = IsHelper(3423)
trigger3 = IsHelper(3425)
time = 1
facing = 1
pos = 80,0;40,0

[State 3420, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 3420, Trans]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256-(Time*16),Time*16

[State 3420, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(3420)
trigger2 = IsHelper(3422)
trigger3 = IsHelper(3424)
value = -20
ignorehitpause = 1
persistent = 1
[State 3420, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(3421)
trigger2 = IsHelper(3423)
trigger3 = IsHelper(3425)
value = 55
ignorehitpause = 1
persistent = 1

[State 3420, Helper]
type = Helper
triggerall = !Time
trigger1 = IsHelper(3420)
trigger2 = IsHelper(3422)
trigger3 = IsHelper(3424)
name = "Slash"
ID = 34301
stateno = 6070
postype = P1    ;p2,front,back,left,right
size.xscale = 1.5
size.yscale = 1.5
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1

[State 3420, Helper]
type = Helper
triggerall = !Time
trigger1 = IsHelper(3421)
trigger2 = IsHelper(3423)
trigger3 = IsHelper(3425)
name = "Slash"
ID = 34311
stateno = 6070
postype = P1    ;p2,front,back,left,right
size.xscale = 1.5
size.yscale = 1.5
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1

[State 3420, VelSet]
type = VelSet
triggerall = !Time
trigger1 = IsHelper(3420)
trigger2 = IsHelper(3422)
trigger3 = IsHelper(3424)
x = 12
y = 12
[State 3420, VelSet]
type = VelSet
triggerall = Time = 7
trigger1 = IsHelper(3420)
trigger2 = IsHelper(3422)
trigger3 = IsHelper(3424)
x = 0
y = 0

[State 3420, VelSet]
type = VelSet
triggerall = !Time
trigger1 = IsHelper(3421)
trigger2 = IsHelper(3423)
trigger3 = IsHelper(3425)
x = 15
y = -15
[State 3420, VelSet]
type = VelSet
triggerall = Time = 7
trigger1 = IsHelper(3421)
trigger2 = IsHelper(3423)
trigger3 = IsHelper(3425)
x = 0
y = 0

[State 3420, DestroySelf]
type = DestroySelf
trigger1 = Time >= 16

;--------------------------------------------------------------------------------------------------------------------------------------------
;SONIC BOOM
[StateDef 6000]
type = A
physics = N
movetype = A
anim = 6000
ctrl = 0
velset = 1,0
sprpriority = 2

[State 6000, VarSet]
type = VarSet
trigger1 = !Time
var(5) = Root,Var(5)

;Used to add counter hit scaling
[State 6000, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = (EnemyNear,MoveType = A)
fvar(6) = 1
ignorehitpause = 1
[State 6000, Counter Flag Reset]
type = VarSet
trigger1 = NumEnemy
trigger1 = (EnemyNear,MoveType != A)
fvar(6) = 0
ignorehitpause = 1

;Keeps track of current combo count
[State 6000, Hit Count]
type = VarAdd
trigger1 = NumTarget
trigger1 = !MoveGuarded
trigger1 = !HitPauseTime
trigger2 = Root,NumTarget
trigger2 = !Root,MoveGuarded
trigger2 = !Root,HitPauseTime
fvar(9) = 1+Root,Var(4)
ignorehitpause = 1
[State 6000, Hit Count Reset]
type = VarSet
trigger1 = NumEnemy && FVar(9)
trigger1 = (EnemyNear,MoveType != H) && (EnemyNear,StateNo != 5300)
fvar(9) = 0
ignorehitpause = 1
[State 6000, Hit Count Reset]
type = VarSet
trigger1 = MoveGuarded
trigger2 = NumEnemy
trigger2 = EnemyNear,MoveType = A
trigger3 = NumEnemy
trigger3 = EnemyNear,StateType = L
fvar(9) = 0
ignorehitpause = 1

[State 6000, Scaling]
type = VarSet
trigger1 = 1
fvar(8) = Cond(FVar(9) >= 1,1-(.02*FVar(9)+.7*Root,FVar(3)),1);.01
ignorehitpause = 1

[State 6000, Scaling Limit]
type = VarSet
trigger1 = FVar(8) < 0.10
fvar(8) = 0.10
ignorehitpause = 1

[State 6000, Root Dampener]
type = VarSet
trigger1 = 1
fvar(10) = FVar(8);*Cond(FVar(6) = 1,1.2,1)
ignorehitpause = 1

[State 6000, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

;[State 6000, Explod]
;type = Explod
;trigger1 = Time%6 = 0
;ID = 6100
;anim = 6100
;postype = P1  ;p2,front,back,left,right
;pos = 0,0
;facing = Cond(Random < 500,1,-1)
;vfacing = Cond(Random < 500,1,-1)
;bindtime = -1
;removetime = -2
;supermovetime = 0
;pausemovetime = 0
;scale = .2,.03
;sprpriority = 2
;ownpal = 1
;ignorehitpause = 1

[State 6000, Explod]
type = Explod
trigger1 = !Time
ID = 7010
anim = 7010
pos = -4,Abs(Pos Y)
postype = P1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -1
removeongethit = 0
pausemovetime = 0
supermovetime = 0
scale = .5,.5
sprpriority = 0
ownpal = 1
ignorehitpause = 1

[State 6000, Helper]
type = Helper
trigger1 = (Time%2) = 1
stateno = 6265
ID = 6265
name = "Speed"
postype = P1
pos = 25,0
size.xscale = .5
size.yscale = .5
supermovetime = 0
pausemovetime = 0
ownpal = 1

[State 6000, Helper]
type = Helper
trigger1 = MoveContact && NumTarget && Var(6)
trigger1 = !(Target,HitShakeOver)
trigger1 = !NumHelper(7100)
name = "Counter FX"
ID = 7100
stateno = 7100
pos = Cond(P2Dist X < -64,-64,Cond(P2Dist X < 64,Ceil(P2Dist X),64)),Ceil(P2Dist Y-64)
postype = P1    ;p2,front,back,left,right
facing = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 6000, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignorehitpause = 1

[State 6000, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(6000)
trigger1 = !NumExplod(6000)
trigger1 = Target(6000),StateType != L
ID = 6000
anim = 8100+Random%32
pos = 0,0
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 8
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0
[State 6000, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(60001)
trigger1 = !NumExplod(60001)
trigger1 = Target(60001),StateType != L
ID = 60001
anim = 8100+Random%32
pos = 0,0
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 8
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0
[State 6000, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(60002)
trigger1 = !NumExplod(60002)
trigger1 = Target(60002),StateType != L
ID = 60002
anim = 8100+Random%32
pos = 0,0
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 8
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 6000, HitDef]
type = HitDef
trigger1 = IsHelper(6000)
trigger1 = NumEnemy
trigger1 = Root,Var(55) < 200
trigger1 = !Var(5)
attr = A,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
priority = 8,Hit
damage = Ceil(FVar(10)*25),1
pausetime = 0,12
sparkno = -1
guard.sparkno = S8501
sparkxy = -5,0
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
air.type = Low
ground.slidetime = 12
ground.hittime = 18
air.hittime = 100
ground.velocity = -3
guard.velocity = -6
air.velocity = -3,-5
ground.cornerpush.veloff = 0
fall.recover = 0
air.fall = 1
p2facing = 1
forcestand = 1
getpower = 100,50
givepower = 0,10
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 6000
persistent = 0
[State 6000, HitDef]
type = HitDef
trigger1 = IsHelper(6000)
trigger1 = NumEnemy
trigger1 = Root,Var(55) < 200
trigger1 = Var(5) = 1
attr = A,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
priority = 8,Hit
damage = Ceil(FVar(10)*45),1
pausetime = 0,12
sparkno = -1
guard.sparkno = S8501
sparkxy = -5,0
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
air.type = Low
ground.slidetime = 13
ground.hittime = 19
air.hittime = 100
ground.velocity = -4
guard.velocity = -6
air.velocity = -3,-5
ground.cornerpush.veloff = 0
fall.recover = 0
air.fall = 1
p2facing = 1
forcestand = 1
getpower = 110,55
givepower = 0,10
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 6000
persistent = 0
[State 6000, HitDef]
type = HitDef
trigger1 = IsHelper(6000)
trigger1 = NumEnemy
trigger1 = Root,Var(55) < 200
trigger1 = Var(5) = 2
attr = A,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard          ;light,medium,hard,back,up,diagup
priority = 10,Hit
damage = Ceil(FVar(10)*65),1
pausetime = 0,12
sparkno = -1
guard.sparkno = S8501
sparkxy = -5,0
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
air.type = Low
ground.slidetime = 14
ground.hittime = 20
air.hittime = 100
ground.velocity = -7
guard.velocity = -6
air.velocity = -3,-5
ground.cornerpush.veloff = 0
fall.recover = 0
air.fall = 1
p2facing = 1
forcestand = 1
getpower = 120,60
givepower = 0,10
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 6000
persistent = 0

[State 6000, HitDef]
type = HitDef
trigger1 = IsHelper(6001)
trigger1 = NumEnemy
trigger1 = Root,Var(55) < 200
trigger1 = !Var(5)
attr = A,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
priority = 8,Hit
damage = Ceil(FVar(10)*25),1
pausetime = 0,12
sparkno = -1
guard.sparkno = S8501
sparkxy = -5,0
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = Low      ;Low,Trip,None
air.type = Low
ground.slidetime = 12
ground.hittime = 18
guard.hittime = 15
guard.ctrltime = 15
air.hittime = 100
ground.velocity = -2
guard.velocity = -6
air.velocity = -2,-7
ground.cornerpush.veloff = 0
fall.recover = 0
air.fall = 1
p2facing = 1
forcestand = 1
getpower = 100,50
givepower = 0,10
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 60001
persistent = 0
[State 6000, HitDef]
type = HitDef
trigger1 = IsHelper(6001)
trigger1 = NumEnemy
trigger1 = Root,Var(55) < 200
trigger1 = Var(5) = 1
attr = A,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
priority = 8,Hit
damage = Ceil(FVar(10)*45),1
pausetime = 0,12
sparkno = -1
guard.sparkno = S8501
sparkxy = -5,0
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = Low      ;Low,Trip,None
air.type = Low
ground.slidetime = 13
ground.hittime = 19
guard.hittime = 15
guard.ctrltime = 15
air.hittime = 100
ground.velocity = -2
guard.velocity = -6
air.velocity = -2,-7
ground.cornerpush.veloff = 0
fall.recover = 0
air.fall = 1
p2facing = 1
forcestand = 1
getpower = 110,55
givepower = 0,10
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 60001
persistent = 0
[State 6000, HitDef]
type = HitDef
trigger1 = IsHelper(6001)
trigger1 = NumEnemy
trigger1 = Root,Var(55) < 200
trigger1 = Var(5) = 2
attr = A,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard          ;light,medium,hard,back,up,diagup
priority = 10,Hit
damage = Ceil(FVar(10)*65),1
pausetime = 0,12
sparkno = -1
guard.sparkno = S8501
sparkxy = -5,0
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = Low      ;Low,Trip,None
air.type = Low
ground.slidetime = 14
ground.hittime = 20
guard.hittime = 15
guard.ctrltime = 15
air.hittime = 100
ground.velocity = -2
guard.velocity = -6
air.velocity = -2,-7
ground.cornerpush.veloff = 0
fall.recover = 0
air.fall = 1
p2facing = 1
forcestand = 1
getpower = 120,60
givepower = 0,10
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 60001
persistent = 0

[State 6000, HitDef]
type = HitDef
trigger1 = IsHelper(6002)
trigger1 = NumEnemy
trigger1 = Root,Var(55) < 200
trigger1 = !Var(5)
attr = A,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
priority = 8,Hit
damage = Ceil(FVar(10)*25),1
pausetime = 0,12
sparkno = -1
guard.sparkno = S8501
sparkxy = -5,0
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
air.type = High
ground.slidetime = 12
ground.hittime = 18
guard.hittime = 10
guard.ctrltime = 10
air.hittime = 100
ground.velocity = -3;,-5
guard.velocity = -6
air.velocity = -3,-7
ground.cornerpush.veloff = 0
fall = 0;1
fall.recover = 0
air.fall = 1
p2facing = 1
forcestand = 1
getpower = 0
givepower = 0,10
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 60002
persistent = 0
[State 6000, HitDef]
type = HitDef
trigger1 = IsHelper(6002)
trigger1 = NumEnemy
trigger1 = Root,Var(55) < 200
trigger1 = Var(5) = 1
attr = A,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
priority = 8,Hit
damage = Ceil(FVar(10)*45),1
pausetime = 0,12
sparkno = -1
guard.sparkno = S8501
sparkxy = -5,0
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
air.type = High
ground.slidetime = 13
ground.hittime = 19
guard.hittime = 10
guard.ctrltime = 10
air.hittime = 100
ground.velocity = -3;,-5
guard.velocity = -6
air.velocity = -3,-7
ground.cornerpush.veloff = 0
fall = 0;1
fall.recover = 0
air.fall = 1
p2facing = 1
forcestand = 1
getpower = 0
givepower = 0,10
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 60002
persistent = 0
[State 6000, HitDef]
type = HitDef
trigger1 = IsHelper(6002)
trigger1 = NumEnemy
trigger1 = Root,Var(55) < 200
trigger1 = Var(5) = 2
attr = A,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard          ;light,medium,hard,back,up,diagup
priority = 10,Hit
damage = Ceil(FVar(10)*65),1
pausetime = 0,12
sparkno = -1
guard.sparkno = S8501
sparkxy = -5,0
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
air.type = High
ground.slidetime = 14
ground.hittime = 20
guard.hittime = 10
guard.ctrltime = 10
air.hittime = 100
ground.velocity = -3;,-5
guard.velocity = -6
air.velocity = -3,-7
ground.cornerpush.veloff = 0
fall = 0;1
fall.recover = 0
air.fall = 1
p2facing = 1
forcestand = 1
getpower = 0
givepower = 0,10
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 60002
persistent = 0

[State 6000, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 6001
time = -1
ignorehitpause = 1

[State 6000, VarSet]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(6) = (EnemyNear,MoveType = A)

[State 6000, VarSet]
type = VarSet
triggerall = MoveHit
triggerall = !MoveGuarded
trigger1 = NumTarget(6000)
trigger1 = Target(6000),MoveType = H
trigger2 = NumTarget(60001)
trigger2 = Target(60001),MoveType = H
trigger3 = NumTarget(60002)
trigger3 = Target(60002),MoveType = H
var(16) = 1

[State 6000, ParentVarAdd]
type = ParentVarAdd
triggerall = !MoveGuarded
trigger1 = NumTarget(6000)
trigger1 = Target(6000),MoveType = H
trigger2 = NumTarget(60001)
trigger2 = Target(60001),MoveType = H
trigger3 = NumTarget(60002)
trigger3 = Target(60002),MoveType = H
var(55) = 10
persistent = 0

[State 6000, VelSet]
type = VelSet
trigger1 = Root,StateNo != 742
trigger1 = !Time
x = Cond(Var(5) = 2,6,Cond(Var(5) = 1,5,4))

[State 6000, VelSet]
type = VelSet
trigger1 = Root,StateNo = 742
trigger1 = !Time
x = 6.3

[State 6000, ChangeState]
type = ChangeState
trigger1 = MoveContact
trigger2 = Time > 5 && !NumExplod(7010)
trigger3 = Pos X != [-400,400]
value = 6001
ignorehitpause = 1

[State 6000, AttackDist]
type = AttackDist
trigger1 = 1
value = 50
ignorehitpause = 1
persistent = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;SONIC BOOM END
[StateDef 6001]
type = A
physics = N
movetype = I
anim = 6001
velset = 0,0
ctrl = 0
sprpriority = 4

[State 6001, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 1+(.04*(Time)),1+(.02*(Time))
ignorehitpause = 1
persistent = 1

[State 6001, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 6001, AfterImage]
type = AfterImage
trigger1 = 1
length = 3
palbright = 1,1,1
palcontrast = 1,255,1
paladd = 0,0,0
palmul = .55,.55,.55
timegap = 2
framegap = 1
trans = Add
time = 9999

[State 6001, RemoveExplod]
type = RemoveExplod
trigger1 = Time >= 1
ID = 7010

[State 6001, Explod]
type = Explod
trigger1 = !Time
ID = 7011
anim = 7011
pos = -4,Abs(Pos Y)
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

[State 6001, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime

;--------------------------------------------------------------------------------------------------------------------------------------------
;SONIC TWISTER 1
[StateDef 6010]
type = A
physics = N
movetype = A
velset = 6,0
anim = 6010
ctrl = 0
sprpriority = 4

[State 6010, VarSet]
type = VarSet
trigger1 = !Time
var(5) = Root,Var(5)

[State 6010, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0;1
movecamera = 0,0
ignorehitpause = 1
persistent = 1

[State 6010, Width]
type = Width
trigger1 = 1
edge = 5,5
ignorehitpause = 1
persistent = 1

;Used to add counter hit scaling
[State 6010, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = (EnemyNear,MoveType = A)
fvar(6) = 1
ignorehitpause = 1
[State 6010, Counter Flag Reset]
type = VarSet
trigger1 = NumEnemy
trigger1 = (EnemyNear,MoveType != A)
fvar(6) = 0
ignorehitpause = 1

;Keeps track of current combo count
[State 6010, Hit Count]
type = VarAdd
trigger1 = NumTarget
trigger1 = !MoveGuarded
trigger1 = !HitPauseTime
trigger2 = Root,NumTarget
trigger2 = !Root,MoveGuarded
trigger2 = !Root,HitPauseTime
fvar(9) = 1+Root,Var(4)
ignorehitpause = 1
[State 6010, Hit Count Reset]
type = VarSet
trigger1 = NumEnemy && FVar(9)
trigger1 = (EnemyNear,MoveType != H) && (EnemyNear,StateNo != 5300)
fvar(9) = 0
ignorehitpause = 1
[State 6010, Hit Count Reset]
type = VarSet
trigger1 = MoveGuarded
trigger2 = NumEnemy
trigger2 = EnemyNear,MoveType = A
trigger3 = NumEnemy
trigger3 = EnemyNear,StateType = L
fvar(9) = 0
ignorehitpause = 1

[State 6010, Scaling]
type = VarSet
trigger1 = 1
fvar(8) = Cond(FVar(9) >= 1,1-(.002*FVar(9)+.7*Root,FVar(3)),1);.005
ignorehitpause = 1

[State 6010, Scaling Limit]
type = VarSet
trigger1 = FVar(8) < 0.10
fvar(8) = 0.10
ignorehitpause = 1

[State 6010, Root Dampener]
type = VarSet
trigger1 = 1
fvar(10) = FVar(8)
ignorehitpause = 1

[State 6010, PosFreeze]
type = PosFreeze
trigger1 = NumTarget(6010)
value = 1
ignorehitpause = 1
persistent = 0

[State 6010, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 6010, Explod]
type = Explod
trigger1 = !Time
ID = 7010
anim = 7010
pos = -12,Abs(Pos Y)-5
postype = P1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -1
removeongethit = 1
pausemovetime = 0
supermovetime = 0
scale = .7,.7
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 6010, Explod]
type = Explod
trigger1 = !Time
ID = 6002
anim = 6002
pos = 5,Abs(Pos Y)+5
postype = P1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -1
removeongethit = 0
pausemovetime = 0
supermovetime = 0
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 6010, ModifyExplod]
type = ModifyExplod
trigger1 = NumExplod(6002)
trigger1 = Time < 20
ID = 6002
scale = .8,.15+(.014*(Time))
ignorehitpause = 1

[State 6010, Helper]
type = Helper
trigger1 = MoveContact && NumTarget && Var(6)
trigger1 = !(Target,HitShakeOver)
trigger1 = !NumHelper(7100)
name = "Counter FX"
ID = 7100
stateno = 7100
pos = Cond(P2Dist X < -64,-64,Cond(P2Dist X < 64,Ceil(P2Dist X),64)),Ceil(P2Dist Y-64)
postype = P1    ;p2,front,back,left,right
facing = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 6010, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 6011
time = -1
ignorehitpause = 1

[State 6010, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(6010)
trigger1 = !NumExplod(6010)
trigger1 = Target(6010),StateType != L
ID = 6010
anim = 8100+Random%32
pos = 0,0
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 8
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[State 6010, HitDef]
type = HitDef
trigger1 = !NumTarget(6010)
attr = A,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium        ;light,medium,hard,back,up,diagup
air.animtype = Medium
fall.animtype = Medium
priority = 11,Hit
damage = Ceil(FVar(10)*25),1
pausetime = 6,5
sparkno = -1
guard.sparkno = S8501
sparkxy = -5,0
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
air.type = High
ground.slidetime = 20
ground.hittime = 22
ground.velocity = Cond(P2Dist X < 0,9-9*(Root,StateNo = 3002),-9+9*(Root,StateNo = 3002))
guard.velocity = -2
air.velocity = Cond(P2Dist X < 0,4-4*(Root,StateNo = 3002),-5+5*(Root,StateNo = 3002)),-8
yaccel = .5
ground.cornerpush.veloff = 0
forcestand = 1
fall = 0
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,10
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 6010

[State 6010, VelMul]
type = VelMul
trigger1 = FrontEdgeDist > 20 && BackEdgeDist > 20
trigger1 = Vel X != [-1,1]
trigger1 = Time = [0,15]
x = .92

[State 6010, VelSet]
type = VelSet
trigger1 = FrontEdgeDist <= 20
x = -1
[State 6010, VelSet]
type = VelSet
trigger1 = BackEdgeDist <= 20
x = 1

[State 6010, VarSet]
type = VarSet
trigger1 = NumEnemy
trigger1 = !MoveContact
var(6) = (EnemyNear,MoveType = A)

[State 6010, VarSet]
type = VarSet
trigger1 = MoveContact
var(16) = 1

[State 6010, StateTypeSet]
type = StateTypeSet
trigger1 = NumTarget(6010)
movetype = I        ;I,A,H

[State 6010, AttackDist]
type = AttackDist
trigger1 = 1
value = 50
ignorehitpause = 1
persistent = 1

[State 6010, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S1000,2
channel = -1
persistent = 0

[State 6010, ChangeState]
type = ChangeState
trigger1 = Var(16) = 1
value = 6011
ignorehitpause = 1

[State 6010, ChangeState]
type = ChangeState
trigger1 = Time > 300
value = 6013
ignorehitpause = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;SONIC TWISTER 2
[StateDef 6011]
type = A
physics = N
movetype = A
velset = 1,0
ctrl = 0
sprpriority = 4

[State 6011, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 6011

[State 6011, VarSet]
type = VarSet
trigger1 = !Time
var(5) = Root,Var(5)

[State 6011, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 5
ID = 6002
[State 6011, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 1
ID = 7010

[State 6011, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0;1
movecamera = 0,0
ignorehitpause = 1
persistent = 1

[State 6011, Width]
type = Width
trigger1 = 1
edge = 5,5
ignorehitpause = 1
persistent = 1

;Used to add counter hit scaling
[State 6011, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = (EnemyNear,MoveType = A)
fvar(6) = 1
ignorehitpause = 1
[State 6011, Counter Flag Reset]
type = VarSet
trigger1 = NumEnemy
trigger1 = (EnemyNear,MoveType != A)
fvar(6) = 0
ignorehitpause = 1

;Keeps track of current combo count
[State 6011, Hit Count]
type = VarAdd
trigger1 = NumTarget
trigger1 = !MoveGuarded
trigger1 = !HitPauseTime
trigger2 = Root,NumTarget
trigger2 = !Root,MoveGuarded
trigger2 = !Root,HitPauseTime
fvar(9) = 1+Root,Var(4)
ignorehitpause = 1
[State 6011, Hit Count Reset]
type = VarSet
trigger1 = NumEnemy && FVar(9)
trigger1 = (EnemyNear,MoveType != H) && (EnemyNear,StateNo != 5300)
fvar(9) = 0
ignorehitpause = 1
[State 6011, Hit Count Reset]
type = VarSet
trigger1 = MoveGuarded
trigger2 = NumEnemy
trigger2 = EnemyNear,MoveType = A
trigger3 = NumEnemy
trigger3 = EnemyNear,StateType = L
fvar(9) = 0
ignorehitpause = 1

[State 6011, Scaling]
type = VarSet
trigger1 = 1
fvar(8) = Cond(FVar(9) >= 1,1-(.002*FVar(9)+.7*Root,FVar(3)),1);.005
ignorehitpause = 1

[State 6011, Scaling Limit]
type = VarSet
trigger1 = FVar(8) < 0.10
fvar(8) = 0.10
ignorehitpause = 1

[State 6011, Root Dampener]
type = VarSet
trigger1 = 1
fvar(10) = FVar(8)
ignorehitpause = 1

[State 6011, PosFreeze]
type = PosFreeze
trigger1 = NumTarget(6011)
value = 1
ignorehitpause = 1
persistent = 0

[State 6011, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 6011, Explod]
type = Explod
trigger1 = !Time
ID = 70101
anim = 7010
pos = -12,Abs(Pos Y)-5
postype = P1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -1
removeongethit = 1
pausemovetime = 0
supermovetime = 0
scale = .7,.7
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 6011, Explod]
type = Explod
trigger1 = !NumExplod(60021)
ID = 60021
anim = 6002
pos = 5,Abs(Pos Y)+5
postype = P1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -1
removeongethit = 0
pausemovetime = 0
supermovetime = 0
scale = .8,.55
sprpriority = 3
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 6011, Helper]
type = Helper
trigger1 = MoveContact && NumTarget && Var(6)
trigger1 = !(Target,HitShakeOver)
trigger1 = !NumHelper(7100)
name = "Counter FX"
ID = 7100
stateno = 7100
pos = Cond(P2Dist X < -64,-64,Cond(P2Dist X < 64,Ceil(P2Dist X),64)),Ceil(P2Dist Y-64)
postype = P1    ;p2,front,back,left,right
facing = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 6011, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 6012
time = -1
ignorehitpause = 1

[State 6011, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(6011)
trigger1 = !NumExplod(6011)
trigger1 = Target(6011),StateType != L
ID = 6011
anim = 8100+Random%32
pos = 0,0-Abs(Ceil(P2BodyDist Y/3))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 8
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[State 6011, HitDef]
type = HitDef
trigger1 = !NumTarget(6011)
attr = A,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium        ;light,medium,hard,back,up,diagup
air.animtype = Medium
fall.animtype = Medium
priority = 11,Hit
damage = Ceil(FVar(10)*25),1
pausetime = 6,5
sparkno = -1
guard.sparkno = S8501
sparkxy = -5,-15
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = Low      ;Low,Trip,None
air.type = Low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = Cond(P2Dist X < 0,9-9*(Root,StateNo = 3002),-9+9*(Root,StateNo = 3002))
guard.velocity = -2
air.velocity = Cond(P2Dist X < 0,4-4*(Root,StateNo = 3002),-5+5*(Root,StateNo = 3002)),-6
yaccel = .5
ground.cornerpush.veloff = 0
forcestand = 1
fall = 0
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,10
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 6011

[State 6011, VelSet]
type = VelSet
trigger1 = FrontEdgeDist <= 20
x = -1
[State 6011, VelSet]
type = VelSet
trigger1 = BackEdgeDist <= 20
x = 1

[State 6011, VarSet]
type = VarSet
trigger1 = NumEnemy
trigger1 = !MoveContact
var(6) = (EnemyNear,MoveType = A)

[State 6011, VarSet]
type = VarSet
trigger1 = MoveContact
var(16) = 2

[State 6011, StateTypeSet]
type = StateTypeSet
trigger1 = NumTarget(6011)
movetype = I        ;I,A,H

[State 6011, AttackDist]
type = AttackDist
trigger1 = 1
value = 50
ignorehitpause = 1
persistent = 1

[State 6011, ChangeState]
type = ChangeState
trigger1 = Var(16) = 2
value = 6012
ignorehitpause = 1

[State 6011, ChangeState]
type = ChangeState
trigger1 = Time > 300
value = 6013
ignorehitpause = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;SONIC TWISTER 3
[StateDef 6012]
type = A
physics = N
movetype = A
velset = 1,0
ctrl = 0
sprpriority = 4

[State 6012, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 6012

[State 6012, VarSet]
type = VarSet
trigger1 = !Time
var(5) = Root,Var(5)

[State 6012, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 5
ID = 6002
[State 6012, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 5
ID = 60021
[State 6012, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 1
ID = 70101

[State 6012, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0;1
movecamera = 0,0
ignorehitpause = 1
persistent = 1

[State 6012, Width]
type = Width
trigger1 = 1
edge = 5,5
ignorehitpause = 1
persistent = 1

;Used to add counter hit scaling
[State 6012, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = (EnemyNear,MoveType = A)
fvar(6) = 1
ignorehitpause = 1
[State 6012, Counter Flag Reset]
type = VarSet
trigger1 = NumEnemy
trigger1 = (EnemyNear,MoveType != A)
fvar(6) = 0
ignorehitpause = 1

;Keeps track of current combo count
[State 6012, Hit Count]
type = VarAdd
trigger1 = NumTarget
trigger1 = !MoveGuarded
trigger1 = !HitPauseTime
trigger2 = Root,NumTarget
trigger2 = !Root,MoveGuarded
trigger2 = !Root,HitPauseTime
fvar(9) = 1+Root,Var(4)
ignorehitpause = 1
[State 6012, Hit Count Reset]
type = VarSet
trigger1 = NumEnemy && FVar(9)
trigger1 = (EnemyNear,MoveType != H) && (EnemyNear,StateNo != 5300)
fvar(9) = 0
ignorehitpause = 1
[State 6012, Hit Count Reset]
type = VarSet
trigger1 = MoveGuarded
trigger2 = NumEnemy
trigger2 = EnemyNear,MoveType = A
trigger3 = NumEnemy
trigger3 = EnemyNear,StateType = L
fvar(9) = 0
ignorehitpause = 1

[State 6012, Scaling]
type = VarSet
trigger1 = 1
fvar(8) = Cond(FVar(9) >= 1,1-(.002*FVar(9)+.7*Root,FVar(3)),1);.005
ignorehitpause = 1

[State 6012, Scaling Limit]
type = VarSet
trigger1 = FVar(8) < 0.10
fvar(8) = 0.10
ignorehitpause = 1

[State 6012, Root Dampener]
type = VarSet
trigger1 = 1
fvar(10) = FVar(8)
ignorehitpause = 1

[State 6012, PosFreeze]
type = PosFreeze
trigger1 = NumTarget(6012)
value = 1
ignorehitpause = 1
persistent = 0

[State 6012, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 6012, Explod]
type = Explod
trigger1 = !Time
ID = 70102
anim = 7010
pos = -12,Abs(Pos Y)-5
postype = P1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -1
removeongethit = 1
pausemovetime = 0
supermovetime = 0
scale = .7,.7
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 6012, Explod]
type = Explod
trigger1 = !NumExplod(60022)
ID = 60022
anim = 6002
pos = 5,Abs(Pos Y)+5
postype = P1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -1
removeongethit = 0
pausemovetime = 0
supermovetime = 0
scale = .8,.6
sprpriority = 3
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 6012, Helper]
type = Helper
trigger1 = MoveContact && NumTarget && Var(6)
trigger1 = !(Target,HitShakeOver)
trigger1 = !NumHelper(7100)
name = "Counter FX"
ID = 7100
stateno = 7100
pos = Cond(P2Dist X < -64,-64,Cond(P2Dist X < 64,Ceil(P2Dist X),64)),Ceil(P2Dist Y-64)
postype = P1    ;p2,front,back,left,right
facing = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 6012, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 6013
time = -1
ignorehitpause = 1

[State 6012, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(6012)
trigger1 = !NumExplod(6012)
trigger1 = Target(6012),StateType != L
ID = 6012
anim = 8100+Random%32
pos = 0,0-Abs(Ceil(P2BodyDist Y/3))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 8
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[State 6012, HitDef]
type = HitDef
trigger1 = !NumTarget(6012)
attr = A,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium        ;light,medium,hard,back,up,diagup
air.animtype = Medium
fall.animtype = Medium
priority = 11,Hit
damage = Ceil(FVar(10)*25),1
pausetime = 6,6
sparkno = -1
guard.sparkno = S8501
sparkxy = -5,-30
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
air.type = High
ground.slidetime = 20
ground.hittime = 20
ground.velocity = Cond(P2Dist X < 0,9-9*(Root,StateNo = 3002),-9+9*(Root,StateNo = 3002))
guard.velocity = -2
air.velocity = Cond(P2Dist X < 0,4-4*(Root,StateNo = 3002),-5+5*(Root,StateNo = 3002)),-7
yaccel = .5
ground.cornerpush.veloff = 0
forcestand = 1
fall = 0
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,10
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 6012
persistent = 0

[State 6012, VelSet]
type = VelSet
trigger1 = FrontEdgeDist <= 20
x = -1
[State 6012, VelSet]
type = VelSet
trigger1 = BackEdgeDist <= 20
x = 1

[State 6012, VarSet]
type = VarSet
trigger1 = NumEnemy
trigger1 = !MoveContact
var(6) = (EnemyNear,MoveType = A)

[State 6012, VarSet]
type = VarSet
trigger1 = MoveContact
var(16) = 3

[State 6012, VarSet]
type = VarSet
trigger1 = MoveHit
trigger1 = !MoveGuarded
trigger1 = NumTarget(6012)
trigger1 = Target(6012),MoveType = H
var(17) = 1

[State 6012, StateTypeSet]
type = StateTypeSet
trigger1 = NumTarget(6012)
movetype = I        ;I,A,H

[State 6012, AttackDist]
type = AttackDist
trigger1 = 1
value = 50
ignorehitpause = 1
persistent = 1

[State 6012, ChangeState]
type = ChangeState
trigger1 = Var(16) = 3
trigger2 = Time > 300
value = 6013
ignorehitpause = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;SONIC TWISTER END
[StateDef 6013]
type = A
physics = N
movetype = I
anim = 6001
velset = 0,0
sprpriority = 4

[State 6013, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 1+(.04*Time),1+(.02*Time)
ignorehitpause = 1
persistent = 1

[State 6013, AfterImage]
type = AfterImage
trigger1 = 1
length = 3
palbright = 1,1,1
palcontrast = 1,255,1
paladd = 0,0,0
palmul = .55,.55,.55
timegap = 2
framegap = 1
trans = Add
time = 9999

[State 6013, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 6013, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 2
ID = 6002
[State 6013, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 2
ID = 60021
[State 6013, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 2
ID = 60022
[State 6013, RemoveExplod]
type = RemoveExplod
trigger1 = !Time
ID = 7010
[State 6013, RemoveExplod]
type = RemoveExplod
trigger1 = !Time
ID = 70101
[State 6013, RemoveExplod]
type = RemoveExplod
trigger1 = !Time
ID = 70102

[State 6013, Explod]
type = Explod
trigger1 = !Time
ID = 6018
anim = 6018
pos = 4,Abs(Pos Y)
postype = P1  ;p2,front,back,left,right
facing = 1
bindtime = 1
removetime = -2
pausemovetime = 0
supermovetime = 0
scale = .5,.5
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 6013, Explod]
type = Explod
trigger1 = !Time
ID = 7011
anim = 7011
pos = -12,Abs(Pos Y)
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

[State 6013, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime

;--------------------------------------------------------------------------------------------------------------------------------------------
;SONIC TWISTER 4
[StateDef 6017]
type = A
physics = N
movetype = A
velset = 6,0
anim = 6017
ctrl = 0
sprpriority = 4

[State 6017, VarSet]
type = VarSet
trigger1 = !Time
var(5) = Root,Var(5)

[State 6017, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = .6,.7
ignorehitpause = 1
persistent = 1

[State 6017, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0
ignorehitpause = 1
persistent = 1

;Used to add counter hit scaling
[State 6017, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = (EnemyNear,MoveType = A)
fvar(6) = 1
ignorehitpause = 1
[State 6017, Counter Flag Reset]
type = VarSet
trigger1 = NumEnemy
trigger1 = (EnemyNear,MoveType != A)
fvar(6) = 0
ignorehitpause = 1

;Keeps track of current combo count
[State 6017, Hit Count]
type = VarAdd
trigger1 = NumTarget
trigger1 = !MoveGuarded
trigger1 = !HitPauseTime
trigger2 = Root,NumTarget
trigger2 = !Root,MoveGuarded
trigger2 = !Root,HitPauseTime
fvar(9) = 1+Root,Var(4)
ignorehitpause = 1
[State 6017, Hit Count Reset]
type = VarSet
trigger1 = NumEnemy && FVar(9)
trigger1 = (EnemyNear,MoveType != H) && (EnemyNear,StateNo != 5300)
fvar(9) = 0
ignorehitpause = 1
[State 6017, Hit Count Reset]
type = VarSet
trigger1 = MoveGuarded
trigger2 = NumEnemy
trigger2 = EnemyNear,MoveType = A
trigger3 = NumEnemy
trigger3 = EnemyNear,StateType = L
fvar(9) = 0
ignorehitpause = 1

[State 6017, Scaling]
type = VarSet
trigger1 = 1
fvar(8) = Cond(FVar(9) >= 1,1-(.002*FVar(9)+.7*Root,FVar(3)),1);.005
ignorehitpause = 1

[State 6017, Scaling Limit]
type = VarSet
trigger1 = FVar(8) < 0.10
fvar(8) = 0.10
ignorehitpause = 1

[State 6017, Root Dampener]
type = VarSet
trigger1 = 1
fvar(10) = FVar(8)
ignorehitpause = 1

[State 6017, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 6017, Explod]
type = Explod
trigger1 = !NumExplod(7010)
ID = 7010
anim = 7010
pos = -12,Abs(Pos Y)-5
postype = P1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = 1000
removeongethit = 0
pausemovetime = 0
supermovetime = 0
scale = .7,.7
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 6017, Helper]
type = Helper
trigger1 = MoveContact && NumTarget && Var(6)
trigger1 = !(Target,HitShakeOver)
trigger1 = !NumHelper(7100)
name = "Counter FX"
ID = 7100
stateno = 7100
pos = Cond(P2Dist X < -64,-64,Cond(P2Dist X < 64,Ceil(P2Dist X),64)),Ceil(P2Dist Y-64)
postype = P1    ;p2,front,back,left,right
facing = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 6017, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 6018
time = -1
ignorehitpause = 1

[State 6017, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(6017)
trigger1 = !NumExplod(6017)
trigger1 = Target(6017),StateType != L
ID = 6017
anim = 8100+Random%32
pos = Ceil(P2Dist X),0-Ceil(Abs(P2Dist Y))+Ceil(Target(6017),Const(Size.Mid.Pos.Y))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 8
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[State 6017, HitDef]
type = HitDef
trigger1 = !NumTarget(6017)
attr = A,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium        ;light,medium,hard,back,up,diagup
air.animtype = Medium
fall.animtype = Medium
priority = 11,Hit
damage = Ceil(FVar(10)*45),1
pausetime = 0,10
sparkno = -1
guard.sparkno = S8501
sparkxy = -5,-80
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
air.type = High
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -2,-7
guard.velocity = -2
air.velocity = -2,-7
yaccel = .5
ground.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
p2facing = 1
getpower = 0
givepower = 0,10
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 6017

[State 6017, VarSet]
type = VarSet
trigger1 = NumEnemy
trigger1 = !MoveContact
var(6) = (EnemyNear,MoveType = A)

[State 6017, VarSet]
type = VarSet
trigger1 = MoveContact
var(16) = 1

[State 6017, StateTypeSet]
type = StateTypeSet
trigger1 = NumTarget(6017)
movetype = I        ;I,A,H

[State 6017, AttackDist]
type = AttackDist
trigger1 = 1
value = 50
ignorehitpause = 1
persistent = 1

[State 6017, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S1000,2
channel = -1
persistent = 0

[State 6017, ChangeState]
type = ChangeState
trigger1 = Var(16) = 1
trigger2 = Time > 100 && RoundState != 2
trigger3 = Time > 10 && !NumExplod(7010)
value = 6018
ignorehitpause = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;SONIC TWISTER 4 END
[StateDef 6018]
type = A
physics = N
movetype = I
velset = 0,0
ctrl = 0
sprpriority = 4

[State 6018, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 3
value = 6018

[State 6018, AngleDraw]
type = AngleDraw
trigger1 = Anim = 6018
scale = .6,.7
ignorehitpause = 1
persistent = 1

[State 6018, AfterImage]
type = AfterImage
trigger1 = 1
length = 3
palbright = 1,1,1
palcontrast = 1,255,1
paladd = 0,0,0
palmul = .55,.55,.55
timegap = 2
framegap = 1
trans = Add
time = 9999

[State 6018, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 6018, RemoveExplod]
type = RemoveExplod
trigger1 = !Time
ID = 7010

[State 6018, Explod]
type = Explod
trigger1 = !Time
ID = 7011
anim = 7011
pos = -12,Abs(Pos Y)
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

[State 6018, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime

;--------------------------------------------------------------------------------------------------------------------------------------------
;SONIC HURRICANE 1
[StateDef 6020]
type = A
physics = N
movetype = A
anim = 6020
ctrl = 0
velset = 0,0
sprpriority = 4

[State 6020, VarSet]
type = VarSet
trigger1 = !Time
var(5) = Root,Var(5)

[State 6020, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 1.6,.3
ignorehitpause = 1
persistent = 1
 
;Used to add counter hit scaling
[State 6020, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = (EnemyNear,MoveType = A)
fvar(6) = 1
ignorehitpause = 1
[State 6020, Counter Flag Reset]
type = VarSet
trigger1 = NumEnemy
trigger1 = (EnemyNear,MoveType != A)
fvar(6) = 0
ignorehitpause = 1

;Keeps track of current combo count
[State 6020, Hit Count]
type = VarAdd
trigger1 = NumTarget
trigger1 = !MoveGuarded
trigger1 = !HitPauseTime
trigger2 = Root,NumTarget
trigger2 = !Root,MoveGuarded
trigger2 = !Root,HitPauseTime
fvar(9) = 1+Root,Var(4)
ignorehitpause = 1
[State 6020, Hit Count Reset]
type = VarSet
trigger1 = NumEnemy && FVar(9)
trigger1 = (EnemyNear,MoveType != H) && (EnemyNear,StateNo != 5300)
fvar(9) = 0
ignorehitpause = 1
[State 6020, Hit Count Reset]
type = VarSet
trigger1 = MoveGuarded
trigger2 = NumEnemy
trigger2 = EnemyNear,MoveType = A
trigger3 = NumEnemy
trigger3 = EnemyNear,StateType = L
fvar(9) = 0
ignorehitpause = 1

[State 6020, Scaling]
type = VarSet
trigger1 = 1
fvar(8) = Cond(FVar(9) >= 1,1-(.006*FVar(9)+.4*Root,FVar(3)),1);.02
ignorehitpause = 1

[State 6020, Scaling Limit]
type = VarSet
trigger1 = FVar(8) < 0.10
fvar(8) = 0.10
ignorehitpause = 1

[State 6020, Root Dampener]
type = VarSet
trigger1 = 1
fvar(10) = FVar(8)
ignorehitpause = 1

[State 6020, Explod]
type = Explod
trigger1 = !Time
ID = 60210
anim = 6021
pos = 0,0
postype = P1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = 100
removeongethit = 1
pausemovetime = 0
supermovetime = 0
scale = 1,1
sprpriority = -3
ownpal = 1
ignorehitpause = 1

[State 6020, Explod]
type = Explod
trigger1 = !Time
ID = 7010
anim = 7010
pos = -4,Abs(Pos Y)
postype = P1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = 500
removeongethit = 1
pausemovetime = 0
supermovetime = 0
scale = 1.1,1
sprpriority = 4
ownpal = 1
ignorehitpause = 1

[State 6020, Helper]
type = Helper
trigger1 = MoveContact && NumTarget && Var(6)
trigger1 = !(Target,HitShakeOver)
trigger1 = !NumHelper(7100)
name = "Counter FX"
ID = 7100
stateno = 7100
pos = Cond(P2Dist X < -64,-64,Cond(P2Dist X < 64,Ceil(P2Dist X),64)),Ceil(P2Dist Y-64)
postype = P1    ;p2,front,back,left,right
facing = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 6020, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = -1
ignorehitpause = 1

[State 6020, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(6020)
trigger1 = !NumExplod(6020)
trigger1 = Target(6020),StateType != L
ID = 6020
anim = 8200+Random%32
pos = Ceil(P2Dist X),0
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 6
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0
[State 6020, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(6021)
trigger1 = !NumExplod(6021)
trigger1 = Target(6021),StateType != L
ID = 6021
anim = 8200+Random%32
pos = Ceil(P2Dist X),0
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 7
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0
[State 6020, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(6022)
trigger1 = !NumExplod(6022)
trigger1 = Target(6022),StateType != L
ID = 6022
anim = 8200+Random%32
pos = Ceil(P2Dist X),0
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 8
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0
[State 6020, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(6023)
trigger1 = !NumExplod(6023)
trigger1 = Target(6023),StateType != L
ID = 6023
anim = 8200+Random%32
pos = Ceil(P2Dist X),0
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 9
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0
[State 6020, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(6024)
trigger1 = !NumExplod(6024)
trigger1 = Target(6024),StateType != L
ID = 6024
anim = 8200+Random%32
pos = Ceil(P2Dist X),0
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 10
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0
[State 6020, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(6025)
trigger1 = !NumExplod(6025)
trigger1 = Target(6025),StateType != L
ID = 6025
anim = 8200+Random%32
pos = Ceil(P2Dist X),0
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 11
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 6020, HitDef]
type = HitDef
trigger1 = !Time
attr = A,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(10)*65),1
pausetime = 0,6
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,0
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = High    ;Low,Trip,None
air.type = High
ground.slidetime = 10
ground.hittime = 10
guard.hittime = 5
ground.velocity = P2Dist X/10
air.velocity = P2Dist X/10,Cond(P2Dist Y < (Enemy,Const(Size.Mid.Pos.Y))+45,-.5,-2)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = .5
forcestand = 0
fall = 0
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,15
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
p2facing = 1
p1sprpriority = 4
hitonce = 1
ID = 6020
[State 6020, HitDef]
type = HitDef
trigger1 = Time = 7
attr = A,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(10)*65),1
pausetime = 0,6
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,0
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = Low    ;Low,Trip,None
air.type = Low
ground.slidetime = 10
ground.hittime = 10
guard.hittime = 5
ground.velocity = P2Dist X/10
air.velocity = P2Dist X/10,Cond(P2Dist Y < (Enemy,Const(Size.Mid.Pos.Y))+45,-.5,-2)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = .5
forcestand = 0
fall = 0
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,15
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
p2facing = 1
p1sprpriority = 4
hitonce = 1
ID = 6021
[State 6020, HitDef]
type = HitDef
trigger1 = Time = 14
attr = A,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(10)*65),1
pausetime = 0,6
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,0
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = High    ;Low,Trip,None
air.type = High
ground.slidetime = 10
ground.hittime = 10
guard.hittime = 5
ground.velocity = P2Dist X/10
air.velocity = P2Dist X/10,Cond(P2Dist Y < (Enemy,Const(Size.Mid.Pos.Y))+45,-.5,-2)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = .5
forcestand = 0
fall = 0
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,15
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
p2facing = 1
p1sprpriority = 4
hitonce = 1
ID = 6022
[State 6020, HitDef]
type = HitDef
trigger1 = Time = 21
attr = A,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(10)*65),1
pausetime = 0,6
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,0
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = Low    ;Low,Trip,None
air.type = Low
ground.slidetime = 10
ground.hittime = 10
guard.hittime = 5
ground.velocity = P2Dist X/10
air.velocity = P2Dist X/10,Cond(P2Dist Y < (Enemy,Const(Size.Mid.Pos.Y))+45,-.5,-2)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = .5
forcestand = 0
fall = 0
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,15
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
p2facing = 1
p1sprpriority = 4
hitonce = 1
ID = 6023
[State 6020, HitDef]
type = HitDef
trigger1 = Time = 28
attr = A,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(10)*65),1
pausetime = 0,6
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,0
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = High    ;Low,Trip,None
air.type = High
ground.slidetime = 10
ground.hittime = 10
guard.hittime = 5
ground.velocity = P2Dist X/10
air.velocity = P2Dist X/10,Cond(P2Dist Y < (Enemy,Const(Size.Mid.Pos.Y))+45,-.5,-2)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = .5
forcestand = 0
fall = 0
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,15
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
p2facing = 1
p1sprpriority = 4
hitonce = 1
ID = 6024
[State 6020, HitDef]
type = HitDef
trigger1 = Time = 35
attr = A,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(10)*65),1
pausetime = 0,8
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,0
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = Low    ;Low,Trip,None
air.type = Low
ground.slidetime = 10
ground.hittime = 10
guard.hittime = 5
ground.velocity = Cond(P2Dist X < 0,2,-2),-11
air.velocity = Cond(P2Dist X < 0,2,-2),-11
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = .5
forcestand = 0
fall = 1
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,15
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
p2facing = 1
p1sprpriority = 4
hitonce = 1
ID = 6025

[State 6020, TargetBind]
type = TargetBind
trigger1 = MoveContact = 1
trigger1 = NumTarget(6020) && NumEnemy
trigger1 = (Target(6020),Time = 0) && (Target(6020),ID = EnemyNear,ID)
trigger1 = !(Target(6020),HitShakeOver) && (Target(6020),Pos Y > 0)
pos = Ceil(P2Dist X),Ceil(-Pos Y)
time = 1
ignorehitpause = 1
[State 6020, TargetBind]
type = TargetBind
trigger1 = MoveContact = 1
trigger1 = NumTarget(6021) && NumEnemy
trigger1 = (Target(6021),Time = 0) && (Target(6021),ID = EnemyNear,ID)
trigger1 = !(Target(6021),HitShakeOver) && (Target(6021),Pos Y > 0)
pos = Ceil(P2Dist X),Ceil(-Pos Y)
time = 1
ignorehitpause = 1
[State 6020, TargetBind]
type = TargetBind
trigger1 = MoveContact = 1
trigger1 = NumTarget(6022) && NumEnemy
trigger1 = (Target(6022),Time = 0) && (Target(6022),ID = EnemyNear,ID)
trigger1 = !(Target(6022),HitShakeOver) && (Target(6022),Pos Y > 0)
pos = Ceil(P2Dist X),Ceil(-Pos Y)
time = 1
ignorehitpause = 1
[State 6020, TargetBind]
type = TargetBind
trigger1 = MoveContact = 1
trigger1 = NumTarget(6023) && NumEnemy
trigger1 = (Target(6023),Time = 0) && (Target(6023),ID = EnemyNear,ID)
trigger1 = !(Target(6023),HitShakeOver) && (Target(6023),Pos Y > 0)
pos = Ceil(P2Dist X),Ceil(-Pos Y)
time = 1
ignorehitpause = 1
[State 6020, TargetBind]
type = TargetBind
trigger1 = MoveContact = 1
trigger1 = NumTarget(6024) && NumEnemy
trigger1 = (Target(6024),Time = 0) && (Target(6024),ID = EnemyNear,ID)
trigger1 = !(Target(6024),HitShakeOver) && (Target(6024),Pos Y > 0)
pos = Ceil(P2Dist X),Ceil(-Pos Y)
time = 1
ignorehitpause = 1
[State 6020, TargetBind]
type = TargetBind
trigger1 = MoveContact = 1
trigger1 = NumTarget(6025) && NumEnemy
trigger1 = (Target(6025),Time = 0) && (Target(6025),ID = EnemyNear,ID)
trigger1 = !(Target(6025),HitShakeOver) && (Target(6025),Pos Y > 0)
pos = Ceil(P2Dist X),Ceil(-Pos Y)
time = 1
ignorehitpause = 1

[State 6020, VarSet]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(6) = (EnemyNear,MoveType = A)

[State 6020, AttackDist]
type = AttackDist
trigger1 = 1
value = 50
ignorehitpause = 1
persistent = 1

[State 6020, VarSet]
type = VarSet
trigger1 = MoveContact
var(25) = 1

[State 6020, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S3001,0
channel = -1
[State 6020, PlaySnd]
type = PlaySnd
trigger1 = Time = 5
value = S3001,0
channel = -1
[State 6020, PlaySnd]
type = PlaySnd
trigger1 = Time = 10
value = S3001,0
channel = -1
[State 6020, PlaySnd]
type = PlaySnd
trigger1 = Time = 15
value = S3001,0
channel = -1
[State 6020, PlaySnd]
type = PlaySnd
trigger1 = Time = 20
value = S3001,0
channel = -1
[State 6020, PlaySnd]
type = PlaySnd
trigger1 = Time = 25
value = S3001,0
channel = -1
[State 6020, PlaySnd]
type = PlaySnd
trigger1 = Time = 35
value = S3001,0
channel = -1

[State 6020, ChangeState]
type = ChangeState
trigger1 = Time >= 50
value = 6021
ignorehitpause = 1

[State 6020, DestroySelf]
type = DestroySelf
trigger1 = Pos X != [-400,400]
trigger1 = !MoveContact

;--------------------------------------------------------------------------------------------------------------------------------------------
;SONIC HURRICANE END
[StateDef 6021]
type = A
physics = N
movetype = I
velset = 0,0
ctrl = 0
sprpriority = 4

[State 6021, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 1
value = 6001
persistent = 0

[State 6021, AngleDraw]
type = AngleDraw
trigger1 = Time >= 1
scale = 1.2+(.04*(Time-1)),.6+(.02*(Time-1))
ignorehitpause = 1

[State 6021, AfterImage]
type = AfterImage
trigger1 = 1
length = 3
palbright = 1,1,1
palcontrast = 1,255,1
paladd = 0,0,0
palmul = .55,.55,.55
timegap = 2
framegap = 1
trans = Add
time = 9999

[State 6021, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 6021, RemoveExplod]
type = RemoveExplod
trigger1 = !Time
ID = 6002
[State 6021, RemoveExplod]
type = RemoveExplod
trigger1 = !Time
ID = 60210
[State 6021, RemoveExplod]
type = RemoveExplod
trigger1 = !Time
ID = 7010

[State 6021, Explod]
type = Explod
trigger1 = !Time
ID = 7011
anim = 7011
pos = -4,Abs(Pos Y)
postype = P1  ;p2,front,back,left,right
facing = 1
bindtime = 1
removetime = -2
pausemovetime = 0
supermovetime = 0
scale = .8,.8
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 6021, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime

;--------------------------------------------------------------------------------------------------------------------------------------------
;SONIC HURRICANE 2
[StateDef 6022]
type = A
physics = N
movetype = A
anim = 6022
ctrl = 0
sprpriority = 4

[State 6022, VarSet]
type = VarSet
trigger1 = !Time
var(5) = Root,Var(5)

[State 6022, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = .7,.7
ignorehitpause = 1
persistent = 1

[State 6022, ScreenBound]
type = ScreenBound
trigger1 = Time < 50
value = 1
movecamera = 0,0
ignorehitpause = 1
persistent = 1
[State 6022, ScreenBound]
type = ScreenBound
trigger1 = Time >= 50
value = 0
movecamera = 0,0
ignorehitpause = 1
persistent = 1

[State 6022, Afterimage]
type = AfterImage
trigger1 = !Time
length = 10
palbright = 1,1,1
palcontrast = 125,155,125
paladd = 0,0,0
palmul = .55,.55,.55
timegap = 2
framegap = 2
trans = Add
time = 10
 
;Used to add counter hit scaling
[State 6022, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = (EnemyNear,MoveType = A)
fvar(6) = 1
ignorehitpause = 1
[State 6022, Counter Flag Reset]
type = VarSet
trigger1 = NumEnemy
trigger1 = (EnemyNear,MoveType != A)
fvar(6) = 0
ignorehitpause = 1

;Keeps track of current combo count
[State 6022, Hit Count]
type = VarAdd
trigger1 = NumTarget
trigger1 = !MoveGuarded
trigger1 = !HitPauseTime
trigger2 = Root,NumTarget
trigger2 = !Root,MoveGuarded
trigger2 = !Root,HitPauseTime
fvar(9) = 1+Root,Var(4)
ignorehitpause = 1
[State 6022, Hit Count Reset]
type = VarSet
trigger1 = NumEnemy && FVar(9)
trigger1 = (EnemyNear,MoveType != H) && (EnemyNear,StateNo != 5300)
fvar(9) = 0
ignorehitpause = 1
[State 6022, Hit Count Reset]
type = VarSet
trigger1 = MoveGuarded
trigger2 = NumEnemy
trigger2 = EnemyNear,MoveType = A
trigger3 = NumEnemy
trigger3 = EnemyNear,StateType = L
fvar(9) = 0
ignorehitpause = 1

[State 6022, Scaling]
type = VarSet
trigger1 = 1
fvar(8) = Cond(FVar(9) >= 1,1-(.006*FVar(9)+.4*Root,FVar(3)),1);.02
ignorehitpause = 1

[State 6022, Scaling Limit]
type = VarSet
trigger1 = FVar(8) < 0.10
fvar(8) = 0.10
ignorehitpause = 1

[State 6022, Root Dampener]
type = VarSet
trigger1 = 1
fvar(10) = FVar(8)
ignorehitpause = 1

[State 6022, Explod]
type = Explod
trigger1 = !NumExplod(6020)
ID = 6020
anim = 6020
pos = 0,0
postype = P1  ;p2,front,back,left,right
bindtime = -1
removetime = 120
removeongethit = 1
pausemovetime = 0
supermovetime = 0
scale = .2,.2
sprpriority = 3
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 6022, Explod]
type = Explod
trigger1 = NumExplod(7007) < 5
trigger1 = Time%10 = 0
ID = 7007
anim = 7007
pos = -20,Abs(Pos Y)
postype = P1  ;p2,front,back,left,right
vel = 5,0
facing = -1
bindtime = 5
removetime = -2
removeongethit = 1
pausemovetime = 0
supermovetime = 0
scale = .8,.5
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 6022, Helper]
type = Helper
trigger1 = MoveContact && NumTarget && Var(6)
trigger1 = !(Target,HitShakeOver)
trigger1 = !NumHelper(7100)
name = "Counter FX"
ID = 7100
stateno = 7100
pos = Cond(P2Dist X < -64,-64,Cond(P2Dist X < 64,Ceil(P2Dist X),64)),Ceil(P2Dist Y-64)
postype = P1    ;p2,front,back,left,right
facing = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 6022, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignorehitpause = 1

[State 6022, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(6022)
trigger1 = !NumExplod(6022)
ID = 6022
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)-60
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 6
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 6022, HitDef]
type = HitDef
trigger1 = 1
attr = A,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(10)*70),1
pausetime = 0,4
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,0
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = High    ;Low,Trip,None
air.type = High
ground.slidetime = 10
ground.hittime = 10
guard.hittime = 5
ground.velocity = -3
air.velocity = -4,-5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = .5
forcestand = 0
fall = 0
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,15
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
p2facing = 1
p1sprpriority = 4
hitonce = 1
ID = 6022

[State 6022, Explod]
type = Explod
trigger1 = MoveContact
ID = 1
anim = 6041
pos = 0,0
postype = P1
facing = 1
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .8,.8
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 6022, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 6023
time = -1
ignorehitpause = 1

[State 6022, VarSet]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(6) = (EnemyNear,MoveType = A)

[State 6022, VelSet]
type = VelSet
trigger1 = !Time
x = 20

[State 6022, VelMul]
type = VelMul
trigger1 = 1
x = .95

[State 6022, AttackDist]
type = AttackDist
trigger1 = 1
value = 50
ignorehitpause = 1
persistent = 1

[State 6022, Width]
type = Width
trigger1 = 1
player = 1,0

[State 6022, VarSet]
type = VarSet
trigger1 = MoveContact
var(25) = 1

[State 6022, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S3001,0
channel = -1

[State 6022, ChangeState]
type = ChangeState
trigger1 = Var(25) = 1
value = 6023
ignorehitpause = 1

[State 6022, ChangeState]
type = ChangeState
trigger1 = Time >= 120
value = 6027
ignorehitpause = 1

[State 6022, RemoveExplod]
type = RemoveExplod
trigger1 = Pos X != [-399,399]
ID = 7007

[State 6022, DestroySelf]
type = DestroySelf
trigger1 = Pos X != [-400,400]
trigger1 = !MoveContact

;--------------------------------------------------------------------------------------------------------------------------------------------
;SONIC HURRICANE 3
[StateDef 6023]
type = A
physics = N
movetype = A
velset = 0,0
ctrl = 0
sprpriority = 4

[State 6023, ScreenBound]
type = ScreenBound
trigger1 = Time < 50
value = 1
movecamera = 0,0
ignorehitpause = 1
persistent = 1
[State 6023, ScreenBound]
type = ScreenBound
trigger1 = Time >= 50
value = 0
movecamera = 0,0
ignorehitpause = 1
persistent = 1

[State 6023, RemoveExplod]
type = RemoveExplod
trigger1 = !Time
ID = 6020

;Used to add counter hit scaling
[State 6023, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = (EnemyNear,MoveType = A)
fvar(6) = 1
ignorehitpause = 1
[State 6023, Counter Flag Reset]
type = VarSet
trigger1 = NumEnemy
trigger1 = (EnemyNear,MoveType != A)
fvar(6) = 0
ignorehitpause = 1

;Keeps track of current combo count
[State 6023, Hit Count]
type = VarAdd
trigger1 = NumTarget
trigger1 = !MoveGuarded
trigger1 = !HitPauseTime
trigger2 = Root,NumTarget
trigger2 = !Root,MoveGuarded
trigger2 = !Root,HitPauseTime
fvar(9) = 1+Root,Var(4)
ignorehitpause = 1
[State 6023, Hit Count Reset]
type = VarSet
trigger1 = NumEnemy && FVar(9)
trigger1 = (EnemyNear,MoveType != H) && (EnemyNear,StateNo != 5300)
fvar(9) = 0
ignorehitpause = 1
[State 6023, Hit Count Reset]
type = VarSet
trigger1 = MoveGuarded
trigger2 = NumEnemy
trigger2 = EnemyNear,MoveType = A
trigger3 = NumEnemy
trigger3 = EnemyNear,StateType = L
fvar(9) = 0
ignorehitpause = 1

[State 6023, Scaling]
type = VarSet
trigger1 = 1
fvar(8) = Cond(FVar(9) >= 1,1-(.006*FVar(9)+.4*Root,FVar(3)),1);.02
ignorehitpause = 1

[State 6023, Scaling Limit]
type = VarSet
trigger1 = FVar(8) < 0.10
fvar(8) = 0.10
ignorehitpause = 1

[State 6023, Root Dampener]
type = VarSet
trigger1 = 1
fvar(10) = FVar(8)
ignorehitpause = 1

[State 6023, Explod]
type = Explod
trigger1 = !NumExplod(6020)
ID = 6020
anim = 6020
pos = 0,0
postype = P1  ;p2,front,back,left,right
bindtime = -1
removetime = 120
removeongethit = 1
pausemovetime = 0
supermovetime = 0
scale = .2,.2
sprpriority = 3
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 6023, Explod]
type = Explod
trigger1 = NumExplod(7007) < 5
trigger1 = Time%10 = 0
ID = 7007
anim = 7007
pos = -20,Abs(Pos Y)
postype = P1  ;p2,front,back,left,right
vel = 5,0
facing = -1
bindtime = 5
removetime = -2
removeongethit = 1
pausemovetime = 0
supermovetime = 0
scale = .8,.5
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 6023, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(6023)
trigger1 = !NumExplod(6023)
ID = 6023
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)-60
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 6
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 6023, HitDef]
type = HitDef
trigger1 = Time >= 5
attr = A,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(10)*70),1
pausetime = 0,4
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,0
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = Low    ;Low,Trip,None
air.type = Low
ground.slidetime = 10
ground.hittime = 10
guard.hittime = 5
ground.velocity = -3
air.velocity = -4,-5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = .5
forcestand = 0
fall = 0
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,15
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
p2facing = 1
persistent = 0
p1sprpriority = 4
hitonce = 1
ID = 6023

[State 6023, Explod]
type = Explod
trigger1 = MoveContact
ID = 2
anim = 6041
pos = 0,0
postype = P1
facing = 1
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .8,.8
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 6023, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 6024
time = -1
ignorehitpause = 1

[State 6023, VarSet]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(6) = (EnemyNear,MoveType = A)

[State 6023, VelSet]
type = VelSet
trigger1 = Time >= 5
x = 15

[State 6023, VelMul]
type = VelMul
trigger1 = Time >= 5
x = .9

[State 6023, AttackDist]
type = AttackDist
trigger1 = 1
value = 50
ignorehitpause = 1
persistent = 1

[State 6023, Width]
type = Width
trigger1 = 1
player = 1,0

[State 6023, VarSet]
type = VarSet
trigger1 = MoveContact
var(25) = 2

[State 6023, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S3001,0
channel = -1

[State 6023, ChangeState]
type = ChangeState
trigger1 = Var(25) = 2
value = 6024
ignorehitpause = 1

[State 6023, ChangeState]
type = ChangeState
trigger1 = Time >= 120
value = 6027
ignorehitpause = 1

[State 6023, RemoveExplod]
type = RemoveExplod
trigger1 = Pos X != [-399,399]
ID = 7007

[State 6023, DestroySelf]
type = DestroySelf
trigger1 = Pos X != [-400,400]

;--------------------------------------------------------------------------------------------------------------------------------------------
;SONIC HURRICANE 4
[StateDef 6024]
type = A
physics = N
movetype = A
velset = 0,0
ctrl = 0
sprpriority = 4

[State 6024, ScreenBound]
type = ScreenBound
trigger1 = Time < 50
value = 1
movecamera = 0,0
ignorehitpause = 1
persistent = 1
[State 6024, ScreenBound]
type = ScreenBound
trigger1 = Time >= 50
value = 0
movecamera = 0,0
ignorehitpause = 1
persistent = 1

[State 6024, RemoveExplod]
type = RemoveExplod
trigger1 = !Time
ID = 6020

;Used to add counter hit scaling
[State 6024, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = (EnemyNear,MoveType = A)
fvar(6) = 1
ignorehitpause = 1
[State 6024, Counter Flag Reset]
type = VarSet
trigger1 = NumEnemy
trigger1 = (EnemyNear,MoveType != A)
fvar(6) = 0
ignorehitpause = 1

;Keeps track of current combo count
[State 6024, Hit Count]
type = VarAdd
trigger1 = NumTarget
trigger1 = !MoveGuarded
trigger1 = !HitPauseTime
trigger2 = Root,NumTarget
trigger2 = !Root,MoveGuarded
trigger2 = !Root,HitPauseTime
fvar(9) = 1+Root,Var(4)
ignorehitpause = 1
[State 6024, Hit Count Reset]
type = VarSet
trigger1 = NumEnemy && FVar(9)
trigger1 = (EnemyNear,MoveType != H) && (EnemyNear,StateNo != 5300)
fvar(9) = 0
ignorehitpause = 1
[State 6024, Hit Count Reset]
type = VarSet
trigger1 = MoveGuarded
trigger2 = NumEnemy
trigger2 = EnemyNear,MoveType = A
trigger3 = NumEnemy
trigger3 = EnemyNear,StateType = L
fvar(9) = 0
ignorehitpause = 1

[State 6024, Scaling]
type = VarSet
trigger1 = 1
fvar(8) = Cond(FVar(9) >= 1,1-(.006*FVar(9)+.4*Root,FVar(3)),1);.02
ignorehitpause = 1

[State 6024, Scaling Limit]
type = VarSet
trigger1 = FVar(8) < 0.10
fvar(8) = 0.10
ignorehitpause = 1

[State 6024, Root Dampener]
type = VarSet
trigger1 = 1
fvar(10) = FVar(8)
ignorehitpause = 1

[State 6024, Explod]
type = Explod
trigger1 = !NumExplod(6020)
ID = 6020
anim = 6020
pos = 0,0
postype = P1  ;p2,front,back,left,right
bindtime = -1
removetime = 120
removeongethit = 1
pausemovetime = 0
supermovetime = 0
scale = .2,.2
sprpriority = 3
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 6024, Explod]
type = Explod
trigger1 = NumExplod(7007) < 5
trigger1 = Time%10 = 0
ID = 7007
anim = 7007
pos = -20,Abs(Pos Y)
postype = P1  ;p2,front,back,left,right
vel = 5,0
facing = -1
bindtime = 5
removetime = -2
removeongethit = 1
pausemovetime = 0
supermovetime = 0
scale = .8,.5
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 6024, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(6024)
trigger1 = !NumExplod(6024)
ID = 6024
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)-60
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 6
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 6024, HitDef]
type = HitDef
trigger1 = Time >= 5
attr = A,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(10)*70),1
pausetime = 0,4
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,0
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = High    ;Low,Trip,None
air.type = High
ground.slidetime = 10
ground.hittime = 10
guard.hittime = 5
ground.velocity = -3
air.velocity = -4,-5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = .5
forcestand = 0
fall = 0
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,15
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
p2facing = 1
persistent = 0
p1sprpriority = 4
hitonce = 1
ID = 6024

[State 6024, Explod]
type = Explod
trigger1 = MoveContact
ID = 12
anim = 6041
pos = 0,0
postype = P1
facing = 1
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .8,.8
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 6024, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 6025
time = -1
ignorehitpause = 1

[State 6024, VarSet]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(6) = (EnemyNear,MoveType = A)

[State 6024, VelSet]
type = VelSet
trigger1 = Time >= 5
x = 15

[State 6024, VelMul]
type = VelMul
trigger1 = Time >= 5
x = .9

[State 6024, AttackDist]
type = AttackDist
trigger1 = 1
value = 50
ignorehitpause = 1
persistent = 1

[State 6024, Width]
type = Width
trigger1 = 1
player = 1,0

[State 6024, VarSet]
type = VarSet
trigger1 = MoveContact
var(25) = 3

[State 6024, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S3001,0
channel = -1

[State 6024, ChangeState]
type = ChangeState
trigger1 = Var(25) = 3
value = 6025
ignorehitpause = 1

[State 6024, ChangeState]
type = ChangeState
trigger1 = Time >= 120
value = 6027
ignorehitpause = 1

[State 6024, RemoveExplod]
type = RemoveExplod
trigger1 = Pos X != [-399,399]
ID = 7007

[State 6024, DestroySelf]
type = DestroySelf
trigger1 = Pos X != [-400,400]

;--------------------------------------------------------------------------------------------------------------------------------------------
;SONIC HURRICANE 5
[StateDef 6025]
type = A
physics = N
movetype = A
velset = 0,0
ctrl = 0
sprpriority = 4

[State 6025, ScreenBound]
type = ScreenBound
trigger1 = Time < 50
value = 1
movecamera = 0,0
ignorehitpause = 1
persistent = 1
[State 6025, ScreenBound]
type = ScreenBound
trigger1 = Time >= 50
value = 0
movecamera = 0,0
ignorehitpause = 1
persistent = 1

[State 6025, RemoveExplod]
type = RemoveExplod
trigger1 = !Time
ID = 6020

;Used to add counter hit scaling
[State 6025, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = (EnemyNear,MoveType = A)
fvar(6) = 1
ignorehitpause = 1
[State 6025, Counter Flag Reset]
type = VarSet
trigger1 = NumEnemy
trigger1 = (EnemyNear,MoveType != A)
fvar(6) = 0
ignorehitpause = 1

;Keeps track of current combo count
[State 6025, Hit Count]
type = VarAdd
trigger1 = NumTarget
trigger1 = !MoveGuarded
trigger1 = !HitPauseTime
trigger2 = Root,NumTarget
trigger2 = !Root,MoveGuarded
trigger2 = !Root,HitPauseTime
fvar(9) = 1+Root,Var(4)
ignorehitpause = 1
[State 6025, Hit Count Reset]
type = VarSet
trigger1 = NumEnemy && FVar(9)
trigger1 = (EnemyNear,MoveType != H) && (EnemyNear,StateNo != 5300)
fvar(9) = 0
ignorehitpause = 1
[State 6025, Hit Count Reset]
type = VarSet
trigger1 = MoveGuarded
trigger2 = NumEnemy
trigger2 = EnemyNear,MoveType = A
trigger3 = NumEnemy
trigger3 = EnemyNear,StateType = L
fvar(9) = 0
ignorehitpause = 1

[State 6025, Scaling]
type = VarSet
trigger1 = 1
fvar(8) = Cond(FVar(9) >= 1,1-(.006*FVar(9)+.4*Root,FVar(3)),1);.02
ignorehitpause = 1

[State 6025, Scaling Limit]
type = VarSet
trigger1 = FVar(8) < 0.10
fvar(8) = 0.10
ignorehitpause = 1

[State 6025, Root Dampener]
type = VarSet
trigger1 = 1
fvar(10) = FVar(8)
ignorehitpause = 1

[State 6025, Explod]
type = Explod
trigger1 = !NumExplod(6020)
ID = 6020
anim = 6020
pos = 0,0
postype = P1  ;p2,front,back,left,right
bindtime = -1
removetime = 120
removeongethit = 1
pausemovetime = 0
supermovetime = 0
scale = .2,.2
sprpriority = 3
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 6025, Explod]
type = Explod
trigger1 = NumExplod(7007) < 5
trigger1 = Time%10 = 0
ID = 7007
anim = 7007
pos = -20,Abs(Pos Y)
postype = P1  ;p2,front,back,left,right
vel = 5,0
facing = -1
bindtime = 5
removetime = -2
removeongethit = 1
pausemovetime = 0
supermovetime = 0
scale = .8,.5
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 6025, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(6025)
trigger1 = !NumExplod(6025)
ID = 6025
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)-60
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 6
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 6025, HitDef]
type = HitDef
trigger1 = Time >= 5
attr = A,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(10)*70),1
pausetime = 0,4
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,0
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = Low    ;Low,Trip,None
air.type = Low
ground.slidetime = 10
ground.hittime = 10
guard.hittime = 5
ground.velocity = -3
air.velocity = -4,-5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = .5
forcestand = 0
fall = 0
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,15
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
p2facing = 1
persistent = 0
p1sprpriority = 4
hitonce = 1
ID = 6025

[State 6025, Explod]
type = Explod
trigger1 = MoveContact
ID = 13
anim = 6041
pos = 0,0
postype = P1
facing = 1
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .8,.8
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 6025, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 6026
time = -1
ignorehitpause = 1

[State 6025, VarSet]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(6) = (EnemyNear,MoveType = A)

[State 6025, VelSet]
type = VelSet
trigger1 = Time >= 5
x = 15

[State 6025, VelMul]
type = VelMul
trigger1 = Time >= 5
x = .9

[State 6025, AttackDist]
type = AttackDist
trigger1 = 1
value = 50
ignorehitpause = 1
persistent = 1

[State 6025, Width]
type = Width
trigger1 = 1
player = 1,0

[State 6025, VarSet]
type = VarSet
trigger1 = MoveContact
var(25) = 4

[State 6025, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S3001,0
channel = -1

[State 6025, ChangeState]
type = ChangeState
trigger1 = Var(25) = 4
value = 6026
ignorehitpause = 1

[State 6025, ChangeState]
type = ChangeState
trigger1 = Time >= 120
value = 6027
ignorehitpause = 1

[State 6025, RemoveExplod]
type = RemoveExplod
trigger1 = Pos X != [-399,399]
ID = 7007

[State 6025, DestroySelf]
type = DestroySelf
trigger1 = Pos X != [-400,400]

;--------------------------------------------------------------------------------------------------------------------------------------------
;SONIC HURRICANE 6
[StateDef 6026]
type = A
physics = N
movetype = A
velset = 0,0
ctrl = 0
sprpriority = 4

[State 6026, ScreenBound]
type = ScreenBound
trigger1 = Time < 50
value = 1
movecamera = 0,0
ignorehitpause = 1
persistent = 1
[State 6026, ScreenBound]
type = ScreenBound
trigger1 = Time >= 50
value = 0
movecamera = 0,0
ignorehitpause = 1
persistent = 1

[State 6026, RemoveExplod]
type = RemoveExplod
trigger1 = !Time
ID = 6020

;Used to add counter hit scaling
[State 6026, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = (EnemyNear,MoveType = A)
fvar(6) = 1
ignorehitpause = 1
[State 6026, Counter Flag Reset]
type = VarSet
trigger1 = NumEnemy
trigger1 = (EnemyNear,MoveType != A)
fvar(6) = 0
ignorehitpause = 1

;Keeps track of current combo count
[State 6026, Hit Count]
type = VarAdd
trigger1 = NumTarget
trigger1 = !MoveGuarded
trigger1 = !HitPauseTime
trigger2 = Root,NumTarget
trigger2 = !Root,MoveGuarded
trigger2 = !Root,HitPauseTime
fvar(9) = 1+Root,Var(4)
ignorehitpause = 1
[State 6026, Hit Count Reset]
type = VarSet
trigger1 = NumEnemy && FVar(9)
trigger1 = (EnemyNear,MoveType != H) && (EnemyNear,StateNo != 5300)
fvar(9) = 0
ignorehitpause = 1
[State 6026, Hit Count Reset]
type = VarSet
trigger1 = MoveGuarded
trigger2 = NumEnemy
trigger2 = EnemyNear,MoveType = A
trigger3 = NumEnemy
trigger3 = EnemyNear,StateType = L
fvar(9) = 0
ignorehitpause = 1

[State 6026, Scaling]
type = VarSet
trigger1 = 1
fvar(8) = Cond(FVar(9) >= 1,1-(.006*FVar(9)+.4*Root,FVar(3)),1);.02
ignorehitpause = 1

[State 6026, Scaling Limit]
type = VarSet
trigger1 = FVar(8) < 0.10
fvar(8) = 0.10
ignorehitpause = 1

[State 6026, Root Dampener]
type = VarSet
trigger1 = 1
fvar(10) = FVar(8)
ignorehitpause = 1

[State 6026, Explod]
type = Explod
trigger1 = !NumExplod(6020)
ID = 6020
anim = 6020
pos = 0,0
postype = P1  ;p2,front,back,left,right
bindtime = -1
removetime = 120
removeongethit = 1
pausemovetime = 0
supermovetime = 0
scale = .2,.2
sprpriority = 3
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 6026, Explod]
type = Explod
trigger1 = NumExplod(7007) < 5
trigger1 = Time%10 = 0
ID = 7007
anim = 7007
pos = -20,Abs(Pos Y)
postype = P1  ;p2,front,back,left,right
vel = 5,0
facing = -1
bindtime = 5
removetime = -2
removeongethit = 1
pausemovetime = 0
supermovetime = 0
scale = .8,.5
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 6026, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(6026)
trigger1 = !NumExplod(6026)
ID = 6026
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)-60
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 6
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 6026, HitDef]
type = HitDef
trigger1 = Time >= 5
attr = A,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(10)*70),1
pausetime = 2,4
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,0
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = High    ;Low,Trip,None
air.type = High
ground.slidetime = 10
ground.hittime = 100
air.hittime = 100
guard.hittime = 5
ground.velocity = -2,-9
air.velocity = -2,-9
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = .5
forcestand = 0
fall = 1
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,15
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
p2facing = 1
persistent = 0
p1sprpriority = 4
hitonce = 1
ID = 6026

[State 6026, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 6027
time = -1
ignorehitpause = 1

[State 6026, VarSet]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(6) = (EnemyNear,MoveType = A)

[State 6026, VelSet]
type = VelSet
trigger1 = Time >= 5
x = 15

[State 6026, VelMul]
type = VelMul
trigger1 = Time >= 5
x = .9

[State 6026, VelSet]
type = VelSet
trigger1 = NumTarget(6025)
trigger1 = !Target(6025),HitShakeOver
trigger2 = NumTarget(6026)
trigger2 = !Target(6026),HitShakeOver
x = 0

[State 6026, AttackDist]
type = AttackDist
trigger1 = 1
value = 50
ignorehitpause = 1
persistent = 1

[State 6026, Width]
type = Width
trigger1 = 1
player = 1,0

[State 6026, VarSet]
type = VarSet
trigger1 = MoveContact
var(25) = 5

[State 6026, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S3001,0
channel = -1

[State 6026, ChangeState]
type = ChangeState
trigger1 = Var(25) = 5
value = 6027
ignorehitpause = 0

[State 6026, ChangeState]
type = ChangeState
trigger1 = Time >= 120
value = 6027
ignorehitpause = 1

[State 6026, RemoveExplod]
type = RemoveExplod
trigger1 = Pos X != [-399,399]
ID = 7007

[State 6026, DestroySelf]
type = DestroySelf
trigger1 = Pos X != [-400,400]

;--------------------------------------------------------------------------------------------------------------------------------------------
;SONIC HURRICANE END 2
[StateDef 6027]
type = A
physics = N
movetype = I
anim = 6041
velset = 0,0
ctrl = 0
sprpriority = 4

[State 6027, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 6041 && !AnimTime
value = 9999

[State 6027, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = 1,1;.4,.4
ignorehitpause = 1
persistent = 1

[State 6027, AfterImage]
type = AfterImage
trigger1 = 1
length = 3
palbright = 1,1,1
palcontrast = 1,255,1
paladd = 0,0,0
palmul = .55,.55,.55
timegap = 2
framegap = 1
trans = Add
time = 9999

[State 6027, Turn]
type = Turn
trigger1 = !Time
ignorehitpause = 1

[State 6027, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 6027, RemoveExplod]
type = RemoveExplod
trigger1 = !Time
ID = 6020

[State 6027, RemoveExplod]
type = RemoveExplod
trigger1 = !Time
ID = 7007

[State 6027, RemoveExplod]
type = RemoveExplod
trigger1 = !Time
ID = 7012

[State 6027, Explod]
type = Explod
trigger1 = Anim = 6041 && !Time
ID = 7300
anim = 7300
pos = 0,0
postype = P1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
pausemovetime = 1
supermovetime = 0
scale = 1,1;.85,.85
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 6027, DestroySelf]
type = DestroySelf
trigger1 = Time >= 19

;remove 6020, 7007

;--------------------------------------------------------------------------------------------------------------------------------------------
;CHARGE 1
[StateDef 6029]
type = A
movetype = I
physics = N
ctrl = 0
anim = 9999
sprpriority = 2
velset = 0,0

[State 6029, Explod]
type = Explod
trigger1 = !Time
ID = 6029
anim = 6029
pos = 0,0
postype = P1
scale = .1,.1
removetime = 15
sprpriority = 13
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1
bindtime = 1
ownpal = 1

[State 6029, ModifyExplod]
type = ModifyExplod
trigger1 = NumExplod(6029)
ID = 6029
scale = .1+(.12*(Time)),.1+(.12*(Time))
;trans = AddAlpha
;alpha = Ceil(256-25.6*(Time)),256

[State 6029, RemoveExplod]
type = RemoveExplod
trigger1 = Time >= 15

[State 6029, DestroySelf]
type = DestroySelf
trigger1 = Time >= 15

;--------------------------------------------------------------------------------------------------------------------------------------------
;TORNADO 1
[StateDef 6030]
type = A
movetype = I
physics = N
anim = 6030

[State 6030, VarSet]
type = VarSet
trigger1 = !Time
var(0) = Const(Size.ShadowOffset)

[State 6030, AngleDraw]
type = AngleDraw
trigger1 = !IsHelper(6030)
trigger1 = !IsHelper(6031)
scale = 1,1
ignorehitpause = 1
persistent = 1

[State 6030, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(6030)
value = 90
scale = 1.3,1.2
ignorehitpause = 1
persistent = 1

[State 6030, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(6031)
scale = .5,.6
ignorehitpause = 1
persistent = 1

[State 6030, Afterimage]
type = AfterImage
trigger1 = Time = 5
length = 3
palbright = 1,1,1
palcontrast = 1,255,1
paladd = 0,0,0
palmul = .55,.55,.55
timegap = 2
framegap = 1
trans = Add
time = 9999

[State 6030, BindToRoot]
type = BindToRoot
triggerall = !Time
trigger1 = IsHelper(1)
time = 1
pos = 1,6
[State 6030, BindToRoot]
type = BindToRoot
triggerall = IsHelper(2)
trigger1 = !Time
time = 1
pos = 60,0
[State 6030, BindToRoot]
type = BindToRoot
triggerall = !Time
trigger1 = IsHelper(3)
time = 1
pos = 20,-6
[State 6030, BindToRoot]
type = BindToRoot
triggerall = IsHelper(4)
trigger1 = !Time
time = 1
pos = -30,0

[State 6030, BindToRoot]
type = BindToRoot
triggerall = !Time
trigger1 = IsHelper(6030)
time = 70
pos = 110,-65

[State 6030, PosSet]
type = PosSet
trigger1 = IsHelper(6031)
x = PlayerID(Var(0)),Pos X
y = PlayerID(Var(0)),Pos Y

[State 6030, SprPriority]
type = SprPriority
triggerall = IsHelper(1)
trigger1 = Vel X > 0
value = 7
ignorehitpause = 1
[State 6030, SprPriority]
type = SprPriority
triggerall = IsHelper(1)
trigger1 = Vel X <= 0
value = -7
ignorehitpause = 1

[State 6030, SprPriority]
type = SprPriority
triggerall = IsHelper(2)
trigger1 = Vel X > 0
value = 8
ignorehitpause = 1
[State 6030, SprPriority]
type = SprPriority
triggerall = IsHelper(2)
trigger1 = Vel X <= 0
value = -8
ignorehitpause = 1

[State 6030, SprPriority]
type = SprPriority
triggerall = IsHelper(3)
trigger1 = Vel X > 0
value = 9
ignorehitpause = 1
[State 6030, SprPriority]
type = SprPriority
triggerall = IsHelper(3)
trigger1 = Vel X <= 0
value = -9
ignorehitpause = 1

[State 6030, SprPriority]
type = SprPriority
triggerall = IsHelper(4)
trigger1 = Vel X > 0
value = 10
ignorehitpause = 1
[State 6030, SprPriority]
type = SprPriority
triggerall = IsHelper(4)
trigger1 = Vel X <= 0
value = -10
ignorehitpause = 1

[State 6030, SprPriority]
type = SprPriority
trigger1 = IsHelper(6030)
value = 25
ignorehitpause = 1

[State 6030, SprPriority]
type = SprPriority
trigger1 = IsHelper(6031)
value = 31

[State 6030, VelSet]
type = VelSet
triggerall = IsHelper(1)
trigger1 = !Time
trigger2 = RootDist X >= 55
x = 7
[State 6030, VelSet]
type = VelSet
triggerall = IsHelper(1)
trigger1 = RootDist X <= -80
x = -7
[State 6030, VelSet]
type = VelSet
triggerall = IsHelper(1)
triggerall = Pos Y > 0
trigger1 = !Time
trigger2 = RootDist X = [-3,3]
y = -.7
[State 6030, PosSet]
type = PosSet
triggerall = IsHelper(1)
trigger1 = Pos Y >= 12
y = 11
[State 6030, PosSet]
type = PosSet
triggerall = IsHelper(1)
trigger1 = Pos Y <= -5
y = -4
[State 6030, VelSet]
type = VelSet
triggerall = IsHelper(1)
triggerall = Pos Y < 0
trigger1 = RootDist X = [-3,3]
y = 1.2

[State 6030, VelSet]
type = VelSet
triggerall = IsHelper(2)
trigger1 = !Time
trigger2 = RootDist X <= -80
x = -7
[State 6030, VelSet]
type = VelSet
triggerall = IsHelper(2)
trigger1 = RootDist X >= 55
x = 7
[State 6030, VelSet]
type = VelSet
triggerall = IsHelper(2)
triggerall = Pos Y >= 0
trigger1 = !Time
trigger2 = RootDist X = [-3,3]
y = -.7
[State 6030, PosSet]
type = PosSet
triggerall = IsHelper(2)
trigger1 = Pos Y >= 12
y = 11
[State 6030, PosSet]
type = PosSet
triggerall = IsHelper(2)
trigger1 = Pos Y <= -5
y = -4
[State 6030, VelSet]
type = VelSet
triggerall = IsHelper(2)
triggerall = Pos Y < 0
trigger1 = RootDist X = [-3,3]
y = 1.2

[State 6030, VelSet]
type = VelSet
triggerall = IsHelper(3)
trigger1 = !Time
trigger2 = RootDist X <= -80
x = -7
[State 6030, VelSet]
type = VelSet
triggerall = IsHelper(3)
trigger1 = RootDist X >= 55
x = 7
[State 6030, VelSet]
type = VelSet
triggerall = IsHelper(3)
triggerall = Pos Y < 0
trigger1 = !Time
trigger2 = RootDist X = [-3,3]
y = 1.2
[State 6030, PosSet]
type = PosSet
triggerall = IsHelper(3)
trigger1 = Pos Y >= 12
y = 11
[State 6030, PosSet]
type = PosSet
triggerall = IsHelper(3)
trigger1 = Pos Y <= -5
y = -4
[State 6030, VelSet]
type = VelSet
triggerall = IsHelper(3)
triggerall = Pos Y > 0
trigger1 = RootDist X = [-3,3]
y = -.7

[State 6030, VelSet]
type = VelSet
triggerall = IsHelper(4)
trigger1 = !Time
trigger2 = RootDist X >= 55
x = 7
[State 6030, VelSet]
type = VelSet
triggerall = IsHelper(4)
trigger1 = RootDist X <= -80
x = -7
[State 6030, VelSet]
type = VelSet
triggerall = IsHelper(4)
triggerall = Pos Y <= 0
trigger1 = !Time
trigger2 = RootDist X = [-3,3]
y = 1.2
[State 6030, PosSet]
type = PosSet
triggerall = IsHelper(4)
trigger1 = Pos Y >= 12
y = 11
[State 6030, PosSet]
type = PosSet
triggerall = IsHelper(4)
trigger1 = Pos Y <= -5
y = -4
[State 6030, VelSet]
type = VelSet
triggerall = IsHelper(4)
triggerall = Pos Y > 0
trigger1 = RootDist X = [-3,3]
y = -.7

[State 6030, Helper]
type = Helper
trigger1 = IsHelper(6031)
trigger1 = Time%7 = 0
ID = 6032
stateno = 6032
pos = 0,0
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 900
supermovetime = 900
ignorehitpause = 1

;[State 6030, Explod]
;type = Explod
;trigger1 = IsHelper(6031)
;trigger1 = Time%7 = 0
;ID = 6041
;anim = 6041
;pos = 0,0
;postype = P1  ;p2,front,back,left,right
;bindtime = -1
;removetime = -2
;supermovetime = 900
;pausemovetime = 900
;scale = .2,.05
;sprpriority = 29
;ownpal = 0
;ignorehitpause = 1

[State 6030, ChangeState]
type = ChangeState
trigger1 = Root,MoveType = H
trigger2 = Root,StateNo = 3003
trigger3 = Root,StateNo = 3205 && Root,Time >= 66
trigger4 = Root,StateNo = 4209 && Root,AnimElem = 4
trigger5 = Root,StateNo = 1251111
trigger6 = Root,StateNo = [1251125,1251127]
value = 6031

;--------------------------------------------------------------------------------------------------------------------------------------------
;TORNADO 2
[StateDef 6031]
type = A
movetype = I
physics = N
anim = 6031
sprpriority = 32

[State 6031, AngleDraw]
type = AngleDraw
trigger1 = !IsHelper(6030)
scale = 1,1
ignorehitpause = 1
persistent = 1

[State 6031, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(6030)
value = 90
scale = 1.3,1.2
ignorehitpause = 1
persistent = 1

[State 6031, VelMul]
type = VelMul
trigger1 = !IsHelper(6030)
x = .9
y = .6

[State 6031, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime

;--------------------------------------------------------------------------------------------------------------------------------------------
;TORNADO FX 1
[StateDef 6032]
type = A
movetype = I
physics = N
anim = 6041

[State 6032, SprPriority]
type = SprPriority
trigger1 = 1
value = 29

[State 6032, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = .2,.05
ignorehitpause = 1
persistent = 1

[State 6032, Afterimage]
type = AfterImage
trigger1 = Time = 5
length = 3
palbright = 1,1,1
palcontrast = 1,255,1
paladd = 0,0,0
palmul = .55,.55,.55
timegap = 2
framegap = 1
trans = Add
time = 9999

;[State 6032, Explod]
;type = Explod
;trigger1 = !Time
;ID = 3000
;anim = 8200+Random%32
;pos = 0,0
;postype = P1
;facing = Cond(Random > 500,1,-1)
;sprpriority = 30
;scale = .2,.2
;ownpal = 1
;supermovetime = 0
;pausemovetime = 0
;ignorehitpause = 1

[State 6032, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime

;--------------------------------------------------------------------------------------------------------------------------------------------
;CHARGE 2
[StateDef 6033]
type = A
movetype = I
physics = N
ctrl = 0
anim = 9999
sprpriority = 2
velset = 0,0

[State 6033, SprPriority]
type = SprPriority
trigger1 = Root,StateNo = [3203,3205]
value = 23
ignorehitpause = 1
persistent = 1

[State 6033, Explod]
type = Explod
trigger1 = !Time
ID = 6033
anim = 6033
pos = 0,0
postype = P1
scale = .1,.1
removetime = 15
sprpriority = 13
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1
bindtime = 1
ownpal = 1

[State 6033, ModifyExplod]
type = ModifyExplod
trigger1 = NumExplod(6033)
ID = 6033
scale = .1+(.12*(Time)),.1+(.12*(Time))
trans = AddAlpha
alpha = Ceil(256-25.6*(Time)),256

[State 6033, RemoveExplod]
type = RemoveExplod
trigger1 = Time >= 15

[State 6033, DestroySelf]
type = DestroySelf
trigger1 = Time >= 15

;--------------------------------------------------------------------------------------------------------------------------------------------
;CHARGE 3
[StateDef 6034]
type = A
movetype = I
physics = N
ctrl = 0
anim = 9999
sprpriority = 4
velset = 0,0

[State 6034, Explod]
type = Explod
trigger1 = !Time
ID = 6034
anim = 6034
pos = 0,0
postype = P1
scale = 2,2
removetime = -1
sprpriority = 13
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1
bindtime = 1
ownpal = 1

[State 6034, ModifyExplod]
type = ModifyExplod
trigger1 = NumExplod(6034)
ID = 6034
scale = 2-(.15*(Time)),2-(.15*(Time))
;trans = AddAlpha
;alpha = Ceil(256-25.6*(Time)),256

[State 6034, RemoveExplod]
type = RemoveExplod
trigger1 = Time >= 14

[State 6034, DestroySelf]
type = DestroySelf
trigger1 = Time >= 15

;--------------------------------------------------------------------------------------------------------------------------------------------
;CHARGE 4
[StateDef 6035]
type = A
movetype = I
physics = N
ctrl = 0
anim = 9999
sprpriority = 4
velset = 0,0

[State 6035, Explod]
type = Explod
trigger1 = !Time
ID = 6035
anim = 6035
pos = 0,0
postype = P1
scale = 2,2
removetime = -1
sprpriority = 13
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1
bindtime = 1
ownpal = 1

[State 6035, ModifyExplod]
type = ModifyExplod
trigger1 = NumExplod(6035)
ID = 6035
scale = .1+(.12*(Time)),.1+(.12*(Time))

[State 6035, RemoveExplod]
type = RemoveExplod
trigger1 = Time >= 14

[State 6035, DestroySelf]
type = DestroySelf
trigger1 = Time >= 15

;--------------------------------------------------------------------------------------------------------------------------------------------
;CHARGE 5
[StateDef 6036]
type = A
movetype = I
physics = N
ctrl = 0
anim = 9999
sprpriority = 4
velset = 0,0

[State 6036, Explod]
type = Explod
trigger1 = !Time
ID = 6035
anim = 6035
pos = 0,0
postype = P1
scale = 2,2
removetime = -1
sprpriority = 13
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1
bindtime = 1
ownpal = 1

[State 6036, ModifyExplod]
type = ModifyExplod
trigger1 = NumExplod(6035)
ID = 6035
scale = 2-(.15*(Time)),2-(.15*(Time))

[State 6036, RemoveExplod]
type = RemoveExplod
trigger1 = Time >= 14

[State 6036, DestroySelf]
type = DestroySelf
trigger1 = Time >= 15

;--------------------------------------------------------------------------------------------------------------------------------------------
;SONIC BLADE 1
[StateDef 6040]
type = A
physics = N
movetype = A
anim = 6040
ctrl = 0
velset = 1,0
sprpriority = 3

[State 6040, VarSet]
type = VarSet
trigger1 = !Time
var(5) = Root,Var(5)

[State 6040, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = .3,.3
ignorehitpause = 1
persistent = 1

[State 6040, AfterImage]
type = AfterImage
trigger1 = 1
length = 3
palbright = 1,1,1
palcontrast = 1,255,1
paladd = 0,0,0
palmul = .55,.55,.55
timegap = 2
framegap = 1
trans = Add
time = 9999

[State 6040, ScreenBound]
type = ScreenBound
trigger1 = Time < 30
value = 1
movecamera = 0,0
ignorehitpause = 1
persistent = 1
[State 6040, ScreenBound]
type = ScreenBound
trigger1 = Time >= 30
value = 0
movecamera = 0,0
ignorehitpause = 1
persistent = 1

[State 6040, Width]
type = Width
trigger1 = 1
edge = 1,1
ignorehitpause = 1
persistent = 1

[State 6040, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

;Used to add counter hit scaling
[State 6040, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = (EnemyNear,MoveType = A)
fvar(6) = 1
ignorehitpause = 1
[State 6040, Counter Flag Reset]
type = VarSet
trigger1 = NumEnemy
trigger1 = (EnemyNear,MoveType != A)
fvar(6) = 0
ignorehitpause = 1

;Keeps track of current combo count
[State 6040, Hit Count]
type = VarAdd
trigger1 = NumTarget
trigger1 = !MoveGuarded
trigger1 = !HitPauseTime
trigger2 = Root,NumTarget
trigger2 = !Root,MoveGuarded
trigger2 = !Root,HitPauseTime
fvar(9) = 1+Root,Var(4)
ignorehitpause = 1
[State 6040, Hit Count Reset]
type = VarSet
trigger1 = NumEnemy && FVar(9)
trigger1 = (EnemyNear,MoveType != H) && (EnemyNear,StateNo != 5300)
fvar(9) = 0
ignorehitpause = 1
[State 6040, Hit Count Reset]
type = VarSet
trigger1 = MoveGuarded
trigger2 = NumEnemy
trigger2 = EnemyNear,MoveType = A
trigger3 = NumEnemy
trigger3 = EnemyNear,StateType = L
fvar(9) = 0
ignorehitpause = 1

[State 6040, Scaling]
type = VarSet
trigger1 = 1
fvar(8) = Cond(FVar(9) >= 1,1-(.003*FVar(9)+.7*Root,FVar(3)),1);.01
ignorehitpause = 1

[State 6040, Scaling Limit]
type = VarSet
trigger1 = FVar(8) < 0.10
fvar(8) = 0.10
ignorehitpause = 1

[State 6040, Root Dampener]
type = VarSet
trigger1 = 1
fvar(10) = FVar(8);*Cond(FVar(6) = 1,1.2,1)
ignorehitpause = 1

[State 6040, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 6040, Explod]
type = Explod
trigger1 = !Time;Time%12 = 0
ID = 6060;6045
anim = 6060;6045
postype = P1  ;p2,front,back,left,right
pos = 0,0
bindtime = -1
removetime = Cond(Var(5) = 2,70,Cond(Var(5) = 1,60,50))
supermovetime = 0
pausemovetime = 0
scale = .3,1.1;.2,.4
sprpriority = 3
ownpal = 1
ignorehitpause = 1
;[State 6040, Explod]
;type = Explod
;trigger1 = Time%12 = 0
;ID = 60451
;anim = 6045
;postype = P1  ;p2,front,back,left,right
;pos = 0,0
;facing = -1
;vfacing = -1
;bindtime = -1
;removetime = -2
;supermovetime = 0
;pausemovetime = 0
;scale = .2,.2
;sprpriority = 3
;ownpal = 1
;ignorehitpause = 1

[State 6040, Explod]
type = Explod
trigger1 = Time%5 = 0
ID = 6041
anim = 6041
postype = P1  ;p2,front,back,left,right
pos = 0,0
facing = -1
bindtime = -1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .22,.22
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 6040, Explod]
type = Explod
trigger1 = NumExplod(7007) < 5
trigger1 = Time%10 = 0
ID = 7007
anim = 7007
pos = -4,Abs(Pos Y)
postype = P1  ;p2,front,back,left,right
vel = 2,0
facing = -1
bindtime = 5
removetime = -2
removeongethit = 1
pausemovetime = 0
supermovetime = 0
scale = .8,.5
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 6040, Helper]
type = Helper
trigger1 = MoveContact && NumTarget && Var(6)
trigger1 = !(Target,HitShakeOver)
trigger1 = !NumHelper(7100)
name = "Counter FX"
ID = 7100
stateno = 7100
pos = Cond(P2Dist X < -64,-64,Cond(P2Dist X < 64,Ceil(P2Dist X),64)),Ceil(P2Dist Y-64)
postype = P1    ;p2,front,back,left,right
facing = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 6040, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignorehitpause = 1

[State 6040, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(6040)
trigger1 = !NumExplod(6040)
trigger1 = Target(6040),StateType != L
ID = 6040
anim = 8100+Random%32
pos = Ceil(P2BodyDist X),Ceil(P2BodyDist Y)-60;Ceil(P2Dist X),Ceil(P2Dist Y)-60
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 8
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 6040, HitDef]
type = HitDef
trigger1 = !Var(5)
trigger1 = NumEnemy
trigger1 = Root,Var(55) < 200;!(EnemyNear,StateType = A && Root,Var(55) >= 200)
attr = A,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Light          ;light,medium,hard,back,up,diagup
air.animtype = Light
priority = 8,Hit
damage = Ceil(FVar(10)*30),1
pausetime = 0,8
guard.pausetime = 0,8
sparkno = -1
guard.sparkno = S8501
sparkxy = -5,0
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
air.type = Low
ground.slidetime = 17
ground.hittime = 17
air.hittime = 100
guard.velocity = Cond(P2Dist X < 0,13,-13)
ground.velocity = -10
air.velocity = Cond(P2Dist X > 0,.3,-1),-5
ground.cornerpush.veloff = 0
fall = 0
fall.recover = 0
air.fall = 1
kill = 1
p2facing = 0
getpower = 100,50
givepower = 0,10
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 6040

[State 6040, HitDef]
type = HitDef
trigger1 = Var(5) = 1
trigger1 = NumEnemy
trigger1 = Root,Var(55) < 200;!(EnemyNear,StateType = A && Root,Var(55) >= 200)
attr = A,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
air.animtype = Medium
priority = 8,Hit
damage = Ceil(FVar(10)*40),1
pausetime = 0,8
guard.pausetime = 0,8
sparkno = -1
guard.sparkno = S8501
sparkxy = -5,0
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
air.type = Low
ground.slidetime = 17
ground.hittime = 17
air.hittime = 100
guard.velocity = Cond(P2Dist X < 0,14,-14)
ground.velocity = -11
air.velocity = Cond(P2Dist X > 0,.3,-1),-5
ground.cornerpush.veloff = 0
fall = 0
fall.recover = 0
air.fall = 1
kill = 1
p2facing = 0
getpower = 110,55
givepower = 0,10
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 6040

[State 6040, HitDef]
type = HitDef
trigger1 = Var(5) = 2
trigger1 = NumEnemy
trigger1 = Root,Var(55) < 200;!(EnemyNear,StateType = A && Root,Var(55) >= 200)
attr = A,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard          ;light,medium,hard,back,up,diagup
air.animtype = Medium
priority = 10,Hit
damage = Ceil(FVar(10)*50),1
pausetime = 0,8
guard.pausetime = 0,8
sparkno = -1
guard.sparkno = S8501
sparkxy = -5,0
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
air.type = Low
ground.slidetime = 17
ground.hittime = 17
air.hittime = 100
guard.velocity = Cond(P2Dist X < 0,15,-15)
ground.velocity = -12
air.velocity = Cond(P2Dist X > 0,.3,-1),-5
ground.cornerpush.veloff = 0
fall = 0
fall.recover = 0
air.fall = 1
kill = 1
p2facing = 0
getpower = 120,60
givepower = 0,10
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 6040

[State 6040, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 6041
time = -1
ignorehitpause = 1

[State 6040, VarSet]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(6) = (EnemyNear,MoveType = A)

[State 6040, VarSet]
type = VarSet
trigger1 = MoveHit
trigger1 = !MoveGuarded
trigger1 = NumTarget(6040)
trigger1 = Target(6040),MoveType = H
var(16) = 1

[State 6040, ParentVarAdd]
type = ParentVarAdd
trigger1 = !MoveGuarded
trigger1 = NumTarget(6040)
trigger1 = Target(6040),StateType = A
trigger1 = Target(6040),MoveType = H
var(55) = 60
persistent = 0
[State 6040, ParentVarAdd]
type = ParentVarAdd
trigger1 = !MoveGuarded
trigger1 = NumTarget(6040)
trigger1 = Target(6040),StateType != A
trigger1 = Target(6040),MoveType = H
var(55) = 30
persistent = 0

[State 6040, VelSet]
type = VelSet
trigger1 = !Time
x = Cond(Var(5) = 2,15,Cond(Var(5) = 1,10,5))

[State 6040, VelMul]
type = VelMul
trigger1 = 1
x = Cond(Var(5) = 2,.90,Cond(Var(5) = 1,.89,.88))

[State 6040, ChangeState]
type = ChangeState
trigger1 = MoveContact
trigger2 = Time >= Cond(Var(5) = 2,70,Cond(Var(5) = 1,60,50))
value = 6041
ignorehitpause = 1

[State 6040, AttackDist]
type = AttackDist
trigger1 = 1
value = 50
ignorehitpause = 1
persistent = 1

[State 6040, DestroySelf]
type = DestroySelf
trigger1 = Pos X != [-400,400]

;--------------------------------------------------------------------------------------------------------------------------------------------
;SONIC BLADE END
[StateDef 6041]
type = A
physics = N
movetype = I
anim = 6041
velset = 0,0
ctrl = 0
sprpriority = 4

[State 6041, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 6041 && !AnimTime
value = 9999

[State 6041, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = .4,.4
ignorehitpause = 1
persistent = 1

[State 6041, Turn]
type = Turn
trigger1 = !Time
ignorehitpause = 1

[State 6041, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 6041, RemoveExplod]
type = RemoveExplod
trigger1 = !Time
ID = 6060
[State 6041, RemoveExplod]
type = RemoveExplod
trigger1 = !Time
ID = 7012

[State 6041, Explod]
type = Explod
trigger1 = Anim = 6041 && !Time
ID = 7300
anim = 7300
pos = 0,0
postype = P1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
pausemovetime = 1
supermovetime = 0
scale = .85,.85
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 6041, DestroySelf]
type = DestroySelf
trigger1 = Time >= 19

;--------------------------------------------------------------------------------------------------------------------------------------------
;SONIC BLADE 2
[StateDef 6042]
type = A
physics = N
movetype = A
anim = 6040
ctrl = 0
velset = 1,0
sprpriority = 3

[State 6042, VarSet]
type = VarSet
trigger1 = !Time
var(5) = Root,Var(5)

[State 6042, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = .3,.3
ignorehitpause = 1
persistent = 1

[State 6042, AfterImage]
type = AfterImage
trigger1 = 1
length = 3
palbright = 1,1,1
palcontrast = 1,255,1
paladd = 0,0,0
palmul = .55,.55,.55
timegap = 2
framegap = 1
trans = Add
time = 9999

;[State 6042, ScreenBound]
;type = ScreenBound
;trigger1 = Time < 30
;value = 1
;movecamera = 0,0
;ignorehitpause = 1
;persistent = 1
[State 6042, ScreenBound]
type = ScreenBound
trigger1 = 1;Time >= 30
value = 0
movecamera = 0,0
ignorehitpause = 1
persistent = 1

[State 6042, Width]
type = Width
trigger1 = 1
edge = 1,1
ignorehitpause = 1
persistent = 1

[State 6042, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

;Used to add counter hit scaling
[State 6042, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = (EnemyNear,MoveType = A)
fvar(6) = 1
ignorehitpause = 1
[State 6042, Counter Flag Reset]
type = VarSet
trigger1 = NumEnemy
trigger1 = (EnemyNear,MoveType != A)
fvar(6) = 0
ignorehitpause = 1

;Keeps track of current combo count
[State 6042, Hit Count]
type = VarAdd
trigger1 = NumTarget
trigger1 = !MoveGuarded
trigger1 = !HitPauseTime
trigger2 = Root,NumTarget
trigger2 = !Root,MoveGuarded
trigger2 = !Root,HitPauseTime
fvar(9) = 1+Root,Var(4)
ignorehitpause = 1
[State 6042, Hit Count Reset]
type = VarSet
trigger1 = NumEnemy && FVar(9)
trigger1 = (EnemyNear,MoveType != H) && (EnemyNear,StateNo != 5300)
fvar(9) = 0
ignorehitpause = 1
[State 6042, Hit Count Reset]
type = VarSet
trigger1 = MoveGuarded
trigger2 = NumEnemy
trigger2 = EnemyNear,MoveType = A
trigger3 = NumEnemy
trigger3 = EnemyNear,StateType = L
fvar(9) = 0
ignorehitpause = 1

[State 6042, Scaling]
type = VarSet
trigger1 = 1
fvar(8) = Cond(FVar(9) >= 1,1-(.003*FVar(9)+.7*Root,FVar(3)),1);.01
ignorehitpause = 1

[State 6042, Scaling Limit]
type = VarSet
trigger1 = FVar(8) < 0.10
fvar(8) = 0.10
ignorehitpause = 1

[State 6042, Root Dampener]
type = VarSet
trigger1 = 1
fvar(10) = FVar(8);*Cond(FVar(6) = 1,1.2,1)
ignorehitpause = 1

[State 6042, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 6042, Explod]
type = Explod
trigger1 = !Time
ID = 6060
anim = 6060
postype = P1  ;p2,front,back,left,right
pos = 0,0
bindtime = -1
removetime = Cond(Var(5) = 2,200,Cond(Var(5) = 1,170,140))
supermovetime = 0
pausemovetime = 0
scale = .3,1.1
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 6042, Explod]
type = Explod
trigger1 = Time%5 = 0
ID = 6041
anim = 6041
postype = P1  ;p2,front,back,left,right
pos = 0,0
facing = -1
bindtime = -1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .22,.22
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 6042, Explod]
type = Explod
trigger1 = NumExplod(7007) < 5
trigger1 = Time%10 = 0
ID = 7007
anim = 7007
pos = -4,Abs(Pos Y)
postype = P1  ;p2,front,back,left,right
vel = 2,0
facing = -1
bindtime = 5
removetime = -2
removeongethit = 1
pausemovetime = 0
supermovetime = 0
scale = .8,.5
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 6042, Helper]
type = Helper
trigger1 = MoveContact && NumTarget && Var(6)
trigger1 = !(Target,HitShakeOver)
trigger1 = !NumHelper(7100)
name = "Counter FX"
ID = 7100
stateno = 7100
pos = Cond(P2Dist X < -64,-64,Cond(P2Dist X < 64,Ceil(P2Dist X),64)),Ceil(P2Dist Y-64)
postype = P1    ;p2,front,back,left,right
facing = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 6042, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignorehitpause = 1

[State 6042, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(6042)
trigger1 = !NumExplod(6042)
trigger1 = Target(6042),StateType != L
ID = 6042
anim = 8100+Random%32
pos = Ceil(P2BodyDist X),Ceil(P2BodyDist Y)-80
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 8
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 6042, HitDef]
type = HitDef
trigger1 = NumEnemy
trigger1 = Root,Var(55) < 200;!(EnemyNear,StateType = A && Root,Var(55) >= 200)
trigger1 = !Var(5)
attr = A,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
priority = 8,Hit
damage = Ceil(FVar(10)*35),1
pausetime = 0,18
guard.pausetime = 0,8
sparkno = -1
guard.sparkno = S8501
sparkxy = -5,0
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
air.type = Low
ground.slidetime = 12
ground.hittime = 12
guard.hittime = 12
guard.ctrltime = 12
air.hittime = 100
ground.velocity = -6,-6
guard.velocity = -5
air.velocity = Cond(P2Dist X > 0,.3,-1),-5
ground.cornerpush.veloff = 0
fall = 1
fall.recover = 0
air.fall = 1
kill = 1
p2facing = 0
forcestand = 1
getpower = 25,12
givepower = 0,10
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 6042

[State 6042, HitDef]
type = HitDef
trigger1 = NumEnemy
trigger1 = Root,Var(55) < 200;!(EnemyNear,StateType = A && Root,Var(55) >= 200)
trigger1 = Var(5) = 1
attr = A,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
priority = 8,Hit
damage = Ceil(FVar(10)*50),1
pausetime = 0,18
guard.pausetime = 0,8
sparkno = -1
guard.sparkno = S8501
sparkxy = -5,0
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
air.type = Low
ground.slidetime = 13
ground.hittime = 13
guard.hittime = 13
guard.ctrltime = 13
air.hittime = 100
ground.velocity = -6,-6
guard.velocity = -5
air.velocity = Cond(P2Dist X > 0,.3,-1),-5
ground.cornerpush.veloff = 0
fall = 1
fall.recover = 0
air.fall = 1
kill = 1
p2facing = 0
forcestand = 1
getpower = 50,25
givepower = 0,10
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 6042

[State 6042, HitDef]
type = HitDef
trigger1 = NumEnemy
trigger1 = Root,Var(55) < 200;!(EnemyNear,StateType = A && Root,Var(55) >= 200)
trigger1 = Var(5) = 2
attr = A,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard          ;light,medium,hard,back,up,diagup
priority = 10,Hit
damage = Ceil(FVar(10)*65),1
pausetime = 0,18
guard.pausetime = 0,8
sparkno = -1
guard.sparkno = S8501
sparkxy = -5,0
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
air.type = Low
ground.slidetime = 15
ground.hittime = 15
guard.hittime = 15
guard.ctrltime = 15
air.hittime = 100
ground.velocity = -6,-6
guard.velocity = -5
air.velocity = Cond(P2Dist X > 0,.3,-1),-5
ground.cornerpush.veloff = 0
fall = 1
fall.recover = 0
air.fall = 1
kill = 1
p2facing = 0
forcestand = 1
getpower = 60,30
givepower = 0,10
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 6042

[State 6042, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 6043
time = -1
ignorehitpause = 1

[State 6042, VarSet]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(6) = (EnemyNear,MoveType = A)

[State 6042, VarSet]
type = VarSet
trigger1 = MoveHit
trigger1 = !MoveGuarded
trigger1 = NumTarget(6042)
trigger1 = Target(6042),MoveType = H
var(16) = 1

[State 6042, ParentVarAdd]
type = ParentVarAdd
trigger1 = !MoveGuarded
trigger1 = NumTarget(6042)
trigger1 = Target(6042),StateType = A
var(55) = 10
persistent = 0

[State 6042, VelSet]
type = VelSet
trigger1 = !Time
x = Cond(Var(5) = 2,6,Cond(Var(5) = 1,5,4))

[State 6042, ChangeState]
type = ChangeState
trigger1 = MoveContact
trigger2 = Time >= Cond(Var(5) = 2,200,Cond(Var(5) = 1,170,140))
value = 6043
ignorehitpause = 1

[State 6042, AttackDist]
type = AttackDist
trigger1 = 1
value = 50
ignorehitpause = 1
persistent = 1

[State 6042, DestroySelf]
type = DestroySelf
trigger1 = Pos X != [-400,400]

;--------------------------------------------------------------------------------------------------------------------------------------------
;SONIC BLADE 2 END
[StateDef 6043]
type = A
physics = N
movetype = I
anim = 6041
velset = 0,0
ctrl = 0
sprpriority = 4

[State 6043, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = .4,.4
ignorehitpause = 1
persistent = 1

[State 6043, Turn]
type = Turn
trigger1 = !Time
ignorehitpause = 1

[State 6043, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 6043, RemoveExplod]
type = RemoveExplod
trigger1 = !Time
ID = 6060
[State 6043, RemoveExplod]
type = RemoveExplod
trigger1 = !Time
ID = 7012

[State 6043, Explod]
type = Explod
trigger1 = !Time
ID = 7300
anim = 7300
pos = 0,0
postype = P1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
pausemovetime = 1
supermovetime = 0
scale = .85,.85
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 6043, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime

;--------------------------------------------------------------------------------------------------------------------------------------------
;EX SONIC BLADE
[StateDef 6050]
type = A
physics = N
movetype = A
anim = 6040
ctrl = 0
velset = 1,0
sprpriority = 3

[State 6050, VarSet]
type = VarSet
trigger1 = !Time
var(5) = 3

[State 6050, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = .3,.3
ignorehitpause = 1
persistent = 1

[State 6050, AfterImage]
type = AfterImage
trigger1 = 1
length = 3
palbright = 1,1,1
palcontrast = 1,255,1
paladd = 0,0,0
palmul = .55,.55,.55
timegap = 2
framegap = 1
trans = Add
time = 9999

[State 6050, ScreenBound]
type = ScreenBound
trigger1 = Time < 30
value = 1
movecamera = 0,0
ignorehitpause = 1
persistent = 1
[State 6050, ScreenBound]
type = ScreenBound
trigger1 = Time >= 30
value = 0
movecamera = 0,0
ignorehitpause = 1
persistent = 1

[State 6050, Width]
type = Width
trigger1 = 1
edge = 1,1
ignorehitpause = 1
persistent = 1

[State 6050, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

;Used to add counter hit scaling
[State 6050, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = (EnemyNear,MoveType = A)
fvar(6) = 1
ignorehitpause = 1
[State 6050, Counter Flag Reset]
type = VarSet
trigger1 = NumEnemy
trigger1 = (EnemyNear,MoveType != A)
fvar(6) = 0
ignorehitpause = 1

;Keeps track of current combo count
[State 6050, Hit Count]
type = VarAdd
trigger1 = NumTarget
trigger1 = !MoveGuarded
trigger1 = !HitPauseTime
trigger2 = Root,NumTarget
trigger2 = !Root,MoveGuarded
trigger2 = !Root,HitPauseTime
fvar(9) = 1+Root,Var(4)
ignorehitpause = 1
[State 6050, Hit Count Reset]
type = VarSet
trigger1 = NumEnemy && FVar(9)
trigger1 = (EnemyNear,MoveType != H) && (EnemyNear,StateNo != 5300)
fvar(9) = 0
ignorehitpause = 1
[State 6050, Hit Count Reset]
type = VarSet
trigger1 = MoveGuarded
trigger2 = NumEnemy
trigger2 = EnemyNear,MoveType = A
trigger3 = NumEnemy
trigger3 = EnemyNear,StateType = L
fvar(9) = 0
ignorehitpause = 1

[State 6050, Scaling]
type = VarSet
trigger1 = 1
fvar(8) = Cond(FVar(9) >= 1,1-(.001*FVar(9)+.7*Root,FVar(3)),1);.01
ignorehitpause = 1

[State 6050, Scaling Limit]
type = VarSet
trigger1 = FVar(8) < 0.10
fvar(8) = 0.10
ignorehitpause = 1

[State 6050, Root Dampener]
type = VarSet
trigger1 = 1
fvar(10) = FVar(8);*Cond(FVar(6) = 1,1.2,1)
ignorehitpause = 1

[State 6050, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 6050, Explod]
type = Explod
trigger1 = !Time
ID = 6060
anim = 6060
postype = P1  ;p2,front,back,left,right
pos = 0,0
bindtime = -1
removetime = 150
supermovetime = 0
pausemovetime = 0
scale = .3,1.1
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 6050, Explod]
type = Explod
trigger1 = Time%5 = 0
ID = 6041
anim = 6041
postype = P1  ;p2,front,back,left,right
pos = 0,0
facing = -1
bindtime = -1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .22,.22
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 6050, Explod]
type = Explod
trigger1 = NumExplod(7007) < 5
trigger1 = Time%10 = 0
ID = 7007
anim = 7007
pos = -4,Abs(Pos Y)
postype = P1  ;p2,front,back,left,right
vel = 2,0
facing = -1
bindtime = 5
removetime = -2
removeongethit = 1
pausemovetime = 0
supermovetime = 0
scale = .8,.5
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 6050, Helper]
type = Helper
trigger1 = MoveContact && NumTarget && Var(6)
trigger1 = !(Target,HitShakeOver)
trigger1 = !NumHelper(7100)
name = "Counter FX"
ID = 7100
stateno = 7100
pos = Cond(P2Dist X < -64,-64,Cond(P2Dist X < 64,Ceil(P2Dist X),64)),Ceil(P2Dist Y-64)
postype = P1    ;p2,front,back,left,right
facing = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 6050, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignorehitpause = 1

[State 6050, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(6050)
trigger1 = !NumExplod(6050)
trigger1 = Target(6050),StateType != L
ID = 6050
anim = 8100+Random%32
pos = Ceil(P2BodyDist X),Ceil(P2BodyDist Y)-60
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 8
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 6050, HitDef]
type = HitDef
trigger1 = NumEnemy
trigger1 = !(EnemyNear,StateType = A && Root,Var(55) >= 200)
attr = A,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard          ;light,medium,hard,back,up,diagup
priority = 10,Hit
damage = Ceil(FVar(10)*65),1
pausetime = 0,10
guard.pausetime = 0,8
sparkno = -1
guard.sparkno = S8501
sparkxy = -5,0
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
air.type = Low
ground.slidetime = 15
ground.hittime = 20
air.hittime = 100
ground.velocity = Cond(P2Dist X < 0,-8,8)
air.velocity = Cond(P2Dist X < 0,-3,3),-4
ground.cornerpush.veloff = 0
fall.recover = 0
air.fall = 1
p2facing = 0
getpower = 0
givepower = 0,10
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 6050

[State 6050, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 6051
time = -1
ignorehitpause = 1

[State 6050, VarSet]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(6) = (EnemyNear,MoveType = A)

[State 6050, VarSet]
type = VarSet
trigger1 = MoveHit
trigger1 = !MoveGuarded
trigger1 = NumTarget(6050)
trigger1 = Target(6050),MoveType = H
var(16) = 1

[State 6050, ParentVarAdd]
type = ParentVarAdd
trigger1 = NumTarget(6050)
trigger1 = Target(6050),StateType = A
trigger1 = Target(6050),MoveType = H
var(55) = 10
persistent = 0

[State 6050, VelSet]
type = VelSet
trigger1 = !Time
x = 2
[State 6050, VelSet]
type = VelSet
trigger1 = Time = 10
x = 18

[State 6050, VelMul]
type = VelMul
trigger1 = Time >= 10
x = .85

[State 6050, ChangeState]
type = ChangeState
trigger1 = MoveContact
trigger2 = Time >= 150
value = 6051
ignorehitpause = 1

[State 6050, AttackDist]
type = AttackDist
trigger1 = 1
value = 50
ignorehitpause = 1
persistent = 1

[State 6050, DestroySelf]
type = DestroySelf
trigger1 = Pos X != [-400,400]

;--------------------------------------------------------------------------------------------------------------------------------------------
;EX SONIC BLADE END
[StateDef 6051]
type = A
physics = N
movetype = I
velset = 0,0
ctrl = 0
sprpriority = 4

[State 6051, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 3
value = 6041

[State 6051, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 6041 && !AnimTime
value = 9999

[State 6051, AngleDraw]
type = AngleDraw
trigger1 = Anim = 6040
scale = .3,.3
ignorehitpause = 1
persistent = 1
[State 6051, AngleDraw]
type = AngleDraw
trigger1 = Anim = 6041
scale = .4,.4
ignorehitpause = 1
persistent = 1

[State 6051, Turn]
type = Turn
trigger1 = !Time
ignorehitpause = 1

[State 6051, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 6051, RemoveExplod]
type = RemoveExplod
trigger1 = !Time
ID = 6060
[State 6051, RemoveExplod]
type = RemoveExplod
trigger1 = !Time
ID = 7012

[State 6051, Explod]
type = Explod
trigger1 = Time = 3
ID = 7300
anim = 7300
pos = 0,0
postype = P1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
pausemovetime = 1
supermovetime = 0
scale = .85,.85
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 6051, DestroySelf]
type = DestroySelf
trigger1 = Time >= 22

;--------------------------------------------------------------------------------------------------------------------------------------------
;BUSTER BLADE
[StateDef 6060]
type = A
physics = N
movetype = A
anim = 6060
sprpriority = 3

[State 6060, VarSet]
type = VarSet
trigger1 = !Time
var(5) = Root,Var(5)

[State 6060, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = .19,.67
ignorehitpause = 1
persistent = 1

[State 6060, ScreenBound]
type = ScreenBound
trigger1 = Time < 30
value = 1
movecamera = 0,0
ignorehitpause = 1
persistent = 1
[State 6060, ScreenBound]
type = ScreenBound
trigger1 = Time >= 30
value = 0
movecamera = 0,0
ignorehitpause = 1
persistent = 1

[State 6060, Width]
type = Width
trigger1 = 1
edge = 1,1
ignorehitpause = 1
persistent = 1

[State 6060, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

;Used to add counter hit scaling
[State 6060, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = (EnemyNear,MoveType = A)
fvar(6) = 1
ignorehitpause = 1
[State 6060, Counter Flag Reset]
type = VarSet
trigger1 = NumEnemy
trigger1 = (EnemyNear,MoveType != A)
fvar(6) = 0
ignorehitpause = 1

;Keeps track of current combo count
[State 6060, Hit Count]
type = VarAdd
trigger1 = NumTarget
trigger1 = !MoveGuarded
trigger1 = !HitPauseTime
trigger2 = Root,NumTarget
trigger2 = !Root,MoveGuarded
trigger2 = !Root,HitPauseTime
fvar(9) = 1+Root,Var(4)
ignorehitpause = 1
[State 6060, Hit Count Reset]
type = VarSet
trigger1 = NumEnemy && FVar(9)
trigger1 = (EnemyNear,MoveType != H) && (EnemyNear,StateNo != 5300)
fvar(9) = 0
ignorehitpause = 1
[State 6060, Hit Count Reset]
type = VarSet
trigger1 = MoveGuarded
trigger2 = NumEnemy
trigger2 = EnemyNear,MoveType = A
trigger3 = NumEnemy
trigger3 = EnemyNear,StateType = L
fvar(9) = 0
ignorehitpause = 1

[State 6060, Scaling]
type = VarSet
trigger1 = 1
fvar(8) = Cond(FVar(9) >= 1,1-(.002*FVar(9)+.7*Root,FVar(3)),1);.01
ignorehitpause = 1

[State 6060, Scaling Limit]
type = VarSet
trigger1 = FVar(8) < 0.10
fvar(8) = 0.10
ignorehitpause = 1

[State 6060, Root Dampener]
type = VarSet
trigger1 = 1
fvar(10) = FVar(8);*Cond(FVar(6) = 1,1.2,1)
ignorehitpause = 1

[State 6060, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 6060, Helper]
type = Helper
trigger1 = Vel X > 3
trigger1 = (Time%2) = 1
stateno = 6266
ID = 6266
name = "Speed"
postype = P1
pos = 25,0
supermovetime = 0
pausemovetime = 0
ownpal = 1

[State 6060, Explod]
type = Explod
trigger1 = !Time
ID = 6063
anim = 6063
pos = 35,0
postype = P1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
removeongethit = 1
pausemovetime = 0
supermovetime = 0
scale = .35,.35
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 6060, Explod]
type = Explod
trigger1 = MoveContact
ID = 1
anim = 6041
pos = 0,0
postype = P1
facing = 1
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .5,.5
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 6060, Explod]
type = Explod
trigger1 = NumExplod(7007) < 5
trigger1 = Time%10 = 0
ID = 7007
anim = 7007
pos = -4,Abs(Pos Y)
postype = P1  ;p2,front,back,left,right
vel = 2,0
facing = -1
bindtime = 5
removetime = -2
removeongethit = 1
pausemovetime = 0
supermovetime = 0
scale = .8,.5
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 6060, Helper]
type = Helper
trigger1 = MoveContact && NumTarget && Var(6)
trigger1 = !(Target,HitShakeOver)
trigger1 = !NumHelper(7100)
name = "Counter FX"
ID = 7100
stateno = 7100
pos = Cond(P2Dist X < -64,-64,Cond(P2Dist X < 64,Ceil(P2Dist X),64)),Ceil(P2Dist Y-64)
postype = P1    ;p2,front,back,left,right
facing = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 6060, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignorehitpause = 1

[State 6060, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(6060)
trigger1 = !NumExplod(6060)
trigger1 = Target(6060),StateType != L
ID = 6060
anim = 8100+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)-60
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 8
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 6060, HitDef]
type = HitDef
trigger1 = !Var(5)
trigger1 = NumEnemy
trigger1 = !(EnemyNear,StateType = A && Root,Var(55) >= 200)
attr = A,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
priority = 8,Hit
damage = Ceil(FVar(10)*40),1
pausetime = 0,7
guard.pausetime = 0,8
sparkno = -1
guard.sparkno = S8501
sparkxy = -5,0
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
air.type = Low
ground.slidetime = 12
ground.hittime = 12
air.hittime = 100
ground.velocity = -5,-7
air.velocity = -5,-7
ground.cornerpush.veloff = 0
fall = 1
fall.recover = 0
air.fall = 1
kill = 1
p2facing = 0
getpower = 100,50
givepower = 0,10
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 6060

[State 6060, HitDef]
type = HitDef
trigger1 = Var(5) = 1
trigger1 = NumEnemy
trigger1 = !(EnemyNear,StateType = A && Root,Var(55) >= 200)
attr = A,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
priority = 8,Hit
damage = Ceil(FVar(10)*40),1
pausetime = 0,7
guard.pausetime = 0,8
sparkno = -1
guard.sparkno = S8501
sparkxy = -5,0
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
air.type = Low
ground.slidetime = 13
ground.hittime = 13
air.hittime = 100
ground.velocity = -5,-7
air.velocity = -5,-7
ground.cornerpush.veloff = 0
fall = 1
fall.recover = 0
air.fall = 1
kill = 1
p2facing = 0
getpower = 110,55
givepower = 0,10
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 6060

[State 6060, HitDef]
type = HitDef
trigger1 = Var(5) = 2
trigger1 = NumEnemy
trigger1 = !(EnemyNear,StateType = A && Root,Var(55) >= 200)
attr = A,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard          ;light,medium,hard,back,up,diagup
priority = 10,Hit
damage = Ceil(FVar(10)*40),1
pausetime = 0,7
guard.pausetime = 0,8
sparkno = -1
guard.sparkno = S8501
sparkxy = -5,0
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
air.type = Low
ground.slidetime = 15
ground.hittime = 15
air.hittime = 100
ground.velocity = -5,-7
air.velocity = -5,-7
ground.cornerpush.veloff = 0
fall = 1
fall.recover = 0
air.fall = 1
kill = 1
p2facing = 0
getpower = 120,60
givepower = 0,10
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 6060

[State 6060, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 6064
time = -1
ignorehitpause = 1

[State 6060, VarSet]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(6) = (EnemyNear,MoveType = A)

[State 6060, VarSet]
type = VarSet
trigger1 = MoveHit
trigger1 = !MoveGuarded
trigger1 = NumTarget(6060)
trigger1 = Target(6060),MoveType = H
var(16) = 1

[State 6060, ParentVarAdd]
type = ParentVarAdd
trigger1 = NumTarget(6060)
trigger1 = Target(6060),MoveType = H
trigger1 = Target(6060),StateType = A
var(55) = 10
persistent = 0

[State 6060, AttackDist]
type = AttackDist
trigger1 = 1
value = 50
ignorehitpause = 1
persistent = 1

[State 6060, VelSet]
type = VelSet
trigger1 = !Time
x = Cond(Var(5) = 2,11,Cond(Var(5) = 1,9,7))

[State 6060, VelMul]
type = VelMul
trigger1 = Time > 5 && Vel X > 1
x = .8

[State 6060, ChangeState]
type = ChangeState
trigger1 = MoveContact
trigger2 = Pos X != [-400,400]
trigger3 = Time >= 90
value = 6064
ignorehitpause = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;BUSTER BLADE END
[StateDef 6064]
type = A
physics = N
movetype = I
velset = 0,0
ctrl = 0
sprpriority = 4

[State 6064, ChangeAnim]
type = ChangeAnim
trigger1 = Anim != 7300 && Time = 1
value = 7300
ignorehitpause = 1
persistent = 1

[State 6064, AngleDraw]
type = AngleDraw
trigger1 = Time >= 1
scale = .85,.85
ignorehitpause = 1
persistent = 1

[State 6064, AfterImage]
type = AfterImage
trigger1 = 1
length = 3
palbright = 1,1,1
palcontrast = 1,255,1
paladd = 0,0,0
palmul = .55,.55,.55
timegap = 2
framegap = 1
trans = Add
time = 9999

[State 6064, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 6064, RemoveExplod]
type = RemoveExplod
trigger1 = !Time
ID = 6063

[State 6064, Explod]
type = Explod
trigger1 = !Time && Pos Y >= 0
ID = 6041
anim = 6041
pos = 0,0
postype = P1
facing = 1
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .5,.5
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 6064, Explod]
type = Explod
trigger1 = !Time
ID = 7300
anim = 7300
pos = 0,0
postype = P1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
pausemovetime = 1
supermovetime = 0
scale = .85,.85
sprpriority = 0
ownpal = 1
ignorehitpause = 1

[State 6064, DestroySelf]
type = DestroySelf
trigger1 = Anim = 7300 && !AnimTime

;--------------------------------------------------------------------------------------------------------------------------------------------
;EX BUSTER BLADE
[StateDef 6065]
type = A
physics = N
movetype = A
sprpriority = 3

[State 6065, VarSet]
type = VarSet
trigger1 = !Time
var(5) = Root,Var(4)

[State 6065, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = Cond(Var(5) = 2,6067,Cond(Var(5) = 1,6066,6065))
ignorehitpause = 1
persistent = 1

[State 6065, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = .17,.67
ignorehitpause = 1
persistent = 1

[State 6065, ScreenBound]
type = ScreenBound
trigger1 = Time < 10
value = 1
movecamera = 0,0
ignorehitpause = 1
persistent = 1

[State 6065, Width]
type = Width
trigger1 = 1
edge = 1,1
ignorehitpause = 1
persistent = 1

[State 6065, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
ignorehitpause = 1

;Used to add counter hit scaling
[State 6065, Counter Flag]
type = VarSet
trigger1 = NumEnemy
trigger1 = (EnemyNear,MoveType = A)
fvar(6) = 1
ignorehitpause = 1
[State 6065, Counter Flag Reset]
type = VarSet
trigger1 = NumEnemy
trigger1 = (EnemyNear,MoveType != A)
fvar(6) = 0
ignorehitpause = 1

;Keeps track of current combo count
[State 6065, Hit Count]
type = VarAdd
trigger1 = NumTarget
trigger1 = !MoveGuarded
trigger1 = !HitPauseTime
trigger2 = Root,NumTarget
trigger2 = !Root,MoveGuarded
trigger2 = !Root,HitPauseTime
fvar(9) = 1+Root,Var(4)
ignorehitpause = 1
[State 6065, Hit Count Reset]
type = VarSet
trigger1 = NumEnemy && FVar(9)
trigger1 = (EnemyNear,MoveType != H) && (EnemyNear,StateNo != 5300)
fvar(9) = 0
ignorehitpause = 1
[State 6065, Hit Count Reset]
type = VarSet
trigger1 = MoveGuarded
trigger2 = NumEnemy
trigger2 = EnemyNear,MoveType = A
trigger3 = NumEnemy
trigger3 = EnemyNear,StateType = L
fvar(9) = 0
ignorehitpause = 1

[State 6065, Scaling]
type = VarSet
trigger1 = 1
fvar(8) = Cond(FVar(9) >= 1,1-(.001*FVar(9)+.7*Root,FVar(3)),1);.01
ignorehitpause = 1

[State 6065, Scaling Limit]
type = VarSet
trigger1 = FVar(8) < 0.10
fvar(8) = 0.10
ignorehitpause = 1

[State 6065, Root Dampener]
type = VarSet
trigger1 = 1
fvar(10) = FVar(8);*Cond(FVar(6) = 1,1.2,1)
ignorehitpause = 1

[State 6065, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 6065, VarRandom]
type = VarRandom
trigger1 = 1
v = 9
range = -20,20
ignorehitpause = 1

[State 6065, Helper]
type = Helper
trigger1 = !Var(5)
trigger1 = Vel X > 1 && Vel Y < -1
trigger1 = (Time%2) = 1
stateno = 6267
ID = 6267
name = "Speed"
postype = P1
pos = Var(9),Var(9)
supermovetime = 0
pausemovetime = 0
ownpal = 1
[State 6065, Helper]
type = Helper
trigger1 = Var(5) = 1
trigger1 = Vel X > 1
trigger1 = (Time%2) = 1
stateno = 6267
ID = 6267
name = "Speed"
postype = P1
pos = 25,0
supermovetime = 0
pausemovetime = 0
ownpal = 1
[State 6065, Helper]
type = Helper
trigger1 = Var(5) = 2
trigger1 = Vel X > 1 && Vel Y > 1
trigger1 = (Time%2) = 1
stateno = 6267
ID = 6267
name = "Speed"
postype = P1
pos = Var(9),Var(9)
supermovetime = 0
pausemovetime = 0
ownpal = 1

[State 6065, Explod]
type = Explod
trigger1 = !Time && Var(5) = 1
ID = 6063
anim = 6063
pos = 35,0
postype = P1  ;p2,front,back,left,right
bindtime = -1
removetime = -1
removeongethit = 1
pausemovetime = 0
supermovetime = 0
scale = .3,.3
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 6065, RemoveExplod]
type = RemoveExplod
trigger1 = Pos Y >= 0
ID = 6063

[State 6065, Helper]
type = Helper
trigger1 = !Time && Var(5) != 1
stateno = 6068
ID = 6068
name = "BladeFX"
postype = P1
supermovetime = 0
pausemovetime = 0
ownpal = 1

[State 6065, Explod]
type = Explod
trigger1 = NumExplod(7007) < 5
trigger1 = Pos Y >= -100
trigger1 = Time%10 = 0
ID = 7007
anim = 7007
pos = Cond(Var(5) = 2,4,-4),Abs(Pos Y)
postype = P1  ;p2,front,back,left,right
vel = Cond(Var(5) = 2,-2,2),0
facing = Cond(Var(5) = 2,1,-1)
bindtime = 5
removetime = -2
removeongethit = 1
pausemovetime = 0
supermovetime = 0
scale = .8,.5
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 6065, Explod]
type = Explod
trigger1 = MoveContact
ID = 1
anim = 6041
pos = 0,0
postype = P1
facing = 1
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .5,.5
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 6065, Helper]
type = Helper
trigger1 = MoveContact && NumTarget && Var(6)
trigger1 = !(Target,HitShakeOver)
trigger1 = !NumHelper(7100)
name = "Counter FX"
ID = 7100
stateno = 7100
pos = Cond(P2Dist X < -64,-64,Cond(P2Dist X < 64,Ceil(P2Dist X),64)),Ceil(P2Dist Y-64)
postype = P1    ;p2,front,back,left,right
facing = -1
ownpal = 1
supermovetime = 9999
pausemovetime = 9999
ignorehitpause = 1

[State 6065, HitBy]
type = HitBy
trigger1 = 1
value = SCA,NP,SP,HP
time = -1
ignorehitpause = 1

[State 6065, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(6065)
trigger1 = !NumExplod(6065)
trigger1 = Target(6065),StateType != L
ID = 6065
anim = 8100+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)-60
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 8
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 6065, HitDef]
type = HitDef
trigger1 = !Var(5)
trigger1 = NumEnemy
trigger1 = !(EnemyNear,StateType = A && Root,Var(55) >= 200)
attr = A,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
priority = 8,Hit
damage = Ceil(FVar(10)*60),1
pausetime = 0,10
guard.pausetime = 0,8
sparkno = -1
guard.sparkno = S8501
sparkxy = -5,0
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
air.type = Low
ground.slidetime = 15
ground.hittime = 20
air.hittime = 100
ground.velocity = 0,-8
air.velocity = 0,-8
ground.cornerpush.veloff = 0
fall = 1
fall.recover = 0
air.fall = 1
kill = 1
p2facing = 0
getpower = 100,50
givepower = 0,10
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 6065

[State 6065, HitDef]
type = HitDef
trigger1 = Var(5) = 1
trigger1 = NumEnemy
trigger1 = !(EnemyNear,StateType = A && Root,Var(55) >= 200)
attr = A,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
priority = 8,Hit
damage = Ceil(FVar(10)*60),1
pausetime = 0,10
guard.pausetime = 0,8
sparkno = -1
guard.sparkno = S8501
sparkxy = -5,0
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
air.type = Low
ground.slidetime = 15
ground.hittime = 20
air.hittime = 100
ground.velocity = 0,-8
air.velocity = 0,-8
ground.cornerpush.veloff = 0
fall = 1
fall.recover = 0
air.fall = 1
kill = 1
p2facing = 0
getpower = 110,55
givepower = 0,10
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 6065

[State 6065, HitDef]
type = HitDef
trigger1 = Var(5) = 2
trigger1 = NumEnemy
trigger1 = !(EnemyNear,StateType = A && Root,Var(55) >= 200)
attr = A,SP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard          ;light,medium,hard,back,up,diagup
priority = 10,Hit
damage = Ceil(FVar(10)*60),1
pausetime = 0,10
guard.pausetime = 0,8
sparkno = -1
guard.sparkno = S8501
sparkxy = -5,0
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = Low      ;Low,Trip,None
air.type = Low
ground.slidetime = 15
ground.hittime = 20
air.hittime = 100
ground.velocity = 0
air.velocity = 0,0
ground.cornerpush.veloff = 0
fall = 0
fall.recover = 0
air.fall = 1
kill = 1
p2facing = 0
getpower = 120,60
givepower = 0,10
envshake.time = 14
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 6065

[State 6065, HitOverride]
type = HitOverride
trigger1 = 1
attr = SCA,AA,AP,AT        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
stateno = 6064
time = -1
ignorehitpause = 1

[State 6065, VarSet]
type = VarSet
trigger1 = NumEnemy
trigger1 = MoveContact != 1
var(6) = (EnemyNear,MoveType = A)

[State 6065, VarSet]
type = VarSet
trigger1 = MoveHit
trigger1 = !MoveGuarded
trigger1 = NumTarget(6065)
trigger1 = Target(6065),MoveType = H
var(16) = 1

[State 6065, ParentVarAdd]
type = ParentVarAdd
trigger1 = NumTarget(6065)
trigger1 = Target(6065),MoveType = H
trigger1 = Target(6065),StateType = A
var(55) = 10
persistent = 0

[State 6065, AttackDist]
type = AttackDist
trigger1 = 1
value = 50
ignorehitpause = 1
persistent = 1

[State 6065, VelSet]
type = VelSet
trigger1 = !Time
x = Cond(Var(5) = 2,8,Cond(Var(5) = 1,13,6))
y = Cond(Var(5) = 2,8,Cond(Var(5) = 1,0,-6))

[State 6065, VelMul]
type = VelMul
trigger1 = Var(5) != 1
trigger1 = Time >= 5
x = .7
y = .7

[State 6065, VelMul]
type = VelMul
trigger1 = Var(5) = 1
trigger1 = Time >= 5 && Vel X > .7
x = .7

[State 6065, VelSet]
type = VelSet
trigger1 = Var(5) = 2
trigger1 = Pos Y >= -35
x = 0
y = 0

[State 6065, ChangeState]
type = ChangeState
trigger1 = MoveContact
trigger2 = Time >= 120
value = 6064
ignorehitpause = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;BUSTER BLADE FX
[StateDef 6068]
type = A
physics = N
movetype = I
anim = 6063
sprpriority = 7

[State 6068, VarSet]
type = VarSet
trigger1 = !Time
var(5) = Parent,Var(5)

[State 6068, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 6068, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = .35,.35
value = Cond(Var(5) = 2,-45,Cond(Var(5) = 1,0,45))
ignorehitpause = 1
persistent = 1

[State 6068, BindToParent]
type = BindToParent
trigger1 = !Var(5)
time = 1
pos = 25,-25
[State 6068, BindToParent]
type = BindToParent
trigger1 = Var(5) = 1
time = 1
pos = 40,0
[State 6068, BindToParent]
type = BindToParent
trigger1 = Var(5) = 2
time = 1
pos = 25,25

[State 6068, VelSet]
type = VelSet
trigger1 = !Time
x = 8
y = Cond(Var(5) = 2,8,Cond(Var(5) = 1,0,-8))

[State 6068, DestroySelf]
type = DestroySelf
trigger1 = Pos X != [-400,400]
trigger2 = Vel Y >= 0 && Pos Y >= 25
trigger3 = Parent,StateNo = 6064

;--------------------------------------------------------------------------------------------------------------------------------------------
;SLASH 1
[StateDef 6070]
type = A
physics = N
movetype = I
anim = 6070
sprpriority = 4

[State 6070, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(223)
trigger2 = IsHelper(242)
trigger3 = IsHelper(252)
trigger4 = IsHelper(440)
trigger5 = IsHelper(450)
trigger6 = IsHelper(650)
scale = .8,.7
ignorehitpause = 1
persistent = 1

[State 6070, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(220)
scale = .7,.7
ignorehitpause = 1
persistent = 1

[State 6070, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(240)
trigger2 = IsHelper(251)
value = 45
scale = .8,.8
ignorehitpause = 1
persistent = 1

[State 6070, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(241)
value = 30
scale = .8,.8
ignorehitpause = 1
persistent = 1

[State 6070, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(250)
scale = .8,.8
ignorehitpause = 1
persistent = 1

[State 6070, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(410)
scale = .7,.7
ignorehitpause = 1
persistent = 1

[State 6070, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(620)
value = -49
scale = .8,.8
ignorehitpause = 1
persistent = 1

[State 6070, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(640)
value = -15
scale = .7,.7
ignorehitpause = 1
persistent = 1

[State 6070, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(34301)
value = -45
scale = .8,.8
ignorehitpause = 1
persistent = 1

[State 6070, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(34311)
value = 45
scale = .8,.8
ignorehitpause = 1
persistent = 1

[State 6070, BindToRoot]
type = BindToRoot
trigger1 = IsHelper(220)
trigger1 = !Time
time = 5
pos = 45,-76

[State 6070, BindToRoot]
type = BindToRoot
trigger1 = IsHelper(223)
trigger1 = !Time
time = 1
pos = 56,-80

[State 6070, BindToRoot]
type = BindToRoot
trigger1 = IsHelper(240)
trigger1 = !Time
time = 5
pos = 40,-72

[State 6070, BindToRoot]
type = BindToRoot
trigger1 = IsHelper(241)
trigger1 = !Time
time = 5
pos = 18,-59

[State 6070, BindToRoot]
type = BindToRoot
trigger1 = IsHelper(242)
trigger1 = !Time
time = 10
pos = 36,-75

[State 6070, BindToRoot]
type = BindToRoot
trigger1 = IsHelper(250)
trigger1 = !Time
time = -1
pos = 36,-55

[State 6070, BindToRoot]
type = BindToRoot
trigger1 = IsHelper(251)
trigger1 = !Time
time = 5
pos = 31,-63

[State 6070, BindToRoot]
type = BindToRoot
trigger1 = IsHelper(252)
trigger1 = !Time
time = 10
pos = 42,-82

[State 6070, BindToRoot]
type = BindToRoot
trigger1 = IsHelper(410)
trigger1 = !Time
time = 5
pos = 20,-45

[State 6070, BindToRoot]
type = BindToRoot
trigger1 = IsHelper(440)
trigger1 = !Time
time = 5
pos = 55,-20

[State 6070, BindToRoot]
type = BindToRoot
trigger1 = IsHelper(450)
trigger1 = !Time
time = 5
pos = 40,-22

[State 6070, BindToRoot]
type = BindToRoot
trigger1 = IsHelper(620)
trigger1 = !Time
time = 5
pos = 21,-80

[State 6070, BindToRoot]
type = BindToRoot
trigger1 = IsHelper(640)
trigger1 = !Time
time = 8
pos = 30,-50

[State 6070, BindToRoot]
type = BindToRoot
trigger1 = IsHelper(650)
trigger1 = !Time
time = 5
pos = 40,-59

[State 6070, BindToParent]
type = BindToParent
trigger1 = IsHelper(34301)
trigger1 = !Time
time = 5
pos = 41,-60;21,-80

[State 6070, BindToParent]
type = BindToParent
trigger1 = IsHelper(34311)
trigger1 = !Time
time = 5
pos = -11,-60

[State 6070, SprPriority]
type = SprPriority
trigger1 = IsHelper(223)
value = -1
ignorehitpause = 1
persistent = 1

[State 6070, SprPriority]
type = SprPriority
trigger1 = IsHelper(242)
value = 0
ignorehitpause = 1
persistent = 1

[State 6070, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime
trigger2 = Root,MoveType = H

;--------------------------------------------------------------------------------------------------------------------------------------------
;SLASH 2
[StateDef 6071]
type = A
physics = N
movetype = I
anim = 6071
sprpriority = 4

[State 6071, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(210)
value = -180
scale = .75,.7
ignorehitpause = 1
persistent = 1

[State 6071, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(212)
scale = .8,.3
ignorehitpause = 1
persistent = 1

[State 6071, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(221)
value = -180
scale = .7,.5
ignorehitpause = 1
persistent = 1

[State 6071, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(420)
value = -180
scale = .7,.7
ignorehitpause = 1
persistent = 1

[State 6071, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(610)
scale = .65,.6
ignorehitpause = 1
persistent = 1

[State 6071, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(1005)
value = -180
scale = .7,.3
ignorehitpause = 1
persistent = 1

[State 6071, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(1200)
scale = .7,.7
ignorehitpause = 1
persistent = 1
[State 6071, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(1201)
value = -180
scale = .7,.7
ignorehitpause = 1
persistent = 1

[State 6071, BindToRoot]
type = BindToRoot
trigger1 = IsHelper(210)
trigger1 = !Time
time = 5
pos = 25,-85

[State 6071, BindToRoot]
type = BindToRoot
trigger1 = IsHelper(212)
trigger1 = !Time
time = 5
pos = 15,-74

[State 6071, BindToRoot]
type = BindToRoot
trigger1 = IsHelper(221)
trigger1 = !Time
time = 5
pos = 20,-85

[State 6071, BindToRoot]
type = BindToRoot
trigger1 = IsHelper(420)
trigger1 = !Time
time = 5
pos = 4,-94

[State 6071, BindToRoot]
type = BindToRoot
trigger1 = IsHelper(610)
trigger1 = !Time
time = 5
pos = 25,-90

[State 6071, BindToRoot]
type = BindToRoot
trigger1 = IsHelper(1005)
trigger1 = !Time
time = 5
pos = 46,-80

[State 6071, BindToRoot]
type = BindToRoot
triggerall = !Time
trigger1 = IsHelper(1200)
trigger2 = IsHelper(1201)
time = 5
pos = 0,-70

[State 6071, SprPriority]
type = SprPriority
trigger1 = IsHelper(212)
value = -1
ignorehitpause = 1
persistent = 1

[State 6071, SprPriority]
type = SprPriority
trigger1 = IsHelper(221)
value = 0
ignorehitpause = 1
persistent = 1

[State 6071, SprPriority]
type = SprPriority
trigger1 = IsHelper(420)
value = 0
ignorehitpause = 1
persistent = 1

[State 6071, SprPriority]
type = SprPriority
trigger1 = IsHelper(1005)
trigger2 = IsHelper(1200)
trigger3 = IsHelper(1201)
value = 2
ignorehitpause = 1
persistent = 1

[State 6071, Turn]
type = Turn
triggerall = !Time
trigger1 = IsHelper(210)
trigger2 = IsHelper(221)
trigger3 = IsHelper(420)
trigger4 = IsHelper(1005)
trigger5 = IsHelper(1201)

[State 6071, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime
trigger2 = Root,MoveType = H

;--------------------------------------------------------------------------------------------------------------------------------------------
;SLASH 3
[StateDef 6072]
type = A
physics = N
movetype = I
anim = 6072
sprpriority = 7

[State 6072, VarSet]
type = VarSet
triggerall = !Time
trigger1 = IsHelper(60724)
trigger2 = IsHelper(60725)
var(0) = Const(Size.Ground.Back)

[State 6072, VarSet]
type = VarSet
triggerall = !Time
trigger1 = IsHelper(60724)
trigger2 = IsHelper(60725)
var(1) = Const(Size.ShadowOffset)

[State 6072, VarSet]
type = VarSet
triggerall = !Time
trigger1 = IsHelper(60724)
trigger2 = IsHelper(60725)
var(2) = Const(Size.Proj.DoScale)

[State 6072, ChangeAnim]
type = ChangeAnim
triggerall = Time >= 10
trigger1 = IsHelper(60724)
trigger2 = IsHelper(60725)
value = 6072
elem = 10
persistent = 1

[State 6072, Trans]
type = Trans
trigger1 = IsHelper(60724)
trigger2 = IsHelper(60725)
trans = AddAlpha
alpha = 256,0

[State 6072, PalFX]
type = PalFX
triggerall = !Time
trigger1 = IsHelper(60724)
trigger2 = IsHelper(60725)
time = 264
add = 256,256,256
mul = 256,256,256
sinadd = 0,0,0,1
invertall = 0
color = 256
[State 6072, PalFX]
type = PalFX
triggerall = Time = 267
trigger1 = IsHelper(60724)
trigger2 = IsHelper(60725)
time = 300
add = 0,256,0
mul = 0,256,256
sinadd = 0,0,0,1
invertall = 0
color = 256

[State 6072, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 6072, SprPriority]
type = SprPriority
trigger1 = IsHelper(60724)
trigger2 = IsHelper(60725)
value = 28

[State 6072, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(6072)
value = -15
scale = 1.1,1.1
ignorehitpause = 1
persistent = 1

[State 6072, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(60721)
value = -30
scale = 1.1,1.1
ignorehitpause = 1
persistent = 1

[State 6072, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(60722)
value = -26
scale = 1.1,1.1
ignorehitpause = 1
persistent = 1

[State 6072, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(60724)
trigger2 = IsHelper(60725)
value = 250
scale = 1.1,1.1
ignorehitpause = 1
persistent = 1

[State 6072, BindToRoot]
type = BindToRoot
trigger1 = IsHelper(6072)
trigger1 = !Time
time = 1
pos = 300,60

[State 6072, BindToRoot]
type = BindToRoot
trigger1 = IsHelper(60721)
trigger1 = !Time
time = 1
pos = -300,-10

[State 6072, BindToRoot]
type = BindToRoot
trigger1 = IsHelper(60722)
trigger1 = !Time
time = 1
pos = 300,0

[State 6072, BindToRoot]
type = BindToRoot
trigger1 = IsHelper(60723)
trigger1 = !Time
time = 1
pos = -190,90

[State 6072, Afterimage]
type = AfterImage
trigger1 = !IsHelper(60724)
trigger1 = !IsHelper(60725)
trigger1 = Time = 10
length = 2
palbright = 1,1,1
palcontrast = 1,255,1
paladd = 0,0,0
palmul = .55,.55,.55
timegap = 2
framegap = 1
trans = Add
time = 9999

[State 6072, PosSet]
type = PosSet
trigger1 = !Time
trigger1 = IsHelper(60724)
x = Var(1)-70*Facing
y = Var(2)-.5*GameHeight
[State 6072, PosSet]
type = PosSet
trigger1 = !Time
trigger1 = IsHelper(60725)
x = Var(1)+70*Facing
y = Var(2)-.5*GameHeight

[State 6072, Turn]
type = Turn
trigger1 = IsHelper(60725)
trigger1 = !Time

[State 6072, DestroySelf]
type = DestroySelf
trigger1 = !IsHelper(60724)
trigger1 = !IsHelper(60725)
trigger1 = !AnimTime

[State 6072, DestroySelf]
type = DestroySelf
triggerall = Time >= 300
trigger1 = IsHelper(60724)
trigger2 = IsHelper(60725)

;--------------------------------------------------------------------------------------------------------------------------------------------
;SLASH 4
[StateDef 6073]
type = A
physics = N
movetype = I
anim = 6073
sprpriority = 8

[State 6073, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 6073, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 205;25
scale = .7,.7
ignorehitpause = 1
persistent = 1

[State 6073, Afterimage]
type = AfterImage
trigger1 = Time = 10
length = 3
palbright = 1,1,1
palcontrast = 1,255,1
paladd = 0,0,0
palmul = .55,.55,.55
timegap = 2
framegap = 1
trans = Add
time = 9999

[State 6073, BindToRoot]
type = BindToRoot
trigger1 = !Time
time = 1
pos = 45,-135

[State 6073, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime

;--------------------------------------------------------------------------------------------------------------------------------------------
;ROTATING ELEC 1
[StateDef 6202]
type = A
physics = N
movetype = I
anim = 6202
ctrl = 0
velset = 0,0
sprpriority = 3

[State 6202, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 6202, VarSet]
type = VarSet
trigger1 = Root,StateNo = 3803
trigger1 = Root,AnimElemTime(4) < 50
fvar(9) = -90+(7*Time)
ignorehitpause = 1
[State 6202, VarSet]
type = VarSet
trigger1 = Root,StateNo = 3803
trigger1 = Root,AnimElemTime(4) >= 50
fvar(10) = FVar(9)+(.7*(Time-50))
ignorehitpause = 1

[State 6202, VarRandom]
type = VarRandom
trigger1 = !Time
v = 11
range = 0,359
ignorehitpause = 1
persistent = 1

[State 6202, VarSet]
type = VarSet
trigger1 = Root,StateNo = 4001 || Root,StateNo = 4004
trigger1 = !Time
fvar(9) = .6
ignorehitpause = 1

[State 6202, BindToRoot]
type = BindToRoot
trigger1 = Root,StateNo = 3803
pos = 20,-125
ignorehitpause = 1

[State 6202, BindToRoot]
type = BindToRoot
trigger1 = Root,StateNo = 3900
pos = 80,-68
ignorehitpause = 1

[State 6202, BindToRoot]
type = BindToRoot
trigger1 = Root,StateNo = 4001
pos = 50,-90
ignorehitpause = 1
[State 6202, BindToRoot]
type = BindToRoot
trigger1 = Root,StateNo = 4004
pos = 11,-150
ignorehitpause = 1

[State 6202, AngleDraw]
type = AngleDraw
trigger1 = Root,StateNo = 3803
trigger1 = Root,AnimElemTime(4) < 50
value = FVar(9)
[State 6202, AngleDraw]
type = AngleDraw
trigger1 = Root,StateNo = 3803
trigger1 = Root,AnimElemTime(4) >= 50
value = FVar(10)

[State 6202, AngleDraw]
type = AngleDraw
trigger1 = Root,StateNo = 3900
value = Var(11)
ignorehitpause = 1

[State 6202, AngleDraw]
type = AngleDraw
trigger1 = Root,StateNo = 4001
value = -45+(FVar(9)*Time)
[State 6202, AngleDraw]
type = AngleDraw
trigger1 = Root,StateNo = 4004
value = 0+(FVar(9)*Time);135;+(FVar(9)*Time)

[State 6202, DestroySelf]
type = DestroySelf
trigger1 = Root,MoveType != A
trigger2 = Root,StateNo = 3803 && Root,AnimElemTime(5) >= 0
trigger3 = Root,StateNo = 3900 && !AnimTime
trigger4 = Root,StateNo = 1251111
trigger5 = Root,StateNo = [1251125,1251127]

;--------------------------------------------------------------------------------------------------------------------------------------------
;ROTATING ELEC 2
[StateDef 6203]
type = A
physics = N
movetype = I
anim = 6202
ctrl = 0
velset = 0,0
sprpriority = 3

[State 6203, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 6203, VarSet]
type = VarSet
trigger1 = Root,StateNo = 3803
trigger1 = Root,AnimElemTime(4) < 50
fvar(9) = 90+(7*Time)
ignorehitpause = 1
[State 6203, VarSet]
type = VarSet
trigger1 = Root,StateNo = 3803
trigger1 = Root,AnimElemTime(4) >= 50
fvar(10) = FVar(9)+(.7*(Time-50))
ignorehitpause = 1

[State 6203, VarSet]
type = VarSet
trigger1 = Root,StateNo = 4001 || Root,StateNo = 4004
trigger1 = !Time
fvar(9) = .6
ignorehitpause = 1

[State 6202, BindToRoot]
type = BindToRoot
trigger1 = Root,StateNo = 3803
pos = 20,-125
ignorehitpause = 1

[State 6203, BindToRoot]
type = BindToRoot
trigger1 = Root,StateNo = 4001
pos = 50,-90
ignorehitpause = 1
[State 6203, BindToRoot]
type = BindToRoot
trigger1 = Root,StateNo = 4004
pos = 11,-150
ignorehitpause = 1

[State 6203, AngleDraw]
type = AngleDraw
trigger1 = Root,StateNo = 3803
trigger1 = Root,AnimElemTime(4) < 50
value = FVar(9)
[State 6203, AngleDraw]
type = AngleDraw
trigger1 = Root,StateNo = 3803
trigger1 = Root,AnimElemTime(4) >= 50
value = FVar(10)

[State 6203, AngleDraw]
type = AngleDraw
trigger1 = Root,StateNo = 4001
value = -165+(FVar(9)*Time);135+(FVar(9)*Time)
[State 6203, AngleDraw]
type = AngleDraw
trigger1 = Root,StateNo = 4004
value = 120+(FVar(9)*Time);135;+(FVar(9)*Time)

[State 6203, DestroySelf]
type = DestroySelf
trigger1 = Root,MoveType != A
trigger2 = Root,StateNo = 3803 && Root,AnimElemTime(5) >= 0
trigger3 = Root,StateNo = 1251111
trigger4 = Root,StateNo = [1251125,1251127]

;--------------------------------------------------------------------------------------------------------------------------------------------
;ROTATING ELEC 3
[StateDef 6204]
type = A
physics = N
movetype = I
anim = 6202
ctrl = 0
velset = 0,0
sprpriority = 3

[State 6204, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 6204, VarSet]
type = VarSet
trigger1 = !Time
fvar(9) = .6
ignorehitpause = 1

[State 6204, BindToRoot]
type = BindToRoot
trigger1 = Root,StateNo = 4001
pos = 50,-90
ignorehitpause = 1
[State 6204, BindToRoot]
type = BindToRoot
trigger1 = Root,StateNo = 4004
pos = 11,-150
ignorehitpause = 1

[State 6204, AngleDraw]
type = AngleDraw
trigger1 = Root,StateNo = 4001
value = -285+(FVar(9)*Time)
[State 6204, AngleDraw]
type = AngleDraw
trigger1 = Root,StateNo = 4004
value = 240+(FVar(9)*Time);135

[State 6204, DestroySelf]
type = DestroySelf
trigger1 = Root,MoveType != A
trigger2 = Root,StateNo = 1251111
trigger3 = Root,StateNo = [1251125,1251127]

;--------------------------------------------------------------------------------------------------------------------------------------------
;WIND STREAK
[StateDef 6241]
type = A
physics = N
movetype = I
anim = 6241
sprpriority = 7

[State 6241, VarSet]
type = VarRandom
trigger1 = !Time
v = 0
range = -100,100
[State 6241, VarSet]
type = VarRandom
trigger1 = !Time
v = 1
range = -10,10

[State 6241, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

;[State 6241, ChangeAnim]
;type = ChangeAnim
;triggerall = !Time
;trigger1 = IsHelper(62420)
;trigger2 = IsHelper(62421)
;trigger3 = IsHelper(62422)
;trigger4 = IsHelper(62423)
;trigger5 = IsHelper(62424)
;trigger6 = IsHelper(62425)
;trigger7 = IsHelper(62426)
;trigger8 = IsHelper(62427)
;trigger9 = IsHelper(62428)
;trigger10 = IsHelper(62429)
;value = 6240

;[State 6241, ChangeAnim]
;type = ChangeAnim
;triggerall = Time = [13,43]
;trigger1 = IsHelper(62420)
;trigger2 = IsHelper(62421)
;trigger3 = IsHelper(62422)
;trigger4 = IsHelper(62423)
;trigger5 = IsHelper(62424)
;trigger6 = IsHelper(62425)
;trigger7 = IsHelper(62426)
;trigger8 = IsHelper(62427)
;trigger9 = IsHelper(62428)
;trigger10 = IsHelper(62429)
;value = 6240
;elem = 9

[State 6241, ChangeAnim]
type = ChangeAnim
triggerall = Anim = 6241
triggerall = Time >= 13;[13,43]
trigger1 = IsHelper(62420)
trigger2 = IsHelper(62421)
trigger3 = IsHelper(62422)
trigger4 = IsHelper(62423)
trigger5 = IsHelper(62424)
trigger6 = IsHelper(62425)
trigger7 = IsHelper(62426)
trigger8 = IsHelper(62427)
trigger9 = IsHelper(62428)
trigger10 = IsHelper(62429)
value = 6241
elem = 7

[State 6241, ChangeAnim]
type = ChangeAnim
triggerall = Anim = 6241
triggerall = Time = 52
trigger1 = IsHelper(62420)
trigger2 = IsHelper(62421)
trigger3 = IsHelper(62422)
trigger4 = IsHelper(62423)
trigger5 = IsHelper(62424)
trigger6 = IsHelper(62425)
trigger7 = IsHelper(62426)
trigger8 = IsHelper(62427)
trigger9 = IsHelper(62428)
trigger10 = IsHelper(62429)
value = 6240
elem = 1

[State 6241, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(1)
value = 90
scale = 1.1,.6;1.1,1.1
ignorehitpause = 1
persistent = 1

[State 6241, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(500)
value = 90
scale = 1.3,1.3
ignorehitpause = 1
persistent = 1

[State 6241, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(501)
value = 90
ignorehitpause = 1
persistent = 1

[State 6241, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(42050)
value = -45
scale = 1.5,1.5
ignorehitpause = 1
persistent = 1
[State 6241, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(42051)
value = 45
scale = 1.5,1.5
ignorehitpause = 1
persistent = 1
[State 6241, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(42052)
value = -45
scale = 1.5,1.5
ignorehitpause = 1
persistent = 1
[State 6241, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(42053)
value = 90
scale = 2,2
ignorehitpause = 1
persistent = 1

[State 6241, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(6241)
value = -65
scale = 1.1,.6;1.1,1.1
ignorehitpause = 1
persistent = 1
[State 6241, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(62411)
value = -100
scale = 1.1,.6
ignorehitpause = 1
persistent = 1
[State 6241, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(62412)
value = -120
scale = 1.1,.6
ignorehitpause = 1
persistent = 1
[State 6241, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(62413)
value = 5
scale = 1.1,.6
ignorehitpause = 1
persistent = 1
[State 6241, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(62415)
value = -90
scale = 1.1,.6;1.1,1.1
ignorehitpause = 1
persistent = 1
[State 6241, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(62416)
value = 90
scale = 1.1,.6;1.1,1.1
ignorehitpause = 1
persistent = 1

[State 6241, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(62420)
value = -90
scale = 1,1
ignorehitpause = 1
persistent = 1
[State 6241, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(62421)
value = -120
scale = 1,1
ignorehitpause = 1
persistent = 1
[State 6241, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(62422)
value = -150
scale = 1,1
ignorehitpause = 1
persistent = 1
[State 6241, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(62423)
value = -190
scale = 1,1
ignorehitpause = 1
persistent = 1
[State 6241, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(62424)
value = -210
scale = 1,1
ignorehitpause = 1
persistent = 1
[State 6241, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(62425)
value = -230
scale = 1.1,1.1
ignorehitpause = 1
persistent = 1
[State 6241, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(62426)
value = -270
scale = 1.2,1.2
ignorehitpause = 1
persistent = 1
[State 6241, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(62427)
value = -250
scale = 1.3,1.3
ignorehitpause = 1
persistent = 1
[State 6241, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(62428)
value = -330
scale = 1.4,1.4
ignorehitpause = 1
persistent = 1
[State 6241, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(62429)
value = -390
scale = 1.5,1.5
ignorehitpause = 1
persistent = 1
[State 6241, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(62430)
trigger2 = IsHelper(62431)
value = 90
scale = 2,2
ignorehitpause = 1
persistent = 1

[State 6241, AngleDraw]
type = AngleDraw
triggerall = Anim = 6240
trigger1 = IsHelper(62420)
trigger2 = IsHelper(62421)
trigger3 = IsHelper(62422)
trigger4 = IsHelper(62423)
trigger5 = IsHelper(62424)
trigger6 = IsHelper(62425)
trigger7 = IsHelper(62426)
trigger8 = IsHelper(62427)
trigger9 = IsHelper(62428)
trigger10 = IsHelper(62429)
scale = .6,.6
ignorehitpause = 1
persistent = 1

[State 6241, AngleDraw]
type = AngleDraw
triggerall = Anim = 6240
triggerall = Time >= 80
trigger1 = IsHelper(62420)
trigger2 = IsHelper(62421)
trigger3 = IsHelper(62422)
trigger4 = IsHelper(62423)
trigger5 = IsHelper(62424)
trigger6 = IsHelper(62425)
trigger7 = IsHelper(62426)
trigger8 = IsHelper(62427)
trigger9 = IsHelper(62428)
trigger10 = IsHelper(62429)
scale = 1+(1.2*(Time-80)),1+(1.2*(Time-80))
ignorehitpause = 1
persistent = 1

[State 6241, Afterimage]
type = AfterImage
trigger1 = Root,StateNo = [4205,4208]
trigger1 = Time = 12
length = 3
palbright = 1,1,1
palcontrast = 1,255,1
paladd = 0,0,0
palmul = .55,.55,.55
timegap = 2
framegap = 1
trans = Add
time = 300

[State 6241, SprPriority]
type = SprPriority
trigger1 = IsHelper(500)
trigger2 = IsHelper(501)
value = 4
ignorehitpause = 1
persistent = 1

[State 6241, SprPriority]
type = SprPriority
trigger1 = IsHelper(62413)
trigger2 = IsHelper(62414)
trigger3 = IsHelper(62415)
trigger4 = IsHelper(62417)
value = -4
ignorehitpause = 1
persistent = 1

[State 6241, SprPriority]
type = SprPriority
trigger1 = IsHelper(42050)
trigger2 = IsHelper(42051)
trigger3 = IsHelper(42052)
trigger4 = IsHelper(42053)
value = 40
ignorehitpause = 1
persistent = 1

[State 6241, SprPriority]
type = SprPriority
trigger1 = IsHelper(62420)
value = 30
ignorehitpause = 1
persistent = 1
[State 6241, SprPriority]
type = SprPriority
trigger1 = IsHelper(62421)
value = 31
ignorehitpause = 1
persistent = 1
[State 6241, SprPriority]
type = SprPriority
trigger1 = IsHelper(62422)
value = 32
ignorehitpause = 1
persistent = 1
[State 6241, SprPriority]
type = SprPriority
trigger1 = IsHelper(62423)
value = 33
ignorehitpause = 1
persistent = 1
[State 6241, SprPriority]
type = SprPriority
trigger1 = IsHelper(62424)
value = 34
ignorehitpause = 1
persistent = 1
[State 6241, SprPriority]
type = SprPriority
trigger1 = IsHelper(62425)
value = 35
ignorehitpause = 1
persistent = 1
[State 6241, SprPriority]
type = SprPriority
trigger1 = IsHelper(62426)
value = 36
ignorehitpause = 1
persistent = 1
[State 6241, SprPriority]
type = SprPriority
trigger1 = IsHelper(62427)
value = 37
ignorehitpause = 1
persistent = 1
[State 6241, SprPriority]
type = SprPriority
trigger1 = IsHelper(62428)
value = 38
ignorehitpause = 1
persistent = 1
[State 6241, SprPriority]
type = SprPriority
trigger1 = IsHelper(62429)
value = 38
ignorehitpause = 1
persistent = 1
[State 6241, SprPriority]
type = SprPriority
trigger1 = IsHelper(62430)
value = 39
ignorehitpause = 1
persistent = 1
[State 6241, SprPriority]
type = SprPriority
trigger1 = IsHelper(62431)
value = 39
ignorehitpause = 1
persistent = 1

[State 6241, BindToRoot]
type = BindToRoot
trigger1 = IsHelper(1)
trigger1 = !Time
time = 1
pos = 0,-80

[State 6241, BindToRoot]
type = BindToRoot
triggerall = !Time
trigger1 = IsHelper(500)
trigger2 = IsHelper(501)
time = 1
pos = 0,0

[State 6241, BindToRoot]
type = BindToRoot
trigger1 = IsHelper(6241)
trigger1 = !Time
time = 1
pos = 70,-74
[State 6241, BindToRoot]
type = BindToRoot
trigger1 = IsHelper(62411)
trigger1 = !Time
time = 1
pos = 70,-85
[State 6241, BindToRoot]
type = BindToRoot
trigger1 = IsHelper(62412)
trigger1 = !Time
time = 1
pos = 70,-85
[State 6241, BindToRoot]
type = BindToRoot
trigger1 = IsHelper(62413)
trigger1 = !Time
time = 1
pos = 70,-75
[State 6241, BindToRoot]
type = BindToRoot
trigger1 = IsHelper(62414)
trigger1 = !Time
time = 1
pos = 70,-80
[State 6241, BindToRoot]
type = BindToRoot
trigger1 = IsHelper(62415)
trigger1 = !Time
time = 1
pos = 30,-80
[State 6241, BindToRoot]
type = BindToRoot
trigger1 = IsHelper(62416)
trigger1 = !Time
time = 1
pos = 70,-80
[State 6241, BindToRoot]
type = BindToRoot
trigger1 = IsHelper(62417)
trigger1 = !Time
time = 1
pos = 70,-80

[State 6241, BindToRoot]
type = BindToRoot
triggerall = !Time
trigger1 = IsHelper(62420)
trigger2 = IsHelper(62430)
time = 1
pos = 0,-80
[State 6241, BindToRoot]
type = BindToRoot
triggerall = !Time
trigger1 = IsHelper(62421)
trigger2 = IsHelper(62422)
trigger3 = IsHelper(62423)
trigger4 = IsHelper(62424)
trigger5 = IsHelper(62425)
trigger6 = IsHelper(62426)
trigger7 = IsHelper(62427)
trigger8 = IsHelper(62428)
trigger9 = IsHelper(62429)
time = 1
pos = Var(0),-80+Var(1)

[State 6241, BindToRoot]
type = BindToRoot
trigger1 = !Time
trigger1 = IsHelper(62431)
time = 1
pos = 0,-200

[State 6241, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime

;--------------------------------------------------------------------------------------------------------------------------------------------
;SPIRAL 1
[StateDef 6260]
physics = N
velset = 0,0
anim = 6260
sprpriority = 4

[State 6260, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 6260, BindToRoot]
type = BindToRoot
trigger1 = 1
pos = 57,-89;62
time = 1

[State 6260, Explod]
type = Explod
trigger1 = !Time
ID = 6332
anim = 6332
pos = 0,0
postype = P1  ;p2,front,back,left,right
facing = 1
bindtime = -1
removetime = -1
pausemovetime = 0
supermovetime = 0
scale = .4,.4
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 6260, ChangeState]
type = ChangeState
trigger1 = Root,Anim = 3500 && Root,AnimElemTime(15) >= 0
trigger2 = Root,Anim = 3501 && Root,AnimElemTime(13) >= 0
trigger3 = Root,StateNo = 3502
trigger4 = Root,StateNo = 3510
trigger5 = Root,MoveType = H
value = 6261
ctrl = 0

;--------------------------------------------------------------------------------------------------------------------------------------------
;SPIRAL 1 END
[StateDef 6261]
physics = N
velset = 0,0
sprpriority = 5

[State 6261, Trans]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = Ceil(256-15*(Time)),256

[State 6261, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 6332
scale = .4-(.01*(Time)),.4-(.001*(Time))
trans = AddAlpha
alpha = Ceil(256-10*(Time)),256

[State 6261, RemoveExplod]
type = RemoveExplod
trigger1 = Time >= 15
ID = 6332

[State 6261, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 6261, DestroySelf]
type = DestroySelf
trigger1 = Time >= 30

;--------------------------------------------------------------------------------------------------------------------------------------------
;SPEED FX 1
[StateDef 6265]
type = A
physics = N
anim = 6265
ctrl = 0
velset = 0,0
sprpriority = -3

[State 6265, VarRandom]
type = VarRandom
trigger1 = 1
v = 9
range = -7,7
ignorehitpause = 1

[State 6265, PosAdd]
type = PosAdd
trigger1 = !Time
y = Var(9)
ignorehitpause = 1

[State 6265, AngleDraw]
type = AngleDraw
trigger1 = Var(9)
scale = .1+Cond(Var(9) <= 6,.1,Cond((Var(9) = [3,5]),.025,Cond((Var(9) = [1,2]),.05,.0125)))*(Time),.2
ignorehitpause = 1

[State 6265, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 6265, Trans]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256-16*Time,256
ignorehitpause = 1

[State 6265, DestroySelf]
type = DestroySelf
trigger1 = Time >= 18

;--------------------------------------------------------------------------------------------------------------------------------------------
;SPEED FX 2
[StateDef 6266]
type = A
physics = N
anim = 6265
ctrl = 0
velset = 0,0
sprpriority = -3

[State 6266, VarRandom]
type = VarRandom
trigger1 = 1
v = 9
range = -20,20
ignorehitpause = 1

[State 6266, PosAdd]
type = PosAdd
trigger1 = !Time
y = Var(9)
ignorehitpause = 1

[State 6266, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = .07+Cond(Var(9) <= 6,.1,Cond((Var(9) = [3,5]),.025,Cond((Var(9) = [1,2]),.05,.0125)))*(Time),.05
ignorehitpause = 1

[State 6266, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 6266, Trans]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256-16*Time,256
ignorehitpause = 1

[State 6266, DestroySelf]
type = DestroySelf
trigger1 = Time >= 18

;--------------------------------------------------------------------------------------------------------------------------------------------
;SPEED FX 3
[StateDef 6267]
type = A
physics = N
anim = 6265
ctrl = 0
velset = 0,0
sprpriority = -3

[State 6267, VarSet]
type = VarSet
trigger1 = !Time
var(5) = Parent,Var(5)

[State 6267, AngleDraw]
type = AngleDraw
trigger1 = 1
value = Cond(Var(5) = 2,-45,Cond(Var(5) = 1,0,45))
ignorehitpause = 1
persistent = 1

[State 6267, VarRandom]
type = VarRandom
trigger1 = 1
v = 9
range = -20,20
ignorehitpause = 1

[State 6267, PosAdd]
type = PosAdd
trigger1 = !Time
;x = Var(9)
y = Var(9)
ignorehitpause = 1

[State 6267, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = .07+Cond(Var(9) <= 6,.1,Cond((Var(9) = [3,5]),.025,Cond((Var(9) = [1,2]),.05,.0125)))*(Time),.05
ignorehitpause = 1

[State 6267, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 6267, Trans]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256-16*Time,256
ignorehitpause = 1

[State 6267, DestroySelf]
type = DestroySelf
trigger1 = Time >= 18

;--------------------------------------------------------------------------------------------------------------------------------------------
;SPEED FX 4
[StateDef 6268]
type = A
physics = N
anim = 6265
ctrl = 0
velset = 0,0
sprpriority = 21

[State 6268, VarRandom]
type = VarRandom
trigger1 = 1
v = 9
range = -30,50
ignorehitpause = 1

[State 6268, PosAdd]
type = PosAdd
trigger1 = !Time
y = Var(9)
ignorehitpause = 1

[State 6268, AngleDraw]
type = AngleDraw
trigger1 = Var(9)
scale = .3+Cond(Var(9) <= 6,.1,Cond((Var(9) = [3,5]),.025,Cond((Var(9) = [1,2]),.05,.0125)))*(Time),.2
ignorehitpause = 1

[State 6268, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 6268, Trans]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256-16*Time,256
ignorehitpause = 1

[State 6268, DestroySelf]
type = DestroySelf
trigger1 = Time >= 18

;--------------------------------------------------------------------------------------------------------------------------------------------
;ENERGY FX 1
[StateDef 6500]
physics = N
anim = 6500

[State 6500, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(6500)
value = -90
scale = 1,1

[State 6500, SprPriority]
type = SprPriority
trigger1 = IsHelper(6500)
value = 42

[State 6500, BindToRoot]
type = BindToRoot
trigger1 = !Time
time = 1
pos = 30,20

[State 6500, VelSet]
type = VelSet
trigger1 = !Time
y = 30

[State 6500, ChangeState]
type = ChangeState
trigger1 = IsHelper(6500)
trigger1 = !AnimTime
value = 6501

;--------------------------------------------------------------------------------------------------------------------------------------------
;ENERGY FX 1
[StateDef 6501]
physics = N
anim = 6500

[State 6501, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(6500)
value = -90
scale = 1,1

[State 6501, SprPriority]
type = SprPriority
trigger1 = IsHelper(6500)
value = 42

[State 6501, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime

;--------------------------------------------------------------------------------------------------------------------------------------------
;CUT 1
[StateDef 6721]
physics = N
anim = 6721
sprpriority = 3

[State 6721, VarSet]
type = VarSet
trigger1 = !Time
var(1) = 1    ;fv = 10

[State 6721, VarAdd]
type = VarAdd
trigger1 = AnimElem = 12
var(1) = 1    ;fv = 10

[State 6721, AngleDraw]
type = AngleDraw
trigger1 = 1
scale = .7,.7

[State 6721, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 100*Var(1)

[State 6721, DestroySelf]
type = DestroySelf
trigger1 = Time >= 48

;--------------------------------------------------------------------------------------------------------------------------------------------
;DUST FX 1
[StateDef 7000]
physics = N
velset = 0,0
anim = 9999

[State 7000, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Invisible

[State 7000, BindToRoot]
type = BindToRoot
trigger1 = Time

[State 7000, Explod]
type = Explod
trigger1 = !Time
anim = 7000
pos = 0,0
postype = P1  ;p2,front,back,left,right
supermovetime = 0
pausemovetime = 0
scale = .5,.5
sprpriority = 3

[State 7000, Explod]
type = Explod
triggerall = Root,StateNo != [1300,1310]
trigger1 = !Time || Time = 2 || Time = 6
anim = 7001
postype = P1  ;p2,front,back,left,right
supermovetime = 0
pausemovetime = 0
scale = .5,.5
sprpriority = 3

[State 7000, Explod]
type = Explod
triggerall = Root,StateNo = [1300,1310]
trigger1 = !Time || Time = 2 || Time = 6
anim = 7001
pos = -19,0
postype = P1  ;p2,front,back,left,right
supermovetime = 0
pausemovetime = 0
scale = .5,.5
sprpriority = 3

[State 7000, DestroySelf]
type = DestroySelf
trigger1 = Time >= 20
trigger2 = Root,StateNo = [3700,3701]

;--------------------------------------------------------------------------------------------------------------------------------------------
;DUST FX 2
[StateDef 7001]
physics = N
velset = 0,0
anim = 9999

[State 7001, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Invisible

[State 7001, BindToRoot]
type = BindToRoot
trigger1 = Time

[State 7001, Explod]
type = Explod
trigger1 = !Time
anim = 7000
pos = 0,0
postype = P1  ;p2,front,back,left,right
supermovetime = 0
pausemovetime = 0
scale = .4,.4
sprpriority = 0

[State 7001, Explod]
type = Explod
triggerall = Root,StateNo != [1300,1310]
trigger1 = !Time || Time = 2 || Time = 6
anim = 7001
postype = P1  ;p2,front,back,left,right
supermovetime = 0
pausemovetime = 0
scale = .4,.4
sprpriority = 0

[State 7001, Explod]
type = Explod
triggerall = Root,StateNo = [1300,1310]
trigger1 = !Time || Time = 2 || Time = 6
anim = 7001
pos = -19,0
postype = P1  ;p2,front,back,left,right
supermovetime = 0
pausemovetime = 0
scale = .4,.4
sprpriority = 0

[State 7001, DestroySelf]
type = DestroySelf
trigger1 = Time >= 20
trigger2 = Root,StateNo = [3700,3701]

;--------------------------------------------------------------------------------------------------------------------------------------------
;FALLING DUST
[StateDef 7004]
type = A
movetype = I
physics = N
ctrl = 0
anim = 9999
sprpriority = 3
velset = 0,0

[State 7004, BindToRoot]
type = BindToRoot
trigger1 = !Time
time = 1
pos = 17,15
ignorehitpause = 1
persistent = 0

[State 7004, Explod]
type = Explod
trigger1 = !Time
ID = 7004
anim = 7004
pos = 0,0
postype = P1
scale = .8,.15;.4,.15
facing = 1
bindtime = 1
removetime = -2
sprpriority = -2
ownpal = 1
supermovetime = 0
pausemovetime = 0
removeongethit = 1
ignorehitpause = 1

[State 7004, ModifyExplod]
type = ModifyExplod
trigger1 = NumExplod(7004)
ID = 7004
scale = .8+(.2*(Time)),.15+(.1*(Time))
trans = AddAlpha
alpha = Ceil(256-25.6*(Time)),256

[State 7004, RemoveExplod]
type = RemoveExplod
trigger1 = Time >= 12

[State 7004, DestroySelf]
type = DestroySelf
trigger1 = Time >= 12
trigger2 = Root,MoveType = H

;--------------------------------------------------------------------------------------------------------------------------------------------
;WIND FX 1
[StateDef 7006]
type = A
physics = N
anim = 7006
ctrl = 0
velset = 0,-5
sprpriority = 7

[State 7006, BindToRoot]
type = BindToRoot
trigger1 = !Time
time = 1
pos = 0,-30
ignorehitpause = 1

[State 7006, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -90
ignorehitpause = 1

[State 7006, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 7006, Trans]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignorehitpause = 1

[State 7006, DestroySelf]
type = DestroySelf
trigger1 = Root,StateNo != 4004
trigger2 = Root,MoveType = H
trigger3 = !AnimTime

;--------------------------------------------------------------------------------------------------------------------------------------------
;TORNADO 3
[StateDef 7011]
physics = N
velset = 0,0
anim = 7011
sprpriority = 5

[State 7011, AngleDraw]
type = AngleDraw
trigger1 = Time <= 8
value = 0
scale = 2-(.125*Time),2-(.125*Time)

[State 7011, Trans]
type = Trans
trigger1 = Time <= 8
trans = AddAlpha ;none, add, addalpha, add1, sub
alpha = 0+(16*Time),256

[State 7011, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 7011, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 7011 && !AnimTime
value = 7012

[State 7011, BindToRoot]
type = BindToRoot
trigger1 = Root,Anim = 3203
trigger2 = Root,Anim = 3600
pos = 10,-62

[State 7011, ChangeState]
type = ChangeState
trigger1 = Anim = 7012 && !((Root,Anim = 3203) || (Root,Anim = 3600))
trigger2 = Root,Anim = 3203 && Root,AnimElemTime(46) >= 0
trigger3 = Root,Anim = 3600 && Root,AnimElemTime(45) >= 0
value = 7013
ctrl = 0

;--------------------------------------------------------------------------------------------------------------------------------------------
;TORNADO 3 END
[StateDef 7013]
physics = N
velset = 0,0
anim = 7013
sprpriority = 5

[State 7013, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 0
scale = 1+(.125*Time),1+(.125*Time)

[State 7013, Trans]
type = Trans
trigger1 = Time <= 8
trans = AddAlpha ;none, add, addalpha, add1, sub
alpha = 128-(16*Time),256

[State 7013, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 7013, BindToRoot]
type = BindToRoot
trigger1 = Root,Anim = 3203
pos = 10,-62

[State 7013, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime

;--------------------------------------------------------------------------------------------------------------------------------------------
;MAELSTROM PULL 1
[StateDef 7014]
physics = N
velset = 0,0
anim = 7014

[State 7014, NotHitBy]
type = NotHitBy
trigger1 = 1
time = -1
value = SCA

[State 7014, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA,AA,AP,AT
stateno = 99999
ignorehitpause = 1

[State 7014, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0

[State 7014, Turn]
type = Turn
trigger1 = RootDist X < 10

[State 7014, PlayerPush]
type = PlayerPush
trigger1 = P2BodyDist X = [-10,10]
value = 1

[State 7014, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 7014, VelSet]
type = VelSet
trigger1 = !Time
x = 10

[State 7014, Explod]
type = Explod
trigger1 = (P2BodyDist X = [-5,5]) && (EnemyNear,Statetype != A) && !(Time%12)
ID = 7003
anim = 7003
pos = 0,0
postype = P1
sprpriority = 2
scale = .5,.5
removetime = -2
ownpal = 1

[State 7014, PosAdd]
type = PosAdd
trigger1 = P2BodyDist X != [-5,5]
x = Ceil(P2Dist X)-EnemyNear,Const(Size.Ground.Back)-5

[State 7014, DestroySelf]
type = DestroySelf
trigger1 = Root,Ctrl
trigger2 = Root,MoveType = H

;--------------------------------------------------------------------------------------------------------------------------------------------
;MAELSTROM PULL 2
[StateDef 7015]
physics = N
velset = 0,0
anim = 7015

[State 7015, NotHitBy]
type = NotHitBy
trigger1 = 1
time = -1
value = SCA

[State 7015, HitOverride]
type = hitoverride
trigger1 = 1
time = -1
attr = SCA,AA,AP,AT
stateno = 99999
ignorehitpause = 1

[State 7015, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0

[State 7015, Turn]
type = Turn
trigger1 = RootDist X < 10

[State 7015, PlayerPush]
type = PlayerPush
trigger1 = P2BodyDist X = [-20,20]
value = 1

[State 7015, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 7015, VelSet]
type = VelSet
trigger1 = Root,Anim = 3002
trigger1 = RootDist X >= 130
x = 200.0/(RootDist X+100.0)

[State 7015, Explod]
type = Explod
trigger1 = (P2BodyDist X = [-5,5]) && (EnemyNear,Statetype != A) && !(Time%12)
ID = 7003
anim = 7003
pos = 0,0
postype = P1
sprpriority = 2
scale = .5,.5
removetime = -2
ownpal = 1

[State 7015, PosAdd]
type = PosAdd
trigger1 = P2BodyDist X != [-5,5]
x = Ceil(P2Dist X)-EnemyNear,Const(Size.Ground.Back)-5

[State 7015, DestroySelf]
type = DestroySelf
trigger1 = Root,StateNo != 3000
trigger2 = RootDist X < 130
trigger3 = Root,MoveType = H

;--------------------------------------------------------------------------------------------------------------------------------------------
;BIKE 1
[StateDef 7050]
physics = N
velset = 0,0
anim = 7050
sprpriority = 0

[State 7050, AssertSpecial]
type = AssertSpecial
trigger1 = Root,StateNo = [4054,4055]
trigger1 = Root,Pos Y < -100
flag = Invisible
ignorehitpause = 1

[State 7050, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 7050, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 1
pos = 0,0
ignorehitpause = 1

[State 7050, VarSet]
type = VarSet
trigger1 = 1
var(1) = Ceil(Pos X)

[State 7050, Explod]
type = Explod
trigger1 = !NumExplod(7055)
ID = 7055
anim = 7055
pos = 0,0
postype = p1
bindtime = -1
removetime = -1
shadow = 5,5,5
ownpal = 1
sprpriority = 2
scale = 1,1

[State 7050, ChangeState]
type = ChangeState
trigger1 = Root,Anim = 194
value = 7051
persistent = 0

[State 7050, DestroySelf]
type = DestroySelf
trigger1 = Root,StateNo = [190,192]

;--------------------------------------------------------------------------------------------------------------------------------------------
;BIKE 2
[StateDef 7051]
physics = N
velset = 0,0
anim = 7051
sprpriority = 0

[State 7051, AssertSpecial]
type = AssertSpecial
trigger1 = Root,StateNo = [4054,4055]
trigger1 = Root,Pos Y < -100
flag = Invisible
ignorehitpause = 1

[State 7051, SprPriority]
type = SprPriority
trigger1 = Root,Anim = 195 && Root,AnimElem = 1
value = 19
ignorehitpause = 1
persistent = 1

[State 7051, SprPriority]
type = SprPriority
trigger1 = Root,StateNo = 0 && Abs(RootDist X) >= 90
value = -19
ignorehitpause = 1
persistent = 1

[State 7051, RemoveExplod]
type = RemoveExplod
trigger1 = !Time
ID = 7055

;[State 7051, Explod]
;type = Explod
;trigger1 = !NumExplod(7055)
;trigger1 = RoundState = 2
;trigger1 = NumEnemy
;trigger1 = EnemyNear,MoveType = H
;trigger1 = EnemyNear,StateNo != [120,155]
;trigger1 = EnemyNear,Time = 1
;trigger1 = Root,MoveType = A
;ID = 7055
;anim = 7055
;pos = 0,0
;postype = P1  ;p2,front,back,left,right
;bindtime = -1
;removetime = 4
;supermovetime = 0
;pausemovetime = 0
;sprpriority = -19
;ownpal = 1

[State 7051, DestroySelf]
type = DestroySelf
trigger1 = Root,StateNo = [190,192]

;--------------------------------------------------------------------------------------------------------------------------------------------
;BIKE 2
[StateDef 7052]
physics = N
velset = 0,0
anim = 7051
sprpriority = 19

[State 7052, AssertSpecial]
type = AssertSpecial
trigger1 = Root,StateNo = 4054
trigger1 = Root,Pos Y < -100
flag = Invisible
ignorehitpause = 1

[State 7052, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 7052, SprPriority]
type = SprPriority
trigger1 = Abs(RootDist X) >= 90 && P2Dist X = [-90,90]
trigger2 = Abs(RootDist Y) >= 50 && P2Dist Y = [-50,50]
trigger3 = Abs(RootDist X) >= 90 && P2Dist Y = [-50,50]
trigger4 = Abs(RootDist Y) >= 50 && P2Dist X = [-90,90]
trigger5 = Root,RoundsExisted >= 1;Root,Var(1)
value = -19
ignorehitpause = 1
persistent = 1

[State 7052, DestroySelf]
type = DestroySelf
trigger1 = Root,StateNo = [190,192]; || Root,StateNo = 190
trigger2 = RoundState < 2 && RoundsExisted < 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;ROCK 1
[StateDef 7071]
physics = N
velset = 0,-1-Random%6
anim = 7071+Random%5

[State 7071, SprPriority]
type = SprPriority
trigger1 = Root,StateNo != 3900
value = 3
ignorehitpause = 1
persistent = 1

[State 7071, SprPriority]
type = SprPriority
trigger1 = Root,StateNo = 3900
value = 7
ignorehitpause = 1
persistent = 0

[State 7071, AngleDraw]
type = AngleDraw
trigger1 = Var(59) < 300
scale = .07,.07

[State 7071, AngleDraw]
type = AngleDraw
trigger1 = Var(59) >= 300 && Var(59) < 600
scale = .1,.1

[State 7071, AngleDraw]
type = AngleDraw
trigger1 = Var(59) >= 600
scale = .2,.2

[State 7071, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 20*Time

[State 7071, Trans]
type = Trans
trigger1 = Time = [20,30]
trans = AddAlpha
alpha = (256-25*(Time-20)),(25*(Time-20))
ignorehitpause = 1

[State 7071, DestroySelf]
type = DestroySelf
trigger1 = Time >= 30

;--------------------------------------------------------------------------------------------------------------------------------------------
;ROCK 2
[StateDef 7072]
physics = N
velset = 0,-1-Random%5
anim = 7076+Random%5

[State 7072, SprPriority]
type = SprPriority
trigger1 = Root,StateNo != 3900
value = 3
ignorehitpause = 1
persistent = 1

[State 7072, SprPriority]
type = SprPriority
trigger1 = Root,StateNo = 3900
value = 7
ignorehitpause = 1
persistent = 0

[State 7072, AngleDraw]
type = AngleDraw
trigger1 = Var(59) < 300
scale = .4,.4

[State 7072, AngleDraw]
type = AngleDraw
trigger1 = Var(59) >= 300 && Var(59) < 600
scale = .6,.6

[State 7072, AngleDraw]
type = AngleDraw
trigger1 = Var(59) >= 600
scale = .8,.8

[State 7072, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 5*Time

[State 7072, Trans]
type = Trans
trigger1 = Time = [20,90]
trans = AddAlpha
alpha = (256-10*(Time-20)),0;(5*(Time-20))
ignorehitpause = 1

[State 7072, Trans]
type = Trans
trigger1 = Time > 90
trans = AddAlpha
alpha = 0,(25*(Time-90))
ignorehitpause = 1

[State 7072, DestroySelf]
type = DestroySelf
trigger1 = Time >= 180

;--------------------------------------------------------------------------------------------------------------------------------------------
;ROCK 3
[StateDef 7073]
physics = N
velset = 0,-1-Random%5
anim = 7081+Random%3

[State 7073, SprPriority]
type = SprPriority
trigger1 = Root,StateNo != 3900
value = 4
ignorehitpause = 1
persistent = 1

[State 7073, SprPriority]
type = SprPriority
trigger1 = Root,StateNo = 3900
value = 8
ignorehitpause = 1
persistent = 0

[State 7073, AngleDraw]
type = AngleDraw
trigger1 = Var(59) < 300
scale = .3,.3

[State 7073, AngleDraw]
type = AngleDraw
trigger1 = Var(59) >= 300 && Var(59) < 600
scale = .5,.5

[State 7073, AngleDraw]
type = AngleDraw
trigger1 = Var(59) >= 600
scale = .7,.7

[State 7073, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 5*Time

[State 7073, Trans]
type = Trans
trigger1 = Time = [20,90]
trans = AddAlpha
alpha = (256-10*(Time-20)),0;(5*(Time-20))
ignorehitpause = 1

[State 7073, Trans]
type = Trans
trigger1 = Time > 90
trans = AddAlpha
alpha = 0,(25*(Time-90))
ignorehitpause = 1

[State 7073, DestroySelf]
type = DestroySelf
trigger1 = Time >= 180

;--------------------------------------------------------------------------------------------------------------------------------------------
;COUNTER
[StateDef 7100]
type = A
physics = N
anim = 9999

[State 7100, Explod]
type = Explod
trigger1 = !NumExplod(7100)
ID = 7100
anim = 7100
postype = P1  ;p2,front,back,left,right
supermovetime = 0
pausemovetime = 900
sprpriority = 5
ownpal = 1

[State 7100, ModifyExplod]
type = ModifyExplod
trigger1 = NumExplod(7100)
ID = 7100
scale = .2+(.05*Time),.2+(.05*Time)
trans = AddAlpha
alpha = Ceil(256-(16*Time)),256

[State 7100, Explod]
type = Explod
trigger1 = !NumExplod(7101)
trigger1 = Root,StateNo != 500
trigger1 = Root,StateNo != 4205
ID = 7101
anim = 7101
postype = P1
facing = Facing
removetime = 32
sprpriority = 16
pausemovetime = -1
supermovetime = -1
ownPal = 1

[State 7100, ModifyExplod]
type = ModifyExplod
trigger1 = Time < 8
ID = 7101
scale = 0.5,.5
trans = AddAlpha
alpha = 256,0

[State 7100, ModifyExplod]
type = ModifyExplod
trigger1 = Time >= 8
ID = 7101
scale = .5+.0625*(Time-8),.5+.0625*(Time-8)
trans = AddAlpha
alpha = 256-32*(Time-8),32*(Time-8)

[State 7100, RemoveExplod]
type = RemoveExplod
trigger1 = Time >= 16
trigger2 = Root,StateNo = [900,902]
ID = 7100

[State 7100, RemoveExplod]
type = RemoveExplod
trigger1 = Time >= 16
ID = 7101

[State 7100, DestroySelf]
type = DestroySelf
trigger1 = Root,StateNo = [4200,4209]
trigger1 = !NumExplod(7100)

;--------------------------------------------------------------------------------------------------------------------------------------------
;DIZZY FX
[StateDef 7200]
physics = N
velset = 0, 0
anim = 9999
sprpriority = 4

[State 7200, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Invisible
ignorehitpause = 1

[State 7200, Explod]
type = Explod
trigger1 = Root,NumTarget(3207)
trigger1 = NumEnemy
trigger1 = EnemyNear,StateNo = 3255
trigger1 = !NumExplod(7200)
ID = 7200
anim = 7200
pos = Ceil(EnemyNear,Const(Size.Head.Pos.X)),Ceil(EnemyNear,Const(Size.Head.Pos.Y))
postype = P2  ;p2,front,back,left,right
scale = 1,1
bindtime = -1
removetime = -1
supermovetime = 0
pausemovetime = 0
removeongethit = 1
sprpriority = 0
ownpal = 1
persistent = 0

[State 7200, RemoveExplod]
type = RemoveExplod
triggerall = NumEnemy
trigger1 = EnemyNear,StateNo != 3255
trigger2 = EnemyNear,Ctrl
ID = 7200
ignorehitpause = 1

[State 7200, PosAdd]
type = PosAdd
trigger1 = 1
x = Ceil(P2Dist X)
y = Ceil(P2Dist Y)

[State 7200, PlaySnd]
type = PlaySnd
trigger1 = EnemyNear,StateNo = 3255
value = S5300,0+Random%2
persistent = 0

[State 7200, DestroySelf]
type = DestroySelf
triggerall = !NumExplod(7200)
trigger1 = EnemyNear,Ctrl
trigger1 = (EnemyNear,MoveType != H) && (EnemyNear,StateNo != [3252,3255])
trigger2 = !(EnemyNear,Alive)

;--------------------------------------------------------------------------------------------------------------------------------------------
;SPEED ARCH
[StateDef 7310]
type = A
physics = N
anim = 7310
ctrl = 0
velset = 0,0
sprpriority = 11

[State 7310, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 1
pos = 10,45
ignorehitpause = 1

[State 7310, AngleDraw]
type = AngleDraw
trigger1 = 1
value = -90
ignorehitpause = 1

[State 7310, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 7310, Trans]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignorehitpause = 1

[State 7310, DestroySelf]
type = DestroySelf
trigger1 = Root,StateNo != 4004
trigger2 = Root,MoveType = H

;--------------------------------------------------------------------------------------------------------------------------------------------
;POWER CHARGE
[StateDef 7500]
physics = N
anim = 7500
sprpriority = -2

[State 7500, BindToRoot]
type = BindToRoot
trigger1 = Root,StateNo = 740
trigger1 = Anim = 7500
pos = -5,0
time = 1

[State 7500, BindToRoot]
type = BindToRoot
trigger1 = Anim = 7501 && !Time
pos = 0,0
time = 1

[State 7500, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
ignorehitpause = 1

[State 7500, AfterImage]
type = AfterImage
trigger1 = !Time
time = 999
timegap = 1
framegap = 1
length = 4
palmul = .5,.33,.25
palcontrast = 120,120,120
trans = Add

[State 7500, Explod]
type = Explod
trigger1 = !NumExplod(7510)
ID = 7510
anim = 7510
sprpriority = 4
pos = 0,5
postype = P1
bindtime = -1
removetime = -1
ownpal = 1

[State 7500, ModifyExplod]
type = ModifyExplod
trigger1 = 1
ID = 7510
scale = .5,.1+.00010*(Root,Power)

[State 7500, ModifyExplod]
type = ModifyExplod
trigger1 = Root,Power >= 4000
ID = 7510
scale = .5,.5

[State 7500, Helper]
type = Helper
trigger1 = Anim = 7500 && !(Time%7) && NumHelper(7520) < 8
stateno = 7520
ID = 7520
name = "Particle"
postype = P1
pos = Ceil(240-Random/2.1),-Ceil(Random/4)
size.XScale = .3
size.YScale = .3
ownpal = 1

[State 7500, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 7500 && (Root,StateNo != 740)
value = 7501
elem = AnimElemNo(0)

[State 7500, RemoveExplod]
type = RemoveExplod
trigger1 = Anim = 7501 && !AnimTime
trigger2 = Root,StateNo != [740,741]

[State 7500, DestroySelf]
type = DestroySelf
trigger1 = Anim = 7501 && !AnimTime

;--------------------------------------------------------------------------------------------------------------------------------------------
;POWER CHARGE PARTICLES 1
[StateDef 7520]
physics = N
anim = 7520
sprpriority = 4

[State 7520, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 7520, AssertSpecial]
type = AssertSpecial
trigger1 = !Time
flag = Invisible

[State 7520, VelSet]
type = VelSet
trigger1 = !Time
x = (RootDist X-4)/60
y = (RootDist Y-55)/60

[State 7520, DestroySelf]
type = DestroySelf
trigger1 = Time >= 56
trigger2 = Root,StateNo != 740

;--------------------------------------------------------------------------------------------------------------------------------------------
;POWER CHARGE PARTICLES 2
[StateDef 7521]
physics = N
anim = 7520
sprpriority = 2

[State 7521, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 7521, AssertSpecial]
type = AssertSpecial
trigger1 = !Time
flag = Invisible

[State 7521, Afterimage]
type = AfterImage
trigger1 = !Time
length = 40
palbright = 1,1,1
palcontrast = 25,155,255
paladd = 0,0,0
palmul = .55,.55,.55
timegap = 2
framegap = 1
trans = Add
time = 9999

[State 7521, VarRandom]
type = VarRandom
trigger1 = 1
v = 9
range = -200, 200

[State 7521, VarRandom]
type = VarRandom
trigger1 = 1
v = 10
range = -300, 50

[State 7521, PosSet]
type = PosSet
trigger1 = !Time
x = Var(9)
y = Var(10)

[State 7521, VelMul]
type = VelMul
trigger1 = Time > 30
x = .95
y = .95

[State 7521, VelAdd]
type = VelAdd
trigger1 = Root,StateNo != 3020
trigger1 = Vel X < 9 && RootDist X >= 5
x = 1

[State 7521, VelAdd]
type = VelAdd
trigger1 = Root,StateNo != 3020
trigger1 = Vel X > -9 && RootDist X < 5
x = -1

[State 7521, VelAdd]
type = VelAdd
trigger1 = Vel Y < 9 && RootDist Y >= 70
y = 1

[State 7521, VelAdd]
type = VelAdd
trigger1 = Vel Y > -9 && RootDist Y < 70
y = -1

[State 7521, VelMul]
type = VelMul
trigger1 = Root,Anim != 3002
trigger1 = Root,MoveType = H
x = 2
y = 2

[State 7521, VelSet]
type = VelSet
trigger1 = Vel Y = 0
y = 1

[State 7521, AngleDraw]
type = AngleDraw
trigger1 = Time < 70
scale = 1-(.013*(Time)),1-(.013*(Time))

[State 7521, AngleDraw]
type = AngleDraw
trigger1 = Time >= 70
scale = .0001,.0001

[State 7521, DestroySelf]
type = DestroySelf
trigger1 = Time >= 80

;--------------------------------------------------------------------------------------------------------------------------------------------
;POWER CHARGE PARTICLES 3
[StateDef 7522]
physics = N
anim = 7520
sprpriority = 2-Random%4

[State 7522, Trans]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256,256
ignorehitpause = 1

[State 7522, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 7522, AssertSpecial]
type = AssertSpecial
trigger1 = !Time
flag = Invisible

[State 7522, Afterimage]
type = AfterImage
trigger1 = !Time
length = 40
palbright = 1,1,1
palcontrast = 25,155,255
paladd = 0,0,0
palmul = .55,.55,.55
timegap = 2
framegap = 1
trans = Add
time = 9999

[State 7522, VarRandom]
type = VarRandom
trigger1 = 1
v = 9
range = -200, 200

[State 7522, VarRandom]
type = VarRandom
trigger1 = 1
v = 10
range = -300, 50

[State 7522, PosSet]
type = PosSet
trigger1 = !Time
x = Var(9)
y = Var(10)

[State 7522, VelMul]
type = VelMul
trigger1 = Time > 30
x = .95
y = .95

[State 7522, VelAdd]
type = VelAdd
trigger1 = Root,StateNo != 3901
trigger1 = Vel X < 9 && RootDist X >= -80
x = 1

[State 7522, VelAdd]
type = VelAdd
trigger1 = Root,StateNo != 3901
trigger1 = Vel X > -9 && RootDist X < -80
x = -1

[State 7522, VelAdd]
type = VelAdd
trigger1 = Vel Y < 9 && RootDist Y >= 70
y = 1

[State 7522, VelAdd]
type = VelAdd
trigger1 = Vel Y > -9 && RootDist Y < 70
y = -1

[State 7522, VelMul]
type = VelMul
trigger1 = Root,Anim != 3900
trigger1 = Root,MoveType = H
x = 2
y = 2

[State 7522, VelSet]
type = VelSet
trigger1 = Vel Y = 0
y = 1

[State 7522, AngleDraw]
type = AngleDraw
trigger1 = Time < 70
scale = 1-(.015*(Time)),1-(.015*(Time))

[State 7522, AngleDraw]
type = AngleDraw
trigger1 = Time >= 70
scale = .0001,.0001

[State 7522, DestroySelf]
type = DestroySelf
trigger1 = Time >= 80

;--------------------------------------------------------------------------------------------------------------------------------------------
;SCREEN FX
[StateDef 7800]
type = A
movetype = I
physics = N
anim = 7800
sprpriority = 21

[State 7800, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(7800)
value = -90
scale = 1,1
ignorehitpause = 1
persistent = 1

[State 7800, PosSet]
type = PosSet
trigger1 = 1
x = 0
y = Floor(Pos Y-ScreenPos Y)+120
ignorehitpause = 1
persistent = 1

[State 7800, ChangeState]
type = ChangeState
trigger1 = Time >= 240
trigger2 = Root,NumHelper(7925)
trigger3 = Root,NumHelper(7950)
value = 7801
ignorehitpause = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;SCREEN FX - END
[StateDef 7801]
type = A
movetype = I
physics = N
anim = 7801
sprpriority = 21

[State 7801, AngleDraw]
type = AngleDraw
trigger1 = IsHelper(7800)
value = -90
scale = 1,1
ignorehitpause = 1
persistent = 1

[State 7801, DestroySelf]
type = DestroySelf
trigger1 = !AnimTime
trigger2 = Root,NumHelper(7925)
trigger3 = Root,NumHelper(7950)

;--------------------------------------------------------------------------------------------------------------------------------------------
;SKY FISSURE SLASH 1
[StateDef 7810]
type = A
movetype = I
physics = N
ctrl = 0
anim = 9999
sprpriority = 2
velset = 0,0

[State 7810, PalFX]
type = PalFX
trigger1 = 1
time = 25
add = 0,0,0
mul = 256,256,256
sinadd = 0,0,0,1
invertall = 1
color = 256
ignorehitpause = 1

[State 7810, Explod]
type = Explod
trigger1 = !Time
ID = 7777
anim = 7777
pos = Ceil(GameWidth/2),Ceil(GameHeight/2)
postype = Left
scale = 500,500
removetime = -2
sprpriority = 23;-7
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1
bindtime = -1
ownpal = 1

[State 7810, Explod]
type = Explod
trigger1 = Time = 5 && Root,Facing = 1
ID = 6720
anim = 6720
pos = 0,0
space = Screen
facing = 1
scale = .7,.6
removetime = -2
sprpriority = 25;-5
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1
bindtime = -1
ownpal = 0
[State 7810, Explod]
type = Explod
trigger1 = Time = 17 && Root,Facing = 1
ID = 6720
anim = 6720
pos = ScreenWidth,ScreenHeight
space = Screen
facing = -1
vfacing = -1
scale = .7,.6
removetime = -2
sprpriority = 25;-5
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1
bindtime = -1
ownpal = 0

[State 7810, Explod]
type = Explod
trigger1 = Time = 5 && Root,Facing = -1
ID = 6720
anim = 6720
pos = ScreenWidth,0
space = Screen
facing = -1
scale = .7,.6
removetime = -2
sprpriority = 25;-5
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1
bindtime = -1
ownpal = 0
[State 7810, Explod]
type = Explod
trigger1 = Time = 17 && Root,Facing = -1
ID = 6720
anim = 6720
pos = 0,ScreenHeight
space = Screen
facing = 1
vfacing = -1
scale = .7,.6
removetime = -2
sprpriority = 25;-5
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1
bindtime = -1
ownpal = 0

[State 7810, Explod]
type = Explod
trigger1 = Time = 46 && Root,Facing = 1
ID = 7810
anim = 7810
pos = 0,0
space = Screen
facing = 1
scale = 1,1
removetime = -2
sprpriority = 25;-5
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1
bindtime = -1
ownpal = 1
[State 7810, Explod]
type = Explod
trigger1 = Time = 46 && Root,Facing = -1
ID = 7810
anim = 7810
pos = ScreenWidth,0
space = Screen
facing = -1
scale = 1,1
removetime = -2
sprpriority = 25;-5
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1
bindtime = -1
ownpal = 1

[State 7810, Explod]
type = Explod
trigger1 = Time = 51
ID = 7774
anim = 7774
pos = Ceil(GameWidth/2),Ceil(GameHeight/2)
postype = Left
scale = 500,500
removetime = -2
sprpriority = 24;-6
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1
bindtime = -1
ownpal = 1

[State 7810, RemoveExplod]
type = RemoveExplod
trigger1 = Time >= 300;Time > 1 && !NumExplod(7774)

;--------------------------------------------------------------------------------------------------------------------------------------------
;NORMAL FINISH HELPER
[StateDef 7900]
type = S
anim = 9999

[State 7900, VarSet]
type = VarSet
trigger1 = !Time
var(15) = 1

[State 7900, ParentVarSet]
type = ParentVarSet
trigger1 = Time = 1
var(15) = 1

[State 7900, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoBarDisplay

[State 7900, SuperPause]
type = SuperPause
trigger1 = !Time
time = 30
movetime = 30
darken = 0
anim = -1
sound = -1
p2defmul = 1

[State 7900, DestroySelf]
type = DestroySelf
trigger1 = RoundState != 3
persistent = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;SPECIAL FINISH HELPER
[StateDef 7925]
type = S
anim = 9999

[State 7925, VarSet]
type = VarSet
trigger1 = !Time
var(15) = 2

[State 7925, ParentVarSet]
type = ParentVarSet
trigger1 = Time = 1
var(15) = 2

[State 7925, SuperPause]
type = SuperPause
trigger1 = !Time
time = 35
movetime = 35
darken = 0
anim = -1
sound = -1
p2defmul = 1

[State 7925, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoBarDisplay
ignorehitpause = 1

[State 7925, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S7925,0
volumescale = 100
channel = -1
persistent = 0

[State 7925, BGPalFX]
type = BGpalFX
trigger1 = Time < 10
time = 1
add = 255,255,255

[State 7925, BGPalFX]
type = BGpalFX
trigger1 = Time = [10,25)
time = 1
add = 250-(Time*10), 250-(Time*10), 250-(Time*10)

[State 7925, DestroySelf]
type = DestroySelf
trigger1 = RoundState != 3
persistent = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;SUPER FINISH HELPER
[StateDef 7950]
type = S
anim = 9999
sprpriority = -10

[State 7950, VarSet]
type = VarSet
trigger1 = !Time
var(15) = 3

[State 7950, ParentVarSet]
type = ParentVarSet
trigger1 = Time = 1
var(15) = 3

[State 7950, ParentVarSet]
type = ParentVarSet
trigger1 = !Time
var(53) = 1
ignorehitpause = 1

[State 7950, Explod]
type = Explod
trigger1 = Anim = 9999
trigger1 = !Time
trigger1 = !(Root,StateNo = 3430 && Root,AnimElemTime(14) < 0)
trigger1 = !(Root,StateNo = 4209 && Root,Time < 300)
ID = 7950
anim = 7950
pos = Ceil(ScreenWidth/2),Ceil(ScreenHeight/2)
space = Screen
bindtime = -1
removetime = 150
supermovetime = 9999
pausemovetime = 9999
scale = .6,.6
sprpriority = -10
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 7950, ModifyExplod]
type = ModifyExplod
trigger1 = NumExplod(7950)
trigger1 = Time > 50
ID = 7950
trans = AddAlpha
alpha = Ceil(256-10*(Time-50)),Ceil(0+10*(Time-50))

[State 7950, SuperPause]
type = SuperPause
trigger1 = Anim = 9999
;trigger1 = !(Root,StateNo = 3430 && Root,AnimElemTime(14) < 0)
trigger1 = !(Root,StateNo = 4209 && Root,Time < 300)
trigger1 = !Time
time = 40
movetime = 40
darken = 0
anim = -1
sound = -1
p2defmul = 1

[State 7950, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoBarDisplay
flag2 = NoShadow

[State 7950, AssertSpecial]
type = AssertSpecial
trigger1 = Anim = 7770
trigger1 = Time < 80
flag = NoFG
ignorehitpause = 1
persistent = 1

[State 7950, AssertSpecial]
type = AssertSpecial
;trigger1 = Root,StateNo = 3430 && Root,AnimElemTime(14) < 0
trigger1 = Root,StateNo = 4209 && Root,Time < 300
flag = NoKOSlow
ignorehitpause = 1
persistent = 1

[State 7950, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S7950,0
ignorehitpause = 1
lowpriority = 0
channel = -1

[State 7950, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S7950,0
ignorehitpause = 1
lowpriority = 0
channel = -1

[State 7950, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S7950,0
ignorehitpause = 1
lowpriority = 0
channel = -1

[State 7950, DestroySelf]
type = DestroySelf
trigger1 = RoundState != 3
trigger2 = NumExplod(7950) > 1
persistent = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;SONIC HURRICANE BG FADE 1
[StateDef 9000]
type = S

[State 9000, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Invisible
flag2 = NoShadow

[State 9000, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 9000, Offset]
type = Offset
trigger1 = 1
y = 99999999

[State 9000, VarSet]
type = VarSet
trigger1 = !Time
v = 11
value = 256

[State 9000, VarAdd]
type = VarAdd
trigger1 = Var(12) = 0
trigger1 = Var(11) > 1
v = 11
value = -5  ;Fade Out Speed (-5 max -1 min)

[State 9000, VarSet]
type = VarSet
trigger1 = Var(11) < 2
v = 12
value = 1

[State 9000, VarAdd]
type = VarAdd
trigger1 = Var(12) = 1
trigger1 = Var(11) <= 256
trigger1 = Time > 1 ;Fade Time Control
v = 11
value = 5  ;Fade Speed (1-5 Only)

[State 9000, BGPalFX]
type = BGPalFX
trigger1 = Var(11)
time = 1
add = 0,0,0
mul = Var(11),Var(11),Var(11)
sinadd = 0,0,0,10
invertall = 0
color = 256

[State 9000, DestroySelf]
type = DestroySelf
trigger1 = Time > 10
trigger1 = Var(11) >= 256
trigger2 = Root,StateNo != 3000

;--------------------------------------------------------------------------------------------------------------------------------------------
;SONIC HURRICANE BG FADE 2
[StateDef 9001]
type = S

[State 9001, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Invisible
flag2 = NoShadow

[State 9001, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 9001, Offset]
type = Offset
trigger1 = 1
y = 99999999

[State 9001, VarSet]
type = VarSet
trigger1 = !Time
v = 11
value = 256

[State 9001, VarAdd]
type = VarAdd
trigger1 = Var(12) = 0
trigger1 = Var(11) > 1
v = 11
value = -5  ;Fade Out Speed (-5 max -1 min)

[State 9001, VarSet]
type = VarSet
trigger1 = Var(11) < 2
v = 12
value = 1

[State 9001, VarAdd]
type = VarAdd
trigger1 = Var(12) = 1
trigger1 = Var(11) <= 256
trigger1 = Time > 400 ;Fade Time Control
v = 11
value = 5  ;Fade Speed (1-5 Only)

[State 9001, BGPalFX]
type = BGPalFX
trigger1 = Var(11)
time = 1
add = 0,0,0
mul = Var(11),Var(11),Var(11)
sinadd = 0,0,0,10
invertall = 0
color = 256

[State 9001, DestroySelf]
type = DestroySelf
trigger1 = Time > 10
trigger1 = Var(11) >= 256
trigger2 = Root,StateNo = 3020 && Root,AnimElemTime(5) >= 0
trigger3 = Root,MoveType = H

;--------------------------------------------------------------------------------------------------------------------------------------------
;SOMERSAULT STRIKE BG FADE
[StateDef 9010]
type = S

[State 9010, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Invisible
flag2 = NoShadow

[State 9010, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 9010, Offset]
type = Offset
trigger1 = 1
y = 99999999

[State 9010, VarSet]
type = VarSet
trigger1 = !Time
v = 11
value = 256

[State 9010, VarAdd]
type = VarAdd
trigger1 = Var(12) = 0
trigger1 = Var(11) > 1
v = 11
value = -5;Fade Out Speed (-5 max -1 min)

[State 9010, VarSet]
type = VarSet
trigger1 = Var(11) < 2
v = 12
value = 1

[State 9010, VarAdd]
type = VarAdd
trigger1 = Var(12) = 1
trigger1 = Var(11) <= 256
trigger1 = Time > Cond(Root,Var(5) = 5,1,80) ;Fade Time Control
v = 11
value = 5  ;Fade Speed (1-5 Only)

[State 9010, BGPalFX]
type = BGPalFX
trigger1 = Var(11)
time = 1
add = 0,0,0
mul = Var(11),Var(11),Var(11)
sinadd = 0,0,0,10
invertall = 0
color = 256

[State 9010, DestroySelf]
type = DestroySelf
trigger1 = Time > 10
trigger1 = Var(11) >= 256
trigger2 = Root,MoveType = H

;--------------------------------------------------------------------------------------------------------------------------------------------
;TOTAL WIPEOUT BG FADE 1
[StateDef 9020]
type = S

[State 9020, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Invisible
flag2 = NoShadow

[State 9020, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 9020, Offset]
type = Offset
trigger1 = 1
y = 99999999

[State 9020, VarSet]
type = VarSet
trigger1 = !Time
v = 11
value = 256

[State 9020, VarAdd]
type = VarAdd
trigger1 = Var(12) = 0
trigger1 = Var(11) > 1
v = 11
value = -5;Fade Out Speed (-5 max -1 min)

[State 9020, VarSet]
type = VarSet
trigger1 = Var(11) < 2
v = 12
value = 1

[State 9020, VarAdd]
type = VarAdd
trigger1 = Var(12) = 1
trigger1 = Var(11) <= 256
trigger1 = Time > 10 ;Fade Time Control
v = 11
value = 5  ;Fade Speed (1-5 Only)

[State 9020, BGPalFX]
type = BGPalFX
trigger1 = Var(11)
time = 1
add = 0,0,0
mul = Var(11),Var(11),Var(11)
sinadd = 0,0,0,10
invertall = 0
color = 256

[State 9020, DestroySelf]
type = DestroySelf
trigger1 = Time > 10
trigger1 = Var(11) >= 256
trigger2 = Root,StateNo != 3200

;--------------------------------------------------------------------------------------------------------------------------------------------
;BUSTER SAW BG FADE
[StateDef 9030]
type = S

[State 9030, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Invisible
flag2 = NoShadow

[State 9030, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 9030, Offset]
type = Offset
trigger1 = 1
y = 99999999

[State 9030, VarSet]
type = VarSet
trigger1 = !Time
v = 11
value = 256

[State 9030, VarAdd]
type = VarAdd
trigger1 = Var(12) = 0
trigger1 = Var(11) > 1
v = 11
value = -5  ;Fade Out Speed (-5 max -1 min)

[State 9030, VarSet]
type = VarSet
trigger1 = Var(11) < 2
v = 12
value = 1

[State 9030, VarAdd]
type = VarAdd
trigger1 = Var(12) = 1
trigger1 = Var(11) <= 256
trigger1 = Time > 5 ;Fade Time Control
v = 11
value = 5  ;Fade Speed (1-5 Only)

[State 9030, BGPalFX]
type = BGPalFX
trigger1 = Var(11)
time = 1
add = 0,0,0
mul = Var(11),Var(11),Var(11)
sinadd = 0,0,0,10
invertall = 0
color = 256

[State 9030, DestroySelf]
type = DestroySelf
trigger1 = Time > 10
trigger1 = Var(11) >= 256

;--------------------------------------------------------------------------------------------------------------------------------------------
;SKY FISSURE BG FADE
[StateDef 9040]
type = S

[State 9040, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Invisible
flag2 = NoShadow

[State 9040, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 9040, Offset]
type = Offset
trigger1 = 1
y = 99999999

[State 9040, VarSet]
type = VarSet
trigger1 = !Time
v = 11
value = 256

[State 9040, VarAdd]
type = VarAdd
trigger1 = Var(12) = 0
trigger1 = Var(11) > 1
v = 11
value = -5  ;Fade Out Speed (-5 max -1 min)

[State 9040, VarSet]
type = VarSet
trigger1 = Var(11) < 2
v = 12
value = 1

[State 9040, VarAdd]
type = VarAdd
trigger1 = Var(12) = 1
trigger1 = Var(11) <= 256
trigger1 = Time > 5 ;Fade Time Control
v = 11
value = 5  ;Fade Speed (1-5 Only)

[State 9040, BGPalFX]
type = BGPalFX
trigger1 = Var(11)
time = 1
add = 0,0,0
mul = Var(11),Var(11),Var(11)
sinadd = 0,0,0,10
invertall = 0
color = 256

[State 9040, DestroySelf]
type = DestroySelf
trigger1 = Time > 10
trigger1 = Var(11) >= 256

;--------------------------------------------------------------------------------------------------------------------------------------------
;CROSSFIRE FLASH BG FADE 1
[StateDef 9130]
type = S

[State 9130, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Invisible
flag2 = NoShadow

[State 9130, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 9130, Offset]
type = Offset
trigger1 = 1
y = 99999999

[State 9130, VarSet]
type = VarSet
trigger1 = !Time
v = 11
value = 256

[State 9130, VarAdd]
type = VarAdd
trigger1 = Var(12) = 0
trigger1 = Var(11) > 1
v = 11
value = -5;Fade Out Speed (-5 max -1 min)

[State 9130, VarSet]
type = VarSet
trigger1 = Var(11) < 2
v = 12
value = 1

[State 9130, VarAdd]
type = VarAdd
trigger1 = Var(12) = 1
trigger1 = Var(11) <= 256
trigger1 = Time > 5 ;Fade Time Control
v = 11
value = 5  ;Fade Speed (1-5 Only)

[State 9130, BGPalFX]
type = BGPalFX
trigger1 = Var(11)
time = 1
add = 0,0,0
mul = Var(11),Var(11),Var(11)
sinadd = 0,0,0,10
invertall = 0
color = 256

[State 9130, DestroySelf]
type = DestroySelf
trigger1 = Time > 10
trigger1 = Var(11) >= 256

;--------------------------------------------------------------------------------------------------------------------------------------------
;CAMERA 1
[StateDef 9400]
type = S
velSet = 0,0
anim = 9999

[State 9400, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,0
ignorehitpause = 1

[State 9400, Width]
type = Width
trigger1 = !Time
edge = 0,0

[State 9400, DestroySelf]
type = DestroySelf
trigger1 = RoundState = 2

;--------------------------------------------------------------------------------------------------------------------------------------------
;CAMERA 2
[StateDef 9401]
type = S
velSet = 0,0
anim = 9999

[State 9401, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 1,1
ignorehitpause = 1

[State 9401, DestroySelf]
type = DestroySelf
trigger1 = Root,StateNo = 4120

;--------------------------------------------------------------------------------------------------------------------------------------------
;GENERAL ZOOM CONTROLLER
[StateDef 9500]
type = A
physics = N
movetype = I
velset = 0,0
anim = 9999
sprpriority = -4

;Only use this helper with player or a player helper
;Super zoom in effect.
;var(5)	Camera Action State	-1 mean exit and close (0 is zoom in 1 is stay 2 is zoom out 3 is destroy)
;var(6)	Camera Counter for var(5) State
;var(7) Camera Counter for shake
;var(8) Focus Point x
;var(9) Focus Point y
;var(10) is Parent Var(5)
;var(11) is zoom in / fade in time
;var(12) is zoom out / fade out time
;Var(40) is Parent ID or Target ID
;--------------------------------------
;fvar(13) is (Target zoom level - 1)
;fvar(5) is zoom in step values
;fvar(15) is zoom out step values
;fvar(21) is (1 - Camera zoom level)
;fvar(22) final value of relative zoom factor which used in zoom controller


;---------- Parent Check ----------------
[State Parent Check 1]
type = VarSet
trigger1 = Var(40) = 0
trigger1 = PlayerIDExist(Const(Size.Proj.DoScale))
var(40) = Const(Size.Proj.DoScale)
ignorehitpause = 1

[State Parent Check 2]
type = VarSet
trigger1 = Var(40)
trigger1 = PlayerIDExist(Const(Size.Proj.DoScale)) = 0
var(40) = 0
ignorehitpause = 1

;------- Control system camera -----------
[State 9500, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1
ignorehitpause = 1

;------- set config values -----------
[State 9500, Get-Var(5)]
type = VarSet
trigger1 = !Time
var(10) = Parent,Var(5)
persistent = 0

;---- Uncommint compensation to allow Abszoom ----
[State 9500, Compensation Zoom Var]
type = VarSet
trigger1 = CameraZoom > 0 && CameraZoom < 1
fvar(21) = (1-CameraZoom)

[State 9500, Compensation Zoom Var]
type = VarSet
trigger1 = CameraZoom >= 1
fvar(21) = 0

;---- Uncommint compensation to allow Abszoom ----


[State 9500, Set Fade In Time]
type = VarSet
trigger1 = !Time
var(11) = 12+Var(10)
persistent = 0

[State 9500, Set Fade Out Time]
type = VarSet
trigger1 = !Time
var(12) = 12+Var(10)
persistent = 0

[State 9500, Set Target Zoom Level]
type = VarSet
trigger1 = !Time
fvar(13) = FVar(21)+Parent,FVar(13)

[State 9500, Calcuate Zoom In Step Size]
type = VarSet
trigger1 = !Time
fvar(5) = FVar(13)/Var(11)

[State 9500, Calcuate Zoom Out Step Size]
type = VarSet
trigger1 = !Time
fvar(15) = FVar(13)/Var(12)

;------------- INIT Finished -----------------

;------------- Camera Phase control var(5) ---------
[State 9500, Exit For Unexpected Reasons]
type = VarSet
triggerall = Var(5) != -1
trigger1 = !Var(40); Parent or Target not existed
trigger1 = Var(6) := 1
var(5) = -1

[State 9500, Change Zoom State 1]
type = VarAdd
triggerall = Var(5) >= 0
trigger1 = Var(5) = 0 && Var(11) <= 0
trigger2 = Var(5) = 2 && Var(12) <= 0
var(5) = 1

[State 9500, Change Zoom State 2 Zoom Out]
type = VarAdd
triggerall = Var(5) >= 0
trigger1 = Var(5) = 1
trigger1 = Time = Const(Size.ShadowOffset)
var(5) = 1

;--------------- Pos Move and Binds ---------------
[State 9500, Init Pos]; alway zoom from camera pos to view it smoothly.
type = PosSet
trigger1 = !Time
x = 0;camera always in middle of the screen
y = CameraPos Y

[State 9500, Fly To Parent Fade In];zoom in 
type = VelSet
trigger1 = !Time
trigger1 = Var(40) && Var(5) = 0
x = (ParentDist X+(Const(Size.Ground.Front)*Const(Size.XScale)*2.0))/Var(11)
y = (ParentDist Y+(Parent,P2Dist Y/3.0))/Var(11)
ignorehitpause = 1

[State 9500, Bind To Parent Stay For 1]; stay and stop moving
type = BindToParent
trigger1 = Var(40) && Var(5) = 1
time = 1
facing = 1
pos = Floor(2*Const(Size.Ground.Front)*Const(Size.XScale)),Floor(Parent,P2Dist Y/3.0*Const(Size.YScale))
;pos = Parent,P2Dist X/4.0,Parent,P2Dist Y/3.0
ignorehitpause = 1

[State 9500, Move Fade Out]; zoom out move
type = VelSet
trigger1 = Var(5) >= 2
trigger2 = Var(5) = -1; In case error
x = (-Pos X*Facing)/Var(12)
y = (CameraPos Y-Pos Y)/Var(12)
persistent = 0

;----------------- Compute zoom factor fvar(22) ---------------------
[State 9500, Compute Scale On Error Unexpected Exit]
type = VarSet
triggerall = Var(5) = -1
trigger1 = Var(6) <= Var(12)
fvar(22) = Cond(FVar(22) <= 1,1,1+(((FVar(22)-1)/Var(12))*(Var(12)-Var(6))))
ignorehitpause = 1

[State 9500, Zoom In]; and - counter var(11)
type = VarSet
triggerall = Var(5) >= 0
trigger1 = Var(5) = 0 && Var(11)
trigger1 = Var(11):= Var(11)-1
fvar(22) = (1+(FVar(13)-(FVar(5)*Var(11))))
ignorehitpause = 1

[State 9500, Zoom Keep]; no couter but triggered by supercharge helper disappear.
type = VarSet
triggerall = Var(5) >= 0
trigger1 = Var(5) = 0 && Var(11) = 0
trigger2 = Var(5) = 1
fvar(22) = (1+(FVar(13)-(FVar(5)*Var(11))))
ignorehitpause = 1

[State 9500, Zoom Out]; and - counter var(12)
type = VarSet
triggerall = Var(5) >= 0
trigger1 = Var(5) = 2 && Var(12)
trigger1 = Var(12):= Var(12) - 1
fvar(22) = (1+(FVar(15)*Var(12)))
ignorehitpause = 1

;---------------- Apply Zoom -------
[State 9500, Apply Zoom]
type = Zoom
triggerall = FVar(22); needs to be >= 1
trigger1 = Time >= 0
scale = FVar(22)
pos = ((Pos X)/FVar(22))*CameraZoom,((Pos Y)-(CameraPos Y/FVar(22)))*CameraZoom
ignorehitpause = 1

;---------------- End --------------
[State 9500, End]
type = DestroySelf
trigger1 = Var(5) = -1
trigger1 = Var(6) > Var(12); Unexpected finish
trigger2 = Var(5) >= 3; normal exit
trigger3 = Root,Anim = 3002
trigger3 = Root,NumTarget(3000)
trigger4 = Root,StateNo = 3103

[State 9500, Debug 1]
type = DisplayToClipboard
trigger1 = 1
text = "X=%d, Y=%d,fvar(22)=%d ,CAMZOM=%d, fvar(21)=%d"  
params = Pos X,Pos Y,FVar(22),CameraZoom,FVar(21)
ignorehitpause = 1

[State 9500, Debug 2]
type = AppendToClipboard
trigger1 = 1
text = "\nActSTAT=%d, COUNT=%d, var(12)=%d, fvar(15)=%d, fvar(13)=%d"  
params = Var(5),Var(6),Var(12),FVar(15),FVar(13)
ignorehitpause = 1


;------- Run Counter must put at end--------
[State 9500, Counter Var(6) Add 1]
type = VarAdd
trigger1 = Var(6) != 0
var(6) = 1

[State 9500, Counter Var(7) Add 1]
type = VarAdd
trigger1 = Var(7) != 0
var(7) = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;GENERAL ZOOM CONTROLLER
[StateDef 9501]
type = A
physics = N
movetype = I
velset = 0,0
anim = 9999
sprpriority = -4

;Only use this helper with player or a player helper
;Super zoom in effect.
;var(5)	Camera Action State	-1 mean exit and close (0 is zoom in 1 is stay 2 is zoom out 3 is destroy)
;var(6)	Camera Counter for var(5) State
;var(7) Camera Counter for shake
;var(8) Focus Point x
;var(9) Focus Point y
;var(10) is Parent Var(5)
;var(11) is zoom in / fade in time
;var(12) is zoom out / fade out time
;Var(40) is Parent ID or Target ID
;--------------------------------------
;fvar(13) is (Target zoom level - 1)
;fvar(5) is zoom in step values
;fvar(15) is zoom out step values
;fvar(21) is (1 - Camera zoom level)
;fvar(22) final value of relative zoom factor which used in zoom controller


;---------- Parent Check ----------------
[State Parent Check 1]
type = VarSet
trigger1 = Var(40) = 0
trigger1 = PlayerIDExist(Const(Size.Proj.DoScale))
var(40) = Const(Size.Proj.DoScale)
ignoreHitPause = 1

[State Parent Check 2]
type = VarSet
trigger1 = Var(40)
trigger1 = PlayerIDExist(Const(Size.Proj.DoScale)) = 0
var(40) = 0
ignoreHitPause = 1

;------- Control system camera -----------
[State 9501, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1
ignoreHitPause = 1

;------- set config values -----------
[State 9501, Get-Var(5)]
type = VarSet
trigger1 = !Time
var(10) = Parent,Var(5)
persistent = 0

;---- Uncommint compensation to allow Abszoom ----
[State 9501, Compensation Zoom Var]
type = VarSet
trigger1 = CameraZoom > 0 && CameraZoom < 1
fvar(21) = (1-CameraZoom)

[State 9501, Compensation Zoom Var]
type = VarSet
trigger1 = CameraZoom >= 1
fvar(21) = 0

;---- Uncommint compensation to allow Abszoom ----


[State 9501, Set Fade In Time]
type = VarSet
trigger1 = !Time
var(11) = 12+Var(10)
persistent = 0

[State 9501, Set Fade Out Time]
type = VarSet
trigger1 = !Time
var(12) = 12+Var(10)
persistent = 0

[State 9501, Set Target Zoom Level]
type = VarSet
trigger1 = !Time
fvar(13) = FVar(21)+Parent,FVar(13)

[State 9501, Calcuate Zoom In Step Size]
type = VarSet
trigger1 = !Time
fvar(5) = FVar(13)/Var(11)

[State 9501, Calcuate Zoom Out Step Size]
type = VarSet
trigger1 = !Time
fvar(15) = FVar(13)/Var(12)

;------------- INIT Finished -----------------

;------------- Camera Phase control var(5) ---------
[State 9501, Exit For Unexpected Reasons]
type = VarSet
triggerall = Var(5) != -1
trigger1 = !Var(40); Parent or Target not existed
trigger1 = Var(6) := 1
var(5) = -1

[State 9501, Change Zoom State 1]
type = VarAdd
triggerall = Var(5) >= 0
trigger1 = Var(5) = 0 && Var(11) <= 0
trigger2 = Var(5) = 2 && Var(12) <= 0
var(5) = 1

[State 9501, Change Zoom State 2 Zoom Out]
type = VarAdd
triggerall = Var(5) >= 0
trigger1 = Var(5) = 1
trigger1 = Time = Const(Size.ShadowOffset)
var(5) = 1

;--------------- Pos Move and Binds ---------------
[State 9501, Init Pos]; alway zoom from camera pos to view it smoothly.
type = PosSet
trigger1 = !Time
x = 0;camera always in middle of the screen
y = CameraPos Y

[State 9501, Fly To Parent Fade In];zoom in 
type = VelSet
trigger1 = !Time
trigger1 = Var(40) && Var(5) = 0
;x = (ParentDist X+(Const(Size.Ground.Front)*Const(Size.XScale)*1.0))/Var(11)
y = (ParentDist Y+(Parent,P2Dist Y/3.0))/Var(11)
ignorehitpause = 1

[State 9501, PosSet Stay For 1]; stay and stop moving
type = PosSet
trigger1 = Var(40) && Var(5) = 1
x = 0
y = Floor(Parent,P2Dist Y/3.0*Const(Size.YScale))
ignorehitpause = 1

;[State 9501, Bind To Parent Stay For 1]; stay and stop moving
;type = BindToParent
;trigger1 = Var(40) && Var(5) = 1
;time = 1
;facing = 1
;pos = Floor(6*Const(Size.Ground.Front)*Const(Size.XScale)),Floor(Parent,P2Dist Y/3.0*Const(Size.YScale))
;ignorehitpause = 1

[State 9501, Move Fade Out]; zoom out move
type = VelSet
trigger1 = Var(5) >= 2
trigger2 = Var(5) = -1; In case error
x = (-Pos X*Facing)/Var(12)
y = (CameraPos Y-Pos Y)/Var(12)
persistent = 0

;----------------- Compute zoom factor fvar(22) ---------------------
[State 9501, Compute Scale On Error Unexpected Exit]
type = VarSet
triggerall = Var(5) = -1
trigger1 = Var(6) <= Var(12)
fvar(22) = Cond(FVar(22) <= 1,1,1+(((FVar(22)-1)/Var(12))*(Var(12)-Var(6))))
ignorehitpause = 1

[State 9501, Zoom In]; and - counter var(11)
type = VarSet
triggerall = Var(5) >= 0
trigger1 = Var(5) = 0 && Var(11)
trigger1 = Var(11):= Var(11)-1
fvar(22) = (1+(FVar(13)-(FVar(5)*Var(11))))
ignorehitpause = 1

[State 9501, Zoom Keep]; no couter but triggered by supercharge helper disappear.
type = VarSet
triggerall = Var(5) >= 0
trigger1 = Var(5) = 0 && Var(11) = 0
trigger2 = Var(5) = 1
fvar(22) = (1+(FVar(13)-(FVar(5)*Var(11))))
ignorehitpause = 1

[State 9501, Zoom Out]; and - counter var(12)
type = VarSet
triggerall = Var(5) >= 0
trigger1 = Var(5) = 2 && Var(12)
trigger1 = Var(12):= Var(12) - 1
fvar(22) = (1+(FVar(15)*Var(12)))
ignorehitpause = 1

;---------------- Apply Zoom -------
[State 9501, Apply Zoom]
type = Zoom
triggerall = FVar(22); needs to be >= 1
trigger1 = Time >= 0
scale = FVar(22)
pos = ((Pos X)/FVar(22))*CameraZoom,((Pos Y)-(CameraPos Y/FVar(22)))*CameraZoom
ignorehitpause = 1

;---------------- End --------------
[State 9501, End]
type = DestroySelf
trigger1 = Var(5) = -1
trigger1 = Var(6) > Var(12); Unexpected finish
trigger2 = Var(5) >= 3; normal exit

[State 9501, Debug 1]
type = DisplayToClipboard
trigger1 = 1
text = "X=%d, Y=%d,fvar(22)=%d ,CAMZOM=%d, fvar(21)=%d"  
params = Pos X,Pos Y,FVar(22),CameraZoom,FVar(21)
ignorehitpause = 1

[State 9501, Debug 2]
type = AppendToClipboard
trigger1 = 1
text = "\nActSTAT=%d, COUNT=%d, var(12)=%d, fvar(15)=%d, fvar(13)=%d"  
params = Var(5),Var(6),Var(12),FVar(15),FVar(13)
ignorehitpause = 1


;------- Run Counter must put at end--------
[State 9501, Counter Var(6) Add 1]
type = VarAdd
trigger1 = Var(6) != 0
var(6) = 1

[State 9501, Counter Var(7) Add 1]
type = VarAdd
trigger1 = Var(7) != 0
var(7) = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;SONIC HURRICANE ZOOM
[StateDef 9600]
type = A
physics = N
movetype = I
velset = 0,0
anim = 9999
sprpriority = 4

;Only use this helper with player or a player helper
;Super zoom in effect.
;var(5)	Camera Action State
;var(6)	Camera Counter at start
;var(7) Shake counter
;var(8) Temp focus point x
;var(9) Temp focus point y
;var(10) is Parent Var(5)
;var(11) is zoom in / fade in time
;var(12) is zoom out / fade out time
;var(21) is Ground level (Only use on Ground)
;Var(40) is Parent ID
;--------------------------------------
;fvar(13) is (Target zoom level - 1)
;fvar(14) is zoom in step values
;fvar(15) is zoom out step values
;fvar(21) is (1 - Camzer zoom level)
;fvar(22) relative zoom factor

;---------- Parent Check ----------------
[State 9600, Parent/Target Check 1]
type = VarSet
trigger1 = Var(40) = 0
trigger1 = PlayerIDExist(Const(Size.Proj.DoScale))
var(40) = Const(Size.Proj.DoScale)
ignorehitpause = 1

[State 9600, Parent/Target Check 2]
type = VarSet
trigger1 = Var(40)
trigger1 = PlayerIDExist(Const(Size.Proj.DoScale)) = 0
var(40) = 0
ignorehitpause = 1

[State 9600, Safety]
type = AssertSpecial
trigger1 = Var(5) = [0,3]
flag = NoShadow
ignorehitpause = 1

[State 9600, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1
ignorehitpause = 1

;------ fvar(21) --
[State 9600, Min Zoom Var]
type = VarSet
triggerall = CameraZoom > 0 && CameraZoom < 1
trigger1 = 1
fvar(21) = (1-CameraZoom)
ignorehitpause = 1

[State 9600, Min Zoom Var]
type = VarSet
triggerall = CameraZoom <= 0 || CameraZoom >= 1
trigger1 = 1
fvar(21) = 0
ignorehitpause = 1

;------- Mini State Change -------
[State 9600, Error Exit]
type = VarSet
triggerall = Var(5) != -1
trigger1 = PlayerID(Var(40)),MoveType != H
trigger1 = Var(6):= 1
trigger2 = !(Parent,Anim = [3002,3004])
trigger2 = Var(6):= 1
var(5) = -1

[State 9600, Stage 0];Start
type = VarSet
triggerall = Var(5) = 0 && Var(6) = 0
trigger1 = Parent,Anim = 3002 && Parent,Time < 80
var(6) = 1
ignorehitpause = 1

[State 9600, Stage 1]; First
type = VarSet
trigger1 = Var(5) = 0 && Var(6) > 0
trigger1 = Parent,Anim = 3002 && Parent,Time >= 90;3004
trigger1 = Var(6):= 1
var(5) = 1
ignorehitpause = 1

[State 9600, State 5]; Final Zoom Out
type = VarSet
trigger1 = Var(5) = 1
trigger1 = Parent,Anim = 3004 && Parent,Time >= 80;100
trigger1 = Var(6):= 1
var(5) = 2
ignorehitpause = 1

;[State 9600, Stage 1]; First
;type = VarSet
;trigger1 = Var(5) = 0 && Var(6) > 0
;trigger1 = Parent,Anim = 3002 && Parent,Time = 85;80
;trigger1 = Var(6):= 1
;var(5) = 1
;ignorehitpause = 1
;
;[State 9600, State 5]; Final Zoom Out
;type = VarSet
;trigger1 = Var(5) = 1
;trigger1 = Parent,Anim = 3002 && Parent,Time = 112
;trigger1 = Var(6):= 1
;var(5) = 2
;ignorehitpause = 1

;----------- Pos Moves -----------
[State 9600, Move To Ground In Case Of Error]
type = PosSet
trigger1 = Var(5) = -1 && Var(6) = 1
x = CameraPos X+(Pos X-CameraPos X)/30*(30-Var(6))
y = CameraPos Y+(Pos Y-CameraPos Y)/30*(30-Var(6))
ignorehitpause = 1

[State 9600, Move To Pos 1]
type = PosSet
trigger1 = Var(5) = 1 && Var(6) = [1,32]
x = (Parent,Pos X+15*Const(Size.XScale)*Facing)/32.0*Var(6)
y = (Parent,Const(Size.Mid.Pos.Y)-10*Const(Size.YScale))/32.0*Var(6)
ignorehitpause = 1

;[State 9600, Move To Pos 1]
;type = PosSet
;trigger1 = Var(5) = 0 && Var(6) = [1,8]
;x = (Parent,Pos X+15*Const(Size.XScale)*Facing)/8.0*Var(6)
;y = (Parent,Const(Size.Mid.Pos.Y)+40*Const(Size.YScale))/8.0*Var(6)
;ignorehitpause = 1
;
;[State 9600, Move To Pos 2]
;type = PosSet
;trigger1 = Var(5) = 1 && Var(6) = [1,64]
;x = (Parent,Pos X+20*Const(Size.XScale)*Parent,Facing)/64.0*Var(6)
;y = (PlayerID(Var(40)),Const(Size.Mid.Pos.Y)-50*Const(Size.YScale))/64.0*Var(6)
;ignorehitpause = 1

[State 9600, Pan Down]
type = VelAdd
trigger1 = Var(5) = 1 && Parent,Time >= 30
trigger1 = Pos Y < 0
y = .01
;
[State 9600, Stop Panning]
type = VelSet
trigger1 = Var(5)
trigger1 = Pos Y >= (0+CameraPos Y)
y = 0

;----------- Compute the Scale ----
[State 9600, Compute Scale On Exit]
type = VarSet
trigger1 = Var(5) = -1 && Var(6) = [1,31]
fvar(22) = Cond(FVar(22) <= 1,1,1+(((FVar(22)-1)/30)*(31-Var(6))))
ignorehitpause = 1

[State 9600, Zoom In]
type = VarSet
trigger1 = Var(5) = 1
trigger1 = Var(6) = [1,32]
fvar(22) = (1+FVar(21)+(.5/32.0*Var(6)))
ignorehitpause = 1

[State 9600, Store Zoom]
type = VarSet
trigger1 = FVar(23) != FVar(22)
trigger1 = Var(5) = 1
trigger1 = Var(6) = [1,80]
fvar(23) = FVar(22)
ignorehitpause = 1

[State 9600, Zoom Out All]
type = VarSet
trigger1 = Var(5) = 2
trigger1 = Var(6) = [1,64]
fvar(22) = FVar(23)-((FVar(23)-1)/64.0)*Var(6)
ignorehitpause = 1

;----------- Apply the Zoom -------
[State 9600, Zoom]
type = Zoom
triggerall = FVar(22)
trigger1 = Time
scale = FVar(22)
pos = ((Pos X)/FVar(22))*CameraZoom,((Pos Y)-(CameraPos Y/FVar(22)))*CameraZoom
ignorehitpause = 1

;---------- End ------------
[State 9600, End]
type = DestroySelf
trigger1 = Var(5) = -1 && Var(6) > 30
trigger2 = Var(5) = 2 && Vel Y > 0 && Pos Y >= 0
ignorehitpause = 1

;---------- Debug ----------
[State 9600, Debug 1]
type = DisplayToClipboard
trigger1 = 1
text = "X=%d, Y=%d, CamY=%d, CamZ=%d, fvar(21)=%d fvar(22)=%d\n"  
params = Pos X,Pos Y,CameraPos Y,CameraZoom,FVar(21),FVar(22)
ignorehitpause = 1

[State 9600, Debug 2]
type = AppendToClipboard
trigger1 = 1
text = "Stage=%d, Count=%d, GameW=%d, GameH=%d"
params = Var(5),Var(6),GameWidth,GameHeight
;text = "GameWidth=%d, GameHeight=%d, fvar(22)=%d, var(5)=%d, var(6)=%d"  
;params = GameWidth,GameHeight,fvar(22),var(5),var(6)
ignorehitpause = 1

;------- Run Counter Must at the end--------
[State 9600, Counter Var(6) Add 1]
type = VarAdd
trigger1 = Var(6) != 0
var(6) = 1
ignorehitpause = 1

[State 9600, Counter Var(7) Add 1]
type = VarAdd
trigger1 = Var(7) != 0
var(7) = 1
ignorehitpause = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;SOMERSAULT STRIKE ZOOM
[StateDef 9610]
type = A
physics = N
movetype = I
velset = 0,0
anim = 9999
sprpriority = 4

;Only use this helper with player or a player helper
;Super zoom in effect.
;var(5)	Camera Action State
;var(6)	Camera Counter at start
;var(7) Shake counter
;var(8) Temp focus point x
;var(9) Temp focus point y
;var(10) is Parent Var(5)
;var(11) is zoom in / fade in time
;var(12) is zoom out / fade out time
;var(21) is Ground level (Only use on Ground)
;Var(40) is Parent ID
;--------------------------------------
;fvar(13) is (Target zoom level - 1)
;fvar(14) is zoom in step values
;fvar(15) is zoom out step values
;fvar(21) is (1 - Camzer zoom level)
;fvar(22) relative zoom factor

;---------- Parent Check ----------------
[State 9610, Parent/Target Check 1]
type = VarSet
trigger1 = Var(40) = 0
trigger1 = PlayerIDExist(Const(Size.Proj.DoScale))
var(40) = Const(Size.Proj.DoScale)
ignorehitpause = 1

[State 9610, Parent/Target Check 2]
type = VarSet
trigger1 = Var(40)
trigger1 = PlayerIDExist(Const(Size.Proj.DoScale)) = 0
var(40) = 0
ignorehitpause = 1

[State 9610, Safety]
type = AssertSpecial
trigger1 = Var(5) = [0,4]
flag = NoShadow
flag2 = NoFG
ignorehitpause = 1

[State 9610, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1
ignorehitpause = 1

;------ fvar(21) --
[State 9610, Min Zoom Var]
type = VarSet
triggerall = CameraZoom > 0 && CameraZoom < 1
trigger1 = 1
fvar(21) = (1-CameraZoom)
ignorehitpause = 1

[State 9610, Min Zoom Var]
type = VarSet
triggerall = CameraZoom <= 0 || CameraZoom >= 1
trigger1 = 1
fvar(21) = 0
ignorehitpause = 1

;------- Mini State Change -------
[State 9610, Error Exit]
type = VarSet
triggerall = Var(5) != -1
trigger1 = PlayerID(Var(40)),MoveType != H
trigger1 = Var(6):= 1
trigger2 = !(Parent,StateNo = 3103)
trigger2 = Var(6):= 1
var(5) = -1

[State 9610, Stage 0];Start
type = VarSet
triggerall = Var(5) = 0 && Var(6) = 0
trigger1 = Parent,StateNo = 3103 && Parent,AnimElemTime(1) >= 0
var(6) = 1
ignorehitpause = 1

[State 9610, State 1]
type = VarSet
trigger1 = Var(5) = 0
trigger1 = PlayerID(Var(40)),StateNo = 3150 && Parent,AnimElemTime(3) = 0
trigger1 = Var(6):= 1
var(5) = 1
ignorehitpause = 1

[State 9610, State 2]
type = VarSet
trigger1 = Var(5) = 1
trigger1 = PlayerID(Var(40)),StateNo = 3150 && Parent,AnimElemTime(6) = 0
trigger1 = Var(6):= 1
var(5) = 2
ignorehitpause = 1

[State 9610, State 3]
type = VarSet
trigger1 = Var(5) = 2
trigger1 = PlayerID(Var(40)),StateNo = 3150 && Parent,AnimElemTime(9) = 0
trigger1 = Var(6):= 1
var(5) = 3
ignorehitpause = 1

[State 9610, State 4]
type = VarSet
trigger1 = Var(5) = 3
trigger1 = Parent,StateNo = 3103 && Parent,AnimElemTime(11) = 0
trigger1 = Var(6):= 1
var(5) = 4
ignorehitpause = 1

[State 9610, State 5]
type = VarSet
trigger1 = Var(5) = 4
trigger1 = Parent,StateNo = 3103 && Parent,AnimElemTime(13) = 0
trigger1 = Var(6):= 1
var(5) = 5
ignorehitpause = 1

[State 9610, State 6]
type = VarSet
trigger1 = Var(5) = 5
trigger1 = Parent,StateNo = 3103 && Parent,AnimElemTime(22) = 0
trigger1 = Var(6):= 1
var(5) = 6
ignorehitpause = 1

[State 9610, State 7]
type = VarSet
trigger1 = Var(5) = 6
trigger1 = Parent,StateNo = 3103 && Parent,AnimElemTime(26) = 0
trigger1 = Var(6):= 1
var(5) = 7
ignorehitpause = 1

;----------- Pos Moves -----------
[State 9610, Move To Ground In Case Of Error]
type = PosSet
trigger1 = Var(5) = -1 && Var(6) = 1
x = CameraPos X+(Pos X-CameraPos X)/30*(30-Var(6))
y = CameraPos Y+(Pos Y-CameraPos Y)/30*(30-Var(6))
ignorehitpause = 1

[State 9610, Move To Pos 1]
type = PosAdd
trigger1 = (Var(5) = [0,3]) && Var(6) = [1,8]
x = P2Dist X
y = (PlayerID(Var(40)),Pos Y-Pos Y)/8.0
ignorehitpause = 1
[State 9610, Move To Pos 2]
type = PosAdd
trigger1 = Var(5) = 4 && Var(6) = [1,8]
y = ((PlayerID(Var(40)),Pos Y-Pos Y)-30)/8.0
ignorehitpause = 1
[State 9610, Move To Pos 3]
type = PosAdd
trigger1 = Var(5) = 5 && Var(6) = [1,24]
y = ((PlayerID(Var(40)),Pos Y-Pos Y)+50)/24.0
ignorehitpause = 1

[State 9610, Move To Pos 4]
type = PosAdd
trigger1 = Var(5) = 5 && Var(6) = [1,24]
x = ((PlayerID(Var(40)),Pos X-Pos X)+50)/24.0
ignorehitpause = 1

[State 9610, Move To Pos 5]
type = PosSet
trigger1 = Var(5) = 6 && Var(6) = 1
x = PlayerID(Var(40)),Pos X
ignorehitpause = 1

;[State 9610, Move To Pos 5]
;type = PosAdd
;trigger1 = Var(5) = 6 && Var(6) = [1,8]
;x = ((PlayerID(Var(40)),Pos X-Pos X))/8.0
;ignorehitpause = 1

[State 9610, VelAdd]
type = VelAdd
trigger1 = Var(5) = 5 && Var(6) >= 24
trigger1 = Pos Y < 0
y = 8

[State 9610, PosFreeze]
type = PosFreeze
trigger1 = Var(5) = 5 && Var(6) = [24,65]
trigger1 = PlayerID(Var(40)),Life = 0
y = 0

[State 9610, VelSet]
type = VelSet
trigger1 = Pos Y >= 0
y = 0

[State 9610, PosSet]
type = PosSet
trigger1 = Var(5) = 5
trigger1 = Pos Y >= 0
y = 0

;----------- Compute the Scale ----
[State 9610, Compute Scale On Exit]
type = VarSet
trigger1 = Var(5) = -1 && Var(6) = [1,31]
fvar(22) = Cond(FVar(22) <= 1,1,1+(((FVar(22)-1)/30)*(31-Var(6))))
ignorehitpause = 1

[State 9610, Zoom In]
type = VarSet
trigger1 = Var(5) = 1
trigger1 = Var(6) = [1,16]
fvar(22) = (1+FVar(21)+(.3/16.0*Var(6)))
ignorehitpause = 1

[State 9610, Store Zoom]
type = VarSet
trigger1 = FVar(23) != FVar(22)
trigger1 = Var(5) = 1
trigger1 = Var(6) = [1,16]
fvar(23) = FVar(22)
ignorehitpause = 1

[State 9610, Zoom In]
type = VarSet
trigger1 = Var(5) = 4
trigger1 = Var(6) = [1,8]
fvar(22) = (1+FVar(21)+(1.0/8.0*Var(6)))
ignorehitpause = 1

[State 9610, Store Zoom]
type = VarSet
trigger1 = FVar(23) != FVar(22)
trigger1 = Var(5) = 4
trigger1 = Var(6) = [1,8]
fvar(23) = FVar(22)
ignorehitpause = 1

[State 9610, Zoom Out]
type = VarSet
trigger1 = Var(5) = 5
trigger1 = Var(6) = [1,240];[10,70]
fvar(22) = FVar(23)-((FVar(23)-1)/240.0)*Var(6);70.0
ignorehitpause = 1

[State 9610, Store Zoom]
type = VarSet
trigger1 = FVar(23) != FVar(22)
trigger1 = Var(5) = 5
trigger1 = Var(6) = [1,240];[10,70]
fvar(23) = FVar(22)
ignorehitpause = 1

[State 9610, Zoom In]
type = VarSet
trigger1 = Var(5) = 6
trigger1 = Var(6) = [1,8]
fvar(22) = (1+FVar(21)+(1.0/8.0*Var(6)))
ignorehitpause = 1

[State 9610, Store Zoom]
type = VarSet
trigger1 = FVar(23) != FVar(22)
trigger1 = Var(5) = 6
trigger1 = Var(6) = [1,8]
fvar(23) = FVar(22)
ignorehitpause = 1

[State 9610, Zoom Out All]
type = VarSet
trigger1 = Var(5) = 7
trigger1 = Var(6) = [1,70]
fvar(22) = FVar(23)-((FVar(23)-1)/70.0)*Var(6)
ignorehitpause = 1

;----------- Apply the Zoom -------
[State 9610, Zoom]
type = Zoom
triggerall = FVar(22)
trigger1 = Time
scale = FVar(22)
pos = ((Pos X)/FVar(22))*CameraZoom,((Pos Y)-(CameraPos Y/FVar(22)))*CameraZoom
ignorehitpause = 1

;---------- End ------------
[State 9610, End]
type = DestroySelf
trigger1 = Var(5) = -1 && Var(6) > 30
trigger2 = Var(5) = 7 && Fvar(22) <= 1.0
trigger3 = Parent,MoveType = H
ignorehitpause = 1

;---------- Debug ----------
[State 9610, Debug 1]
type = DisplayToClipboard
trigger1 = 1
text = "X=%d, Y=%d, CamY=%d, CamZ=%d, fvar(21)=%d fvar(22)=%d\n"  
params = Pos X,Pos Y,CameraPos Y,CameraZoom,FVar(21),FVar(22)
ignorehitpause = 1

[State 9610, Debug 2]
type = AppendToClipboard
trigger1 = 1
text = "Stage=%d, Count=%d, GameW=%d, GameH=%d"
params = Var(5),Var(6),GameWidth,GameHeight
;text = "GameWidth=%d, GameHeight=%d, fvar(22)=%d, var(5)=%d, var(6)=%d"  
;params = GameWidth,GameHeight,fvar(22),var(5),var(6)
ignorehitpause = 1

;------- Run Counter Must at the end--------
[State 9610, Counter Var(6) Add 1]
type = VarAdd
trigger1 = Var(6) != 0
var(6) = 1
ignorehitpause = 1

[State 9610, Counter Var(7) Add 1]
type = VarAdd
trigger1 = Var(7) != 0
var(7) = 1
ignorehitpause = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;TOTAL WIPEOUT ZOOM
[StateDef 9620]
type = A
physics = N
movetype = I
velset = 0,0
anim = 9999
sprpriority = 4

;Only use this helper with player or a player helper
;Super zoom in effect.
;var(5)	Camera Action State
;var(6)	Camera Counter at start
;var(7) Shake counter
;var(8) Temp focus point x
;var(9) Temp focus point y
;var(10) is Parent Var(5)
;var(11) is zoom in / fade in time
;var(12) is zoom out / fade out time
;var(21) is Ground level (Only use on Ground)
;Var(40) is Parent ID
;--------------------------------------
;fvar(13) is (Target zoom level - 1)
;fvar(14) is zoom in step values
;fvar(15) is zoom out step values
;fvar(21) is (1 - Camzer zoom level)
;fvar(22) relative zoom factor

;---------- Parent Check ----------------
[State 9620, Parent/Target Check 1]
type = VarSet
trigger1 = Var(40) = 0
trigger1 = PlayerIDExist(Const(Size.Proj.DoScale))
var(40) = Const(Size.Proj.DoScale)
ignorehitpause = 1

[State 9620, Parent/Target Check 2]
type = VarSet
trigger1 = Var(40)
trigger1 = PlayerIDExist(Const(Size.Proj.DoScale)) = 0
var(40) = 0
ignorehitpause = 1

[State 9620, Safety]
type = AssertSpecial
trigger1 = Var(5) = [0,5]
flag = NoShadow
;flag2 = NoBarDisplay
ignorehitpause = 1

[State 9620, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1
ignorehitpause = 1

;------ fvar(21) --
[State 9620, Min Zoom Var]
type = VarSet
triggerall = CameraZoom > 0 && CameraZoom < 1
trigger1 = 1
fvar(21) = (1-CameraZoom)
ignorehitpause = 1

[State 9620, Min Zoom Var]
type = VarSet
triggerall = CameraZoom <= 0 || CameraZoom >= 1
trigger1 = 1
fvar(21) = 0
ignorehitpause = 1

;------- Mini State Change -------
[State 9620, Error Exit]
type = VarSet
triggerall = Var(5) != -1
trigger1 = PlayerID(Var(40)),MoveType != H
trigger1 = Var(6):= 1
;trigger2 = !(Parent,StateNo = [3200,3206])
;trigger2 = Var(6):= 1
var(5) = -1

[State 9620, Stage 0];Start
type = VarSet
triggerall = Var(5) = 0 && Var(6) = 0
trigger1 = Parent,StateNo = 3203 && Parent,AnimElemTime(1) >= 0
var(6) = 1
ignorehitpause = 1

[State 9620, State 1]
type = VarSet
trigger1 = Var(5) = 0
trigger1 = Parent,StateNo = 3203 && Parent,AnimElemTime(1) = 20
trigger1 = Var(6):= 1
var(5) = 1
ignorehitpause = 1

[State 9620, State 1]
type = VarSet
trigger1 = Var(5) = 1
trigger1 = Parent,StateNo = 3203 && Parent,AnimElem = 7
trigger1 = Var(6):= 1
var(5) = 2
ignorehitpause = 1

;----------- Pos Moves -----------
[State 9620, Move To Ground In Case Of Error]
type = PosSet
trigger1 = Var(5) = -1 && Var(6) = 1
x = CameraPos X+(Pos X-CameraPos X)/30*(30-Var(6))
y = CameraPos Y+(Pos Y-CameraPos Y)/30*(30-Var(6))
ignorehitpause = 1

[State 9620, BindToParent]
type = BindToParent
trigger1 = Var(5) = 0 && Var(6) = 1
time = 1
pos = 130,0
ignorehitpause = 1

[State 9620, VelSet]
type = VelSet
trigger1 = PlayerID(Var(40)),BackEdgeDist <= 50
x = 5
[State 9620, VelSet]
type = VelSet
trigger1 = PlayerID(Var(40)),BackEdgeDist > 50
x = 0

;[State 9620, Move To Pos 1]
;type = PosSet
;trigger1 = Var(5) = 0 && Var(6) = [1,8]
;x = (PlayerID(Var(40)),Pos X*Const(Size.XScale)*Facing)/8.0*Var(6)
;ignorehitpause = 1

;----------- Compute the Scale ----
[State 9620, Compute Scale On Exit]
type = VarSet
trigger1 = Var(5) = -1 && Var(6) = [1,31]
fvar(22) = Cond(FVar(22) <= 1,1,1+(((FVar(22)-1)/30)*(31-Var(6))))
ignorehitpause = 1

[State 9620, Zoom In]
type = VarSet
trigger1 = Var(5) = 0
trigger1 = Var(6) = [1,8]
fvar(22) = (1+FVar(21)+(1/8.0*Var(6)))
ignorehitpause = 1

[State 9620, Store Zoom]
type = VarSet
trigger1 = FVar(23) != FVar(22)
trigger1 = Var(5) = 0
trigger1 = Var(6) = [1,8]
fvar(23) = FVar(22)
ignorehitpause = 1

[State 9620, Zoom Out All]
type = VarSet
trigger1 = Var(5) = 2
trigger1 = Var(6) = [1,16]
fvar(22) = FVar(23)-((FVar(23)-1)/16.0)*Var(6)
ignorehitpause = 1

;----------- Apply the Zoom -------
[State 9620, Zoom]
type = Zoom
triggerall = FVar(22)
trigger1 = Time
scale = FVar(22)
pos = ((Pos X)/FVar(22))*CameraZoom,((Pos Y)-(CameraPos Y/FVar(22)))*CameraZoom
ignorehitpause = 1

;---------- End ------------
[State 9620, End]
type = DestroySelf
trigger1 = Var(5) = -1 && Var(6) > 30
trigger2 = Parent,Anim = 3203 && Parent,AnimElem = 27
trigger3 = Parent,MoveType = H
trigger4 = PlayerID(Var(40)),MoveType != H
ignorehitpause = 1

;---------- Debug ----------
[State 9620, Debug 1]
type = DisplayToClipboard
trigger1 = 1
text = "X=%d, Y=%d, CamY=%d, CamZ=%d, fvar(21)=%d fvar(22)=%d\n"  
params = Pos X,Pos Y,CameraPos Y,CameraZoom,FVar(21),FVar(22)
ignorehitpause = 1

[State 9620, Debug 2]
type = AppendToClipboard
trigger1 = 1
text = "Stage=%d, Count=%d, GameW=%d, GameH=%d"
params = Var(5),Var(6),GameWidth,GameHeight
;text = "GameWidth=%d, GameHeight=%d, fvar(22)=%d, var(5)=%d, var(6)=%d"  
;params = GameWidth,GameHeight,fvar(22),var(5),var(6)
ignorehitpause = 1

;------- Run Counter Must at the end--------
[State 9620, Counter Var(6) Add 1]
type = VarAdd
trigger1 = Var(6) != 0
var(6) = 1
ignorehitpause = 1

[State 9620, Counter Var(7) Add 1]
type = VarAdd
trigger1 = Var(7) != 0
var(7) = 1
ignorehitpause = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;CROSSFIRE FLASH ZOOM 1
[StateDef 9720]
type = A
physics = N
movetype = I
velset = 0,0
anim = 9999
sprpriority = 4

;Only use this helper with player or a player helper
;Super zoom in effect.
;var(5)	Camera Action State
;var(6)	Camera Counter at start
;var(7) Shake counter
;var(8) Temp focus point x
;var(9) Temp focus point y
;var(10) is Parent Var(5)
;var(11) is zoom in / fade in time
;var(12) is zoom out / fade out time
;var(21) is Ground level (Only use on Ground)
;Var(40) is Parent ID
;--------------------------------------
;fvar(13) is (Target zoom level - 1)
;fvar(14) is zoom in step values
;fvar(15) is zoom out step values
;fvar(21) is (1 - Camzer zoom level)
;fvar(22) relative zoom factor

;---------- Parent Check ----------------
[State 9720, Parent/Target Check 1]
type = VarSet
trigger1 = Var(40) = 0
trigger1 = PlayerIDExist(Const(Size.Proj.DoScale))
var(40) = Const(Size.Proj.DoScale)
ignorehitpause = 1

[State 9720, Parent/Target Check 2]
type = VarSet
trigger1 = Var(40)
trigger1 = PlayerIDExist(Const(Size.Proj.DoScale)) = 0
var(40) = 0
ignorehitpause = 1

[State 9720, Safety]
type = AssertSpecial
trigger1 = Var(5) = [0,5]
flag = NoShadow
;flag2 = NoBarDisplay
ignorehitpause = 1

[State 9720, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1
ignorehitpause = 1

;------ fvar(21) --
[State 9720, Min Zoom Var]
type = VarSet
triggerall = CameraZoom > 0 && CameraZoom < 1
trigger1 = 1
fvar(21) = (1-CameraZoom)
ignorehitpause = 1

[State 9720, Min Zoom Var]
type = VarSet
triggerall = CameraZoom <= 0 || CameraZoom >= 1
trigger1 = 1
fvar(21) = 0
ignorehitpause = 1

;------- Mini State Change -------
[State 9720, Error Exit]
type = VarSet
triggerall = Var(5) != -1
trigger1 = PlayerID(Var(40)),MoveType != H
trigger1 = Var(6):= 1
var(5) = -1

[State 9720, Stage 0];Start
type = VarSet
triggerall = Var(5) = 0 && Var(6) = 0
trigger1 = Parent,StateNo = 4205 && Parent,Time = 0
var(6) = 1
ignorehitpause = 1

[State 9720, State 1]
type = VarSet
trigger1 = Var(5) = 0
trigger1 = PlayerID(Var(40)),StateNo = 4256 && PlayerID(Var(40)),Time >= 0
trigger1 = Var(6):= 1
var(5) = 1
ignorehitpause = 1

[State 9720, State 1]
type = VarSet
trigger1 = Var(5) = 1
trigger1 = PlayerID(Var(40)),StateNo = 4256 && PlayerID(Var(40)),Time >= 30
trigger1 = Var(6):= 1
var(5) = 2
ignorehitpause = 1

;----------- Pos Moves -----------
[State 9720, Move To Ground In Case Of Error]
type = PosSet
trigger1 = Var(5) = -1 && Var(6) = 1
x = CameraPos X+(Pos X-CameraPos X)/30*(30-Var(6))
y = CameraPos Y+(Pos Y-CameraPos Y)/30*(30-Var(6))
ignorehitpause = 1

;[State 9720, PosSet]
;type = PosSet
;trigger1 = 1
;x = 0

[State 9720, PosSet]
type = PosSet
trigger1 = Var(5) = 1 && Var(6) = 1
y = PlayerID(Var(40)),Ceil(1.0*Const(Size.Mid.Pos.Y));.5

;----------- Compute the Scale ----
[State 9720, Compute Scale On Exit]
type = VarSet
trigger1 = Var(5) = -1 && Var(6) = [1,31]
fvar(22) = Cond(FVar(22) <= 1,1,1+(((FVar(22)-1)/30)*(31-Var(6))))
ignorehitpause = 1

[State 9720, Zoom In]
type = VarSet
trigger1 = Var(5) = 1
trigger1 = Var(6) = [1,8]
fvar(22) = (1+FVar(21)+(.8/8.0*Var(6)))
ignorehitpause = 1

[State 9720, Store Zoom]
type = VarSet
trigger1 = FVar(23) != FVar(22)
trigger1 = Var(5) = 1
trigger1 = Var(6) = [1,8]
fvar(23) = FVar(22)
ignorehitpause = 1

[State 9720, Zoom Out All]
type = VarSet
trigger1 = Var(5) = 2
trigger1 = Var(6) = [1,16]
fvar(22) = FVar(23)-((FVar(23)-1)/16.0)*Var(6)
ignorehitpause = 1

;----------- Apply the Zoom -------
[State 9720, Zoom]
type = Zoom
triggerall = FVar(22)
trigger1 = Time
scale = FVar(22)
pos = ((Pos X)/FVar(22))*CameraZoom,((Pos Y)-(CameraPos Y/FVar(22)))*CameraZoom
ignorehitpause = 1

;---------- End ------------
[State 9720, End]
type = DestroySelf
trigger1 = Var(5) = -1 && Var(6) > 30
trigger2 = PlayerID(Var(40)),StateNo = 4257
ignorehitpause = 1

;---------- Debug ----------
[State 9720, Debug 1]
type = DisplayToClipboard
trigger1 = 1
text = "X=%d, Y=%d, CamY=%d, CamZ=%d, fvar(21)=%d fvar(22)=%d\n"  
params = Pos X,Pos Y,CameraPos Y,CameraZoom,FVar(21),FVar(22)
ignorehitpause = 1

[State 9720, Debug 2]
type = AppendToClipboard
trigger1 = 1
text = "Stage=%d, Count=%d, GameW=%d, GameH=%d"
params = Var(5),Var(6),GameWidth,GameHeight
;text = "GameWidth=%d, GameHeight=%d, fvar(22)=%d, var(5)=%d, var(6)=%d"  
;params = GameWidth,GameHeight,fvar(22),var(5),var(6)
ignorehitpause = 1

;------- Run Counter Must at the end--------
[State 9720, Counter Var(6) Add 1]
type = VarAdd
trigger1 = Var(6) != 0
var(6) = 1
ignorehitpause = 1

[State 9720, Counter Var(7) Add 1]
type = VarAdd
trigger1 = Var(7) != 0
var(7) = 1
ignorehitpause = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;CROSSFIRE FLASH ZOOM 2
[StateDef 9721]
type = A
physics = N
movetype = I
velset = 0,0
anim = 9999
sprpriority = 4

;Only use this helper with player or a player helper
;Super zoom in effect.
;var(5)	Camera Action State
;var(6)	Camera Counter at start
;var(7) Shake counter
;var(8) Temp focus point x
;var(9) Temp focus point y
;var(10) is Parent Var(5)
;var(11) is zoom in / fade in time
;var(12) is zoom out / fade out time
;var(21) is Ground level (Only use on Ground)
;Var(40) is Parent ID
;--------------------------------------
;fvar(13) is (Target zoom level - 1)
;fvar(14) is zoom in step values
;fvar(15) is zoom out step values
;fvar(21) is (1 - Camzer zoom level)
;fvar(22) relative zoom factor

;---------- Parent Check ----------------
[State 9721, Parent/Target Check 1]
type = VarSet
trigger1 = Var(40) = 0
trigger1 = PlayerIDExist(Const(Size.Proj.DoScale))
var(40) = Const(Size.Proj.DoScale)
ignorehitpause = 1

[State 9721, Parent/Target Check 2]
type = VarSet
trigger1 = Var(40)
trigger1 = PlayerIDExist(Const(Size.Proj.DoScale)) = 0
var(40) = 0
ignorehitpause = 1

[State 9721, Safety]
type = AssertSpecial
trigger1 = Var(5) = [0,5]
flag = NoShadow
;flag2 = NoBarDisplay
ignorehitpause = 1

[State 9721, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1
ignorehitpause = 1

;------ fvar(21) --
[State 9721, Min Zoom Var]
type = VarSet
triggerall = CameraZoom > 0 && CameraZoom < 1
trigger1 = 1
fvar(21) = (1-CameraZoom)
ignorehitpause = 1

[State 9721, Min Zoom Var]
type = VarSet
triggerall = CameraZoom <= 0 || CameraZoom >= 1
trigger1 = 1
fvar(21) = 0
ignorehitpause = 1

;------- Mini State Change -------
[State 9721, Error Exit]
type = VarSet
triggerall = Var(5) != -1
trigger1 = PlayerID(Var(40)),MoveType != H
trigger1 = Var(6):= 1
var(5) = -1

[State 9721, Stage 0];Start
type = VarSet
triggerall = Var(5) = 0 && Var(6) = 0
trigger1 = Parent,StateNo = 4205 && Parent,Time = 0
var(6) = 1
ignorehitpause = 1

[State 9721, State 1]
type = VarSet
trigger1 = Var(5) = 0
trigger1 = PlayerID(Var(40)),StateNo = 4256; && PlayerID(Var(40)),Time >= 0
trigger1 = Var(6):= 1
var(5) = 1
ignorehitpause = 1

[State 9721, State 1];
type = VarSet
trigger1 = Var(5) = 1
trigger1 = PlayerID(Var(40)),StateNo = 4257 && PlayerID(Var(40)),Time >= 74
trigger1 = Var(6):= 1
var(5) = 2
ignorehitpause = 1

[State 9721, State 1];
type = VarSet
trigger1 = Var(5) = 2
trigger1 = PlayerID(Var(40)),StateNo = 4257 && PlayerID(Var(40)),Time >= 94
trigger1 = Var(6):= 1
var(5) = 3
ignorehitpause = 1

[State 9721, State 1];
type = VarSet
trigger1 = Var(5) = 3
trigger1 = PlayerID(Var(40)),StateNo = 4257 && PlayerID(Var(40)),Time >= 114
trigger1 = Var(6):= 1
var(5) = 4
ignorehitpause = 1

[State 9721, State 1];
type = VarSet
trigger1 = Var(5) = 4
trigger1 = PlayerID(Var(40)),StateNo = 4257 && PlayerID(Var(40)),Time >= 124
trigger1 = Var(6):= 1
var(5) = 5
ignorehitpause = 1

[State 9721, State 1];
type = VarSet
trigger1 = Var(5) = 5
trigger1 = PlayerID(Var(40)),StateNo = 4258 && PlayerID(Var(40)),AnimElemTime(10)>= 0
trigger1 = Var(6):= 1
var(5) = 6
ignorehitpause = 1

;----------- Pos Moves -----------
[State 9721, Move To Ground In Case Of Error]
type = PosSet
trigger1 = Var(5) = -1 && Var(6) = 1
x = CameraPos X+(Pos X-CameraPos X)/30*(30-Var(6))
y = CameraPos Y+(Pos Y-CameraPos Y)/30*(30-Var(6))
ignorehitpause = 1

;[State 9721, PosSet]
;type = PosSet
;trigger1 = 1
;x = 0

[State 9721, PosSet]
type = PosSet
trigger1 = Var(5) = 1 && Var(6) = 1
x = PlayerID(Var(40)),Pos X

[State 9721, PosSet]
type = PosSet
trigger1 = Var(5) = 1 && PlayerID(Var(40)),StateNo = 4257
x = 0

[State 9721, PosSet]
type = PosSet
trigger1 = Var(5) = 1 && Var(6) = 1
y = PlayerID(Var(40)),Ceil(1.3*Const(Size.Mid.Pos.Y));1.0

[State 9721, PosSet]
type = PosSet
trigger1 = Var(5) = 1 && PlayerID(Var(40)),StateNo = 4257 && PlayerID(Var(40)),Time = 5
y = PlayerID(Var(40)),Ceil(.6*Const(Size.Mid.Pos.Y));.4

[State 9721, PosSet]
type = PosSet
trigger1 = Var(5) = 5 && Var(6) = 1
y = PlayerID(Var(40)),Ceil(0.7*Const(Size.Mid.Pos.Y));1.0

;----------- Compute the Scale ----
[State 9721, Compute Scale On Exit]
type = VarSet
trigger1 = Var(5) = -1 && Var(6) = [1,31]
fvar(22) = Cond(FVar(22) <= 1,1,1+(((FVar(22)-1)/30)*(31-Var(6))))
ignorehitpause = 1

[State 9721, Zoom In]
type = VarSet
trigger1 = Var(5) = 1
trigger1 = Var(6) = [1,8]
fvar(22) = (1+FVar(21)+(.4/8.0*Var(6)));32
ignorehitpause = 1

[State 9721, Zoom In]
type = VarSet
trigger1 = Var(5) = 2
trigger1 = Var(6) = [1,8]
fvar(22) = (1+FVar(21)+(.5/8.0*Var(6)));32
ignorehitpause = 1

[State 9721, Zoom In]
type = VarSet
trigger1 = Var(5) = 3
trigger1 = Var(6) = [1,8]
fvar(22) = (1+FVar(21)+(.6/8.0*Var(6)));32
ignorehitpause = 1

[State 9721, Zoom In]
type = VarSet
trigger1 = Var(5) = 4
trigger1 = Var(6) = [1,8]
fvar(22) = (1+FVar(21)+(.7/8.0*Var(6)));32
ignorehitpause = 1

[State 9721, Zoom In]
type = VarSet
trigger1 = Var(5) = 5
trigger1 = Var(6) = [1,8]
fvar(22) = (1+FVar(21)+(.8/8.0*Var(6)));32
ignorehitpause = 1

[State 9721, Store Zoom]
type = VarSet
trigger1 = FVar(23) != FVar(22)
trigger1 = Var(5) = 5
trigger1 = Var(6) = [1,8]
fvar(23) = FVar(22)
ignorehitpause = 1

[State 9721, Zoom Out All]
type = VarSet
trigger1 = Var(5) = 6
trigger1 = Var(6) = [1,24]
fvar(22) = FVar(23)-((FVar(23)-1)/24.0)*Var(6)
ignorehitpause = 1

;----------- Apply the Zoom -------
[State 9721, Zoom]
type = Zoom
triggerall = FVar(22)
trigger1 = Time
scale = FVar(22)
pos = ((Pos X)/FVar(22))*CameraZoom,((Pos Y)-(CameraPos Y/FVar(22)))*CameraZoom
ignorehitpause = 1

;---------- End ------------
[State 9721, End]
type = DestroySelf
trigger1 = Var(5) = -1 && Var(6) > 30
trigger2 = Parent,StateNo = 4208 && Parent,AnimElem = 2
ignorehitpause = 1

;---------- Debug ----------
[State 9721, Debug 1]
type = DisplayToClipboard
trigger1 = 1
text = "X=%d, Y=%d, CamY=%d, CamZ=%d, fvar(21)=%d fvar(22)=%d\n"  
params = Pos X,Pos Y,CameraPos Y,CameraZoom,FVar(21),FVar(22)
ignorehitpause = 1

[State 9721, Debug 2]
type = AppendToClipboard
trigger1 = 1
text = "Stage=%d, Count=%d, GameW=%d, GameH=%d"
params = Var(5),Var(6),GameWidth,GameHeight
;text = "GameWidth=%d, GameHeight=%d, fvar(22)=%d, var(5)=%d, var(6)=%d"  
;params = GameWidth,GameHeight,fvar(22),var(5),var(6)
ignorehitpause = 1

;------- Run Counter Must at the end--------
[State 9721, Counter Var(6) Add 1]
type = VarAdd
trigger1 = Var(6) != 0
var(6) = 1
ignorehitpause = 1

[State 9721, Counter Var(7) Add 1]
type = VarAdd
trigger1 = Var(7) != 0
var(7) = 1
ignorehitpause = 1

;-------------------------------------------------------------------------------------------------------------------------------------------
;XCOSTUME HELPER    ;You can change the animation size using the x-y scales.
[Statedef 12345]
physics = N
anim = 12345
velset = 0,0
sprpriority = 99999

[State 12345, PosSet]
type = PosSet
trigger1 = !Time 
x = Root,Facing*-90
y = 25
ignorehitpause = 1
 
[State 12345, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Intro
flag2 = Noshadow

[State 12345, Reset]
type = VarSet
trigger1 = !Time
var(37) = 200

[State 12345, Pal]
type = VarSet
trigger1 = !Time
var(35) = Root,PalNo
 
[State 12345, VarSet]
type = VarSet
trigger1 = Var(35) < 1 || Var(35) > 24 ; last palette
var(35) = 1+(Var(35) < 1)*23 ; subtract -1 from your last palette
 
[State 12345, PlaySnd]
type = PlaySnd
trigger1 = Var(38) = 2 
value = S12345,0
volumescale = 100
channel = 20

[State 12345, PlaySnd]
type = PlaySnd
triggerall = IsHelper(12345)
trigger1 = Root,Command = "a" || Root,Command = "b" || Root,Command = "c" || Root,Command = "x" || Root,Command = "y" || Root,Command = "z" || Root,Command = "start" || RoundState =2
value = S12345,1
volumescale = 100
channel = 20
persistent = 0 
 
[State 12345, Countdown]
type = VarAdd
trigger1 = 1 
var(37) = -1

[State 12345, Countdown]
type = VarAdd
trigger1 = !Var(38) && Var(37) < 150
trigger1 = Root,Command = "holdup" || Root,Command = "holddown" || Root,Command = "holdback" || Root,Command = "holdfwd"
var(37) = 25
 
[State 12345, VarAdd]
type=VarAdd
trigger1 = !Var(38)
trigger1 = Root,Command = "holdup" || Root,Command = "holddown" || Root,Command = "holdback" || Root,Command = "holdfwd"
var(35) = 1-(Root,Command = "holddown" || Root,Command = "holdback" && Facing = 1 || Root,Command = "holdfwd" && Facing = -1)*2
 
[State 12345, VarAdd]
type=VarAdd
trigger1 = (Root,Command = "holdup" || Root,Command = "holddown" || Root,Command = "holdback" || Root,Command = "holdfwd") && !Var(38) || Var(38)
var(38) = 1
 
[State 12345, VarSet]
type = VarSet
trigger1 = !Time || Var(38) >= 17
var(38) = 0
 
[State 12345, DestroySelf]
type = DestroySelf
triggerall = IsHelper(12345)
trigger1 = Root,Command = "a" || Root,Command = "b" || Root,Command = "c" || Root,Command = "x" || Root,Command = "y" || Root,Command = "z" || Root,Command = "start" || RoundState =2
trigger2 = Root,AILevel

;==========================================================================
;[Info]
;author = "Inktrebuchet" 
;versiondate = 12/13/2018                  
;goal = Detect enemy projectile (helper). For use with AI. ( M.U.G.E.N | IKEMEN )
;       ?????(helper)?????? AI????????
;==========================================================================
;                Notes
;==========================================================================
;notes:
;-Enemy projectile now has a PlayerID use PlayerID(helper(33333333),Var(23)) as a redirect.
;
;base examples of trigger use: 
;
;;Enemy projectile helper distance from character.
;trigger1 = PlayerIDExist(helper(33333333),Var(23))
;trigger1 = PlayerID(helper(33333333),Var(23)), p2BodyDist X 
;
;;Enemy projectile helper velocity.
;trigger1 = PlayerIDExist(helper(33333333),Var(23))
;trigger1 = PlayerID(helper(33333333),Var(23)), Vel X
;
;==========================================================================
;                Helper var usage.
;==========================================================================
; numhelper(33333333) Variable usage:
; This is a record of the variables that are used
;
; var(22) - highest playerid + 1
; var(23) - projectile player id while it exists
; 
;==========================================================================
[StateDef 33333333]
type = A
movetype = I
physics = N
ctrl = 0
velset = 0,0
anim = 9999
 
;==========================================================================
[state 33333333, DisplayToClipboard] 
type = DisplayToClipboard
trigger1 = 1
text = "Highest PlayerID = %d , Projectile Helper's PlayerID = %d\nBy Inktrebuchet"
params = Var(22)-1, Var(23)
 
;==========================================================================
;                Detect Enemy Projectile Helper
;==========================================================================
[State 33333333, Null]
type = Null
trigger1 = Var(22) = 0
trigger1 = (Var(22) := ID)
ignorehitpause = 1
 
[state 33333333, VarAdd] 
type = VarAdd
trigger1 = PlayerIdExist(Var(22)) 
trigger2 = PlayerIdExist(Var(22)+1) 
trigger3 = PlayerIdExist(Var(22)+2) 
trigger4 = PlayerIdExist(Var(22)+3) 
trigger5 = PlayerIdExist(Var(22)+4) 
trigger6 = PlayerIdExist(Var(22)+5) 
trigger7 = PlayerIdExist(Var(22)+6) 
trigger8 = PlayerIdExist(Var(22)+7) 
trigger9 = PlayerIdExist(Var(22)+8) 
trigger10 = PlayerIdExist(Var(22)+9) 
trigger11 = PlayerIdExist(Var(22)+10) 
trigger12 = PlayerIdExist(Var(22)+11) 
trigger13 = PlayerIdExist(Var(22)+12) 
trigger14 = PlayerIdExist(Var(22)+13) 
trigger15 = PlayerIdExist(Var(22)+14) 
trigger16 = PlayerIdExist(Var(22)+15) 
trigger17 = PlayerIdExist(Var(22)+16) 
trigger18 = PlayerIdExist(Var(22)+17) 
trigger19 = PlayerIdExist(Var(22)+18) 
trigger20 = PlayerIdExist(Var(22)+19) 
trigger21 = PlayerIdExist(Var(22)+20) 
trigger22 = PlayerIdExist(Var(22)+21) 
trigger23 = PlayerIdExist(Var(22)+22) 
trigger24 = PlayerIdExist(Var(22)+23) 
trigger25 = PlayerIdExist(Var(22)+24) 
trigger26 = PlayerIdExist(Var(22)+25) 
v = 22
value = 1
ignorehitpause = 1
 
[State 33333333, Null]
type = Null
triggerall = PlayerIdExist(Root,ID)
trigger1 = PlayerIdExist(Var(22)-1)
trigger1 = Cond(Root,TeamSide = 1,PlayerID(Var(22)-1),TeamSide = 2,PlayerID(Var(22)-1),TeamSide = 1)
trigger1 = PlayerID(Var(22)-1),HitDefAttr = ASC, NP, SP, HP
trigger1 = Var(23) := (Var(22)-1)
trigger2 = PlayerIdExist(Var(22)-2)
trigger2 = Cond(Root,TeamSide = 1,PlayerID(Var(22)-2),TeamSide = 2,PlayerID(Var(22)-2),TeamSide = 1)
trigger2 = PlayerID(Var(22)-2),HitDefAttr = ASC, NP, SP, HP
trigger2 = Var(23) := (Var(22)-2)
trigger3 = PlayerIdExist(Var(22)-3)
trigger3 = Cond(Root,TeamSide = 1,PlayerID(Var(22)-3),TeamSide = 2,PlayerID(Var(22)-3),TeamSide = 1)
trigger3 = PlayerID(Var(22)-3),HitDefAttr = ASC, NP, SP, HP
trigger3 = Var(23) := (Var(22)-3)
trigger4 = PlayerIdExist(Var(22)-4)
trigger4 = Cond(Root,TeamSide = 1,PlayerID(Var(22)-4),TeamSide = 2,PlayerID(Var(22)-4),TeamSide = 1)
trigger4 = PlayerID(Var(22)-4),HitDefAttr = ASC, NP, SP, HP
trigger4 = Var(23) := (Var(22)-4)
trigger5 = PlayerIdExist(Var(22)-5)
trigger5 = Cond(Root,TeamSide = 1,PlayerID(Var(22)-5),TeamSide = 2,PlayerID(Var(22)-5),TeamSide = 1)
trigger5 = PlayerID(Var(22)-5),HitDefAttr = ASC, NP, SP, HP
trigger5 = Var(23) := (Var(22)-5)
trigger6 = PlayerIdExist(Var(22)-6)
trigger6 = Cond(Root,TeamSide = 1,PlayerID(Var(22)-6),TeamSide = 2,PlayerID(Var(22)-6),TeamSide = 1)
trigger6 = PlayerID(Var(22)-6),HitDefAttr = ASC, NP, SP, HP
trigger6 = Var(23) := (Var(22)-6)
trigger7 = PlayerIdExist(Var(22)-7)
trigger7 = Cond(Root,TeamSide = 1,PlayerID(Var(22)-7),TeamSide = 2,PlayerID(Var(22)-7),TeamSide = 1)
trigger7 = PlayerID(Var(22)-7),HitDefAttr = ASC, NP, SP, HP
trigger7 = Var(23) := (Var(22)-7)
trigger8 = PlayerIdExist(Var(22)-8)
trigger8 = Cond(Root,TeamSide = 1,PlayerID(Var(22)-8),TeamSide = 2,PlayerID(Var(22)-8),TeamSide = 1)
trigger8 = PlayerID(Var(22)-8),HitDefAttr = ASC, NP, SP, HP
trigger8 = Var(23) := (Var(22)-8)
trigger9 = PlayerIdExist(Var(22)-9)
trigger9 = Cond(Root,TeamSide = 1,PlayerID(Var(22)-9),TeamSide = 2,PlayerID(Var(22)-9),TeamSide = 1)
trigger9 = PlayerID(Var(22)-9),HitDefAttr = ASC, NP, SP, HP
trigger9 = Var(23) := (Var(22)-9)
trigger10 = PlayerIdExist(Var(22)-10)
trigger10 = Cond(Root,TeamSide = 1,PlayerID(Var(22)-10),TeamSide = 2,PlayerID(Var(22)-10),TeamSide = 1)
trigger10 = PlayerID(Var(22)-10),HitDefAttr = ASC, NP, SP, HP
trigger10 = Var(23) := (Var(22)-10)
ignorehitpause = 1
 
[State 33333333, BindToRoot]
type = BindToRoot
trigger1 = PlayerIdExist(Root,ID)
time = 1
facing = 1
pos = 0,-2
ignorehitpause = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;EXPLODSIVE BUFFERING HELPER
[StateDef 90000005]
type = A
physics = N
moveType = I
anim = 9999
velSet = 0,0
ctrl = 0

[State 90000005, DisplayToClipboard]
type = DisplayToClipboard
trigger1 = 1
text = "by JustMorphPointman"
ignorehitpause = 1
