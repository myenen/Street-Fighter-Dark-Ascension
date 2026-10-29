;AI && SFF patch by Colosse. Thanks to Supermystery && Kong for some codes
[Command];Hyper Beam3
name = "HB3"
command = ~D, DF, F, D, DF, F, z
time = 30

[Command];Hyper Beam2
name = "HB2"
command = ~D, DF, F, D, DF, F, y
time = 30

[Command];Hyper Beam1
name = "HB1"
command = ~D, DF, F, D, DF, F, x
time = 30
[Command]
name = "cyber_death"
command = F, D, F, a+b
time = 30

[Command]
name = "Beam_Orb_A"
command = ~D, DF, F, D, DF, F, a
time = 30 

[Command]
name = "Beam_Orb_B"
command = ~D, DF, F, D, DF, F, b
time = 30 

[Command]
name = "Beam_Orb_C"
command = ~D, DF, F, D, DF, F, c
time = 30 

[Command]
name = "SCK_A"
command = ~D, DB, B, D, DB, B, a
time = 30 

[Command]
name = "SCK_B"
command = ~D, DB, B, D, DB, B, b
time = 30 

[Command]
name = "SCK_C"
command = ~D, DB, B, D, DB, B, c
time = 30 

;-|A.I.|------------------------------------------------------------------
[command]
name = "CPU1"
command = D,D,D
time = 0

[Command]
name = "CPU2"
command = U,U,D
time = 0

[Command]
name = "CPU3"
command = U,U,F
time = 0

[Command]
name = "CPU4"
command = U,U,B
time = 0

[Command]
name = "CPU5"
command = D,U,B
time = 0

[Command]
name = "CPU6"
command = U,U,D,D,B,F,B,F,z,z
time = 0

[Command]
name = "CPU7"
command = U,U,D,D,B,F,B,F,a,b
time = 0
[Command]
name = "CPU8"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU9"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU10"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU11"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU12"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU13"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU14"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU15"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU16"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU17"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU18"
command = U,U,D,D,B,F
time = 0

[Command]
name = "CPU19"
command = U,U,D,D,B
time = 0

[Command]
name = "CPU20"
command = U,U,D,D,B
time = 0
;-| Special Motions |------------------
[Command]
name = "cyber_uppercut_x"
command = ~F, D, DF, x

[Command]
name = "cyber_uppercut_y"
command = ~F, D, DF, y

[Command]
name = "cyber_uppercut_z"
command = ~F, D, DF, z

[Command]
name = "knee_dash_a"
command = ~F, D, DF, a

[Command]
name = "knee_dash_b"
command = ~F, D, DF, b

[Command]
name = "knee_dash_c"
command = ~F, D, DF, c

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

[Command]
name = "QCF_X"
command = ~D, DF, F, x

[Command]
name = "QCF_Y"
command = ~D, DF, F, y

[Command]
name = "QCF_Z"
command = ~D, DF, F, z

[Command]
name = "QAAA"
command = ~D, DB, B, a

[Command]
name = "QAAB"
command = ~D, DB, B, b

[Command]
name = "QAAC"
command = ~D, DB, B, c

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_c"
command = ~D, DB, B, c
;-| Double Tap |----------------------
[Command]
name = "FF"     
command = F, F
time = 15

[Command]
name = "BB"   
command = B, B
time = 15
;-| 2/3 Button Combination |------------
[Command]
name = "recovery"
command = x+y
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1


;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "start"
command = s
time = 1

[Command]
name = "start_1"
command = a+b
time = 1
;-| Hold Dir |----------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup" 
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1


[Statedef -1]


;==================================================================================
;======| RELACIONADO À AI - AI RELATED |===========================================
;==================================================================================

