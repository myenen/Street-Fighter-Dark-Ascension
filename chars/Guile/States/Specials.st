;-------------------------------------------------------------------------------------------------------------------------------------------
;SONIC BOOM
[StateDef 1000]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0,0
poweradd = 80*Var(3)
sprpriority = 1

[State 1000, VarSet]
type = VarSet
trigger1 = !AILevel
trigger1 = !Time
var(5) = Cond(NumExplod(90000220) || NumExplod(90000225),2,Cond(NumExplod(90000210) || NumExplod(90000215),1,0))

[State 1000, VarSet]
type = VarSet
trigger1 = AILevel
trigger1 = NumEnemy
trigger1 = !Time
var(5) = 2

[State 1000, VarSet]
type = VarSet
trigger1 = AILevel
trigger1 = NumEnemy
trigger1 = EnemyNear,StateType = A
trigger1 = !Time
var(5) = 0

[State 1000, VarSet]
type = VarSet
trigger1 = AILevel
trigger1 = NumEnemy
trigger1 = EnemyNear,MoveType = H
trigger1 = EnemyNear,StateType != A
trigger1 = PrevStateNo != 420
trigger1 = !Time
var(5) = 2

[State 1000, VarSet]
type = VarSet
trigger1 = PrevStateNo = 1251133
trigger1 = !Time
var(5) = 2

