;-------------------------------------------------------------------------------------------------------------------------------------------
;SONIC HURRICANE
[StateDef 3000]
type = S
physics = S
movetype = A
ctrl = 0
velset = 0,0
sprpriority = 1
facep2 = 1

[State 3000, VarSet]
type = VarSet
trigger1 = !Time
var(5) = Cond(Power >= 3000,6,Cond((Power < 3000 && Power >= 2000),5,4))

[State 3000, VarSet]
type = VarSet
trigger1 = !Time
fvar(13) = Cond(Var(5) = 6,1.3,Cond(Var(5) = 5,.8,.7))

[State 3000, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = Cond(Var(5) = 6,3002,Cond(Var(5) = 5,3001,3000))

[State 3000, PowerAdd]
type = PowerAdd
trigger1 = Time = 1
value = Cond(Var(5) = 6,-3000,Cond(Var(5) = 5,-2000,-1000))

[State 3000, NotHitBy]
type = NotHitBy
trigger1 = Var(5) < 6 && !Time
value = SCA
time = 70
[State 3000, NotHitBy]
type = NotHitBy
trigger1 = Var(5) = 6 && !Time
value = SCA
time = 112

[State 3000, SuperPause]
type = SuperPause
trigger1 = !Time && Var(5) < 6
time = 63
anim = -1
darken = 0
movetime = 63
p2defmul = 1

[State 3000, SuperPause]
type = SuperPause
trigger1 = !Time && Var(5) = 6
time = 60
anim = -1
darken = 0
movetime = 60
p2defmul = 1

[State 3000, EnvShake]
type = EnvShake
trigger1 = Anim = 3002
time = 100

[State 3000, Explod]
type = Explod
triggerall = Var(5) = 4
trigger1 = AnimElem = 2
ID = 6360
anim = 6360
pos = -43,-60
postype = P1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
supermovetime = 900
pausemovetime = 900
scale = 1.3,1.3
sprpriority = 5
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 3000, Explod]
type = Explod
triggerall = Var(5) = 5
trigger1 = AnimElem = 2
ID = 6360
anim = 6360
pos = -62,-81
postype = P1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
supermovetime = 900
pausemovetime = 900
scale = 1.3,1.3
sprpriority = 5
ownpal = 1
removeongethit = 1
ignorehitpause = 1
[State 3000, Explod]
type = Explod
triggerall = Var(5) = 5
trigger1 = AnimElem = 2
ID = 63601
anim = 6360
pos = 30,-94
postype = P1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
supermovetime = 900
pausemovetime = 900
scale = 1.3,1.3
sprpriority = 5
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 3000, Explod]
type = Explod
triggerall = Var(5) = 6
trigger1 = AnimElem = 1
ID = 6360
anim = 6360
pos = 42,-74
postype = P1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
supermovetime = 900
pausemovetime = 900
scale = 1.3,1.3
sprpriority = 5
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 3000, Explod]
type = Explod
triggerall = Var(5) = 4
;trigger1 = AnimElem = 2
trigger1 = NumExplod(6100) < 4
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
trigger1 = Time%2 = 0
ID = 6100;6020
anim = 6100;6020
postype = P1  ;p2,front,back,left,right
pos = -43,-60
facing = Cond(Random < 500,1,-1)
vfacing = Cond(Random < 500,1,-1)
bindtime = -1
removetime = -2;60
supermovetime = 900
pausemovetime = 900
scale = .1,.1;.25,.25
sprpriority = 2
ownpal = 1
ignorehitpause = 1
[State 3000, Explod]
type = Explod
triggerall = Var(5) = 4
;trigger1 = AnimElem = 2
trigger1 = NumExplod(61001) < 4
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
trigger1 = Time%2 = 0
ID = 61001;6020
anim = 6100;6020
postype = P1  ;p2,front,back,left,right
pos = 16,-65
facing = Cond(Random < 500,1,-1)
vfacing = Cond(Random < 500,1,-1)
bindtime = -1
removetime = -2;60
supermovetime = 900
pausemovetime = 900
scale = .07,.07;.2,.2
sprpriority = -1
ownpal = 1
ignorehitpause = 1

[State 3000, Explod]
type = Explod
triggerall = Var(5) = 5
;trigger1 = AnimElem = 2
trigger1 = NumExplod(6100) < 4
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
trigger1 = Time%2 = 0
ID = 6100;6020
anim = 6100;6020
postype = P1  ;p2,front,back,left,right
pos = -62,-81
facing = Cond(Random < 500,1,-1)
vfacing = Cond(Random < 500,1,-1)
bindtime = -1
removetime = -2;60
supermovetime = 900
pausemovetime = 900
scale = .1,.1;.25,.25
sprpriority = 2
ownpal = 1
ignorehitpause = 1
[State 3000, Explod]
type = Explod
triggerall = Var(5) = 5
;trigger1 = AnimElem = 2
trigger1 = NumExplod(61001) < 4
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
trigger1 = Time%2 = 0
ID = 61001;6020
anim = 6100;6020
postype = P1  ;p2,front,back,left,right
pos = 30,-94
facing = Cond(Random < 500,1,-1)
vfacing = Cond(Random < 500,1,-1)
bindtime = -1
removetime = -2;60
supermovetime = 900
pausemovetime = 900
scale = .07,.07;.2,.2
sprpriority = -1
ownpal = 1
ignorehitpause = 1

[State 3000, Explod]
type = Explod
triggerall = Var(5) = 6
;trigger1 = AnimElem = 2
trigger1 = NumExplod(6100) < 4
trigger1 = AnimElemTime(3) >= 0
trigger1 = Time%2 = 0
ID = 6100;6020
anim = 6100;6020
postype = P1  ;p2,front,back,left,right
pos = -43,-60
facing = Cond(Random < 500,1,-1)
vfacing = Cond(Random < 500,1,-1)
bindtime = -1
removetime = -2;60
supermovetime = 900
pausemovetime = 900
scale = .1,.1;.25,.25
sprpriority = 2
ownpal = 1
ignorehitpause = 1
[State 3000, Explod]
type = Explod
triggerall = Var(5) = 6
;trigger1 = AnimElem = 2
trigger1 = NumExplod(61001) < 4
trigger1 = AnimElemTime(3) >= 0
trigger1 = Time%2 = 0
ID = 61001;6020
anim = 6100;6020
postype = P1  ;p2,front,back,left,right
pos = 16,-65
facing = Cond(Random < 500,1,-1)
vfacing = Cond(Random < 500,1,-1)
bindtime = -1
removetime = -2;60
supermovetime = 900
pausemovetime = 900
scale = .07,.07;.2,.2
sprpriority = -1
ownpal = 1
ignorehitpause = 1

[State 3000, Explod]
type = Explod
triggerall = Var(5) = 6
;trigger1 = AnimElem = 2
trigger1 = NumExplod(61002) < 4
trigger1 = AnimElemTime(3) >= 0
trigger1 = Time%2 = 0
ID = 61002;6020
anim = 6100;6020
postype = P1  ;p2,front,back,left,right
pos = -43,-60
facing = Cond(Random < 500,1,-1)
vfacing = Cond(Random < 500,1,-1)
bindtime = -1
removetime = -2;60
supermovetime = 900
pausemovetime = 900
scale = .1,.1;.25,.25
sprpriority = 5
ownpal = 1
ignorehitpause = 1
[State 3000, Explod]
type = Explod
triggerall = Var(5) = 6
;trigger1 = AnimElem = 2
trigger1 = NumExplod(61003) < 4
trigger1 = AnimElemTime(3) >= 0
trigger1 = Time%2 = 0
ID = 61003;6020
anim = 6100;6020
postype = P1  ;p2,front,back,left,right
pos = 16,-65
facing = Cond(Random < 500,1,-1)
vfacing = Cond(Random < 500,1,-1)
bindtime = -1
removetime = -2;60
supermovetime = 900
pausemovetime = 900
scale = .07,.07;.2,.2
sprpriority = -2
ownpal = 1
ignorehitpause = 1

[State 3000, ModifyExplod]
type = ModifyExplod
trigger1 = Var(5) = 6
trigger1 = NumExplod(6100)
trigger1 = Time > 62
ID = 6100
scale = .1+(.1*(Time-62)),.1+(.1*(Time-62))
[State 3000, ModifyExplod]
type = ModifyExplod
trigger1 = Var(5) = 6
trigger1 = NumExplod(61001)
trigger1 = Time > 62
ID = 61001
scale = .07+(.1*(Time-62)),.07+(.1*(Time-62))

[State 3000, Explod]
type = Explod
trigger1 = Var(5) = 4
trigger1 = AnimElem = 1
ID = 6015
anim = 6015
postype = P1  ;p2,front,back,left,right
pos = -15,-55
bindtime = -1
removetime = 1
removeongethit = 1
supermovetime = 63
pausemovetime = 63
scale = .3,.3
sprpriority = 3
ownpal = 1
ignorehitpause = 1
[State 3000, Explod]
type = Explod
trigger1 = Var(5) = 4
trigger1 = AnimElem = 1
ID = 60151
anim = 6015
postype = P1  ;p2,front,back,left,right
pos = 26,-58
bindtime = -1
removetime = 1
removeongethit = 1
supermovetime = 63
pausemovetime = 63
scale = .25,.25
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 3000, Explod]
type = Explod
trigger1 = Var(5) = 4
trigger1 = AnimElem = 2
ID = 60152
anim = 6015
postype = P1  ;p2,front,back,left,right
pos = -43,-60
bindtime = -1
removetime = 60
removeongethit = 1
supermovetime = 63
pausemovetime = 63
scale = .3,.3
sprpriority = 3
ownpal = 1
ignorehitpause = 1
[State 3000, Explod]
type = Explod
trigger1 = Var(5) = 4
trigger1 = AnimElem = 2
ID = 60153
anim = 6015
postype = P1  ;p2,front,back,left,right
pos = 16,-65
bindtime = -1
removetime = 60
removeongethit = 1
supermovetime = 63
pausemovetime = 63
scale = .25,.25
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 3000, Explod]
type = Explod
trigger1 = Var(5) = 5
trigger1 = AnimElem = 2
ID = 6015
anim = 6015
postype = P1  ;p2,front,back,left,right
pos = -62,-81
bindtime = -1
removetime = 60
removeongethit = 1
supermovetime = 63
pausemovetime = 63
scale = .3,.3
sprpriority = 3
ownpal = 1
ignorehitpause = 1
[State 3000, Explod]
type = Explod
trigger1 = Var(5) = 5
trigger1 = AnimElem = 2
ID = 60151
anim = 6015
postype = P1  ;p2,front,back,left,right
pos = 30,-94
bindtime = -1
removetime = 60
removeongethit = 1
supermovetime = 63
pausemovetime = 63
scale = .25,.25
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 3000, Explod]
type = Explod
trigger1 = Var(5) = 5
trigger1 = AnimElem = 3
ID = 60152
anim = 6015
postype = P1  ;p2,front,back,left,right
pos = -49,-86
bindtime = -1
removetime = 1
removeongethit = 1
supermovetime = 63
pausemovetime = 63
scale = .3,.3
sprpriority = 3
ownpal = 1
ignorehitpause = 1
[State 3000, Explod]
type = Explod
trigger1 = Var(5) = 5
trigger1 = AnimElem = 3
ID = 60153
anim = 6015
postype = P1  ;p2,front,back,left,right
pos = 9,-109
bindtime = -1
removetime = 1
removeongethit = 1
supermovetime = 63
pausemovetime = 63
scale = .25,.25
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 3000, Explod]
type = Explod
trigger1 = Var(5) = 5
trigger1 = AnimElem = 4
ID = 60154
anim = 6015
postype = P1  ;p2,front,back,left,right
pos = 21,-65
bindtime = -1
removetime = 1
removeongethit = 1
supermovetime = 63
pausemovetime = 63
scale = .3,.3
sprpriority = 3
ownpal = 1
ignorehitpause = 1
[State 3000, Explod]
type = Explod
trigger1 = Var(5) = 5
trigger1 = AnimElem = 4
ID = 60155
anim = 6015
postype = P1  ;p2,front,back,left,right
pos = 33,-75
bindtime = -1
removetime = 1
removeongethit = 1
supermovetime = 63
pausemovetime = 63
scale = .25,.25
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 3000, Explod]
type = Explod
trigger1 = Var(5) = 6
trigger1 = AnimElem = 1
ID = 6015
anim = 6015
postype = P1  ;p2,front,back,left,right
pos = 42,-74
bindtime = -1
removetime = 60
removeongethit = 1
supermovetime = 63
pausemovetime = 63
scale = .3,.3
sprpriority = 4
ontop = 1
ownpal = 1
ignorehitpause = 1
[State 3000, Explod]
type = Explod
trigger1 = Var(5) = 6
trigger1 = AnimElem = 1
ID = 60151
anim = 6015
postype = P1  ;p2,front,back,left,right
pos = 33,-52
bindtime = -1
removetime = 60
removeongethit = 1
supermovetime = 63
pausemovetime = 63
scale = .25,.25
sprpriority = 5
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 3000, Explod]
type = Explod
trigger1 = Var(5) = 6
trigger1 = AnimElem = 2
ID = 60152
anim = 6015
postype = P1  ;p2,front,back,left,right
pos = 27,-66
bindtime = -1
removetime = 1
removeongethit = 1
supermovetime = 63
pausemovetime = 63
scale = .3,.3
sprpriority = 4
ontop = 1
ownpal = 1
ignorehitpause = 1
[State 3000, Explod]
type = Explod
trigger1 = Var(5) = 6
trigger1 = AnimElem = 2
ID = 60153
anim = 6015
postype = P1  ;p2,front,back,left,right
pos = -17,-50
bindtime = -1
removetime = 1
removeongethit = 1
supermovetime = 63
pausemovetime = 63
scale = .25,.25
sprpriority = 5
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 3000, Explod]
type = Explod
trigger1 = Var(5) = 6
trigger1 = AnimElem = 3
ID = 60154
anim = 6015
postype = P1  ;p2,front,back,left,right
pos = -43,-60
bindtime = -1
removetime = 113
removeongethit = 1
supermovetime = 63
pausemovetime = 63
scale = .3,.3
sprpriority = 4
ontop = 1
ownpal = 1
ignorehitpause = 1
[State 3000, Explod]
type = Explod
trigger1 = Var(5) = 6
trigger1 = AnimElem = 3
ID = 60155
anim = 6015
postype = P1  ;p2,front,back,left,right
pos = 16,-65
bindtime = -1
removetime = 113
removeongethit = 1
supermovetime = 63
pausemovetime = 63
scale = .25,.25
sprpriority = 5
ontop = 1
ownpal = 1
ignorehitpause = 1

[State 3000, Helper]
type = Helper
trigger1 = Var(5) = 5
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
[State 3000, Helper]
type = Helper
trigger1 = Var(5) = 5
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

[State 3000, RemoveExplod]
type = RemoveExplod
trigger1 = !Time
ID = 6005
ignorehitpause = 1
persistent = 1
[State 3000, RemoveExplod]
type = RemoveExplod
trigger1 = !Time
ID = 7009
ignorehitpause = 1
persistent = 1

[State 3000, Helper]
type = Helper
trigger1 = !Time 
ID = 9000
stateno = 9000
pos = 0,0
postype = P1
name = "BGFX"
ignorehitpause = 1
pausemovetime = 900
supermovetime = 900
persistent = 0

[State 3000, AfterImage]
type = AfterImage
trigger1 = Var(5) < 6 && AnimElem = 2
time = 70
timegap = 1
framegap = 10
length = 21
palbright = 0,0,0
palcontrast = 128,128,128
palpostbright = 0,0,0
paladd = 0,0,0
palmul = .75,.75,.75
trans = Add1

[State 3000, StopSnd]
type = StopSnd
trigger1 = !Time
channel = 0
ignorehitpause = 1
persistent = 0

[State 3000, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3000, PosAdd]
type = PosAdd
trigger1 = !Time && FrontEdgeDist < 90
x = -10

[State 3000, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(4) < 0
value = 1
ignorehitpause = 1
[State 3000, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(4) >= 0
value = 0
ignorehitpause = 1

[State 3000, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 3000, Width]
type = Width
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(2) < 0
edge = 30,0
player = 40,0
[State 3000, Width]
type = Width
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
edge = 40,0
player = 50,0
[State 3000, Width]
type = Width
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(4) < 0
edge = 70,0
player = 60,0
[State 3000, Width]
type = Width
trigger1 = AnimElemTime(4) >= 0 && AnimElemTime(5) < 0
edge = 40,0
player = 70,0
[State 3000, Width]
type = Width
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(6) < 0
edge = 30,0
player = 10,0
[State 3000, Width]
type = Width
trigger1 = AnimElemTime(6) >= 0
edge = 20,0
player = 10,0

[State 3000, Explod]
type = Explod
trigger1 = Var(5) = 4
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

[State 3000, AssertSpecial]
type = AssertSpecial
trigger1 = Time < 61
flag = NoBarDisplay

[State 3000, Pause]
type = Pause
trigger1 = Var(5) = 6 && Time = [80,112]
trigger1 = Time%2 = 0
time = 3
movetime = 0
pausebg = 1
ignorehitpause = 1

[State 3000, Helper]
type = Helper
trigger1 = Var(5) = 4
trigger1 = AnimElem = 4
name = "SonicHurricane 1"
ID = 6020
stateno = 6020
pos = 15,-60
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0

[State 3000, Helper]
type = Helper
trigger1 = Var(5) = 5
trigger1 = AnimElem = 5
name = "SonicHurricane 2"
ID = 6022
stateno = 6022
pos = 35,-60
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0

[State 3000, Helper]
type = Helper
trigger1 = Var(5) < 6
trigger1 = AnimElem = 4
ID = 6029
stateno = 6029
pos = 50,-60
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 900
supermovetime = 900
ignorehitpause = 1

[State 3000, Explod]
type = Explod
trigger1 = Var(5) = 6
trigger1 = Time >= 62 && Time < 112
trigger1 = Time%7 = 0
ID = 6860
anim = 6860
pos = 120,0
postype = P1
vel = 5,0
facing = -1
bindtime = 1
removetime = -2
scale = .5,.5
sprpriority = 8
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
[State 3000, Explod]
type = Explod
trigger1 = Var(5) = 6
trigger1 = Time >= 62 && Time < 112
trigger1 = Time%7 = 0
ID = 68601
anim = 6860
pos = -120,0
postype = P1
vel = -5,0
bindtime = 1
removetime = -2
scale = .5,.5
sprpriority = 9
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[State 3000, Explod]
type = Explod
trigger1 = Var(5) = 6
trigger1 = Time >= 61; && Time < 112
trigger1 = Time%5 = 0
ID = 6041
anim = 6041
pos = -43,-60
postype = P1
bindtime = 1
removetime = -2
removeongethit = 1
scale = .5,.5
sprpriority = 6
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
[State 3000, Explod]
type = Explod
trigger1 = Var(5) = 6
trigger1 = Time >= 61; && Time < 112
trigger1 = Time%5 = 0
ID = 60411
anim = 6041
pos = 16,-65
postype = P1
bindtime = 1
removetime = -2
removeongethit = 1
scale = .5,.5
sprpriority = 0
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[State 3000, Explod]
type = Explod
trigger1 = Var(5) = 6
trigger1 = Time = 62
ID = 7900
anim = 7900
pos = ScreenWidth/2,ScreenHeight/2
space = Screen
removetime = -2
removeongethit = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = -11
ownpal = 1
ignorehitpause = 1

;[State 3000, Explod]
;type = Explod
;trigger1 = Var(5) = 6
;trigger1 = AnimElemTime(3) = 1
;ID = 7775
;anim = 7775
;pos = Ceil(GameWidth/2),Ceil(GameHeight/2)
;postype = Left
;bindtime = -1
;removetime = -2
;removeongethit = 1
;supermovetime = 9999
;pausemovetime = 9999
;scale = 500,500
;sprpriority = -5
;ownpal = 1
;ignorehitpause = 1
;persistent = 0

[State 3000, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3000)
trigger1 = !NumExplod(3000)
trigger1 = Target(3000),Time = 1
trigger1 = Target(3000),StateType != L
ID = 3000
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3000),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 6
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[State 3000, HitDef]
type = HitDef
trigger1 = Var(5) = 6
trigger1 = NumEnemy
trigger1 = !NumTarget(3000)
trigger1 = AnimElemTime(3) >= 0
attr = A,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Cond(AnimElemTime(3) < 2,(Ceil(FVar(5)*120)),(Ceil(FVar(5)*50))),1
pausetime = 0,1
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,0
hitsound = -1
guardsound = S200,3
ground.type = High    ;Low,Trip,None
air.type = High
ground.slidetime = 10
ground.hittime = 10
guard.hittime = 5
ground.velocity = Cond(P2Dist X < 0,25,-25),-7
guard.velocity = -3
air.velocity = Cond(P2Dist X < 0,25,-25),-7
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = .1
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
kill = 0
getpower = 0
givepower = 0,15
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
p2facing = 1
p1sprpriority = 1
hitonce = 1
ID = 3000
persistent = 1

[State 3000, TargetState]
type = TargetState
trigger1 = NumTarget(3000)
trigger1 = !MoveGuarded
trigger1 = Target(3000),StateNo != [3050,3051]
value = 3050
ID = 3000
ignorehitpause = 1

[State 3000, StateTypeSet]
type = StateTypeSet
trigger1 = Var(5) = 2 && AnimElemTime(1) >= 0
statetype = C        ;I,A,H

[State 3000, Helper]
type = Helper
trigger1 = !NumHelper(9500) && Abs(P2Dist Y) < 140
trigger1 = Time = 1;Var(5) < 6
ID = 9500
stateno = 9500
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

;[State 3000, Helper]
;type = Helper
;trigger1 = !NumHelper(9600) && Abs(P2Dist Y) < 140
;trigger1 = NumTarget(3000)
;trigger1 = Anim = 3002
;ID = 9600
;stateno = 9600
;name = "ZoomHelper"
;facing = 1
;pos = 0,0
;postype = P1
;supermovetime = 9999
;pausemovetime = 9999
;size.xscale = Const(Size.XScale)
;size.yScale = Const(Size.YScale)
;size.proj.doscale = Target(3000),ID; Give Parent ID to Child
;ownpal = 1
;ignorehitpause = 1
;persistent = 0

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Var(5) < 6
trigger1 = AnimElem = 2
value = S6360,0
volumescale = 100
channel = -1
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 6
trigger1 = AnimElem = 1
value = S6360,0
volumescale = 100
channel = -1

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 4
trigger1 = AnimElem = 1
value = S3000,0
channel = 0
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 4
trigger1 = AnimElemTime(1) = 0
value = S3001,1
channel = 3
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 4
trigger1 = AnimElemTime(2) = 0
value = S3001,1
channel = 4
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 4
trigger1 = AnimElemTime(2) = 1
value = S3001,1
channel = 5
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 4
trigger1 = AnimElem = 3
value = S3000,3
channel = 0

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 5
trigger1 = AnimElem = 1
value = S3000,1
channel = 0
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 5
trigger1 = AnimElem = 3
value = S3000,4
channel = 0
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 5
trigger1 = AnimElemTime(1) = 0
value = S3001,1
channel = 6

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 6
trigger1 = AnimElemTime(3) = 0
value = S1000,4
channel = 2
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 6
trigger1 = AnimElemTime(3) = 0
value = S1000,4
channel = 3
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 6
trigger1 = AnimElemTime(3) = 0
value = S1000,4
channel = 4

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 6
trigger1 = Time = 66
value = S3200,1
channel = -1
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 6
trigger1 = Time = 66
value = S3200,1
channel = -1

[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 6
trigger1 = AnimElem = 1
value = S3000,2
channel = 0
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 6
trigger1 = AnimElemTime(1) = 56
value = S3003,0
channel = 1
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 6
trigger1 = AnimElemTime(1) = 56
value = S3003,0
channel = -1
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 6
trigger1 = Time = 85
value = S3002,0
channel = -1
[State 3000, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 6
trigger1 = Time = 80
value = S3002,4
channel = -1

[State 3000, StopSnd]
type = StopSnd
trigger1 = Var(5) = 4
trigger1 = AnimElem = 4
channel = 3
ignorehitpause = 1
[State 3000, StopSnd]
type = StopSnd
trigger1 = Var(5) = 4
trigger1 = AnimElem = 4
channel = 4
ignorehitpause = 1
[State 3000, StopSnd]
type = StopSnd
trigger1 = Var(5) = 4
trigger1 = AnimElem = 4
channel = 5
ignorehitpause = 1

[State 3000, StopSnd]
type = StopSnd
trigger1 = Var(5) = 5
trigger1 = !AnimTime
channel = 6
ignorehitpause = 1

[State 3000, ChangeState]
type = ChangeState
trigger1 = Var(5) = 4
trigger1 = Time >= 120
value = 3003
ctrl = 0
[State 3000, ChangeState]
type = ChangeState
trigger1 = Var(5) = 5
trigger1 = !AnimTime
value = 0
ctrl = 1
[State 3000, ChangeState]
type = ChangeState
trigger1 = Var(5) = 6
trigger1 = Time >= 112
value = 3004
ctrl = 0

;-------------------------------------------------------------------------------------------------------------------------------------------
;SONIC HURRICANE END
[StateDef 3003]
type = S
physics = S
movetype = I
anim = 3003
ctrl = 0
sprpriority = 1

[State 3003, Explod]
type = Explod
trigger1 = PrevStateNo = 3004
trigger1 = !Time
ID = 60011
anim = 60011
pos = 15,-60
postype = P1  ;p2,front,back,left,right
angle = 7
bindtime = 1
removetime = -2
supermovetime = 900
pausemovetime = 900
scale = .6,.6
sprpriority = 3
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 3003, Explod]
type = Explod
trigger1 = PrevStateNo = 3004
trigger1 = !Time
ID = 7011
anim = 7011
pos = 0,0
postype = P1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
pausemovetime = 0
supermovetime = 0
scale = 1.1,1
sprpriority = 4
ownpal = 1
ignorehitpause = 1

[State 3003, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 1
ID = 6021
ignorehitpause = 1
persistent = 1
[State 3003, RemoveExplod]
type = RemoveExplod
trigger1 = 1
ID = 7010
ignorehitpause = 1
persistent = 1

[State 3003, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-------------------------------------------------------------------------------------------------------------------------------------------
;SONIC HURRICANE END H
[StateDef 3004]
type = C
physics = C
movetype = A
anim = 3004
ctrl = 0
sprpriority = 1

[State 3004, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = SCA
time = 20

[State 3004, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 3004, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 2
ID = 6015
ignorehitpause = 1
[State 3004, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 2
ID = 60151
ignorehitpause = 1
[State 3004, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 2
ID = 60152
ignorehitpause = 1
[State 3004, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 2
ID = 60153
ignorehitpause = 1
[State 3004, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 2
ID = 60154
ignorehitpause = 1
[State 3004, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElem = 2
ID = 60155
ignorehitpause = 1

[State 3004, AfterImage]
type = AfterImage
trigger1 = AnimElem = 1
time = 70
timegap = 1
framegap = 10
length = 21
palbright = 0,0,0
palcontrast = 128,128,128
palpostbright = 0,0,0
paladd = 0,0,0
palmul = .75,.75,.75
trans = Add1

[State 3004, Explod]
type = Explod
trigger1 = AnimElem = 2
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

[State 3004, Explod]
type = Explod
trigger1 = AnimElem = 3
ID = 6021
anim = 6021
pos = 15,-60
postype = P1  ;p2,front,back,left,right
bindtime = 1
removetime = -1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 6
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 3004, Explod]
type = Explod
trigger1 = AnimElem = 3
ID = 7010
anim = 7010
pos = 0,0
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

[State 3004, Helper]
type = Helper
trigger1 = AnimElem = 3
ID = 6029
stateno = 6029
pos = 50,-60
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 900
supermovetime = 900
ignorehitpause = 1

[State 3004, Helper]
type = Helper
trigger1 = !NumHelper(1)
trigger1 = AnimElemTime(3) = 0
ID = 1
stateno = 6030
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1
;[State 3004, Helper]
;type = Helper
;trigger1 = !NumHelper(2)
;trigger1 = AnimElemTime(3) = 1
;ID = 2
;stateno = 6030
;postype = P1    ;p2,front,back,left,right
;ownpal = 1
;pausemovetime = 0
;supermovetime = 0
;ignorehitpause = 1
[State 3004, Helper]
type = Helper
trigger1 = !NumHelper(3)
trigger1 = AnimElemTime(3) = 2
ID = 3
stateno = 6030
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1
;[State 3004, Helper]
;type = Helper
;trigger1 = !NumHelper(4)
;trigger1 = AnimElemTime(3) = 3
;ID = 4
;stateno = 6030
;postype = P1    ;p2,front,back,left,right
;facing = -1
;ownpal = 1
;pausemovetime = 0
;supermovetime = 0
;ignorehitpause = 1

[State 3004, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3004)
trigger1 = !NumExplod(3004)
trigger1 = Target(3004),StateType != L
ID = 3004
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3004),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 6
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0
[State 3004, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3005)
trigger1 = !NumExplod(3005)
trigger1 = Target(3005),StateType != L
ID = 3005
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3005),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 6
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0
[State 3004, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3006)
trigger1 = !NumExplod(3006)
trigger1 = Target(3006),StateType != L
ID = 3006
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3006),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 6
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0
[State 3004, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3007)
trigger1 = !NumExplod(3007)
trigger1 = Target(3007),StateType != L
ID = 3007
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3007),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 6
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0
[State 3004, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3008)
trigger1 = !NumExplod(3008)
trigger1 = Target(3008),StateType != L
ID = 3008
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3008),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 6
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0
[State 3004, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3009)
trigger1 = !NumExplod(3009)
trigger1 = Target(3009),StateType != L
ID = 3009
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3009),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 6
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0
[State 3004, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3010)
trigger1 = !NumExplod(3010)
trigger1 = Target(3010),StateType != L
ID = 3010
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3010),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 6
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0
[State 3004, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3011)
trigger1 = !NumExplod(3011)
trigger1 = Target(3011),StateType != L
ID = 3011
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3011),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 6
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0
[State 3004, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3012)
trigger1 = !NumExplod(3012)
trigger1 = Target(3012),StateType != L
ID = 3012
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3012),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 6
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0
[State 3004, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3013)
trigger1 = !NumExplod(3013)
trigger1 = Target(3013),StateType != L
ID = 3013
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3013),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 6
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0
[State 3004, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3014)
trigger1 = !NumExplod(3014)
trigger1 = Target(3014),StateType != L
ID = 3014
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3014),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 6
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0
[State 3004, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3015)
trigger1 = !NumExplod(3015)
trigger1 = Target(3015),StateType != L
ID = 3015
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3015),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 6
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0
[State 3004, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3016)
trigger1 = !NumExplod(3016)
trigger1 = Target(3016),StateType != L
ID = 3016
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3016),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 6
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0
[State 3004, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3017)
trigger1 = !NumExplod(3017)
trigger1 = Target(3017),StateType != L
ID = 3017
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3017),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 6
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0
[State 3004, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3018)
trigger1 = !NumExplod(3018)
trigger1 = Target(3018),StateType != L
ID = 3018
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3018),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 6
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0
[State 3004, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3019)
trigger1 = !NumExplod(3019)
trigger1 = Target(3019),StateType != L
ID = 3019
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3019),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 6
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0
[State 3004, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3020)
trigger1 = !NumExplod(3020)
trigger1 = Target(3020),StateType != L
ID = 3020
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3020),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 6
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0
[State 3004, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3021)
trigger1 = !NumExplod(3021)
trigger1 = Target(3021),StateType != L
ID = 3021
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3021),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 6
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0
[State 3004, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3022)
trigger1 = !NumExplod(3022)
trigger1 = Target(3022),StateType != L
ID = 3022
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3022),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 6
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0
[State 3004, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3023)
trigger1 = !NumExplod(3023)
trigger1 = Target(3023),StateType != L
ID = 3023
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3023),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 6
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 3004, HitDef]
type = HitDef
trigger1 = NumEnemy
trigger1 = Time = 5
attr = A,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*30),1
pausetime = 0,3
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-60
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = High    ;Low,Trip,None
air.type = High
ground.slidetime = 10
ground.hittime = 10
guard.hittime = 5
ground.velocity = Cond(P2Dist X < 0,-12,12),-12
air.velocity = Cond(P2Dist X < 0,-12,12),Cond(EnemyNear,Pos Y <= -80,0,-3)
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
yaccel = .5
forcestand = 0
fall = 1
fall.recover = 0
air.fall = 1
kill = 0
getpower = 0
givepower = 0,15
envshake.time = 18
envshake.freq = 120
envshake.ampl = 6
p2facing = 1
p1sprpriority = 4
hitonce = 1
ID = 3004
[State 3004, HitDef]
type = HitDef
trigger1 = NumEnemy
trigger1 = Time = 10
attr = A,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*30),1
pausetime = 0,3
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-60
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = Low    ;Low,Trip,None
air.type = Low
ground.slidetime = 10
ground.hittime = 10
guard.hittime = 5
ground.velocity = Cond(P2Dist X < 0,-12,12),-10
air.velocity = Cond(P2Dist X < 0,-12,12),Cond(EnemyNear,Pos Y <= -80,0,-3)
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
ID = 3005
[State 3004, HitDef]
type = HitDef
trigger1 = NumEnemy
trigger1 = Time = 15
attr = A,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*30),1
pausetime = 0,3
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-60
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = High    ;Low,Trip,None
air.type = High
ground.slidetime = 10
ground.hittime = 10
guard.hittime = 5
ground.velocity = Cond(P2Dist X < 0,-12,12),-10
air.velocity = Cond(P2Dist X < 0,-12,12),Cond(EnemyNear,Pos Y <= -80,0,-3)
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
ID = 3006
[State 3004, HitDef]
type = HitDef
trigger1 = NumEnemy
trigger1 = Time = 20
attr = A,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*30),1
pausetime = 0,3
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-60
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = Low    ;Low,Trip,None
air.type = Low
ground.slidetime = 10
ground.hittime = 10
guard.hittime = 5
ground.velocity = Cond(P2Dist X < 0,-12,12),-10
air.velocity = Cond(P2Dist X < 0,-12,12),Cond(EnemyNear,Pos Y <= -80,0,-3)
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
ID = 3007
[State 3004, HitDef]
type = HitDef
trigger1 = NumEnemy
trigger1 = Time = 25
attr = A,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*30),1
pausetime = 0,3
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-60
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = High    ;Low,Trip,None
air.type = High
ground.slidetime = 10
ground.hittime = 10
guard.hittime = 5
ground.velocity = Cond(P2Dist X < 0,-12,12),-10
air.velocity = Cond(P2Dist X < 0,-12,12),Cond(EnemyNear,Pos Y <= -80,0,-3)
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
ID = 3008
[State 3004, HitDef]
type = HitDef
trigger1 = NumEnemy
trigger1 = Time = 30
attr = A,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*30),1
pausetime = 0,3
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-60
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = Low    ;Low,Trip,None
air.type = Low
ground.slidetime = 10
ground.hittime = 10
guard.hittime = 5
ground.velocity = Cond(P2Dist X < 0,-12,12),-10
air.velocity = Cond(P2Dist X < 0,-12,12),Cond(EnemyNear,Pos Y <= -80,0,-3)
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
ID = 3009
[State 3004, HitDef]
type = HitDef
trigger1 = NumEnemy
trigger1 = Time = 35
attr = A,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*30),1
pausetime = 0,3
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-60
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = High    ;Low,Trip,None
air.type = High
ground.slidetime = 10
ground.hittime = 10
guard.hittime = 5
ground.velocity = Cond(P2Dist X < 0,-12,12),-10
air.velocity = Cond(P2Dist X < 0,-12,12),Cond(EnemyNear,Pos Y <= -80,0,-3)
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
ID = 3010
[State 3004, HitDef]
type = HitDef
trigger1 = NumEnemy
trigger1 = Time = 40
attr = A,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*30),1
pausetime = 0,3
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-60
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = Low    ;Low,Trip,None
air.type = Low
ground.slidetime = 10
ground.hittime = 10
guard.hittime = 5
ground.velocity = Cond(P2Dist X < 0,-12,12),-10
air.velocity = Cond(P2Dist X < 0,-12,12),Cond(EnemyNear,Pos Y <= -80,0,-2)
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
ID = 3011
[State 3004, HitDef]
type = HitDef
trigger1 = NumEnemy
trigger1 = Time = 45
attr = A,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*30),1
pausetime = 0,3
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-60
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = High    ;Low,Trip,None
air.type = High
ground.slidetime = 10
ground.hittime = 10
guard.hittime = 5
ground.velocity = Cond(P2Dist X < 0,-12,12),-10
air.velocity = Cond(P2Dist X < 0,-12,12),Cond(EnemyNear,Pos Y <= -80,0,-2)
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
ID = 3012
[State 3004, HitDef]
type = HitDef
trigger1 = NumEnemy
trigger1 = Time = 50
attr = A,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*30),1
pausetime = 0,3
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-60
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = Low    ;Low,Trip,None
air.type = Low
ground.slidetime = 10
ground.hittime = 10
guard.hittime = 5
ground.velocity = Cond(P2Dist X < 0,-12,12),-10
air.velocity = Cond(P2Dist X < 0,-12,12),Cond(EnemyNear,Pos Y <= -80,0,-2)
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
ID = 3013
[State 3004, HitDef]
type = HitDef
trigger1 = NumEnemy
trigger1 = Time = 55
attr = A,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*30),1
pausetime = 0,3
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-60
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = High    ;Low,Trip,None
air.type = High
ground.slidetime = 10
ground.hittime = 10
guard.hittime = 5
ground.velocity = Cond(P2Dist X < 0,-12,12),-10
air.velocity = Cond(P2Dist X < 0,-12,12),Cond(EnemyNear,Pos Y <= -80,0,-2)
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
ID = 3014
[State 3004, HitDef]
type = HitDef
trigger1 = NumEnemy
trigger1 = Time = 60
attr = A,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*30),1
pausetime = 0,3
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-60
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = Low    ;Low,Trip,None
air.type = Low
ground.slidetime = 10
ground.hittime = 10
guard.hittime = 5
ground.velocity = Cond(P2Dist X < 0,-12,12),-10
air.velocity = Cond(P2Dist X < 0,-12,12),Cond(EnemyNear,Pos Y <= -80,0,-2)
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
ID = 3015
[State 3004, HitDef]
type = HitDef
trigger1 = NumEnemy
trigger1 = Time = 65
attr = A,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*30),1
pausetime = 0,3
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-60
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = High    ;Low,Trip,None
air.type = High
ground.slidetime = 10
ground.hittime = 10
guard.hittime = 5
ground.velocity = Cond(P2Dist X < 0,-12,12),-10
air.velocity = Cond(P2Dist X < 0,-12,12),Cond(EnemyNear,Pos Y <= -80,0,-2)
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
ID = 3016
[State 3004, HitDef]
type = HitDef
trigger1 = NumEnemy
trigger1 = Time = 70
attr = A,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*30),1
pausetime = 0,3
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-60
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = Low    ;Low,Trip,None
air.type = Low
ground.slidetime = 10
ground.hittime = 10
guard.hittime = 5
ground.velocity = Cond(P2Dist X < 0,-12,12),-10
air.velocity = Cond(P2Dist X < 0,-12,12),Cond(EnemyNear,Pos Y <= -80,0,-2)
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
ID = 3017
[State 3004, HitDef]
type = HitDef
trigger1 = NumEnemy
trigger1 = Time = 75
attr = A,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*30),1
pausetime = 0,3
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-60
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = High    ;Low,Trip,None
air.type = High
ground.slidetime = 10
ground.hittime = 10
guard.hittime = 5
ground.velocity = Cond(P2Dist X < 0,-12,12),-10
air.velocity = Cond(P2Dist X < 0,-12,12),Cond(EnemyNear,Pos Y <= -80,0,-2)
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
ID = 3018
[State 3004, HitDef]
type = HitDef
trigger1 = NumEnemy
trigger1 = Time = 80
attr = A,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*30),1
pausetime = 0,3
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-60
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = Low    ;Low,Trip,None
air.type = Low
ground.slidetime = 10
ground.hittime = 10
guard.hittime = 5
ground.velocity = Cond(P2Dist X < 0,-12,12),-10
air.velocity = Cond(P2Dist X < 0,-12,12),Cond(EnemyNear,Pos Y <= -80,0,-2)
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
ID = 3019
[State 3004, HitDef]
type = HitDef
trigger1 = NumEnemy
trigger1 = Time = 85
attr = A,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*30),1
pausetime = 0,3
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-60
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = High    ;Low,Trip,None
air.type = High
ground.slidetime = 10
ground.hittime = 10
guard.hittime = 5
ground.velocity = Cond(P2Dist X < 0,-12,12),-10
air.velocity = Cond(P2Dist X < 0,-12,12),Cond(EnemyNear,Pos Y <= -80,0,-2)
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
ID = 3020
[State 3004, HitDef]
type = HitDef
trigger1 = NumEnemy
trigger1 = Time = 90
attr = A,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*30),1
pausetime = 0,3
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-60
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = Low    ;Low,Trip,None
air.type = Low
ground.slidetime = 10
ground.hittime = 10
guard.hittime = 5
ground.velocity = Cond(P2Dist X < 0,-12,12),-10
air.velocity = Cond(P2Dist X < 0,-12,12),Cond(EnemyNear,Pos Y <= -80,0,-2)
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
ID = 3021
[State 3004, HitDef]
type = HitDef
trigger1 = NumEnemy
trigger1 = Time = 95
attr = A,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*30),1
pausetime = 0,3
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-60
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = High    ;Low,Trip,None
air.type = High
ground.slidetime = 10
ground.hittime = 10
guard.hittime = 5
ground.velocity = Cond(P2Dist X < 0,-12,12),-10
air.velocity = Cond(P2Dist X < 0,-12,12),Cond(EnemyNear,Pos Y <= -80,0,-2)
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
ID = 3022
[State 3004, HitDef]
type = HitDef
trigger1 = Time = 100
attr = A,HP        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = M         ;HLA
animtype = DiagUp          ;light,medium,hard,back,up,diagup
air.animtype = DiagUp
fall.animtype = DiagUp
priority = 11,Hit
damage = Ceil(FVar(5)*30),1
pausetime = 0,3
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-60
hitsound = S214,0+(Random%2)
guardsound = S200,3
ground.type = Low    ;Low,Trip,None
air.type = Low
ground.slidetime = 10
ground.hittime = 10
guard.hittime = 5
ground.velocity = Cond(P2Dist X < 0,-8,8),-8
air.velocity = Cond(P2Dist X < 0,-8,8),-8
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
p2facing = Cond(P2Dist X < 0,1,-1)
p1sprpriority = 4
hitonce = 1
ID = 3023