; The main purpose of having these next two controllers here at the top of
; StateDef -1 is to make sure the AI helper never changes to a different state,
; but they also improve efficiency by preventing Mugen from wasting time
; processing the entire State -1 for the helper.
[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742



[State -1]
type = VarSet
trigger1 = command = "CPU1"
trigger2 = command = "CPU2"
trigger3 = command = "CPU3"
trigger4 = command = "CPU4"
trigger5 = command = "CPU5"
trigger6 = command = "CPU6"
trigger7 = command = "CPU7"
v = 59
value = 1

[State -1]
type = VarSet
trigger1 = command = "CPU8"
trigger2 = command = "CPU9"
trigger3 = command = "CPU10"
trigger4 = command = "CPU11"
trigger5 = command = "CPU12"
trigger6 = command = "CPU13"
trigger7 = command = "CPU14"
trigger8 = command = "CPU15"
v = 59
value = 1

[State -1]
type = VarSet
trigger1 = command = "CPU16"
trigger2 = command = "CPU17"
trigger3 = command = "CPU18"
trigger4 = command = "CPU19"
trigger5 = command = "CPU20"
v = 59
value = 1



[State -1, AI Deactivate]
type = VarSet
triggerall = var(59)= 1
trigger1 = win = 1
trigger2 = loseko = 1
trigger3 = life <= 0
v = 59
value = 0


[State -1, Stay Still]
type = ChangeState
value = 0
triggerall = var(59) = 1
;triggerall = numhelper(3477) = 0
trigger1 = statetype != A && stateno = 49
;trigger1 = statetype != A && stateno = 52
ctrl = 1

[State -1, AI run]
type=changestate
value=100
triggerall = var(59) = 1
triggerall = stateno != 22 && stateno != 100
trigger1 = (p2movetype != A) && statetype != A && ctrl
trigger1 = (p2bodydist x = [40,150]) ;&& (p2bodydist y = [-100,0])
trigger1 = random < 700 && enemy,vel x <= 0 

[State -1, AI Run Fwd Stop]
type = ChangeState
triggerall = var(59) = 1
triggerall = stateno = 100 || stateno = 101 || stateno = 22 || stateno = 20
trigger1 = P2movetype = A  
trigger2 = enemy,vel x > 0 && (enemy,facing != facing) && random < 200
trigger3 = p2bodydist x <= 30 ;&& random < 200
value = 0
ctrl = 1

[State -1, AI Run Bwd]
type = ChangeState
value = 105
triggerall = var(59) = 1
triggerall = stateno != 105 && backedgedist > 50 && p2movetype != A && enemy,vel x <= 0
trigger1 = frontedgedist < 70 && statetype = S && ctrl && random < 80
trigger2 = p2statetype = L && statetype = S && ctrl && random < 80 && (p2bodydist x = [0,40])


[State -1, Walk]
type = ChangeState
value = 20
triggerall = var(59) = 1
triggerall = stateno != 22 && stateno != 100
trigger1 = statetype != A && ctrl
trigger1 = p2bodydist x > 10 && random < 800
trigger1 = p2movetype != A




[State -1, Taunt]
type = ChangeState
value = ifelse(random<500,195,198)
triggerall =statetype = S
triggerall = var(59) = 1
triggerall = roundstate = 2
triggerall = power !=5000
triggerall = random < 28
triggerall = p2movetype !=A
triggerall = p2statetype = L || p2bodydist x >130
trigger1 = ctrl


[State -1, AI5]
Type = ChangeState
Triggerall = (RoundState = 2) && (var(59) = 1)
triggerall = p2statetype = A
trigger1 = p2bodydist x <=30
trigger1 = p2bodydist y = [-70,5]
trigger1 = statetype != A || (stateno = [100,105])
trigger1 = ctrl
trigger1 = random < 500
value = 200
;------------------------------------------------------
[State -1, AI2]
Type = ChangeState
Triggerall = (RoundState = 2) && (var(59) = 1)
trigger1 = movehit
trigger1 = p2bodydist x <= 30
trigger2 = p2bodydist x <= 50
trigger2 = p2bodydist y = [-5,5]
trigger2 = statetype != A || (stateno = [100,105])
trigger2 = ctrl && p2statetype = A && random < 400
Triggerall = stateno !=450
Triggerall = stateno !=240
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
value = 210
;------------------------------------------------------
[State -1, AI2]
Type = ChangeState
Triggerall = (RoundState = 2) && (var(59) = 1)
trigger1 = movehit
trigger1 = random < 300
trigger1 = p2bodydist x <= 27
trigger1 = p2bodydist y = [-7,5]
Triggerall = stateno !=450
Triggerall = stateno !=250
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 210&& movecontact
trigger5 = stateno = 240 && movecontact
value = 250
;------------------------------------------------------
[State -1, AI9]
Type = ChangeState
Triggerall = (RoundState = 2) && (var(59) = 1)
triggerall = p2statetype != L && p2statetype != C
trigger1 = p2bodydist x <= 44 && (p2bodydist y = [-5,5])
trigger1 = statetype != A || (stateno = [100,105])
trigger1 = ctrl && p2statetype = S && random < 300
Triggerall = stateno !=450
Triggerall = stateno !=450
Triggerall = stateno !=230
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
value = 230
;------------------------------------------------------
[State -1, AI 9]
Type = ChangeState
Triggerall = (RoundState = 2) && (var(59) = 1)
Triggerall = StateType !=A
triggerall = stateno != [800,3999]
triggerall = p2stateno !=[120,150]
Trigger1 = ctrl
triggerall = (p2statetype != L || p2statetype = C)&& p2statetype !=A
Triggerall = (P2BodyDist X = [0,40]) && (P2BodyDist Y = 0 )
Triggerall = Random < 600
Triggerall = stateno !=450
Triggerall = stateno !=240
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 210 && movecontact
value = 240
;------------------------------------------------------
[State -1, AI8]
Type = ChangeState
Triggerall = (RoundState = 2) && (var(59) = 1)
trigger1 = random < 550
trigger1 = p2bodydist x <= 40
trigger1 = p2bodydist y = [-10,5]
Triggerall = stateno !=450
Triggerall = stateno !=220
trigger1 = ctrl
trigger2 = stateno = 210 && movecontact
trigger3 = stateno = 240 && movecontact
trigger4 = stateno = 200 && movecontact
trigger5 = stateno = 230 && movecontact
trigger6 = stateno = 250 && movecontact
value = 260
;------------------------------------------------------
[State -1, AI5]
Type = ChangeState
Triggerall = (RoundState = 2) && (var(59) = 1)
triggerall = statetype = C
triggerall = p2statetype != A && p2statetype != L
trigger1 = p2bodydist x <= 30
trigger1 = (statetype != A)
trigger1 = ctrl && random < 500
trigger2 = p2bodydist x <= 30
trigger2 = (stateno = [100,105])
trigger2 = ctrl && random < 500
value = 400


;------------------------------------------------------
[State -1, AI2]
Type = ChangeState
Triggerall = (RoundState = 2) && (var(59) = 1)
triggerall = statetype = C
triggerall = p2statetype != A && p2statetype != L
trigger1 = stateno = 400 && movecontact
trigger2 = stateno = 430 && movecontact
trigger3 = movehit && random < 200
Triggerall = stateno !=410
value = 410


;------------------------------------------------------
[State -1, AI2]
Type = ChangeState
Triggerall = (RoundState = 2) && (var(59) = 1)
triggerall = statetype = C
Triggerall = StateType !=A
triggerall = stateno != [800,3999]
Triggerall = (P2BodyDist X = [0,37]) && (P2BodyDist Y = [-60,0] )
Triggerall = Random <= 800
triggerall = p2statetype != L  && p2statetype !=A
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4 = (stateno = 240)&& movecontact
trigger5 = (stateno = 210)&& movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 410) && movecontact
trigger8 = (stateno = 430) && movecontact
trigger9 = (stateno = 440)&& movecontact
trigger12 = p2statetype !=C && (p2stateno = [120,155]) && ctrl
triggerall = p2stateno !=[120,150]
value = 450

