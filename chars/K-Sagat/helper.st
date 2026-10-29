[Statedef 1001]
type    = S
movetype= A
physics =N
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0
anim =1001
sprpriority = 9

;=======================================;
;PROJECTILE REFLECTION COMPATIBILITY    ;
;?????????????                   ;
;by Vans                                ;
;GUIDE:                                 ;
;FOR PROJECTILE / ?????              	;
;sysvar(0) = 131072                     ;
;sysvar(1) = REFLECTED_BEHAVIOR_STATE   ;
;=======================================;
[State 1005, COMPATIBILITY]
type = VarSet
trigger1 = !time 
sysvar(0) = 131072
[State 1005, REFLECTED STATE]
type = VarSet
trigger1 = !time
sysvar(1) = 10011

;=======================================;
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = p2movetype!=H
movetype = A
[State -2, Helper]
type = Helper
triggerall = NumHelper(11009) < 1
trigger1 = winko && var(3) = 1 && (movecontact)
helpertype = normal ;player
name = "winko"
ID = 11009
stateno = 11009
pos = 0,0
postype = left   ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =999
pausemove = 999
ignorehitpause = 1
[State 0, VarSet]
type = parentVarset
trigger1 = movecontact  && p2statetype = A
v = 7    ;fv = 10
value = 5
ignorehitpause = 1
persistent = 0
[State 0, VarSet]
type = parentVaradd
trigger1 =movehit  && p2statetype = A
v = 8    ;fv = 10
value = 1
ignorehitpause = 1
persistent = 0
;ignorehitpause =
;persistent =
[State 0, StateTypeSet]
type = StateTypeSet
triggerall= root,movetype!=H
trigger1 =root,var(7)=3 && (root,stateno!=[3000,3100])
movetype = I
   ;I,A,H

[State 0, StateTypeSet]
type = StateTypeSet
triggerall= root,movetype!=H
trigger1 =root,var(7)=4
movetype = I


[State 0, StateTypeSet]
type = StateTypeSet
triggerall= root,movetype!=H
trigger1 =root,var(7)=2 && root,var(8)>=3 && (root,stateno!=[3000,3052])
movetype = I



[State 0, StateTypeSet]
type = StateTypeSet
triggerall= root,movetype!=H
trigger1 =root,var(7)>=5 && (root,stateno!=[3000,3052])
movetype = I

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = root,var(4)=0|| p2stateno=5120
movetype = A

[State 0, VarSet]
type = VarSet
trigger1 = time=0
v = 3   ;fv = 10
value = parent,var(3)
;ignorehitpause = 
;persistent = 

[State 0, VelSet]
type = VelSet
trigger1 = time >= 0
triggerall = var(3) = 0
x = 4

[State 0, VelSet]
type = VelSet
trigger1 = time >= 0
triggerall =  var(3) = 1
x = 5.5

[State 0, VelSet]
type = VelSet
trigger1 = time >= 0
triggerall =  var(3) = 2
x = 7.5

[State 0, VelSet]
type = VelSet
trigger1 = time >= 0
triggerall =var(3) = 4
x = 9