[State 3004, Helper]
type = Helper
trigger1 = NumEnemy
trigger1 = !NumHelper(7014)
trigger1 = AnimElem = 3
ID = 7014
stateno = 7014
name = "Maelstrom Pull"
postype = P2
pos = EnemyNear,Const(Size.Ground.Back)-25,-Ceil(Enemy,Pos Y)
size.ground.back = 5
size.ground.front = 5
size.height = 240
persistent = 0

[State 3004, StopSnd]
type = StopSnd
trigger1 = AnimElem = 1
channel = 15
ignorehitpause = 1
[State 3004, StopSnd]
type = StopSnd
trigger1 = AnimElem = 1
channel = 16
ignorehitpause = 1
[State 3004, StopSnd]
type = StopSnd
trigger1 = AnimElem = 1
channel = 17
ignorehitpause = 1

[State 3004, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S3000,5
channel = 0
[State 3004, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S3000,5
channel = -1

[State 3004, PlaySnd]
type = PlaySnd
trigger1 = Time%9 = 0
value = S3001,0
channel = -1

[State 3004, ChangeState]
type = ChangeState
trigger1 = Time >= 110;110
value = 3003
ctrl = 0

;-------------------------------------------------------------------------------------------------------------------------------------------
;WALL BOUNCE 1
[StateDef 3050]
type = A
movetype = H
physics = N

[State 3050, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 3050, PosFreeze]
type = PosFreeze
trigger1 = !HitShakeOver
value = 1

[State 3050, ChangeAnim]
type = ChangeAnim
trigger1 = !HitShakeOver
value = 5030

[State 3050, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030 && !AnimTime
value = Cond(SelfAnimExist(5035),5035,5050)

[State 3050, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5035 && !AnimTime
value = 5050

[State 3050, VelAdd]
type = VelAdd
trigger1 = HitShakeOver
y = .5

[State 3050, VelSet]
type = VelSet
trigger1 = HitShakeOver
x = GetHitVar(XVel)*Facing
y = GetHitVar(YVel)
persistent = 0

[State 3050, ChangeState]
type = Changestate
triggerall = HitShakeOver
trigger1 = BackEdgeDist <= 1 && Time > 5
trigger2 = FrontEdgeDist <= 1 && Time > 5
value = 3051

[State 3050, SelfState]
type = SelfState
trigger1 = HitShakeOver && Vel Y > 0 && Pos Y >= Const(Movement.Air.GetHit.GroundLevel)
value = 5100

;-------------------------------------------------------------------------------------------------------------------------------------------
;WALL BOUNCE 2
[StateDef 3051]
type = A
movetype = H
physics = N
velset = 0,0

[State 3051, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time && Anim != 5052
value = 3051

[State 3051, ChangeAnim]
type = ChangeAnim
trigger1 = SelfAnimExist(5052)
trigger1 = Anim = 3051 && AnimElem = 3
value = 5052

[State 3051, Turn]
type = Turn
trigger1 = Time = 9

[State 3051, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 3051, VelSet]
type = VelSet
trigger1 = Time = 9
x = -3;-Abs(P2Dist X/60)
y = -7.5

[State 3051, VelAdd]
type = VelAdd
trigger1 = Anim = 3051 && AnimElemTime(3) >= 0
trigger2 = Anim = 5052 && Time > 10
y = .35

[State 3051, SelfState]
type = SelfState
trigger1 = Pos Y >= Const(Movement.Air.GetHit.GroundLevel)
value = 5100

;-------------------------------------------------------------------------------------------------------------------------------------------
;SOMERSAULT STRIKE
[StateDef 3100]
type = S
physics = S
movetype = A
ctrl = 0
velset = 0,0
sprpriority = 1
facep2 = 1

[State 3100, VarSet]
type = VarSet
trigger1 = !Time
var(5) = Cond(Power >= 3000,6,Cond((Power < 3000 && Power >= 2000),5,4))

[State 3100, VarSet]
type = VarSet
trigger1 = !Time
fvar(13) = Cond(Var(5) = 6,.9,Cond(Var(5) = 5,.8,.7))

[State 3100, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = Cond(Var(5) = 6,3102,Cond(Var(5) = 5,3101,3100))

[State 3100, PowerAdd]
type = PowerAdd
trigger1 = Time = 1
value = Cond(Var(5) = 6,-3000,Cond(Var(5) = 5,-2000,-1000))

[State 3100, StopSnd]
type = StopSnd
trigger1 = !Time
channel = 0
ignorehitpause = 1
persistent = 0

[State 3100, SuperPause]
type = SuperPause
trigger1 = Var(5) < 6
trigger1 = !Time
time = 62
anim = -1
sound = S6360,0
movetime = 62
darken = 0
p2defmul = 1

[State 3100, SuperPause]
type = SuperPause
trigger1 = Var(5) = 6
trigger1 = !Time
time = 65
anim = -1
sound = S6360,0
movetime = 65
darken = 0
p2defmul = 1

[State 3100, AssertSpecial]
type = AssertSpecial
trigger1 = Var(5) < 6
trigger1 = Time < 62
flag = NoBarDisplay

[State 3100, AssertSpecial]
type = AssertSpecial
trigger1 = Var(5) = 6
trigger1 = Time < 100
flag = NoBarDisplay
ignorehitpause = 1

[State 3100, Explod]
type = Explod
trigger1 = !Time
ID = 6360
anim = 6360
pos = 15,-5
postype = P1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
supermovetime = 900
pausemovetime = 900
scale = 1.3,1.3
sprpriority = 5
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 3100, Helper]
type = Helper
trigger1 = !Time
ID = 9010
stateno = 9010
pos = 0,0
postype = P2
name = "BGFX"
ignorehitpause = 1
pausemovetime = 900
supermovetime = 900
persistent = 0

[State 3100, AfterImage]
type = AfterImage
trigger1 = Time = 61
time = Cond(Var(5) < 6,110,1)
timegap = 1
framegap = 10
length = 21
palbright = 0,0,0
palcontrast = 128,128,128
palpostbright = 0,0,0
paladd = 0,0,0
palmul = .75,.75,.75
trans = Add1

[State 3100, Width]
type = Width
trigger1 = Var(5) = 4
trigger1 = AnimElemTime(5) > 0 && AnimElemTime(18) < 0
edge = 35,0
player = 15,0
[State 3100, Width]
type = Width
trigger1 = Var(5) = 4
trigger1 = AnimElemTime(18) > 0
edge = 35,0
player = 15,0
[State 3100, Width]
type = Width
trigger1 = Var(5) = 4
trigger1 = AnimElemTime(19) > 0
edge = 35,0
player = 15,0
[State 3100, Width]
type = Width
trigger1 = Var(5) = 4
trigger1 = AnimElemTime(20) > 0
edge = 35,0
player = 15,0
[State 3100, Width]
type = Width
trigger1 = Var(5) = 4
trigger1 = AnimElemTime(21) > 0
edge = 35,0
player = 15,0
[State 3100, Width]
type = Width
trigger1 = Var(5) = 4
trigger1 = AnimElemTime(22) > 0
edge = 35,0
player = 15,0
[State 3100, Width]
type = Width
trigger1 = Var(5) = 4
trigger1 = AnimElemTime(23) > 0
edge = 40,0
player = 15,0
[State 3100, Width]
type = Width
trigger1 = Var(5) = 4
trigger1 = AnimElemTime(24) > 0
edge = 42,0
player = 15,0
[State 3100, Width]
type = Width
trigger1 = Var(5) = 4
trigger1 = AnimElemTime(25) > 0 && AnimElemTime(32) < 0
edge = 44,0
player = 25,0
[State 3100, Width]
type = Width
trigger1 = Var(5) = 4
trigger1 = AnimElemTime(32) >= 0
edge = 1,0
player = 45,0
[State 3100, Width]
type = Width
trigger1 = Var(5) = 4
trigger1 =  AnimElemTime(35) >= 0
edge = 30,0
player = 0,0
ignorehitpause = 1
persistent = 1

[State 3100, Width]
type = Width
trigger1 = Var(5) = 5
trigger1 = AnimElemTime(5) > 0 && AnimElemTime(18) < 0
edge = 28,0
player = 15,0
[State 3100, Width]
type = Width
trigger1 = Var(5) = 5
trigger1 = AnimElemTime(18) > 0
edge = 30,0
player = 15,0
[State 3100, Width]
type = Width
trigger1 = Var(5) = 5
trigger1 = AnimElemTime(19) > 0
edge = 30,0
player = 15,0
[State 3100, Width]
type = Width
trigger1 = Var(5) = 5
trigger1 = AnimElemTime(20) > 0
edge = 30,0
player = 15,0
[State 3100, Width]
type = Width
trigger1 = Var(5) = 5
trigger1 = AnimElemTime(21) > 0
edge = 30,0
player = 15,0
[State 3100, Width]
type = Width
trigger1 = Var(5) = 5
trigger1 = AnimElemTime(22) > 0
edge = 30,0
player = 15,0
[State 3100, Width]
type = Width
trigger1 = Var(5) = 5
trigger1 = AnimElemTime(23) > 0
edge = 45,0
player = 25,0
[State 3100, Width]
type = Width
trigger1 = Var(5) = 5
trigger1 = AnimElemTime(24) > 0
edge = 55,0
player = 35,0
[State 3100, Width]
type = Width
trigger1 = Var(5) = 5
trigger1 = AnimElemTime(25) > 0 && AnimElemTime(27) < 0
edge = 55,0
player = 35,0
[State 3100, Width]
type = Width
trigger1 = Var(5) = 5
trigger1 = AnimElemTime(27) > 0 && AnimElemTime(32) < 0
edge = 30,0
player = 25,0
[State 3100, Width]
type = Width
trigger1 = Var(5) = 5
trigger1 = AnimElemTime(32) >= 0
edge = 1,0
player = 45,0
[State 3100, Width]
type = Width
trigger1 = Var(5) = 5
trigger1 =  AnimElemTime(35) >= 0
edge = 30,0
player = 0,0
ignorehitpause = 1
persistent = 1

[State 3100, Width]
type = Width
trigger1 = Var(5) = 6
trigger1 = AnimElemTime(7) < 0
edge = 40,0
player = 5,0
[State 3100, Width]
type = Width
trigger1 = Var(5) = 6
trigger1 = AnimElemTime(7) >= 0
edge = 10,0
player = 25,0
ignorehitpause = 1
persistent = 1

[State 3100, PlayerPush]
type = PlayerPush
trigger1 = Var(5) < 6
trigger1 = AnimElemTime(36) < 0
value = 1
[State 3100, PlayerPush]
type = PlayerPush
trigger1 = Var(5) < 6
trigger1 = AnimElemTime(36) >= 0
value = 0
ignorehitpause = 1
persistent = 1

[State 3100, PlayerPush]
type = PlayerPush
trigger1 = Var(5) = 6
value = 1

[State 3100, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(3) = [0,1]
x = 4
ignorehitpause = 0

[State 3100, Helper]
type = Helper
triggerall = Var(5) = 4
trigger1 = AnimElem = 5
trigger2 = AnimElem = 18
trigger3 = AnimElem = 31
name = "Dust FX"
ID = 7000
stateno = 7000
postype = P1    ;p2,front,back,left,right
facing = 1
ownpal = 1
[State 3100, Helper]
type = Helper
triggerall = Var(5) = 5
trigger1 = AnimElem = 5
trigger2 = AnimElem = 20
trigger3 = AnimElem = 31
name = "Dust FX"
ID = 7000
stateno = 7000
postype = P1    ;p2,front,back,left,right
facing = 1
ownpal = 1

[State 3100, Explod]
type = Explod
trigger1 = AnimElem = 14
trigger2 = AnimElem = 27
ID = 7002
anim = 7002
pos = 5,0
postype = P1  ;p2,front,back,left,right
supermovetime = 0
pausemovetime = 0
scale = .6,.5
sprpriority = -5
ownpal = 1

[State 3100, Explod]
type = Explod
trigger1 = AnimElem = 32
ID = 7006
anim = 7006
pos = -10,-10
postype = P1  ;p2,front,back,left,right
angle = -60
facing = -1
bindtime = 1
removetime = -2
pausemovetime = 0
supermovetime = 0
scale = .45,.45
sprpriority = 4
ownpal = 1
ignorehitpause = 1

[State 3100, Explod]
type = Explod
triggerall = Var(5) = 4
trigger1 = AnimElem = 5
trigger2 = AnimElem = 18
trigger3 = AnimElem = 31
ID = 6107
anim = 6107
postype = P1  ;p2,front,back,left,right
pos = 15,-55
bindtime = -1
supermovetime = 0
pausemovetime = 0
scale = .4,.4
sprpriority = 4
ownpal = 1
ignorehitpause = 0
;[State 3100, Explod]
;type = Explod
;triggerall = Var(5) = 4
;trigger1 = AnimElem = 10
;trigger2 = AnimElem = 23
;trigger3 = AnimElem = 36
;ID = 6106
;anim = 6106
;postype = P1  ;p2,front,back,left,right
;pos = 0,-70
;bindtime = 1
;supermovetime = 0
;pausemovetime = 0
;scale = .4,.4
;sprpriority = 3
;ownpal = 1
;ignorehitpause = 0

[State 3100, Explod]
type = Explod
triggerall = Var(5) = 5
trigger1 = AnimElem = 5
ID = 6107
anim = 6107
postype = P1  ;p2,front,back,left,right
pos = 15,-55
bindtime = 5
supermovetime = 0
pausemovetime = 0
scale = .4,.4
sprpriority = 4
ownpal = 1
ignorehitpause = 0
[State 3100, Explod]
type = Explod
trigger1 = Var(5) = 5
trigger1 = AnimElem = 31
ID = 6107
anim = 6107
postype = P1  ;p2,front,back,left,right
pos = 15,-55
bindtime = 5
supermovetime = 0
pausemovetime = 0
scale = .4,.4
sprpriority = 4
ownpal = 1
ignorehitpause = 0
;[State 3100, Explod]
;type = Explod
;triggerall = Var(5) = 5
;trigger1 = AnimElem = 9
;ID = 6106
;anim = 6106
;postype = P1  ;p2,front,back,left,right
;pos = 0,-70
;bindtime = 1
;supermovetime = 0
;pausemovetime = 0
;scale = .4,.4
;sprpriority = 3
;ownpal = 1
;ignorehitpause = 0
;[State 3100, Explod]
;type = Explod
;trigger1 = Var(5) = 5
;trigger1 = AnimElem = 35
;ID = 6106
;anim = 6106
;postype = P1  ;p2,front,back,left,right
;pos = 0,-70
;bindtime = 1
;supermovetime = 0
;pausemovetime = 0
;scale = .4,.4
;sprpriority = 3
;ownpal = 1
;ignorehitpause = 0

[State 3100, Explod]
type = Explod
trigger1 = Var(5) = 5
trigger1 = AnimElem = 19
ID = 6107
anim = 6107
pos = 15,-55
postype = P1  ;p2,front,back,left,right
bindtime = 10
supermovetime = 0
pausemovetime = 0
scale = .5,.5
sprpriority = 4
ownpal = 1
ignorehitpause = 0
persistent = 0
;[State 3100, Explod]
;type = Explod
;trigger1 = Var(5) = 5
;trigger1 = AnimElem = 23
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

[State 3100, Explod]
type = Explod
trigger1 = Var(5) = 6
trigger1 = AnimElemTime(4) = 0
ID = 6109;6108
anim = 6109
pos = 15,-55
postype = P1  ;p2,front,back,left,right
;facing = -1
;vfacing = -1
bindtime = -1
supermovetime = 0
pausemovetime = 0
scale = .5,.5
sprpriority = 4
ownpal = 1
ignorehitpause = 0
;[State 3100, Explod]
;type = Explod
;trigger1 = Var(5) = 6
;trigger1 = AnimElem = 10
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

[State 3100, RemoveExplod]
type = RemoveExplod
trigger1 = !Time
ID = 6005
ignorehitpause = 1
persistent = 1
[State 3100, RemoveExplod]
type = RemoveExplod
trigger1 = !Time
ID = 7009
ignorehitpause = 1
persistent = 1

[State 3100, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3100)
trigger1 = !NumExplod(3100)
trigger1 = Target(3100),StateType != L
ID = 3100
anim = 8200+Random%32
pos = 30+Ceil(P2Dist X/3),-35-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 3100, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3101)
trigger1 = !NumExplod(3101)
trigger1 = Target(3101),StateType != L
ID = 3101
anim = 8200+Random%32
pos = Ceil(P2Dist X),-65-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 3100, Explod]
type = Explod
trigger1 = Var(5) = 4
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3102)
trigger1 = !NumExplod(3102)
trigger1 = Target(3102),StateType != L
ID = 3102
anim = 8200+Random%32
pos = 30+Ceil(P2Dist X/3),-35-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 3100, Explod]
type = Explod
trigger1 = Var(5) = 4
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3103)
trigger1 = !NumExplod(3103)
trigger1 = Target(3103),StateType != L
ID = 3103
anim = 8200+Random%32
pos = Ceil(P2Dist X),-65-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 3100, Explod]
type = Explod
trigger1 = Var(5) = 5
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3102)
trigger1 = !NumExplod(3102)
trigger1 = Target(3102),StateType != L
ID = 3102
anim = 8200+Random%32
pos = 30+Ceil(P2Dist X/3),-40-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 3100, Explod]
type = Explod
trigger1 = Var(5) = 5
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3103)
trigger1 = !NumExplod(3103)
trigger1 = Target(3103),StateType != L
ID = 3103
anim = 8200+Random%32
pos = Ceil(P2Dist X),-80-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 3100, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3104)
trigger1 = !NumExplod(3104)
trigger1 = Target(3104),StateType != L
ID = 3104
anim = 8200+Random%32
pos = 30+Ceil(P2Dist X/3),-35-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 3100, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3105)
trigger1 = !NumExplod(3105)
trigger1 = Target(3105),StateType != L
ID = 3105
anim = 8200+Random%32
pos = Ceil(P2Dist X),-65-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 3100, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3106)
trigger1 = !NumExplod(3106)
trigger1 = Target(3106),StateType != L
ID = 3106
anim = 8200+Random%32
pos = 30+Ceil(P2Dist X/3),-40-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 3100, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3107)
trigger1 = !NumExplod(3107)
trigger1 = Target(3107),StateType != L
ID = 3107
anim = 8200+Random%32
pos = Ceil(P2Dist X),-80-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 3100, HitDef]
type = HitDef
trigger1 = Var(5) = 4
trigger1 = AnimElem = 5
attr = S,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*40),1
pausetime = 2,1
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-35
hitsound = S214,0+(Random%5)
guardsound = S200,3
ground.type = Low      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 15
guard.hittime = 5
guard.ctrltime = 5
yaccel = .5
ground.velocity = 0
air.velocity = 0,-7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 0
fall.recover = 0
air.fall = 1
kill = 1
p2facing = 1
getpower = 0
givepower = 0,15
hitonce = 1
ID = 3100
[State 3100, HitDef]
type = HitDef
trigger1 = Var(5) = 4
trigger1 = AnimElem = 8
attr = S,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard        ;light,medium,hard,back,up,diagup
air.animtype = Hard          ;light,medium,hard,back,up,diagup
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*80),1
pausetime = 5,5
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-80
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 20
ground.hittime = 30
guard.ctrltime = 15
yaccel = .5
ground.velocity = -.5
guard.velocity = -5
air.velocity = -1,-7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 0
fall.recover = 0
air.fall = 1
kill = 1
p2facing = 1
getpower = 0
givepower = 0,15
hitonce = 1
ID = 3101

[State 3100, HitDef]
type = HitDef
trigger1 = Var(5) = 5
trigger1 = AnimElem = 5
attr = S,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*40),1
pausetime = 5,4
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-35
hitsound = S214,0+(Random%5)
guardsound = S200,3
ground.type = Low      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 15
guard.hittime = 5
guard.ctrltime = 5
yaccel = .5
ground.velocity = 0
air.velocity = 0,-10.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 0
fall.recover = 0
air.fall = 1
kill = 0
p2facing = 1
getpower = 0
givepower = 0,15
hitonce = 1
ID = 3100
[State 3100, HitDef]
type = HitDef
trigger1 = Var(5) = 5
trigger1 = AnimElem = 8
attr = S,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard        ;light,medium,hard,back,up,diagup
air.animtype = Hard          ;light,medium,hard,back,up,diagup
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*90),1
pausetime = 12,12
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-80
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 20
ground.hittime = 15
guard.ctrltime = 15
yaccel = .5
ground.velocity = -1,-10.5
guard.velocity = -5
air.velocity = -1,-8
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
kill = 0
p2facing = 1
getpower = 0
givepower = 0,15
hitonce = 1
ID = 3101

[State 3100, HitDef]
type = HitDef
trigger1 = Var(5) = 4
trigger1 = AnimElem = 18
attr = S,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium         ;light,medium,hard,back,up,diagup
air.animtype = Medium
fall.animtype = Medium
priority = 11,Hit
damage = Ceil(FVar(5)*40),1
pausetime = 2,3
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-85
hitsound = S214,0+(Random%5)
guardsound = S200,3
ground.type = Low      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 15
guard.hittime = 5
guard.ctrltime = 5
yaccel = .5
ground.velocity = 0
air.velocity = 0,-7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 0
fall.recover = 0
air.fall = 1
kill = 1
p2facing = 1
getpower = 0
givepower = 0,15
hitonce = 1
ID = 3102
[State 3100, HitDef]
type = HitDef
trigger1 = Var(5) = 4
trigger1 = AnimElem = 21
attr = A,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard
air.animtype = Hard         ;light,medium,hard,back,up,diagup
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*90),1
pausetime = 5,6
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-95
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 20
ground.hittime = 30
air.hittime = 90
guard.hittime = 15
guard.ctrltime = 15
yaccel = .5
ground.velocity = -1.5
guard.velocity = -3
air.velocity = -1.2,-7
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 0
fall.recover = 0
air.fall = 1
kill = 1
p2facing = 1
getpower = 0
givepower = 0,15
hitonce = 1
ID = 3103

[State 3100, HitDef]
type = HitDef
trigger1 = Var(5) = 5
trigger1 = AnimElem = 20
attr = S,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium         ;light,medium,hard,back,up,diagup
air.animtype = Medium
fall.animtype = Medium
priority = 11,Hit
damage = Ceil(FVar(5)*40),1
pausetime = 5,6
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-85
hitsound = S214,0+(Random%5)
guardsound = S200,3
ground.type = Low      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 15
guard.hittime = 5
guard.ctrltime = 5
yaccel = .5
ground.velocity = 0
air.velocity = 0,-10.5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 0
fall.recover = 0
air.fall = 1
kill = 0
p2facing = 1
getpower = 0
givepower = 0,15
hitonce = 1
ID = 3102
[State 3100, HitDef]
type = HitDef
trigger1 = Var(5) = 5
trigger1 = AnimElem = 22
attr = A,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard
air.animtype = Hard         ;light,medium,hard,back,up,diagup
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*100),1
pausetime = 12,13
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-95
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 20
ground.hittime = 20
air.hittime = 90
guard.hittime = 15
guard.ctrltime = 15
yaccel = .5
ground.velocity = -1.8,-14;-12
guard.velocity = -3
air.velocity = -1.8,-13.3;-11.2
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
kill = 0
p2facing = 1
getpower = 0
givepower = 0,15
hitonce = 1
ID = 3103

[State 3100, HitDef]
type = HitDef
trigger1 = Var(5) = 4
trigger1 = AnimElem = 31
attr = S,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium          ;light,medium,hard,back,up,diagup
air.animtype = Medium
fall.animtype = Medium
priority = 11,Hit
damage = Ceil(FVar(5)*40),1
pausetime = 2,1
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-35
hitsound = S214,0+(Random%5)
guardsound = S200,3
ground.type = Low      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 15
guard.ctrltime = 15
yaccel = .5
ground.velocity = 0,-10
guard.velocity = -5
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
givepower = 0,15
hitonce = 1
ID = 3104
[State 3100, HitDef]
type = HitDef
trigger1 = Var(5) = 4
trigger1 = AnimElem = 34
attr = S,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Up
fall.animtype = Up         ;light,medium,hard,back,up,diagup
air.animtype = Up
priority = 11,Hit
damage = Ceil(FVar(5)*100),1
pausetime = 16,16
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-80
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 15
guard.ctrltime = 15
yaccel = .5
ground.velocity = -3,-15
guard.velocity = -5
air.velocity = -3,-15
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
p2facing = 1
getpower = 0
givepower = 0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 3105

[State 3100, HitDef]
type = HitDef
trigger1 = Var(5) = 5
trigger1 = AnimElem = 31
attr = S,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard          ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*50),1
pausetime = 4,5
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-35
hitsound = S214,0+(Random%5)
guardsound = S200,3
ground.type = Low      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 15
guard.ctrltime = 15
yaccel = .5
ground.velocity = -1,-10
guard.velocity = -5
air.velocity = -1.6,-10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
kill = 1
p2facing = 1
getpower = 0
givepower = 0,15
hitonce = 1
ID = 3104
[State 3100, HitDef]
type = HitDef
trigger1 = Var(5) = 5
trigger1 = AnimElem = 34
attr = S,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Up
fall.animtype = Up         ;light,medium,hard,back,up,diagup
air.animtype = Up
priority = 11,Hit
damage = Ceil(FVar(5)*160),1
pausetime = 16,16
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-80
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 15
guard.ctrltime = 15
yaccel = .5
ground.velocity = -3,-18
guard.velocity = -5
air.velocity = -3,-18
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
p2facing = 1
getpower = 0
givepower = 0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 3105