;------------------------------------------------------
[State -1, AI9]
Type = ChangeState
Triggerall = (RoundState = 2) && (var(59) = 1)
triggerall = statetype = C
trigger1 = p2bodydist x <= 40
trigger1 = (statetype != A)
trigger1 = ctrl && random < 800
trigger2 = (stateno = [100,105]) && ctrl
trigger2 = p2bodydist x <= 45
trigger2 = (statetype != A)
trigger2 = ctrl && random < 800
trigger3 = stateno = 22
trigger3 = p2bodydist x <= 45
trigger3 = (statetype != A)
trigger3 = ctrl && random < 800
value = 430



;------------------------------------------------------
[State -1, AI 9]
Type = ChangeState
Triggerall = (RoundState = 2) && (var(59) = 1)
triggerall = statetype = C
trigger3 = P2statetype = S
trigger1 = stateno = 430 || stateno = 400 || stateno = 230
trigger1 = movehit
trigger1 = random < 400
trigger2 = stateno = 200
trigger2 = movehit && random <=400 && p2statetype != A
trigger3 = P2statetype = S
trigger3 = p2bodydist x <= 40
trigger3 = p2bodydist y = [-5,5]
trigger3 = statetype != A 
trigger3 = ctrl && random <=400
trigger4 = stateno = 230 || stateno = 200
trigger4 = movehit
trigger4 = random < 500
trigger4 = p2bodydist y = [-2,2]
value = 440


;------------------------------------------------------
[State -1, AI8]
Type = ChangeState
Triggerall = (RoundState = 2) && (var(59) = 1)
Triggerall = StateType !=A
triggerall = statetype = C
triggerall = p2bodydist x = [-2,44]
triggerall = P2MoveType != A
trigger1 = stateno = 440 
trigger1 = movehit
trigger1 = random < 200
trigger2 = stateno = 410
trigger2 = movehit
trigger2 = random < 50
value = 470

[State -1, AI Stand to Crouch Guard Transition]
type = ChangeState
triggerall = var(59) = 1
triggerall = stateno != [100,105]
triggerall = inguarddist && StateType != A && P2statetype = C && P2Movetype = A
triggerall = Pos Y != [-1,-999]
trigger1 = stateno = 150
trigger1 = 1
value = 152

[State -1, AI Crouch to Stand Guard Transition]
type = ChangeState
triggerall = var(59) = 1
triggerall = (stateno != [100,105]) && Statetype != A && P2statetype != C && P2Movetype = A
trigger1 = 1
trigger1 = stateno = 152
value = 150

[State -1]
type = ChangeState
triggerall = var(59) = 1 
triggerall = stateno != [100,105]
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 500) && (random <= 800)
value = 132

[State -1]
type = ChangeState
triggerall = var(59) = 1 
triggerall = stateno != [100,105]
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 500) && (random <= 800)
value = 131

[State -1]
type = ChangeState
triggerall = var(59) = 1
triggerall = stateno != [100,105]
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S) && (p2statetype != C)
trigger1 = (p2bodydist X <= 500) && (random <= 800)
value = 130


[State -1, AI Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(59)>0
trigger1 = statetype = A
trigger1 = p2bodydist x <=30
trigger1 = p2bodydist y >=-25
trigger1 = p2movetype= H

;-------------------------------------------------------------------------------
[State -1, Jump mp]
type = ChangeState
value = 610
triggerall = var(59)>0
trigger1 = statetype = A
trigger1 = stateno = 630 && movehit

;-------------------------------------------------------------------------------
[State -1, AI Jump hp]
type = ChangeState
value = 620
triggerall = var(59)>0
triggerall = random <=300
trigger1 = statetype = A
trigger1 = stateno = 640 && movehit

;-------------------------------------------------------------------------------
[State -1, Jump lk]
type = ChangeState
value = 630
triggerall = var(59)>0
trigger1 = statetype = A
trigger1 = stateno = 600 && movehit

;-------------------------------------------------------------------------------
[State -1, Jump mk]
type = ChangeState
value = 640
triggerall = var(59)>0
trigger1 = statetype = A
trigger1 = stateno = 610 && movehit && random <=300

;-------------------------------------------------------------------------------
[State -1, AI Jump Heavy kick]
type = ChangeState
value = 660
triggerall = var(59)>0
triggerall = random <=300
trigger1 = statetype = A
trigger1 = stateno = 640 && movehit && random <=500


[State -1, Kung Fu Throw]
type = ChangeState
value = 920
triggerall = var(59) = 1 
triggerall = statetype = S 
triggerall = ctrl
triggerall = stateno != 100
trigger1 = p2bodydist X < 20
trigger1 = (p2statetype = S) || (p2statetype = C) 
trigger1 = p2movetype != H
trigger1 = random < 400
trigger2 = p2bodydist X < 20
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
trigger2 = random < 400

;------------------------------------------------------------------------------
[State -1, AI Kouryouken2]
type = ChangeState
value = 2030
triggerall = var(59) = 1 && StateType != A
triggerall = roundstate = 2
trigger3 = (p2bodydist y < -1)&&  (random = [47,84])
triggerall = p2bodydist x<=40
triggerall = stateno !=[800,4999]
triggerall = !(EnemyNear,IsHelper)
triggerall = stateno !=440
triggerall = movetype != H
triggerall = p2statetype != L
triggerall = var(7) < 8
trigger2 = (stateno=[200,435])&&movehit   &&  (random = [47,84])
trigger1= ctrl &&  (random = [47,84])
triggerall = p2stateno !=[120,150]
;------------------------------------------------------------------------------
[State -1, AI Kouryouken3]
type = ChangeState
value = 2040
triggerall = var(59) = 1 && StateType != A
triggerall = roundstate = 2
trigger3 = (p2bodydist y < -1)&&  (random = [85,120])
triggerall = p2bodydist x<=35
triggerall = stateno !=[800,4999]
triggerall = p2statetype != L
triggerall = !(EnemyNear,IsHelper)
triggerall = movetype != H
triggerall = var(7) < 8
trigger1= ctrl &&  (random = [84,120])
trigger2 = (stateno=[200,435])&&movehit  &&  (random = [85,120])
triggerall = p2stateno !=[120,150]
;---------------------------------------------------------------------------
[State -1, AI Kouryouken1]
type = ChangeState
value = 2020
triggerall = var(59) = 1 && StateType != A
triggerall = roundstate = 2
trigger3 = (p2bodydist y < -1)&&  (random = [12,46])
triggerall = p2bodydist x<=30
triggerall = stateno !=[800,4999]
triggerall = !(EnemyNear,IsHelper)
triggerall = stateno !=440
triggerall = var(7) < 8
triggerall = p2statetype != L
triggerall = movetype != H
trigger1= ctrl &&  (random = [12,46])
trigger2 = (stateno=[200,435])&&movehit &&  (random = [12,46])
triggerall = p2stateno !=[120,150]

[State -1, AI Gadouken]
type = ChangeState
value = 1200
Triggerall = numhelper(1092) < 1
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,100])
trigger1 = ((p2bodydist x = [0,80])) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)