[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 1    ;fv = 10
value = vel x
ignorehitpause = 1
;persistent = 


[State 3005, hitoverride]
type=hitoverride
trigger1= 1
time=-1
attr=SCA,AA,AP,AT
stateno=1002

[State 0, HitBy]
type = HitBy
trigger1 = enemy,numproj=0
value = SCA,NP,SP,HP
;value2 = S,NA
time = 1
[State 0, HitBy]
type = notHitBy
trigger1 = enemy,numproj>0
value = SCA
;value2 = S,NA
time = 1

;[State 0, AfterImage]
;type = AfterImage
;trigger1 =1
;time = 99
;length = 2
;palcolor = 256
;palbright = 0,0,0
;palcontrast = 255,255,255
;palpostbright = -15,-15,-15
;paladd = 255,255,255
;palmul = .5,1,1
;timegap = 1
;framegap = 1
;trans = sub
;ignorehitpause=1
[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1
persistent = 1


;persistent = 
[State 1005, This is for fossils]
type = Projectile
trigger1 = !time
ProjID = 1000
projanim = anim
projhitanim = -1
projremanim = -1
projscale = 0,0
offset=0,0
projpriority = 1
projremovetime = -1
postype = p1         ;p2,front,back,left,right
velocity = fvar(1),0


[State 0, VarSet]
type = VarSet
trigger1 = movecontact
v = 12    ;fv = 10
value = 1
ignorehitpause = 1
;persistent = 

[State 210, 2]
type = HitDef
trigger1 =  !movecontact
attr = S, SP
animtype  = heavy
damage    =ifelse(var(3)=0,51,ifelse(var(3)=1,61,68)),12
guardflag = MA
pausetime = 4,4
priority = 4, Hit
hitsound = S2,8
sparkno = S7005+(random%4)
guard.sparkno = S11003
guardsound = S5,0
sparkxy = 0,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 18
ground.velocity =-8
air.velocity = -2.5,-4
envshake.time = 12
envshake.ampl = 3
envshake.freq=60
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
air.fall=1
fall.recover=0

[State 0, VarSet]
type = Varadd
trigger1 = movecontact=1 || root,numprojid(1000)=0
v = 2   ;fv = 10
value = 1
ignorehitpause =0 
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause=1

[State 0, VarSet]
type = VarSet
trigger1 = movecontact
v = 2   ;fv = 10
value = 1

[State 0, ParentVarSet]
type = ParentVarSet
trigger1 =movecontact
v = 18   ;fv =
value = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = (frontedgedist <= -20 || backedgedist <= -20) && time > 5

[State 210, 5]
type = ChangeState
trigger1 = movecontact
trigger2= root,numprojid(1000)=0 
value = 1002
[Statedef 10011]
type    = S
movetype= A
physics =N
juggle  = 0
poweradd= 0
ctrl = 0
velset = 0,0
anim =1001
sprpriority = 9

;=======================================;
;PROJECTILE REFLECTION COMPATIBILITY    ;
;?????????????                   ;
;by Vans                                ;
;GUIDE:                                 ;
;FOR PROJECTILE / ?????              	;
;sysvar(0) = 131072                     ;
;sysvar(1) = REFLECTED_BEHAVIOR_STATE   ;
;=======================================;
[State 1005, COMPATIBILITY]
type = VarSet
trigger1 = !time 
sysvar(0) = 131072
[State 1005, REFLECTED STATE]
type = VarSet
trigger1 = !time
sysvar(1) = 1001

;=======================================;

[State -2, Helper]
type = Helper
triggerall = NumHelper(11009) < 1
trigger1 = winko && var(3) = 1 && (movecontact)
helpertype = normal ;player
name = "winko"
ID = 11009
stateno = 11009
pos = 0,0
postype = left   ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =999
pausemove = 999
ignorehitpause = 1
[State 0, VarSet]
type = parentVarset
trigger1 = movecontact  && p2statetype = A
v = 7    ;fv = 10
value = 5
ignorehitpause = 1
persistent = 0
[State 0, VarSet]
type = parentVaradd
trigger1 =movehit  && p2statetype = A
v = 8    ;fv = 10
value = 1
ignorehitpause = 1
persistent = 0
;ignorehitpause =
;persistent =
[State 0, StateTypeSet]
type = StateTypeSet
triggerall= root,movetype!=H
trigger1 =root,var(7)=3 && (root,stateno!=[3000,3100])
movetype = I
   ;I,A,H

[State 0, StateTypeSet]
type = StateTypeSet
triggerall= root,movetype!=H
trigger1 =root,var(7)=4
movetype = I


[State 0, StateTypeSet]
type = StateTypeSet
triggerall= root,movetype!=H
trigger1 =root,var(7)=2 && root,var(8)>=3 && (root,stateno!=[3000,3052])
movetype = I



[State 0, StateTypeSet]
type = StateTypeSet
triggerall= root,movetype!=H
trigger1 =root,var(7)>=5 && (root,stateno!=[3000,3052])
movetype = I



;ignorehitpause = 
;persistent = 

[State 0, VelSet]
type = VelSet
trigger1 = time >= 0
triggerall = var(3) = 0
x = 4

[State 0, VelSet]
type = VelSet
trigger1 = time >= 0
triggerall =  var(3) = 1
x = 5.5

[State 0, VelSet]
type = VelSet
trigger1 = time >= 0
triggerall =  var(3) = 2
x = 7.5

[State 0, VelSet]
type = VelSet
trigger1 = time >= 0
triggerall =var(3) = 4
x = 9

[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 1    ;fv = 10
value = vel x
ignorehitpause = 1
;persistent = 


[State 3005, hitoverride]
type=hitoverride
trigger1= 1
time=-1
attr=SCA,AA,AP,AT
stateno=1002

[State 0, HitBy]
type = HitBy
trigger1 = enemy,numproj=0
value = SCA,NP,SP,HP
;value2 = S,NA
time = 1
[State 0, HitBy]
type = notHitBy
trigger1 = enemy,numproj>0
value = SCA
;value2 = S,NA
time = 1

;[State 0, AfterImage]
;type = AfterImage
;trigger1 =1
;time = 99
;length = 2
;palcolor = 256
;palbright = 0,0,0
;palcontrast = 255,255,255
;palpostbright = -15,-15,-15
;paladd = 255,255,255
;palmul = .5,1,1
;timegap = 1
;framegap = 1
;trans = sub
;ignorehitpause=1
[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1
persistent = 1


;persistent = 
[State 1005, This is for fossils]
type = Projectile
trigger1 = !time
ProjID = 1000
projanim = anim
projhitanim = -1
projremanim = -1
projscale = 0,0
offset=0,0
projpriority = 1
projremovetime = -1
postype = p1         ;p2,front,back,left,right
velocity = fvar(1),0


[State 0, VarSet]
type = VarSet
trigger1 = movecontact
v = 12    ;fv = 10
value = 1
ignorehitpause = 1
;persistent = 

[State 210, 2]
type = HitDef
trigger1 =  !movecontact
attr = S, SP
animtype  = heavy
affectteam=f
damage    =ifelse(var(3)=0,51,ifelse(var(3)=1,61,68)),12
guardflag = MA
pausetime = 4,4
priority = 4, Hit
hitsound = S2,8
sparkno = S7005+(random%4)
guard.sparkno = S11003
guardsound = S5,0
sparkxy = 0,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 18
ground.velocity =-8
air.velocity = -2.5,-4
envshake.time = 12
envshake.ampl = 3
envshake.freq=60
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
air.fall=1
fall.recover=0

[State 0, VarSet]
type = Varadd
trigger1 = movecontact=1 || root,numprojid(1000)=0
v = 2   ;fv = 10
value = 1
ignorehitpause =0 
[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause=1

[State 0, VarSet]
type = VarSet
trigger1 = movecontact
v = 2   ;fv = 10
value = 1

[State 0, ParentVarSet]
type = ParentVarSet
trigger1 =movecontact
v = 18   ;fv =
value = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = (frontedgedist <= -20 || backedgedist <= -20) && time > 5

[State 210, 5]
type = ChangeState
trigger1 = movecontact
trigger2= root,numprojid(1000)=0 
value = 1002
;---------------------------------------------------------------------------
[Statedef 1003]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
anim = 1006
ctrl = 0
sprpriority = 5

;=======================================;
;PROJECTILE REFLECTION COMPATIBILITY    ;
;?????????????                   ;
;by Vans                                ;
;GUIDE:                                 ;
;FOR PROJECTILE / ?????              	;
;sysvar(0) = 131072                     ;
;sysvar(1) = REFLECTED_BEHAVIOR_STATE   ;
;=======================================;
[State 1005, COMPATIBILITY]
type = VarSet
trigger1 = !time 
sysvar(0) = 131072
[State 1005, REFLECTED STATE]
type = VarSet
trigger1 = !time
sysvar(1) = 10031

;=======================================;

[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = p2movetype!=H
movetype = A

[State 3000, 0]
type = parentVarSet
trigger1 = time = 0
var(3) = 0
[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
;ignorehitpause =
;ignorehitpause =
[State 0, StateTypeSet]
type = StateTypeSet
triggerall= root,movetype!=H
trigger1 =root,var(7)=3 && (root,stateno!=[3000,3100])
movetype = I
   ;I,A,H

[State 0, StateTypeSet]
type = StateTypeSet
triggerall= root,movetype!=H
trigger1 =root,var(7)=4
movetype = I


[State 0, StateTypeSet]
type = StateTypeSet
triggerall= root,movetype!=H
trigger1 =root,var(7)=2 && root,var(8)>=3 && (root,stateno!=[3000,3052])
movetype = I



[State 0, StateTypeSet]
type = StateTypeSet
triggerall= root,movetype!=H
trigger1 =root,var(7)=5 && (root,stateno!=[3000,3052])
movetype = I
[State 0, VelSet]
type = VelSet
trigger1 = 1
x =ifelse((time < 2 && var(10) > 1),.5,9)
[State 1208, 4]
type = HitDef
trigger1 = time>0
attr = S, SP
animtype  = Medium
damage    = 40, 12
priority  = 7
guardflag = MA
pausetime = 5,6
sparkxy = 0,-3
priority = 5, Hit
guard.sparkno= S11003
hitsound = S2,9
sparkno = S8000+(random%4)
guardsound = S5,0
getpower = 0
givepower = 0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 16
ground.velocity = ifelse(var(10)=0,.5,-3),ifelse(var(10)=0,0,-5)
guard.velocity = -7
air.velocity = ifelse(var(10)=0,.5,-3),ifelse(var(10)=0,-.5,-5)
fall =1
fall.recover = 0
envshake.time=16
envshake.freq=100
envshake.ampl=6
sprpriority=4
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
air.fall=1
fall.recover=0
[State 0, HitBy]
type = HitBy
trigger1 = enemy,numproj=0
value = SCA,NP,SP,HP
;value2 = S,NA
time = 1
[State 0, HitBy]
type = notHitBy
trigger1 = enemy,numproj>0
value = SCA
;value2 = S,NA
time = 1

;[State 0, AfterImage]
;type = AfterImage
;trigger1 =1
;time = 99
;length = 2
;palcolor = 256
;palbright = 0,0,0
;palcontrast = 255,255,255
;palpostbright = -15,-15,-15
;paladd = 255,255,255
;palmul = .5,1,1
;timegap = 1
;framegap = 1
;trans = sub
;ignorehitpause=1
[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1
persistent = 1
[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 1    ;fv = 10
value = vel x
ignorehitpause = 1

;persistent = 
[State 1005, This is for fossils]
type = Projectile
trigger1 = !time
ProjID = 1000
projanim = anim
projhitanim = -1
projremanim = -1
projscale = 0,0
offset=0,0
projpriority = 1
projremovetime = -1
postype = p1         ;p2,front,back,left,right
velocity = 9,0


;persistent = 
[State 0, VarAdd]
type = VarAdd
trigger1 = prevstateno=1003 && time = 0
v = 10     ;fv =
value = 1

[State 0, VarAdd]
type = Varset
trigger1 = prevstateno!=1003
v = 10     ;fv =
value = 0
[State 3005, hitoverride]
type=hitoverride
triggerall =1
trigger1=1
time=-1
attr=SCA,AA,AP,AT
stateno=ifelse(var(10)<=1,1003,1002)




[State 0, VarSet]
type = parentVarset
trigger1 = movehit
v = 7    ;fv = 10
value =ifelse(prevstateno!=1003,2,5)
ignorehitpause = 1
persistent =1


[State 3005, end]
type=changestate
trigger1=movecontact || moveguarded
trigger2= root,numprojid(1000)=0 
value=ifelse(var(10)<1,1003,1002)
[State 0, DestroySelf]
type = DestroySelf
trigger1 = (frontedgedist <= -40 || backedgedist <= -40) && time > 5
;---------------------------------------------------------------------------
[Statedef 10031]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
anim = 1006
ctrl = 0
sprpriority = 5

;=======================================;
;PROJECTILE REFLECTION COMPATIBILITY    ;
;?????????????                   ;
;by Vans                                ;
;GUIDE:                                 ;
;FOR PROJECTILE / ?????              	;
;sysvar(0) = 131072                     ;
;sysvar(1) = REFLECTED_BEHAVIOR_STATE   ;
;=======================================;
[State 1005, COMPATIBILITY]
type = VarSet
trigger1 = !time 
sysvar(0) = 131072
[State 1005, REFLECTED STATE]
type = VarSet
trigger1 = !time
sysvar(1) = 1003

;=======================================;

;ignorehitpause = 
;persistent = 



[State 3000, 0]
type = parentVarSet
trigger1 = time = 0
var(3) = 0
[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
;ignorehitpause =
;ignorehitpause =
[State 0, StateTypeSet]
type = StateTypeSet
triggerall= root,movetype!=H
trigger1 =root,var(7)=3 && (root,stateno!=[3000,3100])
movetype = I
   ;I,A,H

[State 0, StateTypeSet]
type = StateTypeSet
triggerall= root,movetype!=H
trigger1 =root,var(7)=4
movetype = I


[State 0, StateTypeSet]
type = StateTypeSet
triggerall= root,movetype!=H
trigger1 =root,var(7)=2 && root,var(8)>=3 && (root,stateno!=[3000,3052])
movetype = I



[State 0, StateTypeSet]
type = StateTypeSet
triggerall= root,movetype!=H
trigger1 =root,var(7)=5 && (root,stateno!=[3000,3052])
movetype = I
[State 0, VelSet]
type = VelSet
trigger1 = 1
x =ifelse((time < 2 && var(10) > 1),.5,9)
[State 1208, 4]
type = HitDef
trigger1 = time>0
attr = S, SP
animtype  = Medium
damage    = 40, 12
affectteam=f
priority  = 7
guardflag = MA
pausetime = 5,6
sparkxy = 0,-3
priority = 5, Hit
affectteam=f
guard.sparkno= S11003
hitsound = S2,9
sparkno = S8000+(random%4)
guardsound = S5,0
getpower = 0
givepower = 0
ground.type = Low
ground.slidetime = 10
ground.hittime  = 16
ground.velocity = ifelse(var(10)=0,.5,-3),ifelse(var(10)=0,0,-5)
guard.velocity = -7
air.velocity = ifelse(var(10)=0,.5,-3),ifelse(var(10)=0,-.5,-5)
fall =1
fall.recover = 0
envshake.time=16
envshake.freq=100
envshake.ampl=6
sprpriority=4
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
air.fall=1
fall.recover=0
[State 0, HitBy]
type = HitBy
trigger1 = enemy,numproj=0
value = SCA,NP,SP,HP
;value2 = S,NA
time = 1
[State 0, HitBy]
type = notHitBy
trigger1 = enemy,numproj>0
value = SCA
;value2 = S,NA
time = 1

;[State 0, AfterImage]
;type = AfterImage
;trigger1 =1
;time = 99
;length = 2
;palcolor = 256
;palbright = 0,0,0
;palcontrast = 255,255,255
;palpostbright = -15,-15,-15
;paladd = 255,255,255
;palmul = .5,1,1
;timegap = 1
;framegap = 1
;trans = sub
;ignorehitpause=1
[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1
persistent = 1
[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 1    ;fv = 10
value = vel x
ignorehitpause = 1

;persistent = 
[State 1005, This is for fossils]
type = Projectile
trigger1 = !time
ProjID = 1000
projanim = anim
projhitanim = -1
projremanim = -1
projscale = 0,0
offset=0,0
projpriority = 1
projremovetime = -1
postype = p1         ;p2,front,back,left,right
velocity = 9,0


;persistent = 
[State 0, VarAdd]
type = VarAdd
trigger1 = prevstateno=10031 && time = 0
v = 10     ;fv =
value = 1

[State 0, VarAdd]
type = Varset
trigger1 = prevstateno!=10031
v = 10     ;fv =
value = 0
[State 3005, hitoverride]
type=hitoverride
triggerall =1
trigger1=1
time=-1
attr=SCA,AA,AP,AT
stateno=ifelse(var(10)<=1,10031,1002)




[State 0, VarSet]
type = parentVarset
trigger1 = movehit
v = 7    ;fv = 10
value =ifelse(prevstateno!=1003,2,5)
ignorehitpause = 1
persistent =1


[State 3005, end]
type=changestate
trigger1=movecontact || moveguarded
trigger2= root,numprojid(1000)=0 
value=ifelse(var(10)<1,10031,1002)
[State 0, DestroySelf]
type = DestroySelf
trigger1 = (frontedgedist <= -40 || backedgedist <= -40) && time > 5
;--------------------------------------------------------------------------------------------
[Statedef 1002]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim =1002
sprpriority = 2

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause=1
[State 0, PowerAdd]
type = PowerAdd
trigger1 = !var(12)
value = ifelse(root,var(3)=2,0,60)
ignorehitpause=1
persistent = 0
[State 210, 5]
type = destroyself
trigger1 = animtime = 0
;-------------------------------------------------------------------------------------------
[Statedef 1006]
type    = C
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim =1001
sprpriority = 9
;=======================================;
;PROJECTILE REFLECTION COMPATIBILITY    ;
;?????????????                   ;
;by Vans                                ;
;GUIDE:                                 ;
;FOR PROJECTILE / ?????              	;
;sysvar(0) = 131072                     ;
;sysvar(1) = REFLECTED_BEHAVIOR_STATE   ;
;=======================================;
[State 1005, COMPATIBILITY]
type = VarSet
trigger1 = !time 
sysvar(0) = 131072
[State 1005, REFLECTED STATE]
type = VarSet
trigger1 = !time
sysvar(1) = 10061

;=======================================;
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = p2movetype!=H
movetype = A
[State -2, Helper]
type = Helper
triggerall = NumHelper(11009) < 1
trigger1 = winko && var(3) = 1 && (movecontact)
helpertype = normal ;player
name = "winko"
ID = 11009
stateno = 11009
pos = 0,0
postype = left   ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =999
pausemove = 999
ignorehitpause = 1
[State 0, VarSet]
type = parentVarset
trigger1 = movecontact  && p2statetype = A
v = 7    ;fv = 10
value = 5
ignorehitpause = 1
persistent = 0

;ignorehitpause =
[State 0, StateTypeSet]
type = StateTypeSet
triggerall= root,movetype!=H
trigger1 =root,var(7)=3 && (root,stateno!=[3000,3100])
movetype = I
   ;I,A,H

[State 0, StateTypeSet]
type = StateTypeSet
triggerall= root,movetype!=H
trigger1 =root,var(7)=4
movetype = I


[State 0, StateTypeSet]
type = StateTypeSet
triggerall= root,movetype!=H
trigger1 =root,var(7)=2 && root,var(8)>=3 && (root,stateno!=[3000,3052])
movetype = I



[State 0, StateTypeSet]
type = StateTypeSet
triggerall= root,movetype!=H
trigger1 =root,var(7)=5 && (root,stateno!=[3000,3052])
movetype = I

[State 0, VarSet]
type = VarSet
trigger1 = time=0
v =3    ;fv = 10
value = parent,var(3)
;ignorehitpause = 
;persistent = 

[State 0, VelSet]
type = VelSet
trigger1 = time >= 0
triggerall = var(3) = 0
x = 4

[State 0, VelSet]
type = VelSet
trigger1 = time >= 0
triggerall = var(3) = 1
x = 5.5

[State 0, VelSet]
type = VelSet
trigger1 = time >= 0
triggerall =var(3) = 2
x = 7.5

[State 0, VelSet]
type = VelSet
trigger1 = time >= 0
triggerall = var(4) = 4
x = 9



[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 1    ;fv = 10
value = vel x
ignorehitpause = 1
;persistent = 


[State 3005, hitoverride]
type=hitoverride
trigger1= 1
time=-1
attr=SCA,AA,AP,AT
stateno=1002

[State 0, HitBy]
type = HitBy
trigger1 = enemy,numproj=0
value = SCA,NP,SP,HP
;value2 = S,NA
time = 1
[State 0, HitBy]
type = notHitBy
trigger1 = enemy,numproj>0
value = SCA
;value2 = S,NA
time = 1

;[State 0, AfterImage]
;type = AfterImage
;trigger1 =1
;time = 99
;length = 2
;palcolor = 256
;palbright = 0,0,0
;palcontrast = 255,255,255
;palpostbright = -15,-15,-15
;paladd = 255,255,255
;palmul = .5,1,1
;timegap = 1
;framegap = 1
;trans = sub
;ignorehitpause=1
[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1
persistent = 1


;persistent = 
[State 1005, This is for fossils]
type = Projectile
trigger1 = !time
ProjID = 1000
projanim = anim
projhitanim = -1
projremanim = -1
projscale = 0,0
offset=0,0
projpriority = 1
projremovetime = -1
postype = p1         ;p2,front,back,left,right
velocity = fvar(1),0


[State 0, VarSet]
type = VarSet
trigger1 = movecontact
v = 12    ;fv = 10
value = 1
ignorehitpause = 1

[State 210, 2]
type = HitDef
trigger1 =  !movecontact
attr = C, SP
animtype  = heavy
damage    =ifelse(parent,var(3)=0,51,ifelse(parent,var(3)=1,61,68)),12
guardflag = MA
pausetime = 4,4
priority = 4, Hit
hitsound = S2,8
sparkno = S7005+(random%4)
guard.sparkno = S11003
guardsound = S5,0
sparkxy = 0,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 18
ground.velocity = ifelse(parent,var(3)=0,-7,ifelse(parent,var(3)=1,-8,-9.25))
air.velocity = -2.5,-4
envshake.time = 12
envshake.ampl = 3
envshake.freq=60
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
air.fall=1
fall.recover=0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause=1

[State 0, VarSet]
type = VarSet
trigger1 = movecontact
v = 2   ;fv = 10
value = 1

[State 0, ParentVarSet]
type = ParentVarSet
trigger1 =movecontact
v = 18   ;fv =
value = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = (frontedgedist <= -20 || backedgedist <= -20) && time > 5

[State 210, 5]
type = ChangeState
trigger1 = movecontact
trigger2= root,numprojid(1000)=0 
value = 1002
;-------------------------------------------------------------------------------------------
[Statedef 10061]
type    = C
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim =1001
sprpriority = 9
;=======================================;
;PROJECTILE REFLECTION COMPATIBILITY    ;
;?????????????                   ;
;by Vans                                ;
;GUIDE:                                 ;
;FOR PROJECTILE / ?????              	;
;sysvar(0) = 131072                     ;
;sysvar(1) = REFLECTED_BEHAVIOR_STATE   ;
;=======================================;
[State 1005, COMPATIBILITY]
type = VarSet
trigger1 = !time 
sysvar(0) = 131072
[State 1005, REFLECTED STATE]
type = VarSet
trigger1 = !time
sysvar(1) = 1006

;=======================================;

[State -2, Helper]
type = Helper
triggerall = NumHelper(11009) < 1
trigger1 = winko && var(3) = 1 && (movecontact)
helpertype = normal ;player
name = "winko"
ID = 11009
stateno = 11009
pos = 0,0
postype = left   ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =999
pausemove = 999
ignorehitpause = 1
[State 0, VarSet]
type = parentVarset
trigger1 = movecontact  && p2statetype = A
v = 7    ;fv = 10
value = 5
ignorehitpause = 1
persistent = 0

;ignorehitpause =
[State 0, StateTypeSet]
type = StateTypeSet
triggerall= root,movetype!=H
trigger1 =root,var(7)=3 && (root,stateno!=[3000,3100])
movetype = I
   ;I,A,H

[State 0, StateTypeSet]
type = StateTypeSet
triggerall= root,movetype!=H
trigger1 =root,var(7)=4
movetype = I


[State 0, StateTypeSet]
type = StateTypeSet
triggerall= root,movetype!=H
trigger1 =root,var(7)=2 && root,var(8)>=3 && (root,stateno!=[3000,3052])
movetype = I



[State 0, StateTypeSet]
type = StateTypeSet
triggerall= root,movetype!=H
trigger1 =root,var(7)=5 && (root,stateno!=[3000,3052])
movetype = I

;ignorehitpause = 
;persistent = 

[State 0, VelSet]
type = VelSet
trigger1 = time >= 0
triggerall = var(3) = 0
x = 4

[State 0, VelSet]
type = VelSet
trigger1 = time >= 0
triggerall = var(3) = 1
x = 5.5

[State 0, VelSet]
type = VelSet
trigger1 = time >= 0
triggerall =var(3) = 2
x = 7.5

[State 0, VelSet]
type = VelSet
trigger1 = time >= 0
triggerall = var(4) = 4
x = 9



[State 0, VarSet]
type = VarSet
trigger1 = 1
fv = 1    ;fv = 10
value = vel x
ignorehitpause = 1
;persistent = 


[State 3005, hitoverride]
type=hitoverride
trigger1= 1
time=-1
attr=SCA,AA,AP,AT
stateno=1002

[State 0, HitBy]
type = HitBy
trigger1 = enemy,numproj=0
value = SCA,NP,SP,HP
;value2 = S,NA
time = 1
[State 0, HitBy]
type = notHitBy
trigger1 = enemy,numproj>0
value = SCA
;value2 = S,NA
time = 1

;[State 0, AfterImage]
;type = AfterImage
;trigger1 =1
;time = 99
;length = 2
;palcolor = 256
;palbright = 0,0,0
;palcontrast = 255,255,255
;palpostbright = -15,-15,-15
;paladd = 255,255,255
;palmul = .5,1,1
;timegap = 1
;framegap = 1
;trans = sub
;ignorehitpause=1
[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause = 1
persistent = 1


;persistent = 
[State 1005, This is for fossils]
type = Projectile
trigger1 = !time
ProjID = 1000
projanim = anim
projhitanim = -1
projremanim = -1
projscale = 0,0
offset=0,0
projpriority = 1
projremovetime = -1
postype = p1         ;p2,front,back,left,right
velocity = fvar(1),0


[State 0, VarSet]
type = VarSet
trigger1 = movecontact
v = 12    ;fv = 10
value = 1
ignorehitpause = 1

[State 210, 2]
type = HitDef
trigger1 =  !movecontact
attr = C, SP
affectteam=f
animtype  = heavy
damage    =ifelse(parent,var(3)=0,51,ifelse(parent,var(3)=1,61,68)),12
guardflag = MA
pausetime = 4,4
priority = 4, Hit
hitsound = S2,8
sparkno = S7005+(random%4)
guard.sparkno = S11003
guardsound = S5,0
sparkxy = 0,0
ground.type = High
ground.slidetime = 14
ground.hittime  = 18
ground.velocity = ifelse(parent,var(3)=0,-7,ifelse(parent,var(3)=1,-8,-9.25))
air.velocity = -2.5,-4
envshake.time = 12
envshake.ampl = 3
envshake.freq=60
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
air.fall=1
fall.recover=0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause=1

[State 0, VarSet]
type = VarSet
trigger1 = movecontact
v = 2   ;fv = 10
value = 1

[State 0, ParentVarSet]
type = ParentVarSet
trigger1 =movecontact
v = 18   ;fv =
value = 1

[State 0, DestroySelf]
type = DestroySelf
trigger1 = (frontedgedist <= -20 || backedgedist <= -20) && time > 5

[State 210, 5]
type = ChangeState
trigger1 = movecontact
trigger2= root,numprojid(1000)=0 
value = 1002
;---------------------------------------------------------------------------
[Statedef 3004]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
anim = 3000
ctrl = 0
sprpriority = 5
;=======================================;
;PROJECTILE REFLECTION COMPATIBILITY    ;
;?????????????                   ;
;by Vans                                ;
;GUIDE:                                 ;
;FOR PROJECTILE / ?????              	;
;sysvar(0) = 131072                     ;
;sysvar(1) = REFLECTED_BEHAVIOR_STATE   ;
;=======================================;
[State 1005, COMPATIBILITY]
type = VarSet
trigger1 = !time 
sysvar(0) = 131072
[State 1005, REFLECTED STATE]
type = VarSet
trigger1 = !time
sysvar(1) = 30041

;=======================================;
[State 0, StateTypeSet]
type = StateTypeSet
trigger1 = p2movetype!=H
movetype = A
[State -2, Helper]
type = Helper
trigger1 = NumHelper(11009) < 1 && movecontact && winko
helpertype = normal ;player
name = "winko"
ID = 11009
stateno = 11009
pos = 0,0
postype = left   ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =999
pausemove = 999
ignorehitpause = 1





[State 3000, 0]
type = parentVarSet
trigger1 = time = 0
var(3) = 0
[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
;ignorehitpause =
;ignorehitpause =
[State 0, StateTypeSet]
type = StateTypeSet
triggerall= root,movetype!=H
trigger1 =root,var(7)=3 && (root,stateno!=[3000,3100])
movetype = I
   ;I,A,H

[State 0, StateTypeSet]
type = StateTypeSet
triggerall= root,movetype!=H
trigger1 =root,var(7)=4
movetype = I


[State 0, StateTypeSet]
type = StateTypeSet
triggerall= root,movetype!=H
trigger1 =root,var(7)=2 && root,var(8)>=3 && (root,stateno!=[3000,3052])
movetype = I



[State 0, StateTypeSet]
type = StateTypeSet
triggerall= root,movetype!=H
trigger1 =root,var(7)=5 && (root,stateno!=[3000,3052])
movetype = I

[State 1208, 4]
type = HitDef
trigger1 = 1
attr = S, HP
animtype  = Medium
damage    = 34, 12
priority  = 5
guardflag = MA
pausetime = 5,6
sparkxy = 0,-3
priority = 5, Hit
guard.sparkno= S11003
hitsound = S2,9
sparkno = S8000+(random%4)
guardsound = S5,0
getpower = 0
givepower = 0
ground.type = Low
ground.slidetime = 16
ground.hittime  = 16
ground.velocity = ifelse(var(10)<3,.5,-6),ifelse(var(10)<3,0,-5)
guard.velocity = -7
air.velocity = ifelse(var(10)<3,.5,-6),ifelse(var(10)<3,-.5,-5)
fall =ifelse(var(10)<3,0,1)
fall.recover = 0
envshake.time=16
envshake.freq=100
envshake.ampl=6
sprpriority=4
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause=1
[State 0, VelSet]
type = VelSet
trigger1 = 1
x =ifelse((time < 2 && var(10) > 1),.5,9)
[State 0, VarAdd]
type = VarAdd
trigger1 = prevstateno=3004 && time = 0
v = 10     ;fv =
value = 1

[State 0, VarAdd]
type = Varset
trigger1 = prevstateno!=3004
v = 10     ;fv =
value = 0
[State 3005, hitoverride]
type=hitoverride
triggerall =1
trigger1=1
time=-1
attr=SCA,AA,AP,AT
stateno=ifelse(var(10)<=3,3004,1002)

[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = movecontact
v = 20    ;fv =
value = 1
;ignorehitpause =
;persistent =


[State 0, VarSet]
type = parentVarset
trigger1 = movehit
v = 7    ;fv = 10
value =ifelse(var(10)<=3,3,4)
ignorehitpause = 1
persistent =0


[State 3005, end]
type=changestate
trigger1=movecontact || moveguarded
value=ifelse(var(10)<=3,3004,1002)


[State 0, ChangeState]
type = ChangeState
trigger1 = (frontedgedist <= -90 || backedgedist <= -90) && time > 5
value = 1002
ctrl = 0
;---------------------------------------------------------------------------
[Statedef 30041]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
anim = 3000
ctrl = 0
sprpriority = 5
;=======================================;
;PROJECTILE REFLECTION COMPATIBILITY    ;
;?????????????                   ;
;by Vans                                ;
;GUIDE:                                 ;
;FOR PROJECTILE / ?????              	;
;sysvar(0) = 131072                     ;
;sysvar(1) = REFLECTED_BEHAVIOR_STATE   ;
;=======================================;
[State 1005, COMPATIBILITY]
type = VarSet
trigger1 = !time 
sysvar(0) = 131072
[State 1005, REFLECTED STATE]
type = VarSet
trigger1 = !time
sysvar(1) = 3004

;=======================================;

[State -2, Helper]
type = Helper
trigger1 = NumHelper(11009) < 1 && movecontact && winko
helpertype = normal ;player
name = "winko"
ID = 11009
stateno = 11009
pos = 0,0
postype = left   ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =999
pausemove = 999
ignorehitpause = 1





[State 3000, 0]
type = parentVarSet
trigger1 = time = 0
var(3) = 0
[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
;ignorehitpause =
;ignorehitpause =
[State 0, StateTypeSet]
type = StateTypeSet
triggerall= root,movetype!=H
trigger1 =root,var(7)=3 && (root,stateno!=[3000,3100])
movetype = I
   ;I,A,H

[State 0, StateTypeSet]
type = StateTypeSet
triggerall= root,movetype!=H
trigger1 =root,var(7)=4
movetype = I


[State 0, StateTypeSet]
type = StateTypeSet
triggerall= root,movetype!=H
trigger1 =root,var(7)=2 && root,var(8)>=3 && (root,stateno!=[3000,3052])
movetype = I



[State 0, StateTypeSet]
type = StateTypeSet
triggerall= root,movetype!=H
trigger1 =root,var(7)=5 && (root,stateno!=[3000,3052])
movetype = I

[State 1208, 4]
type = HitDef
trigger1 = 1
attr = S, HP
animtype  = Medium
affectteam=f
damage    = 34, 12
priority  = 5
guardflag = MA
pausetime = 5,6
sparkxy = 0,-3
priority = 5, Hit
guard.sparkno= S11003
hitsound = S2,9
sparkno = S8000+(random%4)
guardsound = S5,0
getpower = 0
givepower = 0
ground.type = Low
ground.slidetime = 16
ground.hittime  = 16
ground.velocity = ifelse(var(10)<3,.5,-6),ifelse(var(10)<3,0,-5)
guard.velocity = -7
air.velocity = ifelse(var(10)<3,.5,-6),ifelse(var(10)<3,-.5,-5)
fall =ifelse(var(10)<3,0,1)
fall.recover = 0
envshake.time=16
envshake.freq=100
envshake.ampl=6
sprpriority=4
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0


[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause=1
[State 0, VelSet]
type = VelSet
trigger1 = 1
x =ifelse((time < 2 && var(10) > 1),.5,9)
[State 0, VarAdd]
type = VarAdd
trigger1 = prevstateno=30041 && time = 0
v = 10     ;fv =
value = 1

[State 0, VarAdd]
type = Varset
trigger1 = prevstateno!=30041
v = 10     ;fv =
value = 0
[State 3005, hitoverride]
type=hitoverride
triggerall =1
trigger1=1
time=-1
attr=SCA,AA,AP,AT
stateno=ifelse(var(10)<=3,30041,1002)

[State 0, ParentVarSet]
type = ParentVarSet
trigger1 = movecontact
v = 20    ;fv =
value = 1
;ignorehitpause =
;persistent =


[State 0, VarSet]
type = parentVarset
trigger1 = movehit
v = 7    ;fv = 10
value =ifelse(var(10)<=3,3,4)
ignorehitpause = 1
persistent =0


[State 3005, end]
type=changestate
trigger1=movecontact || moveguarded
value=ifelse(var(10)<=3,30041,1002)


[State 0, ChangeState]
type = ChangeState
trigger1 = (frontedgedist <= -90 || backedgedist <= -90) && time > 5
value = 1002
ctrl = 0
;---------------------------------------------------------------------------
[Statedef 3005]
type    = S
movetype= A
physics = S
juggle  = 0
velset = 0,0
anim = 3000
ctrl = 0
sprpriority = 5

[State -2, Helper]
type = Helper
trigger1 = NumHelper(11009) < 1 && movecontact && winko
helpertype = normal ;player
name = "winko"
ID = 11009
stateno = 11009
pos = 0,0
postype = left   ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermove =999
pausemove = 999
ignorehitpause = 1




[State 3000, 0]
type = parentVarSet
trigger1 = time = 0
var(3) = 0
[State 0, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
;ignorehitpause =
;persistent =

[State 1208, 4]
type = HitDef
trigger1 = !movecontact
attr = S, HP
animtype  = Medium
damage    = 150, 12
priority  = 5
guardflag = MA
pausetime = 2,2
sparkxy = 0,-3
guard.sparkno= S11003
hitsound = S2,9
sparkno = S8000+(random%4)
guardsound = S5,0
getpower = 0
givepower = 0
ground.type = Low
ground.slidetime = 16
ground.hittime  = 16
ground.velocity = -7,-5
guard.velocity = -7
air.velocity = -8,-5
fall =1
fall.recover = 0
envshake.time=16
envshake.freq=100
envshake.ampl=6
sprpriority=4
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
p2stateno=4025
kill=0


[State 0, HitBy]
type = NotHitBy
trigger1 = 1
value = SCA
;value2 = S,NA
time = 1
ignorehitpause = 1
persistent = 1

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
ignorehitpause=1
[State 0, VelSet]
type = VelSet
trigger1 = 1
x =ifelse((time < 2 && var(10) > 1),.5,9)

[State 3005, hitoverride]
type=hitoverride
triggerall =1
trigger1=1
time=-1
attr=SCA,AA,AP,AT
stateno=1002


[State 0, ChangeState]
type = ChangeState
trigger1 = (frontedgedist <= -90 || backedgedist <= -90) && time > 5
trigger2=movecontact || moveguarded
value = 1002
ctrl = 0

;--------------------------------------------------------------------
[Statedef 4000]
statetype=I
physics =N
ctrl = 0
anim =4001
velset = 0,0
[State 0, Explod]
type = Explod
trigger1 = root,var(57)<65
triggerall =numexplod(10015)<1
anim = 10015
ID =10015
pos = ifelse(teamside=2,root,var(51)+288,root,var(51)),root,var(52)
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermovetime=999
pausemovetime=999
scale = .125,.125
sprpriority = 0
ontop =0
shadow = 0,0,0
ownpal = 1
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 =root,var(57)>=65
id =10015
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 =root,var(57)<65
id =10018
[State 0, Explod]
type = Explod
trigger1 = root,var(57)=65
triggerall =numexplod(10018)<1
anim = 10018
ID =10018
pos = ifelse(teamside=2,root,var(51)+288,root,var(51)),root,var(52)
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermovetime=999
pausemovetime=999
scale = .125,.125
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1
[State 0, Explod]
type = Explod
trigger1 =time=0
anim = 10014
ID =10014
pos = ifelse(teamside=2,root,var(51)+291,root,var(51)+3),root,var(52)
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermovetime=999
pausemovetime=999
scale = .25,.25
sprpriority = 0
ontop = 0
shadow = 0,0,0
ownpal = 1

[State 0, Explod]
type = Explod
trigger1 =time=0
anim = 10016
ID =10016
pos = ifelse(teamside=2,root,var(51)+287,root,var(51)-1),root,var(52)+84
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermovetime=999
pausemovetime=999
scale = .25,.26
sprpriority = -2
ontop = 0
shadow = 0,0,0
ownpal = 1
[State 0, Explod]
type = Explod
trigger1 =time=0
anim = 10017
ID =10017
pos = ifelse(teamside=2,root,var(51)+287,root,var(51)-1),root,var(52)+84
postype = left  ;p2,front,back,left,right
facing = 1
vfacing = 1
bindtime = -1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
supermovetime=999
pausemovetime=999
scale = .25,.26
sprpriority = -1
ontop = 0
shadow = 0,0,0
ownpal = 1


[State 0, ModifyExplod]
type = ModifyExplod
trigger1 =enemy,gethitvar(hitcount)<3|| p2movetype!=H
ID =10017
scale = .25,root,var(57)*.004

[State 0, ModifyExplod]
type = ModifyExplod
trigger1 =root,var(57)<65
ID =10016
scale = .25,(root,var(57)+root,var(12))*.004


;--------------------------------------------------------------------------
;--------------------------------------------------------------------
[Statedef 4050]
statetype=I
physics =N
ctrl = 0
anim =10999
velset = 0,0

[State 0, PosSet]
type = PosSet
triggerall = facing=1
trigger1 =time=0 
x = -140
y = -180

[State 0, Turn]
type = Turn
trigger1 =facing=-1 && time=0 
;ignorehitpause = 
;persistent = 


[State 0, PosSet]
type = PosSet
triggerall = teamside=2
trigger1 =time=0 
x = 40
y = -180
;-Pal Number, 10's
[State 0, Explod]
type = Explod
triggerall = roundstate!=2
trigger1 =numexplod(12000)<1
anim =12050+(((root,Var(54) % 100) - (root,Var(54) % 10))/10)
ID =12000
pos = 30,42
postype = p1  ;p2,front,back,left,right
facing = ifelse(facing=-1,1,1)
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = .5,.5
sprpriority = 1
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

;---pal number 1's
[State 0, Explod]
type = Explod
trigger1 =numexplod(12001)<1
anim =12050+(root,var(54)%10)
ID =12001
pos = 50,42
postype = p1  ;p2,front,back,left,right
facing = ifelse(facing=-1,1,1)
vfacing = 1
bindtime = 1
vel = 0,0
accel = 0,0
random = 0,0
removetime = -1
scale = .5,.5
sprpriority = 1
ontop = 1
shadow = 0,0,0
ownpal = 0
removeongethit = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 =1
flag = intro
flag2=noshadow

;------used so you cant select another pal after the first time
[State 0, VarSet]
type = parentVarSet
trigger1 =1
v = 53   ;fv = 10
value =1
;ignorehitpause =
;persistent =


[State 0, RemoveExplod]
type = RemoveExplod
trigger1 =root,command="down"||root,command="up"||root,command="fwd"||root,command="back"
id =12000
[State 0, RemoveExplod]
type = RemoveExplod
trigger1 =root,command="down"||root,command="up"||root,command="fwd"||root,command="back"
id =12001


[State 0, ParentVarSet]
type = ParentVarSet
trigger1 =time=0
v =54     ;fv =
value = palno

;-----move up 10
[State 0, ParentVarSet]
type = ParentVaradd
trigger1 =root,command="fwd"
v =54     ;fv =
value = 10
;-----move down 10
[State 0, ParentVarSet]
type = ParentVaradd
trigger1 =root,command="back"
v =54     ;fv =
value = -10
;---move up 1
[State 0, ParentVarSet]
type = ParentVaradd
triggerall = root,var(54)<var(49)
trigger1 =root,command="up"
v =54     ;fv =
value = 1


;---move down 1
[State 0, ParentVarSet]
type = ParentVaradd
triggerall = root,var(54)>1
trigger1 =root,command="down"
v =54     ;fv =
value = -1

;--reset back to one incase of error
[State 0, ParentVarSet]
type = ParentVarset
triggerall = root,var(54)>var(49)
trigger1 =root,command="up"
v =54     ;fv =
value = 1
[State 0, ParentVarSet]
type = ParentVarset
triggerall = root,var(54)<=0
trigger1 =root,command="back"
v =54     ;fv =
value = 1
;-------------------------

;--reset back to max incase of error
[State 0, ParentVarSet]
type = ParentVarset
triggerall = root,var(54)<=0
trigger1 =root,command="down"
v =54     ;fv =
value = var(49)



[State 0, ParentVarSet]
type = ParentVarset
triggerall = root,var(54)>var(49)
trigger1 =root,command="fwd"
v =54     ;fv =
value = var(49)

;---max pal no setting
[State 0, VarSet]
type = VarSet
trigger1 =1
v = 49  ;fv = 10
value = 21


;ignorehitpause =
;persistent =
;---remove everything
[State 0, RemoveExplod]
type = RemoveExplod
triggerall = time >5
trigger1 = parent,command = "a" || parent,command = "b" || parent,command = "c" || parent,command = "x" || parent,command = "y" || parent,command = "z" || root,command="start"
trigger2 = roundstate > 1
trigger3= time >400
id =12000
;---remove everything
[State 0, RemoveExplod]
type = RemoveExplod
triggerall = time >5
trigger1 = parent,command = "a" || parent,command = "b" || parent,command = "c" || parent,command = "x" || parent,command = "y" || parent,command = "z" || root,command="start"
trigger2 = roundstate > 1
trigger3= time >400
id =12001
;ignorehitpause =
;persistent =
;---remove everything
[State 6000, DestroySelf]
type = destroyself
triggerall = time >5
trigger1 = parent,command = "a" || parent,command = "b" || parent,command = "c" || parent,command = "x" || parent,command = "y" || parent,command = "z" || root,command="start"
trigger2 = roundstate > 1
trigger3= time >400
;-----------------------------------------------------------------------
[Statedef 6002]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 6000
ctrl = 0
sprpriority = 5

[State 831, Shake]
type  = envshake
trigger1 = time%2
freq  = 120
time  = 2
ampl  = 2

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = -1
facing = 1
pos = 0,0
ignorehitpause = 1
persistent = 1

[State 911, Trans]
type = trans
trigger1 = 1
trans = add

[State 911, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow


[State 911, Destroy]
type = destroyself
trigger1 = parent,Stateno !=900
trigger2 = parent, power = 3000
;-----------------------------------------------------------------------------
[Statedef 6001]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 6001
ctrl = 0
sprpriority = 5

[State 831, Shake]
type  = envshake
trigger1 = time%2
freq  = 120
time  = 2
ampl  = 2

[State 0, BindToParent]
type = BindToParent
trigger1 = 1
time = -1
facing = 1
pos = 0,0
ignorehitpause = 1
persistent = 1

[State 911, Grow]
type = angledraw
trigger1 = power = [0,2999]
value = 0
scale = 1, power * .0003

[State 911, Grow]
type = angledraw
trigger1 = power = 3000
scale = 1,1

[State 911, NoShadow]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 911, Trans]
type = trans
trigger1 = 1
trans = add

[State 911, Destroy]
type = destroyself
trigger1 = parent,Stateno !=900
trigger2 = parent, power = 3000
;-------------------------------------------------------------------------------
[Statedef 8050]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 8050
ctrl = 0
sprpriority = 5

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow
[State 1020, Blink Yellow]
type = PalFX
trigger1 = time =0
time = 1
add = 0,0,0
sinadd = 0,0,0,0


[State 0, Trans]
type = Trans
trigger1 =   1
trans = add


[State 8050, 5]
type = destroyself
trigger1 = AnimTime = 0

;-------------------------------------------------------------------------------
[Statedef 8056]
type    = S
movetype= A
physics = S
juggle  = 4
velset = 0,0
anim = 11010
ctrl = 0
sprpriority = 5

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag = noshadow

[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale =  .01+(time*.06),.01+(time*.06)

[State 0, AngleAdd]
type = AngleAdd
trigger1 = 1
value = 20



[State 0, Trans]
type = Trans
trigger1 =   1
trans = add


[State 8050, 5]
type = destroyself
trigger1 = Time = 20
;---------------------------------------------------------------------------
[Statedef 11009]
type    = S
movetype= I
physics = S
velset = 0,0
anim = 11050
ctrl = 0
sprpriority = -2

[State 11009, PlaySnd]
type = PlaySnd
trigger1 = time =0
value = S999,12

[State 0, AssertSpecial]
type = AssertSpecial
Triggerall = time = [0,66]
trigger1 =1
ignorehitpause = 1
persistent = 1
flag = noBG
flag2 = noFG
flag3 = noshadow

[State 911, Trans]
type = trans
trigger1 = 1
trans = add

[State 1211, ]
type = bgPalFX
trigger1 = Time = 66
time =20
add = -256,-256,-256
sinadd = 256,256,256,60

[State 0, PosSet]
type = PosSet
trigger1 = 1
x = 5
y = -100


[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale =  1.45-(time *.08),ifelse(GameHeight=180,.75-(time *.08),1-(time *.08))

[State 11009, PlaySnd]
type = PlaySnd
trigger1 = time =15
value = S999,13

[State 0, Helper]
type = Helper
trigger1 = time = 15
helpertype = normal ;player
name = "FINISHU"
ID = 11010
stateno = 11010
pos = 0,0
postype = p1    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0

[State 0, AssertSpecial]
type = AssertSpecial
trigger1 = time >66
flag = invisible


[State 0, DestroySelf]
type = DestroySelf
trigger1 = time = 669


;-------------------------------------------------------------------------------------------
[Statedef 11010]
type    = S
movetype= A
physics = S
juggle  = 4
poweradd= 0
ctrl = 0
velset = 0,0
anim =11051
sprpriority =-5

[State 911, Trans]
type = trans
trigger1 = 1
trans = add


[State 0, PosSet]
type = PosSet
trigger1 = 1
x = 5
y = -100


[State 0, AngleDraw]
type = AngleDraw
trigger1 = 1
scale =  .55+(time *.06),ifelse(GameHeight=180,.075-(time *.06),.1-(time *.06))

[State 0, AngleMul]
type = Angledraw
trigger1 = 1

[State 0, AngleMul]
type = Angleadd
trigger1 = 1
value = -30



[State 1060, 1]
type = AssertSpecial
trigger1 =  time > 20
flag = Invisible

[State 1002, 1]
type = AfterImage
trigger1 = time > 20
time = 5
framegap = 1
length = 2
PalAdd = 0, 0, 0
PalMul = 1, 1, 1
PalContrast = 255-((Time -36)*12), 255-((Time-36)*12), 255-((Time-36)*12)
trans = Add


[State 210, 5]
type = destroyself
trigger1 = time > 30

;------------------------------------------------------------------------------
[Statedef 11015]
physics = N
velset= 0,0
anim = 4001
sprpriority = 4

[State 7180, assert]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 7180, flames]
type = explod
trigger1 = numexplod(11014) < 4
anim = 11015
ID = 11015
sprpriority = 3
postype = p2
pos = (enemynear,const(size.mid.pos.x)),(enemynear,const(size.mid.pos.y))+40

[State 7180, end]
type = destroyself
trigger1 = time >= 50
trigger1 = enemynear,pos y <= 0
;------------------------------------------------------------------------------
[Statedef 11012]
physics = N
velset= 0,0
anim = 4001
sprpriority = 4

[State 7180, assert]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1



[State 7180, end]
type = destroyself
trigger1 = time >= 50
trigger1 = enemynear,pos y <= 0
;------------------------------------------------------------------------------
[Statedef 11013]
physics=N
velset=0,0
anim=4001
sprpriority=4

[State 7180, assert]
type=assertspecial
trigger1=1
flag=noshadow
ignorehitpause=1

[State 7180, flames]
type=explod
trigger1 = numexplod(11014) < 4
anim=11013
ID=11013
sprpriority=3
postype=p2
pos=(enemynear,const(size.mid.pos.x)),(enemynear,const(size.mid.pos.y))+40

[State 7180, end]
type=destroyself
trigger1=time >= 50
trigger1 = enemynear,pos y <= 0
;------------------------------------------------------------------------------
[Statedef 11014]
physics = N
velset = 0,0
anim = 4001
sprpriority = 4

[State 7180, assert]
type = assertspecial
trigger1 = 1
flag = noshadow
ignorehitpause = 1

[State 7180, flames]
type = explod
trigger1 = numexplod(11014) < 4
anim = 11014
ID = 11014
sprpriority = 3
postype = p2
pos = (enemynear,const(size.mid.pos.x)),(enemynear,const(size.mid.pos.y))+10

[State 7180, end]
type = destroyself
trigger1 = time >= 90
trigger1 = enemynear,pos y <= 0

;---------------------------------------------------------------------------
[Statedef 7403]
type = A
movetype = I
physics = N
anim = 4001
poweradd = 0
juggle = 0
facep2 = 0
hitdefpersist = 0
movehitpersist = 0
hitcountpersist = 0
sprpriority = 2

[State ***3: ParentVarSet]
type = ParentVarSet
trigger1 = (!Time)
var(1) = 8
ignorehitpause = 1

[State ***3: DestroySelf]
type = DestroySelf
trigger1 = (Parent, Command != "holdfwd")

;-------------- Generated by Fighter Factory -------------

;--------------------- Variable List ----------------------

; Var(0) - StateDef -3
; Var(1) - StateDef -2
; Var(2) - StateDef 1001, 1006
; Var(3) - StateDef 3006, 3000, 3001, 3050, 3053, 3057, 3061, 3075, 3077, 3078, -2, -3
; Var(4) - StateDef 1001
; Var(5) - StateDef 1006
; Var(9) - StateDef 5005
; Var(10) - StateDef 3004, 3006, -2
; Var(12) - StateDef -2, -3
; Var(13) - StateDef -3
; Var(14) - StateDef 733, -3
; Var(17) - StateDef -2
; Var(30) - StateDef -2
; Var(50) - StateDef -2

;--------------------- Float Variable List ----------------------