[State 3100, HitDef]
type = HitDef
trigger1 = Var(5) = 6
trigger1 = AnimElem = 7
attr = S,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium         ;light,medium,hard,back,up,diagup
air.animtype = Medium
fall.animtype = Medium
priority = 11,Hit
damage = Ceil(FVar(5)*40),1
pausetime = 5,Cond(Abs(P2Dist Y) > 30,8,0)
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-85
hitsound = S214,0+(Random%5)
guardsound = S200,3
ground.type = Low      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 15
guard.hittime = 5
guard.ctrltime = 5
yaccel = .5
ground.velocity = 0,-12
air.velocity = 0,-12
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
kill = 0
p2facing = 1
getpower = 0
givepower = 0,15
hitonce = 1
ID = 3106

[State 3100, HitDef]
type = HitDef
trigger1 = Var(5) = 6
trigger1 = AnimElem = 9
attr = S,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Up        ;light,medium,hard,back,up,diagup
air.animtype = Up          ;light,medium,hard,back,up,diagup
fall.animtype = Up
priority = 11,Hit
damage = Ceil(FVar(5)*70),1
pausetime = 12,12
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-95
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 20
ground.hittime = 15
guard.ctrltime = 15
yaccel = .5
ground.velocity = 0,-13
guard.velocity = -5
air.velocity = 0,-13
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
kill = 0
p2facing = 1
getpower = 0
givepower = 0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 3107

[State 3100, TargetBind]
type = TargetBind
trigger1 = MoveContact = 1 && !MoveGuarded
trigger1 = NumTarget(3104) && NumEnemy
trigger1 = Target(3104),StateNo = [5000,5099]
trigger1 = (Target(3104),Time = 0) && (Target(3104),ID = EnemyNear,ID)
trigger1 = !(Target(3104),HitShakeOver) && (Target(3104),Pos Y > 0)
pos = Ceil(P2Dist X),Ceil(-Pos Y)
time = 1
ignorehitpause = 1
[State 3100, TargetBind]
type = TargetBind
trigger1 = MoveContact = 1 && !MoveGuarded
trigger1 = NumTarget(3105) && NumEnemy
trigger1 = Target(3105),StateNo = [5000,5099]
trigger1 = (Target(3105),Time = 0) && (Target(3105),ID = EnemyNear,ID)
trigger1 = !(Target(3105),HitShakeOver) && (Target(3105),Pos Y > 0)
pos = Ceil(P2Dist X),Ceil(-Pos Y)
time = 1
ignorehitpause = 1

[State 3100, TargetBind]
type = TargetBind
trigger1 = MoveContact = 1 && !MoveGuarded
trigger1 = NumTarget(3106) && NumEnemy
trigger1 = Target(3106),StateNo = [5000,5099]
trigger1 = (Target(3106),Time = 0) && (Target(3106),ID = EnemyNear,ID)
trigger1 = !(Target(3106),HitShakeOver) && (Target(3106),Pos Y > 0)
pos = Ceil(P2Dist X),Ceil(-Pos Y)
time = 1
ignorehitpause = 1

[State 3100, TargetBind]
type = TargetBind
trigger1 = MoveContact = 1 && !MoveGuarded
trigger1 = NumTarget(3107) && NumEnemy
trigger1 = Target(3107),StateNo = [5000,5099]
trigger1 = (Target(3107),Time = 0) && (Target(3107),ID = EnemyNear,ID)
trigger1 = !(Target(3107),HitShakeOver) && (Target(3107),Pos Y > 0)
pos = Ceil(P2Dist X),Ceil(-Pos Y)
time = 1
ignorehitpause = 1

[State 3100, TargetState]
type = TargetState
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3107)
trigger1 = Target(3107),MoveType = H
trigger1 = AnimElemTime(9) >= 0 && AnimElemTime(9) < 2
value = 3150
ID = 3107
ignorehitpause = 1
persistent = 0

[State 3100, ChangeState]
type = ChangeState
trigger1 = Var(5) = 6
trigger1 = AnimElemTime(9) >= 0
trigger1 = MoveContact
trigger1 = NumTarget(3107)
trigger1 = !MoveGuarded
value = 3103
ignorehitpause = 1
persistent = 0

[State 3100, StateTypeSet]
type = StateTypeSet
trigger1 = Var(5) < 6
trigger1 = AnimElemTime(38) >= 0
movetype = I        ;I,A,H

[State 3100, StateTypeSet]
type = StateTypeSet
trigger1 = Var(5) = 6
trigger1 = AnimElemTime(12) >= 0
movetype = I        ;I,A,H

[State 3100, NotHitBy]
type = NotHitBy
trigger1 = Anim != 3102
trigger1 = AnimElemTime(6) < 0
value = SCA
time = 1

[State 3100, NotHitBy]
type = NotHitBy
trigger1 = Anim = 3102
trigger1 = AnimElemTime(11) < 0
value = SCA
time = 1