[State -1, AI Gadouken]
type = ChangeState
value = 1210
Triggerall = numhelper(1092) < 1
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,100])
trigger1 = ((p2bodydist x = [80,130])) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)

[State -1, AI Gadouken]
type = ChangeState
value = 1220
Triggerall = numhelper(1092) < 1
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,100])
trigger1 = ((p2bodydist x >= 130)) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)

[State -1, Move Miss Reset]
type = VarSet
trigger1 = 1
var(9) = 0

[State -1, AIagh]
type = ChangeState
value = 1300
triggerall = var(59) = 1 && roundstate = 2 && statetype=A
;triggerall = stateno > 1300
triggerall = numhelper(1300) <= 0 && stateno !=56
triggerall = pos y < -85
triggerall = (P2BodyDist X = [0,250]) && random < 99
trigger1 = var(9)

;---------------------------------------------------------------------
[State -1, AIagh]
type = ChangeState
value = 1302
triggerall = var(59)=1 && roundstate =2 &&statetype=A
triggerall = (p2stateno!=[120,155])
;triggerall = stateno > 1302
triggerall = (enemy,vel y>-1)
triggerall = pos y < -100
triggerall = numhelper(1300) <= 0 && stateno !=56
triggerall = p2statetype != L
triggerall = (P2BodyDist X = [0,156])&& random < 129
trigger1 = var(9)

[State -1, AI6]
type = ChangeState
value = 1000
triggerall = var(59) = 1 && roundstate = 2 && statetype !=L
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall = p2bodydist x = [0,50]
triggerall = movetype != H
triggerall = stateno !=[800,899]
triggerall = stateno !=440
triggerall = enemynear,statetype !=L  || enemynear,stateno!=5120
trigger1 =ctrl && (random = [12,36])
trigger2 = (stateno= [200,435]) && movehit &&(random = [12,36])
trigger3 = ((stateno= [600,635]) && movecontact &&(random = [12,36])) && (enemy,gethitvar(hitcount) > 2)
;---------------------------------------------------------------------
[State -1, AI5]
type = ChangeState
value = 1010
triggerall = var(59) = 1 && roundstate = 2 && statetype!=L
triggerall = (p2stateno !=[120,155]) && (p2statetype!=L|| enemynear,stateno!=5120)
triggerall = p2bodydist x = [0,90]
triggerall = movetype != H
triggerall = stateno !=[800,899]
triggerall = p2statetype !=L
triggerall = stateno !=440
trigger1 = ctrl&& (random = [37,64])
trigger2 = (stateno= [200,435]) && movehit &&(random = [37,64])
trigger3 = ((stateno= [600,635]) && movecontact &&(random = [37,64])) && (enemy,gethitvar(hitcount) > 2)
;---------------------------------------------------------------------
[State -1, AI4]
type = ChangeState
value = 1020
triggerall = var(59) = 1 && roundstate =2 &&statetype!=L
triggerall = (p2stateno!=[120,155])
triggerall = p2bodydist x = [0,130]
triggerall = movetype != H
triggerall = stateno !=[800,899]
triggerall = stateno !=440
triggerall = p2statetype !=L || enemynear,stateno!=5120
trigger1 = ctrl &&(random = [65,90])
trigger2 = (stateno= [200,435]) && movehit &&(random = [65,100])
trigger3 = ((stateno= [600,635]) && movecontact &&(random = [65,100])) && (enemy,gethitvar(hitcount) > 2)