[State 1000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = Cond(Var(5) >= 2,1002,Cond(Var(5) = 1,1001,1000))

[State 1000, Width]
type = Width
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
edge = 30,0
player = 40,0

[State 1000, Width]
type = Width
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
edge = 40,0
player = 50,0

[State 1000, Width]
type = Width
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
edge = 70,0
player = 60,0

[State 1000, Width]
type = Width
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
edge = 40,0
player = 70,0

[State 1000, Width]
type = Width
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
edge = 30,0
player = 10,0

[State 1000, Width]
type = Width
trigger1 = AnimElemTime(6) >= 0
edge = 20,0
player = 10,0

[State 1000, Explod]
type = Explod
trigger1 = AnimElem = 3
ID = 6005
anim = 6005
pos = 1,-59
postype = P1
bindtime = -1
removetime = -2
scale = .41,.5;.42,.5
sprpriority = 2
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[State 1000, Explod]
type = Explod
trigger1 = AnimElem = 3
ID = 7009
anim = 7009
postype = P1
pos = 20,0
bindtime = 1
removetime = -2
sprpriority = 4
scale = .15,.15
ownpal = 1

[State 1000, Explod]
type = Explod
trigger1 = AnimElem = 1
ID = 6015
anim = 6015
postype = P1  ;p2,front,back,left,right
pos = -15,-55
bindtime = -1
removetime = 900
removeongethit = 1
supermovetime = 900
pausemovetime = 900
scale = .24,.24
sprpriority = 2
ownpal = 1
ignorehitpause = 1
[State 1000, Explod]
type = Explod
trigger1 = AnimElem = 1
ID = 60151
anim = 6015
postype = P1  ;p2,front,back,left,right
pos = 26,-58
bindtime = -1
removetime = 900
removeongethit = 1
supermovetime = 900
pausemovetime = 900
scale = .2,.2
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 1000, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 2
ID = 6015
ignorehitpause = 1
[State 1000, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 2
ID = 60151
ignorehitpause = 1

[State 1000, Explod]
type = Explod
trigger1 = AnimElem = 2
ID = 60152
anim = 6015
postype = P1  ;p2,front,back,left,right
pos = -43,-60
bindtime = -1
removetime = 900
removeongethit = 1
supermovetime = 900
pausemovetime = 900
scale = .24,.24
sprpriority = 4
ownpal = 1
ignorehitpause = 1
[State 1000, Explod]
type = Explod
trigger1 = AnimElem = 2
ID = 60153
anim = 6015
postype = P1  ;p2,front,back,left,right
pos = 16,-65
bindtime = -1
removetime = 900
removeongethit = 1
supermovetime = 900
pausemovetime = 900
scale = .2,.2
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 1000, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 3
ID = 60152
ignorehitpause = 1
[State 1000, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 3
ID = 60153
ignorehitpause = 1

[State 1000, Helper]
type = Helper
trigger1 = AnimElem = 5
name = "SonicBoom"
ID = 6000
stateno = 6000
pos = 50,-60
postype = P1    ;p2,front,back,left,right
size.xscale = .6
size.yscale = .3
ownpal = 1
pausemovetime = 0
supermovetime = 0

[State 1000, Explod]
type = Explod
trigger1 = AnimElemTime(5) = 0
ID = 7300
anim = 7300
pos = 50,-60
postype = P1
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .6,.6
sprpriority = 2
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 1000, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(7) = 1
movetype = I         ;A,C,S,N

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1000,0+(Random%2)
channel = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S1000,2
channel = -1

[State 1000, ChangeState]
type = ChangeState
trigger1 = !AILevel
trigger1 = AnimElemTime(7) >= 0
trigger1 = Command = "x" || Command = "y" || Command = "z"
value = 1005
ctrl = 0

[State 1000, ChangeState]
type = ChangeState
trigger1 = AILevel
trigger1 = NumEnemy
trigger1 = P2Life > 0
trigger1 = Var(55) < 200
trigger1 = (P2Dist X > 80) || (EnemyNear,StateNo = [120,155])
trigger1 = !((EnemyNear,StateType = L) && P2BodyDist X <= 110)
trigger1 = AnimElemTime(7) >= 0
trigger1 = Var(59) < (1000*(AILevel**2/64.0))
value = 1005
ctrl = 0

[State 1000, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-------------------------------------------------------------------------------------------------------------------------------------------
;SONIC BREAK 1
[StateDef 1005]
type = S
physics = N
movetype = A
anim = 1005
ctrl = 0
velset = 0,0
poweradd = 0
sprpriority = 1

[State 1005, VarSet]
type = VarSet
trigger1 = !AILevel
trigger1 = !Time
var(5) = Cond(NumExplod(90000220) || NumExplod(90000225),2,Cond(NumExplod(90000210) || NumExplod(90000215),1,0))

[State 1005, VarSet]
type = VarSet
trigger1 = PrevStateNo = 1251133
trigger1 = !Time
var(5) = 2

[State 1005, VarSet]
type = VarSet
trigger1 = AILevel
trigger1 = NumEnemy
trigger1 = EnemyNear,StateType = S
trigger1 = !Time
var(5) = 2

[State 1005, VarSet]
type = VarSet
trigger1 = AILevel
trigger1 = NumEnemy
trigger1 = EnemyNear,StateType != S
trigger1 = !Time
var(5) = 0

[State 1005, Width]
type = Width
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
edge = 30,0
player = 30,0

[State 1005, Width]
type = Width
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
edge = 50,0
player = 50,0

[State 1005, Width]
type = Width
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
edge = 70,0
player = 60,0

[State 1005, Width]
type = Width
trigger1 = AnimElemTime(4) >= 0
edge = 20,0
player = 10,0

[State 1005, Explod]
type = Explod
trigger1 = AnimElem = 3
ID = 7009
anim = 7009
postype = P1
pos = 20,0
bindtime = 1
removetime = -2
sprpriority = 4
scale = .15,.15
ownpal = 1

[State 1005, Helper]
type = Helper
trigger1 = AnimElemTime(3) = 0
name = "Slash"
ID = 1005
stateno = 6071
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1

[State 1005, Helper]
type = Helper
trigger1 = AnimElem = 3
name = "SonicBoom"
ID = 6001
stateno = 6000
pos = 83,-75
postype = P1    ;p2,front,back,left,right
size.xscale = .6
size.yscale = .3
ownpal = 1
pausemovetime = 0
supermovetime = 0

[State 1005, Explod]
type = Explod
trigger1 = AnimElemTime(3) = 0
ID = 7300
anim = 7300
pos = 83,-75
postype = P1
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .6,.6
sprpriority = 2
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 1005, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5) = 0
movetype = I         ;A,C,S,N

[State 1005, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1005,0
channel = 0

[State 1005, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S1000,2
channel = -1

[State 1005, ChangeState]
type = ChangeState
trigger1 = !AILevel
trigger1 = AnimElemTime(4) >= 0
trigger1 = Command = "x" || Command = "y" || Command = "z"
value = 1006
ctrl = 0

[State 1005, ChangeState]
type = ChangeState
trigger1 = AILevel
trigger1 = NumEnemy
trigger1 = P2Life > 0
trigger1 = Var(55) < 200
trigger1 = (P2Dist X > 0 && P2Dist X <= 200) || (EnemyNear,StateNo = [120,155])
trigger1 = !((EnemyNear,StateType = L) && P2Dist X <= 110)
trigger1 = AnimElemTime(4) >= 0
trigger1 = Var(59) < (1000*(AILevel**2/64.0))
value = 1006
ctrl = 0

[State 1005, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-------------------------------------------------------------------------------------------------------------------------------------------
;SONIC BREAK 2
[StateDef 1006]
type = S
physics = N
movetype = A
anim = 1006
ctrl = 0
velset = 0,0
poweradd = 0
sprpriority = 1

[State 1006, VarSet]
type = VarSet
trigger1 = !AILevel
trigger1 = !Time
var(5) = Cond(NumExplod(90000220) || NumExplod(90000225),2,Cond(NumExplod(90000210) || NumExplod(90000215),1,0))

[State 1006, VarSet]
type = VarSet
trigger1 = PrevStateNo = 1251133
trigger1 = !Time
var(5) = 2

[State 1006, VarSet]
type = VarSet
trigger1 = AILevel
trigger1 = NumEnemy
trigger1 = EnemyNear,StateType = S
trigger1 = !Time
var(5) = 2

[State 1006, VarSet]
type = VarSet
trigger1 = AILevel
trigger1 = NumEnemy
trigger1 = EnemyNear,StateType != S
trigger1 = !Time
var(5) = 0

[State 1006, Width]
type = Width
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
edge = 30,0
player = 40,0

[State 1006, Width]
type = Width
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
edge = 40,0
player = 50,0

[State 1006, Width]
type = Width
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
edge = 70,0
player = 60,0

[State 1006, Width]
type = Width
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
edge = 40,0
player = 70,0

[State 1006, Width]
type = Width
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
edge = 30,0
player = 10,0

[State 1006, Width]
type = Width
trigger1 = AnimElemTime(6) >= 0
edge = 20,0
player = 10,0

[State 1006, Explod]
type = Explod
trigger1 = AnimElem = 3
ID = 7009
anim = 7009
postype = P1
pos = 20,0
bindtime = 1
removetime = -2
sprpriority = 4
scale = .15,.15
ownpal = 1

[State 1006, Helper]
type = Helper
trigger1 = Time = 1
name = "Slash"
ID = 212
stateno = 6071
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1

[State 1006, Helper]
type = Helper
trigger1 = AnimElem = 3
name = "SonicBoom"
ID = 6002
stateno = 6000
pos = 50,-75
postype = P1    ;p2,front,back,left,right
size.xscale = .6
size.yscale = .3
ownpal = 1
pausemovetime = 0
supermovetime = 0

[State 1006, Explod]
type = Explod
trigger1 = AnimElemTime(3) = 0
ID = 7300
anim = 7300
pos = 50,-75
postype = P1
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .6,.6
sprpriority = 2
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 1006, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5) = 0
movetype = I         ;A,C,S,N

[State 1006, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S1000,2
channel = -1

[State 1006, ChangeState]
type = ChangeState
trigger1 = !AILevel
trigger1 = AnimElemTime(4) >= 5
trigger1 = Command = "x" || Command = "y" || Command = "z"
value = 1007
ctrl = 0

[State 1006, ChangeState]
type = ChangeState
trigger1 = AILevel
trigger1 = NumEnemy
trigger1 = P2Life > 0
trigger1 = Var(55) < 200
trigger1 = (P2Dist X > 160) || (EnemyNear,StateNo = [120,155]) || (P2Dist X > 0 && EnemyNear,StateType = A)
trigger1 = EnemyNear,StateType != L
trigger1 = !(EnemyNear,AuthorName = "Burn" && EnemyNear,Name = "Ken" && (EnemyNear,StateNo != [5000,5099]))
trigger1 = AnimElemTime(4) >= 5
trigger1 = Var(59) < (1000*(AILevel**2/64.0))
value = 1007
ctrl = 0

[State 1006, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-------------------------------------------------------------------------------------------------------------------------------------------
;SONIC BREAK 3
[StateDef 1007]
type = S
physics = N
movetype = A
anim = 1007
ctrl = 0
velset = 0,0
poweradd = 0
sprpriority = 1

[State 1007, VarSet]
type = VarSet
trigger1 = !AILevel
trigger1 = !Time
var(5) = Cond(NumExplod(90000220) || NumExplod(90000225),2,Cond(NumExplod(90000210) || NumExplod(90000215),1,0))

[State 1007, VarSet]
type = VarSet
trigger1 = PrevStateNo = 1251133
trigger1 = !Time
var(5) = 2

[State 1007, VarSet]
type = VarSet
trigger1 = AILevel
trigger1 = !Time
var(5) = 2

;[State 1007, VarSet]
;type = VarSet
;trigger1 = AILevel
;trigger1 = NumEnemy
;trigger1 = EnemyNear,StateType != S
;trigger1 = !Time
;var(5) = 0

[State 1007, Width]
type = Width
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
edge = 50,0
player = 40,0

[State 1007, Width]
type = Width
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
edge = 70,0
player = 60,0

[State 1007, Width]
type = Width
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
edge = 90,0
player = 80,0

[State 1007, Width]
type = Width
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
edge = 70,0
player = 30,0

[State 1007, Width]
type = Width
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
edge = 30,0
player = 10,0

[State 1007, Width]
type = Width
trigger1 = AnimElemTime(6) >= 0
edge = 20,0
player = 10,0

[State 1007, Explod]
type = Explod
trigger1 = AnimElem = 2
ID = 7009
anim = 7009
postype = P1
pos = 20,0
bindtime = 1
removetime = -2
sprpriority = 4
scale = .15,.15
ownpal = 1

[State 1007, Helper]
type = Helper
trigger1 = AnimElemTime(3) = 1
name = "Slash"
ID = 210
stateno = 6071
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1

[State 1007, Helper]
type = Helper
trigger1 = AnimElem = 3
name = "SonicBlade"
ID = 6042
stateno = 6042
pos = 65,-80
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0

[State 1007, Explod]
type = Explod
trigger1 = AnimElemTime(3) = 0
ID = 7300
anim = 7300
pos = 65,-80
postype = P1
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .6,.6
sprpriority = 2
ownpal = 1
removeongethit = 0
trans = Sub
ignorehitpause = 1

[State 1007, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5) = 0
movetype = I         ;A,C,S,N

[State 1007, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1005,1
channel = 0

[State 1007, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S1000,2
channel = -1

[State 1007, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-------------------------------------------------------------------------------------------------------------------------------------------
;SONIC TWISTER
[StateDef 1010]
type = S
physics = S
movetype = A
anim = 1010
ctrl = 0
velset = 0,0
poweradd = -500
sprpriority = 1

[State 1010, VarSet]
type = VarSet
trigger1 = !Time
var(5) = 3

[State 1010, Width]
type = Width
trigger1 = AnimElemTIme(2) < 0
edge = 10,0
player = 20,0

[State 1010, Width]
type = Width
trigger1 = AnimElemTime(2) >= 0 && AnimElemTIme(3) < 0
edge = 15,0
player = 25,0

[State 1010, Width]
type = Width
trigger1 = AnimElemTime(3) >= 0 && AnimElemTIme(4) < 0
edge = 20,0
player = 30,0

[State 1010, Width]
type = Width
trigger1 = AnimElemTime(4) >= 0 && AnimElemTIme(5) < 0
edge = 35,0
player = 45,0

[State 1010, Width]
type = Width
trigger1 = AnimElemTime(5) >= 0 && AnimElemTIme(7) < 0
edge = 50,0
player = 55,0

[State 1010, Width]
type = Width
trigger1 = AnimElemTime(7) >= 0
edge = 15,0
player = 25,0

[State 1010, AfterImage]
type = AfterImage
trigger1 = !Time
time = 20
timegap = 1
framegap = 1
length = 8
palbright = 32,32,0
palcontrast = 128,128,128
paladd = -10,-10,-10
palmul = 1.1,1,.5
trans = Add
ignorehitpause = 1

[State 1010, PalFX]
type = PalFX
trigger1 = !Time
time = 40
add = 90,90,0
sinadd = 90,90,0,10
ignorehitpause = 1

[State 1010, Explod]
type = Explod
trigger1 = AnimElem = 1
ID = 7700
anim = 7700
postype = P1
pos = -42,-62
bindtime = 1
removetime = -2
sprpriority = 5
scale = .65,.65
ownpal = 1
[State 1010, Explod]
type = Explod
trigger1 = AnimElem = 1
ID = 7701
anim = 7700
postype = P1
pos = 17,-66
bindtime = 1
removetime = -2
sprpriority = 5
scale = .65,.65
ownpal = 1

[State 1010, Explod]
type = Explod
trigger1 = AnimElem = 3
ID = 7009
anim = 7009
postype = P1
pos = 20,0
bindtime = 1
removetime = -2
sprpriority = 4
scale = .2,.2
ownpal = 1

[State 1010, Explod]
type = Explod
trigger1 = AnimElem = 3
ID = 6005
anim = 6005
pos = 0,-60
postype = P1
bindtime = -1
removetime = -2
scale = .42,.5
sprpriority = 2
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[State 1010, Explod]
type = Explod
trigger1 = AnimElem = 1
ID = 6015
anim = 6015
postype = P1  ;p2,front,back,left,right
pos = -15,-55
bindtime = -1
removetime = 900
removeongethit = 1
supermovetime = 900
pausemovetime = 900
scale = .24,.24
sprpriority = 2
ownpal = 1
ignorehitpause = 1
[State 1010, Explod]
type = Explod
trigger1 = AnimElem = 1
ID = 60151
anim = 6015
postype = P1  ;p2,front,back,left,right
pos = 26,-58
bindtime = -1
removetime = 900
removeongethit = 1
supermovetime = 900
pausemovetime = 900
scale = .2,.2
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 1010, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 2
ID = 6015
ignorehitpause = 1
[State 1010, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 2
ID = 60151
ignorehitpause = 1

[State 1010, Explod]
type = Explod
trigger1 = AnimElem = 2
ID = 60152
anim = 6015
postype = P1  ;p2,front,back,left,right
pos = -43,-60
bindtime = -1
removetime = 900
removeongethit = 1
supermovetime = 900
pausemovetime = 900
scale = .24,.24
sprpriority = 4
ownpal = 1
ignorehitpause = 1
[State 1010, Explod]
type = Explod
trigger1 = AnimElem = 2
ID = 60153
anim = 6015
postype = P1  ;p2,front,back,left,right
pos = 16,-65
bindtime = -1
removetime = 900
removeongethit = 1
supermovetime = 900
pausemovetime = 900
scale = .2,.2
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 1010, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 3
ID = 60152
ignorehitpause = 1
[State 1010, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 3
ID = 60153
ignorehitpause = 1

[State 1010, Helper]
type = Helper
trigger1 = AnimElem = 5
name = "Sonic Twister"
ID = 6010
stateno = 6010
pos = 50,-60
postype = P1    ;p2,front,back,left,right
size.xscale = .6
size.yscale = .3
ownpal = 1
pausemovetime = 0
supermovetime = 0

[State 1010, Explod]
type = Explod
trigger1 = AnimElemTime(5) = 0
ID = 7300
anim = 7300
pos = 50,-60
postype = P1
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .6,.6
sprpriority = 2
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 1010, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S100,7
channel = -1

[State 1010, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S1010,0
channel = 0

[State 1010, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S1000,2
channel = -1

[State 1010, ChangeState]
type = ChangeState
trigger1 = !AILevel
trigger1 = AnimElemTime(7) >= 0
trigger1 = Command = "x" || Command = "y" || Command = "z"
value = 1011
ctrl = 0

[State 1010, ChangeState]
type = ChangeState
trigger1 = AILevel
trigger1 = NumEnemy
trigger1 = P2Life > 0
trigger1 = (P2Dist X >= 50) || (EnemyNear,MoveType != H)
trigger1 = P2Dist Y >= -50
trigger1 = !((EnemyNear,StateType = L) && P2Dist X <= 140)
trigger1 = AnimElemTime(7) >= 0
trigger1 = Var(59) < (1000*(AILevel**2/64.0))
value = 1011
ctrl = 0

[State 1010, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-------------------------------------------------------------------------------------------------------------------------------------------
;EX SONIC BREAK 1
[StateDef 1011]
type = S
physics = N
movetype = A
anim = 1011
ctrl = 0
velset = 0,0
poweradd = 0
sprpriority = 1

[State 1011, VarSet]
type = VarSet
trigger1 = !Time
var(5) = 3

[State 1011, Width]
type = Width
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
edge = 50,0
player = 40,0

[State 1011, Width]
type = Width
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
edge = 70,0
player = 60,0

[State 1011, Width]
type = Width
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
edge = 90,0
player = 80,0

[State 1011, Width]
type = Width
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
edge = 70,0
player = 30,0

[State 1011, Width]
type = Width
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
edge = 30,0
player = 10,0

[State 1011, Width]
type = Width
trigger1 = AnimElemTime(6) >= 0
edge = 20,0
player = 10,0

[State 1011, Explod]
type = Explod
trigger1 = AnimElem = 2
ID = 7009
anim = 7009
postype = P1
pos = 20,0
bindtime = 1
removetime = -2
sprpriority = 4
scale = .15,.15
ownpal = 1

[State 1011, Helper]
type = Helper
trigger1 = AnimElem = 3
name = "Slash"
ID = 221
stateno = 6071
postype = P1    ;p2,front,back,left,right
facing = 1
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1

[State 1011, Helper]
type = Helper
trigger1 = AnimElem = 3
name = "Twister"
ID = 6017
stateno = 6017
pos = 75,0
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0

[State 1011, Explod]
type = Explod
trigger1 = AnimElemTime(3) = 0
ID = 7300
anim = 7300
pos = 75,-75
postype = P1
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .6,.6
sprpriority = 2
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 1011, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5) = 0
movetype = I         ;A,C,S,N

[State 1011, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1005,0
channel = 0

[State 1011, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S1000,2
channel = -1

[State 1011, ChangeState]
type = ChangeState
trigger1 = !AILevel
trigger1 = AnimElemTime(5) >= 0
trigger1 = Command = "x" || Command = "y" || Command = "z"
value = 1012
ctrl = 0

[State 1011, ChangeState]
type = ChangeState
trigger1 = AILevel
trigger1 = NumEnemy
trigger1 = P2Life > 0
trigger1 = P2Dist X > 10
trigger1 = P2Dist Y >= -70
trigger1 = !(Abs(P2BodyDist Y > 60) && P2Dist X < 50)
trigger1 = !((EnemyNear,StateType = L) && P2Dist X <= 140)
trigger1 = AnimElemTime(5) >= 0
trigger1 = Var(59) < (1000*(AILevel**2/64.0))
value = 1012
ctrl = 0

[State 1011, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-------------------------------------------------------------------------------------------------------------------------------------------
;EX SONIC BREAK 2
[StateDef 1012]
type = S
physics = N
movetype = A
anim = 1007
ctrl = 0
velset = 0,0
poweradd = 0
sprpriority = 1

[State 1012, VarSet]
type = VarSet
trigger1 = !Time
var(5) = 3

[State 1012, Width]
type = Width
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
edge = 50,0
player = 40,0

[State 1012, Width]
type = Width
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
edge = 70,0
player = 60,0

[State 1012, Width]
type = Width
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
edge = 90,0
player = 80,0

[State 1012, Width]
type = Width
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
edge = 70,0
player = 30,0

[State 1012, Width]
type = Width
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
edge = 30,0
player = 10,0

[State 1012, Width]
type = Width
trigger1 = AnimElemTime(6) >= 0
edge = 20,0
player = 10,0

[State 1012, Explod]
type = Explod
trigger1 = AnimElem = 2
ID = 7009
anim = 7009
postype = P1
pos = 20,0
bindtime = 1
removetime = -2
sprpriority = 4
scale = .15,.15
ownpal = 1

[State 1012, Helper]
type = Helper
trigger1 = AnimElemTime(3) = 1
name = "Slash"
ID = 210
stateno = 6071
postype = P1    ;p2,front,back,left,right
facing = 1
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1

[State 1012, Helper]
type = Helper
trigger1 = AnimElem = 3
name = "Twister"
ID = 6018
stateno = 6017
pos = 75,0
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0

[State 1012, Explod]
type = Explod
trigger1 = AnimElemTime(3) = 0
ID = 7300
anim = 7300
pos = 75,-75
postype = P1
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .6,.6
sprpriority = 2
ownpal = 1
removeongethit = 0
ignorehitpause = 1

[State 1012, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5) = 0
movetype = I         ;A,C,S,N

[State 1012, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1005,1
channel = 0

[State 1012, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S1000,2
channel = -1

[State 1012, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-------------------------------------------------------------------------------------------------------------------------------------------
;SOMERSAULT KICK
[StateDef 1100]
type = S
physics = S
movetype = A
ctrl = 0
velset = 0,0
poweradd = 80*Var(3)
juggle = 100
sprpriority = 1
facep2 = 1

[State 1100, VarSet]
type = VarSet
trigger1 = !AILevel
trigger1 = !Time
var(5) = Cond(NumExplod(90000250) || NumExplod(90000255),2,Cond(NumExplod(90000240) || NumExplod(90000245),1,0))

[State 1100, VarSet]
type = VarSet
trigger1 = AILevel
trigger1 = NumEnemy
trigger1 = !Time
var(5) = 2
[State 1100, VarSet]
type = VarSet
trigger1 = AILevel
trigger1 = NumEnemy
trigger1 = EnemyNear,MoveType != H || (EnemyNear,StateNo = [120,155])
trigger1 = !Time
var(5) = 0

[State 1100, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = Cond(Var(5) = 2,1102,Cond(Var(5) = 1,1101,1100))

[State 1100, Width]
type = Width
trigger1 = AnimElemTime(5) < 0
edge = 40,0
player = 50,0
[State 1100, Width]
type = Width
trigger1 = AnimElemTime(5) >= 0
edge = 40,0
player = 1,0

[State 1100, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(4) < 0
value = 1

[State 1100, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(4) >= 0
value = 0

[State 1100, Helper]
type = Helper
trigger1 = AnimElem = 4
name = "Dust FX"
ID = 7000
stateno = 7000
postype = P1    ;p2,front,back,left,right
facing = 1
ownpal = 1

[State 1100, Explod]
type = Explod
trigger1 = AnimElem = 4
ID = 6105
anim = 6105
postype = P1  ;p2,front,back,left,right
pos = 15,-55
bindtime = -1
supermovetime = 0
pausemovetime = 0
removeongethit = 1
scale = .4,.4
sprpriority = 4
ownpal = 1
ignorehitpause = 0
persistent = 0
;[State 1100, Explod]
;type = Explod
;trigger1 = AnimElem = 8
;ID = 6106
;anim = 6106
;postype = P1  ;p2,front,back,left,right
;pos = 0,-70
;bindtime = 1
;supermovetime = 0
;pausemovetime = 0
;removeongethit = 1
;scale = .4,.4
;sprpriority = 3
;ownpal = 1
;ignorehitpause = 0
;persistent = 0

[State 1100, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(1100)
trigger1 = !NumExplod(1100)
trigger1 = Target(1100),StateType != L
ID = 1100
anim = 8100+Random%32
pos = Ceil(P2Dist X),-35-(30*(AnimElemTime(6) >= 0))-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 1100, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(1101)
trigger1 = !NumExplod(1101)
trigger1 = Target(1101),StateType != L
ID = 1101
anim = 8100+Random%32
pos = Ceil(P2Dist X),-35-(30*(AnimElemTime(6) >= 0))-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 1100, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(1102)
trigger1 = !NumExplod(1102)
trigger1 = Target(1102),StateType != L
ID = 1102
anim = 8100+Random%32
pos = Ceil(P2Dist X),-35-(30*(AnimElemTime(6) >= 0))-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 1100, HitDef]
type = HitDef
trigger1 = Anim = 1100 && AnimElemTime(4) != 3
attr = A,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium
air.animtype = Medium        ;light,medium,hard,back,up,diagup
fall.animtype = Up
priority = 8,Hit
damage = Ceil(FVar(5)*50),1
pausetime = 16,16
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-35
hitsound = S214,0+(Random%5)
guardsound = S200,2
ground.type = Low      ;Low,Trip,None
air.type = High
ground.slidetime = 17
ground.hittime = 17
guard.ctrltime = 17
yaccel = .5
ground.velocity = -2,-8.3
air.velocity = Cond(P2Dist X < 0,2,-2),-9.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
p2facing = 1
getpower = 70*Var(3),35*Var(3)
givepower = 0,10
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 1100
persistent = 0

[State 1100, HitDef]
type = HitDef
trigger1 = Anim = 1101 && AnimElemTime(4) != 3
attr = A,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium
air.animtype = Medium        ;light,medium,hard,back,up,diagup
fall.animtype = Up
priority = 8,Hit
damage = Ceil(FVar(5)*60),1
pausetime = 16,16
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-80
hitsound = S214,0+(Random%5)
guardsound = S200,2
ground.type = Low      ;Low,Trip,None
air.type = High
ground.slidetime = 17
ground.hittime = 17
guard.ctrltime = 17
yaccel = .5
ground.velocity = -2,-9.3
air.velocity = Cond(P2Dist X < 0,2,-2),-9.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
p2facing = 1
getpower = 80*Var(3),40*Var(3)
givepower = 0,10
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 1101
persistent = 0

[State 1100, HitDef]
type = HitDef
trigger1 = Anim = 1102 && AnimElemTime(4) != 3
attr = A,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium
air.animtype = Medium        ;light,medium,hard,back,up,diagup
fall.animtype = Up
priority = 8,Hit
damage = Ceil(FVar(5)*70),1
pausetime = 16,16
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-80
hitsound = S214,0+(Random%5)
guardsound = S200,2
ground.type = Low      ;Low,Trip,None
air.type = High
ground.slidetime = 17
ground.hittime = 17
guard.ctrltime = 17
yaccel = .5
ground.velocity = -2,-10.3
air.velocity = Cond(P2Dist X < 0,2,-2),-9.5
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
p2facing = 1
getpower = 90*Var(3),45*Var(3)
givepower = 0,10
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 1102
persistent = 0

[State 1100, TargetBind]
type = TargetBind
trigger1 = MoveContact = 1
trigger1 = NumTarget(1100) && NumEnemy
trigger1 = (Target(1100),Time = 0) && (Target(1100),ID = EnemyNear,ID)
trigger1 = !(Target(1100),HitShakeOver) && (Target(1100),Pos Y > 0)
pos = Ceil(P2Dist X),Ceil(-Pos Y)
time = 1
ignoreHitPause = 1
[State 1100, TargetBind]
type = TargetBind
trigger1 = MoveContact = 1
trigger1 = NumTarget(1101) && NumEnemy
trigger1 = (Target(1101),Time = 0) && (Target(1101),ID = EnemyNear,ID)
trigger1 = !(Target(1101),HitShakeOver) && (Target(1101),Pos Y > 0)
pos = Ceil(P2Dist X),Ceil(-Pos Y)
time = 1
ignoreHitPause = 1
[State 1100, TargetBind]
type = TargetBind
trigger1 = MoveContact = 1
trigger1 = NumTarget(1102) && NumEnemy
trigger1 = (Target(1102),Time = 0) && (Target(1102),ID = EnemyNear,ID)
trigger1 = !(Target(1102),HitShakeOver) && (Target(1102),Pos Y > 0)
pos = Ceil(P2Dist X),Ceil(-Pos Y)
time = 1
ignoreHitPause = 1

[State 1100, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(4) = 0
statetype = A       ;S,A,C,L
physics = N         ;A,C,S,N

[State 1100, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(12) >= 0
movetype = I        ;I,A,H

[State 1100, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 1100, VelAdd]
type = VelAdd
trigger1 = !Time
x = 9
ignorehitpause = 1

[State 1100, VelSet]
type = VelSet
trigger1 = !Var(5)
trigger1 = AnimElemTime(4) = 0
x = 2
y = -9;-8

[State 1100, VelSet]
type = VelSet
trigger1 = Var(5) = 1
trigger1 = AnimElemTime(4) = 0
x = 2.5
y = -11;-10

[State 1100, VelSet]
type = VelSet
trigger1 = Var(5) = 2
trigger1 = AnimElemTime(4) = 0
x = 3
y = -13;-12

[State 1100, VelMul]
type = VelMul
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(8) < 0
x = .95
y = .9

[State 1100, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(8) >= 0
y = .5

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S1100,0
channel = 0

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
value = S1100,1
channel = 3

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
value = S1100,2
channel = 3

[State 1100, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S40,1
channel = 3

[State 1100, CtrlSet]
type = CtrlSet
trigger1 = AnimElem = 11
value = 1

[State 1100, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
trigger1 = AnimElemTime(4) >= 2
value = 52

;-------------------------------------------------------------------------------------------------------------------------------------------
;SOMERSAULT SHELL
[StateDef 1110]
type = S
physics = S
movetype = A
anim = 1110
ctrl = 0
velset = 0,0
poweradd = -500
juggle = 100
sprpriority = 1
facep2 = 1

[State 1110, VarSet]
type = VarSet
trigger1 = !Time
var(5) = 3

[State 1110, Width]
type = Width
trigger1 = AnimElemTime(3) < 0
edge = 50,0
player = 50,0
[State 1110, Width]
type = Width
trigger1 = AnimElemTime(3) >= 0
edge = 50,0
player = 1,0

[State 1110, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 1110, AfterImage]
type = AfterImage
trigger1 = !Time
time = 15
timegap = 1
framegap = 1
length = 8
palbright = 32,32,0
palcontrast = 128,128,128
paladd = -10,-10,-10
palmul = 1.1,1,.5
trans = Add
ignorehitpause = 1

[State 1110, PalFX]
type = PalFX
trigger1 = !Time
time = 15
add = 90,90,0
sinadd = 90,90,0,10
ignorehitpause = 1

[State 1110, Explod]
type = Explod
trigger1 = !Time
ID = 7700
anim = 7700
pos = -5,-5
postype = P1
bindtime = 1
removetime = -2
sprpriority = 5
scale = .65,.65
ownpal = 1
ignorehitpause = 1

[State 1110, Helper]
type = Helper
trigger1 = AnimElem = 2
name = "Dust FX"
ID = 7000
stateno = 7000
postype = P1    ;p2,front,back,left,right
facing = 1
ownpal = 1

[State 1110, Explod]
type = Explod
trigger1 = AnimElem = 1;6
ID = 6106;6100
anim = 6106;6100
postype = P1  ;p2,front,back,left,right
pos = 15,-55;-40
facing = -1
vfacing = -1
bindtime = -1;5
supermovetime = 0
pausemovetime = 0
scale = .5,.5;.35,.35
sprpriority = 4
ownpal = 1
ignorehitpause = 0
persistent = 0
;[State 1110, Explod]
;type = Explod
;trigger1 = AnimElem = 5
;ID = 6106
;anim = 6106
;postype = P1  ;p2,front,back,left,right
;pos = 0,-70
;bindtime = 1
;supermovetime = 0
;pausemovetime = 0
;scale = .5,.5
;sprpriority = 3
;ownpal = 1
;ignorehitpause = 0
;persistent = 0

[State 1110, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(1110)
trigger1 = !NumExplod(1110)
trigger1 = Target(1110),StateType != L
ID = 1110
anim = 8100+Random%32
pos = 30+Ceil(P2Dist X/3),-40-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 1110, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(1111)
trigger1 = !NumExplod(1111)
trigger1 = Target(1111),StateType != L
ID = 1111
anim = 8100+Random%32
pos = Ceil(P2Dist X),-80-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 1110, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = S,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Light         ;light,medium,hard,back,up,diagup
air.animtype = Light
fall.animtype = Light
priority = 11,Hit
damage = Ceil(FVar(5)*40),1
pausetime = 3,Cond(Abs(P2Dist Y) > 30,6,0)
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-85
hitsound = S214,0+(Random%5)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 1
ground.hittime = 15
guard.hittime = 5
guard.ctrltime = 5
yaccel = .5
ground.velocity = 0,-10
air.velocity = 0,-10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
kill = 0
p2facing = 1
getpower = 0
givepower = 0,10
hitonce = 1
ID = 1110

[State 1110, HitDef]
type = HitDef
trigger1 = AnimElem = 4
attr = A,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Up         ;light,medium,hard,back,up,diagup
air.animtype = Up
fall.animtype = Up
priority = 10,Hit
damage = Ceil(FVar(5)*60),1
pausetime = 16,16
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-95
hitsound = S214,0+(Random%5)
guardsound = S200,2
ground.type = High      ;Low,Trip,None
air.type = High
ground.slidetime = 20
ground.hittime = 20
guard.ctrltime = 20
yaccel = .5
ground.velocity = -3,-8.5
guard.velocity = -10
air.velocity = Cond(P2Dist X < 0,2,-2),-8
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
p2facing = 1
getpower = 0
givepower = 0,10
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 1111

[State 1110, TargetBind]
type = TargetBind
trigger1 = MoveContact = 1
trigger1 = NumTarget(1111) && NumEnemy
trigger1 = (Target(1111),Time = 0) && (Target(1111),ID = EnemyNear,ID)
trigger1 = !(Target(1111),HitShakeOver) && (Target(1111),Pos Y > 0)
pos = Ceil(P2Dist X),Ceil(-Pos Y)
time = 1
ignorehitpause = 1

[State 1110, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(5) > 0
movetype = I        ;I,A,H

[State 1110, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(5) < 0
value = SCA

[State 1110, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(2) = 0
statetype = A       ;S,A,C,L
physics = N         ;A,C,S,N

[State 1110, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 1110, VelAdd]
type = VelAdd
trigger1 = !Time
x = 30
ignorehitpause = 1

[State 1110, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) = 0;2
x = 3
y = -14;-12

[State 1110, VelMul]
type = VelMul
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(6) < 0
x = .95
y = .9

[State 1110, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(6) >= 0
y = .5

[State 1110, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S100,7
channel = -1

[State 1110, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S1110,0
channel = 0

[State 1110, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S1100,1
channel = -1

[State 1110, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1100,2
channel = -1

[State 1110, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S40,1
channel = 3

[State 1110, CtrlSet]
type = CtrlSet
trigger1 = AnimElem = 7
value = 1

[State 1110, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
trigger1 = AnimElemTime(7) >= 0
value = 52

;-------------------------------------------------------------------------------------------------------------------------------------------
;SONIC BLADE
[StateDef 1200]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0,0
poweradd = 80*Var(3)
sprpriority = 1
facep2 = 1

[State 1200, VarSet]
type = VarSet
trigger1 = !AILevel
trigger1 = !Time
var(5) = Cond(NumExplod(90000220) || NumExplod(90000225),2,Cond(NumExplod(90000210) || NumExplod(90000215),1,0))

[State 1200, VarSet]
type = VarSet
trigger1 = AILevel
trigger1 = NumEnemy
trigger1 = EnemyNear,MoveType = A
trigger1 = PlayerIdExist(Helper(33333333),Var(23)) || EnemyNear,NumProj
trigger1 = !Time
var(5) = 0

[State 1200, VarSet]
type = VarSet
trigger1 = AILevel
trigger1 = !Time
trigger1 = NumTarget(210)
var(5) = 0+Random%2

[State 1200, VarSet]
type = VarSet
trigger1 = AILevel
trigger1 = !Time
trigger1 = NumTarget(223)
var(5) = 2

[State 1200, VarSet]
type = VarSet
trigger1 = AILevel
trigger1 = !Time
trigger1 = NumTarget(240)
var(5) = 0+Random%2

[State 1200, VarSet]
type = VarSet
trigger1 = AILevel
trigger1 = !Time
trigger1 = NumTarget(410)
var(5) = 0

[State 1200, VarSet]
type = VarSet
trigger1 = AILevel
trigger1 = !Time
trigger1 = NumTarget(440)
var(5) = 0+Random%2

[State 1200, VarSet]
type = VarSet
trigger1 = AILevel
trigger1 = !Time
trigger1 = NumTarget(3107)
var(5) = 2
[State 1200, VarSet]
type = VarSet
triggerall = AILevel
triggerall = NumEnemy
triggerall = !(PlayerIdExist(Helper(33333333),Var(23)) || EnemyNear,NumProj)
triggerall = !NumTarget(200) && !NumTarget(230) && !NumTarget(400) && !NumTarget(430)
triggerall = !Time
trigger1 = P2BodyDist X = [0,90]
var(5) = 1
[State 1200, VarSet]
type = VarSet
triggerall = AILevel
triggerall = NumEnemy
triggerall = !(PlayerIdExist(Helper(33333333),Var(23)) || EnemyNear,NumProj)
triggerall = !NumTarget(200) && !NumTarget(230) && !NumTarget(400) && !NumTarget(430)
triggerall = !NumTarget(210) && !NumTarget(240) && !NumTarget(410) && !NumTarget(440)
triggerall = !Time
trigger1 = P2BodyDist X >= 91
var(5) = 2

[State 1200, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = Cond(Var(5) >= 2,1202,Cond(Var(5) = 1,1201,1200))

[State 1200, Width]
type = Width
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
edge = 30,0
player = 40,0

[State 1200, Width]
type = Width
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
edge = 40,0
player = 50,0

[State 1200, Width]
type = Width
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
edge = 70,0
player = 60,0

[State 1200, Width]
type = Width
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
edge = 40,0
player = 70,0

[State 1200, Width]
type = Width
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
edge = 30,0
player = 10,0

[State 1200, Width]
type = Width
trigger1 = AnimElemTime(6) >= 0
edge = 20,0
player = 10,0

[State 1200, Explod]
type = Explod
trigger1 = AnimElem = 5
ID = 7009
anim = 7009
postype = P1
pos = 20,0
bindtime = 1
removetime = -2
sprpriority = 4
scale = .15,.15
ownpal = 1

[State 1200, Helper]
type = Helper
trigger1 = AnimElem = 4
name = "Slash"
ID = 1200
stateno = 6071
postype = P1    ;p2,front,back,left,right
facing = 1
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1
[State 1200, Helper]
type = Helper
trigger1 = AnimElem = 4
name = "Slash"
ID = 1201
stateno = 6071
postype = P1    ;p2,front,back,left,right
facing = 1
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1

[State 1200, Explod]
type = Explod
trigger1 = AnimElem = 2
ID = 6015
anim = 6015
postype = P1  ;p2,front,back,left,right
pos = -62,-81
bindtime = -1
removetime = 900
supermovetime = 900
pausemovetime = 900
removeongethit = 1
scale = .24,.24
sprpriority = 3
ownpal = 1
ignorehitpause = 1
[State 1200, Explod]
type = Explod
trigger1 = AnimElem = 2
ID = 60151
anim = 6015
postype = P1  ;p2,front,back,left,right
pos = 30,-94
bindtime = -1
removetime = 900
supermovetime = 900
pausemovetime = 900
removeongethit = 1
scale = .2,.2
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 1200, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 3
ID = 6015
ignorehitpause = 1
[State 1200, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 3
ID = 60151
ignorehitpause = 1

[State 1200, Explod]
type = Explod
trigger1 = AnimElem = 3
ID = 60152
anim = 6015
postype = P1  ;p2,front,back,left,right
pos = -49,-86
bindtime = -1
removetime = 900
supermovetime = 900
pausemovetime = 900
removeongethit = 1
scale = .24,.24
sprpriority = 3
ownpal = 1
ignorehitpause = 1
[State 1200, Explod]
type = Explod
trigger1 = AnimElem = 3
ID = 60153
anim = 6015
postype = P1  ;p2,front,back,left,right
pos = 9,-109
bindtime = -1
removetime = 900
supermovetime = 900
pausemovetime = 900
removeongethit = 1
scale = .2,.2
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 1200, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 4
ID = 60152
ignorehitpause = 1
[State 1200, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 4
ID = 60153
ignorehitpause = 1

[State 1200, Explod]
type = Explod
trigger1 = AnimElem = 4
ID = 60154
anim = 6015
postype = P1  ;p2,front,back,left,right
pos = 21,-65
bindtime = -1
removetime = 900
supermovetime = 900
pausemovetime = 900
removeongethit = 1
scale = .24,.24
sprpriority = 3
ownpal = 1
ignorehitpause = 1
[State 1200, Explod]
type = Explod
trigger1 = AnimElem = 4
ID = 60155
anim = 6015
postype = P1  ;p2,front,back,left,right
pos = 33,-75
bindtime = -1
removetime = 900
supermovetime = 900
pausemovetime = 900
removeongethit = 1
scale = .2,.2
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 1200, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 5
ID = 60154
ignorehitpause = 1
[State 1200, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 5
ID = 60155
ignorehitpause = 1

[State 1200, Helper]
type = Helper
trigger1 = AnimElem = 5
name = "SonicBlade"
ID = 6040
stateno = 6040
pos = 35,-60
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0

[State 1200, Explod]
type = Explod
trigger1 = AnimElemTime(5) = 0
ID = 7300
anim = 7300
pos = 35,-60
postype = P1
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .6,.6
sprpriority = 2
ownpal = 1
removeongethit = 0
trans = Sub
ignorehitpause = 1

[State 1200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(6) = 0
movetype = I         ;A,C,S,N

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1200,0+(Random%2)
channel = 0

[State 1200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S1000,2
channel = -1

[State 1200, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-------------------------------------------------------------------------------------------------------------------------------------------
;EX SONIC BLADE
[StateDef 1210]
type = S
physics = N
movetype = A
anim = 1210
ctrl = 0
velset = 0,0
poweradd = -500
sprpriority = 1
facep2 = 1

[State 1210, VarSet]
type = VarSet
trigger1 = !Time
var(5) = 3

[State 1210, Width]
type = Width
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
edge = 30,0
player = 40,0

[State 1210, Width]
type = Width
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
edge = 40,0
player = 50,0

[State 1210, Width]
type = Width
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
edge = 70,0
player = 60,0

[State 1210, Width]
type = Width
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
edge = 40,0
player = 70,0

[State 1210, Width]
type = Width
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
edge = 30,0
player = 10,0

[State 1210, Width]
type = Width
trigger1 = AnimElemTime(6) >= 0
edge = 20,0
player = 10,0

[State 1210, AfterImage]
type = AfterImage
trigger1 = !Time
time = 20
timegap = 1
framegap = 1
length = 8
palbright = 32,32,0
palcontrast = 128,128,128
paladd = -10,-10,-10
palmul = 1.1,1,.5
trans = Add
ignorehitpause = 1

[State 1210, PalFX]
type = PalFX
trigger1 = !Time
time = 20
add = 90,90,0
sinadd = 90,90,0,10
ignorehitpause = 1

[State 1210, Explod]
type = Explod
trigger1 = !Time
ID = 7700
anim = 7700
pos = -45,-36
postype = P1
bindtime = 1
removetime = -2
sprpriority = 5
scale = .65,.65
ownpal = 1
ignorehitpause = 1
[State 1210, Explod]
type = Explod
trigger1 = !Time
ID = 77001
anim = 7700
pos = 20,-74
postype = P1
bindtime = 1
removetime = -2
sprpriority = 5
scale = .65,.65
ownpal = 1
ignorehitpause = 1

[State 1210, Explod]
type = Explod
trigger1 = AnimElem = 5
ID = 7009
anim = 7009
postype = P1
pos = 20,0
bindtime = 1
removetime = -2
sprpriority = 4
scale = .15,.15
ownpal = 1

;[State 1210, Explod]
;type = Explod
;trigger1 = AnimElem = 4
;ID = 6071
;anim = 6071
;postype = P1  ;p2,front,back,left,right
;pos = 0,-70
;bindtime = 5
;vfacing = -1
;supermovetime = 0
;pausemovetime = 0
;scale = .7,.7
;sprpriority = 2
;ownpal = 1
;removeongethit = 1
;ignorehitpause = 1
;[State 1210, Explod]
;type = Explod
;trigger1 = AnimElem = 4
;ID = 60711
;anim = 6071
;postype = P1  ;p2,front,back,left,right
;pos = 0,-70
;bindtime = 5
;supermovetime = 0
;pausemovetime = 0
;scale = .7,.7
;sprpriority = 2
;ownpal = 1
;removeongethit = 1
;ignorehitpause = 1

[State 1210, Helper]
type = Helper
trigger1 = AnimElem = 4
name = "Slash"
ID = 1200
stateno = 6071
postype = P1    ;p2,front,back,left,right
facing = 1
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1
[State 1210, Helper]
type = Helper
trigger1 = AnimElem = 4
name = "Slash"
ID = 1201
stateno = 6071
postype = P1    ;p2,front,back,left,right
facing = 1
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1

[State 1210, Explod]
type = Explod
trigger1 = AnimElem = 2
ID = 6015
anim = 6015
postype = P1  ;p2,front,back,left,right
pos = -62,-81
bindtime = -1
removetime = 900
supermovetime = 900
pausemovetime = 900
removeongethit = 1
scale = .24,.24
sprpriority = 3
ownpal = 1
ignorehitpause = 1
[State 1210, Explod]
type = Explod
trigger1 = AnimElem = 2
ID = 60151
anim = 6015
postype = P1  ;p2,front,back,left,right
pos = 30,-94
bindtime = -1
removetime = 900
supermovetime = 900
pausemovetime = 900
removeongethit = 1
scale = .2,.2
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 1210, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 3
ID = 6015
ignorehitpause = 1
[State 1210, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 3
ID = 60151
ignorehitpause = 1

[State 1210, Explod]
type = Explod
trigger1 = AnimElem = 3
ID = 60152
anim = 6015
postype = P1  ;p2,front,back,left,right
pos = -49,-86
bindtime = -1
removetime = 900
supermovetime = 900
pausemovetime = 900
removeongethit = 1
scale = .24,.24
sprpriority = 3
ownpal = 1
ignorehitpause = 1
[State 1210, Explod]
type = Explod
trigger1 = AnimElem = 3
ID = 60153
anim = 6015
postype = P1  ;p2,front,back,left,right
pos = 9,-109
bindtime = -1
removetime = 900
supermovetime = 900
pausemovetime = 900
removeongethit = 1
scale = .2,.2
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 1210, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 4
ID = 60152
ignorehitpause = 1
[State 1210, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 4
ID = 60153
ignorehitpause = 1

[State 1210, Explod]
type = Explod
trigger1 = AnimElem = 4
ID = 60154
anim = 6015
postype = P1  ;p2,front,back,left,right
pos = 21,-65
bindtime = -1
removetime = 900
supermovetime = 900
pausemovetime = 900
removeongethit = 1
scale = .24,.24
sprpriority = 3
ownpal = 1
ignorehitpause = 1
[State 1210, Explod]
type = Explod
trigger1 = AnimElem = 4
ID = 60155
anim = 6015
postype = P1  ;p2,front,back,left,right
pos = 33,-75
bindtime = -1
removetime = 900
supermovetime = 900
pausemovetime = 900
removeongethit = 1
scale = .2,.2
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 1210, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 5
ID = 60154
ignorehitpause = 1
[State 1210, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 5
ID = 60155
ignorehitpause = 1

[State 1210, Helper]
type = Helper
trigger1 = AnimElem = 5
name = "SonicBlade"
ID = 6050
stateno = 6050
pos = 35,-60
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0

[State 1210, Explod]
type = Explod
trigger1 = AnimElemTime(5) = 0
ID = 7300
anim = 7300
pos = 35,-60
postype = P1
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .6,.6
sprpriority = 2
ownpal = 1
removeongethit = 0
trans = Sub
ignorehitpause = 1

[State 1210, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(6) = 0
movetype = I         ;A,C,S,N

[State 1210, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 1
value = S1210,0
channel = 0

[State 1210, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
value = S1000,2
channel = -1

[State 1210, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S100,7
channel = -1

[State 1210, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-------------------------------------------------------------------------------------------------------------------------------------------
;SONIC FLASH
[StateDef 1300]
type = C
physics = N
movetype = A
ctrl = 0
velset = 0,0
poweradd = 80*Var(3)
juggle = 100
sprpriority = 1
facep2 = 1

[State 1300, VarSet]
type = VarSet
trigger1 = !AILevel
trigger1 = !Time
var(5) = Cond(NumExplod(90000250) || NumExplod(90000255),2,Cond(NumExplod(90000240) || NumExplod(90000245),1,0))

[State 1300, VarSet]
type = VarSet
trigger1 = AILevel
trigger1 = P2BodyDist X <= 100
trigger1 = !Time
var(5) = 0
[State 1300, VarSet]
type = VarSet
trigger1 = AILevel
trigger1 = P2BodyDist X = [101,120]
trigger1 = !Time
var(5) = 1
[State 1300, VarSet]
type = VarSet
trigger1 = AILevel
trigger1 = P2BodyDist X >= 121
trigger1 = !Time
var(5) = 2

[State 1300, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 10
value = ,AP

[State 1300, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = Cond(Var(5) = 2,1302,Cond(Var(5) = 1,1301,1300))

[State 1300, Width]
type = Width
trigger1 = AnimElemTime(3) < 0
edge = 35,0
player = 35,0
[State 1300, Width]
type = Width
trigger1 = AnimElemTime(3) >= 0
edge = 60,0
player = 0,0

[State 1300, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(3) < 0
value = 1
ignorehitpause = 1
[State 1300, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(3) >= 0
value = 0
ignorehitpause = 1

[State 1300, Pause]
type = Pause
trigger1 = NumEnemy
trigger1 = EnemyNear,Alive
trigger1 = !NumHelper(7900)
trigger1 = !NumHelper(7925)
trigger1 = !NumHelper(7950)
trigger1 = AnimElemTime(3) < 0
time = 2
movetime = 0
pausebg = 1
ignorehitpause = 1

[State 1300, Helper]
type = Helper
trigger1 = !NumHelper(1320)
trigger1 = NumTarget(1300)
trigger1 = Target(1300),MoveType = H
trigger1 = Target(1300),StateType != L
trigger1 = MoveContact
trigger1 = !MoveGuarded
name = "SlowMotion"
ID = 1320
stateno = 1320
postype = P1    ;p2,front,back,left,right
ownpal = 1
size.shadowoffset = Target(1300),ID
pausemovetime = 900
supermovetime = 900
ignorehitpause = 1
persistent = 0

;[State 1300, Pause]
;type = Pause
;triggerall = !Var(5)
;triggerall = !NumHelper(7900)
;triggerall = !NumHelper(7925)
;triggerall = !NumHelper(7950)
;triggerall = Time%2 = 0
;trigger1 = MoveContact
;trigger1 = !MoveGuarded
;trigger1 = NumTarget(1300)
;trigger1 = Target(1300),StateType != L
;trigger1 = Target(1300),Alive
;trigger1 = Target(1300),Life > (FVar(5)*60)
;time = 2
;movetime = 0
;pausebg = 1
;ignorehitpause = 1
;[State 1300, Pause]
;type = Pause
;triggerall = Var(5) = 1
;triggerall = !NumHelper(7900)
;triggerall = !NumHelper(7925)
;triggerall = !NumHelper(7950)
;triggerall = Time%2 = 0
;trigger1 = MoveContact
;trigger1 = !MoveGuarded
;trigger1 = NumTarget(1300)
;trigger1 = Target(1300),StateType != L
;trigger1 = Target(1300),Alive
;trigger1 = Target(1300),Life > (FVar(5)*70)
;time = 2
;movetime = 0
;pausebg = 1
;ignorehitpause = 1
;[State 1300, Pause]
;type = Pause
;triggerall = Var(5) = 2
;triggerall = !NumHelper(7900)
;triggerall = !NumHelper(7925)
;triggerall = !NumHelper(7950)
;triggerall = Time%2 = 0
;trigger1 = MoveContact
;trigger1 = !MoveGuarded
;trigger1 = NumTarget(1300)
;trigger1 = Target(1300),StateType != L
;trigger1 = Target(1300),Alive
;trigger1 = Target(1300),Life > (FVar(5)*80)
;time = 2
;movetime = 0
;pausebg = 1
;ignorehitpause = 1

[State 1300, Explod]
type = Explod
trigger1 = AnimElemTime(2) = Cond(Var(5) = 2,4,Cond(Var(5) = 1,2,0))
ID = 7030
anim = 7030
postype = P1
pos = 90,5
bindtime = 1
removetime = -2
sprpriority = 4
scale = 1.2,1.2
ownpal = 1

[State 1300, Explod]
type = Explod
trigger1 = AnimElem = 3
ID = 6090
anim = 6090
pos = 0,10
postype = P1
bindtime = 1
removetime = -2
scale = .25,.25
sprpriority = 4
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[State 1300, Explod]
type = Explod
trigger1 = !NumExplod(6721)
trigger1 = AnimElem = 3
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
scale = 3,.5
sprpriority = 3
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1300, Helper]
type = Helper
trigger1 = AnimElemTime(2) = Cond(Var(5) = 2,5,Cond(Var(5) = 1,3,1))
name = "Afterimage"
ID = 1304
stateno = 1304
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 900
supermovetime = 900

[State 1300, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(1300)
trigger1 = !NumExplod(1300)
trigger1 = Target(1300),StateType != L
ID = 1300
anim = 8100+Random%32
pos = Ceil(P2Dist X),-60-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 1300, HitDef]
type = HitDef
trigger1 = !Var(5)
trigger1 = !NumTarget(1300)
trigger1 = Time = 3
attr = S,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium
air.animtype = Medium        ;light,medium,hard,back,up,diagup
fall.animtype = Up
priority = 8,Hit
damage = Ceil(FVar(5)*60),1
pausetime = 5,0
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-55
hitsound = S214,0+(Random%5)
guardsound = S200,2
ground.type = High      ;Low,Trip,None
air.type = High
ground.slidetime = 20
ground.hittime = 40
guard.hittime = 10
guard.ctrltime = 10
yaccel = .5
ground.velocity = 0,-9
air.velocity = 0,-9
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
p2facing = 1
getpower = 70*Var(3),35*Var(3)
givepower = 0,10
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 1300
persistent = 0
[State 1300, HitDef]
type = HitDef
trigger1 = Var(5) = 1
trigger1 = !NumTarget(1300)
trigger1 = Time = 5
attr = S,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium
air.animtype = Medium        ;light,medium,hard,back,up,diagup
fall.animtype = Up
priority = 8,Hit
damage = Ceil(FVar(5)*70),1
pausetime = 5,0
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-55
hitsound = S214,0+(Random%5)
guardsound = S200,2
ground.type = High      ;Low,Trip,None
air.type = High
ground.slidetime = 20
ground.hittime = 60
guard.hittime = 10
guard.ctrltime = 10
yaccel = .5
ground.velocity = 0,-8
air.velocity = 0,-8
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
p2facing = 1
getpower = 70*Var(3),35*Var(3)
givepower = 0,10
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 1300
persistent = 0
[State 1300, HitDef]
type = HitDef
trigger1 = Var(5) = 2
trigger1 = !NumTarget(1300)
trigger1 = Time = 7
attr = S,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium
air.animtype = Medium        ;light,medium,hard,back,up,diagup
fall.animtype = Up
priority = 8,Hit
damage = Ceil(FVar(5)*80),1
pausetime = 5,0
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-55
hitsound = S214,0+(Random%5)
guardsound = S200,2
ground.type = High      ;Low,Trip,None
air.type = High
ground.slidetime = 20
ground.hittime = 80
guard.hittime = 10
guard.ctrltime = 10
yaccel = .5
ground.velocity = 0,-7
air.velocity = 0,-7
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
p2facing = 1
getpower = 70*Var(3),35*Var(3)
givepower = 0,10
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 1300
persistent = 0

[State 1300, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 3
statetype = A

[State 1300, StateTypeSet]
type = StateTypeSet
trigger1 = Anim = 1300 && Time > 3
trigger2 = Anim = 1301 && Time > 5
trigger3 = Anim = 1302 && Time > 7
movetype = I

[State 1300, TargetBind]
type = TargetBind
trigger1 = MoveContact = 1
trigger1 = NumTarget(1300) && NumEnemy
trigger1 = (Target(1300),Time = 0) && (Target(1300),ID = EnemyNear,ID)
trigger1 = !(Target(1300),HitShakeOver) && (Target(1300),Pos Y > 0)
pos = Ceil(P2Dist X),Ceil(-Pos Y)-30
time = 1
ignoreHitPause = 1

[State 1300, TargetState]
type = TargetState
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(1300)
trigger1 = Target(1300),MoveType = H
value = 2001
ID = 1300
ignorehitpause = 1
persistent = 0

[State 1300, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3 
x = Cond(Var(5) = 2,120,Cond(Var(5) = 1,100,80))

[State 1300, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) = 1;Time = 10
x = 12

[State 1300, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1300,0
channel = 0

[State 1300, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1100,1
channel = -1
[State 1300, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1100,1
channel = -1
[State 1300, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1100,1
channel = -1

[State 1300, ChangeState]
type = ChangeState
trigger1 = Time >= Cond(Var(5) = 2,14,Cond(Var(5) = 1,12,10))
value = 1303
ctrl = 0

;-------------------------------------------------------------------------------------------------------------------------------------------
;SONIC FLASH - END
[StateDef 1303]
type = A
physics = N
movetype = I
velset = 12,0
ctrl = 0
anim = 1303
sprpriority = 1

[State 1303, Width]
type = Width
trigger1 = 1
edge = 1,0
player = 1,0

[State 1303, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(6) < 0
value = 0
[State 1303, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(6) >= 0
value = 1

[State 1303, Explod]
type = Explod
trigger1 = AnimElem = 2
ID = 7002
anim = 7002
pos = 3,0
postype = P1  ;p2,front,back,left,right
supermovetime = 0
pausemovetime = 0
scale = .6,.5
sprpriority = -2
ownpal = 1

[State 1303, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 2
statetype = C

[State 1303, VelMul]
type = VelMul
trigger1 = 1
x = .9

[State 1303, PosAdd]
type = PosAdd
trigger1 = !Time
x = 30

[State 1303, PosAdd]
type = PosAdd
trigger1 = AnimElem = 2
x = 17

[State 1303, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S52,0
channel = -1
lowpriority = 1

[State 1303, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;SONIC FLASH AFTERIMAGE
[StateDef 1304]
type = S
physics = N
movetype = I
anim = 1304
ctrl = 0
velset = 0,0
sprpriority = -1

[State 1304, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 1304, Trans]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256-(Time*16),Time*16

[State 1304, DestroySelf]
type = DestroySelf
trigger1 = Time >= 16

;-------------------------------------------------------------------------------------------------------------------------------------------
;EX SONIC FLASH
[StateDef 1310]
type = C
physics = N
movetype = A
anim = 1310
ctrl = 0
velset = 0,0
poweradd = -500
juggle = 100
sprpriority = 1
facep2 = 1

[State 1310, VarSet]
type = VarSet
trigger1 = !Time
var(5) = 3

[State 1310, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(3) < 10
value = SCA

[State 1310, AfterImage]
type = AfterImage
trigger1 = !Time
time = 15
timegap = 1
framegap = 1
length = 8
palbright = 32,32,0
palcontrast = 128,128,128
paladd = -10,-10,-10
palmul = 1.1,1,.5
trans = Add
ignorehitpause = 1

[State 1310, PalFX]
type = PalFX
trigger1 = !Time
time = 15
add = 90,90,0
sinadd = 90,90,0,10
ignorehitpause = 1

[State 1310, Explod]
type = Explod
trigger1 = AnimElem = 1
ID = 7700
anim = 7700
postype = P1
pos = 15,-5
bindtime = 1
removetime = -2
sprpriority = 5
scale = .65,.65
ownpal = 1

[State 1310, Width]
type = Width
trigger1 = AnimElemTime(3) < 0
edge = 35,0
player = 35,0
[State 1310, Width]
type = Width
trigger1 = AnimElemTime(3) >= 0
edge = 60,0
player = 0,0

[State 1310, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(3) < 0
value = 1
ignorehitpause = 1
[State 1310, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(3) >= 0
value = 0
ignorehitpause = 1

[State 1310, Pause]
type = Pause
trigger1 = NumEnemy
trigger1 = EnemyNear,Alive
trigger1 = !NumHelper(7900)
trigger1 = !NumHelper(7925)
trigger1 = !NumHelper(7950)
trigger1 = AnimElemTime(3) < 0
time = 5
movetime = 0
pausebg = 1
ignorehitpause = 1

[State 1310, Helper]
type = Helper
trigger1 = !NumHelper(1320)
trigger1 = NumTarget(1310)
trigger1 = Target(1310),MoveType = H
trigger1 = Target(1310),StateType != L
trigger1 = MoveContact
trigger1 = !MoveGuarded
name = "SlowMotion"
ID = 1320
stateno = 1320
postype = P1    ;p2,front,back,left,right
ownpal = 1
size.shadowoffset = Target(1310),ID
pausemovetime = 900
supermovetime = 900
ignorehitpause = 1
persistent = 0

;[State 1310, Pause]
;type = Pause
;triggerall = Time%2 = 0
;triggerall = !NumHelper(7900)
;triggerall = !NumHelper(7925)
;triggerall = !NumHelper(7950)
;trigger1 = MoveContact
;trigger1 = !MoveGuarded
;trigger1 = NumTarget(1310)
;trigger1 = Target(1310),StateType != L
;trigger1 = Target(1310),Alive
;trigger1 = Target(1310),Life > (FVar(5)*80)
;time = 2
;movetime = 0
;pausebg = 1
;ignorehitpause = 1

[State 1310, Explod]
type = Explod
trigger1 = AnimElemTime(2) = 4
ID = 7030
anim = 7030
postype = P1
pos = 90,0
bindtime = 1
removetime = -2
sprpriority = 4
scale = 1.2,1.2
ownpal = 1

;[State 1310, Explod]
;type = Explod
;trigger1 = AnimElemTime(2) = 4
;ID = 7009
;anim = 7009
;postype = P1
;pos = 20,0
;bindtime = 1
;removetime = -2
;sprpriority = 4
;scale = .15,.15
;ownpal = 1

[State 1310, Explod]
type = Explod
trigger1 = AnimElem = 3
ID = 6090
anim = 6090
pos = 0,10
postype = P1
bindtime = 1
removetime = -2
scale = .25,.25
sprpriority = 4
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[State 1310, Explod]
type = Explod
trigger1 = !NumExplod(6721)
trigger1 = AnimElem = 3
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
scale = 3,.5
sprpriority = 3
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1310, Helper]
type = Helper
trigger1 = AnimElemTime(2) = 5
name = "Afterimage"
ID = 1304
stateno = 1304
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 900
supermovetime = 900

[State 1310, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(1310)
trigger1 = !NumExplod(1310)
trigger1 = Target(1310),StateType != L
ID = 1310
anim = 8100+Random%32
pos = Ceil(P2Dist X),-60-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 1310, HitDef]
type = HitDef
trigger1 = !NumTarget(1310)
trigger1 = Time = [4,6]
attr = S,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium
air.animtype = Medium        ;light,medium,hard,back,up,diagup
fall.animtype = Up
priority = 8,Hit
damage = Ceil(FVar(5)*80),1
pausetime = 5,0
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-55
hitsound = S214,0+(Random%5)
guardsound = S200,2
ground.type = High      ;Low,Trip,None
air.type = High
ground.slidetime = 20
ground.hittime = 120
guard.hittime = 20
guard.ctrltime = 20
yaccel = .5
ground.velocity = 0
air.velocity = 0,-12
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 0
fall.recover = 0
air.fall = 1
p2facing = 1
getpower = 0
givepower = 0,10
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 1310
persistent = 0

[State 1310, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 3
statetype = A

[State 1310, StateTypeSet]
type = StateTypeSet
trigger1 = Time > 8
movetype = I

[State 1310, TargetBind]
type = TargetBind
trigger1 = MoveContact = 1
trigger1 = NumTarget(1310) && NumEnemy
trigger1 = (Target(1310),Time = 0) && (Target(1310),ID = EnemyNear,ID)
trigger1 = !(Target(1310),HitShakeOver) && (Target(1310),Pos Y > 0)
pos = Ceil(P2Dist X),Ceil(-Pos Y)
time = 1
ignoreHitPause = 1

[State 1310, TargetState]
type = TargetState
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(1310)
trigger1 = Target(1310),MoveType = H
trigger1 = Target(1310),StateType != A
trigger1 = Target(1310),Alive
value = 2000
ID = 1310
ignorehitpause = 1
persistent = 0
[State 1310, TargetState]
type = TargetState
triggerall = MoveContact
triggerall = !MoveGuarded
triggerall = NumTarget(1310)
triggerall = Target(1310),MoveType = H
trigger1 = Target(1310),StateType = A
trigger2 = !(Target(1310),Alive)
value = 2001
ID = 1310
ignorehitpause = 1
persistent = 0

[State 1310, PosAdd]
type = PosAdd
trigger1 = AnimElem = 3 
x = 200

[State 1310, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) = 1
x = 12

[State 1310, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1300,0
channel = 0

[State 1310, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1100,1
channel = -1
[State 1310, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1100,1
channel = -1
[State 1310, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1100,1
channel = -1

[State 1310, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S100,7
channel = -1

[State 1310, ChangeState]
type = ChangeState
trigger1 = Time = 14
value = 1303
ctrl = 0

;--------------------------------------------------------------------------------------------------------------------------------------------
;SONIC FLASH SLOW MOTION
[StateDef 1320]
type = A
physics = N
movetype = I
anim = 9999
ctrl = 0
velset = 0,0

[State 1320, VarSet]
type = VarSet
trigger1 = PlayerIDExist(Const(Size.ShadowOffset))
trigger1 = !Time
var(1) = Const(Size.ShadowOffset)

[State 1320, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 1320, Pause]
type = Pause
trigger1 = !Root,NumHelper(7900)
trigger1 = !Root,NumHelper(7925)
trigger1 = !Root,NumHelper(7950)
trigger1 = PlayerID(Var(1)),Life > 0
trigger1 = Time%2 = 0
time = 2
movetime = 0
pausebg = 1

[State 1320, DestroySelf]
type = DestroySelf
trigger1 = Time >= 12
trigger2 = Root,MoveType = H
trigger3 = Root,StateNo != [1300,1310]
trigger4 = !PlayerIDExist(Var(1))
trigger5 = Root,NumHelper(7900)
trigger6 = Root,NumHelper(7925)
trigger7 = Root,NumHelper(7950)
trigger8 = PlayerID(Var(1)),Life <= 0

;-------------------------------------------------------------------------------------------------------------------------------------------
;MOONSAULT SLASH
[StateDef 1400]
type = S
physics = S
movetype = A
ctrl = 0
velset = 0,0
poweradd = 80*Var(3)
juggle = 100
sprpriority = 1
facep2 = 1

[State 1400, VarSet]
type = VarSet
trigger1 = !AILevel
trigger1 = !Time
var(5) = Cond(NumExplod(90000250) || NumExplod(90000255),2,Cond(NumExplod(90000240) || NumExplod(90000245),1,0))

[State 1400, VarSet]
type = VarSet
triggerall = AILevel
triggerall = !Time
trigger1 = NumTarget(210)
trigger2 = NumTarget(410)
var(5) = 1

[State 1400, VarSet]
type = VarSet
trigger1 = AILevel
trigger1 = NumEnemy
trigger1 = !NumTarget(241)
trigger1 = P2BodyDist X = [0,30]
trigger1 = !Time
var(5) = 0
[State 1400, VarSet]
type = VarSet
trigger1 = AILevel
trigger1 = NumEnemy
trigger1 = !NumTarget(241)
trigger1 = P2BodyDist X = [31,60]
trigger1 = !Time
var(5) = 1
[State 1400, VarSet]
type = VarSet
trigger1 = AILevel
trigger1 = NumEnemy
trigger1 = !NumTarget(241)
trigger1 = P2BodyDist X >= 61
trigger1 = !Time
var(5) = 2

[State 1400, VarSet]
type = VarSet
trigger1 = AILevel
trigger1 = NumTarget(241)
trigger1 = !Time
var(5) = 2

[State 1400, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = Cond(Var(5) = 2,1402,Cond(Var(5) = 1,1401,1400))

[State 1400, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(7) < 0
value = SCA

[State 1400, Width]
type = Width
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
edge = 20,0
player = 20,0
[State 1400, Width]
type = Width
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
edge = 30,0
player = 30,0
[State 1400, Width]
type = Width
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(10) < 0
edge = 40,0
player = 40,0
[State 1400, Width]
type = Width
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(12) < 0
edge = 50,0
player = 50,0

[State 1400, Explod]
type = Explod
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
ID = 7001
anim = 7001
pos = -40,0
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

[State 1400, Explod]
type = Explod
trigger1 = AnimElem = 2
ID = 7009
anim = 7009
pos = 0,0
postype = P1  ;p2,front,back,left,right
facing = 1
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .1,.05
sprpriority = 4
ownpal = 1
ignorehitpause = 1

;[State 1400, Explod]
;type = Explod
;trigger1 = AnimElem = 10
;ID = 6100
;anim = 6100
;postype = P1  ;p2,front,back,left,right
;pos = 25,-55
;bindtime = 1
;supermovetime = 0
;pausemovetime = 0
;scale = .35,.35
;sprpriority = 4
;ownpal = 1
;ignorehitpause = 0
;persistent = 0

[State 1400, Explod]
type = Explod
trigger1 = AnimElemTime(9) = 2
ID = 6045
anim = 6045
postype = P1  ;p2,front,back,left,right
pos = 25,-55
vfacing = -1
bindtime = 1
supermovetime = 0
pausemovetime = 0
scale = .35,.35
sprpriority = 4
ownpal = 1
ignorehitpause = 0
persistent = 0

[State 1400, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(1400)
trigger1 = !NumExplod(1400)
trigger1 = Target(1400),StateType != L
ID = 1400
anim = 8010+Random%3
pos = 10+Ceil(P2Dist X/3),-70-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 1400, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(1401)
trigger1 = !NumExplod(1401)
trigger1 = Target(1401),StateType != L
ID = 1401
anim = 8100+Random%32
pos = 60+Ceil(P2Dist X/3),-45-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 1400, HitDef]
type = HitDef
triggerall = !Var(5)
triggerall = !NumTarget(1400)
trigger1 = AnimElemTime(4) < 0
attr = A,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium
air.animtype = Medium        ;light,medium,hard,back,up,diagup
fall.animtype = Up
priority = 8,Hit
damage = Ceil(FVar(5)*20),1
pausetime = 10,10
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-60
hitsound = S250,0
guardsound = S200,2
ground.type = High      ;Low,Trip,None
air.type = High
ground.slidetime = 10
ground.hittime = 20
guard.ctrltime = 15
yaccel = .5
ground.velocity = -1,-5
air.velocity = -1,-7
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
p2facing = 1
getpower = 45*Var(3),22*Var(3)
givepower = 0,10
envshake.time = 5
envshake.freq = 50
envshake.ampl = 2
hitonce = 1
ID = 1400
persistent = 0
[State 1400, HitDef]
type = HitDef
triggerall = Var(5) = 1
triggerall = !NumTarget(1400)
trigger1 = AnimElemTime(4) < 0
attr = A,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium
air.animtype = Medium        ;light,medium,hard,back,up,diagup
fall.animtype = Up
priority = 8,Hit
damage = Ceil(FVar(5)*30),1
pausetime = 10,10
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-60
hitsound = S250,0
guardsound = S200,2
ground.type = High      ;Low,Trip,None
air.type = High
ground.slidetime = 10
ground.hittime = 20
guard.ctrltime = 15
yaccel = .5
ground.velocity = -1,-5
air.velocity = -1,-7
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
p2facing = 1
getpower = 45*Var(3),22*Var(3)
givepower = 0,10
envshake.time = 5
envshake.freq = 50
envshake.ampl = 2
hitonce = 1
ID = 1400
persistent = 0
[State 1400, HitDef]
type = HitDef
triggerall = Var(5) = 2
triggerall = !NumTarget(1400)
trigger1 = AnimElemTime(4) < 0
attr = A,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium
air.animtype = Medium        ;light,medium,hard,back,up,diagup
fall.animtype = Up
priority = 8,Hit
damage = Ceil(FVar(5)*40),1
pausetime = 10,10
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-60
hitsound = S250,0
guardsound = S200,2
ground.type = High      ;Low,Trip,None
air.type = High
ground.slidetime = 10
ground.hittime = 20
guard.ctrltime = 15
yaccel = .5
ground.velocity = -1,-5
air.velocity = -1,-7
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
p2facing = 1
getpower = 45*Var(3),22*Var(3)
givepower = 0,10
envshake.time = 5
envshake.freq = 50
envshake.ampl = 2
hitonce = 1
ID = 1400
persistent = 0

[State 1400, HitDef]
type = HitDef
trigger1 = AnimElem = 11
attr = A,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = H         ;HLA
animtype = Hard
air.animtype = Medium        ;light,medium,hard,back,up,diagup
fall.animtype = Medium        ;light,medium,hard,back,up,diagup
priority = 8,Hit
damage = Ceil(FVar(5)*60),1
pausetime = 16,16
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-60
hitsound = S214,0+(Random%5)
guardsound = S200,2
ground.type = Low      ;Low,Trip,None
air.type = Low
ground.slidetime = 10
ground.hittime = 25
guard.ctrltime = Cond(Var(5) = 2,15,Cond(Var(5) = 1,12,9))
yaccel = .5
ground.velocity = Cond(Var(5) = 2,-10,Cond(Var(5) = 1,-8,-6))
air.velocity = -1,10
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 0
fall.recover = 0
air.fall = 1
p2facing = 1
getpower = 45*Var(3),22*Var(3)
givepower = 0,10
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 1401
persistent = 0

[State 1400, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(3) = 0
statetype = A       ;S,A,C,L
physics = N         ;A,C,S,N

[State 1400, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(14) >= 0
movetype = I       ;S,A,C,L

[State 1400, VelSet]
type = VelSet
trigger1 = !Var(5)
trigger1 = AnimElemTime(3) = 0
x = 25
y = -20
[State 1400, VelSet]
type = VelSet
trigger1 = Var(5) = 1
trigger1 = AnimElemTime(3) = 0
x = 35
y = -20
[State 1400, VelSet]
type = VelSet
trigger1 = Var(5) = 2
trigger1 = AnimElemTime(3) = 0
x = 45
y = -20

[State 1400, VelMul]
type = VelMul
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(8) < 0
x = .7
y = .7

[State 1400, VelSet]
type = VelSet
trigger1 = AnimElemTime(8) = 0
y = 0

[State 1400, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(9) >= 0
y = .5

[State 1400, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S40,1
channel = -1

[State 1400, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1100,1
channel = -1
[State 1400, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S212,0+(Random%2)
channel = -1

[State 1400, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 10
value = S1100,2
channel = -1

[State 1400, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 9
value = S1400,2
channel = 0

[State 1400, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
trigger1 = AnimElemTime(4) >= 0
value = 1403

;-------------------------------------------------------------------------------------------------------------------------------------------
;MOONSAULT SLASH - LANDING
[StateDef 1403]
type = S
physics = S
movetype = I
ctrl = 0
anim = 1403
velset = 0,0
sprpriority = 1

[State 1403, VarSet]
type = VarSet
trigger1 = !Time
var(5) = 0

[State 1403, Turn]
type = Turn
trigger1 = P2Dist X < 0
trigger1 = !AnimTime

[State 1403, Explod]
type = Explod
trigger1 = !Time
ID = 7002
anim = 7002
pos = 3,0
postype = P1  ;p2,front,back,left,right
supermovetime = 0
pausemovetime = 0
scale = .6,.5
sprpriority = -5
ownpal = 1

[State 1403, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S52,0
channel = -1
lowpriority = 1

[State 1403, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1403, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-------------------------------------------------------------------------------------------------------------------------------------------
;EX MOONSAULT SLASH
[StateDef 1410]
type = S
physics = S
movetype = A
anim = 1410
ctrl = 0
velset = 0,0
poweradd = -500
juggle = 100
sprpriority = 1
facep2 = 1

[State 1410, VarSet]
type = VarSet
trigger1 = !Time
var(5) = 3

[State 1410, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(13) < 0
value = SCA

[State 1410, Width]
type = Width
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
edge = 20,0
player = 20,0
[State 1410, Width]
type = Width
trigger1 = AnimElemTime(8) >= 0 && AnimElemTime(9) < 0
edge = 30,0
player = 30,0
[State 1410, Width]
type = Width
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(10) < 0
edge = 40,0
player = 40,0
[State 1410, Width]
type = Width
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(12) < 0
edge = 50,0
player = 50,0

[State 1410, AfterImage]
type = AfterImage
trigger1 = !Time
time = 15
timegap = 1
framegap = 1
length = 8
palbright = 32,32,0
palcontrast = 128,128,128
paladd = -10,-10,-10
palmul = 1.1,1,.5
trans = Add
ignorehitpause = 1

[State 1410, PalFX]
type = PalFX
trigger1 = !Time
time = 15
add = 90,90,0
sinadd = 90,90,0,10
ignorehitpause = 1

[State 1410, Explod]
type = Explod
trigger1 = !Time
ID = 7700
anim = 7700
pos = -50,-15
postype = P1
bindtime = 1
removetime = -2
sprpriority = 5
scale = .65,.65
ownpal = 1
ignorehitpause = 1

[State 1410, Explod]
type = Explod
trigger1 = AnimElem = 3
trigger2 = AnimElem = 4
ID = 7001
anim = 7001
pos = -40,0
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

[State 1410, Explod]
type = Explod
trigger1 = AnimElem = 2
ID = 7009
anim = 7009
pos = 0,0
postype = P1  ;p2,front,back,left,right
facing = 1
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .1,.05
sprpriority = 4
ownpal = 1
ignorehitpause = 1

;[State 1410, Explod]
;type = Explod
;trigger1 = AnimElem = 10
;ID = 6100
;anim = 6100
;postype = P1  ;p2,front,back,left,right
;pos = 25,-55
;bindtime = 1
;supermovetime = 0
;pausemovetime = 0
;scale = .35,.35
;sprpriority = 4
;ownpal = 1
;ignorehitpause = 0
;persistent = 0

[State 1410, Explod]
type = Explod
trigger1 = AnimElemTime(9) = 2
ID = 6045
anim = 6045
postype = P1  ;p2,front,back,left,right
pos = 25,-55
vfacing = -1
bindtime = 1
supermovetime = 0
pausemovetime = 0
scale = .35,.35
sprpriority = 4
ownpal = 1
ignorehitpause = 0
persistent = 0

[State 1410, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(1410)
trigger1 = !NumExplod(1410)
trigger1 = Target(1410),StateType != L
ID = 1410
anim = 8010+Random%3
pos = 10+Ceil(P2Dist X/3),-70-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 1410, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(1411)
trigger1 = !NumExplod(1411)
trigger1 = Target(1411),StateType != L
ID = 1411
anim = 8100+Random%32
pos = 60+Ceil(P2Dist X/3),-30-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 1410, HitDef]
type = HitDef
trigger1 = !NumTarget(1410)
trigger1 = AnimElemTime(4) < 0
attr = A,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium
air.animtype = Medium        ;light,medium,hard,back,up,diagup
fall.animtype = Up
priority = 8,Hit
damage = Ceil(FVar(5)*40),1
pausetime = 10,10
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-60
hitsound = S250,0
guardsound = S200,2
ground.type = High      ;Low,Trip,None
air.type = High
ground.slidetime = 10
ground.hittime = 20
guard.ctrltime = 20
yaccel = .5
ground.velocity = -1,-7
air.velocity = -1,-9
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
p2facing = 1
getpower = 0
givepower = 0,10
envshake.time = 5
envshake.freq = 50
envshake.ampl = 2
hitonce = 1
ID = 1410
persistent = 0

[State 1410, HitDef]
type = HitDef
trigger1 = AnimElem = 11
attr = A,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = H         ;HLA
animtype = Hard
air.animtype = Medium        ;light,medium,hard,back,up,diagup
fall.animtype = Medium        ;light,medium,hard,back,up,diagup
priority = 8,Hit
damage = Ceil(FVar(5)*70),1
pausetime = 16,16
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-60
hitsound = S214,0+(Random%5)
guardsound = S200,2
ground.type = Low      ;Low,Trip,None
air.type = Low
ground.slidetime = 10
ground.hittime = 35
guard.ctrltime = 25
yaccel = .5
ground.velocity = -10
air.velocity = -1,10
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 0
fall.recover = 0
air.fall = 1
p2facing = 1
getpower = 0
givepower = 0,10
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 1411
persistent = 0

[State 1410, TargetState]
type = TargetState
trigger1 = NumTarget(1411)
trigger1 = Target(1411),StateNo != [1450,1451]
trigger1 = Target(1411),StateType = A
trigger1 = Target(1411),MoveType = H
trigger1 = AnimElemTime(11) > 0 && AnimElemTime(12) < 0
value = 1450
ID = 1411
persistent = 0

[State 1410, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(3) = 0
statetype = A       ;S,A,C,L
physics = N         ;A,C,S,N

[State 1410, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(16) >= 0;14
movetype = I       ;S,A,C,L

[State 1410, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) = 0
x = 45
y = -25

[State 1410, VelMul]
type = VelMul
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(8) < 0
x = .7
y = .7

[State 1410, VelSet]
type = VelSet
trigger1 = AnimElemTime(8) = 0
y = 0

[State 1410, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(9) >= 0
y = .5

[State 1410, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S100,7
channel = -1

[State 1410, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S40,1
channel = -1

[State 1410, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1100,1
channel = -1
[State 1410, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S212,0+(Random%2)
channel = -1

[State 1410, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 10
value = S1100,2
channel = -1

[State 1410, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 9
value = S1400,2
channel = 0

[State 1410, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
trigger1 = AnimElemTime(14) >= 0;4
value = 1403

;--------------------------------------------------------------------------------------------------------------------------------------------
;EX MOONSAULT SLASH TARGET 1
[StateDef 1450]
type = A
movetype = H
physics = N
ctrl = 0
sprpriority = -1

[State 1450, VelSet]
type = VelSet
trigger1 = HitShakeOver
x = GetHitVar(XVel)*Facing
y = GetHitVar(YVel)
persistent = 0

[State 1450, VelAdd]
type = VelAdd
trigger1 = HitShakeOver
y = .5

[State 1450, ChangeState]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= -1
value = 1451

;--------------------------------------------------------------------------------------------------------------------------------------------
;EX MOONSAULT SLASH TARGET 2
[StateDef 1451]
type = L
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = -1

[State 1451, EnvShake]
type = EnvShake
trigger1 = !Time
time = 10

[State 1451, VelMul]
type = VelMul
trigger1 = 1
x = .9

[State 1451, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 1451, PosFreeze]
type = PosFreeze
trigger1 = 1

[State 1451, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1451

[State 1451, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1451, ChangeState]
type = ChangeState
trigger1 = Anim = 1451 && AnimElem = 2
value = 1452
ctrl = 0

;--------------------------------------------------------------------------------------------------------------------------------------------
;EX MOONSAULT SLASH TARGET 3
[StateDef 1452]
type = A
movetype = H
physics = N

[State 1452, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5160

[State 1452, VelSet]
type = VelSet
trigger1 = !Time
x = 0
y = -8

[State 1452, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 1452, VelAdd]
type = VelAdd
trigger1 = 1
y = .5

[State 1452, SelfState]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 12
value = 5110

;-------------------------------------------------------------------------------------------------------------------------------------------
;BUSTER BLADE
[StateDef 1500]
type = A
physics = N
movetype = A
anim = 1500
ctrl = 0
poweradd = 80*Var(3)
sprpriority = 1

[State 1500, VarSet]
type = VarSet
trigger1 = !AILevel
trigger1 = !Time
var(5) = Cond(NumExplod(90000250) || NumExplod(90000255),2,Cond(NumExplod(90000240) || NumExplod(90000245),1,0))

[State 1500, VarSet]
type = VarSet
trigger1 = AILevel
trigger1 = !Time
var(5) = 0+Random%3

[State 1500, Width]
type = Width
trigger1 = AnimElemTime(2) < 0
edge = 20,0
player = 20,0
[State 1500, Width]
type = Width
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
edge = 30,0
player = 30,0
[State 1500, Width]
type = Width
trigger1 = AnimElemTime(3) >= 0
edge = 50,0
player = 50,0

[State 1500, Explod]
type = Explod
trigger1 = !Time
ID = 6015
anim = 6015
postype = P1  ;p2,front,back,left,right
pos = -17,-10
bindtime = -1
removetime = 100
removeongethit = 1
supermovetime = 900
pausemovetime = 900
scale = .24,.24
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 1500, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 2
ID = 6015
ignorehitpause = 1

[State 1500, Explod]
type = Explod
trigger1 = AnimElemTime(3) = 3
ID = 6110
anim = 6110
postype = P1  ;p2,front,back,left,right
pos = 15,-55
bindtime = -1
supermovetime = 0
pausemovetime = 0
scale = .4,.4
sprpriority = 4
ownpal = 1
ignorehitpause = 0
persistent = 0

;[State 1500, Explod]
;type = Explod
;trigger1 = AnimElem = 3
;ID = 6100
;anim = 6100
;postype = P1  ;p2,front,back,left,right
;pos = 0,-55
;bindtime = 1
;supermovetime = 0
;pausemovetime = 0
;scale = .35,.35
;sprpriority = 4
;ownpal = 1
;ignorehitpause = 0
;persistent = 0

[State 1500, Helper]
type = Helper
trigger1 = AnimElem = 4
name = "Buster"
ID = 6060
stateno = 6060
pos = 40,-55
postype = P1    ;p2,front,back,left,right
ownpal = 1
size.shadowoffset = Var(5)
pausemovetime = 0
supermovetime = 0

[State 1500, VelSet]
type = VelSet
trigger1 = !Time
x = Vel X/10
y = Vel Y/10
;
[State 1500, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(7) >= 0
y = .5

[State 1500, CtrlSet]
type = CtrlSet
trigger1 = AnimElem = 9
value = 1

[State 1500, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S1500,0
channel = 0

[State 1500, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = S1000,2
channel = -1

[State 1500, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 52

;-------------------------------------------------------------------------------------------------------------------------------------------
;EX BUSTER BLADE
[StateDef 1510]
type = A
physics = N
movetype = A
ctrl = 0
poweradd = -500
sprpriority = 1

[State 1510, VarSet]
type = VarSet
trigger1 = !Time
var(5) = 3

[State 1510, VarSet]
type = VarSet
trigger1 = !AILevel
trigger1 = !Time
var(4) = Cond(NumExplod(90000250) && NumExplod(90000240),2,Cond(NumExplod(90000250) && NumExplod(90000230),1,0))

[State 1510, VarSet]
type = VarSet
trigger1 = AILevel
trigger1 = NumEnemy
trigger1 = !Time
var(4) = 1

[State 1510, VarSet]
type = VarSet
trigger1 = AILevel
trigger1 = NumEnemy
trigger1 = P2Dist X > 40
trigger1 = Pos Y >= -50
trigger1 = EnemyNear,MoveType != H
trigger1 = !Time
var(4) = 0

[State 1510, VarSet]
type = VarSet
trigger1 = AILevel
trigger1 = NumEnemy
trigger1 = EnemyNear,Pos Y >= 0
trigger1 = !Time
var(4) = 2

;[State 1510, VarSet]
;type = VarSet
;triggerall = AILevel
;triggerall = NumEnemy
;triggerall = !Time
;trigger1 = EnemyNear,Pos Y < Ceil(1.5*Pos Y) && EnemyNear,Pos Y > Ceil(1.7*Pos Y)
;var(4) = 0
;[State 1510, VarSet]
;type = VarSet
;triggerall = AILevel
;triggerall = NumEnemy
;triggerall = !Time
;trigger1 = Abs(P2BodyDist Y) = 60
;var(4) = 1
;[State 1510, VarSet]
;type = VarSet
;triggerall = AILevel
;triggerall = NumEnemy
;triggerall = !Time
;trigger1 = EnemyNear,StateType != A
;trigger1 = EnemyNear,Pos Y > Ceil(Pos Y/2)
;var(4) = 2

[State 1510, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = Cond(Var(4) >= 2,1512,Cond(Var(4) = 1,1511,1510))

[State 1510, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(6) < 0
value = SCA

[State 1510, Width]
type = Width
trigger1 = AnimElemTime(2) < 0
edge = 20,0
player = 20,0
[State 1510, Width]
type = Width
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
edge = 30,0
player = 30,0
[State 1510, Width]
type = Width
trigger1 = AnimElemTime(3) >= 0
edge = 50,0
player = 50,0

[State 1510, AfterImage]
type = AfterImage
trigger1 = !Time
time = 15
timegap = 1
framegap = 1
length = 8
palbright = 32,32,0
palcontrast = 128,128,128
paladd = -10,-10,-10
palmul = 1.1,1,.5
trans = Add
ignorehitpause = 1

[State 1510, PalFX]
type = PalFX
trigger1 = !Time
time = 15
add = 90,90,0
sinadd = 90,90,0,10
ignorehitpause = 1

[State 1510, Explod]
type = Explod
trigger1 = !Time
ID = 7700
anim = 7700
pos = -15,-5
postype = P1
bindtime = 1
removetime = -2
sprpriority = 5
scale = .65,.65
ownpal = 1
ignorehitpause = 1

[State 1510, Explod]
type = Explod
trigger1 = Anim = [1510,1511]
trigger1 = !Time
ID = 6015
anim = 6015
postype = P1  ;p2,front,back,left,right
pos = -15,-5
bindtime = -1
removetime = 100
removeongethit = 1
supermovetime = 900
pausemovetime = 900
scale = .24,.24
sprpriority = 2
ownpal = 1
ignorehitpause = 1
[State 1510, Explod]
type = Explod
trigger1 = Anim = 1512
trigger1 = !Time
ID = 6015
anim = 6015
postype = P1  ;p2,front,back,left,right
pos = 10,-10
bindtime = -1
removetime = 100
removeongethit = 1
supermovetime = 900
pausemovetime = 900
scale = .24,.24
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 1510, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 2
ID = 6015
ignorehitpause = 1

[State 1510, Explod]
type = Explod
trigger1 = Var(4) < 2 && AnimElemTime(3) = 2
ID = 6110
anim = 6110
postype = P1  ;p2,front,back,left,right
pos = 15,-55
bindtime = -1
supermovetime = 0
pausemovetime = 0
scale = .4,.4
sprpriority = 4
ownpal = 1
ignorehitpause = 0
persistent = 0

[State 1510, Explod]
type = Explod
trigger1 = Var(4) = 2 && AnimElemTime(5) = 1
ID = 6111
anim = 6111
postype = P1  ;p2,front,back,left,right
facing = -1
pos = 15,-75
bindtime = -1
supermovetime = 0
pausemovetime = 0
scale = .4,.4
sprpriority = 4
ownpal = 1
ignorehitpause = 0
persistent = 0

[State 1510, Helper]
type = Helper
trigger1 = Var(4) < 2
trigger1 = AnimElem = 4
name = "Buster"
ID = 6065
stateno = 6065
pos = Cond(Var(4) = 1,40,45),Cond(Var(4) = 1,-40,-80)
postype = P1    ;p2,front,back,left,right
ownpal = 1
size.shadowoffset = Var(4)
pausemovetime = 0
supermovetime = 0
[State 1510, Helper]
type = Helper
trigger1 = Var(4) = 2
trigger1 = AnimElemTime(6) = 2
name = "Buster"
ID = 6065
stateno = 6065
pos = 20,-15
postype = P1    ;p2,front,back,left,right
ownpal = 1
size.shadowoffset = Var(4)
pausemovetime = 0
supermovetime = 0

[State 1510, VelSet]
type = VelSet
trigger1 = !Time
x = Vel X/10
y = Vel Y/10
;
[State 1510, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(7) >= 0
y = .5

[State 1510, CtrlSet]
type = CtrlSet
trigger1 = AnimElem = 9
value = 1

[State 1510, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S100,7
channel = -1

[State 1510, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S1500,0
channel = 0

[State 1510, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = S1000,2
channel = -1

[State 1510, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 52

;-------------------------------------------------------------------------------------------------------------------------------------------
;TEMPEST CUTTER - ATTEMPT
[StateDef 1600]
type = A
physics = N
movetype = A
anim = 1600
velset = Vel X/1.3,Vel Y/2
ctrl = 0
poweradd = 80*Var(3)
facep2 = 1
sprpriority = 1

[State 1600, VarSet]
type = VarSet
trigger1 = !AILevel
trigger1 = !Time
var(5) = Cond(NumExplod(90000220) || NumExplod(90000225),2,Cond(NumExplod(90000210) || NumExplod(90000215),1,0))

;[State 1600, VarSet]
;type = VarSet
;trigger1 = AILevel
;trigger1 = !Time
;var(5) = 0+Random%3

[State 1600, VarSet]
type = VarSet
trigger1 = AILevel
trigger1 = RoundState != 2
trigger1 = !Time
var(5) = 2

[State 1600, VarSet]
type = VarSet
trigger1 = AILevel
trigger1 = FrontEdgeDist > 90
trigger1 = RoundState = 2
trigger1 = !Time
var(5) = Cond(Random < 500,0,2)

[State 1600, VarSet]
type = VarSet
trigger1 = AILevel
trigger1 = FrontEdgeDist <= 90
trigger1 = RoundState = 2
trigger1 = !Time
var(5) = 1

[State 1600, HitDef]
type = HitDef
trigger1 = NumEnemy
trigger1 = EnemyNear,Pos Y < 0
attr = A,ST        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
priority = 10,Hit
hitsound = S800,0
yaccel = .5
p1facing = 1
p2facing = -1
guard.dist = 0
numhits = 0
getpower = 0
givepower = 0
hitonce = 1
ID = 1600

[State 1600, TargetState]
type = TargetState
trigger1 = NumTarget(1600)
trigger1 = Target(1600),StateType != L
value = 1611
ID = 1600
ignorehitpause = 1
persistent = 0

[State 1600, ChangeState]
type = ChangeState
trigger1 = NumTarget(1600)
trigger1 = Target(1600),StateType != L
value = 1610
ignorehitpause = 1
persistent = 0

[State 1600, VelAdd]
type = VelAdd
trigger1 = !Time && Vel X < 5 && P2Dist X <= 75
x = 5

[State 1600, VelAdd]
type = VelAdd
trigger1 = !Time && Vel Y < -2 && P2Dist Y >= 0
y = 2

[State 1600, VelMul]
type = VelMul
trigger1 = AnimElemTime(2) > 1
x = .9

[State 1600, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) >= 0
y = .5

[State 1600, CtrlSet]
type = CtrlSet
trigger1 = AnimElem = 5
value = 1

[State 1600, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S800,2+Random%2
channel = 0

[State 1600, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 52

;-------------------------------------------------------------------------------------------------------------------------------------------
;TEMPEST CUTTER
[StateDef 1610]
type = A
physics = N
movetype = A
velset = 0,0
anim = 1610
ctrl = 0
sprpriority = 1

[State 1610, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(12) < 0
flag = Invisible

[State 1610, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1610, Explod]
type = Explod
trigger1 = AnimElemTime(1) = 8
ID = 7015
anim = 7015
pos = 0,-50
postype = P1
bindtime = -1
removetime = -1
scale = .6,.6
sprpriority = 2
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
[State 1610, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 12
ID = 7015
ignorehitpause = 1
[State 1610, Explod]
type = Explod
trigger1 = AnimElemTime(12) = 0
ID = 7016
anim = 7016
pos = 0,-50
postype = P1
bindtime = 1
removetime = -2
scale = .6,.6
sprpriority = 2
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[State 1610, Explod]
type = Explod
trigger1 = AnimElemTime(1) = 8
ID = 7017
anim = 7017
pos = 0,-10
postype = P1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 3
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
[State 1610, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 12
ID = 7017
ignorehitpause = 1
[State 1610, Explod]
type = Explod
trigger1 = AnimElemTime(12) = 0
ID = 7018
anim = 7018
pos = 0,-10
postype = P1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 3
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[State 1610, Explod]
type = Explod
trigger1 = NumTarget(1600)
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(12) < 0
trigger1 = Time%5 = 0
ID = 1
anim = 8100+Random%32
pos = Ceil(P2Dist X),-70-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[State 1610, TargetBind]
type = TargetBind
trigger1 = NumTarget(1600)
trigger1 = AnimElemTime(1) = 0
time = 12
pos = 40,0
ID = 1600
[State 1610, TargetBind]
type = TargetBind
trigger1 = NumTarget(1600)
trigger1 = AnimElem = 2
time = -1
pos = -15,-10
ID = 1600
[State 1610, TargetBind]
type = TargetBind
trigger1 = NumTarget(1600)
trigger1 = AnimElem = 3
time = -1
pos = -20,-10
ID = 1600
[State 1610, TargetBind]
type = TargetBind
trigger1 = NumTarget(1600)
trigger1 = AnimElem = 4
time = -1
pos = -15,-10
ID = 1600
[State 1610, TargetBind]
type = TargetBind
trigger1 = NumTarget(1600)
trigger1 = AnimElem = 5
time = -1
pos = 20,-10
ID = 1600
[State 1610, TargetBind]
type = TargetBind
trigger1 = NumTarget(1600)
trigger1 = AnimElem = 6
time = -1
pos = -10,-10
ID = 1600
[State 1610, TargetBind]
type = TargetBind
trigger1 = NumTarget(1600)
trigger1 = AnimElem = 7
time = -1
pos = -10,-10
ID = 1600
[State 1610, TargetBind]
type = TargetBind
trigger1 = NumTarget(1600)
trigger1 = AnimElem = 8
time = -1
pos = 0,-10
ID = 1600
[State 1610, TargetBind]
type = TargetBind
trigger1 = NumTarget(1600)
trigger1 = AnimElem = 9
time = -1
pos = 5,-10
ID = 1600
[State 1610, TargetBind]
type = TargetBind
trigger1 = NumTarget(1600)
trigger1 = AnimElem = 10
time = -1
pos = -10,-10
ID = 1600
[State 1610, TargetBind]
type = TargetBind
trigger1 = NumTarget(1600)
trigger1 = AnimElem = 11
time = -1
pos = 0,-10
ID = 1600
[State 1610, TargetBind]
type = TargetBind
trigger1 = Var(5) != 1
trigger1 = NumTarget(1600)
trigger1 = AnimElem = 12
time = 2
pos = 5,-10
ID = 1600
[State 1610, TargetBind]
type = TargetBind
trigger1 = Var(5) = 1
trigger1 = NumTarget(1600)
trigger1 = AnimElem = 12
time = 1
pos = 5,-10
ID = 1600

[State 1610, TargetBind]
type = TargetBind
trigger1 = Var(5) != 1
trigger1 = NumTarget(1600)
trigger1 = AnimElem = 13
time = 1
pos = 0,-15
ID = 1600

[State 3103, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = NumTarget(1600)
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(12) < 0
trigger1 = Time%5 = 0
value = -Ceil(FVar(5)*10)
ID = 1600
kill = 0
absolute = 1

[State 1610, HitAdd]
type = HitAdd
trigger1 = NumTarget(1600)
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(12) < 0
trigger1 = Time%5 = 0
value = 1

[State 1610, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 0

[State 1610, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 0
y = -2

[State 1610, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(13) >= 0
y = .5

[State 1610, CtrlSet]
type = CtrlSet
trigger1 = AnimElem = 15
value = 1

[State 1610, TargetState]
type = TargetState
trigger1 = !Var(5)
trigger1 = NumTarget(1600)
trigger1 = AnimElem = 13
value = 1621
ID = 1600
ignorehitpause = 1
persistent = 0
[State 1610, ChangeState]
type = ChangeState
trigger1 = !Var(5)
trigger1 = NumTarget(1600)
trigger1 = AnimElem = 13
value = 1620
ignorehitpause = 1
persistent = 0

[State 1610, TargetState]
type = TargetState
trigger1 = Var(5) = 1
trigger1 = NumTarget(1600)
trigger1 = AnimElem = 13
value = 1632
ID = 1600
ignorehitpause = 1
persistent = 0
[State 1610, ChangeState]
type = ChangeState
trigger1 = Var(5) = 1
trigger1 = NumTarget(1600)
trigger1 = AnimElem = 13
value = 1630
ignorehitpause = 1
persistent = 0

[State 1610, TargetState]
type = TargetState
trigger1 = Var(5) = 2
trigger1 = NumTarget(1600)
trigger1 = AnimElemTime(12) = 1
value = 1642
ID = 1600
ignorehitpause = 1
persistent = 0
[State 1610, ChangeState]
type = ChangeState
trigger1 = Var(5) = 2
trigger1 = NumTarget(1600)
trigger1 = AnimElemTime(12) = 1
value = 1640
ignorehitpause = 1
persistent = 0

[State 1610, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S1600,0
channel = 0

[State 1610, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S1000,2
channel = -1
[State 1610, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S1610,0
channel = -1

[State 1610, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(1600)
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(12) < 0
trigger1 = Time%5 = 0
value = S214,0+(Random%5)
channel = -1

[State 1610, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 52

;--------------------------------------------------------------------------------------------------------------------------------------------
;TEMPEST CUTTER - TARGET 1
[StateDef 1611]
type = A
movetype = H
physics = N
velset = 0,0

[State 1611, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1611

[State 1611, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1611, SprPriority]
type = SprPriority
trigger1 = AnimElem = 1
value = 0
[State 1611, SprPriority]
type = SprPriority
trigger1 = AnimElem = 4
value = 2
[State 1611, SprPriority]
type = SprPriority
trigger1 = AnimElem = 5
value = 0
[State 1611, SprPriority]
type = SprPriority
trigger1 = AnimElem = 8
value = 2
[State 1611, SprPriority]
type = SprPriority
trigger1 = AnimElem = 10
value = 0
[State 1611, SprPriority]
type = SprPriority
trigger1 = AnimElem = 11
value = 2
[State 1611, SprPriority]
type = SprPriority
trigger1 = AnimElem = 13
value = 0

[State 1611, VelSet]
type = VelSet
trigger1 = AnimElem = 13
x = 2
y = -5

[State 1611, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(13) >= 0
y = .5

[State 1611, SelfState]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;-------------------------------------------------------------------------------------------------------------------------------------------
;FLYING MARE
[StateDef 1620]
type = A
physics = N
movetype = A
anim = 1620
ctrl = 0
sprpriority = 1

[State 1620, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 1630, Width]
type = Width
trigger1 = AnimElemTime(3) < 0
edge = 30,30
player = 0,0
[State 1630, Width]
type = Width
trigger1 = AnimElemTime(3) >= 0
edge = 50,50
player = 0,0

[State 1620, TargetBind]
type = TargetBind
trigger1 = NumTarget(1600)
trigger1 = AnimElem = 1
time = 1
pos = 28,-100
ID = 1600
[State 1620, TargetBind]
type = TargetBind
trigger1 = NumTarget(1600)
trigger1 = AnimElem = 2
time = 1
pos = -5,-100
ID = 1600
[State 1620, TargetBind]
type = TargetBind
trigger1 = NumTarget(1600)
trigger1 = AnimElemTime(3) = 0
time = 1
pos = -80,-25
ID = 1600

[State 1620, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) >= 0
y = .5

[State 1620, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S300,5
channel = 0

[State 1620, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = S250,1
channel = -1

[State 1620, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 52

;--------------------------------------------------------------------------------------------------------------------------------------------
;FLYING MARE - TARGET 1
[StateDef 1621]
type = A
movetype = H
physics = N
sprpriority = 0

[State 1621, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1621

[State 1621, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 1621, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(3) = 0
y = 30

[State 1621, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = -10
y = 10

[State 1621, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) >= 0
y = .5

[State 1621, ChangeState]
type = ChangeState
trigger1 = AnimElemTime(3) > 0
trigger1 = (Pos Y >= -30) && (Vel Y > 0)
value = 1622

;--------------------------------------------------------------------------------------------------------------------------------------------
;FLYING MARE - TARGET 2
[StateDef 1622]
type = L
movetype = H
physics = N
velset = Vel X,0
ctrl = 0
sprpriority = -1

[State 1622, EnvShake]
type = EnvShake
trigger1 = !Time
time = 20

[State 1622, VelMul]
type = VelMul
trigger1 = 1
x = .8

[State 1622, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 1622, PosFreeze]
type = PosFreeze
trigger1 = 1

[State 1622, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1622

[State 1622, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1622, ChangeState]
type = ChangeState
trigger1 = Anim = 1622 && AnimElem = 2
value = 1623
ctrl = 0

;--------------------------------------------------------------------------------------------------------------------------------------------
;FLYING MARE - TARGET 3
[StateDef 1623]
type = L
movetype = H
physics = N

[State 1623, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5160

[State 1623, Pause]
type = Pause
trigger1 = Life > 0
trigger1 = Time = [0,6]
trigger1 = Time%2 = 0
time = 3
movetime = 0
pausebg = 1
ignorehitpause = 1

[State 1623, VelSet]
type = VelSet
trigger1 = !Time
y = -7

[State 1623, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 1623, VelAdd]
type = VelAdd
trigger1 = 1
y = .6

[State 1623, SelfState]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 12
value = 5110

;-------------------------------------------------------------------------------------------------------------------------------------------
;AIR STAMPEDE
[StateDef 1630]
type = A
physics = N
movetype = A
anim = 1630
ctrl = 0
sprpriority = 1

[State 1630, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1

[State 1630, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 1630, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1630, Width]
type = Width
trigger1 = 1
edge = 10,0
player = 0,0

[State 1630, Pause]
type = Pause
trigger1 = NumTarget(1600)
trigger1 = Target(1600),MoveType = H
trigger1 = AnimElemTime(11) >= 0 && AnimElemTime(12) < 0
trigger1 = Time%2 = 0
time = 2
movetime = 0
pausebg = 1
ignorehitpause = 1

[State 1630, EnvShake]
type = EnvShake
trigger1 = NumTarget(1600)
trigger1 = Target(1600),MoveType = H
trigger1 = AnimElemTime(11) = 0
time = 20

[State 1630, Explod]
type = Explod
trigger1 = NumTarget(1600)
trigger1 = Target(1600),StateNo = 1632
trigger1 = AnimElemTime(10) = 0
ID = 1
anim = 8010+Random%3
pos = 0,-30
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[State 1630, TargetBind]
type = TargetBind
trigger1 = NumTarget(1600)
trigger1 = Target(1600),MoveType = H
trigger1 = AnimElemTime(11) = 0
time = 1
pos = 0,-50
ID = 1600
[State 1630, TargetBind]
type = TargetBind
trigger1 = NumTarget(1600)
trigger1 = Target(1600),MoveType = H
trigger1 = AnimElemTime(12) = 0
time = -1
pos = -5,-2
ID = 1600

[State 1630, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = NumTarget(1600)
trigger1 = Target(1600),MoveType = H
trigger1 = AnimElemTime(11) = 0
value = -Ceil(FVar(5)*20)
ID = 1600
kill = 0
absolute = 1

[State 1630, HitAdd]
type = HitAdd
trigger1 = NumTarget(1600)
trigger1 = Target(1600),MoveType = H
trigger1 = AnimElemTime(11) = 0
value = 1

[State 1630, VelSet]
type = VelSet
trigger1 = !Time
x = 2
y = 4*Vel Y

[State 1630, VelSet]
type = VelSet
trigger1 = AnimElem = 10
y = 15

[State 1630, VelSet]
type = VelSet
trigger1 = AnimElem = 11
x = Vel X/10
y = .5

[State 1630, VelSet]
type = VelSet
trigger1 = AnimElem = 12
x = 2
y = 20

[State 1630, VelAdd]
type = VelAdd
trigger1 = 1
y = .5

[State 1630, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
value = S240,1
channel = -1

[State 1630, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 10
value = S300,7
channel = 0

[State 1630, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 10
value = S250,1
channel = -1

[State 1630, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 11
value = S250,0
channel = -1

[State 1630, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= -10) && (Vel Y > 0)
value = 1631

;-------------------------------------------------------------------------------------------------------------------------------------------
;AIR STAMPEDE - LANDING
[StateDef 1631]
type = S
physics = S
movetype = A
ctrl = 0
anim = 1631
velset = 0,0
sprpriority = 1

[State 1631, EnvShake]
type = EnvShake
trigger1 = AnimElem = 1
time = 20

[State 1631, Explod]
type = Explod
trigger1 = NumTarget(1600)
trigger1 = !Time
ID = 1
anim = 8010+Random%3
pos = 0,0
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[State 1631, Explod]
type = Explod
trigger1 = !Time
ID = 7290
anim = 7290
pos = 0,0
postype = P2  ;p2,front,back,left,right
supermovetime = 0
pausemovetime = 0
bindtime = 1
scale = .6,.5
sprpriority = -2
ownpal = 1
[State 1631, Explod]
type = Explod
trigger1 = !Time
ID = 7291
anim = 7291
pos = 0,0
postype = P2  ;p2,front,back,left,right
supermovetime = 0
pausemovetime = 0
bindtime = 1
scale = .6,.5
sprpriority = -2
ownpal = 1

[State 1631, TargetBind]
type = TargetBind
trigger1 = NumTarget(1600)
trigger1 = !Time
time = 1
pos = -5,-2
ID = 1600

[State 1631, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = NumTarget(1600)
trigger1 = Target(1600),MoveType = H
trigger1 = AnimElem = 1
value = -Ceil(FVar(5)*100)
ID = 1600
kill = 1
absolute = 1
persistent = 0

[State 1631, HitAdd]
type = HitAdd
trigger1 = NumTarget(1600)
trigger1 = Target(1600),MoveType = H
trigger1 = !Time
value = 1
persistent = 0

[State 1631, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 4
statetype = C         ;A,C,S,N

[State 1631, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 6
statetype = S         ;A,C,S,N

[State 1631, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1631, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S820,0
channel = -1
lowpriority = 1

[State 1631, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S250,0
channel = -1

[State 1631, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 105
ctrl = 0

;--------------------------------------------------------------------------------------------------------------------------------------------
;AIR STAMPEDE - TARGET 1
[StateDef 1632]
type = A
movetype = H
physics = N
velset = 2,Vel Y
sprpriority = 0

[State 1632, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1632

[State 1632, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1632, Turn]
type = Turn
trigger1 = !Time

[State 1632, ScreenBound]
type = ScreenBound
trigger1 = AnimElemTime(3) < 0
value = 1
movecamera = 0,0
[State 1632, ScreenBound]
type = ScreenBound
trigger1 = AnimElemTime(3) >= 0
value = 0
movecamera = 0,0

[State 1632, SprPriority]
type = SprPriority
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
value = 2
[State 1632, SprPriority]
type = SprPriority
trigger1 = AnimElemTime(6) >= 0
value = 0

[State 1632, Width]
type = Width
trigger1 = 1
edge = 30,30
player = 0,0

[State 1632, AngleDraw]
type = AngleDraw
trigger1 = AnimElemTime(5) >= 0
value = 90
ignorehitpause = 1
persistent = 1

[State 1632, VelAdd]
type = VelAdd
trigger1 = 1
y = .5

[State 1632, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0)
value = 1633

;--------------------------------------------------------------------------------------------------------------------------------------------
;AIR STAMPEDE - TARGET 2
[StateDef 1633]
type = L
movetype = H
physics = N
velset = 0,0

[State 1633, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1633

;[State 1633, Pause]
;type = Pause
;trigger1 = Life > 0
;trigger1 = Time = [0,3]
;trigger1 = Time%2 = 0
;time = 1
;movetime = 0
;pausebg = 1
;ignorehitpause = 1

[State 1633, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(4) < 15
value = 0
[State 1633, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(4) >= 15
value = 1

[State 1633, AngleDraw]
type = AngleDraw
trigger1 = AnimElemTIme(3) < 0
value = 90
ignorehitpause = 1
persistent = 1

[State 1633, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1633, SelfState]
type = SelfState
trigger1 = AnimElemTime(4) >= 50
value = Cond(Alive,5120,5150)

;-------------------------------------------------------------------------------------------------------------------------------------------
;BUSTER DROP
[StateDef 1640]
type = A
physics = N
movetype = A
anim = 1640
ctrl = 0
sprpriority = 1

[State 1640, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1

[State 1640, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 1640, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1640, Width]
type = Width
trigger1 = 1
edge = 20,0
player = 0,0

[State 1640, TargetBind]
type = TargetBind
trigger1 = NumTarget(1600)
trigger1 = Target(1600),MoveType = H
trigger1 = AnimElemTime(1) = 0
time = 1
pos = 20,-106
ID = 1600
[State 1640, TargetBind]
type = TargetBind
trigger1 = NumTarget(1600)
trigger1 = Target(1600),MoveType = H
trigger1 = AnimElemTime(2) = 0
time = 1
pos = 10,-108
ID = 1600
[State 1640, TargetBind]
type = TargetBind
trigger1 = NumTarget(1600)
trigger1 = Target(1600),MoveType = H
trigger1 = AnimElemTime(3) = 0
time = 1
pos = -15,-115
ID = 1600
[State 1640, TargetBind]
type = TargetBind
trigger1 = NumTarget(1600)
trigger1 = Target(1600),MoveType = H
trigger1 = AnimElemTime(4) = 0
time = 1
pos = -40,-80
ID = 1600
[State 1640, TargetBind]
type = TargetBind
trigger1 = NumTarget(1600)
trigger1 = Target(1600),MoveType = H
trigger1 = AnimElemTime(5) = 0
time = 1
pos = -20,-40
ID = 1600
[State 1640, TargetBind]
type = TargetBind
trigger1 = NumTarget(1600)
trigger1 = Target(1600),MoveType = H
trigger1 = AnimElemTime(6) = 0
time = 1
pos = 20,-35
ID = 1600
[State 1640, TargetBind]
type = TargetBind
trigger1 = NumTarget(1600)
trigger1 = Target(1600),MoveType = H
trigger1 = AnimElemTime(7) = 0
time = 1
pos = 40,-70
ID = 1600

[State 1640, TargetBind]
type = TargetBind
trigger1 = NumTarget(1600)
trigger1 = Target(1600),MoveType = H
trigger1 = AnimElemTime(8) = 0
time = 1
pos = -15,-115
ID = 1600
[State 1640, TargetBind]
type = TargetBind
trigger1 = NumTarget(1600)
trigger1 = Target(1600),MoveType = H
trigger1 = AnimElemTime(9) = 0
time = 1
pos = -40,-80
ID = 1600
[State 1640, TargetBind]
type = TargetBind
trigger1 = NumTarget(1600)
trigger1 = Target(1600),MoveType = H
trigger1 = AnimElemTime(10) = 0
time = 1
pos = -20,-40
ID = 1600
[State 1640, TargetBind]
type = TargetBind
trigger1 = NumTarget(1600)
trigger1 = Target(1600),MoveType = H
trigger1 = AnimElemTime(11) = 0
time = 1
pos = 20,-35
ID = 1600
[State 1640, TargetBind]
type = TargetBind
trigger1 = NumTarget(1600)
trigger1 = Target(1600),MoveType = H
trigger1 = AnimElemTime(12) = 0
time = 1
pos = 40,-70
ID = 1600

[State 1640, TargetBind]
type = TargetBind
trigger1 = NumTarget(1600)
trigger1 = Target(1600),MoveType = H
trigger1 = AnimElem = 13
time = -1
pos = 0,-106
ID = 1600

[State 1640, VelSet]
type = VelSet
trigger1 = !Time
x = -2
y = 5.5*Vel Y

[State 1640, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(1) >= 0
y = .7

[State 1640, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 8
trigger3 = AnimElem = 13
value = S250,1
channel = -1

[State 1640, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 5
value = S300,4
channel = 0

[State 1640, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 1641

;-------------------------------------------------------------------------------------------------------------------------------------------
;BUSTER DROP - LANDING
[StateDef 1641]
type = C
physics = C
movetype = A
ctrl = 0
anim = 1641
velset = 0,0
sprpriority = 1

[State 1641, ScreenBound]
type = ScreenBound
trigger1 = AnimElemTime(4) < 0
value = 1
movecamera = 1,0

[State 1641, ScreenBound]
type = ScreenBound
trigger1 = AnimElemTime(4) >= 0
value = 1
movecamera = 0,0

[State 1641, EnvShake]
type = EnvShake
trigger1 = AnimElem = 1
time = 20

[State 1641, Explod]
type = Explod
trigger1 = !Time
ID = 1645
anim = 1645
pos = 0,0
postype = P1
sprpriority = -3
ownpal = 1
bindtime = -1
removetime = -2
removeongethit = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[State 1641, Explod]
type = Explod
trigger1 = NumTarget(1600)
trigger1 = !Time
ID = 1
anim = 8010+Random%3
pos = 10,-70
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[State 1641, Explod]
type = Explod
trigger1 = !Time
ID = 7290
anim = 7290
pos = 0,0
postype = P1  ;p2,front,back,left,right
supermovetime = 0
pausemovetime = 0
bindtime = 1
scale = .6,.5
sprpriority = -2
ownpal = 1
[State 1641, Explod]
type = Explod
trigger1 = !Time
ID = 7291
anim = 7291
pos = 0,0
postype = P1  ;p2,front,back,left,right
supermovetime = 0
pausemovetime = 0
bindtime = 1
scale = .6,.5
sprpriority = -2
ownpal = 1

[State 1641, TargetState]
type = TargetState
trigger1 = NumTarget(1600)
trigger1 = !Time
value = 1643
ID = 1600
ignorehitpause = 1
persistent = 0

[State 1641, TargetBind]
type = TargetBind
trigger1 = NumTarget(1600)
trigger1 = !Time
time = 1
pos = 0,-75;10,-70
ID = 1600

[State 1641, TargetBind]
type = TargetBind
trigger1 = NumTarget(1600)
trigger1 = AnimElem = 2
time = 1
pos = 0,-88;10,-88
ID = 1600

[State 1641, TargetBind]
type = TargetBind
trigger1 = NumTarget(1600)
trigger1 = AnimElem = 3
time = -1
pos = 10,-102
ID = 1600

[State 1641, TargetBind]
type = TargetBind
trigger1 = NumTarget(1600)
trigger1 = AnimElem = 4
time = 1
pos = -60,-102;60,-102
ID = 1600
persistent = 0

[State 1641, TargetBind]
type = TargetBind
trigger1 = NumTarget(1600)
trigger1 = AnimElemTime(5) = 0
time = 1
pos = -90,-102
ID = 1600

[State 1641, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = NumTarget(1600)
trigger1 = Target(1600),MoveType = H
trigger1 = AnimElem = 1
value = -Ceil(FVar(5)*100)
ID = 1600
kill = 1
absolute = 1
persistent = 0

[State 1641, HitAdd]
type = HitAdd
trigger1 = NumTarget(1600)
trigger1 = Target(1600),MoveType = H
trigger1 = !Time
value = 1
persistent = 0

[State 1641, PosAdd]
type = PosAdd
trigger1 = BackEdgeBodyDist < 100
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(7) < 0
x = 11

[State 1641, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 1641, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 3
statetype = S         ;A,C,S,N

[State 1641, Turn]
type = Turn
trigger1 = !AnimTime

[State 1641, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S820,0
channel = -1
lowpriority = 1

[State 1641, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S220,0
channel = -1

[State 1641, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S220,1
channel = -1

[State 1641, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;BUSTER DROP - TARGET 1
[StateDef 1642]
type = A
movetype = H
physics = N
velset = 0,0
sprpriority = 0

[State 1642, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1642

[State 1642, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 1642, AngleDraw]
type = AngleDraw
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
value = 20
ignorehitpause = 1
persistent = 1
[State 1642, AngleDraw]
type = AngleDraw
trigger1 = AnimElemTime(6) >= 0 && AnimElemTime(7) < 0
value = 40
ignorehitpause = 1
persistent = 1
[State 1642, AngleDraw]
type = AngleDraw
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
value = 60
ignorehitpause = 1
persistent = 1

[State 1642, AngleDraw]
type = AngleDraw
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(10) < 0
value = 20
ignorehitpause = 1
persistent = 1
[State 1642, AngleDraw]
type = AngleDraw
trigger1 = AnimElemTime(10) >= 0 && AnimElemTime(11) < 0
value = 40
ignorehitpause = 1
persistent = 1
[State 1642, AngleDraw]
type = AngleDraw
trigger1 = AnimElemTime(11) >= 0 && AnimElemTime(12) < 0
value = 60
ignorehitpause = 1
persistent = 1

[State 1642, AngleDraw]
type = AngleDraw
trigger1 = AnimElemTIme(13) >= 0
value = -90
ignorehitpause = 1
persistent = 1

[State 1642, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0)
value = 1643

;--------------------------------------------------------------------------------------------------------------------------------------------
;BUSTER DROP - TARGET 2
[StateDef 1643]
type = A
movetype = H
physics = N
velset = 0,0

[State 1643, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1643

[State 1643, AngleDraw]
type = AngleDraw
trigger1 = AnimElemTime(2) >= 0 && AnimElemTIme(3) < 0;AnimElemTIme(3) < 0
value = 90
ignorehitpause = 1
persistent = 1

[State 1643, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 1643, Width]
type = Width
trigger1 = AnimElemTime(4) >= 0
edge = 1,1

[State 1643, Pause]
type = Pause
trigger1 = Life > 0
trigger1 = Time = [0,5]
trigger1 = Time%2 = 0
time = 2
movetime = 0
pausebg = 1
ignorehitpause = 1

[State 1643, SprPriority]
type = SprPriority
trigger1 = AnimElem = 3
value = 2

[State 1643, SprPriority]
type = SprPriority
trigger1 = AnimElem = 4
value = -2

[State 1643, Turn]
type = Turn
trigger1 = AnimElemTime(4) > 0
trigger1 = (Pos Y >= -30) && (Vel Y > 0)

[State 1643, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 2
x = -5
y = -.1

[State 1643, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(4) >= 2
y = .5

[State 1643, ChangeState]
type = ChangeState
trigger1 = AnimElemTime(4) > 0
trigger1 = (Pos Y >= -30) && (Vel Y > 0)
value = 1644

;--------------------------------------------------------------------------------------------------------------------------------------------
;BUSTER DROP - TARGET 3
[StateDef 1644]
type = L
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = -1

[State 1644, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 1644, EnvShake]
type = EnvShake
trigger1 = !Time
ampl = -1
time = 20

[State 1644, LifeAdd]
type = LifeAdd
trigger1 = AnimElemTime(1) < 2
value = -20
kill = 1
absolute = 1
ignorehitpause = 1
persistent = 0

[State 1644, VelMul]
type = VelMul
trigger1 = 1
x = .9

[State 1644, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 1644, PosFreeze]
type = PosFreeze
trigger1 = 1

[State 1644, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1644

[State 1644, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1644, ChangeState]
type = ChangeState
trigger1 = Anim = 1644 && AnimElem = 2
value = 1645
ctrl = 0

;--------------------------------------------------------------------------------------------------------------------------------------------
;BUSTER DROP - TARGET 4
[StateDef 1645]
type = L
movetype = H
physics = N

[State 1645, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5160

[State 1645, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 1645, VelSet]
type = VelSet
trigger1 = !Time
x = 1
y = -7

[State 1645, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 1645, VelAdd]
type = VelAdd
trigger1 = 1
y = .6

[State 1645, SelfState]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 12
value = 5110

;-------------------------------------------------------------------------------------------------------------------------------------------
;EX TEMPEST CUTTER - ATTEMPT
[StateDef 1650]
type = A
physics = N
movetype = A
anim = 1600
velset = Vel X/1.3,Vel Y/2
ctrl = 0
poweradd = -500
facep2 = 1
sprpriority = 1

[State 1650, VarSet]
type = VarSet
trigger1 = !Time
var(5) = 3

[State 1650, AfterImage]
type = AfterImage
trigger1 = !Time
time = 15
timegap = 1
framegap = 1
length = 8
palbright = 32,32,0
palcontrast = 128,128,128
paladd = -10,-10,-10
palmul = 1.1,1,.5
trans = Add
ignorehitpause = 1

[State 1650, PalFX]
type = PalFX
trigger1 = !Time
time = 15
add = 90,90,0
sinadd = 90,90,0,10
ignorehitpause = 1

[State 1650, Explod]
type = Explod
trigger1 = !Time
ID = 7700
anim = 7700
pos = 10,-88
postype = P1
bindtime = 1
removetime = -2
sprpriority = 5
scale = .65,.65
ownpal = 1
ignorehitpause = 1

[State 1650, HitDef]
type = HitDef
trigger1 = NumEnemy
trigger1 = EnemyNear,Pos Y < 0
attr = A,ST        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
priority = 10,Hit
hitsound = S800,0
yaccel = .5
p1facing = 1
p2facing = -1
guard.dist = 0
numhits = 0
getpower = 0
givepower = 0
hitonce = 1
ID = 1650

[State 1650, TargetState]
type = TargetState
trigger1 = NumTarget(1650)
trigger1 = Target(1650),StateType != L
value = 1661
ID = 1650
ignorehitpause = 1
persistent = 0

[State 1650, ChangeState]
type = ChangeState
trigger1 = NumTarget(1650)
trigger1 = Target(1650),StateType != L
value = 1660
ignorehitpause = 1
persistent = 0

[State 1650, VelAdd]
type = VelAdd
trigger1 = !Time && Vel X < 6 && P2Dist X <= 100
x = 6

[State 1650, VelAdd]
type = VelAdd
trigger1 = !Time && Vel Y < -2 && P2Dist Y >= 0
y = 2

[State 1650, VelMul]
type = VelMul
trigger1 = AnimElemTime(2) > 1
x = .9

[State 1650, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(5) >= 0
y = .5

[State 1650, CtrlSet]
type = CtrlSet
trigger1 = AnimElem = 5
value = 1

[State 1650, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S100,7
channel = -1

[State 1650, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S800,2+Random%2
channel = 0

[State 1650, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 52

;-------------------------------------------------------------------------------------------------------------------------------------------
;EX TEMPEST CUTTER
[StateDef 1660]
type = A
physics = N
movetype = A
velset = 0,0
anim = 1610
ctrl = 0
sprpriority = 1

[State 1660, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(12) < 0
flag = Invisible

[State 1660, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 1660, Explod]
type = Explod
trigger1 = AnimElemTime(1) = 8
ID = 7015
anim = 7015
pos = 0,-50
postype = P1
bindtime = -1
removetime = -1
scale = .6,.6
sprpriority = 2
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
[State 1660, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 12
ID = 7015
ignorehitpause = 1
[State 1660, Explod]
type = Explod
trigger1 = AnimElemTime(12) = 0
ID = 7016
anim = 7016
pos = 0,-50
postype = P1
bindtime = 1
removetime = -2
scale = .6,.6
sprpriority = 2
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[State 1660, Explod]
type = Explod
trigger1 = AnimElemTime(1) = 8
ID = 7017
anim = 7017
pos = 0,-10
postype = P1
bindtime = -1
removetime = -1
scale = 1,1
sprpriority = 3
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
[State 1660, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 12
ID = 7017
ignorehitpause = 1
[State 1660, Explod]
type = Explod
trigger1 = AnimElemTime(12) = 0
ID = 7018
anim = 7018
pos = 0,-10
postype = P1
bindtime = 1
removetime = -2
scale = 1,1
sprpriority = 3
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[State 1660, Explod]
type = Explod
trigger1 = NumTarget(1650)
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(12) < 0
trigger1 = Time%5 = 0
ID = 1
anim = 8100+Random%32
pos = Ceil(P2Dist X),-70-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[State 1660, TargetBind]
type = TargetBind
trigger1 = NumTarget(1650)
trigger1 = AnimElemTime(1) = 0
time = 12
pos = 40,0
ID = 1650
[State 1660, TargetBind]
type = TargetBind
trigger1 = NumTarget(1650)
trigger1 = AnimElem = 2
time = -1
pos = -15,-10
ID = 1650
[State 1660, TargetBind]
type = TargetBind
trigger1 = NumTarget(1650)
trigger1 = AnimElem = 3
time = -1
pos = -20,-10
ID = 1650
[State 1660, TargetBind]
type = TargetBind
trigger1 = NumTarget(1650)
trigger1 = AnimElem = 4
time = -1
pos = -15,-10
ID = 1650
[State 1660, TargetBind]
type = TargetBind
trigger1 = NumTarget(1650)
trigger1 = AnimElem = 5
time = -1
pos = 20,-10
ID = 1650
[State 1660, TargetBind]
type = TargetBind
trigger1 = NumTarget(1650)
trigger1 = AnimElem = 6
time = -1
pos = -10,-10
ID = 1650
[State 1660, TargetBind]
type = TargetBind
trigger1 = NumTarget(1650)
trigger1 = AnimElem = 7
time = -1
pos = -10,-10
ID = 1650
[State 1660, TargetBind]
type = TargetBind
trigger1 = NumTarget(1650)
trigger1 = AnimElem = 8
time = -1
pos = 0,-10
ID = 1650
[State 1660, TargetBind]
type = TargetBind
trigger1 = NumTarget(1650)
trigger1 = AnimElem = 9
time = -1
pos = 5,-10
ID = 1650
[State 1660, TargetBind]
type = TargetBind
trigger1 = NumTarget(1650)
trigger1 = AnimElem = 10
time = -1
pos = -10,-10
ID = 1650
[State 1660, TargetBind]
type = TargetBind
trigger1 = NumTarget(1650)
trigger1 = AnimElem = 11
time = -1
pos = 0,-10
ID = 1650
[State 1660, TargetBind]
type = TargetBind
trigger1 = NumTarget(1650)
trigger1 = AnimElem = 12
time = 2
pos = 5,-10
ID = 1650

[State 1660, TargetBind]
type = TargetBind
trigger1 = NumTarget(1650)
trigger1 = AnimElem = 13
time = 1
pos = 0,-15
ID = 1650

[State 1660, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = NumTarget(1650)
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(12) < 0
trigger1 = Time%5 = 0
value = -Ceil(FVar(5)*10)
ID = 1650
kill = 0
absolute = 1

[State 1660, HitAdd]
type = HitAdd
trigger1 = NumTarget(1650)
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(12) < 0
trigger1 = Time%5 = 0
value = 1

[State 1660, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 0

[State 1660, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 0
y = -2

[State 1660, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(13) >= 0
y = .5

[State 1660, CtrlSet]
type = CtrlSet
trigger1 = AnimElem = 15
value = 1

[State 1660, TargetState]
type = TargetState
trigger1 = NumTarget(1650)
trigger1 = AnimElem = 13
value = 1672
ID = 1650
ignorehitpause = 1
persistent = 0
[State 1660, ChangeState]
type = ChangeState
trigger1 = NumTarget(1650)
trigger1 = AnimElem = 13
value = 1670
ignorehitpause = 1
persistent = 0

[State 1660, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S1600,0
channel = 0

[State 1660, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S1000,2
channel = -1
[State 1660, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S1660,0
channel = -1

[State 1660, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(1650)
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(12) < 0
trigger1 = Time%5 = 0
value = S214,0+(Random%5)
channel = -1

[State 1660, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 52

;--------------------------------------------------------------------------------------------------------------------------------------------
;EX TEMPEST CUTTER - TARGET 1
[StateDef 1661]
type = A
movetype = H
physics = N
velset = 0,0

[State 1661, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1611

[State 1661, SprPriority]
type = SprPriority
trigger1 = AnimElem = 1
value = 0
[State 1661, SprPriority]
type = SprPriority
trigger1 = AnimElem = 4
value = 2
[State 1661, SprPriority]
type = SprPriority
trigger1 = AnimElem = 5
value = 0
[State 1661, SprPriority]
type = SprPriority
trigger1 = AnimElem = 8
value = 2
[State 1661, SprPriority]
type = SprPriority
trigger1 = AnimElem = 10
value = 0
[State 1661, SprPriority]
type = SprPriority
trigger1 = AnimElem = 11
value = 2
[State 1661, SprPriority]
type = SprPriority
trigger1 = AnimElem = 13
value = 0

[State 1661, VelSet]
type = VelSet
trigger1 = AnimElem = 13
x = 2
y = -5

[State 1661, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(13) >= 0
y = .5

[State 1661, SelfState]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

;-------------------------------------------------------------------------------------------------------------------------------------------
;SPINNING PILE DRIVER 1
[StateDef 1670]
type = A
physics = N
movetype = A
anim = 1670
ctrl = 0
sprpriority = 1

[State 1670, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 1670, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 1670, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1670, Width]
type = Width
trigger1 = 1
edge = 20,0
player = 0,0

[State 1670, Explod]
type = Explod
trigger1 = AnimElem = 4
ID = 7015
anim = 7015
pos = 0,-70
postype = P1
bindtime = -1
removetime = -1
scale = .6,.6
sprpriority = 3
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[State 1670, Explod]
type = Explod
trigger1 = AnimElem = 4
ID = 6075
anim = 6075
pos = 0,-230
postype = P1
vfacing = -1
bindtime = -1
removetime = -2
scale = .7,.6
sprpriority = 4
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
[State 1670, RemoveExplod]
type = RemoveExplod
trigger1 = Pos Y >= -20
ID = 6075
ignorehitpause = 1

[State 1670, Helper]
type = Helper
trigger1 = Vel Y >= 35 && Pos Y >= -150
name = "Streak"
ID = 1
stateno = 6241
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1

[State 1670, Explod]
type = Explod
trigger1 = Time >= 15;31
trigger1 = Time%3 = 0
ID = 7021
anim = 7021
pos = 0,0
postype = P1
bindtime = 1
removetime = -2
scale = .4,.4
sprpriority = 8
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[State 1670, TargetBind]
type = TargetBind
trigger1 = NumTarget(1650)
trigger1 = Target(1650),MoveType = H
trigger1 = AnimElemTime(1) = 0
time = 10
pos = 20,-106
ID = 1650
[State 1670, TargetBind]
type = TargetBind
trigger1 = NumTarget(1650)
trigger1 = Target(1650),MoveType = H
trigger1 = AnimElemTime(2) = 0
time = 1
pos = -15,-115
ID = 1650
[State 1670, TargetBind]
type = TargetBind
trigger1 = NumTarget(1650)
trigger1 = Target(1650),MoveType = H
trigger1 = AnimElemTime(3) = 0
time = 1
pos = -40,-80
ID = 1650

[State 1670, TargetBind]
type = TargetBind
trigger1 = NumTarget(1650)
trigger1 = Target(1650),MoveType = H
trigger1 = AnimElemTime(4) = 0
time = 1
pos = -15,-30
ID = 1650
[State 1670, TargetBind]
type = TargetBind
trigger1 = NumTarget(1650)
trigger1 = Target(1650),MoveType = H
trigger1 = AnimElemTime(5) = 0
time = 1
pos = -10,-30
ID = 1650
[State 1670, TargetBind]
type = TargetBind
trigger1 = NumTarget(1650)
trigger1 = Target(1650),MoveType = H
trigger1 = AnimElemTime(6) = 0
time = 1
pos = -5,-30
ID = 1650
[State 1670, TargetBind]
type = TargetBind
trigger1 = NumTarget(1650)
trigger1 = Target(1650),MoveType = H
trigger1 = AnimElemTime(7) = 0
time = 1
pos = 0,-30
ID = 1650

[State 1670, VelSet]
type = VelSet
trigger1 = Time = 1
x = 0
y = -5;-80

[State 1670, VelSet]
type = VelSet
trigger1 = Time = 35;3
x = 0
y = 50
persistent = 0

[State 1670, VelMul]
type = VelMul
trigger1 = Vel Y < 0 && Pos Y <= -180
trigger1 = AnimElemTime(3) < 0
y = .9

[State 1670, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) >= 0
y = .5

[State 1670, PlaySnd]
type = PlaySnd
trigger1 = Time = 20
value = S1000,2
channel = -1
[State 1670, PlaySnd]
type = PlaySnd
trigger1 = Time = 20
value = S1000,2
channel = -1
[State 1670, PlaySnd]
type = PlaySnd
trigger1 = Time = 20
value = S1000,2
channel = -1

[State 1670, PlaySnd]
type = PlaySnd
trigger1 = Time = 35
value = S100,6
channel = 2
[State 1670, PlaySnd]
type = PlaySnd
trigger1 = Time = 35
value = S100,6
channel = 3
[State 1670, PlaySnd]
type = PlaySnd
trigger1 = Time = 35
value = S100,6
channel = 4

[State 1670, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 8
trigger3 = AnimElem = 13
value = S250,1
channel = -1

[State 1670, PlaySnd]
type = PlaySnd
trigger1 = Time = 22
value = S300,8
channel = 0

[State 1670, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 1671

;-------------------------------------------------------------------------------------------------------------------------------------------
;SPINNING PILE DRIVER - LANDING
[StateDef 1671]
type = S
physics = N
movetype = A
ctrl = 0
anim = 1671
velset = 0,0
sprpriority = 1

[State 1671, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(8) < 0
value = SCA

[State 1671, ScreenBound]
type = ScreenBound
trigger1 = AnimElemTime(2) < 0
value = 1
movecamera = 1,0

[State 1671, ScreenBound]
type = ScreenBound
trigger1 = AnimElemTime(2) >= 0
value = 1
movecamera = 0,0

[State 1671, EnvShake]
type = EnvShake
trigger1 = AnimElem = 1
time = 20

[State 1671, RemoveExplod]
type = RemoveExplod
trigger1 = !Time
ID = 7015
ignorehitpause = 1
[State 1671, Explod]
type = Explod
trigger1 = !Time
ID = 7016
anim = 7016
pos = 0,-70
postype = P1
bindtime = 1
removetime = -2
scale = .6,.6
sprpriority = 3
ownpal = 1
supermovetime = 0
pausemovetime = 900
ignorehitpause = 1

[State 1671, Explod]
type = Explod
trigger1 = NumTarget(1650)
trigger1 = !Time
ID = 1
anim = 8010+Random%3
pos = -15,-10
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[State 1671, Explod]
type = Explod
trigger1 = !Time
ID = 7290
anim = 7290
pos = 0,0
postype = P1  ;p2,front,back,left,right
supermovetime = 0
pausemovetime = 0
bindtime = 1
scale = .7,.6
sprpriority = -2
ownpal = 1
[State 1671, Explod]
type = Explod
trigger1 = !Time
ID = 7291
anim = 7291
pos = 0,0
postype = P1  ;p2,front,back,left,right
supermovetime = 0
pausemovetime = 0
bindtime = 1
scale = .7,.6
sprpriority = -2
ownpal = 1

[State 1671, Explod]
type = Explod
trigger1 = !Time
ID = 7008
anim = 7008
pos = 0,3
postype = P1  ;p2,front,back,left,right
facing = -1
bindtime = 1
removetime = -2
pausemovetime = 0
supermovetime = 0
scale = 2.5,1.2
sprpriority = 4
ownpal = 1
ignorehitpause = 1

[State 1671, Explod]
type = Explod
trigger1 = !Time
ID = 7070
anim = 7070
pos = 0,0
postype = P1
facing = Cond(Random < 500,1,-1)
scale = .8,.7
sprpriority = -5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[State 1671, TargetState]
type = TargetState
trigger1 = NumTarget(1650)
trigger1 = !Time
value = 1673
ID = 1650
ignorehitpause = 1
persistent = 0

[State 1671, TargetBind]
type = TargetBind
trigger1 = NumTarget(1650)
trigger1 = !Time
time = 1
pos = -15,-10
ID = 1650

[State 1671, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = NumTarget(1650)
trigger1 = Target(1650),MoveType = H
trigger1 = AnimElem = 1
value = -150
ID = 1650
kill = 1
absolute = 1
persistent = 0

[State 1671, HitAdd]
type = HitAdd
trigger1 = NumTarget(1650)
trigger1 = Target(1650),MoveType = H
trigger1 = !Time
value = 1
persistent = 0

[State 1671, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 1671, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 2
statetype = A         ;A,C,S,N

[State 1671, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 3
y = -9

[State 1671, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) >= 0
y = .5

[State 1671, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S820,0
channel = -1
lowpriority = 1

[State 1671, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S220,0
channel = -1

[State 1671, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
trigger2 = AnimElem = 7
value = S220,1
channel = -1

[State 1671, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 52

;--------------------------------------------------------------------------------------------------------------------------------------------
;SPINNING PILE DRIVER - TARGET 1
[StateDef 1672]
type = A
movetype = H
physics = N
velset = 0,0
sprpriority = 0

[State 1672, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1672

[State 1672, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 1672, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0)
value = 1673

;--------------------------------------------------------------------------------------------------------------------------------------------
;SPINNING PILE DRIVER - TARGET 2
[StateDef 1673]
type = L
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 0

[State 1673, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 1673

[State 1673, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(3) < 15
value = 0
[State 1673, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(3) >= 15
value = 1

[State 1673, Pause]
type = Pause
trigger1 = Life > 0
trigger1 = Time = [0,6]
trigger1 = Time%2 = 0
time = 4
movetime = 0
pausebg = 1
ignorehitpause = 1

[State 1673, EnvShake]
type = EnvShake
trigger1 = !Time
time = 20

[State 1673, PosSet]
type = PosSet
trigger1 = AnimElem = 2
y = 0

[State 1673, SelfState]
type = SelfState
trigger1 = AnimElemTime(3) >= 50
value = Cond(Alive,5120,5150)
ctrl = 0

;-------------------------------------------------------------------------------------------------------------------------------------------
;AIR SONIC FLASH
[StateDef 1700]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
poweradd = 80*Var(3)
juggle = 100
sprpriority = -1
facep2 = 1

[State 1700, VarSet]
type = VarSet
trigger1 = !AILevel
trigger1 = !Time
var(5) = Cond(NumExplod(90000250) || NumExplod(90000255),2,Cond(NumExplod(90000240) || NumExplod(90000245),1,0))

[State 1700, VarSet]
type = VarSet
trigger1 = AILevel
trigger1 = P2BodyDist X <= 100
trigger1 = !Time
var(5) = 0
[State 1700, VarSet]
type = VarSet
trigger1 = AILevel
trigger1 = P2BodyDist X = [101,120]
trigger1 = !Time
var(5) = 1
[State 1700, VarSet]
type = VarSet
trigger1 = AILevel
trigger1 = P2BodyDist X >= 121
trigger1 = !Time
var(5) = 2

[State 1700, VarSet]
type = VarSet
trigger1 = 1
var(1) = 5

[State 1700, VarSet]
type = VarSet
trigger1 = !Time
var(13) = 0

[State 1700, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(9) < 10
value = ,AP

[State 1700, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = Cond(Var(5) = 2,1702,Cond(Var(5) = 1,1701,1700))

[State 1700, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 1700, Width]
type = Width
trigger1 = AnimElemTime(9) < 0
edge = 35,0
player = 35,0
[State 1700, Width]
type = Width
trigger1 = AnimElemTime(9) >= 0
edge = 10,0
player = 0,0

[State 1700, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(9) < 0
value = 1
ignorehitpause = 1
[State 1700, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(9) >= 0
value = 0
ignorehitpause = 1

[State 1700, Pause]
type = Pause
trigger1 = NumEnemy
trigger1 = EnemyNear,Alive
trigger1 = !NumHelper(7900)
trigger1 = !NumHelper(7925)
trigger1 = !NumHelper(7950)
trigger1 = AnimElemTime(7) < 0
trigger1 = Time%2 = 0
time = 4
movetime = 4
pausebg = 1
ignorehitpause = 1
[State 1700, Pause]
type = Pause
trigger1 = NumEnemy
trigger1 = EnemyNear,Alive
trigger1 = !NumHelper(7900)
trigger1 = !NumHelper(7925)
trigger1 = !NumHelper(7950)
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(9) < 0
time = 2
movetime = 0
pausebg = 1
ignorehitpause = 1

[State 1700, Helper]
type = Helper
trigger1 = !NumHelper(1720)
trigger1 = NumTarget(1700)
trigger1 = Target(1700),MoveType = H
trigger1 = Target(1700),StateType != L
trigger1 = MoveContact
trigger1 = !MoveGuarded
name = "SlowMotion"
ID = 1720
stateno = 1720
postype = P1    ;p2,front,back,left,right
ownpal = 1
size.shadowoffset = Target(1700),ID
pausemovetime = 900
supermovetime = 900
ignorehitpause = 1
persistent = 0

;[State 1700, Pause]
;type = Pause
;triggerall = !Var(5)
;triggerall = !NumHelper(7900)
;triggerall = !NumHelper(7925)
;triggerall = !NumHelper(7950)
;triggerall = Time%2 = 0
;trigger1 = NumTarget(1700)
;trigger1 = Target(1700),StateType != L
;trigger1 = Target(1700),Alive
;trigger1 = Target(1700),Life > (FVar(5)*70)
;trigger1 = MoveContact
;trigger1 = !MoveGuarded
;time = 2
;movetime = 0
;pausebg = 1
;ignorehitpause = 1
;[State 1700, Pause]
;type = Pause
;triggerall = Var(5) = 1
;triggerall = !NumHelper(7900)
;triggerall = !NumHelper(7925)
;triggerall = !NumHelper(7950)
;triggerall = Time%2 = 0
;trigger1 = NumTarget(1700)
;trigger1 = Target(1700),StateType != L
;trigger1 = Target(1700),Alive
;trigger1 = Target(1700),Life > (FVar(5)*80)
;trigger1 = MoveContact
;trigger1 = !MoveGuarded
;time = 2
;movetime = 0
;pausebg = 1
;ignorehitpause = 1
;[State 1700, Pause]
;type = Pause
;triggerall = Var(5) = 2
;triggerall = !NumHelper(7900)
;triggerall = !NumHelper(7925)
;triggerall = !NumHelper(7950)
;triggerall = Time%2 = 0
;trigger1 = NumTarget(1700)
;trigger1 = Target(1700),StateType != L
;trigger1 = Target(1700),Alive
;trigger1 = Target(1700),Life > (FVar(5)*90)
;trigger1 = MoveContact
;trigger1 = !MoveGuarded
;time = 2
;movetime = 0
;pausebg = 1
;ignorehitpause = 1

[State 1700, Explod]
type = Explod
trigger1 = AnimElem = 7
ID = 7004
anim = 7004
postype = P1
pos = -25,-65
angle = 90
bindtime = 1
removetime = -2
pausemovetime = 900
supermovetime = 0
removeongethit = 0
scale = 1,1
sprpriority = -1
ownpal = 1
ignorehitpause = 1

[State 1700, Explod]
type = Explod
trigger1 = AnimElem = 8
ID = 7006
anim = 7006
postype = P1
pos = 50,-80
bindtime = 1
removetime = -2
sprpriority = 4
scale = .8,.8
ownpal = 1

[State 1700, Explod]
type = Explod
trigger1 = !NumExplod(6721)
trigger1 = AnimElem = 9
ID = 6721
anim = 6721
postype = P1
pos = 0,-100
facing = 1
removetime = -2
bindtime = 1
pausemovetime = 900
supermovetime = 0
removeongethit = 0
scale = 3,.5
sprpriority = 3
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1700, Helper]
type = Helper
trigger1 = AnimElem = 8
name = "Afterimage"
ID = 1705
stateno = 1705
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 900
supermovetime = 900

[State 1700, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(1700)
trigger1 = !NumExplod(1700)
trigger1 = Target(1700),StateType != L
ID = 1700
anim = 8100+Random%32
pos = Ceil(P2Dist X),-70-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 1700, HitDef]
type = HitDef
trigger1 = !Var(5)
trigger1 = !NumTarget(1700)
trigger1 = Time = 9
attr = A,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium
air.animtype = Medium        ;light,medium,hard,back,up,diagup
fall.animtype = Up
priority = 8,Hit
damage = Ceil(FVar(5)*80),1
pausetime = 5,0
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-85
hitsound = S214,0+(Random%5)
guardsound = S200,2
ground.type = High      ;Low,Trip,None
air.type = High
ground.slidetime = 20
ground.hittime = 40
guard.hittime = 10
guard.ctrltime = 10
yaccel = .5
ground.velocity = 0,-8
air.velocity = 0,-8
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
p2facing = 1
p2sprpriority = 1
getpower = 70*Var(3),35*Var(3)
givepower = 0,10
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 1700
persistent = 0
[State 1700, HitDef]
type = HitDef
trigger1 = Var(5) = 1
trigger1 = !NumTarget(1700)
trigger1 = Time = 11
attr = A,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium
air.animtype = Medium        ;light,medium,hard,back,up,diagup
fall.animtype = Up
priority = 8,Hit
damage = Ceil(FVar(5)*90),1
pausetime = 5,0
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-85
hitsound = S214,0+(Random%5)
guardsound = S200,2
ground.type = High      ;Low,Trip,None
air.type = High
ground.slidetime = 20
ground.hittime = 60
guard.hittime = 10
guard.ctrltime = 10
yaccel = .5
ground.velocity = 0,-7
air.velocity = 0,-7
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
p2facing = 1
p2sprpriority = 1
getpower = 70*Var(3),35*Var(3)
givepower = 0,10
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 1700
persistent = 0
[State 1700, HitDef]
type = HitDef
trigger1 = Var(5) = 2
trigger1 = !NumTarget(1700)
trigger1 = Time = 13
attr = A,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium
air.animtype = Medium        ;light,medium,hard,back,up,diagup
fall.animtype = Up
priority = 8,Hit
damage = Ceil(FVar(5)*100),1
pausetime = 5,0
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-85
hitsound = S214,0+(Random%5)
guardsound = S200,2
ground.type = High      ;Low,Trip,None
air.type = High
ground.slidetime = 20
ground.hittime = 80
guard.hittime = 10
guard.ctrltime = 10
yaccel = .5
ground.velocity = 0,-6
air.velocity = 0,-6
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
p2facing = 1
p2sprpriority = 1
getpower = 70*Var(3),35*Var(3)
givepower = 0,10
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 1700
persistent = 0

[State 1700, VarSet]
type = VarSet
trigger1 = MoveContact
var(13) = 1

[State 1700, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(10) >= 2
movetype = I

[State 1700, TargetBind]
type = TargetBind
trigger1 = MoveContact = 1
trigger1 = NumTarget(1700) && NumEnemy
trigger1 = (Target(1700),Time = 0) && (Target(1700),ID = EnemyNear,ID)
trigger1 = !(Target(1700),HitShakeOver) && (Target(1700),Pos Y > 0)
pos = Ceil(P2Dist X),Ceil(-Pos Y)
time = 1
ignoreHitPause = 1

[State 1700, TargetState]
type = TargetState
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(1700)
trigger1 = Target(1700),MoveType = H
trigger1 = Target(1700),StateType != L
trigger1 = Target(1700),Alive
value = 2001
ID = 1700
ignorehitpause = 1
persistent = 0

[State 1700, VelSet]
type = VelSet
trigger1 = AnimElemTime(1) = 0
x = -2

[State 1700, VelSet]
type = VelSet
trigger1 = AnimElemTime(7) = 0
x = 0
y = 0

[State 1700, PosAdd]
type = PosAdd
trigger1 = Time = Cond(Var(5) = 2,13,Cond(Var(5) = 1,11,9)) 
x = Cond(Var(5) = 2,180,Cond(Var(5) = 1,160,140))

[State 1700, VelSet]
type = VelSet
trigger1 = Time = Cond(Var(5) = 2,14,Cond(Var(5) = 1,12,10))
x = 12

[State 1700, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 9
value = S1300,0
channel = 0

[State 1700, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 9
value = S1100,1
channel = -1
[State 1700, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 9
value = S1100,1
channel = -1
[State 1700, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 9
value = S1100,1
channel = -1

[State 1700, ChangeState]
type = ChangeState
trigger1 = Time >= Cond(Var(5) = 2,20,Cond(Var(5) = 1,18,16))
value = 1703
ctrl = 0
[State 1700, ChangeState]
type = ChangeState
trigger1 = FrontEdgeDist <= 40
trigger1 = AnimElemTime(9) >= 0
value = 1704
ctrl = 0

;-------------------------------------------------------------------------------------------------------------------------------------------
;AIR SONIC FLASH END 1
[StateDef 1703]
type = A
physics = N
movetype = I
velset = 12,0
ctrl = 0
anim = 1703
sprpriority = -1

[State 1703, VelAdd]
type = VelAdd
trigger1 = 1
y = .5

[State 1703, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 52

;-------------------------------------------------------------------------------------------------------------------------------------------
;AIR SONIC FLASH END 2
[StateDef 1704]
type = A
physics = N
movetype = A
velset = 0,0
ctrl = 0
anim = 1704
sprpriority = -1

[State 1704, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(8) <= 0
value = 0
ignorehitpause = 1
[State 1704, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(8) > 0
value = 1

[State 1704, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 1704, PosAdd]
type = PosAdd
trigger1 = !Time
x = FrontEdgeDist

[State 1704, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(2) = 0
y = -40

[State 1704, Pause]
type = Pause
triggerall = AnimElemTime(2) < 0
triggerall = Time%2 = 0
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(1700)
trigger1 = Target(1700),StateType != L
trigger1 = Target(1700),Alive
time = 2
movetime = 0
pausebg = 1
ignorehitpause = 1

[State 1704, Explod]
type = Explod
trigger1 = !Time
ID = 7290
anim = 7290
pos = 25,-70
postype = P1  ;p2,front,back,left,right
angle = 90
supermovetime = 0
pausemovetime = 0
bindtime = 1
scale = .6,.5
sprpriority = -2
ownpal = 1
[State 1704, Explod]
type = Explod
trigger1 = !Time
ID = 7291
anim = 7291
pos = 25,-70
postype = P1  ;p2,front,back,left,right
angle = 90
supermovetime = 0
pausemovetime = 0
bindtime = 1
scale = .6,.5
sprpriority = -2
ownpal = 1

[State 1704, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(1700)
trigger1 = !NumExplod(1700)
trigger1 = Target(1700),StateType != L
ID = 1700
anim = 8100+Random%32
pos = Ceil(P2Dist X),-70-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 1704, HitDef]
type = HitDef
trigger1 = !Var(5)
trigger1 = !Var(16)
trigger1 = !NumTarget(1700)
trigger1 = !Time
attr = A,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium
air.animtype = Medium        ;light,medium,hard,back,up,diagup
fall.animtype = Up
priority = 8,Hit
damage = Ceil(FVar(5)*80),1
pausetime = 5,0
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-85
hitsound = S214,0+(Random%5)
guardsound = S200,2
ground.type = High      ;Low,Trip,None
air.type = High
ground.slidetime = 20
ground.hittime = 40
guard.ctrltime = 20
yaccel = .5
ground.velocity = 0,-8
air.velocity = 0,-8
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
p2facing = 1
p2sprpriority = 1
getpower = 70*Var(3),35*Var(3)
givepower = 0,10
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 1700
persistent = 0
[State 1704, HitDef]
type = HitDef
trigger1 = Var(5) = 1
trigger1 = !Var(16)
trigger1 = !NumTarget(1700)
trigger1 = !Time
attr = A,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium
air.animtype = Medium        ;light,medium,hard,back,up,diagup
fall.animtype = Up
priority = 8,Hit
damage = Ceil(FVar(5)*90),1
pausetime = 5,0
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-85
hitsound = S214,0+(Random%5)
guardsound = S200,2
ground.type = High      ;Low,Trip,None
air.type = High
ground.slidetime = 20
ground.hittime = 60
guard.ctrltime = 20
yaccel = .5
ground.velocity = 0,-7
air.velocity = 0,-7
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
p2facing = 1
p2sprpriority = 1
getpower = 70*Var(3),35*Var(3)
givepower = 0,10
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 1700
persistent = 0
[State 1704, HitDef]
type = HitDef
trigger1 = Var(5) = 2
trigger1 = !Var(16)
trigger1 = !NumTarget(1700)
trigger1 = !Time
attr = A,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium
air.animtype = Medium        ;light,medium,hard,back,up,diagup
fall.animtype = Up
priority = 8,Hit
damage = Ceil(FVar(5)*100),1
pausetime = 5,0
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-85
hitsound = S214,0+(Random%5)
guardsound = S200,2
ground.type = High      ;Low,Trip,None
air.type = High
ground.slidetime = 20
ground.hittime = 80
guard.ctrltime = 20
yaccel = .5
ground.velocity = 0,-6
air.velocity = 0,-6
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
p2facing = 1
p2sprpriority = 1
getpower = 70*Var(3),35*Var(3)
givepower = 0,10
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 1700
persistent = 0

[State 1704, TargetBind]
type = TargetBind
trigger1 = MoveContact = 1
trigger1 = NumTarget(1700) && NumEnemy
trigger1 = (Target(1700),Time = 0) && (Target(1700),ID = EnemyNear,ID)
trigger1 = !(Target(1700),HitShakeOver) && (Target(1700),Pos Y > 0)
pos = Ceil(P2Dist X),Ceil(-Pos Y)
time = 1
ignoreHitPause = 1

[State 1704, TargetState]
type = TargetState
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(1700)
trigger1 = Target(1700),MoveType = H
trigger1 = Target(1700),StateType != L
trigger1 = Target(1700),Alive
value = 2001
ID = 1700
ignorehitpause = 1
persistent = 0

[State 1704, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0
movetype = I

[State 1704, VelSet]
type = VelSet
trigger1 = AnimElemTime(2) = 0
x = -3
y = -7

[State 1704, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) >= 0
y = .5

[State 1704, CtrlSet]
type = CtrlSet
trigger1 = AnimElem = 9
value = 1

[State 1704, Turn]
type = Turn
trigger1 = AnimElemTime(8) >= 0
trigger1 = P2Dist X < 0

[State 1704, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S820,0
channel = -1
lowpriority = 1

[State 1704, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8
trigger2 = AnimElem = 11
value = S250,1
channel = -1

[State 1704, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 52

;--------------------------------------------------------------------------------------------------------------------------------------------
;SONIC FLASH AFTERIMAGE
[StateDef 1705]
type = S
physics = N
movetype = I
anim = 1705
ctrl = 0
velset = 0,0
sprpriority = -1

[State 1705, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 1705, Trans]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256-(Time*16),Time*16

[State 1705, DestroySelf]
type = DestroySelf
trigger1 = Time >= 16

;-------------------------------------------------------------------------------------------------------------------------------------------
;EX AIR SONIC FLASH
[StateDef 1710]
type = A
physics = N
movetype = A
anim = 1702
ctrl = 0
velset = 0,0
poweradd = -500
juggle = 100
sprpriority = -1
facep2 = 1

[State 1710, VarSet]
type = VarSet
trigger1 = !Time
var(5) = 3

[State 1710, VarSet]
type = VarSet
trigger1 = 1
var(1) = 6

[State 1710, VarSet]
type = VarSet
trigger1 = !Time
var(13) = 0

[State 1710, AfterImage]
type = AfterImage
trigger1 = !Time
time = 20
timegap = 1
framegap = 1
length = 8
palbright = 32,32,0
palcontrast = 128,128,128
paladd = -10,-10,-10
palmul = 1.1,1,.5
trans = Add
ignorehitpause = 1

[State 1710, PalFX]
type = PalFX
trigger1 = !Time
time = 20
add = 90,90,0
sinadd = 90,90,0,10
ignorehitpause = 1

[State 1710, Explod]
type = Explod
trigger1 = AnimElem = 7
ID = 7700
anim = 7700
pos = -13,-93
postype = P1
bindtime = 1
removetime = -2
sprpriority = 5
scale = .65,.65
ownpal = 1
ignorehitpause = 1

[State 1710, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(9) < 10
value = ,AP

[State 1710, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 1710, Width]
type = Width
trigger1 = AnimElemTime(9) < 0
edge = 35,0
player = 35,0
[State 1710, Width]
type = Width
trigger1 = AnimElemTime(9) >= 0
edge = 10,0
player = 0,0

[State 1710, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(9) < 0
value = 1
ignorehitpause = 1
[State 1710, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(9) >= 0
value = 0
ignorehitpause = 1

[State 1710, Pause]
type = Pause
trigger1 = NumEnemy
trigger1 = EnemyNear,Alive
trigger1 = !NumHelper(7900)
trigger1 = !NumHelper(7925)
trigger1 = !NumHelper(7950)
trigger1 = AnimElemTime(7) < 0
trigger1 = Time%2 = 0
time = 5
movetime = 5
pausebg = 1
ignorehitpause = 1
[State 1710, Pause]
type = Pause
trigger1 = NumEnemy
trigger1 = EnemyNear,Alive
trigger1 = !NumHelper(7900)
trigger1 = !NumHelper(7925)
trigger1 = !NumHelper(7950)
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(9) < 0
time = 2
movetime = 0
pausebg = 1
ignorehitpause = 1

[State 1710, Helper]
type = Helper
trigger1 = !NumHelper(1720)
trigger1 = NumTarget(1710)
trigger1 = Target(1710),MoveType = H
trigger1 = Target(1710),StateType != L
trigger1 = MoveContact
trigger1 = !MoveGuarded
name = "SlowMotion"
ID = 1720
stateno = 1720
postype = P1    ;p2,front,back,left,right
ownpal = 1
size.shadowoffset = Target(1710),ID
pausemovetime = 900
supermovetime = 900
ignorehitpause = 1
persistent = 0

;[State 1710, Pause]
;type = Pause
;triggerall = !NumHelper(7900)
;triggerall = !NumHelper(7925)
;triggerall = !NumHelper(7950)
;triggerall = Time%2 = 0
;trigger1 = NumTarget(1710)
;trigger1 = Target(1710),StateType != L
;trigger1 = Target(1710),Alive
;trigger1 = Target(1710),Life > (FVar(5)*100)
;trigger1 = MoveContact
;trigger1 = !MoveGuarded
;time = 3
;movetime = 0
;pausebg = 1
;ignorehitpause = 1

[State 1710, Explod]
type = Explod
trigger1 = AnimElem = 7
ID = 7004
anim = 7004
postype = P1
pos = -25,-65
angle = 90
bindtime = 1
removetime = -2
pausemovetime = 900
supermovetime = 0
removeongethit = 0
scale = 1,1
sprpriority = -1
ownpal = 1
ignorehitpause = 1

[State 1710, Explod]
type = Explod
trigger1 = AnimElem = 8
ID = 7006
anim = 7006
postype = P1
pos = 50,-80
bindtime = 1
removetime = -2
sprpriority = 4
scale = .8,.8
ownpal = 1

[State 1710, Explod]
type = Explod
trigger1 = !NumExplod(6721)
trigger1 = AnimElem = 9
ID = 6721
anim = 6721
postype = P1
pos = 0,-100
facing = 1
removetime = -2
bindtime = 1
pausemovetime = 900
supermovetime = 0
removeongethit = 0
scale = 3,.5
sprpriority = 3
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1710, Helper]
type = Helper
trigger1 = AnimElem = 8
name = "Afterimage"
ID = 1705
stateno = 1705
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 900
supermovetime = 900

[State 1710, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(1710)
trigger1 = !NumExplod(1710)
trigger1 = Target(1710),StateType != L
ID = 1710
anim = 8100+Random%32
pos = Ceil(P2Dist X),-70-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 1710, HitDef]
type = HitDef
trigger1 = !NumTarget(1710)
trigger1 = Time = [13,15]
attr = A,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium
air.animtype = Medium        ;light,medium,hard,back,up,diagup
fall.animtype = Up
priority = 8,Hit
damage = Ceil(FVar(5)*100),1
pausetime = 5,0
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-85
hitsound = S214,0+(Random%5)
guardsound = S200,2
ground.type = High      ;Low,Trip,None
air.type = High
ground.slidetime = 20
ground.hittime = 40
guard.hittime = 20
guard.ctrltime = 20
yaccel = .5
ground.velocity = 0,-8
air.velocity = 0,-8
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
p2facing = 1
p2sprpriority = 1
getpower = 0
givepower = 0,10
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 1710
persistent = 0

[State 1710, VarSet]
type = VarSet
trigger1 = MoveContact
var(13) = 1

[State 1710, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(10) >= 2
movetype = I

[State 1710, TargetBind]
type = TargetBind
trigger1 = MoveContact = 1
trigger1 = NumTarget(1710) && NumEnemy
trigger1 = (Target(1710),Time = 0) && (Target(1710),ID = EnemyNear,ID)
trigger1 = !(Target(1710),HitShakeOver) && (Target(1710),Pos Y > 0)
pos = Ceil(P2Dist X),Ceil(-Pos Y)
time = 1
ignoreHitPause = 1

[State 1710, TargetState]
type = TargetState
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(1710)
trigger1 = Target(1710),MoveType = H
trigger1 = Target(1710),StateType != L
trigger1 = Target(1710),Alive
value = 2001
ID = 1710
ignorehitpause = 1
persistent = 0

[State 1710, VelSet]
type = VelSet
trigger1 = AnimElemTime(1) = 0
x = -2

[State 1710, VelSet]
type = VelSet
trigger1 = AnimElemTime(7) = 0
x = 0
y = 0

[State 1710, PosAdd]
type = PosAdd
trigger1 = AnimElem = 9 
x = FrontEdgeDist+50;200

[State 1710, VelSet]
type = VelSet
trigger1 = AnimElemTime(9) = 1
x = 12

[State 1710, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 9
value = S1300,0
channel = 0

[State 1710, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 9
value = S1100,1
channel = -1
[State 1710, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 9
value = S1100,1
channel = -1
[State 1710, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 9
value = S1100,1
channel = -1

[State 1710, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S100,7
channel = -1

[State 1710, ChangeState]
type = ChangeState
trigger1 = Time >= Cond(Var(5) = 2,20,Cond(Var(5) = 1,18,16))
value = 1703
ctrl = 0
[State 1710, ChangeState]
type = ChangeState
trigger1 = FrontEdgeDist <= 40
trigger1 = AnimElemTime(9) >= 0
value = 1714
ctrl = 0

;-------------------------------------------------------------------------------------------------------------------------------------------
;EX AIR SONIC FLASH END 2
[StateDef 1714]
type = A
physics = N
movetype = A
velset = 0,0
ctrl = 0
anim = 1704
sprpriority = -1

[State 1714, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(8) <= 0
value = 0
ignorehitpause = 1
[State 1714, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(8) > 0
value = 1

[State 1714, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 1714, PosAdd]
type = PosAdd
trigger1 = !Time
x = FrontEdgeDist

[State 1714, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(2) = 0
y = -40

[State 1714, Pause]
type = Pause
triggerall = AnimElemTime(2) < 0
triggerall = Time%2 = 0
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(1710)
trigger1 = Target(1710),StateType != L
trigger1 = Target(1710),Alive
time = 3
movetime = 0
pausebg = 1
ignorehitpause = 1

[State 1714, Explod]
type = Explod
trigger1 = !Time
ID = 7290
anim = 7290
pos = 25,-70
postype = P1  ;p2,front,back,left,right
angle = 90
supermovetime = 0
pausemovetime = 0
bindtime = 1
scale = .6,.5
sprpriority = -2
ownpal = 1
[State 1714, Explod]
type = Explod
trigger1 = !Time
ID = 7291
anim = 7291
pos = 25,-70
postype = P1  ;p2,front,back,left,right
angle = 90
supermovetime = 0
pausemovetime = 0
bindtime = 1
scale = .6,.5
sprpriority = -2
ownpal = 1

[State 1714, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(1710)
trigger1 = !NumExplod(1710)
trigger1 = Target(1710),StateType != L
ID = 1710
anim = 8100+Random%32
pos = Ceil(P2Dist X),-70-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 1714, HitDef]
type = HitDef
trigger1 = !Var(16)
trigger1 = !NumTarget(1710)
trigger1 = !Time
attr = A,SA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium
air.animtype = Medium        ;light,medium,hard,back,up,diagup
fall.animtype = Up
priority = 8,Hit
damage = Ceil(FVar(5)*100),1
pausetime = 5,0
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-85
hitsound = S214,0+(Random%5)
guardsound = S200,2
ground.type = High      ;Low,Trip,None
air.type = High
ground.slidetime = 20
ground.hittime = 40
guard.ctrltime = 20
yaccel = .5
ground.velocity = 0,-8
air.velocity = 0,-8
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
p2facing = 1
p2sprpriority = 1
getpower = 0
givepower = 0,10
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 1710
persistent = 0

[State 1714, TargetBind]
type = TargetBind
trigger1 = MoveContact = 1
trigger1 = NumTarget(1710) && NumEnemy
trigger1 = (Target(1710),Time = 0) && (Target(1710),ID = EnemyNear,ID)
trigger1 = !(Target(1710),HitShakeOver) && (Target(1710),Pos Y > 0)
pos = Ceil(P2Dist X),Ceil(-Pos Y)
time = 1
ignoreHitPause = 1

[State 1714, TargetState]
type = TargetState
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(1710)
trigger1 = Target(1710),MoveType = H
trigger1 = Target(1710),StateType != L
trigger1 = Target(1710),Alive
value = 2001
ID = 1710
ignorehitpause = 1
persistent = 0

[State 1714, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0
movetype = I

[State 1714, VelSet]
type = VelSet
trigger1 = AnimElemTime(2) = 0
x = -3
y = -7

[State 1714, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) >= 0
y = .5

[State 1714, CtrlSet]
type = CtrlSet
trigger1 = AnimElem = 9
value = 1

[State 1714, Turn]
type = Turn
trigger1 = AnimElemTime(8) >= 0
trigger1 = P2Dist X < 0

[State 1714, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S820,0
channel = -1
lowpriority = 1

[State 1714, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 8
trigger2 = AnimElem = 11
value = S250,1
channel = -1

[State 1714, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 52

;--------------------------------------------------------------------------------------------------------------------------------------------
;AIR SONIC FLASH SLOW MOTION
[StateDef 1720]
type = A
physics = N
movetype = I
anim = 9999
ctrl = 0
velset = 0,0

[State 1720, VarSet]
type = VarSet
trigger1 = PlayerIDExist(Const(Size.ShadowOffset))
trigger1 = !Time
var(1) = Const(Size.ShadowOffset)

[State 1720, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 1720, Pause]
type = Pause
trigger1 = !Root,NumHelper(7900)
trigger1 = !Root,NumHelper(7925)
trigger1 = !Root,NumHelper(7950)
trigger1 = PlayerID(Var(1)),Life > 0
trigger1 = Time%2 = 0
time = 2
movetime = 0
pausebg = 1

[State 1720, DestroySelf]
type = DestroySelf
trigger1 = Time >= 12
trigger2 = Root,MoveType = H
trigger3 = Root,StateNo != [1700,1714]
trigger4 = !PlayerIDExist(Var(1))
trigger5 = Root,NumHelper(7900)
trigger6 = Root,NumHelper(7925)
trigger7 = Root,NumHelper(7950)
trigger8 = PlayerID(Var(1)),Life <= 0

;-------------------------------------------------------------------------------------------------------------------------------------------
;SPIN OUT 1
[StateDef 2000]
type = S
movetype = H
physics = N
velset = 0,0
sprpriority = -2
facep2 = 1

[State 2000, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 2000

[State 2000, Width]
type = Width
trigger1 = 1
edge = 30,30

[State 2000, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = GetHitVar(XVel)*Facing
persistent = 0

[State 2000, VelMul]
type = VelMul
trigger1 = AnimElemTime(2) >= 0
x = .7

[State 2000, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 2000, SelfState]
type = SelfState
trigger1 = Time >= 120
value = 0
ctrl = 1

;-------------------------------------------------------------------------------------------------------------------------------------------
;SPIN OUT 2
[StateDef 2001]
type = A
movetype = H
physics = N
velset = 0,0
sprpriority = -2
facep2 = 1

[State 2001, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 2001

[State 2001, Width]
type = Width
trigger1 = 1
edge = 30,30

[State 2001, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = GetHitVar(XVel)*Facing
y = GetHitVar(YVel)
persistent = 0

[State 2001, VelMul]
type = VelMul
trigger1 = AnimElemTime(2) >= 0
x = .7

[State 2001, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) >= 0
y = .5

[State 2001, SelfState]
type = SelfState
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 5110
ctrl = 0