[State 3100, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElem = 1
statetype = C        ;I,A,H

[State 3100, StateTypeSet]
type = StateTypeSet
trigger1 = Var(5) < 6 && AnimElem = 3
statetype = S        ;I,A,H
[State 3100, StateTypeSet]
type = StateTypeSet
trigger1 = Var(5) = 6 && AnimElem = 5
statetype = S        ;I,A,H

[State 3100, StateTypeSet]
type = StateTypeSet
triggerall = Var(5) = 4
trigger1 = AnimElem = 5
trigger2 = AnimElem = 18
trigger3 = AnimElem = 31
statetype = A
physics = N

[State 3100, StateTypeSet]
type = StateTypeSet
triggerall = Var(5) = 5
trigger1 = AnimElem = 5
trigger2 = AnimElem = 21
trigger3 = AnimElem = 31
statetype = A
physics = N

[State 3100, StateTypeSet]
type = StateTypeSet
trigger1 = Var(5) = 6
trigger1 = AnimElem = 7
statetype = A
physics = N

[State 3100, StateTypeSet]
type = StateTypeSet
triggerall = Var(5) < 6
trigger1 = AnimElem = 14
statetype = S
physics = N

[State 3100, StateTypeSet]
type = StateTypeSet
triggerall = Var(5) < 6
trigger1 = AnimElem = 27
statetype = S
physics = N

[State 3100, PosSet]
type = PosSet
triggerall = Var(5) < 6
trigger1 = AnimElem = 1
trigger2 = AnimElem = 14
trigger3 = AnimElem = 27
y = 0

[State 3100, PosSet]
type = PosSet
triggerall = Var(5) = 6
trigger1 = AnimElem = 1
y = 0

[State 3100, VelAdd]
type = VelAdd
trigger1 = AnimElem = 3
x = 9
ignorehitpause = 1

[State 3100, VelSet]
type = VelSet
trigger1 = Var(5) = 4
trigger1 = AnimElem = 5
x = 2
y = -5

[State 3100, VelSet]
type = VelSet
trigger1 = Var(5) = 5
trigger1 = AnimElem = 5
x = 1.5
y = -5

[State 3100, VelAdd]
type = VelAdd
trigger1 = Var(5) < 6
trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(14) < 0
y = .5
[State 3100, VelSet]
type = VelSet
trigger1 = Var(5) < 6
trigger1 = AnimElem = 14
x = 0
y = 0
[State 3100, VelSet]
type = VelSet
trigger1 = Var(5) = 4
trigger1 = AnimElem = 18
x = 2.5
y = -6

[State 3100, VelSet]
type = VelSet
trigger1 = Var(5) = 5
trigger1 = AnimElem = 21;18
x = 2.5
y = -9

[State 3100, VelAdd]
type = VelAdd
trigger1 = Var(5) = 4
trigger1 = AnimElemTime(18) >= 0 && AnimElemTime(27) < 0
trigger2 = Var(5) = 5
trigger2 = AnimElemTime(21) >= 0 && AnimElemTime(27) < 0
y = .5
[State 3100, VelSet]
type = VelSet
trigger1 = Var(5) < 6
trigger1 = AnimElem = 27
x = 0
y = 0
[State 3100, VelSet]
type = VelSet
trigger1 = Var(5) < 6
trigger1 = AnimElemTime(31) = 0
x = 5
y = -15
ignorehitpause = 1
[State 3100, VelMul]
type = VelMul
trigger1 = Var(5) < 6
trigger1 = AnimElemTime(31) >= 0 && AnimElemTime(37) < 0
x = .9
y = .9
[State 3100, VelAdd]
type = VelAdd
trigger1 = Var(5) < 6
trigger1 = AnimElemTime(37) >= 0
y = .5

[State 3100, VelSet]
type = VelSet
trigger1 = Var(5) = 6
trigger1 = AnimElemTime(7) = 0
x = 3
y = -12
[State 3100, VelMul]
type = VelMul
trigger1 = Var(5) = 6
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(11) < 0
x = .95
y = .9
[State 3100, VelAdd]
type = VelAdd
trigger1 = Var(5) = 6
trigger1 = AnimElemTime(11) >= 0
y = .5

[State 3100, Helper]
type = Helper
trigger1 = !NumHelper(9500) && Abs(P2Dist Y) < 140
trigger1 = Time = 1
ID = 9500
stateno = 9500
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

[State 3100, PlaySnd]
type = PlaySnd
trigger1 = Var(5) < 6
trigger1 = !Time
value = S3100,0
channel = 0

[State 3100, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 6
trigger1 = !Time
value = S3100,5
channel = 0

[State 3100, PlaySnd]
type = PlaySnd
trigger1 = Var(5) < 6
trigger1 = AnimElem = 6
value = S3100,1
channel = 0

[State 3100, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 4
trigger1 = AnimElem = 16
trigger2 = Var(5) = 5
trigger2 = AnimElem = 19
value = S3100,2
channel = 0

[State 3100, PlaySnd]
type = PlaySnd
trigger1 = Var(5) < 6
trigger1 = AnimElem = 30
value = S3100,3
channel = 0

[State 3100, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 4
trigger1 = AnimElem = 5 || AnimElem = 18 || AnimElem = 31
trigger2 = Var(5) = 5
trigger2 = AnimElem = 5 || AnimElem = 20 || AnimElem = 31
value = S40,1
channel = -1

[State 3100, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 6
trigger1 = AnimElem = 7
value = S40,1
channel = -1

[State 3100, PlaySnd]
type = PlaySnd
trigger1 = Var(5) < 6
trigger1 = AnimElem = 14 || AnimElem = 27
value = S52,0
channel = -1

[State 3100, PlaySnd]
type = PlaySnd
triggerall = Var(5) = 4
trigger1 = AnimElem = 5
trigger2 = AnimElem = 18
trigger3 = AnimElem = 31
value = S1100,1
channel = -1
[State 3100, PlaySnd]
type = PlaySnd
triggerall = Var(5) = 5
trigger1 = AnimElem = 5
trigger2 = AnimElem = 19
trigger3 = AnimElem = 31
value = S1100,1
channel = -1

[State 3100, PlaySnd]
type = PlaySnd
triggerall = Var(5) = 4
trigger1 = AnimElem = 6
trigger2 = AnimElem = 19
trigger3 = AnimElem = 32
value = S1100,2
channel = -1
[State 3100, PlaySnd]
type = PlaySnd
triggerall = Var(5) = 5
trigger1 = AnimElem = 6
trigger2 = AnimElem = 20
trigger3 = AnimElem = 32
value = S1100,2
channel = -1

[State 3100, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 6
trigger1 = AnimElem = 7
value = S1100,1
channel = -1
[State 3100, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 6
trigger1 = AnimElem = 8
value = S1100,2
channel = -1

[State 3100, ChangeState]
type = ChangeState
trigger1 = Var(5) < 6
trigger1 = AnimElemTime(38) >= 0 && (Pos Y >= 0) && (Vel Y > 0)
value = 52

[State 3100, ChangeState]
type = ChangeState
trigger1 = Var(5) = 6
trigger1 = AnimElemTime(12) >= 0 && (Pos Y >= 0) && (Vel Y > 0)
value = 52

;-------------------------------------------------------------------------------------------------------------------------------------------
;SOMERSAULT STRIKE H - HIT
[StateDef 3103]
type = A
physics = N
movetype = A
anim = 3103
ctrl = 0
velset = 0,0
sprpriority = 1

[State 3103, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3103, AfterImageTime]
type = AfterImageTime
trigger1 = !Time
time = 1
ignorehitpause = 1

[State 3103, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow
[State 3103, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(10) < 0
flag = Invisible

[State 3103, RemoveExplod]
type = RemoveExplod
trigger1 = Time >= 57
ID = 6080
ignorehitpause = 1
persistent = 1

[State 3103, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 3103, ScreenBound]
type = ScreenBound
trigger1 = AnimElemTime(2) < 0
value = 1
movecamera = 1,1
[State 3103, ScreenBound]
type = ScreenBound
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(15) < 0
value = 1
movecamera = 1,1

[State 3103, ScreenBound]
type = ScreenBound
trigger1 = AnimElemTime(15) >= 0
value = 0
movecamera = 0,0

[State 3103, Width]
type = Width
trigger1 = AnimElemTime(13) = 0
edge = 70,0
[State 3103, Width]
type = Width
trigger1 = AnimElemTime(14) = 0
edge = 90,0
[State 3103, Width]
type = Width
trigger1 = AnimElemTime(15) = 0
edge = 120,0

[State 3103, Pause]
type = Pause
triggerall = Time%2 = 0
trigger1 = AnimElemTime(11) = [5,7]
trigger2 = AnimElemTime(12) = [0,10]
time = 4
movetime = 0
pausebg = 1
ignorehitpause = 1
[State 3103, Pause]
type = Pause
triggerall = Time%2 = 0
trigger1 = AnimElemTime(16) = [0,3]
trigger2 = AnimElemTime(17) = [0,1]
time = 2
movetime = 0
pausebg = 1
ignorehitpause = 1

[State 3103, PosAdd]
type = PosAdd
trigger1 = NumTarget(3107)
trigger1 = AnimElemTime(2) = 0
x = (Target(3107),Pos X-Pos X)*Facing
[State 3103, PosAdd]
type = PosAdd
trigger1 = NumTarget(3107)
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(10) < 0
x = 0
y = Target(3107),Pos Y-Pos Y

[State 3103, PosAdd]
type = PosAdd
trigger1 = NumTarget(3107)
trigger1 = AnimElemTime(10) = 0
x = -120
y = 50

[State 3103, Trans]
type = Trans
trigger1 = Time = [0,12]
trans = AddAlpha
alpha = (256-35*(Time)),256
ignorehitpause = 1

[State 3103, Explod]
type = Explod
trigger1 = AnimElem = 1
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

[State 3103, RemoveExplod]
type = RemoveExplod
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo != 3150
ID = 7285
ignorehitpause = 1
persistent = 1

[State 3103, Explod]
type = Explod
trigger1 = !NumExplod(7770)
trigger1 = NumTarget(3107)
trigger1 = !Time
ID = 7770
anim = 7770
pos = Ceil(GameWidth/2),Ceil(GameHeight/2)
postype = Left
bindtime = -1
removetime = -2
removeongethit = 1
supermovetime = 9999
pausemovetime = 9999
scale = 500,500
sprpriority = -5
ownpal = 1
ignorehitpause = 1
persistent = 0
[State 3103, RemoveExplod]
type = RemoveExplod
trigger1 = NumHelper(7950)
ID = 7770

[State 3103, Helper]
type = Helper
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3150
trigger1 = AnimElemTime(1) = 12
name = "Afterimage"
ID = 3160
stateno = 3160
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 900
supermovetime = 900
size.shadowoffset = Target(3107),ID
[State 3103, Helper]
type = Helper
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3150
trigger1 = AnimElemTime(5) = 0
name = "Afterimage"
ID = 3161
stateno = 3160
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 900
supermovetime = 900
size.shadowoffset = Target(3107),ID
[State 3103, Helper]
type = Helper
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3150
trigger1 = AnimElemTime(8) = 1
name = "Afterimage"
ID = 3162
stateno = 3160
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 900
supermovetime = 900
size.shadowoffset = Target(3107),ID

[State 3103, Helper]
type = Helper
trigger1 = !NumHelper(60723)
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3150
trigger1 = AnimElemTime(11) = 0
name = "Slash3"
ID = 60723
stateno = 6072
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0

[State 3103, Helper]
type = Helper
trigger1 = !NumHelper(6073)
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3150
trigger1 = AnimElemTime(18) = 0
name = "Slash4"
ID = 6073
stateno = 6073
postype = P1    ;p2,front,back,left,right
facing = -1
ownpal = 1
pausemovetime = 0
supermovetime = 0

[State 3103, Helper]
type = Helper
trigger1 = AnimElem = 21
name = "Streak"
ID = 501
stateno = 6241
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 900
ignorehitpause = 1
persistent = 0

[State 3103, Explod]
type = Explod
trigger1 = AnimElemTime(19) = 0
ID = 6100
anim = 6100
postype = P1  ;p2,front,back,left,right
pos = 25,-55
bindtime = 1
supermovetime = 0
pausemovetime = 0
scale = .35,.35
sprpriority = 4
ownpal = 1
ignorehitpause = 0
persistent = 0

[State 3103, Explod]
type = Explod
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3150
trigger1 = !NumExplod(1)
trigger1 = Target(3107),AnimElem = 3
ID = 1
anim = 8200+Random%32
pos = Ceil(P2Dist X/3),-50-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 10
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0
[State 3103, Explod]
type = Explod
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3150
trigger1 = !NumExplod(2)
trigger1 = Target(3107),AnimElem = 6
ID = 2
anim = 8200+Random%32
pos = Ceil(P2Dist X/3),-50-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 10
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0
[State 3103, Explod]
type = Explod
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3150
trigger1 = !NumExplod(3)
trigger1 = Target(3107),AnimElem = 9
ID = 3
anim = 8200+Random%32
pos = Ceil(P2Dist X/3),-50-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 10
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0
[State 3103, Explod]
type = Explod
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3150
trigger1 = !NumExplod(4)
trigger1 = Target(3107),AnimElem = 12
ID = 4
anim = 8200+Random%32
pos = 30,-80-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 10
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0
[State 3103, Explod]
type = Explod
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3150
trigger1 = !NumExplod(5)
trigger1 = Target(3107),AnimElemTime(14) = 6
ID = 5
anim = 8200+Random%32
pos = 60+Ceil(P2Dist X/3),-45-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 10
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 3103, Explod]
type = Explod
trigger1 = NumTarget(3107)
trigger1 = Target(3107),MoveType = H
trigger1 = !NumExplod(6)
trigger1 = AnimElem = 23
ID = 6
anim = 8020+Random%4
pos = 0,0
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 6
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[State 3103, Explod]
type = Explod
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3150
trigger1 = Target(3107),AnimElemTime(15) = 1
ID = 6018
anim = 6018
postype = P1  ;p2,front,back,left,right
pos = 80,-80
vfacing = -1
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 3103, Explod]
type = Explod
trigger1 = NumTarget(3107)
trigger1 = Time = 90;AnimElemTime(19) = 0
ID = 7280
anim = 7280
pos = 0,-78
postype = P1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
removeongethit = 1
supermovetime = 0
pausemovetime = 0
scale = .6,.4
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 3310, Explod]
type = Explod
trigger1 = AnimElem = 23
ID = 7290
anim = 7290
pos = 5,0
postype = P1  ;p2,front,back,left,right
supermovetime = 0
pausemovetime = 0
bindtime = 1
scale = .7,.6
sprpriority = -2
ownpal = 1
[State 3310, Explod]
type = Explod
trigger1 = AnimElem = 23
ID = 7291
anim = 7291
pos = 5,0
postype = P1  ;p2,front,back,left,right
supermovetime = 0
pausemovetime = 0
bindtime = 1
scale = .7,.6
sprpriority = -2
ownpal = 1

[State 3103, Explod]
type = Explod
trigger1 = NumTarget(3107)
trigger1 = AnimElem = 23
ID = 7070
anim = 7070
pos = 5,0
postype = P2
facing = Cond(Random < 500,1,-1)
scale = .8,.7
sprpriority = -5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[State 3103, Explod]
type = Explod
trigger1 = AnimElemTime(23) = 1
ID = 6018
anim = 6018
postype = P1  ;p2,front,back,left,right
pos = 5,0
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 5
scale = 1,1
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 3103, Explod]
type = Explod
trigger1 = AnimElemTime(23) = 1
ID = 7008
anim = 7008
pos = 0,10
postype = P1  ;p2,front,back,left,right
facing = -1
bindtime = 1
removetime = -2
pausemovetime = 0
supermovetime = 0
scale = 2.7,.9
sprpriority = 4
ownpal = 1
ignorehitpause = 1

[State 3103, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3150
trigger1 = Target(3107),AnimElem = 3
value = -Ceil(FVar(5)*40)
ID = 3107
kill = 0
absolute = 1
persistent = 0
[State 3103, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3150
trigger1 = Target(3107),AnimElem = 6
value = -Ceil(FVar(5)*40)
ID = 3107
kill = 0
absolute = 1
persistent = 0
[State 3103, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3150
trigger1 = Target(3107),AnimElem = 9
value = -Ceil(FVar(5)*40)
ID = 3107
kill = 0
absolute = 1
persistent = 0
[State 3103, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3150
trigger1 = Target(3107),AnimElem = 12
value = -Ceil(FVar(5)*40)
ID = 3107
kill = 0
absolute = 1
persistent = 0
[State 3103, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3150
trigger1 = Target(3107),AnimElemTime(14) = 6
value = -Ceil(FVar(5)*90)
ID = 3107
kill = 1
absolute = 1
persistent = 0

[State 3103, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = NumTarget(3107)
trigger1 = Target(3107),MoveType = H
trigger1 = AnimElem = 23
value = -Ceil(FVar(5)*100)
ID = 3107
kill = 1
absolute = 1
persistent = 0

[State 3103, HitAdd]
type = HitAdd
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3150
trigger1 = Target(3107),AnimElem = 3
value = 1
persistent = 0
[State 3103, HitAdd]
type = HitAdd
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3150
trigger1 = Target(3107),AnimElem = 6
value = 1
persistent = 0
[State 3103, HitAdd]
type = HitAdd
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3150
trigger1 = Target(3107),AnimElem = 9
value = 1
persistent = 0
[State 3103, HitAdd]
type = HitAdd
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3150
trigger1 = Target(3107),AnimElem = 12
value = 1
persistent = 0
[State 3103, HitAdd]
type = HitAdd
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3150
trigger1 = Target(3107),AnimElemTime(14) = 6
value = 1
persistent = 0
[State 3103, HitAdd]
type = HitAdd
trigger1 = NumTarget(3107)
trigger1 = Target(3107),MoveType = H
trigger1 = AnimElem = 23
value = 1
persistent = 0

[State 3103, TargetBind]
type = TargetBind
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3150
trigger1 = AnimElemTime(11) = 5
pos = 10,-10
time = 12
ignorehitpause = 1
[State 3103, TargetBind]
type = TargetBind
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3150
trigger1 = AnimElemTime(13) = 0
pos = 30,-10
time = 1
ignorehitpause = 1

[State 3103, TargetBind]
type = TargetBind
trigger1 = NumTarget(3107)
trigger1 = Target(3107),MoveType = H
trigger1 = P2BodyDist Y = [-15,15]
trigger1 = AnimElemTime(21) >= 0 && AnimElemTime(22) < 0
time = -1
pos = 0,-20
ID = 3107
[State 3103, TargetBind]
type = TargetBind
trigger1 = NumTarget(3107)
trigger1 = AnimElemTime(23) = 0
time = 1
pos = -5,-2
ID = 3107

[State 3103, TargetState]
type = TargetState
trigger1 = NumTarget(3107)
trigger1 = Target(3107),MoveType = H
trigger1 = Target(3107),StateNo != [3153,3154]
trigger1 = P2BodyDist Y = [-15,15]
trigger1 = AnimElemTime(21) >= 0 && AnimElemTime(22) < 0
value = 3153
ID = 3107
persistent = 0

[State 3103, TargetState]
type = TargetState
trigger1 = NumTarget(3107)
trigger1 = Target(3107),MoveType = H
trigger1 = AnimElemTime(23) = 0
value = 3154
ID = 3107

[State 3103, VelSet]
type = VelSet
trigger1 = AnimElemTime(11) = 0
x = 12
y = -8

[State 3103, VelMul]
type = VelMul
trigger1 = AnimElemTime(11) >= 5 && AnimElemTime(13) < 0
x = .5
y = .6
[State 3103, VelSet]
type = VelSet
trigger1 = AnimElemTime(12) = 5
x = 0
y = 0

[State 3103, VelSet]
type = VelSet
trigger1 = AnimElemTime(14) = 0
x = 3
y = -2

[State 3103, VelSet]
type = VelSet
trigger1 = AnimElemTime(17) = 0
x = 0
y = 0

[State 3103, VelSet]
type = VelSet
trigger1 = AnimElemTime(20) = 15
y = 20

[State 3103, PosSet]
type = PosSet
trigger1 = NumTarget(3107)
trigger1 = AnimElemTime(20) = 0
x = Ceil(Target(3107),Pos X)

[State 3103, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(20) >= 10 && AnimElemTime(23) < 0
y = .5

[State 3103, ChangeAnim]
type = ChangeAnim
trigger1 = AnimElemTime(21) >= 0 && Pos Y >= -40 && Vel Y > 0
value = 3103
elem = 22
persistent = 0

[State 3103, VelSet]
type = VelSet
trigger1 = AnimElemTime(23) = 0
y = 0

[State 3103, PosSet]
type = PosSet
trigger1 = AnimElemTime(23) = 0
y = -15;0

[State 3103, PosSet]
type = PosSet
trigger1 = AnimElemTime(26) = 0
y = 0

[State 3103, Helper]
type = Helper
trigger1 = !NumHelper(9600) && Abs(P2Dist Y) < 140
trigger1 = NumTarget(3107)
ID = 9610
stateno = 9610
name = "ZoomHelper"
facing = 1
pos = 0,0
postype = P1
supermovetime = 9999
pausemovetime = 9999
size.xscale = Const(Size.XScale)
size.yScale = Const(Size.YScale)
size.proj.doscale = Target(3107),ID; Give Parent ID to Child
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 3103, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(3107)
trigger1 = !Time
value = S3100,6
channel = 0
[State 3103, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(3107)
trigger1 = !Time
value = S3100,6
channel = -1

[State 3103, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3150
trigger1 = AnimElemTime(1) = 2
value = S3100,4
channel = -1

[State 3103, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3150
trigger1 = Target(3107),AnimElem = 3
value = S214,0+(Random%5)
channel = -1
[State 3103, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3150
trigger1 = Target(3107),AnimElem = 6
value = S214,0+(Random%5)
channel = -1
[State 3103, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3150
trigger1 = Target(3107),AnimElem = 9
value = S214,0+(Random%5)
channel = -1
[State 3103, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3150
trigger1 = Target(3107),AnimElem = 12
value = S214,0+(Random%5)
channel = -1
[State 3103, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3150
trigger1 = Target(3107),AnimElemTime(14) = 6
value = S215,0+(Random%3)
channel = -1
[State 3103, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3150
trigger1 = Target(3107),AnimElemTime(14) = 6
value = S215,0+(Random%3)
channel = -1

[State 3103, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3150
trigger1 = Target(3107),AnimElem = 3
value = S3101,0+(Random%2)
channel = 2
[State 3103, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3150
trigger1 = Target(3107),AnimElem = 6
value = S3101,0+(Random%2)
channel = 2
[State 3103, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3150
trigger1 = Target(3107),AnimElem = 9
value = S3101,0+(Random%2)
channel = 2
[State 3103, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3150
trigger1 = Target(3107),AnimElem = 12
value = S3101,0+(Random%2)
channel = 2
[State 3103, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3150
trigger1 = Target(3107),AnimElemTime(14) = 6
value = S3101,2
channel = -1
[State 3103, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3150
trigger1 = Target(3107),AnimElemTime(14) = 6
value = S3101,3
channel = 2

[State 3103, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3150
trigger1 = AnimElem = 12
value = S3100,7
channel = 0
[State 3103, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3150
trigger1 = AnimElem = 12
value = S3100,7
channel = -1

[State 3103, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3150
trigger1 = Target(3107),AnimElemTime(15) = 2
value = S1000,2
channel = -1
[State 3103, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3150
trigger1 = Target(3107),AnimElemTime(15) = 2
value = S1000,2
channel = -1
[State 3103, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(3107)
trigger1 = Target(3107),StateNo = 3150
trigger1 = Target(3107),AnimElemTime(15) = 2
value = S1000,2
channel = -1

[State 3103, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(3107)
trigger1 = Time = 91
value = S3100,4
channel = -1
[State 3103, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(3107)
trigger1 = Time = 112
value = S1000,2
channel = -1

[State 3103, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(3107)
trigger1 = AnimElem = 21
value = S3100,4
channel = -1

[State 3103, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(3107)
trigger1 = Target(3107),MoveType = H
trigger1 = AnimElem = 23
value = S742,1
channel = 9
[State 3103, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(3107)
trigger1 = Target(3107),MoveType = H
trigger1 = AnimElem = 23
value = S742,1
channel = 10
[State 3103, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(3107)
trigger1 = Target(3107),MoveType = H
trigger1 = AnimElem = 23
value = S742,1
channel = 11

[State 3103, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 23
value = S820,0
channel = -1
[State 3103, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 23
value = S820,0
channel = -1

[State 3103, ChangeState]
type = ChangeState
triggerall = AnimElemTime(17) < 0
trigger1 = !NumTarget(3107)
trigger2 = NumTarget(3107)
trigger2 = Target(3107),StateNo != 3150
trigger3 = NumTarget(3107)
trigger3 = Target(3107),Pos Y >= 0
trigger3 = Target(3107),Vel Y > 0
value = 50
persistent = 0

[State 3103, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 105
ctrl = 0

;-------------------------------------------------------------------------------------------------------------------------------------------
;SOMERSAULT STRIKE TARGET 1
[StateDef 3150]
type = A
movetype = H
physics = N
velset = 0,0
sprpriority = -2

[State 3150, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3150

[State 3150, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = SCA
time = 105

[State 3150, ScreenBound]
type = ScreenBound
trigger1 = AnimElemTime(14) < 0
value = 1
movecamera = 1,0
[State 3150, ScreenBound]
type = ScreenBound
trigger1 = AnimElemTime(14) >= 0
value = 1
movecamera = 1,1

[State 3150, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(13) < 0
flag = NoBarDisplay

[State 3150, Width]
type = Width
trigger1 = 1
edge = 10,10

[State 3150, VelSet]
type = VelSet
trigger1 = Time = 12
x = -2
y = -6
[State 3150, VelSet]
type = VelSet
trigger1 = AnimElem = 2
y = 0

[State 3150, VelSet]
type = VelSet
trigger1 = AnimElem = 3
x = 7
y = -3
[State 3150, VelMul]
type = VelMul
trigger1 = AnimElemTime(3) > 0 && AnimElemTime(5) < 0
x = .8
[State 3150, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) > 0 && AnimElemTime(5) < 0
y = .26
[State 3150, VelSet]
type = VelSet
trigger1 = AnimElem = 5
y = 0

[State 3150, VelSet]
type = VelSet
trigger1 = AnimElem = 6
x = -7
y = -3
[State 3150, VelMul]
type = VelMul
trigger1 = AnimElemTime(6) > 0 && AnimElemTime(8) < 0
x = .8
[State 3150, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(6) > 0 && AnimElemTime(8) < 0
y = .26
[State 3150, VelSet]
type = VelSet
trigger1 = AnimElem = 8
y = 0

[State 3150, VelSet]
type = VelSet
trigger1 = AnimElem = 9
x = 7
y = -3
[State 3150, VelMul]
type = VelMul
trigger1 = AnimElemTime(9) > 0 && AnimElemTime(11) < 0
x = .8
[State 3150, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(9) > 0 && AnimElemTime(11) < 0
y = .26
[State 3150, VelSet]
type = VelSet
trigger1 = AnimElem = 11
y = 0

[State 3150, VelSet]
type = VelSet
trigger1 = AnimElem = 13
x = -4
y = -4
[State 3150, VelMul]
type = VelMul
trigger1 = AnimElemTime(13) > 0 && AnimElemTime(14) < 0
x = .9
y = .9

[State 3150, VelSet]
type = VelSet
trigger1 = AnimElemTime(13) >= 0 && AnimElemTime(15) < 0
x = -7
y = -2
[State 3150, VelSet]
type = VelSet
trigger1 = AnimElemTime(15) = 0
x = 0
y = 0
[State 3150, VelSet]
type = VelSet
trigger1 = AnimElemTime(15) = 5
x = 0
y = 30
[State 3150, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(15) >= 5
y = .5

[State 3150, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(15) = 0
y = 40

[State 3150, ChangeState]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= Const(Movement.Air.GetHit.GroundLevel)
value = 3151

;-------------------------------------------------------------------------------------------------------------------------------------------
;SOMERSAULT STRIKE TARGET 2
[StateDef 3151]
type = L
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 0

[State 3151, EnvShake]
type = EnvShake
trigger1 = !Time
time = 20

[State 3151, LifeAdd]
type = LifeAdd
trigger1 = !Time
value = -80
kill = 0
absolute = 1

[State 3151, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3151, PosFreeze]
type = PosFreeze
trigger1 = 1

[State 3151, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3151

[State 3151, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3151, ChangeState]
type = ChangeState
trigger1 = Anim = 3151 && AnimElem = 2
value = 3152
ctrl = 0

;--------------------------------------------------------------------------------------------------------------------------------------------
;SOMERSAULT STRIKE TARGET 3
[StateDef 3152]
type = L
movetype = H
physics = N
sprpriority = 0

[State 3152, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5160

[State 3152, Pause]
type = Pause
;trigger1 = Life > 0
trigger1 = Time = [3,15]
trigger1 = Time%2 = 0
time = 3
movetime = 0
pausebg = 1
ignorehitpause = 1

[State 3152, VelSet]
type = VelSet
trigger1 = !Time
y = -8

[State 3152, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3152, VelAdd]
type = VelAdd
trigger1 = 1
y = .5

[State 3152, SelfState]
type = SelfState
trigger1 = Time > 1
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 12
value = 5110

;--------------------------------------------------------------------------------------------------------------------------------------------
;SOMERSAULT STRIKE TARGET 4
[StateDef 3153]
type = A
movetype = H
physics = N
velset = 0,0
sprpriority = 2

[State 3153, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3153

[State 3153, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3153, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 3153, Width]
type = Width
trigger1 = 1
edge = 30,30
player = 0,0

[State 3153, AngleDraw]
type = AngleDraw
trigger1 = AnimElemTime(1) >= 0
value = 90
ignorehitpause = 1
persistent = 1

[State 3153, VelAdd]
type = VelAdd
trigger1 = 1
y = .5

[State 3153, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0)
value = 3154

;--------------------------------------------------------------------------------------------------------------------------------------------
;SOMERSAULT STRIKE TARGET 5
[StateDef 3154]
type = L
movetype = H
physics = N
velset = 0,0

[State 3154, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3154

[State 3154, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(4) < 15
value = 0
[State 3154, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(4) >= 15
value = 1

[State 3154, AngleDraw]
type = AngleDraw
trigger1 = AnimElemTIme(3) < 0
value = 90
ignorehitpause = 1
persistent = 1

[State 3154, Pause]
type = Pause
;trigger1 = Life > 0
trigger1 = Time = [3,15]
trigger1 = Time%2 = 0
time = 6
movetime = 0
pausebg = 1
ignorehitpause = 1

[State 3154, SprPriority]
type = SprPriority
trigger1 = AnimElemTime(4) < 0
value = -1

[State 3154, SprPriority]
type = SprPriority
trigger1 = AnimElemTime(4) >= 0
value = 0

[State 3154, EnvShake]
type = EnvShake
trigger1 = !Time
time = 50
freq = 70
ampl = -8
phase = 90

[State 3154, PosSet]
type = PosSet
trigger1 = !Time
y = -15
[State 3154, PosSet]
type = PosSet
trigger1 = AnimElemTime(3) = 0
y = 0

[State 3154, SelfState]
type = SelfState
trigger1 = AnimElemTime(4) >= 50
value = Cond(Alive,5120,5150)

;-------------------------------------------------------------------------------------------------------------------------------------------
;TOTAL WIPEOUT
[StateDef 3200]
type = S
physics = N
movetype = A
ctrl = 0
velset = 0,0
sprpriority = 1
facep2 = 1

[State 3200, VarSet]
type = VarSet
trigger1 = !Time
var(5) = Cond(Power >= 3000,6,Cond((Power < 3000 && Power >= 2000),5,4))

[State 3200, VarSet]
type = VarSet
trigger1 = !Time
fvar(13) = Cond(Var(5) = 6,.9,Cond(Var(5) = 5,.8,.7))

[State 3200, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = Cond(Var(5) = 6,3202,Cond(Var(5) = 5,3201,3200))

[State 3200, PowerAdd]
type = PowerAdd
trigger1 = Time = 1
value = Cond(Var(5) = 6,-3000,Cond(Var(5) = 5,-2000,-1000))

[State 3200, StopSnd]
type = StopSnd
trigger1 = !Time
channel = 0
ignorehitpause = 1
persistent = 0

[State 3200, SuperPause]
type = SuperPause
trigger1 = !Time
time = 40
anim = -1
sound = S6360,0
movetime = 40
darken = 0
p2defmul = 1

[State 3200, NotHitBy]
type = NotHitBy
trigger1 = Var(5) < 6 && !Time
value = SCA
time = 44
[State 3200, NotHitBy]
type = NotHitBy
trigger1 = Var(5) = 5 && AnimElem = 27
value = SCA
time = 30
[State 3200, NotHitBy]
type = NotHitBy
trigger1 = Var(5) = 6 && !Time
value = SCA
time = 138

[State 3200, AssertSpecial]
type = AssertSpecial
trigger1 = Time < 42
flag = NoBarDisplay
ignorehitpause = 1

[State 3200, Explod]
type = Explod
trigger1 = !Time
ID = 6360
anim = 6360
pos = -3,-90
postype = P1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
supermovetime = 900
pausemovetime = 900
scale = 1.3,1.3
sprpriority = 5
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 3200, Helper]
type = Helper
trigger1 = !Time
ID = 9020
stateno = 9020
pos = 0,0
postype = P2
name = "BGFX"
ignorehitpause = 1
pausemovetime = 900
supermovetime = 900
persistent = 0

[State 3200, AfterImage]
type = AfterImage
trigger1 = Time = 41
time = 145
timegap = 1
framegap = 10
length = 21
palbright = 0,0,0
palcontrast = 128,128,128
palpostbright = 0,0,0
paladd = 0,0,0
palmul = .75,.75,.75
trans = Add1
[State 3200, AfterImage]
type = AfterImage
trigger1 = Var(5) = 5
trigger1 = AnimElem = 36
time = 50
timegap = 1
framegap = 10
length = 21
palbright = 0,0,0
palcontrast = 128,128,128
palpostbright = 0,0,0
paladd = 0,0,0
palmul = .75,.75,.75
trans = Add1

[State 3200, AfterImageTime]
type = AfterImageTime
trigger1 = Var(5) > 4 && AnimElem = 25
time = 1

[State 3200, Pause]
type = Pause
triggerall = Var(5) = 6
triggerall = Time%2 = 0
trigger1 = AnimElemTime(32) = [0,1]
trigger2 = AnimElemTime(39) = [0,1]
time = 1
movetime = 0
endcmdbuftime = 1
pausebg = 1
ignorehitpause = 1

[State 3200, Pause]
type = Pause
trigger1 = NumTarget(3206)
trigger1 = Var(5) = 6
trigger1 = Time%2 = 0
trigger1 = AnimElemTime(40) = [0,3]
time = 6
movetime = 0
endcmdbuftime = 1
pausebg = 1
ignorehitpause = 1

[State 3200, PlayerPush]
type = PlayerPush
trigger1 = Var(5) != 5
value = 1
ignorehitpause = 1

[State 3200, PlayerPush]
type = PlayerPush
trigger1 = Var(5) = 5
trigger1 = AnimElemTime(27) < 0
value = 1
ignorehitpause = 1
[State 3200, PlayerPush]
type = PlayerPush
trigger1 = Var(5) = 5
trigger1 = AnimElemTime(27) >= 0
value = 0
ignorehitpause = 1

[State 3200, Width]
type = Width
trigger1 = AnimElemTime(3) < 0
edge = 35,0
player = 35,0

[State 3200, Width]
type = Width
trigger1 = Var(5) = 4
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(29) < 0
edge = 60,0
player = 60,0

[State 3200, Width]
type = Width
trigger1 = Var(5) = 4
trigger1 = AnimElemTime(29) >= 0 && AnimElemTime(30) < 0
edge = 70,0
player = 70,0

[State 3200, Width]
type = Width
trigger1 = Var(5) = 4
trigger1 = AnimElemTime(30) >= 0
edge = 20,0
player = 20,0

[State 3200, Width]
type = Width
trigger1 = Var(5) > 4
trigger1 = AnimElemTime(3) >= 0 && AnimElemTime(22) < 0
edge = 60,0
player = 60,0

[State 3200, Width]
type = Width
trigger1 = Var(5) > 4
trigger1 = AnimElemTime(22) >= 0 && AnimElemTime(29) < 0
edge = 20,0
player = 20,0

[State 3200, Width]
type = Width
trigger1 = Var(5) = 5
trigger1 = AnimElemTime(29) >= 0 && AnimElemTime(31) < 0
edge = 20,0
player = 20,0

[State 3200, Width]
type = Width
trigger1 = Var(5) = 6
trigger1 = AnimElemTime(29) >= 0 && AnimElemTime(40) < 0
edge = 20,0
player = 20,0

[State 3200, Width]
type = Width
trigger1 = Var(5) = 6
trigger1 = AnimElemTime(40) >= 0 && AnimElemTime(43) < 0
edge = 125,0
player = 70,0

[State 3200, Width]
type = Width
trigger1 = Var(5) = 6
trigger1 = AnimElemTime(43) >= 0
edge = 20,0
player = 20,0

[State 3200, Helper]
type = Helper
trigger1 = AnimElem = 2
name = "Slash"
ID = 212
stateno = 6071
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1

[State 3200, Helper]
type = Helper
trigger1 = AnimElemTime(7) = 1
name = "Slash"
ID = 210
stateno = 6071
postype = P1    ;p2,front,back,left,right
facing = 1
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1

[State 3200, Helper]
type = Helper
trigger1 = AnimElem = 14
name = "Slash"
ID = 221
stateno = 6071
postype = P1    ;p2,front,back,left,right
facing = 1
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1

[State 3200, Explod]
type = Explod
trigger1 = AnimElem = 19
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
sprpriority = 2
ownpal = 1
ignorehitpause = 1
[State 3200, Explod]
type = Explod
trigger1 = AnimElem = 19
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

[State 3200, Helper]
type = Helper
trigger1 = AnimElem = 20
name = "Slash"
ID = 242
stateno = 6070
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1

[State 3200, Helper]
type = Helper
trigger1 = Var(5) = 4 && AnimElemTime(28) = 3
trigger2 = Var(5) = 6 && AnimElemTime(40) = 3
name = "Slash"
ID = 223
stateno = 6070
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1

[State 3200, Helper]
type = Helper
trigger1 = Var(5) = 6 && AnimElemTime(27) = 1
name = "Slash"
ID = 420
stateno = 6071
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1

[State 3200, Explod]
type = Explod
trigger1 = AnimElem = 25
ID = 7002
anim = 7002
postype = P1  ;p2,front,back,left,right
pos = 0,2
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .5,.5
facing = -1
sprpriority = -2
ownpal = 1

[State 3200, Explod]
type = Explod
trigger1 = Var(5) = 4 && AnimElem = 29
trigger2 = Var(5) = 6 && AnimElem = 42
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

[State 3200, Helper]
type = Helper
trigger1 = AnimElem = 3
name = "Streak"
ID = 6241
stateno = 6241
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1
persistent = 0

[State 3200, Helper]
type = Helper
trigger1 = AnimElem = 8
name = "Streak"
ID = 62411
stateno = 6241
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1
persistent = 0

[State 3200, Helper]
type = Helper
trigger1 = AnimElem = 14
name = "Streak"
ID = 62412
stateno = 6241
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1
persistent = 0

[State 3200, Helper]
type = Helper
trigger1 = AnimElem = 21
name = "Streak"
ID = 62413
stateno = 6241
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1
persistent = 0

[State 3200, Helper]
type = Helper
trigger1 = Var(5) = 4
trigger1 = AnimElem = 29
name = "Streak"
ID = 62414
stateno = 6241
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1
persistent = 0

[State 3200, Explod]
type = Explod
trigger1 = Var(5) = 5
trigger1 = AnimElemTime(27) = 0
ID = 6075
anim = 6075
postype = P1  ;p2,front,back,left,right
pos = 10,0
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .7,.7
sprpriority = 4
ownpal = 1
ignorehitpause = 1

[State 3200, Explod]
type = Explod
trigger1 = Var(5) = 5
trigger1 = AnimElemTime(26) = 0
ID = 7015
anim = 7015
pos = 10,-50
postype = P1
facing = -1
bindtime = -1
removetime = -1
scale = .7,.7
sprpriority = 2
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
[State 3200, RemoveExplod]
type = RemoveExplod
trigger1 = Var(5) = 5
trigger1 = AnimElem = 38
ID = 7015
ignorehitpause = 1
[State 3200, Explod]
type = Explod
trigger1 = Var(5) = 5
trigger1 = AnimElemTime(38) = 0
ID = 7016
anim = 7016
pos = 10,-50
postype = P1
facing = -1
bindtime = 1
removetime = -2
scale = .7,.7
sprpriority = 2
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[State 3200, Explod]
type = Explod
trigger1 = Var(5) = 5
trigger1 = AnimElemTime(26) = 0
ID = 7017
anim = 7017
pos = 10,-10
postype = P1
facing = -1
bindtime = -1
removetime = -1
scale = 1.1,1.1
sprpriority = 3
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
[State 3200, RemoveExplod]
type = RemoveExplod
trigger1 = Var(5) = 5
trigger1 = AnimElem = 38
ID = 7017
ignorehitpause = 1
[State 3200, Explod]
type = Explod
trigger1 = Var(5) = 5
trigger1 = AnimElemTime(38) = 0
ID = 7018
anim = 7018
pos = 10,-10
postype = P1
facing = -1
bindtime = 1
removetime = -2
scale = 1.1,1.1
sprpriority = 3
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[State 3200, Explod]
type = Explod
trigger1 = Var(5) = 5
trigger1 = AnimElemTime(41) = 0
ID = 6241
anim = 6241
postype = P1  ;p2,front,back,left,right
pos = 0,-80
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 3200, Helper]
type = Helper
trigger1 = Var(5) = 6
trigger1 = AnimElem = 28
name = "Streak"
ID = 62415
stateno = 6241
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1
persistent = 0

[State 3200, Helper]
type = Helper
trigger1 = Var(5) = 6
trigger1 = AnimElem = 38
name = "Streak"
ID = 62416
stateno = 6241
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1
persistent = 0

[State 3200, Helper]
type = Helper
trigger1 = Var(5) = 6
trigger1 = AnimElem = 42
name = "Streak"
ID = 62417
stateno = 6241
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1
persistent = 0

[State 3200, Explod]
type = Explod
trigger1 = Var(5) = 6
trigger1 = AnimElem = 32
ID = 7280
anim = 7280
pos = 5,-30
postype = P1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
removeongethit = 1
supermovetime = 0
pausemovetime = 0
scale = .4,.3
sprpriority = 2
ownpal = 1
ignorehitpause = 1
[State 3200, Explod]
type = Explod
trigger1 = Var(5) = 6
trigger1 = AnimElem = 33
ID = 7280
anim = 7280
pos = 0,-70
postype = P1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
removeongethit = 1
supermovetime = 0
pausemovetime = 0
scale = .6,.4
sprpriority = 2
ownpal = 1
ignorehitpause = 1
[State 3200, Explod]
type = Explod
trigger1 = Var(5) = 6
trigger1 = AnimElem = 39
ID = 7280
anim = 7280
pos = 0,-78
postype = P1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
removeongethit = 1
supermovetime = 0
pausemovetime = 0
scale = .6,.4
sprpriority = 2
ownpal = 1
ignorehitpause = 1
[State 3200, Explod]
type = Explod
trigger1 = Var(5) = 6
trigger1 = AnimElem = 40
ID = 72801
anim = 7280
pos = 0,-60
postype = P1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
removeongethit = 1
supermovetime = 0
pausemovetime = 0
scale = .6,.3
sprpriority = 2
ownpal = 1
ignorehitpause = 1
[State 3200, Explod]
type = Explod
trigger1 = Var(5) = 6
trigger1 = AnimElem = 41
ID = 72802
anim = 7280
pos = 50,-60
postype = P1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
removeongethit = 1
supermovetime = 0
pausemovetime = 0
scale = .6,.3
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 3200, Explod]
type = Explod
trigger1 = Var(5) = 6 && AnimElem = 38
ID = 6100
anim = 6100
postype = P1  ;p2,front,back,left,right
pos = 0,-55
bindtime = 1
supermovetime = 0
pausemovetime = 0
scale = .35,.35
sprpriority = 2
ownpal = 1
ignorehitpause = 0
persistent = 0

[State 3200, RemoveExplod]
type = RemoveExplod
trigger1 = !Time
ID = 6005
ignorehitpause = 1
persistent = 1
[State 3200, RemoveExplod]
type = RemoveExplod
trigger1 = !Time
ID = 7009
ignorehitpause = 1
persistent = 1
[State 3200, RemoveExplod]
type = RemoveExplod
trigger1 = Var(5) = 6 && AnimElem = 41
ID = 72801
ignorehitpause = 1
persistent = 1

[State 3200, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3200)
trigger1 = !NumExplod(3200)
trigger1 = Target(3200),StateType != L
ID = 3200
anim = 8200+Random%32
pos = 25+Ceil(P2BodyDist X),-75
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 7
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 3200, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3201)
trigger1 = !NumExplod(3201)
trigger1 = Target(3201),StateType != L
ID = 3201
anim = 8200+Random%32
pos = 25+Ceil(P2BodyDist X),-78-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 7
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 3200, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3202)
trigger1 = !NumExplod(3202)
trigger1 = Target(3202),StateType != L
ID = 3202
anim = 8200+Random%32
pos = 30+Ceil(P2BodyDist X),-78-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 7
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 3200, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3203)
trigger1 = !NumExplod(3203)
trigger1 = Target(3203),StateType != L
ID = 3203
anim = 8200+Random%32
pos = 20+Ceil(P2BodyDist X),-75
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 7
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 3200, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3204)
trigger1 = !NumExplod(3204)
trigger1 = Target(3204),StateType != L
ID = 3204
anim = 8200+Random%32
pos = 40+Ceil(P2BodyDist X),-80
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 7
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 3200, Explod]
type = Explod
trigger1 = Var(5) = 5
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3205)
trigger1 = !NumExplod(3205)
trigger1 = Target(3205),StateType != L
ID = 3205
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3205),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 7
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0
[State 3200, Explod]
type = Explod
trigger1 = Var(5) = 5
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3206)
trigger1 = !NumExplod(3206)
trigger1 = Target(3206),StateType != L
ID = 3206
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3206),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 7
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0
[State 3200, Explod]
type = Explod
trigger1 = Var(5) = 5
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3207)
trigger1 = !NumExplod(3207)
trigger1 = Target(3207),StateType != L
ID = 3207
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3207),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 7
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0
[State 3200, Explod]
type = Explod
trigger1 = Var(5) = 5
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3208)
trigger1 = !NumExplod(3208)
trigger1 = Target(3208),StateType != L
ID = 3208
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3208),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 7
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0
[State 3200, Explod]
type = Explod
trigger1 = Var(5) = 5
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3209)
trigger1 = !NumExplod(3209)
trigger1 = Target(3209),StateType != L
ID = 3209
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3209),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 7
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0
[State 3200, Explod]
type = Explod
trigger1 = Var(5) = 5
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3210)
trigger1 = !NumExplod(3210)
trigger1 = Target(3210),StateType != L
ID = 3210
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3210),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 7
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0
[State 3200, Explod]
type = Explod
trigger1 = Var(5) = 5
trigger1 = MoveContact
trigger1 = NumTarget(3211)
trigger1 = Target(3211),StateType != L
trigger1 = !MoveGuarded
trigger1 = !NumExplod(3211)
ID = 3211
anim = 8200+Random%32
pos = 20+Ceil(P2BodyDist X),-75
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 3200, Explod]
type = Explod
trigger1 = Var(5) = 6
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3205)
trigger1 = !NumExplod(3205)
trigger1 = Target(3205),StateType != L
ID = 3205
anim = 8200+Random%32
pos = 30+Ceil(P2BodyDist X),-100
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 7
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 3200, Explod]
type = Explod
trigger1 = Var(5) = 6
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3206)
trigger1 = !NumExplod(3206)
trigger1 = Target(3206),StateType != L
ID = 3205
anim = 8200+Random%32
pos = 40+Ceil(P2BodyDist X),-20
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 7
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 3200, Explod]
type = Explod
trigger1 = Var(5) = 6
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3207)
trigger1 = !NumExplod(3207)
trigger1 = Target(3207),StateType != L
ID = 3207
anim = 8200+Random%32
pos = 40+Ceil(P2BodyDist X),-80
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 7
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 3200, Explod]
type = Explod
trigger1 = Var(5) = 4
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3204)
trigger1 = !NumExplod(6085)
trigger1 = Target(3204),StateType != A
trigger1 = Target(3204),StateType != L
trigger1 = Target(3204),StateNo = 2000
trigger1 = P2Life > 0
ID = 6085
anim = 6085
pos = 0,0;Ceil(P2Dist X),Ceil(P2Dist Y)+20
postype = P2
bindtime = -1
removetime = -2
removeongethit = 0
scale = .4,.45
sprpriority = 3
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[State 3200, HitDef]
type = HitDef
trigger1 = AnimElem = 3
attr = S,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*60),1
pausetime = 2,10
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-75
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = Low      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 25
guard.hittime = 20
guard.ctrltime = 20
yaccel = .5
ground.velocity = -2
air.velocity = -1,0
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 0
fall.recover = 0
air.fall = 1
p2facing = 1
kill = Cond(Var(5) = 6,0,1)
getpower = 0
givepower = 0,15
hitonce = 1
ID = 3200

[State 3200, HitDef]
type = HitDef
trigger1 = AnimElem = 8
attr = S,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*60),1
pausetime = 2,10
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-78
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 25
guard.hittime = 20
guard.ctrltime = 20
yaccel = .5
ground.velocity = -2
air.velocity = -1,-5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 0
fall.recover = 0
air.fall = 1
p2facing = 1
kill = Cond(Var(5) = 6,0,1)
getpower = 0
givepower = 0,15
hitonce = 1
ID = 3201

[State 3200, HitDef]
type = HitDef
trigger1 = AnimElem = 14
attr = S,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*60),1
pausetime = 2,5
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-78
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 25
guard.hittime = 20
guard.ctrltime = 20
yaccel = .5
ground.velocity = -2
air.velocity = -1,-6
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 0
fall.recover = 0
air.fall = 1
p2facing = 1
kill = Cond(Var(5) = 6,0,1)
getpower = 0
givepower = 0,15
hitonce = 1
ID = 3202

[State 3200, HitDef]
type = HitDef
trigger1 = AnimElem = 21
attr = S,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*60),1
pausetime = 2,10
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-75
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 25
guard.hittime = 20
guard.ctrltime = 20
yaccel = .5
ground.velocity = -2
air.velocity = -2,-6
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 0
fall.recover = 0
air.fall = 1
p2facing = 1
kill = Cond(Var(5) = 6,0,1)
p2sprpriority = 2
getpower = 0
givepower = 0,15
hitonce = 1
ID = 3203

[State 3200, HitDef]
type = HitDef
trigger1 = Var(5) = 4
trigger1 = AnimElem = 29
attr = S,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = DiagUp
priority = 11,Hit
damage = Ceil(FVar(5)*60),1
pausetime = 9,9
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-80
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 50
guard.hittime = 30
guard.ctrltime = 30
yaccel = .5
ground.velocity = -12
air.velocity = -9,-9
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 0
fall.recover = 0
air.fall = 1
p2sprpriority = -1
getpower = 0
givepower = 0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 3204

[State 3200, HitDef]
type = HitDef
trigger1 = Var(5) = 5
trigger1 = AnimElemTime(30) = 0
attr = S,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*60),1
pausetime = 3,3
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-80
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 35
guard.hittime = 30
guard.ctrltime = 30
yaccel = .5
ground.velocity = Cond(P2Dist X < 0,0,12),-5
air.velocity = Cond(P2Dist X < 0,0,12),-5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,15
hitonce = 1
ID = 3205
[State 3200, HitDef]
type = HitDef
trigger1 = Var(5) = 5
trigger1 = AnimElemTime(31) = 0
attr = S,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*30),1
pausetime = 3,3
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-80
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = Low      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 35
guard.hittime = 30
guard.ctrltime = 30
yaccel = .5
ground.velocity = Cond(P2Dist X < 0,-12,0),-5
air.velocity = Cond(P2Dist X < 0,-12,0),-5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 3206
[State 3200, HitDef]
type = HitDef
trigger1 = Var(5) = 5
trigger1 = AnimElemTime(32) = 0
attr = S,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*30),1
pausetime = 3,3
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-80
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 35
guard.hittime = 30
guard.ctrltime = 30
yaccel = .5
ground.velocity = Cond(P2Dist X < 0,0,12),-5
air.velocity = Cond(P2Dist X < 0,0,12),-5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 3207
[State 3200, HitDef]
type = HitDef
trigger1 = Var(5) = 5
trigger1 = AnimElemTime(33) = 0
attr = S,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*30),1
pausetime = 3,3
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-80
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = Low      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 35
guard.hittime = 30
guard.ctrltime = 30
yaccel = .5
ground.velocity = Cond(P2Dist X < 0,-12,0),-5
air.velocity = Cond(P2Dist X < 0,-12,0),-5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 3208
[State 3200, HitDef]
type = HitDef
trigger1 = Var(5) = 5
trigger1 = AnimElemTime(34) = 0
attr = S,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*30),1
pausetime = 3,3
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-80
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 35
guard.hittime = 30
guard.ctrltime = 30
yaccel = .5
ground.velocity = Cond(P2Dist X < 0,0,12),-5
air.velocity = Cond(P2Dist X < 0,0,12),-5
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 3209
[State 3200, HitDef]
type = HitDef
trigger1 = Var(5) = 5
trigger1 = AnimElemTime(35) = 0
attr = S,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*30),1
pausetime = 3,3
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-80
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = Low      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 35
guard.hittime = 30
guard.ctrltime = 30
yaccel = .5
ground.velocity = -10,-3
air.velocity = -10,-3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 3210
[State 3200, HitDef]
type = HitDef
trigger1 = Var(5) = 5
trigger1 = AnimElemTime(42) = 0
attr = S,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = DiagUp         ;light,medium,hard,back,up,diagup
air.animtype = DiagUp
fall.animtype = DiagUp
priority = 11,Hit
damage = Ceil(FVar(5)*30),1
pausetime = 13,13
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-80
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 35
guard.hittime = 30
guard.ctrltime = 30
yaccel = .5
ground.velocity = -15,-12
air.velocity = -15,-12
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 3211

[State 3200, TargetBind]
type = TargetBind
trigger1 = Var(5) = 5
trigger1 = NumTarget(3205)
trigger1 = Target(3205),MoveType = H
trigger1 = !MoveGuarded
ID = 3205
pos = 40,0
time = 1
ignorehitpause = 1
persistent = 0
[State 3200, TargetBind]
type = TargetBind
trigger1 = Var(5) = 5
trigger1 = NumTarget(3206)
trigger1 = Target(3206),MoveType = H
trigger1 = !MoveGuarded
ID = 3206
pos = -40,-30
time = 1
ignorehitpause = 1
persistent = 0
[State 3200, TargetBind]
type = TargetBind
trigger1 = Var(5) = 5
trigger1 = NumTarget(3207)
trigger1 = Target(3207),MoveType = H
trigger1 = !MoveGuarded
ID = 3207
pos = 40,-30
time = 1
ignorehitpause = 1
persistent = 0
[State 3200, TargetBind]
type = TargetBind
trigger1 = Var(5) = 5
trigger1 = NumTarget(3208)
trigger1 = Target(3208),MoveType = H
trigger1 = !MoveGuarded
ID = 3208
pos = -40,-30
time = 1
ignorehitpause = 1
persistent = 0
[State 3200, TargetBind]
type = TargetBind
trigger1 = Var(5) = 5
trigger1 = NumTarget(3209)
trigger1 = Target(3209),MoveType = H
trigger1 = !MoveGuarded
ID = 3209
pos = 40,-30
time = 1
ignorehitpause = 1
persistent = 0
[State 3200, TargetBind]
type = TargetBind
trigger1 = Var(5) = 5
trigger1 = NumTarget(3210)
trigger1 = Target(3210),MoveType = H
trigger1 = !MoveGuarded
ID = 3210
pos = -40,-30
time = 1
ignorehitpause = 1
persistent = 0

[State 3200, HitDef]
type = HitDef
trigger1 = Var(5) = 6
trigger1 = AnimElem = 28
attr = S,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Up         ;light,medium,hard,back,up,diagup
air.animtype = Up
fall.animtype = Up
priority = 11,Hit
damage = Ceil(FVar(5)*60),1
pausetime = 2,2
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-80
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 35
guard.hittime = 30
guard.ctrltime = 30
yaccel = .5
ground.velocity = -1,-15
air.velocity = -1,-15
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
kill = 0
p2sprpriority = 2
getpower = 0
givepower = 0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 3205

[State 3200, HitDef]
type = HitDef
trigger1 = Var(5) = 6
trigger1 = AnimElem = 38
attr = A,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*60),1
pausetime = 2,9
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-80
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = Low      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 35
guard.hittime = 30
guard.ctrltime = 30
yaccel = .5
ground.velocity = 0
air.velocity = 0,12
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
kill = 0
p2sprpriority = -1
getpower = 0
givepower = 0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 3206

[State 3200, HitDef]
type = HitDef
trigger1 = Var(5) = 6
trigger1 = AnimElem = 42 && AnimElemTime(42) <= 5
attr = S,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium         ;light,medium,hard,back,up,diagup
air.animtype = Medium
fall.animtype = Medium
priority = 11,Hit
damage = Ceil(FVar(5)*100),1
pausetime = 0,10
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-80
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 10
ground.hittime = 150
guard.hittime = 30
guard.ctrltime = 30
yaccel = .5
ground.velocity = -12
air.velocity = -10,-10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 0
fall.recover = 0
air.fall = 1
kill = 1
p2facing = 1
p2sprpriority = -1
getpower = 0
givepower = 0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 3207

[State 3200, TargetState]
type = TargetState
trigger1 = Var(5) = 4
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3204)
trigger1 = Target(3204),MoveType = H
trigger1 = Target(3204),StateType != A
trigger1 = Target(3204),StateType != L
trigger1 = P2Life > Ceil(FVar(5)*60)
value = 2000
ID = 3204
ignorehitpause = 1
persistent = 0

[State 3200, TargetState]
type = TargetState
trigger1 = Var(5) = 6
trigger1 = NumTarget(3205)
trigger1 = Target(3205),MoveType = H
trigger1 = !MoveGuarded
trigger1 = Target(3205),StateNo != 3250
value = 3250
ID = 3205
ignorehitpause = 1
persistent = 0
[State 3200, TargetState]
type = TargetState
trigger1 = Var(5) = 6
trigger1 = NumTarget(3206)
trigger1 = Target(3206),MoveType = H
trigger1 = !MoveGuarded
trigger1 = Target(3206),StateNo != 3251
value = 3251
ID = 3206
ignorehitpause = 1
persistent = 0
[State 3200, TargetState]
type = TargetState
trigger1 = Var(5) = 6
trigger1 = NumTarget(3207)
trigger1 = Target(3207),StateNo != 3252
trigger1 = Target(3207),MoveType = H
trigger1 = Target(3207),StateType = A
trigger1 = Target(3207),Alive
trigger1 = !MoveGuarded
trigger1 = AnimElemTime(42) >= 0 && AnimElemTime(42) <= 5
value = 3252
ID = 3207
ignorehitpause = 1
persistent = 0
[State 3200, TargetBind]
type = TargetBind
trigger1 = Var(5) = 6
trigger1 = NumTarget(3207)
trigger1 = Target(3207),MoveType = H
trigger1 = Target(3207),StateType = A
trigger1 = !MoveGuarded
trigger1 = AnimElemTime(42) >= 0 && AnimElemTime(42) <= 5
ID = 3207
pos = 124,-80
time = 1
ignorehitpause = 1
persistent = 0

[State 3200, Trans]
type = Trans
trigger1 = Var(5) = 6
trigger1 = AnimElemTime(32) = [0,5]
trans = AddAlpha
alpha = (256-50*(Time-94)),(0+50*(Time-94))
ignorehitpause = 1

[State 3200, Trans]
type = Trans
trigger1 = Var(5) = 6
trigger1 = AnimElemTime(39) >= 0 && AnimElemTime(40) < 0
trans = AddAlpha
alpha = (256-50*(Time-107)),(0+50*(Time-107))
ignorehitpause = 1

[State 3200, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(19) = 0
statetype = A        ;I,A,H
physics = N

[State 3200, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(25) = 0
statetype = S        ;I,A,H
physics = N

[State 3200, StateTypeSet]
type = StateTypeSet
trigger1 = Var(5) = 5
trigger1 = AnimElemTime(27) = 0
statetype = A        ;I,A,H
physics = N

[State 3200, StateTypeSet]
type = StateTypeSet
trigger1 = Var(5) = 4
trigger1 = AnimElemTime(31) > 0
movetype = I        ;I,A,H

[State 3200, StateTypeSet]
type = StateTypeSet
trigger1 = Var(5) = 5
trigger1 = AnimElemTime(43) > 0
movetype = I        ;I,A,H

[State 3200, StateTypeSet]
type = StateTypeSet
trigger1 = Var(5) = 6
trigger1 = AnimElemTime(33) = 0
statetype = A        ;I,A,H
physics = N

[State 3200, StateTypeSet]
type = StateTypeSet
trigger1 = Var(5) = 6
trigger1 = AnimElemTime(40) = 0
statetype = S        ;I,A,H
physics = N

[State 3200, StateTypeSet]
type = StateTypeSet
trigger1 = Var(5) = 6
trigger1 = AnimElemTime(44) > 0
movetype = I        ;I,A,H

[State 3200, VelSet]
type = VelSet
trigger1 = AnimElemTime(2) = 0
x = 13
[State 3200, VelSet]
type = VelSet
trigger1 = AnimElemTime(6) = 0
x = 8
[State 3200, VelSet]
type = VelSet
trigger1 = AnimElemTime(12) = 0
x = 11
[State 3200, VelSet]
type = VelSet
trigger1 = AnimElemTime(18) = 0
x = 5
[State 3200, VelSet]
type = VelSet
trigger1 = Var(5) = 4
trigger1 = AnimElemTime(27) = 0
x = 2

[State 3200, VelSet]
type = VelSet
trigger1 = Var(5) > 4
trigger1 = AnimElemTime(26) = 0
x = 5

[State 3200, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) = 0
trigger2 = AnimElemTime(8) = 0
trigger3 = AnimElemTime(14) = 0
trigger4 = AnimElemTime(25) = 0
trigger5 = AnimElemTime(28) = 0
x = 0

[State 3200, VelSet]
type = VelSet
trigger1 = AnimElemTime(18) = 0
y = -4

[State 3200, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(18) >= 0 && AnimElemTime(25) < 0
y = .5

[State 3200, VelSet]
type = VelSet
trigger1 = AnimElemTime(25) = 0
y = 0

[State 3200, VelSet]
type = VelSet
trigger1 = Var(5) = 5
trigger1 = AnimElemTime(27) = 0
y = -5
[State 3200, VelMul]
type = VelMul
trigger1 = Var(5) = 5
trigger1 = AnimElemTime(36) >= 0 && AnimElemTime(40) < 0
y = .8
[State 3200, VelSet]
type = VelSet
trigger1 = Var(5) = 5
trigger1 = AnimElemTime(40) = 0
y = 0

[State 3200, VelAdd]
type = VelAdd
trigger1 = Var(5) = 5
trigger1 = AnimElemTime(45) >= 0
y = .5

[State 3200, PosSet]
type = PosSet
trigger1 = AnimElemTime(25) = 0
y = 0

[State 3200, PosSet]
type = PosSet
trigger1 = Var(5) = 6
trigger1 = NumTarget(3205)
trigger1 = Target(3205),StateNo = 3250
trigger1 = AnimElem = 33
y = Target(3205),Pos Y-20
[State 3200, PosSet]
type = PosSet
trigger1 = Var(5) = 6
trigger1 = AnimElem = 33
trigger1 = NumEnemy
trigger1 = EnemyNear,StateNo != 3250
y = -120

[State 3200, PosAdd]
type = PosAdd
trigger1 = Var(5) = 6
trigger1 = AnimElem = 40
x = -40
[State 3200, PosSet]
type = PosSet
trigger1 = Var(5) = 6
trigger1 = AnimElem = 40
y = 0

[State 3200, Helper]
type = Helper
trigger1 = !NumHelper(9500) && Abs(P2Dist Y) < 140
trigger1 = Time = 1
ID = 9500
stateno = 9500
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

[State 3200, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S3200,0
channel = 0

[State 3200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
trigger2 = AnimElem = 7
trigger3 = AnimElem = 13
trigger4 = AnimElem = 20
trigger5 = Var(5) = 4
trigger5 = AnimElem = 28
trigger6 = Var(5) = 6
trigger6 = AnimElem = 27
trigger7 = Var(5) = 6
trigger7 = AnimElem = 37
trigger8 = Var(5) = 5
trigger8 = AnimElem = 41
value = S212,0+(Random%2)
channel = -1

[State 3200, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 6
trigger1 = AnimElem = 41
value = S220,1
channel = -1

[State 3200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 18
value = S40,0
channel = -1

[State 3200, PlaySnd]
type = PlaySnd
triggerall = Var(5) != 5
trigger1 = AnimElem = 32
trigger2 = AnimElem = 39
value = S3100,4
channel = 7

[State 3200, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 5
trigger1 = AnimElem = 27
value = S1000,2
channel = -1
[State 3200, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 5
trigger1 = AnimElem = 27
value = S1610,0
channel = -1

[State 3200, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 6
trigger1 = NumTarget(3206)
trigger1 = Target(3206),StateNo = 3251
trigger1 = Target(3206),Alive
trigger1 = AnimElem = 40
value = S3003,0
channel = 1
ignorehitpause = 1
persistent = 0
[State 3200, PlaySnd]
type = PlaySnd
trigger1 = Var(5) = 6
trigger1 = NumTarget(3206)
trigger1 = Target(3206),StateNo = 3251
trigger1 = Target(3206),Alive
trigger1 = AnimElem = 40
value = S3003,0
channel = -1
ignorehitpause = 1
persistent = 0

[State 3200, ChangeState]
type = ChangeState
trigger1 = Var(5) = 5
trigger1 = AnimElemTime(42) > 0 && Vel Y > 0 && Pos Y >= 0
value = 52
ctrl = 0

[State 3200, ChangeState]
type = ChangeState
trigger1 = Var(5) != 5
trigger1 = !AnimTime
value = 0
ctrl = 1

[State 3200, ChangeState]
type = ChangeState
trigger1 = Var(5) = 6
trigger1 = StateNo != 3203
trigger1 = NumTarget(3207)
trigger1 = Target(3207),MoveType = H
trigger1 = Target(3207),StateType = A
trigger1 = Target(3207),Alive
trigger1 = !MoveGuarded
trigger1 = AnimElemTime(42) >= 0 && AnimElemTime(42) <= 5
value = 3203
ctrl = 0
ignorehitpause = 1
persistent = 0

;-------------------------------------------------------------------------------------------------------------------------------------------
;TOTAL WIPEOUT H2
[StateDef 3203]
type = S
physics = N
movetype = A
anim = 3203
ctrl = 0
velset = 0,0
sprpriority = 1

[State 3203, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = SCA
time = 45

[State 3203, Pause]
type = Pause
trigger1 = NumTarget(3207)
trigger1 = Target(3207),HitShakeOver
trigger1 = AnimElemTime(2) < 0
trigger1 = Time%2 = 0
time = 4
movetime = 0
pausebg = 1
ignorehitpause = 1

[State 3203, EnvShake]
type = EnvShake
trigger1 = AnimElemTime(2) < 0
time = 20

[State 3203, TargetBind]
type = TargetBind
trigger1 = NumTarget(3207)
trigger1 = !Time
ID = 3207
pos = 124,-80
time = 1
ignorehitpause = 1

[State 3203, Helper]
type = Helper
trigger1 = Numtarget(3207)
trigger1 = !Time
ID = 7200
stateno = 7200
name = "DizzyFX"
postype = P2
ownpal = 1
facing = -1
size.ground.front = 0
size.ground.back = 0
ignorehitpause = 1
persistent = 0

[State 3203, Explod]
type = Explod
trigger1 = NumTarget(3207)
trigger1 = AnimElemTime(1) = 13
ID = 7901
anim = 7901
pos = ScreenWidth/2,ScreenHeight/2
space = Screen
removetime = -2
removeongethit = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = -11
ownpal = 1
ignorehitpause = 1

[State 3203, ModifyExplod]
type = ModifyExplod
trigger1 = NumTarget(3207)
trigger1 = AnimElemTime(1) > 42
ID = 7901
sprpriority = 10

[State 3203, Helper]
type = Helper
trigger1 = !NumHelper(6029)
trigger1 = NumTarget(3207)
trigger1 = !Time
name = "Charge"
ID = 6029
stateno = 6029
pos = 115,-80
postype = P1    ;p2,front,back,left,right
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 900
supermovetime = 0
ignorehitpause = 1

[State 3203, Explod]
type = Explod
trigger1 = NumTarget(3207)
trigger1 = !Time
ID = 6041
anim = 6041
pos = 124,-80
postype = P1
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 900
scale = 1,1
sprpriority = 6
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 3203, Explod]
type = Explod
triggerall = NumTarget(3207)
trigger1 = Time = 13
trigger2 = Time = 16
trigger3 = Time = 19
trigger4 = Time = 22
trigger5 = Time = 40
ID = 6041
anim = 6041
pos = 124,-80
postype = P1
random = 30,30
facing = Cond(Random < 500,1,-1)
vfacing = Cond(Random < 500,1,-1)
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 900
scale = .8,.8
sprpriority = 5
ownpal = 1
removeongethit = 0
ignorehitpause = 1
[State 3203, Explod]
type = Explod
triggerall = NumTarget(3207)
trigger1 = Time = 13
trigger2 = Time = 16
trigger3 = Time = 19
trigger4 = Time = 22
trigger5 = Time = 40
ID = 7300
anim = 7300
pos = 124,-80
postype = P1
random = 30,30
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 900
scale = .4,.4
sprpriority = 7
ownpal = 1
removeongethit = 0
ignorehitpause = 1
[State 3203, Explod]
type = Explod
trigger1 = NumTarget(3207)
trigger1 = Time = 40
ID = 6240
anim = 6240
postype = P1  ;p2,front,back,left,right
pos = 124,-80
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,.9
sprpriority = 8
ownpal = 1
ignorehitpause = 1

[State 3203, TargetLifeAdd]
type = TargetLifeAdd
triggerall = NumTarget(3207)
trigger1 = Time = 13
trigger2 = Time = 16
trigger3 = Time = 19
trigger4 = Time = 22
value = -Ceil(FVar(5)*20)
ID = 3207
kill = 0
absolute = 1
[State 3203, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = NumTarget(3207)
trigger1 = Time = 40
value = -Ceil(FVar(5)*140)
ID = 3207
kill = 1
absolute = 1

[State 3203, Helper]
type = Helper
trigger1 = !NumHelper(9600) && Abs(P2Dist Y) < 140
trigger1 = NumTarget(3207)
ID = 9620
stateno = 9620
name = "ZoomHelper"
facing = 1
pos = 0,0
postype = P1
supermovetime = 9999
pausemovetime = 9999
size.xscale = Const(Size.XScale)
size.yScale = Const(Size.YScale)
size.proj.doscale = Target(3207),ID; Give Parent ID to Child
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 3203, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(3207)
trigger1 = Time = Cond(Target(3207),Life > Ceil(FVar(5)*100),0,2)
value = S1000,5
channel = 2
[State 3203, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(3207)
trigger1 = Time = Cond(Target(3207),Life > Ceil(FVar(5)*100),0,2)
value = S1000,5
channel = 3
[State 3203, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(3207)
trigger1 = Time = Cond(Target(3207),Life > Ceil(FVar(5)*100),0,2)
value = S1000,5
channel = 4

[State 3203, PlaySnd]
type = PlaySnd
trigger1 = Time = 10
value = S3003,0
channel = -1
[State 3203, PlaySnd]
type = PlaySnd
trigger1 = Time = 10
value = S3003,0
channel = -1

[State 3203, PlaySnd]
type = PlaySnd
trigger1 = Time = 40
value = S3200,1
channel = 2
[State 3203, PlaySnd]
type = PlaySnd
trigger1 = Time = 40
value = S3200,1
channel = 3
[State 3203, PlaySnd]
type = PlaySnd
trigger1 = Time = 40
value = S3200,1
channel = 4

[State 3203, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-------------------------------------------------------------------------------------------------------------------------------------------
;TOTAL WIPEOUT M TARGET 1
[StateDef 3250]
type = A
movetype = H
physics = N
velset = 0,0
sprpriority = 0

[State 3250, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3250

[State 3250, NotHitBy]
type = NotHitBy
trigger1 = 1
value = ,AP,AT
time = 1

[State 3250, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = -1
y = -13

[State 3250, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) >= 0
y = .5

[State 3250, VelMul]
type = VelMul
trigger1 = Pos Y <= -200
trigger1 = AnimElemTime(2) >= 0
y = .5

[State 3250, SelfState]
type = SelfState
trigger1 = Vel Y > 0 && Pos Y >= -10
value = 5100
ctrl = 0

;-------------------------------------------------------------------------------------------------------------------------------------------
;TOTAL WIPEOUT M TARGET 2
[StateDef 3251]
type = A
movetype = H
physics = N
velset = 0,0
sprpriority = -1

[State 3251, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3251

[State 3251, NotHitBy]
type = NotHitBy
trigger1 = 1
value = ,AP,AT
time = 1

[State 3251, VelSet]
type = VelSet
trigger1 = AnimElem = 1
x = GetHitVar(XVel)*Facing
y = 30;1.2*P2Dist Y
persistent = 0

[State 3251, VelAdd]
type = VelAdd
trigger1 = Pos Y < -90
y = .5

[State 3251, VelMul]
type = VelMul
trigger1 = Pos Y >= -90
y = .7;.5

[State 3251, VelAdd]
type = VelAdd
trigger1 = Time >= 100
y = .5

[State 3251, SelfState]
type = SelfState
trigger1 = AnimElemTime(1) >= 0
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 5100
ctrl = 0

;-------------------------------------------------------------------------------------------------------------------------------------------
;TOTAL WIPEOUT H TARGET 1
[StateDef 3252]
type = A
movetype = H
physics = N
velset = 0,0
sprpriority = 0

[State 3252, SprPriority]
type = SprPriority
trigger1 = AnimElemTime(5) < 0
value = -1
ignorehitpause = 1
[State 3252, SprPriority]
type = SprPriority
trigger1 = AnimElemTime(2) >= 0
value = 0
ignorehitpause = 1

[State 3252, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3252

[State 3252, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3252, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 3252, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 3252, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(1) = 12
trigger2 = AnimElemTime(1) = 22
trigger3 = AnimElemTime(1) = 32
x = -5
y = -5
[State 3252, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(1) = 14
trigger2 = AnimElemTime(1) = 24
trigger3 = AnimElemTime(1) = 34
x = 5;10
y = 0
[State 3252, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(1) = 16
trigger2 = AnimElemTime(1) = 26
trigger3 = AnimElemTime(1) = 36
x = -10
y = 9
[State 3252, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(1) = 18
trigger2 = AnimElemTime(1) = 28
trigger3 = AnimElemTime(1) = 38
x = 5;10
y = 0
[State 3252, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(1) = 20
trigger2 = AnimElemTime(1) = 30
trigger3 = AnimElemTime(1) = 40
x = -5
y = -6


[State 3252, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(2) = 0
y = -Ceil(.5*(Const(Size.Mid.Pos.Y)*Ceil(Const(Size.YScale))))

[State 3252, VelSet]
type = VelSet
trigger1 = AnimElemTime(1) = 5
x = -.5
y = -.1

[State 3252, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = -1
y = 0
[State 3252, VelSet]
type = VelSet
trigger1 = AnimElem = 15
y = 4

[State 3252, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(15) >= 0
y = .5

[State 3252, ChangeState]
type = ChangeState
trigger1 = AnimElemTime(16) >= 0
trigger1 = Vel Y > 0 && Pos Y >= -10
value = 3253
ctrl = 0

;--------------------------------------------------------------------------------------------------------------------------------------------
;TOTAL WIPEOUT H TARGET 2
[StateDef 3253]
type = L
movetype = H
physics = N
velset = -12,0

[State 3253, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3253

[State 3253, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 1

[State 3253, VelMul]
type = VelMul
trigger1 = 1
x = .9

[State 3253, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 0

[State 3253, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3253, ChangeState]
type = ChangeState
trigger1 = Alive
trigger1 = AnimElemTime(2) >= 50
value = 3254

[State 3253, SelfState]
type = SelfState
trigger1 = !Alive
trigger1 = AnimElemTime(2) >= 50
value = 5150

;-------------------------------------------------------------------------------------------------------------------------------------------
;TOTAL WIPEOUT H TARGET 3
[StateDef 3254]
type = L
movetype = H
physics = N

[State 3254, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5120

[State 3254, VelSet]
type = VelSet
trigger1 = !Time
x = 0

[State 3254, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3254, HitFallSet]
type = HitFallSet
trigger1 = !AnimTime
value = 1

[State 3254, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3254, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 3255

;-------------------------------------------------------------------------------------------------------------------------------------------
;TOTAL WIPEOUT H TARGET 4
[StateDef 3255]
type = S
physics = S
movetype = H
velset = 0,0
sprpriority = -3

[State 3255, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3255

[State 3255, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 3255
trigger1 = !AnimTime
trigger2 = Anim = 3255
trigger2 = AnimElemTime(1) = 0
trigger2 = PrevStateNo = 3254
value = 5300
persistent = 0

[State 3255, VelSet]
type = VelSet
trigger1 = Anim = 3255
trigger1 = AnimElemTime(2) = 0
x = GetHitVar(XVel)*Facing

[State 3255, PosSet]
type = PosSet
trigger1 = 1
y = 0
ignorehitpause = 1
persistent = 1

[State 3255, ChangeState]
type = ChangeState
trigger1 = !Alive
trigger1 = Time > 5
value = 3256
ctrl = 0

[State 3255, SelfState]
type = SelfState
trigger1 = Anim = 5300
trigger1 = Alive
trigger1 = Time >= 150
value = 0
ctrl = 1

;-------------------------------------------------------------------------------------------------------------------------------------------
;TOTAL WIPEOUT H TARGET 5
[StateDef 3256]
type = C
physics = N
movetype = H
velset = 0,0
sprpriority = -3

[State 3256, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3256, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = SelfAnimExist(5950)
value = 5950

[State 3256, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
trigger1 = SelfAnimExist(5955)
value = 5955

[State 3256, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
trigger1 = Anim != [5950,5955]
value = 3256

[State 3256, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 3256 && !AnimTime
value = 5080

[State 3256, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1
persistent = 1

[State 3256, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3256, ChangeState]
type = ChangeState
trigger1 = Anim = 5950 && AnimElemTime(AnimElemNo(0)+1) = 0
trigger2 = Anim = 5955 && AnimElemTime(AnimElemNo(0)+1) = 0
trigger3 = Anim = 5080 && AnimElemTime(AnimElemNo(0)+1) = 0
value = 3257

;-------------------------------------------------------------------------------------------------------------------------------------------
;TOTAL WIPEOUT H TARGET 6
[StateDef 3257]
type = L
movetype = H
physics = N
velset = 0,0
ctrl = 0

[State 3257, PosSet]
type = PosSet
trigger1 = 1
y = 0
ignorehitpause = 1
persistent = 1

[State 3257, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 3257, ChangeAnim]
type = ChangeAnim
triggerall = Anim != 5950
trigger1 = !Time
value = 5110+(SelfAnimExist(5112)*2)

[State 3257, ChangeAnim]
type = ChangeAnim
triggerall = Anim != 5950
trigger1 = SelfAnimExist(5140+(Anim%10))
trigger1 = !Time
value = 5140+(SelfAnimExist(5142)*2)

[State 3257, Turn]
type = Turn
triggerall = Time = 40
trigger1 = Name = "cvszangief" && AuthorName = "warusaki3"
trigger2 = Name = "cvszangief_normal" && AuthorName = "warusaki3"
trigger3 = Name = "cvszangief_ex" && AuthorName = "warusaki3"
trigger4 = Name = "raiden" && AuthorName = "HÅh"

[State 3257, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 3257, SelfState]
type = SelfState
trigger1 = Time = 10
value = Cond(Alive,5120,5150)

;-------------------------------------------------------------------------------------------------------------------------------------------
;TOTAL WIPEOUT H TARGET 1
;[StateDef 3252]
;type = A
;movetype = H
;physics = N
;velset = 0,0
;sprpriority = 0
;
;[State 3252, SprPriority]
;type = SprPriority
;trigger1 = AnimElemTime(5) < 0
;value = -1
;ignorehitpause = 1
;[State 3252, SprPriority]
;type = SprPriority
;trigger1 = AnimElemTime(5) >= 0
;value = 21
;ignorehitpause = 1
;
;[State 3252, ChangeAnim2]
;type = ChangeAnim2
;trigger1 = !Time
;value = 3252
;
;[State 3252, NotHitBy]
;type = NotHitBy
;trigger1 = 1
;value = SCA
;time = 1
;
;[State 3252, ScreenBound]
;type = ScreenBound
;trigger1 = 1
;value = 0
;movecamera = 0,0
;
;[State 3252, PlayerPush]
;type = PlayerPush
;trigger1 = 1
;value = 0
;ignorehitpause = 1
;
;[State 3252, AssertSpecial]
;type = AssertSpecial
;trigger1 = AnimElemTime(5) >= 0 && AnimElemTime(5) < 100
;flag = Invisible
;
;[State 3252, VelSet]
;type = VelSet
;trigger1 = AnimElem = 2
;x = -20
;y = -4
;
;[State 3252, VelSet]
;type = VelSet
;trigger1 = BackEdgeDist <= -130 && AnimElemTime(5) < 100
;trigger2 = AnimElem = 5
;x = 0
;y = 0
;
;[State 3252, VelSet]
;type = VelSet
;trigger1 = AnimElemTime(5) = 120
;x = 2.5
;
;[State 3252, VelSet]
;type = VelSet
;trigger1 = Pos X = [-5,5]
;trigger1 = AnimElemTime(5) >= 120
;x = 0
;
;[State 3252, PosAdd]
;type = PosAdd
;trigger1 = AnimElemTime(2) = 0
;y = -Const(Size.Head.Pos.Y)*Ceil(Const(Size.YScale))
;
;[State 3252, VelAdd]
;type = VelAdd
;trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(5) < 0
;trigger2 = AnimElemTime(6) >= 0
;y = .5
;
;[State 3252, SelfState]
;type = SelfState
;trigger1 = AnimElemTime(6) >= 0
;trigger1 = Vel Y > 0 && Pos Y >= -10
;value = 5100
;ctrl = 0

;-------------------------------------------------------------------------------------------------------------------------------------------
;TOTAL WIPEOUT H TARGET 2
;[StateDef 3253]
;type = A
;movetype = H
;physics = N
;velset = 0,0
;sprpriority = 21
;
;[State 3253, ChangeAnim2]
;type = ChangeAnim2
;trigger1 = !Time
;value = 3253
;
;[State 3253, ScreenBound]
;type = ScreenBound
;trigger1 = 1
;value = 1
;movecamera = 1,0
;
;[State 3253, NotHitBy]
;type = NotHitBy
;trigger1 = 1
;value = SCA
;time = 1
;
;[State 3254, VelSet]
;type = VelSet
;trigger1 = AnimElem = 2
;x = -5
;y = -5
;
;[State 3253, VelAdd]
;type = VelAdd
;trigger1 = AnimElemTime(2) >= 0
;y = .5
;
;[State 3253, SelfState]
;type = SelfState
;trigger1 = AnimElemTime(6) >= 0
;trigger1 = Vel Y > 0 && Pos Y >= -10
;value = 5100
;ctrl = 0

;-------------------------------------------------------------------------------------------------------------------------------------------
;TOTAL WIPEOUT H TARGET 2
;[StateDef 3254]
;type = A
;movetype = H
;physics = N
;velset = 0,0
;sprpriority = 21
;
;[State 3254, ChangeAnim2]
;type = ChangeAnim2
;trigger1 = !Time
;value = 3254
;
;[State 3254, ScreenBound]
;type = ScreenBound
;trigger1 = 1
;value = 1
;movecamera = 1,0
;
;[State 3254, NotHitBy]
;type = NotHitBy
;trigger1 = AnimElemTime(6) < 0
;value = SCA
;time = 1
;
;[State 3254, VelSet]
;type = VelSet
;trigger1 = AnimElem = 2
;x = -10
;y = -10
;
;[State 3254, VelAdd]
;type = VelAdd
;trigger1 = AnimElemTime(2) >= 0
;y = .5
;
;[State 3254, SprPriority]
;type = SprPriority
;trigger1 = AnimElemTime(6) >= 0
;trigger1 = Vel Y > 0
;value = 0
;
;[State 3254, SelfState]
;type = SelfState
;trigger1 = AnimElemTime(6) >= 0
;trigger1 = Vel Y > 0 && Pos Y >= -10
;value = 5100
;ctrl = 0

;-------------------------------------------------------------------------------------------------------------------------------------------
;BUSTER SAW
[StateDef 3300]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
sprpriority = 1
facep2 = 1

[State 3300, VarSet]
type = VarSet
trigger1 = !Time
var(5) = 4;Cond(Power >= 3000,6,Cond((Power < 3000 && Power >= 2000),5,4))

[State 3300, VarSet]
type = VarSet
trigger1 = !Time
fvar(13) = Cond(Var(5) = 6,.9,Cond(Var(5) = 5,.8,.7))

[State 3300, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = Cond(Var(5) = 6,3302,Cond(Var(5) = 5,3301,3300))

[State 3300, PowerAdd]
type = PowerAdd
trigger1 = Time = 1
value = Cond(Var(5) = 6,-3000,Cond(Var(5) = 5,-2000,-1000))

[State 3300, StopSnd]
type = StopSnd
trigger1 = !Time
channel = 0
ignorehitpause = 1
persistent = 0

[State 3300, SuperPause]
type = SuperPause
trigger1 = !Time
time = 40
anim = -1
sound = S6360,0
movetime = 40
darken = 0
p2defmul = 1

[State 3300, AssertSpecial]
type = AssertSpecial
trigger1 = Time < 42
flag = NoBarDisplay
ignorehitpause = 1

[State 3300, Explod]
type = Explod
trigger1 = !Time
ID = 6360
anim = 6360
pos = 10,-108
postype = P1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
supermovetime = 900
pausemovetime = 900
scale = 1.3,1.3
sprpriority = 5
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 3300, Helper]
type = Helper
trigger1 = !Time
ID = 9030
stateno = 9030
pos = 0,0
postype = P2
name = "BGFX"
ignorehitpause = 1
pausemovetime = 900
supermovetime = 900
persistent = 0

[State 3300, AfterImage]
type = AfterImage
trigger1 = Time = 41
time = 2
timegap = 1
framegap = 10
length = 21
palbright = 0,0,0
palcontrast = 128,128,128
palpostbright = 0,0,0
paladd = 0,0,0
palmul = .75,.75,.75
trans = Add1

[State 3300, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3300, Explod]
type = Explod
trigger1 = AnimElem = 1
ID = 6022
anim = 6022
postype = P1  ;p2,front,back,left,right
pos = 10,-108
facing = -1
bindtime = -1
removetime = 40
supermovetime = 900
pausemovetime = 900
scale = .3,.3
sprpriority = 0
ownpal = 1
ignorehitpause = 1
[State 3300, Explod]
type = Explod
trigger1 = AnimElemTime(2) < 0
trigger1 = Time%6 = 0
ID = 6041
anim = 6041
postype = P1  ;p2,front,back,left,right
pos = 10,-108
bindtime = -1
removetime = -2
supermovetime = 900
pausemovetime = 900
scale = .22,.22
sprpriority = 0
ownpal = 1
ignorehitpause = 1
[State 3300, Explod]
type = Explod
trigger1 = !Time
ID = 6015
anim = 6015
postype = P1  ;p2,front,back,left,right
pos = 10,-108
bindtime = -1
removetime = 40
supermovetime = 900
pausemovetime = 900
scale = .2,.2
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 3300, Explod]
type = Explod
trigger1 = AnimElem = 2
ID = 6022
anim = 6022
postype = P1  ;p2,front,back,left,right
pos = 40,-90
facing = -1
bindtime = 1
removetime = 1
supermovetime = 0
pausemovetime = 0
scale = .3,.3
sprpriority = 0
ownpal = 1
ignorehitpause = 1
[State 3300, Explod]
type = Explod
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 0
trigger1 = Time%6 = 0
ID = 6041
anim = 6041
postype = P1  ;p2,front,back,left,right
pos = 40,-90
bindtime = -1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = .22,.22
sprpriority = 0
ownpal = 1
ignorehitpause = 1
[State 3300, Explod]
type = Explod
trigger1 = !Time
ID = 6015
anim = 6015
postype = P1  ;p2,front,back,left,right
pos = 40,-90
bindtime = 1
removetime = 1
supermovetime = 900
pausemovetime = 900
scale = .2,.2
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 3300, Explod]
type = Explod
trigger1 = AnimElem = 3
ID = 6022
anim = 6022
postype = P1  ;p2,front,back,left,right
pos = -2,-70
facing = -1
bindtime = -1
removetime = -1
supermovetime = 0
pausemovetime = 0
scale = 1.2,1.2
sprpriority = 4
ownpal = 1
ignorehitpause = 1
[State 3300, Explod]
type = Explod
trigger1 = AnimElemTime(3) >= 0
trigger1 = Time%3 = 0
ID = 6041
anim = 6041
postype = P1  ;p2,front,back,left,right
pos = -2,-70
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 3
ownpal = 1
ignorehitpause = 1

[State 3300, RemoveExplod]
type = RemoveExplod
trigger1 = !Time
ID = 6110
ignorehitpause = 1
persistent = 1
[State 3300, RemoveExplod]
type = RemoveExplod
trigger1 = !Time
ID = 6111
ignorehitpause = 1
persistent = 1

[State 3300, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3300)
trigger1 = !NumExplod(3300)
trigger1 = Target(3300),MoveType = H
ID = 3300
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3300),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 8
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
[State 3300, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3301)
trigger1 = !NumExplod(3301)
trigger1 = Target(3301),MoveType = H
ID = 3301
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3301),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 8
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
[State 3300, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3302)
trigger1 = !NumExplod(3302)
trigger1 = Target(3302),MoveType = H
ID = 3302
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3302),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 8
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
[State 3300, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3303)
trigger1 = !NumExplod(3303)
trigger1 = Target(3303),MoveType = H
ID = 3303
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3303),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 8
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
[State 3300, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3304)
trigger1 = !NumExplod(3304)
trigger1 = Target(3304),MoveType = H
ID = 3304
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3304),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 8
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
[State 3300, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3305)
trigger1 = !NumExplod(3305)
trigger1 = Target(3305),MoveType = H
ID = 3305
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3305),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 8
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
[State 3300, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3306)
trigger1 = !NumExplod(3306)
trigger1 = Target(3306),MoveType = H
ID = 3306
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3306),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 8
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
[State 3300, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3307)
trigger1 = !NumExplod(3307)
trigger1 = Target(3307),MoveType = H
ID = 3307
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3307),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 8
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
[State 3300, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3308)
trigger1 = !NumExplod(3308)
trigger1 = Target(3308),MoveType = H
ID = 3308
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3308),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 8
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
[State 3300, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3309)
trigger1 = !NumExplod(3309)
trigger1 = Target(3309),MoveType = H
ID = 3309
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3309),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 8
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
[State 3300, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3310)
trigger1 = !NumExplod(3310)
trigger1 = Target(3310),MoveType = H
ID = 3310
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3310),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 8
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
[State 3300, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3311)
trigger1 = !NumExplod(3311)
trigger1 = Target(3311),MoveType = H
ID = 3311
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3311),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 8
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
[State 3300, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3312)
trigger1 = !NumExplod(3312)
trigger1 = Target(3312),MoveType = H
ID = 3312
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3312),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 8
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
[State 3300, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3313)
trigger1 = !NumExplod(3313)
trigger1 = Target(3313),MoveType = H
ID = 3313
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3313),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 8
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
[State 3300, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3314)
trigger1 = !NumExplod(3314)
trigger1 = Target(3314),MoveType = H
ID = 3314
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3314),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 8
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
[State 3300, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3315)
trigger1 = !NumExplod(3315)
trigger1 = Target(3315),MoveType = H
ID = 3315
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3315),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 8
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
[State 3300, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3316)
trigger1 = !NumExplod(3316)
trigger1 = Target(3316),MoveType = H
ID = 3316
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3316),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 8
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
[State 3300, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3317)
trigger1 = !NumExplod(3317)
trigger1 = Target(3317),MoveType = H
ID = 3317
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3317),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 8
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
[State 3300, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3318)
trigger1 = !NumExplod(3318)
trigger1 = Target(3318),MoveType = H
ID = 3318
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3318),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 8
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
[State 3300, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3319)
trigger1 = !NumExplod(3319)
trigger1 = Target(3319),MoveType = H
ID = 3319
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3319),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 8
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
[State 3300, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3320)
trigger1 = !NumExplod(3320)
trigger1 = Target(3320),MoveType = H
ID = 3320
anim = 8200+Random%32
pos = Ceil(P2Dist X),Ceil(P2Dist Y)+Target(3320),Const(Size.Mid.Pos.Y)
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 8
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[State 3300, HitDef]
type = HitDef
trigger1 = Time = 45
attr = A,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = H         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*70),1
pausetime = 2,2
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-75
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 30
guard.hittime = 20
guard.ctrltime = 20
yaccel = .5
ground.velocity = P2Dist X/30
air.velocity = P2Dist X/30,10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 0
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
hitonce = 1
ID = 3300
[State 3300, HitDef]
type = HitDef
trigger1 = Time = 47
attr = A,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = H         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*70),1
pausetime = 2,2
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-75
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 30
guard.hittime = 20
guard.ctrltime = 20
yaccel = .5
ground.velocity = P2Dist X/30
air.velocity = P2Dist X/30,10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 0
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
hitonce = 1
ID = 3301
[State 3300, HitDef]
type = HitDef
trigger1 = Time = 49
attr = A,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = H         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*70),1
pausetime = 2,2
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-75
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 30
guard.hittime = 20
guard.ctrltime = 20
yaccel = .5
ground.velocity = P2Dist X/30
air.velocity = P2Dist X/30,10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 0
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
hitonce = 1
ID = 3302
[State 3300, HitDef]
type = HitDef
trigger1 = Time = 51
attr = A,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = H         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*70),1
pausetime = 2,2
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-75
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 30
guard.hittime = 20
guard.ctrltime = 20
yaccel = .5
ground.velocity = P2Dist X/30
air.velocity = P2Dist X/30,10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 0
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
hitonce = 1
ID = 3303
[State 3300, HitDef]
type = HitDef
trigger1 = Time = 53
attr = A,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = H         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*70),1
pausetime = 2,2
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-75
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 30
guard.hittime = 20
guard.ctrltime = 20
yaccel = .5
ground.velocity = P2Dist X/30
air.velocity = P2Dist X/30,10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 0
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
hitonce = 1
ID = 3304
[State 3300, HitDef]
type = HitDef
trigger1 = Time = 55
attr = A,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = H         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*70),1
pausetime = 2,2
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-75
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 30
guard.hittime = 20
guard.ctrltime = 20
yaccel = .5
ground.velocity = P2Dist X/30
air.velocity = P2Dist X/30,10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 0
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
hitonce = 1
ID = 3305
[State 3300, HitDef]
type = HitDef
trigger1 = Time = 57
attr = A,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = H         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*70),1
pausetime = 2,2
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-75
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 30
guard.hittime = 20
guard.ctrltime = 20
yaccel = .5
ground.velocity = P2Dist X/30
air.velocity = P2Dist X/30,10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 0
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
hitonce = 1
ID = 3306
[State 3300, HitDef]
type = HitDef
trigger1 = Time = 59
attr = A,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = H         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*70),1
pausetime = 2,2
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-75
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 30
guard.hittime = 20
guard.ctrltime = 20
yaccel = .5
ground.velocity = P2Dist X/30
air.velocity = P2Dist X/30,10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 0
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
hitonce = 1
ID = 3307
[State 3300, HitDef]
type = HitDef
trigger1 = Time = 61
attr = A,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = H         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*70),1
pausetime = 2,2
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-75
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 30
guard.hittime = 20
guard.ctrltime = 20
yaccel = .5
ground.velocity = P2Dist X/30
air.velocity = P2Dist X/30,10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 0
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
hitonce = 1
ID = 3308
[State 3300, HitDef]
type = HitDef
trigger1 = Time = 63
attr = A,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = H         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*70),1
pausetime = 2,2
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-75
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 30
guard.hittime = 20
guard.ctrltime = 20
yaccel = .5
ground.velocity = P2Dist X/30
air.velocity = P2Dist X/30,10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 0
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
hitonce = 1
ID = 3309
[State 3300, HitDef]
type = HitDef
trigger1 = Time = 65
attr = A,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = H         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*70),1
pausetime = 2,2
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-75
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 30
guard.hittime = 20
guard.ctrltime = 20
yaccel = .5
ground.velocity = P2Dist X/30
air.velocity = P2Dist X/30,10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 0
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
hitonce = 1
ID = 3310
[State 3300, HitDef]
type = HitDef
trigger1 = Time = 67
attr = A,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = H         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*70),1
pausetime = 2,2
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-75
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 30
guard.hittime = 20
guard.ctrltime = 20
yaccel = .5
ground.velocity = P2Dist X/30
air.velocity = P2Dist X/30,10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 0
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
hitonce = 1
ID = 3311
[State 3300, HitDef]
type = HitDef
trigger1 = Time = 69
attr = A,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = H         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*70),1
pausetime = 2,2
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-75
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 30
guard.hittime = 20
guard.ctrltime = 20
yaccel = .5
ground.velocity = P2Dist X/30
air.velocity = P2Dist X/30,10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 0
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
hitonce = 1
ID = 3312
[State 3300, HitDef]
type = HitDef
trigger1 = Time = 71
attr = A,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = H         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*70),1
pausetime = 2,2
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-75
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 30
guard.hittime = 20
guard.ctrltime = 20
yaccel = .5
ground.velocity = P2Dist X/30
air.velocity = P2Dist X/30,10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 0
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
hitonce = 1
ID = 3313
[State 3300, HitDef]
type = HitDef
trigger1 = Time = 73
attr = A,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = H         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*70),1
pausetime = 2,2
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-75
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 30
guard.hittime = 20
guard.ctrltime = 20
yaccel = .5
ground.velocity = P2Dist X/30
air.velocity = P2Dist X/30,10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 0
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
hitonce = 1
ID = 3314
[State 3300, HitDef]
type = HitDef
trigger1 = Time = 75
attr = A,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = H         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*70),1
pausetime = 2,2
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-75
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 30
guard.hittime = 20
guard.ctrltime = 20
yaccel = .5
ground.velocity = P2Dist X/30
air.velocity = P2Dist X/30,10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 0
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
hitonce = 1
ID = 3315
[State 3300, HitDef]
type = HitDef
trigger1 = Time = 77
attr = A,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = H         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*70),1
pausetime = 2,2
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-75
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 30
guard.hittime = 20
guard.ctrltime = 20
yaccel = .5
ground.velocity = P2Dist X/30
air.velocity = P2Dist X/30,10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 0
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
hitonce = 1
ID = 3316
[State 3300, HitDef]
type = HitDef
trigger1 = Time = 79
attr = A,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = H         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*70),1
pausetime = 2,2
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-75
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 30
guard.hittime = 20
guard.ctrltime = 20
yaccel = .5
ground.velocity = P2Dist X/30
air.velocity = P2Dist X/30,10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 0
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
hitonce = 1
ID = 3317
[State 3300, HitDef]
type = HitDef
trigger1 = Time = 81
attr = A,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = H         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*70),1
pausetime = 2,2
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-75
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 30
guard.hittime = 20
guard.ctrltime = 20
yaccel = .5
ground.velocity = P2Dist X/30
air.velocity = P2Dist X/30,10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 0
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
hitonce = 1
ID = 3318
[State 3300, HitDef]
type = HitDef
trigger1 = Time = 83
attr = A,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = H         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*70),1
pausetime = 2,2
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-75
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 30
guard.hittime = 20
guard.ctrltime = 20
yaccel = .5
ground.velocity = P2Dist X/30
air.velocity = P2Dist X/30,10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 0
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
hitonce = 1
ID = 3319
[State 3300, HitDef]
type = HitDef
trigger1 = Time = 85
attr = A,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = H         ;HLA
animtype = Hard         ;light,medium,hard,back,up,diagup
air.animtype = Hard
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*70),1
pausetime = 2,2
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-75
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 30
guard.hittime = 20
guard.ctrltime = 20
yaccel = .5
ground.velocity = P2Dist X/30
air.velocity = P2Dist X/30,10
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 0
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
hitonce = 1
ID = 3320

[State 3300, VelSet]
type = VelSet
trigger1 = AnimElem = 3
y = 5

[State 3300, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) >= 0
y = .5

[State 3300, Helper]
type = Helper
trigger1 = !NumHelper(9500) && Abs(P2Dist Y) < 140
trigger1 = Time = 1;Var(5) < 6 && Time = 1
ID = 9500
stateno = 9500
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

[State 3300, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S3300,0
channel = 0

[State 3300, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = S1000,2
channel = -1

[State 3300, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = S3001,0
channel = 5
[State 3300, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(3) = 0
value = S3001,0
channel = 6

[State 3300, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 20) && (Vel Y > 0)
value = 3310

;-------------------------------------------------------------------------------------------------------------------------------------------
;BUSTER SAW - LANDING
[StateDef 3310]
type = C
physics = N
movetype = A
ctrl = 0
anim = 3310
velset = 0,0
sprpriority = 1

[State 3310, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = SCA
time = 5

[State 3310, RemoveExplod]
type = RemoveExplod
trigger1 = !Time
ID = 6022
ignorehitpause = 1
persistent = 1

[State 3310, Explod]
type = Explod
trigger1 = !Time
ID = 6018
anim = 6018
postype = P1  ;p2,front,back,left,right
pos = 5,0
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 5
ownpal = 1
ignorehitpause = 1

[State 3310, Explod]
type = Explod
trigger1 = !Time
ID = 7031
anim = 7031
postype = P1  ;p2,front,back,left,right
pos = 5,0
bindtime = 1
removetime = -2
supermovetime = 0
pausemovetime = 0
scale = 1.2,1.2
sprpriority = 6
ownpal = 1
ignorehitpause = 1

[State 3310, Explod]
type = Explod
trigger1 = !Time
ID = 7070
anim = 7070
pos = 5,0
postype = P1
facing = Cond(Random < 500,1,-1)
scale = .8,.7
sprpriority = -5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[State 3310, Explod]
type = Explod
trigger1 = !Time
ID = 7290
anim = 7290
pos = 5,0
postype = P1  ;p2,front,back,left,right
supermovetime = 0
pausemovetime = 0
bindtime = 1
scale = .7,.6
sprpriority = -2
ownpal = 1
[State 3310, Explod]
type = Explod
trigger1 = !Time
ID = 7291
anim = 7291
pos = 5,0
postype = P1  ;p2,front,back,left,right
supermovetime = 0
pausemovetime = 0
bindtime = 1
scale = .7,.6
sprpriority = -2
ownpal = 1

[State 3310, HitDef]
type = HitDef
trigger1 = !Time
attr = C,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAFD        ;HLAFD+-
guardflag = H         ;HLA
animtype = DiagUp         ;light,medium,hard,back,up,diagup
air.animtype = DiagUp
fall.animtype = DiagUp
priority = 11,Hit
damage = Ceil(FVar(5)*70),1
pausetime = 0,2
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-50
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 0
ground.hittime = 30
guard.hittime = 20
guard.ctrltime = 20
yaccel = .5
ground.velocity = -4,-9
air.velocity = -4,-9
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
getpower = 0
givepower = 0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
hitonce = 1
p2facing = 1
ID = 3321
persistent = 0

[State 3310, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(2) >= 0
movetype = I        ;I,A,H

[State 3310, EnvShake]
type = EnvShake
trigger1 = AnimElem = 1
time = 20

[State 3310, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3310, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S1500,0
channel = 0

[State 3310, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S820,0
channel = -1
[State 3310, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S1000,2
channel = 2
[State 3310, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S1000,2
channel = 3

[State 3310, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-------------------------------------------------------------------------------------------------------------------------------------------
;SKY FISSURE
[StateDef 3400]
type = A
physics = N
movetype = A
ctrl = 0
velset = 0,0
sprpriority = 1
facep2 = 1

[State 3400, VarSet]
type = VarSet
trigger1 = !Time
var(5) = Cond(Power >= 3000,6,Cond((Power < 3000 && Power >= 2000),5,4))

[State 3400, VarSet]
type = VarSet
trigger1 = !Time
fvar(13) = Cond(Var(5) = 6,.9,Cond(Var(5) = 5,.8,.7))

[State 3400, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 3400

[State 3400, PowerAdd]
type = PowerAdd
trigger1 = Time = 1
value = Cond(Var(5) = 6,-3000,Cond(Var(5) = 5,-2000,-1000))

[State 3400, StopSnd]
type = StopSnd
trigger1 = !Time
channel = 0
ignorehitpause = 1
persistent = 0

[State 3400, SuperPause]
type = SuperPause
trigger1 = !Time
time = 40
anim = -1
sound = S6360,0
movetime = 40
darken = 0
p2defmul = 1

[State 3400, AssertSpecial]
type = AssertSpecial
trigger1 = Time < 40
flag = NoBarDisplay
ignorehitpause = 1

[State 3400, Explod]
type = Explod
trigger1 = !Time
ID = 6360
anim = 6360
pos = -13,-73
postype = P1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
supermovetime = 900
pausemovetime = 900
scale = 1.3,1.3
sprpriority = 5
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 3400, Helper]
type = Helper
trigger1 = !Time
ID = 9040
stateno = 9040
pos = 0,0
postype = P2
name = "BGFX"
ignorehitpause = 1
pausemovetime = 900
supermovetime = 900
persistent = 0

[State 3400, AfterImage]
type = AfterImage
trigger1 = AnimElemTime(18) = 0
time = 15
timegap = 1
framegap = 10
length = 21
palbright = 0,0,0
palcontrast = 128,128,128
palpostbright = 0,0,0
paladd = 0,0,0
palmul = .75,.75,.75
trans = Add1

[State 3400, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

;[State 3400, PlayerPush]
;type = PlayerPush
;trigger1 = AnimElemTime(17) < 0
;value = 0
;ignorehitpause = 1

[State 3400, Width]
type = Width
trigger1 = AnimElemTime(4) < 0
edge = 25,0
player = 25,0
[State 3400, Width]
type = Width
trigger1 = AnimElemTime(4) >= 0
edge = 80,0
player = 25,0;50,0

[State 3400, Width]
type = Width
trigger1 = AnimElemTime(17) >= 0
edge = 50,0
player = 10,0

[State 3400, Helper]
type = Helper
trigger1 = AnimElemTime(4) = 0
name = "Afterimage"
ID = 3415
stateno = 3415
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 900
supermovetime = 900

[State 3400, Helper]
type = Helper
trigger1 = !NumHelper(242)
trigger1 = AnimElemTime(3) = 40
name = "Slash"
ID = 242
stateno = 6070
postype = P1    ;p2,front,back,left,right
size.xscale = 1.5
size.yscale = 1.5
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1

[State 3400, Helper]
type = Helper
trigger1 = !NumHelper(3420)
trigger1 = AnimElemTime(5) = 0
name = "Kick 1"
ID = 3420
stateno = 3420
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
size.shadowoffset = ID
ignorehitpause = 1
[State 3400, Helper]
type = Helper
trigger1 = !NumHelper(3421)
trigger1 = AnimElemTime(7) = 0
name = "Kick 2"
ID = 3421
stateno = 3420
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
size.shadowoffset = ID
ignorehitpause = 1
[State 3400, Helper]
type = Helper
trigger1 = !NumHelper(3422)
trigger1 = AnimElemTime(9) = 0
name = "Kick 3"
ID = 3422
stateno = 3420
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
size.shadowoffset = ID
ignorehitpause = 1
[State 3400, Helper]
type = Helper
trigger1 = !NumHelper(3423)
trigger1 = AnimElemTime(11) = 0
name = "Kick 4"
ID = 3423
stateno = 3420
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
size.shadowoffset = ID
ignorehitpause = 1
[State 3400, Helper]
type = Helper
trigger1 = !NumHelper(3424)
trigger1 = AnimElemTime(13) = 0
name = "Kick 5"
ID = 3424
stateno = 3420
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
size.shadowoffset = ID
ignorehitpause = 1
[State 3400, Helper]
type = Helper
trigger1 = !NumHelper(3425)
trigger1 = AnimElemTime(15) = 0
name = "Kick 6"
ID = 3425
stateno = 3420
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
size.shadowoffset = ID
ignorehitpause = 1

[State 3400, Helper]
type = Helper
trigger1 = !NumHelper(650)
trigger1 = AnimElemTime(17) = 0
name = "Slash"
ID = 650
stateno = 6070
postype = P1    ;p2,front,back,left,right
size.xscale = 1.5
size.yscale = 1.5
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1

[State 3400, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3400)
trigger1 = !NumExplod(3400)
trigger1 = Target(3400),StateType != L
ID = 3400
anim = 8200+Random%32
pos = 20+Ceil(P2BodyDist X),-75
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 3400, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3401)
trigger1 = !NumExplod(3401)
trigger1 = Target(3401),StateType != L
ID = 3401
anim = 8200+Random%32
pos = 40+Ceil(P2BodyDist X),(Ceil(P2BodyDist Y)+Ceil(Target(3401),Const(Size.Mid.Pos.Y)))-(50*(Target(3401),StateType != A))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 3400, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3402)
trigger1 = !NumExplod(3402)
trigger1 = Target(3402),StateType != L
ID = 3402
anim = 8200+Random%32
pos = 40+Ceil(P2BodyDist X),(Ceil(P2BodyDist Y)+Ceil(Target(3402),Const(Size.Mid.Pos.Y)))-(50*(Target(3402),StateType != A))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 3400, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3403)
trigger1 = !NumExplod(3403)
trigger1 = Target(3403),StateType != L
ID = 3403
anim = 8200+Random%32
pos = 40+Ceil(P2BodyDist X),(Ceil(P2BodyDist Y)+Ceil(Target(3403),Const(Size.Mid.Pos.Y)))-(50*(Target(3403),StateType != A))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 3400, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3404)
trigger1 = !NumExplod(3404)
trigger1 = Target(3404),StateType != L
ID = 3404
anim = 8200+Random%32
pos = 40+Ceil(P2BodyDist X),(Ceil(P2BodyDist Y)+Ceil(Target(3404),Const(Size.Mid.Pos.Y)))-(50*(Target(3404),StateType != A))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 3400, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3405)
trigger1 = !NumExplod(3405)
trigger1 = Target(3405),StateType != L
ID = 3405
anim = 8200+Random%32
pos = 40+Ceil(P2BodyDist X),(Ceil(P2BodyDist Y)+Ceil(Target(3405),Const(Size.Mid.Pos.Y)))-(50*(Target(3405),StateType != A))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 3400, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3406)
trigger1 = !NumExplod(3406)
trigger1 = Target(3406),StateType != L
ID = 3406
anim = 8200+Random%32
pos = 40+Ceil(P2BodyDist X),(Ceil(P2BodyDist Y)+Ceil(Target(3406),Const(Size.Mid.Pos.Y)))-(50*(Target(3406),StateType != A))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 3400, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3407)
trigger1 = !NumExplod(3407)
trigger1 = Target(3407),StateType != L
ID = 3407
anim = 8200+Random%32
pos = 30+Ceil(P2BodyDist X),(Ceil(P2BodyDist Y)+Ceil(Target(3407),Const(Size.Mid.Pos.Y)))-(50*(Target(3407),StateType != A))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 3400, HitDef]
type = HitDef
trigger1 = AnimElem = 4
attr = A,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard        ;light,medium,hard,back,up,diagup
air.animtype = Hard          ;light,medium,hard,back,up,diagup
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*(55-20*(Var(5) = 6))),1
pausetime = 3,3
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-80
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 20
ground.hittime = 30
guard.ctrltime = 20
yaccel = .5
ground.velocity = -6,-8
guard.velocity = -5
air.velocity = -6,-6
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
kill = Cond(Var(5) = 6,0,1)
p2facing = 1
getpower = 0
givepower = 0,15
hitonce = 1
ID = 3400

[State 3400, HitDef]
type = HitDef
trigger1 = AnimElem = 6
attr = A,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = H         ;HLA
animtype = Hard        ;light,medium,hard,back,up,diagup
air.animtype = Hard          ;light,medium,hard,back,up,diagup
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*(55-20*(Var(5) = 6))),1
pausetime = 2,2
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-80
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = Low      ;Low,Trip,None
ground.slidetime = 20
ground.hittime = 30
guard.ctrltime = 20
yaccel = .5
ground.velocity = -6,-8
guard.velocity = -5
air.velocity = -6,1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
kill = Cond(Var(5) = 6,0,1)
p2facing = 1
getpower = 0
givepower = 0,15
hitonce = 1
ID = 3401

[State 3400, HitDef]
type = HitDef
trigger1 = AnimElem = 8
attr = A,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard        ;light,medium,hard,back,up,diagup
air.animtype = Hard          ;light,medium,hard,back,up,diagup
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*(55-20*(Var(5) = 6))),1
pausetime = 2,2
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-80
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 20
ground.hittime = 30
guard.ctrltime = 20
yaccel = .5
ground.velocity = -6,-8
guard.velocity = -5
air.velocity = -6,-6
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
kill = Cond(Var(5) = 6,0,1)
p2facing = 1
getpower = 0
givepower = 0,15
hitonce = 1
ID = 3402

[State 3400, HitDef]
type = HitDef
trigger1 = AnimElem = 10
attr = A,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = H         ;HLA
animtype = Hard        ;light,medium,hard,back,up,diagup
air.animtype = Hard          ;light,medium,hard,back,up,diagup
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*(55-20*(Var(5) = 6))),1
pausetime = 2,2
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-80
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = Low      ;Low,Trip,None
ground.slidetime = 20
ground.hittime = 30
guard.ctrltime = 20
yaccel = .5
ground.velocity = -6,-8
guard.velocity = -5
air.velocity = -6,1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
kill = Cond(Var(5) = 6,0,1)
p2facing = 1
getpower = 0
givepower = 0,15
hitonce = 1
ID = 3403

[State 3400, HitDef]
type = HitDef
trigger1 = AnimElem = 12
attr = A,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard        ;light,medium,hard,back,up,diagup
air.animtype = Hard          ;light,medium,hard,back,up,diagup
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*(55-20*(Var(5) = 6))),1
pausetime = 2,2
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-80
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 20
ground.hittime = 30
guard.ctrltime = 20
yaccel = .5
ground.velocity = -6,-8
guard.velocity = -5
air.velocity = -6,-6
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
kill = Cond(Var(5) = 6,0,1)
p2facing = 1
getpower = 0
givepower = 0,15
hitonce = 1
ID = 3404

[State 3400, HitDef]
type = HitDef
trigger1 = AnimElem = 14
attr = A,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = H         ;HLA
animtype = Hard        ;light,medium,hard,back,up,diagup
air.animtype = Hard          ;light,medium,hard,back,up,diagup
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*(55-20*(Var(5) = 6))),1
pausetime = 2,2
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-80
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = Low      ;Low,Trip,None
ground.slidetime = 20
ground.hittime = 30
guard.ctrltime = 20
yaccel = .5
ground.velocity = -6,-8
guard.velocity = -5
air.velocity = -6,1
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
kill = Cond(Var(5) = 6,0,1)
p2facing = 1
getpower = 0
givepower = 0,15
hitonce = 1
ID = 3405

[State 3400, HitDef]
type = HitDef
trigger1 = AnimElem = 16
attr = A,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard        ;light,medium,hard,back,up,diagup
air.animtype = Hard          ;light,medium,hard,back,up,diagup
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*(55-20*(Var(5) = 6))),1
pausetime = 2,2
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-80
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 20
ground.hittime = 30
guard.ctrltime = 20
yaccel = .5
ground.velocity = -6,-8
guard.velocity = -5
air.velocity = -6,-3
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
kill = Cond(Var(5) = 6,0,1)
p2facing = 1
getpower = 0
givepower = 0,15
hitonce = 1
ID = 3406

[State 3400, HitDef]
type = HitDef
trigger1 = AnimElem = 19
attr = A,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = DiagUp        ;light,medium,hard,back,up,diagup
air.animtype = DiagUp          ;light,medium,hard,back,up,diagup
fall.animtype = DiagUp
priority = 11,Hit
damage = Ceil(FVar(5)*(55-20*(Var(5) = 6))),1
pausetime = 1,5
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-80
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = High      ;Low,Trip,None
ground.slidetime = 20
ground.hittime = 30
guard.ctrltime = 20
yaccel = .5
ground.velocity = -10,-11
guard.velocity = -5
air.velocity = -10,-11
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
kill = Cond(Var(5) = 6,0,1)
p2facing = 1
getpower = 0
givepower = 0,15
hitonce = 1
ID = 3407

[State 3400, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 0
x = 25

[State 3400, VelSet]
type = VelSet
trigger1 = AnimElemTime(6) = 0
trigger2 = AnimElemTime(8) = 0
trigger3 = AnimElemTime(10) = 0
trigger4 = AnimElemTime(12) = 0
trigger5 = AnimElemTime(14) = 0
trigger6 = AnimElemTime(16) = 0
x = 15;10

[State 3400, VelSet]
type = VelSet
trigger1 = AnimElemTime(5) = 0
trigger2 = AnimElemTime(7) = 0
trigger3 = AnimElemTime(9) = 0
trigger4 = AnimElemTime(11) = 0
trigger5 = AnimElemTime(13) = 0
trigger6 = AnimElemTime(15) = 0
x = 0

[State 3400, VelSet]
type = VelSet
trigger1 = AnimElemTime(18) = 0
x = 12

[State 3400, VelSet]
type = VelSet
triggerall = Var(5) > 4
trigger1 = NumTarget(3407)
trigger1 = Target(3407),MoveType = H
trigger1 = Target(3407),StateType = A
trigger1 = !MoveGuarded
x = 0

[State 3400, VelMul]
type = VelMul
trigger1 = AnimElemTime(19) >= 5
x = .88

[State 3400, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(20) >= 0
y = .5

;[State 3400, PosAdd]
;type = PosAdd
;trigger1 = NumTarget(3400)
;trigger1 = Target(3400),MoveType = H
;trigger1 = !MoveGuarded
;trigger1 = AnimElemTime(5) = 0
;x = Ceil(P2Dist X/3)

[State 3400, PosAdd]
type = PosAdd
trigger1 = NumTarget(3400)
trigger1 = Target(3400),StateType = A
trigger1 = Target(3400),MoveType = H
trigger1 = AnimElemTime(5) = 0
y = Ceil(P2Dist Y)
[State 3400, PosAdd]
type = PosAdd
trigger1 = NumTarget(3401)
trigger1 = Target(3401),StateType = A
trigger1 = Target(3401),MoveType = H
trigger1 = AnimElemTime(7) = 0
y = Ceil(P2Dist Y)
[State 3400, PosAdd]
type = PosAdd
trigger1 = NumTarget(3402)
trigger1 = Target(3402),StateType = A
trigger1 = Target(3402),MoveType = H
trigger1 = AnimElemTime(9) = 0
y = Ceil(P2Dist Y)
[State 3400, PosAdd]
type = PosAdd
trigger1 = NumTarget(3403)
trigger1 = Target(3403),StateType = A
trigger1 = Target(3403),MoveType = H
trigger1 = AnimElemTime(11) = 0
y = Ceil(P2Dist Y)
[State 3400, PosAdd]
type = PosAdd
trigger1 = NumTarget(3404)
trigger1 = Target(3404),StateType = A
trigger1 = Target(3404),MoveType = H
trigger1 = AnimElemTime(13) = 0
y = Ceil(P2Dist Y)
[State 3400, PosAdd]
type = PosAdd
trigger1 = NumTarget(3405)
trigger1 = Target(3405),StateType = A
trigger1 = Target(3405),MoveType = H
trigger1 = AnimElemTime(15) = 0
y = Ceil(P2Dist Y)
[State 3400, PosAdd]
type = PosAdd
trigger1 = NumTarget(3406)
trigger1 = Target(3406),StateType = A
trigger1 = Target(3406),MoveType = H
trigger1 = AnimElemTime(17) = 0
y = Ceil(P2Dist Y)

[State 3400, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(16) = 0
y = -20

[State 3400, Helper]
type = Helper
trigger1 = !NumHelper(9500) && Abs(P2Dist Y) < 140
trigger1 = Time = 1;Var(5) < 6 && Time = 1
ID = 9500
stateno = 9500
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

[State 3400, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S3400,0
channel = 0

[State 3400, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 6
trigger3 = AnimElem = 8
trigger4 = AnimElem = 10
trigger5 = AnimElem = 12
trigger6 = AnimElem = 14
trigger7 = AnimElem = 16
value = S212,0+(Random%2)
channel = -1

[State 3400, ChangeState]
type = ChangeState
trigger1 = Var(5) >= 5
trigger1 = MoveContact
trigger1 = NumTarget(3406)
trigger1 = Target(3406),MoveType = H
trigger1 = !MoveGuarded
value = 3401
ignorehitpause = 1
persistent = 0

[State 3400, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 52

;-------------------------------------------------------------------------------------------------------------------------------------------
;SKY FISSURE M1
[StateDef 3401]
type = A
physics = N
movetype = A
anim = 3401
ctrl = 0
velset = 25,0
sprpriority = 1

[State 3401, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = SCA
time = 14

[State 3401, Width]
type = Width
trigger1 = AnimElemTime(3) < 0
edge = 90,0

[State 3401, Helper]
type = Helper
trigger1 = !NumHelper(242)
trigger1 = !Time
name = "Slash"
ID = 650
stateno = 6070
postype = P1    ;p2,front,back,left,right
size.xscale = 1.5
size.yscale = 1.5
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1

[State 3401, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3407)
trigger1 = !NumExplod(3407)
trigger1 = Target(3407),StateType != L
ID = 3407
anim = 8200+Random%32
pos = 20+Ceil(P2BodyDist X),-75
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 3401, HitDef]
type = HitDef
trigger1 = AnimElem = 2
attr = A,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Hard        ;light,medium,hard,back,up,diagup
air.animtype = Hard          ;light,medium,hard,back,up,diagup
fall.animtype = Hard
priority = 11,Hit
damage = Ceil(FVar(5)*80),1
pausetime = 3,80
sparkno = -1
guard.sparkno = S8501
sparkxy = -15,-80
hitsound = S215,0+(Random%3)
guardsound = S200,3
ground.type = Low      ;Low,Trip,None
ground.slidetime = 20
ground.hittime = 50
guard.ctrltime = 20
yaccel = .5
ground.velocity = -6,-8
guard.velocity = -5
air.velocity = -6,-6
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
kill = Cond(Var(5) = 6,0,1)
p2facing = 1
getpower = 0
givepower = 0,15
hitonce = 1
ID = 3407

[State 3401, TargetBind]
type = TargetBind
trigger1 = MoveContact = 1 && !MoveGuarded
trigger1 = NumTarget(3407) && NumEnemy
trigger1 = Target(3407),StateNo = [5000,5099]
trigger1 = (Target(3407),Time = 0) && (Target(3407),ID = EnemyNear,ID)
pos = 90,-10
time = 1;15
ignorehitpause = 1
persistent = 0

[State 3401, PosAdd]
type = PosAdd
trigger1 = !Time
x = -70

[State 3401, PosAdd]
type = PosAdd
trigger1 = NumTarget(3406)
trigger1 = Target(3406),StateType = A
trigger1 = Target(3406),MoveType = H
trigger1 = !Time
y = Ceil(P2Dist Y)

[State 3401, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) >= 0
y = .5

[State 3401, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S250,1
channel = -1

[State 3401, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S1400,1
channel = -1

[State 3401, ChangeState]
type = ChangeState
trigger1 = Var(5) >= 5
trigger1 = NumTarget(3407)
trigger1 = Target(3407),MoveType = H
trigger1 = !MoveGuarded
;trigger1 = FrontEdgeDist <= 30
value = 3402
ignorehitpause = 1

[State 3401, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 52

;-------------------------------------------------------------------------------------------------------------------------------------------
;SKY FISSURE M2
[StateDef 3402]
type = A
physics = N
movetype = A
anim = 3402
ctrl = 0
velset = 0,0
sprpriority = 1

[State 3402, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = SCA
time = 24

[State 3402, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1

[State 3402, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 3402, Helper]
type = Helper
trigger1 = Var(5) = 6
trigger1 = Time = 1
name = "Afterimage"
ID = 3435
stateno = 3435
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 900
supermovetime = 900

[State 3402, Explod]
type = Explod
trigger1 = AnimElem = 3
ID = 6106
anim = 6106
postype = P1  ;p2,front,back,left,right
pos = 15,-55
facing = -1
vfacing = -1
bindtime = -1
supermovetime = 0
pausemovetime = 0
scale = .5,.5
sprpriority = 4
ownpal = 1
ignorehitpause = 0
persistent = 0

[State 3402, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(3408)
trigger1 = !NumExplod(3408)
trigger1 = Target(3408),StateType != L
ID = 3408
anim = 8200+Random%32
pos = Ceil(P2Dist X),-80-Abs(Ceil(P2Dist Y/2))
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 3402, HitDef]
type = HitDef
trigger1 = AnimElem = 4
attr = A,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
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
hitsound = S215,0+(Random%3)
guardsound = S200,2
ground.type = High      ;Low,Trip,None
air.type = High
ground.slidetime = 20
ground.hittime = 20
guard.ctrltime = 20
yaccel = .5
ground.velocity = -3,-18.5
guard.velocity = -10
air.velocity = -2,-18
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
kill = 1
p2facing = 1
getpower = 0
givepower = 0,10
envshake.time = 16
envshake.freq = 120
envshake.ampl = 4
hitonce = 1
ID = 3408

[State 3402, TargetBind]
type = TargetBind
trigger1 = NumTarget(3407)
trigger1 = Target(3407),MoveType = H
trigger1 = Target(3407),StateType = A
trigger1 = Time = 1
pos = 10,-10
time = 1
ignorehitpause = 1
persistent = 0

[State 3402, TargetVelSet]
type = TargetVelSet
trigger1 = NumTarget(3407)
x = 0
y = 0
ID = 3407
ignorehitpause = 1
persistent = 0

[State 3402, PosAdd]
type = PosAdd
trigger1 = !Time
x = 80

[State 3402, VelSet]
type = VelSet
trigger1 = AnimElemTime(3) = 0
x = -7

[State 3402, VelSet]
type = VelSet
trigger1 = AnimElemTime(4) = 0
x = -1
y = -5

[State 3402, VelMul]
type = VelMul
trigger1 = AnimElemTime(7) >= 0
x = .99

[State 3402, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(3) >= 0
y = .5

[State 3402, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1100,1
channel = -1

[State 3402, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S1100,2
channel = -1

[State 3402, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 3
value = S40,1
channel = 3

[State 3402, ChangeState]
type = ChangeState
trigger1 = Var(5) = 6
trigger1 = NumTarget(3407)
trigger1 = Target(3407),MoveType = H
trigger1 = AnimElemTime(1) = 5
value = 3430
ctrl = 0

[State 3402, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 52

;--------------------------------------------------------------------------------------------------------------------------------------------
;SKY FISSURE AFTERIMAGE
[StateDef 3415]
type = A
physics = N
movetype = I
anim = 3415
ctrl = 0
velset = 17,0
sprpriority = -1

[State 3415, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 3415, BindToRoot]
type = BindToRoot
trigger1 = 1
time = 1
pos = 0,0

[State 3415, Trans]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256-(Time*16),Time*16

[State 3415, VelMul]
type = VelMul
trigger1 = 1
x = .6

[State 3415, DestroySelf]
type = DestroySelf
trigger1 = Time >= 16

;-------------------------------------------------------------------------------------------------------------------------------------------
;SKY FISSURE H
[StateDef 3430]
type = A
physics = N
movetype = A
anim = 3430
ctrl = 0
velset = 0,0
sprpriority = 31

[State 3430, NotHitBy]
type = NotHitBy
trigger1 = !Time
value = SCA
time = 143

[State 3430, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(17) < 0
flag = NoBarDisplay
flag2 = NoShadow

[State 3430, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(3) < 0
flag = Invisible

[State 3430, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(17) < 0
flag = NoFG
ignorehitpause = 1
persistent = 1

[State 3430, AngleDraw]
type = AngleDraw
trigger1 = AnimElemTime(14) < 0
value = 0
scale = 2,2
ignorehitpause = 1
[State 3430, AngleDraw]
type = AngleDraw
trigger1 = AnimElemTime(14) >= 0 && AnimElemTime(15) < 0
value = 0
scale = 1.7,1.7
ignorehitpause = 1
[State 3430, AngleDraw]
type = AngleDraw
trigger1 = AnimElemTime(15) >= 0 && AnimElemTime(16) < 0
value = 0
scale = 1.5,1.5
ignorehitpause = 1
[State 3430, AngleDraw]
type = AngleDraw
trigger1 = AnimElemTime(16) >= 0 && AnimElemTime(17) < 0
value = 0
scale = 1.3,1.3
ignorehitpause = 1
[State 3430, AngleDraw]
type = AngleDraw
trigger1 = AnimElemTime(17) >= 0
value = 0
scale = 1,1
ignorehitpause = 1

[State 3430, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 3430, Helper]
type = Helper
trigger1 = !Time
name = "FissureSlash"
ID = 7810
stateno = 7810
pos = 0,0
postype = P1    ;p2,front,back,left,right
ownpal = 1
size.xscale = 1
size.yscale = 1
pausemovetime = 9999
supermovetime = 9999

[State 3430, Explod]
type = Explod
trigger1 = NumTarget(3407)
trigger1 = !NumExplod(3407)
trigger1 = Target(3407),MoveType = H
trigger1 = Target(3407),StateType != L
trigger1 = AnimElemTime(7) = 0
;trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(14) < 0
;trigger1 = Time%6 = 0
ID = 3407
anim = 8200+Random%32
pos = Cond(Facing = 1,Ceil(.25*ScreenWidth),Ceil(.75*ScreenWidth)),Ceil(.65*ScreenHeight)
space = Screen
;vel = 0,-.1
scale = 1.8,1.8
facing = Cond(Random > 500,1,-1)
sprpriority = 35
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
;persistent = 0

[State 3430, Explod]
type = Explod
trigger1 = AnimElemTime(9) = 0
ID = 7852
anim = 7852
pos = Cond(Facing = 1,Ceil(.25*ScreenWidth),Ceil(.75*ScreenWidth)),Ceil(.65*ScreenHeight)
space = Screen
scale = 1.7,1.7
removetime = -2
sprpriority = 40
pausemovetime = 900
supermovetime = 900
ignorehitpause = 1
bindtime = -1
ownpal = 1

[State 3430, TargetLifeAdd]
type = TargetLifeAdd
triggerall = NumTarget(3407)
triggerall = Target(3407),MoveType = H
triggerall = Target(3407),StateType != L
triggerall = !MoveGuarded
trigger1 = Time = 5
trigger2 = Time = 10
trigger3 = Time = 15
trigger4 = Time = 20
trigger5 = Time = 25
trigger6 = Time = 30
trigger7 = Time = 35
trigger8 = Time = 40
value = -7
ID = 3407
kill = 0
absolute = 1

[State 3430, HitAdd]
type = HitAdd
triggerall = NumTarget(3407)
triggerall = Target(3407),MoveType = H
triggerall = Target(3407),StateType != L
triggerall = !MoveGuarded
trigger1 = Time = 5
trigger2 = Time = 10
trigger3 = Time = 15
trigger4 = Time = 20
trigger5 = Time = 25
trigger6 = Time = 30
trigger7 = Time = 35
trigger8 = Time = 40
trigger9 = AnimElemTime(7) = 0
value = 1

[State 3430, TargetState]
type = TargetState
trigger1 = NumTarget(3407)
trigger1 = Target(3407),StateNo != 3450
trigger1 = Target(3407),MoveType = H
trigger1 = Target(3407),StateType != L
trigger1 = !MoveGuarded
trigger1 = !Time
value = 3450
ID = 3407
ignorehitpause = 1
persistent = 0

[State 3430, TargetState]
type = TargetState
trigger1 = NumTarget(3407)
trigger1 = Target(3407),StateNo != 3451
trigger1 = Target(3407),MoveType = H
trigger1 = Target(3407),StateType != L
trigger1 = !MoveGuarded
trigger1 = AnimElemTime(4) = 0
value = 3451
ID = 3407
ignorehitpause = 1
persistent = 0

[State 3430, TargetState]
type = TargetState
trigger1 = NumTarget(3407)
trigger1 = Target(3407),StateNo != 3452
trigger1 = Target(3407),MoveType = H
trigger1 = Target(3407),StateType != L
trigger1 = !MoveGuarded
trigger1 = AnimElemTime(14) = 0
value = 3452
ID = 3407
ignorehitpause = 1
persistent = 0

[State 3430, PosSet]
type = PosSet
trigger1 = !Time
x = 50*Facing
y = -30

[State 3430, VelSet]
type = VelSet
trigger1 = AnimElemTime(7) = 0
x = .1;*Facing
y = -.2

[State 3430, PosAdd]
type = PosAdd
trigger1 = AnimElemTime(14) = 0
y = -500

[State 3430, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(14) >= 0
y = .5

[State 3430, PlaySnd]
type = PlaySnd
triggerall = NumTarget(3407)
trigger1 = Time = 4
trigger2 = Time = 9
trigger3 = Time = 14
trigger4 = Time = 19
trigger5 = Time = 24
trigger6 = Time = 29
trigger7 = Time = 34
trigger8 = Time = 39
value = S212,0+(Random%2)
channel = -1

[State 3430, PlaySnd]
type = PlaySnd
triggerall = NumTarget(3407)
trigger1 = Time = 5
trigger2 = Time = 10
trigger3 = Time = 15
trigger4 = Time = 20
trigger5 = Time = 25
trigger6 = Time = 30
trigger7 = Time = 35
trigger8 = Time = 40
value = S215,0+(Random%3)
channel = -1

[State 3430, PlaySnd]
type = PlaySnd
trigger1 = AnimElemTime(8) = 10
value = S3430,0
channel = 0

[State 3430, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(3407)
trigger1 = AnimElemTime(7) = 0;AnimElemTime(3) = 2
value = S3101,0
channel = -1
[State 3430, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(3407)
trigger1 = AnimElemTime(7) = 0;AnimElemTime(3) = 2
value = S3101,3
channel = -1
[State 3430, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(3407)
trigger1 = AnimElemTime(8) = 0;AnimElemTime(4) = 0
value = S3200,1
channel = -1

[State 3430, ChangeState]
type = ChangeState
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
value = 3431

;-------------------------------------------------------------------------------------------------------------------------------------------
;SKY FISSURE H LANDING
[StateDef 3431]
type = C
physics = N
movetype = I
facep2 = 0
anim = 49
ctrl = 0
velset = 0,0
sprpriority = 1

[State 3431, Explod]
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

[State 3431, PosSet]
type = PosSet
trigger1 = 1
y = 0

[State 3431, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S52,0
channel = -1
lowpriority = 1

[State 3431, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;SKY FISSURE AFTERIMAGE 2
[StateDef 3435]
type = A
physics = N
movetype = I
anim = 3435
ctrl = 0
velset = 0,0
sprpriority = -1

[State 3435, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 3435, Trans]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256-(Time*16),Time*16

[State 3435, DestroySelf]
type = DestroySelf
trigger1 = Time >= 16

;-------------------------------------------------------------------------------------------------------------------------------------------
;SKY FISSURE TARGET 1
[StateDef 3450]
type = A
movetype = H
physics = N
velset = 0,0
sprpriority = 0

[State 3450, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3450

[State 3450, PosSet]
type = PosSet
trigger1 = Time = 20
x = 90*Facing
y = 25

[State 3450, VelAdd]
type = VelAdd
trigger1 = Time >= 200
y = .5

[State 3450, SelfState]
type = SelfState
trigger1 = HitShakeOver && Vel Y > 0 && Pos Y >= Const(Movement.Air.GetHit.GroundLevel)
value = 5100

;-------------------------------------------------------------------------------------------------------------------------------------------
;SKY FISSURE TARGET 2
[StateDef 3451]
type = A
movetype = H
physics = N
velset = 0,0
sprpriority = 31

[State 3451, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3451

[State 3451, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 3451, LifeAdd]
type = LifeAdd
trigger1 = Time = 5
value = -100
kill = 1
absolute = 1

[State 3451, Trans]
type = Trans
trigger1 = Time >= 65
trans = AddAlpha
alpha = 256-10*(Time-65),0

[State 3451, PosSet]
type = PosSet
trigger1 = !Time
x = 90*Facing
y = 25

[State 3451, Turn]
type = Turn
trigger1 = Time = 1

[State 3451, VelSet]
type = VelSet
trigger1 = AnimElem = 4
y = -.2

[State 3451, VelAdd]
type = VelAdd
trigger1 = Time >= 200
y = .5

[State 3451, SelfState]
type = SelfState
trigger1 = HitShakeOver && Vel Y > 0 && Pos Y >= Const(Movement.Air.GetHit.GroundLevel)
value = 5100

;-------------------------------------------------------------------------------------------------------------------------------------------
;SKY FISSURE TARGET 3
[StateDef 3452]
type = A
movetype = H
physics = N
velset = 0,0
sprpriority = 31

[State 3452, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 3452, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3452

[State 3452, PosAdd]
type = PosAdd
trigger1 = !Time
y = -800

[State 3452, VelAdd]
type = VelAdd
trigger1 = 1
y = .5

[State 3452, ChangeState]
type = ChangeState
trigger1 = HitShakeOver && Vel Y > 0 && Pos Y >= Const(Movement.Air.GetHit.GroundLevel)
value = 3453

;-------------------------------------------------------------------------------------------------------------------------------------------
;SKY FISSURE TARGET 4
[StateDef 3453]
type = L
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 0

[State 3453, EnvShake]
type = EnvShake
trigger1 = !Time
time = 20

[State 3453, LifeAdd]
type = LifeAdd
trigger1 = !Time
value = -40
kill = 1
absolute = 1

[State 3453, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3453, PosFreeze]
type = PosFreeze
trigger1 = 1

[State 3453, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 3453

[State 3453, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 3453, StopSnd]
type = StopSnd
trigger1 = !Time
channel = 8

[State 3453, ChangeState]
type = ChangeState
trigger1 = Anim = 3453 && AnimElem = 2
value = 3454
ctrl = 0

;--------------------------------------------------------------------------------------------------------------------------------------------
;SKY FISSURE TARGET 4
[StateDef 3454]
type = L
movetype = H
physics = N
sprpriority = 0

[State 3454, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5160

[State 3454, VelSet]
type = VelSet
trigger1 = !Time
y = -8

[State 3454, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 3454, VelAdd]
type = VelAdd
trigger1 = 1
y = .5

[State 3454, SelfState]
type = SelfState
trigger1 = Time > 1
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 12
value = 5110

;-------------------------------------------------------------------------------------------------------------------------------------------
;CROSSFIRE FLASH
[StateDef 4200]
type = A
physics = N
movetype = A
anim = 4200
ctrl = 0
velset = 0,0
poweradd = -4000
sprpriority = 1
facep2 = 1

[State 4200, VarSet]
type = VarSet
trigger1 = !Time
var(5) = 9

[State 4200, VarSet]
type = VarSet
trigger1 = !Time
fvar(13) = .7

[State 4200, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 4200, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(9) >= 0
flag = Invisible

[State 4200, ScreenBound]
type = ScreenBound
trigger1 = AnimElemTime(9) < 0
value = 1
movecamera = 1,0
[State 4200, ScreenBound]
type = ScreenBound
trigger1 = AnimElemTime(9) >= 0
value = 0
movecamera = 0,0

[State 4200, Width]
type = Width
trigger1 = AnimElemTime(9) < 0
edge = 35,0
player = 35,0
[State 4200, Width]
type = Width
trigger1 = AnimElemTime(9) >= 0
edge = 10,0
player = 0,0

[State 4200, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 4200, SuperPause]
type = SuperPause
trigger1 = !Time
time = 65
anim = -1
sound = S6360,0
movetime = 65
darken = 0
p2defmul = 1

[State 4200, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoBarDisplay
ignorehitpause = 1

[State 4200, Explod]
type = Explod
trigger1 = AnimElem = 7
ID = 6360
anim = 6360
pos = -17,-62
postype = P1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
supermovetime = 900
pausemovetime = 900
scale = 1.3,1.3
sprpriority = 5
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 4200, Explod]
type = Explod
trigger1 = AnimElem = 7
ID = 6850
anim = 6850
pos = 0,-50
postype = P1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
supermovetime = 900
pausemovetime = 900
scale = .5,.5
sprpriority = 4
ownpal = 1
removeongethit = 1
ignorehitpause = 1

[State 4200, Helper]
type = Helper
trigger1 = AnimElem = 7
ID = 9130
stateno = 9130
pos = 0,0
postype = P2
name = "BGFX"
ignorehitpause = 1
pausemovetime = 900
supermovetime = 900
persistent = 0

[State 4200, AfterImage]
type = AfterImage
trigger1 = !Time
time = 20
timegap = 1
framegap = 10
length = 21
palbright = 0,0,0
palcontrast = 128,128,128
palpostbright = 0,0,0
paladd = 0,0,0
palmul = .75,.75,.75
trans = Add1

[State 4200, Explod]
type = Explod
trigger1 = AnimElemTime(7) >= 0 && AnimElemTime(8) < 0
trigger1 = Time%10 = 0
ID = 7004
anim = 7004
postype = P1
pos = -25,-65
angle = 90
bindtime = 1
removetime = -2
pausemovetime = 900
supermovetime = 900
removeongethit = 0
scale = 1,1
sprpriority = -1
ownpal = 1
ignorehitpause = 1

[State 4200, Explod]
type = Explod
trigger1 = AnimElem = 8
ID = 7006
anim = 7006
postype = P1
pos = 50,-80
bindtime = 1
removetime = -2
supermovetime = 900
sprpriority = 4
scale = 1.2,1.2
ownpal = 1

[State 4200, Explod]
type = Explod
trigger1 = AnimElem = 9
ID = 6240
anim = 6240
postype = P1
pos = 0,-100
facing = 1
removetime = -2
bindtime = 1
pausemovetime = 900
supermovetime = 0
removeongethit = 0
scale = 1.5,1
sprpriority = 3
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 4200, Helper]
type = Helper
trigger1 = AnimElem = 8
name = "Afterimage"
ID = 1705
stateno = 1705
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 900
supermovetime = 900

[State 4200, RemoveExplod]
type = RemoveExplod
trigger1 = !Time
ID = 6110
ignorehitpause = 1
persistent = 1
[State 3300, RemoveExplod]
type = RemoveExplod
trigger1 = !Time
ID = 6111
ignorehitpause = 1
persistent = 1

[State 4200, Explod]
type = Explod
trigger1 = MoveContact
trigger1 = !MoveGuarded
trigger1 = NumTarget(4200)
trigger1 = !NumExplod(4200)
trigger1 = Target(4200),StateType != L
ID = 4200
anim = 8200+Random%32
pos = 0,Ceil(Const(Size.Head.Pos.Y))
postype = P2
facing = Cond(Random > 500,1,-1)
sprpriority = 5
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 4200, HitDef]
type = HitDef
trigger1 = !NumTarget(4200)
attr = A,HA        ;SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT
hitflag = MAF        ;HLAFD+-
guardflag = M         ;HLA
animtype = Medium
air.animtype = Medium        ;light,medium,hard,back,up,diagup
fall.animtype = Up
priority = 8,Hit
damage = Ceil(FVar(5)*80),1
pausetime = 0,5
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
ground.velocity = -35,-8
air.velocity = -35,-8
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
forcestand = 1
fall = 1
fall.recover = 0
air.fall = 1
kill = 0
p2facing = 1
p2sprpriority = 1
getpower = 0
givepower = 0,15
envshake.time = 15
envshake.freq = 120
envshake.ampl = 6
hitonce = 1
ID = 4200
persistent = 0

[State 4200, StateTypeSet]
type = StateTypeSet
trigger1 = Time >= 70
movetype = I        ;I,A,H

[State 4200, TargetState]
type = TargetState
trigger1 = NumTarget(4200)
trigger1 = Target(4200),StateNo != 4250
trigger1 = Target(4200),MoveType = H
trigger1 = Target(4200),StateType != L
trigger1 = !MoveGuarded
value = 4250
ID = 4200
ignorehitpause = 0
persistent = 0

[State 4200, VelSet]
type = VelSet
trigger1 = AnimElemTime(1) = 0
x = (BackEdgeBodyDist/-10)

[State 4200, VelSet]
type = VelSet
trigger1 = AnimElemTime(7) = 0
trigger2 = BackEdgeDist <= 20
x = 0

[State 4200, PosAdd]
type = PosAdd
trigger1 = Time = 68 
x = ScreenWidth+100

[State 4200, VelSet]
type = VelSet
trigger1 = Time = 90
x = 12

[State 4200, Helper]
type = Helper
trigger1 = !NumHelper(9500) && Abs(P2Dist Y) < 140
trigger1 = AnimElem = 7
ID = 9500
stateno = 9500
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

[State 4200, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S4200,0
channel = 0

[State 4200, PlaySnd];ADD NEW SOUND HERE
type = PlaySnd
trigger1 = AnimElem = 9
value = S1100,1
channel = -1
[State 4200, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 9
value = S4200,1
channel = -1

[State 4200, ChangeState]
type = ChangeState
trigger1 = !NumTarget(4200)
trigger1 = Time >= 90
value = 4201
ctrl = 0
[State 4200, ChangeState]
type = ChangeState
trigger1 = NumTarget(4200)
value = 4205
ctrl = 0

;-------------------------------------------------------------------------------------------------------------------------------------------
;CROSSFIRE FLASH - MISS
[StateDef 4201]
type = C
physics = N
movetype = I
ctrl = 0
anim = 4201
velset = 0,0
sprpriority = 1

[State 4201, ScreenBound]
type = ScreenBound
trigger1 = Time <= 1
value = 0
movecamera = 0,0
[State 4201, ScreenBound]
type = ScreenBound
trigger1 = Time > 1
value = 1
movecamera = 1,0

[State 4201, PlayerPush]
type = PlayerPush
trigger1 = Time <= 1
value = 0
[State 4201, PlayerPush]
type = PlayerPush
trigger1 = Time > 1
value = 1

[State 4201, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(2) < 0
value = SCA
time = 1

[State 4201, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElemTime(2) < 0
ID = 6080
ignorehitpause = 1
persistent = 1

[State 4201, PosSet]
type = PosSet
trigger1 = !Time
x = 0
y = 0

[State 4201, Explod]
type = Explod
trigger1 = AnimElem = 2
ID = 7280
anim = 7280
pos = 5,-40
postype = P1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
removeongethit = 1
supermovetime = 0
pausemovetime = 0
scale = .4,.2
sprpriority = 2
ownpal = 1
ignorehitpause = 1

[State 4201, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = S3100,4
channel = -1

[State 4201, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;-------------------------------------------------------------------------------------------------------------------------------------------
;CROSSFIRE FLASH HIT 1
[StateDef 4205]
type = A
physics = N
movetype = A
velset = 0,0
ctrl = 0
anim = 4205
sprpriority = 1

[State 4205, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 4205, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 4205, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 4205, PosSet]
type = PosSet
trigger1 = !NumTarget(4200)
trigger1 = !Time
x = 0
y = -100
[State 4205, PosSet]
type = PosSet
trigger1 = NumTarget(4200)
trigger1 = !Time
x = LeftEdge*Facing
y = Target(4200),Pos Y

[State 4205, PosAdd]
type = PosAdd
trigger1 = NumTarget(4200)
trigger1 = Target(4200),StateNo = [4252,4256]
x = Ceil(P2Dist X)
y = Ceil(P2Dist Y)

[State 4205, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoFG

[State 4205, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Invisible

[State 4205, Helper]
type = Helper
trigger1 = NumTarget(4200)
trigger1 = Target(4200),StateNo = 4252
trigger1 = Target(4200),Time = 1
trigger2 = NumTarget(4200)
trigger2 = Target(4200),StateNo = 4253
trigger2 = Target(4200),Time = 1
trigger3 = NumTarget(4200)
trigger3 = Target(4200),StateNo = 4254
trigger3 = Target(4200),Time = 1
trigger4 = NumTarget(4200)
trigger4 = Target(4200),StateNo = 4255
trigger4 = Target(4200),Time = 1
name = "Counter"
ID = 7100
StateNo = 7100
pos = Ceil(P2Dist X),Ceil(P2Dist Y)
postype = P1
facing = Cond(Random < 500,1,-1)
ownpal = 1
size.xscale = 3.1
size.yscale = 3.1
supermovetime = 900
pausemovetime = 900
ignorehitpause = 1
;trigger5 = Target(4200),StateNo = 4256
;trigger5 = Target(4200),Time = 1
[State 4205, Helper]
type = Helper
trigger1 = NumTarget(4200)
trigger1 = Target(4200),StateNo = 4255
trigger1 = Target(4200),Pos Y >= -130
name = "Counter"
ID = 7100
StateNo = 7100
pos = Ceil(P2Dist X),Ceil(P2Dist Y)
postype = P1
facing = Cond(Random < 500,1,-1)
ownpal = 1
size.xscale = 3.1
size.yscale = 3.1
supermovetime = 900
pausemovetime = 900
ignorehitpause = 1
persistent = 0

[State 4205, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = NumTarget(4200)
trigger1 = Target(4200),StateNo = 4252
trigger1 = Target(4200),Time = 1
trigger2 = NumTarget(4200)
trigger2 = Target(4200),StateNo = 4253
trigger2 = Target(4200),Time = 1
trigger3 = NumTarget(4200)
trigger3 = Target(4200),StateNo = 4254
trigger3 = Target(4200),Time = 1
trigger4 = NumTarget(4200)
trigger4 = Target(4200),StateNo = 4255
trigger4 = Target(4200),Time = 1
value = -10
ID = 4200
kill = 0
absolute = 1
[State 4205, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = NumTarget(4200)
trigger1 = Target(4200),StateNo = 4256
trigger1 = Target(4200),Time = 1
value = -20
ID = 4200
kill = 0
absolute = 1
persistent = 0
;trigger1 = Target(4200),StateNo = 4256
;trigger1 = Target(4200),Time = 1

[State 4205, TargetState]
type = TargetState
trigger1 = NumTarget(4200)
trigger1 = Target(4200),MoveType = H
trigger1 = Target(4200),StateNo = 4255
trigger1 = Target(4200),Pos Y >= -130
value = 4256
ID = 4200
persistent = 0

[State 4205, HitAdd]
type = HitAdd
trigger1 = NumTarget(4200)
trigger1 = Target(4200),StateNo = 4252
trigger1 = Target(4200),Time = 1
trigger2 = NumTarget(4200)
trigger2 = Target(4200),StateNo = 4253
trigger2 = Target(4200),Time = 1
trigger3 = NumTarget(4200)
trigger3 = Target(4200),StateNo = 4254
trigger3 = Target(4200),Time = 1
trigger4 = NumTarget(4200)
trigger4 = Target(4200),StateNo = 4255
trigger4 = Target(4200),Time = 1
value = 1
;trigger5 = Target(4200),StateNo = 4256
;trigger5 = Target(4200),Time = 1
[State 4205, HitAdd]
type = HitAdd
trigger1 = NumTarget(4200)
trigger1 = Target(4200),StateNo = 4255
trigger1 = Target(4200),Time = 1
value = 1
persistent = 0

[State 4205, Explod]
type = Explod
trigger1 = NumTarget(4200)
trigger1 = Target(4200),Anim = 4256
trigger1 = Target(4200),AnimElem = 2
ID = 7772
anim = 7772
pos = 0,Ceil(Target(4200),Const(Size.Head.Pos.Y))
postype = P2
bindtime = 1
removetime = -1
facing = Cond(Random > 500,1,-1)
scale = 500,500
sprpriority = 25
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 4205, Explod]
type = Explod
trigger1 = !NumExplod(7800)
trigger1 = NumTarget(4200)
trigger1 = Target(4200),StateNo = 4257
ID = 7800
anim = 7800
pos = 0,Ceil(Target(4200),Const(Size.Head.Pos.Y))
postype = P2
bindtime = 1
removetime = -1
facing = Cond(Random > 500,1,-1)
scale = 1.5,1.5
sprpriority = 26
ownpal = 1
supermovetime = 900
pausemovetime = 900
ignorehitpause = 1
persistent = 0

[State 4205, Helper]
type = Helper
trigger1 = !NumHelper(4210)
trigger1 = NumTarget(4200)
trigger1 = Target(4200),MoveType = H
trigger1 = Target(4200),StateNo = [4255,4256]
trigger1 = Target(4200),Pos Y >= -130
name = "Afterimage"
ID = 4210
stateno = 4210
pos = Ceil(P2Dist X),Ceil(P2Dist Y+70)
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
persistent = 0
;trigger1 = Target(4200),Pos Y >= -130
;trigger1 = Target(4200),StateNo = 4255

[State 4205, Helper]
type = Helper
trigger1 = NumTarget(4200)
trigger1 = Target(4200),StateNo = 4257
trigger1 = Target(4200),Time = 73;Time = 190
name = "Streak"
ID = 42050
stateno = 6241
pos = Ceil(P2Dist X),Ceil(P2Dist Y)-50
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 900
supermovetime = 900
ignorehitpause = 1
[State 4205, Helper]
type = Helper
trigger1 = NumTarget(4200)
trigger1 = Target(4200),StateNo = 4257
trigger1 = Target(4200),Time = 93;Time = 210
name = "Streak"
ID = 42051
stateno = 6241
pos = Ceil(P2Dist X),Ceil(P2Dist Y)-50
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 900
supermovetime = 900
ignorehitpause = 1
[State 4205, Helper]
type = Helper
trigger1 = NumTarget(4200)
trigger1 = Target(4200),StateNo = 4257
trigger1 = Target(4200),Time = 113;Time = 230
name = "Streak"
ID = 42052
stateno = 6241
pos = Ceil(P2Dist X),Ceil(P2Dist Y)-50
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 900
supermovetime = 900
ignorehitpause = 1
[State 4205, Helper]
type = Helper
trigger1 = NumTarget(4200)
trigger1 = Target(4200),StateNo = 4257
trigger1 = Target(4200),Time = 123;Time = 240
name = "Streak"
ID = 42053
stateno = 6241
pos = Ceil(P2Dist X),Ceil(P2Dist Y)-50
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 900
supermovetime = 900
ignorehitpause = 1

[State 4205, Explod]
type = Explod
trigger1 = NumTarget(4200)
trigger1 = Target(4200),StateNo = 4257
trigger1 = Target(4200),Time = 125;Time = 242
ID = 6086
anim = 6086
pos = 0,30
postype = P2
bindtime = 5
removetime = -2
removeongethit = 1
scale = .5,.65
sprpriority = 45
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 4205, HitAdd]
type = HitAdd
triggerall = NumTarget(4200)
trigger1 = NumHelper(42050)
trigger1 = Helper(42050),AnimElem = 1
value = 1
persistent = 0
[State 4205, HitAdd]
type = HitAdd
triggerall = NumTarget(4200)
trigger1 = NumHelper(42051)
trigger1 = Helper(42051),AnimElem = 1
value = 1
persistent = 0
[State 4205, HitAdd]
type = HitAdd
triggerall = NumTarget(4200)
trigger1 = NumHelper(42052)
trigger1 = Helper(42052),AnimElem = 1
value = 1
persistent = 0
[State 4205, HitAdd]
type = HitAdd
triggerall = NumTarget(4200)
trigger1 = NumHelper(42053)
trigger1 = Helper(42053),AnimElem = 1
value = 1
persistent = 0

[State 4205, Helper]
type = Helper
trigger1 = !NumHelper(9721) && Abs(P2Dist Y) < 140
trigger1 = NumTarget(4200)
trigger1 = Time = 1
ID = 9721
stateno = 9721
name = "ZoomHelper"
facing = 1
pos = 0,0
postype = P1
supermovetime = 9999
pausemovetime = 9999
size.xscale = Const(Size.XScale)
size.yScale = Const(Size.YScale)
size.proj.doscale = Target(4200),ID; Give Parent ID to Child
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 4205, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(4200)
trigger1 = Target(4200),StateNo = 4252
trigger1 = Target(4200),Time = 1
value = S220,0
channel = -1
[State 4205, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(4200)
trigger1 = Target(4200),StateNo = 4253
trigger1 = Target(4200),Time = 1
value = S220,0
channel = -1
[State 4205, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(4200)
trigger1 = Target(4200),StateNo = 4254
trigger1 = Target(4200),Time = 1
value = S220,0
channel = -1
[State 4205, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(4200)
trigger1 = Target(4200),StateNo = 4255
trigger1 = Target(4200),Time = 1
value = S220,0
channel = -1
[State 4205, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(4200)
trigger1 = Target(4200),StateNo = 4255
trigger1 = Target(4200),Pos Y >= -130
value = S220,0
channel = -1
persistent = 0

[State 4205, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(4200)
trigger1 = Target(4200),Anim = 4256
trigger1 = Target(4200),AnimElem = 2
value = S4200,5
channel = -1

[State 4205, PlaySnd]
type = PlaySnd
triggerall = NumTarget(4200)
trigger1 = Target(4200),StateNo = 4257
trigger1 = Target(4200),Time = 73
trigger2 = Target(4200),StateNo = 4257
trigger2 = Target(4200),Time = 93
trigger3 = Target(4200),StateNo = 4257
trigger3 = Target(4200),Time = 113
trigger4 = Target(4200),StateNo = 4257
trigger4 = Target(4200),Time = 123
value = S215,0+(Random%3)
channel = -1

[State 4205, ChangeState]
type = ChangeState
trigger1 = NumTarget(4200)
trigger1 = Target(4200),StateNo = 4257
trigger1 = Target(4200),Pos Y <= -20
trigger1 = Target(4200),StateNo = 4257
trigger1 = Target(4200),Time >= 130;Time >= 140
value = 4206
ctrl = 0
persistent = 0

[State 4205, ChangeState]
type = ChangeState
trigger1 = !NumTarget(4200)
trigger2 = Time >= 800
value = 4201
ctrl = 0

;-------------------------------------------------------------------------------------------------------------------------------------------
;CROSSFIRE FLASH HIT 2
[StateDef 4206]
type = A
physics = N
movetype = A
velset = 0,0
ctrl = 0
anim = 4206
sprpriority = 40

[State 4206, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 4206, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 4206, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 4206, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoFG
flag2 = NoBarDisplay

[State 4206, PosSet]
type = PosSet
trigger1 = NumTarget(4200)
trigger1 = !Time
x = (Target(4200),Pos X-700)*Facing
y = Target(4200),Pos Y+Ceil(.35*Target(4200),Const(Size.Mid.Pos.Y));.6

[State 4206, VelSet]
type = VelSet
trigger1 = NumTarget(4200)
trigger1 = !Time
x = 40
y = 0

[State 4206, VelMul]
type = VelMul
trigger1 = NumTarget(4200)
trigger1 = Abs(P2Dist X) <= 100
x = .5;.6

[State 4206, VelSet]
type = VelSet
trigger1 = NumTarget(4200)
trigger1 = P2Dist X <= 0
x = 0

[State 4206, Helper]
type = Helper
trigger1 = NumTarget(4200)
trigger1 = !NumHelper(4220)
trigger1 = Vel X <= 5
name = "Afterimage"
ID = 4220
stateno = 4220
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 900
supermovetime = 900
persistent = 0
[State 4206, Helper]
type = Helper
trigger1 = NumTarget(4200)
trigger1 = !NumHelper(4221)
trigger1 = Vel X <= 5
name = "Afterimage"
ID = 4221
stateno = 4220
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 900
supermovetime = 900
persistent = 0

[State 4206, Trans]
type = Trans
trigger1 = Time >= 15
trans = AddAlpha
alpha = 256-((Time-15)*16),(Time-15)*16

[State 4206, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(4200)
trigger1 = !Time
value = S4200,2
channel = -1

[State 4206, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(4200)
trigger1 = !Time
value = S4200,3
channel = 0

[State 4206, ChangeState]
type = ChangeState
trigger1 = NumTarget(4200)
trigger1 = Time >= 30
value = 4207
ctrl = 0

[State 4206, ChangeState]
type = ChangeState
trigger1 = Time >= 160
value = 4201
ctrl = 0

;-------------------------------------------------------------------------------------------------------------------------------------------
;CROSSFIRE FLASH HIT 3
[StateDef 4207]
type = A
physics = N
movetype = A
velset = 0,0
ctrl = 0
anim = 4207
sprpriority = 40

[State 4207, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 4207, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 4207, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 4207, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoFG
flag2 = NoBarDisplay

[State 4207, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = Invisible

[State 4207, PosSet]
type = PosSet
trigger1 = NumTarget(4200)
trigger1 = !Time
x = Target(4200),Pos X
y = Target(4200),Pos Y

[State 4207, Helper]
type = Helper
trigger1 = Time = 0
name = "Streak"
ID = 62420
stateno = 6241
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 900
supermovetime = 900
ignorehitpause = 1
[State 4207, Helper]
type = Helper
trigger1 = Time = 5
name = "Streak"
ID = 62421
stateno = 6241
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 900
supermovetime = 900
ignorehitpause = 1
[State 4207, Helper]
type = Helper
trigger1 = Time = 10
name = "Streak"
ID = 62422
stateno = 6241
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 900
supermovetime = 900
ignorehitpause = 1
[State 4207, Helper]
type = Helper
trigger1 = Time = 15
name = "Streak"
ID = 62423
stateno = 6241
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 900
supermovetime = 900
ignorehitpause = 1
[State 4207, Helper]
type = Helper
trigger1 = Time = 20
name = "Streak"
ID = 62424
stateno = 6241
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 900
supermovetime = 900
ignorehitpause = 1
[State 4207, Helper]
type = Helper
trigger1 = Time = 25
name = "Streak"
ID = 62425
stateno = 6241
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 900
supermovetime = 900
ignorehitpause = 1
[State 4207, Helper]
type = Helper
trigger1 = Time = 30
name = "Streak"
ID = 62426
stateno = 6241
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 900
supermovetime = 900
ignorehitpause = 1
[State 4207, Helper]
type = Helper
trigger1 = Time = 35
name = "Streak"
ID = 62427
stateno = 6241
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 900
supermovetime = 900
ignorehitpause = 1
[State 4207, Helper]
type = Helper
trigger1 = Time = 40
name = "Streak"
ID = 62428
stateno = 6241
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 900
supermovetime = 900
ignorehitpause = 1
[State 4207, Helper]
type = Helper
trigger1 = Time = 45
name = "Streak"
ID = 62429
stateno = 6241
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 900
supermovetime = 900
ignorehitpause = 1

[State 4207, TargetState]
type = TargetState
trigger1 = NumTarget(4200)
trigger1 = !Time
value = 4258
ID = 4200

[State 4207, TargetLifeAdd]
type = TargetLifeAdd
triggerall = NumTarget(4200)
trigger1 = Time = 0
trigger2 = Time = 5
trigger3 = Time = 10
trigger4 = Time = 15
trigger5 = Time = 20
trigger6 = Time = 25
trigger7 = Time = 30
trigger8 = Time = 35
trigger9 = Time = 40
trigger10 = Time = 45
value = -10
ID = 4200
kill = 0
absolute = 1

[State 4207, HitAdd]
type = HitAdd
triggerall = NumTarget(4200)
trigger1 = Time = 0
trigger2 = Time = 5
trigger3 = Time = 10
trigger4 = Time = 15
trigger5 = Time = 20
trigger6 = Time = 25
trigger7 = Time = 30
trigger8 = Time = 35
trigger9 = Time = 40
trigger10 = Time = 45
value = 1

[State 4207, PlaySnd]
type = PlaySnd
triggerall = NumTarget(4200)
trigger1 = Time = 0
trigger2 = Time = 5
trigger3 = Time = 10
trigger4 = Time = 15
trigger5 = Time = 20
trigger6 = Time = 25
trigger7 = Time = 30
trigger8 = Time = 35
trigger9 = Time = 40
trigger10 = Time = 45
value = S215,0+(Random%3)
channel = -1

[State 4207, ChangeState]
type = ChangeState
trigger1 = Time >= 60;46
value = 4208
ctrl = 0

[State 4207, ChangeState]
type = ChangeState
trigger1 = Time >= 150
value = 4201
ctrl = 0

;-------------------------------------------------------------------------------------------------------------------------------------------
;CROSSFIRE FLASH HIT 4
[StateDef 4208]
type = A
physics = N
movetype = A
velset = 0,0
ctrl = 0
anim = 4208
sprpriority = 40

[State 4208, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 4208, Trans]
type = Trans
trigger1 = AnimElemTime(2) < 0
trans = AddAlpha
alpha = 0+(Time*16),256-(Time*16)
[State 4208, Trans]
type = Trans
trigger1 = AnimElemTime(2) >= 0
trans = AddAlpha
alpha = 256,0

[State 4208, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoFG
flag2 = NoBarDisplay

[State 4208, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(2) >= 0
flag = Invisible

[State 4208, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 4208, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 4208, PosSet]
type = PosSet
trigger1 = NumTarget(4200)
trigger1 = !Time
x = (Target(4200),Pos X-30)*Facing
y = Target(4200),Pos Y+Ceil(.6*Target(4200),Const(Size.Head.Pos.Y))

[State 4208, Helper]
type = Helper
trigger1 = !NumHelper(4221)
trigger1 = !Time
name = "Afterimage"
ID = 4221
stateno = 4221
pos = 20,0
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 900
supermovetime = 900
persistent = 0
[State 4208, Helper]
type = Helper
trigger1 = !NumHelper(4222)
trigger1 = !Time
name = "Afterimage"
ID = 4222
stateno = 4221
pos = -20,0
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 900
supermovetime = 900
persistent = 0

[State 4208, Explod]
type = Explod
trigger1 = AnimElem = 1
ID = 6022
anim = 6022
postype = P1  ;p2,front,back,left,right
pos = 10,-108
facing = -1
bindtime = -1
removetime = 35
supermovetime = 900
pausemovetime = 900
scale = .3,.3
sprpriority = 39
ownpal = 1
ignorehitpause = 1
[State 4208, Explod]
type = Explod
trigger1 = AnimElemTime(2) < 0
trigger1 = Time%6 = 0
ID = 6041
anim = 6041
postype = P1  ;p2,front,back,left,right
pos = 10,-108
bindtime = -1
removetime = -2
supermovetime = 900
pausemovetime = 900
scale = .22,.22
sprpriority = 38
ownpal = 1
ignorehitpause = 1
[State 4208, Explod]
type = Explod
trigger1 = !Time
ID = 6015
anim = 6015
postype = P1  ;p2,front,back,left,right
pos = 10,-108
bindtime = -1
removetime = 35
supermovetime = 900
pausemovetime = 900
scale = .2,.2
sprpriority = 41
ownpal = 1
ignorehitpause = 1

[State 4208, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 1
ID = 7800
ignorehitpause = 1
persistent = 1

[State 4208, Explod]
type = Explod
trigger1 = !NumExplod(7801)
trigger1 = NumTarget(4200)
trigger1 = !Time
ID = 7801
anim = 7801
pos = 0,Ceil(Target(4200),Const(Size.Head.Pos.Y))
postype = P2
bindtime = 1
removetime = -2
facing = Cond(Random > 500,1,-1)
scale = 1.5,1.5
sprpriority = 26
ownpal = 1
supermovetime = 900
pausemovetime = 900
ignorehitpause = 1

[State 4208, Explod]
type = Explod
trigger1 = NumTarget(4200)
trigger1 = AnimElem = 2
ID = 7802
anim = 7802
pos = 0,Ceil(Target(4200),Const(Size.Head.Pos.Y))
postype = P2
bindtime = 1
removetime = -1
facing = Cond(Random > 500,1,-1)
scale = 1.5,1.5
sprpriority = 27
ownpal = 1
supermovetime = 900
pausemovetime = 900
ignorehitpause = 1

[State 4208, Helper]
type = Helper
trigger1 = AnimElem = 2
name = "Streak"
ID = 62430
stateno = 6241
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 900
supermovetime = 900
ignorehitpause = 1

[State 4208, Helper]
type = Helper
trigger1 = !NumHelper(6500)
trigger1 = AnimElem = 2
name = "Energy"
ID = 6500
stateno = 6500
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 900
supermovetime = 900
persistent = 0

[State 4208, Helper]
type = Helper
trigger1 = NumTarget(4200)
trigger1 = Time = 50;40
name = "Slash1"
ID = 60724
stateno = 6072
postype = P1    ;p2,front,back,left,right
ownpal = 1
size.ground.back = Target(4200),ID
size.shadowoffset = Ceil(Target(4200),Pos X)
size.proj.doscale = Ceil(Target(4200),Pos Y)
pausemovetime = 0
supermovetime = 0
[State 4208, Helper]
type = Helper
trigger1 = NumTarget(4200)
trigger1 = Time = 50;40
name = "Slash2"
ID = 60725
stateno = 6072
postype = P1    ;p2,front,back,left,right
ownpal = 1
size.ground.back = Target(4200),ID
size.shadowoffset = Ceil(Target(4200),Pos X)
size.proj.doscale = Ceil(Target(4200),Pos Y)
pausemovetime = 0
supermovetime = 0

[State 4209, RemoveExplod]
type = RemoveExplod
trigger1 = Time = 45
ID = 7802
ignorehitpause = 1
persistent = 1
[State 4208, Explod]
type = Explod
trigger1 = Time = 45
ID = 7803
anim = 7803
pos = 0,Ceil(Target(4200),Const(Size.Head.Pos.Y))
postype = P2
bindtime = 1
removetime = -2
facing = Cond(Random > 500,1,-1)
scale = 1.5,1.5
sprpriority = 28
ownpal = 1
supermovetime = 900
pausemovetime = 900
ignorehitpause = 1

[State 4208, Helper]
type = Helper
trigger1 = NumTarget(4200)
trigger1 = Target(4200),StateNo = 4260
trigger1 = Target(4200),Time = 1
ID = 6031
stateno = 6030
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 900
supermovetime = 900
size.shadowoffset = Target(4200),ID
ignorehitpause = 1

[State 4208, TargetState]
type = TargetState
trigger1 = NumTarget(4200)
trigger1 = AnimElem = 2
value = 4259
ID = 4200

[State 4208, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = NumTarget(4200)
trigger1 = AnimElem = 2
value = -20
ID = 4200
kill = 0
absolute = 1

[State 4208, HitAdd]
type = HitAdd
trigger1 = NumTarget(4200)
trigger1 = AnimElemTime(2) >= 0
trigger1 = Time%3 = 0
value = 1

[State 4208, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S100,6
channel = 1
[State 4220, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S100,6
channel = -1

[State 4208, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(4200)
trigger1 = !Time
value = S3002,0
channel = -1
[State 4208, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(4200)
trigger1 = Time = 1
value = S3002,0
channel = -1

[State 4208, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(4200)
trigger1 = AnimElem = 2
value = S215,0+(Random%3)
channel = -1

[State 4208, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(4200)
trigger1 = Target(4200),StateNo = [4259,4260]
trigger1 = Time%7 = 0
value = S215,0+(Random%3)
volumescale = 35
channel = -1

[State 4208, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(4200)
trigger1 = AnimElem = 2
value = S215,2
channel = 8
[State 4208, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(4200)
trigger1 = AnimElem = 2
value = S215,2
channel = 9

[State 4208, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(4200)
trigger1 = AnimElem = 2
value = S3101,0
channel = -1

[State 4208, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(4200)
trigger1 = AnimElem = 2
value = S3001,2
channel = 9
[State 4208, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(4200)
trigger1 = AnimElem = 2
value = S3001,2
channel = 10

[State 4208, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(4200)
trigger1 = AnimElem = 2
value = S1300,0
channel = -1

[State 4208, ChangeState]
type = ChangeState
trigger1 = Time >= 170;150
value = 4209

;-------------------------------------------------------------------------------------------------------------------------------------------
;CROSSFIRE FLASH - LANDING
[StateDef 4209]
type = S
physics = N
movetype = A
ctrl = 0
anim = 4209
velset = 0,0
sprpriority = 40
facep2 = 1

[State 4209, AngleDraw]
type = AngleDraw
trigger1 = AnimElemTime(4) < 0
value = 0
scale = 3.5,3.5

[State 4209, AngleDraw]
type = AngleDraw
trigger1 = AnimElemTime(4) >= 0
value = 0
scale = 1,1

[State 4209, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,0

[State 4209, PlayerPush]
type = PlayerPush
trigger1 = AnimElemTime(4) >= 0
value = 0

[State 4209, AssertSpecial]
type = AssertSpecial
trigger1 = AnimElemTime(4) < 20
flag = NoFG
flag2 = NoBarDisplay

[State 4209, SprPriority]
type = SprPriority
trigger1 = AnimElemTime(4) >= 0
value = 1
[State 4209, SprPriority]
type = SprPriority
trigger1 = NumExplod(7850)
trigger1 = AnimElemTime(3) >= 15
value = 24

;[State 4209, AssertSpecial]
;type = AssertSpecial
;trigger1 = NumExplod(7850)
;trigger1 = AnimElemTime(4) < 0
;flag = Invisible

[State 4209, NotHitBy]
type = NotHitBy
trigger1 = AnimElemTime(8) < 0
value = SCA
time = 1

;[State 4209, RemoveExplod]
;type = RemoveExplod
;trigger1 = AnimElemTime(2) = 10
;ID = 7802
;ignorehitpause = 1
;persistent = 1
;[State 4208, Explod]
;type = Explod
;trigger1 = NumTarget(4200)
;trigger1 = AnimElemTime(2) = 10
;ID = 7803
;anim = 7803
;pos = 0,Ceil(Target(4200),Const(Size.Head.Pos.Y))
;postype = P2
;bindtime = 1
;removetime = -2
;facing = Cond(Random > 500,1,-1)
;scale = 1.5,1.5
;sprpriority = 28
;ownpal = 1
;supermovetime = 900
;pausemovetime = 900
;ignorehitpause = 1

[State 4209, Explod]
type = Explod
trigger1 = !Time
ID = 7280
anim = 7280
pos = 0,-200
postype = P1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
removeongethit = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 52
ownpal = 1
ignorehitpause = 1

[State 4209, Helper]
type = Helper
trigger1 = !Time
name = "Streak"
ID = 62431
stateno = 6241
postype = P1    ;p2,front,back,left,right
ownpal = 1
pausemovetime = 0
supermovetime = 0
ignorehitpause = 1
persistent = 0

[State 4209, RemoveExplod]
type = RemoveExplod
trigger1 = NumTarget(4200)
trigger1 = Target(4200),StateNo = 4261
ID = 6030

[State 4209, RemoveExplod]
type = RemoveExplod
trigger1 = NumExplod(7850)
trigger1 = AnimElemTime(4) < 0
ID = 6080

[State 4209, RemoveExplod]
type = RemoveExplod
trigger1 = AnimElemTime(4) = 20
ID = 7772
[State 4209, Explod]
type = Explod
trigger1 = AnimElemTime(4) = 20
ID = 7773
anim = 7773
pos = 0,0
postype = P1
bindtime = 1
removetime = -2
facing = Cond(Random > 500,1,-1)
scale = 500,500
sprpriority = 25
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 4209, Explod]
type = Explod
trigger1 = NumTarget(4200)
trigger1 = Target(4200),Life <= 200
trigger1 = AnimElemTime(3) = 0
ID = 7850
anim = 7850
pos = Ceil(P2Dist X),Ceil(P2Dist Y);70,-250
postype = P1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
scale = 1.2,1.2
supermovetime = 900
pausemovetime = 900
sprpriority = 50
ownpal = 1

[State 4209, Explod]
type = Explod
trigger1 = !NumExplod(7850)
trigger1 = AnimElemTime(3) = 6
ID = 7778
anim = 7778
pos = 0,0
postype = P2
bindtime = 1
removetime = -2
facing = Cond(Random > 500,1,-1)
scale = 500,500
sprpriority = 49
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1
persistent = 0

[State 4209, Explod]
type = Explod
trigger1 = AnimElemTime(2) = 120
ID = 6089
anim = 6089
pos = 5,-345
postype = P1  ;p2,front,back,left,right
bindtime = 1
removetime = -2
supermovetime = 900
pausemovetime = 900
scale = 1.5,1.5
sprpriority = 41
ownpal = 1
ignorehitpause = 1
[State 4209, Explod]
type = Explod
trigger1 = AnimElemTime(2) = 140
ID = 7019
anim = 7019
pos = 0,0
postype = P2  ;p2,front,back,left,right
bindtime = 1
removetime = -2
supermovetime = 900
pausemovetime = 900
scale = .4,.4
sprpriority = 30
ownpal = 1
ignorehitpause = 1

[State 4209, Explod]
type = Explod
trigger1 = AnimElemTime(2) = 121
ID = 7902
anim = 7902
pos = ScreenWidth/2,ScreenHeight/2
space = Screen
removetime = -2
removeongethit = 1
supermovetime = 0
pausemovetime = 0
scale = 1,1
sprpriority = 26
ownpal = 1
ignorehitpause = 1

[State 4209, RemoveExplod]
type = RemoveExplod
trigger1 = NumExplod(7778)
trigger2 = NumExplod(7851)
ID = 7850

[State 4209, TargetLifeAdd]
type = TargetLifeAdd
trigger1 = NumTarget(4200)
trigger1 = AnimElemTime(3) = 2;6
value = -200
ID = 4200
kill = 1
absolute = 1

[State 4209, TargetState]
type = TargetState
triggerall = NumTarget(4200)
triggerall = Target(4200),StateNo != 4261
trigger1 = AnimElemTime(3) = 30
trigger2 = NumExplod(7850)
value = 4261
ID = 4200
persistent = 0

[State 4209, HitAdd]
type = HitAdd
trigger1 = NumTarget(4200)
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(3) < 6
trigger1 = Time%3 = 0
value = 1

[State 4209, HitAdd]
type = HitAdd
trigger1 = NumTarget(4200)
trigger1 = AnimElemTime(3) = 6
value = 1

[State 4209, PosSet]
type = PosSet
trigger1 = NumTarget(4200)
trigger1 = !Time
x = 70*Target(4200),Facing
y = 180

[State 4209, PosSet]
type = PosSet
trigger1 = AnimElem = 4
y = 0

;[State 4209, Turn]
;type = Turn
;trigger1 = !AnimTime

[State 4209, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(4200)
trigger1 = AnimElemTime(2) < 120
trigger1 = Target(4200),StateNo = [4259,4260]
trigger1 = Time%7 = 0
value = S215,0+(Random%3)
volumescale = 35
channel = -1

[State 4209, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S3100,4
channel = -1

[State 4209, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(4200)
trigger1 = AnimElemTime(2) = 120
value = S4200,6
channel = -1

[State 4209, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(4200)
trigger1 = AnimElemTime(2) = 130
value = S3003,0
channel = 3
[State 4209, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(4200)
trigger1 = AnimElemTime(2) = 130
value = S3003,0
channel = 4
[State 4209, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(4200)
trigger1 = AnimElemTime(2) = 140
value = S4200,7
channel = -1

[State 4209, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(4200)
trigger1 = Target(4200),Life > 200
trigger1 = AnimElemTime(2) = 10
value = S4200,8
channel = 0

[State 4209, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(4200)
trigger1 = Target(4200),Life <= 200
trigger1 = AnimElemTime(2) = 40
value = S4200,9
channel = 0

[State 4209, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(4200)
trigger1 = Target(4200),StateNo = 4261
trigger1 = Target(4200),Alive
trigger1 = Target(4200),Time = 20
value = S4200,5
channel = -1
[State 4209, PlaySnd]
type = PlaySnd
trigger1 = NumTarget(4200)
trigger1 = Target(4200),StateNo = 4261
trigger1 = !(Target(4200),Alive)
trigger1 = Target(4200),Time = 40
value = S4200,5
channel = -1

[State 4209, ChangeState]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;--------------------------------------------------------------------------------------------------------------------------------------------
;CROSSFIRE FLASH AFTERIMAGE 1
[StateDef 4210]
type = S
physics = N
movetype = I
anim = 4210
ctrl = 0
velset = 0,0
sprpriority = 31

[State 4210, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 4210, Trans]
type = Trans
trigger1 = Time >= 10
trans = AddAlpha
alpha = 256-((Time-10)*20),(Time-10)*20

[State 4210, Explod]
type = Explod
trigger1 = !Time
trigger2 = Time = 15
ID = 7280
anim = 7280
pos = -5,-50
postype = P1  ;p2,front,back,left,right
facing = Cond(Random < 500,1,-1)
bindtime = -1
removetime = -2
removeongethit = 1
supermovetime = 900
pausemovetime = 900
scale = .4,.3
sprpriority = 32;Cond(Time = 7,30,32)
ownpal = 1
ignorehitpause = 1

[State 4210, Explod]
type = Explod
trigger1 = !Time
ID = 8020
anim = 8020+Random%3
pos = 0,-110
postype = P1
facing = Cond(Random > 500,1,-1)
sprpriority = 33
ownpal = 1
supermovetime = 0
pausemovetime = 0
ignorehitpause = 1

[State 4210, VelSet]
type = VelSet
trigger1 = Time = 15
y = -1

[State 4210, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S100,6
channel = 1
[State 4210, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S100,6
channel = -1

[State 4210, PlaySnd]
type = PlaySnd
trigger1 = !Time
trigger2 = Time = 15
value = S3100,4
channel = -1

[State 4210, PlaySnd]
type = PlaySnd
trigger1 = !TIme
value = S742,1
channel = -1

[State 4210, DestroySelf]
type = DestroySelf
trigger1 = Time >= 20

;--------------------------------------------------------------------------------------------------------------------------------------------
;CROSSFIRE FLASH AFTERIMAGE 2
[StateDef 4220]
type = S
physics = N
movetype = I
anim = 4220
ctrl = 0
velset = 0,0
sprpriority = 31

[State 4220, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 4220, VelSet]
type = VelSet
trigger1 = !Time
x = Cond(IsHelper(4220),2,-2)
y = Cond(IsHelper(4220),2,-2)

[State 4220, Trans]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256-(Time*16),Time*16

[State 4220, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S100,6
channel = 1
[State 4220, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S100,6
channel = -1

[State 4220, DestroySelf]
type = DestroySelf
trigger1 = Time >= 16

;--------------------------------------------------------------------------------------------------------------------------------------------
;CROSSFIRE FLASH AFTERIMAGE 3
[StateDef 4221]
type = S
physics = N
movetype = I
anim = 4221
ctrl = 0
velset = 0,0
sprpriority = 31

[State 4221, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoShadow

[State 4221, VelSet]
type = VelSet
trigger1 = !Time
x = Cond(IsHelper(4221),-2,2)

[State 4221, Trans]
type = Trans
trigger1 = 1
trans = AddAlpha
alpha = 256-(Time*16),Time*16

[State 4221, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S100,6
channel = 1
[State 4221, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = S100,6
channel = -1

[State 4221, DestroySelf]
type = DestroySelf
trigger1 = Time >= 16

;-------------------------------------------------------------------------------------------------------------------------------------------
;CROSSFIRE FLASH TARGET 1
[StateDef 4250]
type = A
movetype = H
physics = N
velset = -15,0
sprpriority = 0

[State 4250, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 4250, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 0,1;0

[State 4250, PosFreeze]
type = PosFreeze
trigger1 = !HitShakeOver
value = 1

[State 4250, ChangeAnim]
type = ChangeAnim
trigger1 = !HitShakeOver
value = 5030

[State 4250, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5030 && !AnimTime
value = Cond(SelfAnimExist(5035),5035,5050)

[State 4250, ChangeAnim]
type = ChangeAnim
trigger1 = Anim = 5035 && !AnimTime
value = 5050

[State 4250, VelAdd]
type = VelAdd
trigger1 = HitShakeOver
y = .5

[State 4250, VelSet]
type = VelSet
trigger1 = HitShakeOver
x = GetHitVar(XVel)*Facing
y = GetHitVar(YVel)
persistent = 0

[State 4250, ChangeState]
type = Changestate
triggerall = HitShakeOver
trigger1 = BackEdgeDist <= 1 && Time > 5
trigger2 = FrontEdgeDist <= 1 && Time > 5
value = 4251

[State 4250, SelfState]
type = SelfState
trigger1 = HitShakeOver && Vel Y > 0 && Pos Y >= Const(Movement.Air.GetHit.GroundLevel)
value = 5100

;-------------------------------------------------------------------------------------------------------------------------------------------
;CROSSFIRE FLASH TARGET 2
[StateDef 4251]
type = A
movetype = H
physics = N
velset = 0,0

[State 4251, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 4251, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time && Anim != 5052
value = 4251

[State 4251, ChangeAnim]
type = ChangeAnim
trigger1 = SelfAnimExist(5052)
trigger1 = Anim = 4251 && AnimElem = 3
value = 5052

[State 4251, Turn]
type = Turn
trigger1 = Time = 9

[State 4251, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,1;0

[State 4251, VelSet]
type = VelSet
trigger1 = Time = 9
x = -3
y = -7.5

[State 4251, VelAdd]
type = VelAdd
trigger1 = Anim = 4251 && AnimElemTime(3) >= 0
trigger2 = Anim = 5052 && Time > 10
y = .35

[State 4251, ChangeState]
type = ChangeState
trigger1 = Pos Y >= -40 && Vel Y > 0
value = 4252

[State 4251, SelfState]
type = SelfState
trigger1 = Pos Y >= Const(Movement.Air.GetHit.GroundLevel)
value = 5100

;-------------------------------------------------------------------------------------------------------------------------------------------
;CROSSFIRE FLASH TARGET 3
[StateDef 4252]
type = A
movetype = H
physics = N
velset = 0,0

[State 4252, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 4252, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 4252

[State 4252, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 4252, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 4252, VelSet]
type = VelSet
trigger1 = Time = 1
x = -22
y = -25

[State 4252, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) >= 0
y = .5

[State 4252, EnvShake]
type = EnvShake
trigger1 = !Time
time = 20

[State 4252, ChangeState]
type = ChangeState
trigger1 = Pos Y <= -150
value = 4253

[State 4252, SelfState]
type = SelfState
trigger1 = Pos Y >= Const(Movement.Air.GetHit.GroundLevel)
value = 5100

;-------------------------------------------------------------------------------------------------------------------------------------------
;CROSSFIRE FLASH TARGET 4
[StateDef 4253]
type = A
movetype = H
physics = N
velset = 0,0

[State 4253, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 4253, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 4253

[State 4253, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 4253, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 4253, VelSet]
type = VelSet
trigger1 = Time = 1
x = 22
y = 20

[State 4253, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) >= 0
y = .5

[State 4253, EnvShake]
type = EnvShake
trigger1 = !Time
time = 20

[State 4253, ChangeState]
type = ChangeState
trigger1 = Pos Y >= -50
value = 4254

[State 4253, SelfState]
type = SelfState
trigger1 = Pos Y >= Const(Movement.Air.GetHit.GroundLevel)
value = 5100

;-------------------------------------------------------------------------------------------------------------------------------------------
;CROSSFIRE FLASH TARGET 5
[StateDef 4254]
type = A
movetype = H
physics = N
velset = 0,0

[State 4254, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 4254, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 4252

[State 4254, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 4254, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 4254, VelSet]
type = VelSet
trigger1 = Time = 1
x = 22
y = -25

[State 4254, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) >= 0
y = .5

[State 4254, EnvShake]
type = EnvShake
trigger1 = !Time
time = 20

[State 4254, ChangeState]
type = ChangeState
trigger1 = Pos Y <= -150
value = 4255

[State 4254, SelfState]
type = SelfState
trigger1 = Pos Y >= Const(Movement.Air.GetHit.GroundLevel)
value = 5100

;-------------------------------------------------------------------------------------------------------------------------------------------
;CROSSFIRE FLASH TARGET 6
[StateDef 4255]
type = A
movetype = H
physics = N
velset = 0,0

[State 4255, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 4255, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 4253

[State 4255, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 4255, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 4255, VelSet]
type = VelSet
trigger1 = Time = 1
x = -22;-12
y = 5;10

[State 4255, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(2) >= 0
y = .5

[State 4255, EnvShake]
type = EnvShake
trigger1 = !Time
time = 20

[State 4255, ChangeState]
type = ChangeState
trigger1 = Pos Y >= -10
value = 4256

[State 4255, SelfState]
type = SelfState
trigger1 = Pos Y >= Const(Movement.Air.GetHit.GroundLevel)
value = 5100

;-------------------------------------------------------------------------------------------------------------------------------------------
;CROSSFIRE FLASH TARGET 7
[StateDef 4256]
type = A
movetype = H
physics = N
velset = 0,0

[State 4256, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 4256, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 4256

[State 4256, AngleDraw]
type = AngleDraw
trigger1 = AnimElemTime(3) < 0
value = -90

[State 4256, AssertSpecial]
type = AssertSpecial
trigger1 = Pos Y <= -300
flag = Invisible

[State 4256, Pause]
type = Pause
trigger1 = AnimElemTime(1) <= 15
time = 2
movetime = 0
pausebg = 1

[State 4256, Turn]
type = Turn
trigger1 = !Time

[State 4256, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 4256, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 4256, PosAdd]
type = PosAdd
trigger1 = !Time
x = Abs(2.5*Const(Size.Mid.Pos.X))
y = Ceil(.9*Const(Size.Mid.Pos.Y))

[State 4256, VelSet]
type = VelSet
trigger1 = AnimElem = 2
x = 0
y = -30

[State 4256, EnvShake]
type = EnvShake
trigger1 = !Time
time = 20

[State 4256, ChangeState]
type = ChangeState
trigger1 = Pos Y <= -600
value = 4257

[State 4256, SelfState]
type = SelfState
trigger1 = Pos Y >= Const(Movement.Air.GetHit.GroundLevel)
value = 5100

;-------------------------------------------------------------------------------------------------------------------------------------------
;CROSSFIRE FLASH TARGET 8
[StateDef 4257]
type = A
movetype = H
physics = N
velset = 0,0
sprpriority = 30

[State 4257, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 4257, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 4257

[State 4257, ChangeAnim]
type = ChangeAnim
triggerall = SelfAnimExist(5052)
trigger1 = Time = 74
trigger2 = Time = 94
trigger3 = Time = 114
trigger4 = Time = 124
value = 5052
elem = 1

[State 4257, ChangeAnim2]
type = ChangeAnim2
trigger1 = Anim = 5052
trigger1 = Time = 124
value = 4257
elem  = 8

[State 4257, Turn]
type = Turn
triggerall = SelfAnimExist(5052)
trigger1 = Time = 73
trigger2 = Time = 93
trigger3 = Time = 113
trigger4 = Time = 123

[State 4257, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 4257, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 4257, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoBarDisplay

[State 4257, AngleDraw]
type = AngleDraw
triggerall = Anim = 4257
trigger1 = Time < 5
value = -90
[State 4257, AngleDraw]
type = AngleDraw
triggerall = Anim = 4257
trigger1 = Time >= 5 && Time < 10
value = -70
[State 4257, AngleDraw]
type = AngleDraw
triggerall = Anim = 4257
trigger1 = Time >= 10 && Time < 20
value = -50
[State 4257, AngleDraw]
type = AngleDraw
triggerall = Anim = 4257
trigger1 = Time >= 20 && Time < 30
value = -30

[State 4257, PosSet]
type = PosSet
trigger1 = Anim = 4257
trigger1 = !Time
x = 0
y = 50

[State 4257, PosAdd]
type = PosAdd
trigger1 = Anim = 4257
trigger1 = AnimElemTime(4) = 0
y = -Ceil(Const(Size.Mid.Pos.Y))

[State 4257, VelSet]
type = VelSet
trigger1 = Anim = 4257
trigger1 = !Time
x = 0
y = -1.8

[State 4257, VelSet]
type = VelSet
trigger1 = Anim = 4257
trigger1 = AnimElemTime(5) = 0
x = 7
y = -2.82;1
[State 4257, VelSet]
type = VelSet
trigger1 = Anim = 4257
trigger1 = AnimElemTime(6) = 0
x = -14
y = -2.84;1
[State 4257, VelSet]
type = VelSet
trigger1 = Anim = 4257
trigger1 = AnimElemTime(7) = 0
x = 9
y = -1.86

[State 4257, VelSet]
type = VelSet
trigger1 = SelfAnimExist(5052)
trigger1 = Time = 74
x = -7
y = -2.82;1
[State 4257, VelSet]
type = VelSet
trigger1 = SelfAnimExist(5052)
trigger1 = Time = 94
x = -14
y = -2.84;1
[State 4257, VelSet]
type = VelSet
trigger1 = SelfAnimExist(5052)
trigger1 = Time = 114
x = -9
y = -1.86

[State 4257, VelMul]
type = VelMul
triggerall = Anim = 4257
trigger1 = AnimElemTime(5) >= 0
trigger2 = AnimElemTime(6) >= 0
trigger3 = AnimElemTime(7) >= 0
x = .9
[State 4257, VelMul]
type = VelMul
triggerall = SelfAnimExist(5052)
trigger1 = Time >= 73
trigger2 = Time >= 93
trigger3 = Time >= 113
x = .9

[State 4257, VelSet]
type = VelSet
trigger1 = Anim = 4257
trigger1 = AnimElemTime(8) = 0
trigger2 = SelfAnimExist(5052)
trigger2 = Time = 124
x = 0
y = 0

[State 4257, VelMul]
type = VelMul
trigger1 = Pos Y <= -20 && Vel Y < -.2
y = .8

[State 4257, VelSet]
type = VelSet
trigger1 = Pos Y <= -50
y = 0

[State 4257, VelAdd]
type = VelAdd
trigger1 = Anim = 4257
trigger1 = AnimElemTime(25) >= 0
y = .5

[State 4257, SelfState]
type = SelfState
trigger1 = Anim = 4257
trigger1 = AnimElemTime(26) > 0
trigger1 = Pos Y >= Const(Movement.Air.GetHit.GroundLevel)
value = 5100

;-------------------------------------------------------------------------------------------------------------------------------------------
;CROSSFIRE FLASH TARGET 9
[StateDef 4258]
type = A
movetype = H
physics = N
velset = 0,0
sprpriority = 30

[State 4258, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoFG

[State 4258, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 4258, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 4258

[State 4258, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 4258, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 4258, VelAdd]
type = VelAdd
trigger1 = AnimElemTime(11) >= 0
y = .5

[State 4258, SelfState]
type = SelfState
trigger1 = AnimElemTime(11) > 0
trigger1 = Pos Y >= Const(Movement.Air.GetHit.GroundLevel)
value = 5100

;-------------------------------------------------------------------------------------------------------------------------------------------
;CROSSFIRE FLASH TARGET 10
[StateDef 4259]
type = A
movetype = H
physics = N
velset = 0,30
sprpriority = 30

[State 4259, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoFG

[State 4259, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 4259, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 4259

[State 4259, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 4259, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 4259, VelAdd]
type = VelAdd
trigger1 = 1
y = .5

[State 4259, ChangeState]
type = ChangeState
trigger1 = Pos Y >= 50
value = 4260

;-------------------------------------------------------------------------------------------------------------------------------------------
;CROSSFIRE FLASH TARGET 11
[StateDef 4260]
type = A
movetype = H
physics = N
velset = 0,0
sprpriority = 30

[State 4260, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = NoFG

[State 4260, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 4260

[State 4260, AngleDraw]
type = AngleDraw
trigger1 = 1
value = 90
scale = .3,.3
ignorehitpause = 1
persistent = 1

[State 4260, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 4260, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 1,0

[State 4260, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 4260, PosSet]
type = PosSet
trigger1 = !Time
x = -50*Facing
y = -GameHeight

[State 4260, VelSet]
type = VelSet
trigger1 = !Time
y = GameHeight/500

[State 4260, PalFX]
type = PalFX
trigger1 = 1
time = 1
add = 256,256,256
mul = 256,256,256
sinadd = 0,0,0,1
invertall = 0
color = 256

[State 4260, SelfState]
type = SelfState
trigger1 = Time > 5
trigger1 = Pos Y >= Const(Movement.Air.GetHit.GroundLevel)
value = 5100

;-------------------------------------------------------------------------------------------------------------------------------------------
;CROSSFIRE FLASH TARGET 12
[StateDef 4261]
type = A
movetype = H
physics = N
velset = 0,0
sprpriority = 26

[State 4261, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 4261

[State 4261, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 4261, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
movecamera = 0,0

[State 4261, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1

[State 4261, PosAdd]
type = PosAdd
trigger1 = !Time
y = -7000

[State 4261, VelAdd]
type = VelAdd
trigger1 = 1
y = .5

[State 4261, ChangeState]
type = ChangeState
trigger1 = Vel Y > 0 && Pos Y >= Const(Movement.Air.GetHit.GroundLevel)
value = 4262

;-------------------------------------------------------------------------------------------------------------------------------------------
;CROSSFIRE FLASH TARGET 13
[StateDef 4262]
type = L
movetype = H
physics = N
velset = 0,0
ctrl = 0
sprpriority = 0

[State 4262, EnvShake]
type = EnvShake
trigger1 = !Time
time = 20

[State 4262, LifeAdd]
type = LifeAdd
trigger1 = !Time
value = -80
kill = 1
absolute = 1

[State 4262, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 4262, PosFreeze]
type = PosFreeze
trigger1 = 1

[State 4262, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 4262

[State 4262, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 4262, StopSnd]
type = StopSnd
trigger1 = !Time
channel = 8

[State 4262, ChangeState]
type = ChangeState
trigger1 = Anim = 4262 && AnimElem = 2
value = 4263
ctrl = 0

;--------------------------------------------------------------------------------------------------------------------------------------------
;CROSSFIRE FLASH TARGET 14
[StateDef 4263]
type = L
movetype = H
physics = N
sprpriority = 0

[State 4263, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 5160

[State 4263, VelSet]
type = VelSet
trigger1 = !Time
y = -8

[State 4263, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 4263, VelAdd]
type = VelAdd
trigger1 = 1
y = .5

[State 4263, SelfState]
type = SelfState
trigger1 = Time > 1
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 12
value = 5110