[State -1, AI6]
type = ChangeState
value = 1005
triggerall = var(59) = 1 && roundstate = 2 && statetype !=L
triggerall = (p2stateno!=[120,155]) && (p2statetype!=L)
triggerall = p2bodydist x = [0,50]
triggerall = p2bodydist y>=-10 && p2bodydist y<20
triggerall = movetype != H
triggerall = stateno !=[800,899]
triggerall = stateno !=440
triggerall = enemynear,statetype !=L  || enemynear,stateno!=5120
trigger1 =ctrl && (random = [12,36])
trigger2 = (stateno= [200,435]) && movehit &&(random = [12,36])
trigger3 = ((stateno= [600,635]) && movecontact &&(random = [12,36])) && (enemy,gethitvar(hitcount) > 2)
;---------------------------------------------------------------------
[State -1, AI5]
type = ChangeState
value = 1115
triggerall = var(59) = 1 && roundstate = 2 && statetype!=L
triggerall = (p2stateno !=[120,155]) && (p2statetype!=L|| enemynear,stateno!=5120)
triggerall = p2bodydist x = [0,90]
triggerall = p2bodydist y>=-10 && p2bodydist y<20
triggerall = movetype != H
triggerall = stateno !=[800,899]
triggerall = p2statetype !=L
triggerall = stateno !=440
trigger1 = ctrl&& (random = [37,64])
trigger2 = (stateno= [200,435]) && movehit &&(random = [37,64])
trigger3 = ((stateno= [600,635]) && movecontact &&(random = [37,64])) && (enemy,gethitvar(hitcount) > 2)
;---------------------------------------------------------------------
[State -1, AI4]
type = ChangeState
value = 1025
triggerall = var(59) = 1 && roundstate =2 &&statetype!=L
triggerall = (p2stateno!=[120,155])
triggerall = p2bodydist x = [0,130]
triggerall = p2bodydist y>=-10 && p2bodydist y<20
triggerall = movetype != H
triggerall = stateno !=[800,899]
triggerall = stateno !=440
triggerall = p2statetype !=L || enemynear,stateno!=5120
trigger1 = ctrl &&(random = [65,90])
trigger2 = (stateno= [200,435]) && movehit &&(random = [65,100])
trigger3 = ((stateno= [600,635]) && movecontact &&(random = [65,100])) && (enemy,gethitvar(hitcount) > 2)



[State -1,shinku pied]
type = ChangeState
value = 1900
triggerall = enemynear,life > 300
triggerall = var(59) = 1 && (stateno != [3000,4000])
triggerall = power >= 1000
triggerall = statetype != A && enemynear,Vel Y >= 0
triggerall = p2bodydist X >= 100
triggerall =  (var(8) = [-20,20])
triggerall = random < 200
triggerall = p2statetype != L && p2stateno != 5120
trigger1 = ctrl
trigger2 = Movehit && random < 200
trigger3 = stateno = [1000, 1025]
trigger3 = movecontact

[State -1] ;Super 3
type = ChangeState
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = (Ctrl=1) && (Statetype != A) && (p2statetype != A)
triggerall = stateno < 4900 ;Add to avoid chaining hypes
trigger1 = prevstateno != 5120
trigger1 = (power = [1000,1500]) && (random = [0,100])
value = 4020

[State -1] ;Super 3
type = ChangeState
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = (Ctrl=1) && (Statetype != A) && (p2statetype != A)
triggerall = stateno < 4900 ;Add to avoid chaining hypes
trigger1 = prevstateno != 5120
trigger1 = (power = [1500,2500]) && (random = [0,200])
value = 2025

[State -1] ;Super 3
type = ChangeState
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = (Ctrl=1) && (Statetype != A) && (p2statetype != A)
triggerall = stateno < 4900 ;Add to avoid chaining hypes
trigger1 = prevstateno != 5120
trigger1 = (power >= 2500) && (random = [0,300])
value = 3000

[State -1] ;Super 4
type = ChangeState
value = 1801
triggerall = var(59)=1 && roundstate =2 &&statetype=A && power > 1000
triggerall = p2statetype != L
trigger1 =  ctrl
triggerall = stateno != 57
triggerall = random < 19
triggerall= (P2BodyDist X = [0,250])
triggerall = p2statetype != L
triggerall = stateno!=610
triggerall = stateno!=640
trigger2 =((stateno =[600,640]) && movecontact)
trigger3 = (stateno =[1100,1299]) && movecontact
trigger4 = (var(2))

[State -1,SS]
type = ChangeState
value = 3020
triggerall = enemynear,life > 300
triggerall = Var(59) = 1 && (stateno != [3000,4999]) 
triggerall = power >= 1000
triggerall = statetype != A
triggerall = p2bodydist X >= 100 
triggerall =  (var(8) = [-30,30]) && (Enemynear,Vel Y = 0)
triggerall = random < 200
triggerall = p2statetype != L && p2stateno != 5120
trigger1 = ctrl
trigger2 = Movehit && random < 100

[State -1, AISGS]
type = ChangeState
value = 4900
triggerall = (roundstate = 2) && (var(59) = 1)
triggerall = (Ctrl=1) && (Statetype = S) && (p2statetype != L)
triggerall = stateno < 4999 ;Add to avoid chaining hypes
trigger1 = (prevstateno != 5120) && (statetype != A) ;&& (p2bodydist x >= 150) ;Remove this portion to make this hyper happen more often instead of only when far away from opponent
trigger1 = (power >= 2800) && (random = [0,300])

[State -1,Jump]
type = ChangeState
value = 49
triggerall = stateno != 100 && pos y = 0 && ctrl && p2stateno != 822 && p2stateno != 823
triggerall = var(59) = 1
triggerall = statetype != A && frontedgedist > 200 && p2movetype != A  
trigger1 = (p2bodydist x = [170,180]) && random <= 400 
trigger1 = enemy,backedgedist < 70
trigger2 = p2bodydist x > 120 && random < 60

[State -1,Jump]
type = ChangeState
value = 49
triggerall = stateno != 100 && pos y = 0 && ctrl && p2stateno != 822 && p2stateno != 823
triggerall = var(59) = 1
triggerall = statetype != A && enemy,vel y < 0 && enemy,pos y < -10
triggerall = p2movetype != A
trigger1 = p2stateno = 5040 || p2stateno = 5200 || p2stateno = 5210 || p2movetype = H 
trigger1 = (p2bodydist y = [-40,-1]) || enemy,vel y < 0
trigger1 = p2bodydist x <= 25 && random < 200
trigger2 = p2movetype = H && (p2stateno = 5040 || p2stateno = 5200 || p2stateno = 5210) 
trigger2 = (p2bodydist y = [-40,-1]) && p2bodydist x <= 50





[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1

[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

[State -1]
type = ChangeState
value = 920
triggerall =  command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;Super_Cyber_Kick_A
[State -1]
type = ChangeState
value = 1900
triggerall = command = "SCK_A"
triggerall = power >= 1000 ;Level 1 super
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger3 = stateno =  210
trigger4 = stateno = 230
trigger5 = stateno = 240
trigger6 = stateno =  250
trigger7 = stateno = 260
trigger8 = stateno = 400
trigger9 = stateno = 410
trigger10 = stateno =420  
trigger11 = stateno = 430
trigger12 = stateno = 440
trigger13 = stateno =  450
trigger14 = stateno = 470

;Super_Cyber_Kick_B
[State -1]
type = ChangeState
value = 1900
triggerall = command = "SCK_B"
triggerall = power >= 2000 ;Level 1 super
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger3 = stateno =  210
trigger4 = stateno = 230
trigger5 = stateno = 240
trigger6 = stateno =  250
trigger7 = stateno = 260
trigger8 = stateno = 400
trigger9 = stateno = 410
trigger10 = stateno =420  
trigger11 = stateno = 430
trigger12 = stateno = 440
trigger13 = stateno =  450
trigger14 = stateno = 470

;Super_Cyber_Kick_C
[State -1]
type = ChangeState
value = 1900
triggerall = command = "SCK_C"
triggerall = power >= 3000 ;Level 1 super
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger3 = stateno =  210
trigger4 = stateno = 230
trigger5 = stateno = 240
trigger6 = stateno =  250
trigger7 = stateno = 260
trigger8 = stateno = 400
trigger9 = stateno = 410
trigger10 = stateno =420  
trigger11 = stateno = 430
trigger12 = stateno = 440
trigger13 = stateno =  450
trigger14 = stateno = 470

;Hyper Beam3
[State -1]
type = ChangeState
value = 3000
triggerall = command = "HB3"
triggerall = power >= 3000 ;Level 1 super
triggerall = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger3 = stateno =  210
trigger4 = stateno = 230
trigger5 = stateno = 240
trigger6 = stateno =  250
trigger7 = stateno = 260
trigger8 = stateno = 400
trigger9 = stateno = 410
trigger10 = stateno =420  
trigger11 = stateno = 430
trigger12 = stateno = 440
trigger13 = stateno =  450
trigger14 = stateno = 470

[State -1]
type = ChangeState
value = 2025
triggerall = command = "HB2"
triggerall = power >= 2000 ;Level 1 super
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger3 = stateno =  210
trigger4 = stateno = 230
trigger5 = stateno = 240
trigger6 = stateno =  250
trigger7 = stateno = 260
trigger8 = stateno = 400
trigger9 = stateno = 410
trigger10 = stateno =420  
trigger11 = stateno = 430
trigger12 = stateno = 440
trigger13 = stateno =  450
trigger14 = stateno = 470

; Hyper Beam1
[State -1]
type = ChangeState
value = 4020
triggerall = command = "HB1"
triggerall = power >= 1000 
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger3 = stateno = 200 
trigger4 = stateno = 470
trigger5 = stateno = 250
trigger6 = stateno = 240 
trigger7 = stateno = 260
trigger8 = stateno = 230
trigger9 = stateno = 400
trigger10 = stateno = 410 
trigger11 = stateno = 420
trigger12 = stateno = 430
trigger13 = stateno = 440 
trigger14 = stateno = 450

[State -1]
type = ChangeState
value = 3020
triggerall=command= "Beam_Orb_A"
triggerall = numproj = 0
triggerall = power >= 1000
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger2 = stateno = 200
trigger3 = stateno = 205
trigger4 = stateno = 206
trigger5 = stateno = 216
trigger6 = stateno = 215
trigger7 = stateno = 210
trigger8 = stateno = 400
trigger9 = stateno = 405
trigger10 = stateno = 406
trigger11 = stateno = 416
trigger12 = stateno = 415
trigger13 = stateno = 410

[State -1]
type = ChangeState
value = 3020
triggerall=command= "Beam_Orb_B"
triggerall = numproj = 0
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger3 = stateno = 200 
trigger4 = stateno = 470
trigger5 = stateno = 250
trigger6 = stateno = 240 
trigger7 = stateno = 260
trigger8 = stateno = 230
trigger9 = stateno = 400
trigger10 = stateno = 410 
trigger11 = stateno = 420
trigger12 = stateno = 430
trigger13 = stateno = 440 
trigger14 = stateno = 450

;Beam Orb
[State -1]
type = ChangeState
value = 3020
triggerall=command= "Beam_Orb_C"
triggerall = numproj = 0
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger3 = stateno = 200 
trigger4 = stateno = 470
trigger5 = stateno = 250
trigger6 = stateno = 240 
trigger7 = stateno = 260
trigger8 = stateno = 230
trigger9 = stateno = 400
trigger10 = stateno = 410 
trigger11 = stateno = 420
trigger12 = stateno = 430
trigger13 = stateno = 440 
trigger14 = stateno = 4500


; Super Air Hadoken 1
[State -1]
type = ChangeState
value = 1801
triggerall = PalNo < 7
triggerall = Var(20) = 0
triggerall = command = "HB1"
triggerall = power >= 1000 ;Level 1
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger3 = stateno = 610 
trigger4 = stateno = 620
trigger5 = stateno = 630
trigger6 = stateno = 640 
trigger7 = stateno = 660

; Super Air Hadoken 2
[State -1]
type = ChangeState
value = 1801
triggerall = PalNo < 7
triggerall = Var(20) = 0
triggerall = command = "HB2"
triggerall = power >= 1000 ;Level 1
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger3 = stateno = 610 
trigger4 = stateno = 620
trigger5 = stateno = 630
trigger6 = stateno = 640 
trigger7 = stateno = 660

; Super Air Hadoken 3
[State -1]
type = ChangeState
value = 1802
triggerall = PalNo < 7
triggerall = Var(20) = 0
triggerall = command = "HB3"
triggerall = power >= 2000 ;Level 2
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 600
trigger3 = stateno = 610 
trigger4 = stateno = 620
trigger5 = stateno = 630
trigger6 = stateno = 640 
trigger7 = stateno = 660

; Cyber Death
[State -1]
type = ChangeState
value = 4900
triggerall = command = "cyber_death"
triggerall = power >= 1000 ;Level 1
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger3 = stateno = 200 
trigger4 = stateno = 470
trigger5 = stateno = 250
trigger6 = stateno = 240 
trigger7 = stateno = 260
trigger8 = stateno = 230
trigger9 = stateno = 400
trigger10 = stateno = 410 
trigger11 = stateno = 420
trigger12 = stateno = 430
trigger13 = stateno = 440 
trigger14 = stateno = 450

; Cyber Uppercut (X)
[State -1]
type = ChangeState
value = 2020
triggerall = command = "cyber_uppercut_x"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger3 = stateno = 200 
trigger4 = stateno = 470
trigger5 = stateno = 250
trigger6 = stateno = 240 
trigger7 = stateno = 260
trigger8 = stateno = 230
trigger9 = stateno = 400
trigger10 = stateno = 410 
trigger11 = stateno = 420
trigger12 = stateno = 430
trigger13 = stateno = 440 
trigger14 = stateno = 450

; Cyber Uppercut (Y)
[State -1]
type = ChangeState
value = 2030
triggerall = command = "cyber_uppercut_y"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger3 = stateno = 200 
trigger4 = stateno = 470
trigger5 = stateno = 250
trigger6 = stateno = 240 
trigger7 = stateno = 260
trigger8 = stateno = 230
trigger9 = stateno = 400
trigger10 = stateno = 410 
trigger11 = stateno = 420
trigger12 = stateno = 430
trigger13 = stateno = 440 
trigger14 = stateno = 450

; Cyber Uppercut (Z)
[State -1]
type = ChangeState
value = 2040
triggerall = command = "cyber_uppercut_z"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger3 = stateno = 200 
trigger4 = stateno = 470
trigger5 = stateno = 250
trigger6 = stateno = 240 
trigger7 = stateno = 260
trigger8 = stateno = 230
trigger9 = stateno = 400
trigger10 = stateno = 410 
trigger11 = stateno = 420
trigger12 = stateno = 430
trigger13 = stateno = 440 
trigger14 = stateno = 450

;Hadoken X
[State -1]
type = ChangeState
value = 1200
triggerall = command = "QCF_x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger3 = stateno = 200 
trigger4 = stateno = 470
trigger5 = stateno = 250
trigger6 = stateno = 240 
trigger7 = stateno = 260
trigger8 = stateno = 230
trigger9 = stateno = 400
trigger10 = stateno = 410 
trigger11 = stateno = 420
trigger12 = stateno = 430
trigger13 = stateno = 440 
trigger14 = stateno = 450

; Hadoken Y
[State -1]
type = ChangeState
value = 1210
triggerall = command = "QCF_y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger3 = stateno = 200 
trigger4 = stateno = 470
trigger5 = stateno = 250
trigger6 = stateno = 240 
trigger7 = stateno = 260
trigger8 = stateno = 230
trigger9 = stateno = 400
trigger10 = stateno = 410 
trigger11 = stateno = 420
trigger12 = stateno = 430
trigger13 = stateno = 440 
trigger14 = stateno = 450

; Hadoken Z
[State -1]
type = ChangeState
value = 1220
triggerall = command = "QCF_z"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 210
trigger3 = stateno = 200 
trigger4 = stateno = 470
trigger5 = stateno = 250
trigger6 = stateno = 240 
trigger7 = stateno = 260
trigger8 = stateno = 230
trigger9 = stateno = 400
trigger10 = stateno = 410 
trigger11 = stateno = 420
trigger12 = stateno = 430
trigger13 = stateno = 440 
trigger14 = stateno = 450

; Cyber Dash Kick (light)
[State -1]
type = ChangeState
value = 1000
triggerall = command = "QCB_a"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger3 = stateno =  210
trigger4 = stateno = 230
trigger5 = stateno = 240
trigger6 = stateno =  250
trigger7 = stateno = 260
trigger8 = stateno = 400
trigger9 = stateno = 410
trigger10 = stateno =420  
trigger11 = stateno = 430
trigger12 = stateno = 440
trigger13 = stateno =  450
trigger14 = stateno = 470

; Cyber Dash Kick (medium)
[State -1]
type = ChangeState
value = 1010
triggerall = command = "QCB_b"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger3 = stateno =  210
trigger4 = stateno = 230
trigger5 = stateno = 240
trigger6 = stateno =  250
trigger7 = stateno = 260
trigger8 = stateno = 400
trigger9 = stateno = 410
trigger10 = stateno =420  
trigger11 = stateno = 430
trigger12 = stateno = 440
trigger13 = stateno =  450
trigger14 = stateno = 470

[State -1]
type = ChangeState
value = 1020
triggerall = command = "QCB_c"
triggerall = command != "holddown"
triggerall = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 200
trigger3 = stateno =  210
trigger4 = stateno = 230
trigger5 = stateno = 240
trigger6 = stateno =  250
trigger7 = stateno = 260
trigger8 = stateno = 400
trigger9 = stateno = 410
trigger10 = stateno =420  
trigger11 = stateno = 430
trigger12 = stateno = 440
trigger13 = stateno =  450
trigger14 = stateno = 470

[State -1]
type = ChangeState
value = 1005
triggerall = command = "QAAA"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 
trigger2 = movecontact

[State -1]
type = ChangeState
value = 1115
triggerall = command = "QAAB"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 || stateno = 620 
trigger2 = movecontact

[State -1]
type = ChangeState
value = 1025
triggerall = command = "QAAC"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 || stateno = 620 
trigger2 = movecontact

; Air Hadoken x
[State -1]
type = ChangeState
value = 1300
triggerall = command = "QCF_X"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 600
trigger3 = movecontact = 1
trigger3 = stateno = 601
trigger4 = movecontact = 1
trigger4 = stateno = 602
trigger5 = movecontact = 1
trigger5 = stateno = 604
trigger6 = movecontact = 1
trigger6 = stateno = 605
trigger7 = movecontact = 1
trigger7 = stateno = 606
trigger8 = movecontact = 1
trigger8 = stateno = 704
trigger9 = movecontact = 1
trigger9 = stateno = 705
trigger10 = movecontact = 1
trigger10 = stateno = 706
trigger11 = stateno = 550
trigger12 = stateno = 800
trigger13 = movecontact = 1
trigger13 = stateno = 3520

;---------------------------------------------------------------------------
; Air hadoken Y
[State -1]
type = ChangeState
value = 1301
triggerall = command = "QCF_Y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 600
trigger3 = movecontact = 1
trigger3 = stateno = 601
trigger4 = movecontact = 1
trigger4 = stateno = 602
trigger5 = movecontact = 1
trigger5 = stateno = 604
trigger6 = movecontact = 1
trigger6 = stateno = 605
trigger7 = movecontact = 1
trigger7 = stateno = 606
trigger8 = movecontact = 1
trigger8 = stateno = 704
trigger9 = movecontact = 1
trigger9 = stateno = 705
trigger10 = movecontact = 1
trigger10 = stateno = 706
trigger11 = stateno = 550
trigger12 = stateno = 800
trigger13 = movecontact = 1
trigger13 = stateno = 3520

; Air Hadoken Z
[State -1]
type = ChangeState
value = 1302
triggerall = command = "QCF_Z"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 600
trigger3 = movecontact = 1
trigger3 = stateno = 601
trigger4 = movecontact = 1
trigger4 = stateno = 602
trigger5 = movecontact = 1
trigger5 = stateno = 604
trigger6 = movecontact = 1
trigger6 = stateno = 605
trigger7 = movecontact = 1
trigger7 = stateno = 606
trigger8 = movecontact = 1
trigger8 = stateno = 704
trigger9 = movecontact = 1
trigger9 = stateno = 705
trigger10 = movecontact = 1
trigger10 = stateno = 706
trigger11 = stateno = 550
trigger12 = stateno = 800
trigger13 = movecontact = 1
trigger13 = stateno = 3520

[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 7

[State -1, Stand Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

[State -1, Stand Strong Punch]
type = ChangeState
value = 250
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 9
trigger3 = (stateno = 230) && time > 11

[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9

[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

[State -1]
type = ChangeState
value = 260
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 201
trigger2 = movecontact = 1  
trigger3 = stateno = 200
trigger3 = movecontact = 1  
trigger4 = stateno = 210
trigger4 = movecontact = 1  
trigger5 = stateno = 211
trigger5 = movecontact = 1  
trigger6 = stateno = 212
trigger6 = movecontact = 1  

[State -1]
type = ChangeState
value = 199
triggerall = command = "start"
triggerall = command = "holdback"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 100

[State -1]
type = ChangeState
value = 198
triggerall = command = "start"
triggerall = command = "holdfwd"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 100

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Duck Punch Z
[State -1]
type = ChangeState
value = 450
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = movecontact = 1
trigger2 = stateno = 400
trigger3 = movecontact = 1
trigger3 = stateno = 430
trigger4 = movecontact = 1
trigger4 = stateno = 404
trigger5 = movecontact = 1
trigger5 = stateno = 410
trigger6 = movecontact = 1
trigger6 = stateno = 200
trigger7 = movecontact = 1
trigger7 = stateno = 201
trigger8 = movecontact = 1
trigger8 = stateno = 204
trigger9 = movecontact = 1
trigger9 = stateno = 205
trigger10 = movecontact = 1
trigger10 = stateno = 207
trigger11 = movecontact = 1
trigger11 = stateno = 208
trigger12 = stateno = 100
trigger13 = movecontact = 1
trigger13 = stateno = 304
trigger14 = movecontact = 1
trigger14 = stateno = 301
trigger15 = movecontact = 1
trigger15 = stateno = 305
;---------------------------------------------------------------------------
; A Duck Kick
;‚µ‚á‚ª‚ÝŽãƒLƒbƒN
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

[State -1, Crouching Strong Kick]
type = ChangeState
value = 470
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7

[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact


[State -1, Jump Strong Kick]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610
trigger2 = movecontact

[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact


[State -1, Jump Light Kick]
type = ChangeState
value = 660
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
