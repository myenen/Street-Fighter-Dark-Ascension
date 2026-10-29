;===========================================================================
;Marvel vs. Capcom - Eternity of Heroes - Animations Template V.9
;by INFINITY
;===========================================================================
;-------------------------------------------------------------------------------
;Artificial Intelligence
;-------------------------------------------------------------------------------
[Command]
name = "AI_1"
command = a, x, F, D, a, a, D
time = 1

[Command]
name = "AI_2"
command = a, a, a, a, a, a, b
time = 1

[Command]
name = "AI_3"
command = a, a, b, D, F, b, x
time = 1

[Command]
name = "AI_4"
command = y, a, F, b, B, y, a
time = 1

[Command]
name = "AI_5"
command = a, b, x, y, y, b, b
time = 1

[Command]
name = "AI_6"
command = b, y, y, F, b, B, B
time = 1

[Command]
name = "AI_7"
command = a, y, F, a, x, a, F, b
time = 1

[Command]
name = "AI_8"
command = a, a, b, y, x, B, x
time = 1

[Command]
name = "AI_9"
command = x, x, a, F, F, b, D
time = 1

[Command]
name = "AI_10"
command = x, x, a, F, y, a, a, F
time = 1

[Command]
name = "AI_11"
command = a, b, a, x, a, y, a
time = 1

[Command]
name = "AI_12"
command = b, y, a, F, y, a, x
time = 1

[Command]
name = "AI_13"
command = x, a, y, y, x, B, B
time = 1

[Command]
name = "AI_14"
command = a, F, F, x, B, F, x
time = 1

[Command]
name = "AI_15"
command = y, x, b, b, a, x, y
time = 1

;-------------------------------------------------------------------------------
;Commands
;-------------------------------------------------------------------------------
;Shining Gou Shock
[Command]
name = "Shining_Gou_Shock"
command = x, x, F, a, z
time=45
[Command]
name = "Shining_Gou_Shock"
command = x, x, F, a, ~z
time=45
[Command]
name = "Shining_Gou_Shock"
command = x, x, /F, a, z
time=45
;-------------------------------------------------------------------------------
;Scramble Gou Punch
[Command]
name = "Scramble_Gou_Punch"
command = ~D, DF, F, x+y
Time = 15
[Command]
name = "Scramble_Gou_Punch"
command = ~D, DF, F, x+z
Time = 15
[Command]
name = "Scramble_Gou_Punch"
command = ~D, DF, F, y+z
Time = 15
;-------------------------------------------------------------------------------
;High_Mega_Gou_Beam
[Command]
name = "High_Mega_Gou_Beam"
command = ~D, DB, B, x+y
Time = 15
[Command]
name = "High_Mega_Gou_Beam"
command = ~D, DB, B, x+z
Time = 15
[Command]
name = "High_Mega_Gou_Beam"
command = ~D, DB, B, y+z
Time = 15
;-------------------------------------------------------------------------------
;Thunder Gou Shower
[Command]
name = "Thunder_Gou_Shower"
command = ~D, DF, F, x+y
Time = 15
[Command]
name = "Thunder_Gou_Shower"
command = ~D, DF, F, x+z
Time = 15
[Command]
name = "Thunder_Gou_Shower"
command = ~D, DF, F, y+z
Time = 15
;-------------------------------------------------------------------------
;Messastu Gou Zankukyakyu
[Command]
name = "Messastu_Gou_Zankukyakyu"
command = ~D, DB, B, a+b
Time = 15
[Command]
name = "Messastu_Gou_Zankukyakyu"
command = ~D, DB, B, a+c
Time = 15
[Command]
name = "Messastu_Gou_Zankukyakyu"
command = ~D, DB, B, b+c
Time = 15
;-------------------------------------------------------------------------------
;Shining Circuit Shoryuken
[Command]
name = "Shining_Circuit_ShoryukenX"
command = ~F,DF,F, x
Time = 15
[Command]
name = "Shining_Circuit_ShoryukenY"
command = ~F,DF,F, y
Time = 15
[Command]
name = "Shining_Circuit_ShoryukenZ"
command = ~F,DF,F, z
Time = 15
;-------------------------------------------------------------------------------
;Hadouken
[Command]
name = "HadoukenX"
command = ~D,DF,F, x
Time = 15
[Command]
name = "HadoukenY"
command = ~D,DF,F, y
Time = 15
[Command]
name = "HadoukenZ"
command = ~D,DF,F, z
Time = 15
;-------------------------------------------------------------------------------
;Zankuu Bolt Hadouken
[Command]
name = "Zankuu_Bolt_HadoukenX"
command = ~D,DF,F, x
Time = 15
[Command]
name = "Zankuu_Bolt_HadoukenY"
command = ~D,DF,F, y
Time = 15
[Command]
name = "Zankuu_Bolt_HadoukenZ"
command = ~D,DF,F, z
Time = 15
;-------------------------------------------------------------------------
;Air Thunder_Shock_Zankukyakyu
[Command]
name = "Air_Thunder_Shock_Zankukyakyu"
command = ~D, DB, B, a
Time = 15
[Command]
name = "Air_Thunder_Shock_Zankukyakyu"
command = ~D, DB, B, b
Time = 15
[Command]
name = "Air_Thunder_Shock_Zankukyakyu"
command = ~D, DB, B, c
Time = 15
;-------------------------------------------------------------------------------
;Thunder_Shock_Zankukyakyu
[Command]
name = "Thunder_Shock_ZankukyakyuA"
command = ~D, DB, B, a
Time = 15
[Command]
name = "Thunder_Shock_ZankukyakyuB"
command = ~D, DB, B, b
Time = 15
[Command]
name = "Thunder_Shock_ZankukyakyuC"
command = ~D, DB, B, c
Time = 15
;------------------------------------------------------------------------------
;Diving Rocket Kujinkyaku
[Command]
name = "Diving_Rocket_KujinkyakuA"
command = ~D,DF,F, a
Time = 15
[Command]
name = "Diving_Rocket_KujinkyakuB"
command = ~D,DF,F, b
Time = 15
[Command]
name = "Diving_Rocket_KujinkyakuC"
command = ~D,DF,F, c
Time = 15
;-------------------------------------------------------------------------------
;AP
[Command]
name = "AP"
command = /F,y
;-------------------------------------------------------------------------------
;AK
[Command]
name = "AK"
command = /F,b
;-------------------------------------------------------------------------------
;Stand Counter
[Command]
name = "StandCounter"
command = /$B,x+y
time = 5
;Crouch Counter
[Command]
name = "CrouchCounter"
command = /$D,x+y
time = 5
;-------------------------------------------------------------------------------
;Lightning Senku Foward
[Command]
name = "LSF"
command = ~F,DF,F, x+a
;Lightning Senku Backward
[Command]
name = "LSB"
command = ~B,DB,B, x+a
;-------------------------------------------------------------------------------
;Super Jump
[Command]
name = "Super_Jump"
command = ~D, U
;-------------------------------------------------------------------------------
;Double_Tap
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10
;-------------------------------------------------------------------------------
;2/3 button combination
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "guardpush"
command = x+y
time = 5

[Command]
name = "guardpush"
command = x+z
time = 5

[Command]
name = "guardpush"
command = y+z
time = 5

[Command]
name = "throw_p"
command = x+y
time = 5

[Command]
name = "throw_p"
command = y+z
time = 5

[Command]
name = "throw_p"
command = x+z
time = 5

[Command]
name = "throw_k"
command = a+b
time = 5

[Command]
name = "throw_k"
command = b+c
time = 5

[Command]
name = "throw_k"
command = a+c
time = 5
;-------------------------------------------------------------------------------
;Dir + button
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
command = /$F,z
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "back_b"        ;Alternative button command
command = /$B,b
time = 1

[Command]
name = "back_c"        ;Alternative button command
command = /$B,c
time = 1

[Command]
name = "Forward Wakeup Roll"
command = /$F
time = 10

[Command]
name = "Backward Wakeup Roll"
command = /$B
time = 10
;-------------------------------------------------------------------------------
;One button
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
name = "s"
command = s
time = 1
;-------------------------------------------------------------------------------
;Hold button
[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdb"
command = /b
time = 1

;-------------------------------------------------------------------------------
;Hold dir
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

[Command]
name = "SJ"
command = $D, $U

;-------------------------------------------------------------------------------
;Artificial Intelligence
;-------------------------------------------------------------------------------
[Statedef -1]
;-|-AI-|------------------------------------------------------------------------
[State -1, AI]
type = VarSet
trigger1 = command = "AI_1"
trigger2 = command = "AI_2"
trigger3 = command = "AI_3"
trigger4 = command = "AI_4"
trigger5 = command = "AI_5"
trigger6 = command = "AI_6"
trigger7 = command = "AI_7"
trigger8 = command = "AI_8"
trigger9 = command = "AI_9"
trigger10 = command = "AI_10"
trigger11 = command = "AI_11"
trigger12 = command = "AI_12"
trigger13 = command = "AI_13"
trigger14 = command = "AI_14"
trigger15 = command = "AI_15"
v = 59
value = 1

;--|-AI Defense-|---------------------------------------------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 130

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 131

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0) 
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 250) && (random <= 799)
value = 132

;-|-AI Combo Attempt-|----------------------------------------------------------
[State -1]
type = ChangeState
triggerall = var(59)>=1 
triggerall = statetype != A
trigger1 = p2bodydist x <=30
trigger1 = ctrl
value = 200

[State -1]
type = ChangeState
triggerall = var(59)>=1  && random <=200
triggerall = statetype != A
trigger1 = p2bodydist x <=30
trigger1 = ctrl
value = 210

[State -1]
type = ChangeState
triggerall = var(59)>=1  && random <=210
triggerall = statetype != A
trigger1 = p2bodydist x <=30
trigger1 = ctrl
value = 220

[State -1]
type = ChangeState
triggerall = var(59)>=1  
triggerall = statetype != A
trigger1 = p2bodydist x <=30
trigger1 = ctrl
value = 230

[State -1]
type = ChangeState
triggerall = var(59)>=1  && random <=230
triggerall = statetype != A
trigger1 = p2bodydist x <=30
trigger1 = ctrl
value = 240

[State -1]
type = ChangeState
triggerall = var(59)>=1  && random <=240
triggerall = statetype != A
trigger1 = p2bodydist x <=30
trigger1 = ctrl
value = 250

[State -1]
type = ChangeState
triggerall = var(59)>=1 
triggerall = statetype != A
trigger1 = p2bodydist x <=30
trigger1 = ctrl
value = 400

[State -1]
type = ChangeState
triggerall = var(59)>=1  && random <=400
triggerall = statetype != A
trigger1 = p2bodydist x <=30
trigger1 = ctrl
value = 410

[State -1]
type = ChangeState
triggerall = var(59)>=1  && random <=410
triggerall = statetype != A
trigger1 = p2bodydist x <=30
trigger1 = ctrl
value = 420

[State -1]
type = ChangeState
triggerall = var(59)>=1  
triggerall = statetype != A
trigger1 = p2bodydist x <=30
trigger1 = ctrl
value = 430

[State -1]
type = ChangeState
triggerall = var(59)>=1  && random <=430
triggerall = statetype != A
trigger1 = p2bodydist x <=30
trigger1 = ctrl
value = 440

[State -1]
type = ChangeState
triggerall = var(59)>=1  && random <=440
triggerall = statetype != A
trigger1 = p2bodydist x <=30
trigger1 = ctrl
value = 450

[State -1]
type = ChangeState
triggerall = var(59)>0
trigger1 = statetype = A
trigger1 = stateno = 7001 ;&& time > 4
trigger1 = p2bodydist x <=30
trigger1 = p2bodydist y >=-25
trigger1 = p2movetype= H
value = 600

[State -1]
type = ChangeState
triggerall = var(59)>0
trigger1 = statetype = A
trigger1 = stateno = 630 && movehit
value = 610

[State -1]
type = ChangeState
triggerall = var(59)>0
triggerall = random <=300
trigger1 = statetype = A
trigger1 = stateno = 640 && movehit
value = 620

[State -1]
type = ChangeState
triggerall = var(59)>0
trigger1 = statetype = A
trigger1 = stateno = 600 && movehit
value = 630

[State -1]
type = ChangeState
triggerall = var(59)>0
trigger1 = statetype = A
trigger1 = stateno = 610 && movehit && random <=300
value = 640

[State -1]
type = ChangeState
triggerall = var(59)>0
triggerall = random <=300
trigger1 = statetype = A
trigger1 = stateno = 640 && movehit && random <=500
value = 650

;-|-AI Super Attempt-|----------------------------------------------------------
[State -1]
type = ChangeState
triggerall = numhelper(1000)=0 && random <=100
triggerall = var(59)>=1
triggerall = statetype != A
trigger1 = stateno = 210 && movehit && p2statetype !=A
trigger2 = (p2bodydist x >= 100) && (random <=100) && ctrl
trigger3 = (p2bodydist x = [31,179]) && (p2statetype !=A) && (p2movetype = A) && ctrl && (random <=200) && ctrl
trigger4 = stateno = 400 && movehit && p2statetype !=A
value = 1000

[State -1]
type = ChangeState
triggerall = numhelper(1000)=0 && random <=100
triggerall = var(59)>=1
triggerall = statetype != A
trigger1 = stateno = 210 && movehit && p2statetype !=A
trigger2 = (p2bodydist x >= 100) && (random <=100) && ctrl
trigger3 = (p2bodydist x = [31,179]) && (p2statetype !=A) && (p2movetype = A) && ctrl && (random <=200) && ctrl
trigger4 = stateno = 400 && movehit && p2statetype !=A
value = 1020

[State -1]
type = ChangeState
triggerall = var(59)>=1
triggerall = statetype != A
trigger1 = p2bodydist x = [14,60]
trigger1 = p2bodydist y = [-82,-55]
trigger1 = ctrl
value = 1200

[State -1]
type = ChangeState
triggerall = var(59)>=1
triggerall = statetype != A
trigger1 = p2bodydist x = [14,60]
trigger1 = p2bodydist y = [-82,-55]
trigger1 = ctrl
value = 1220

[State -1]
type = ChangeState
triggerall = var(59)>=1
triggerall = statetype != A
trigger1 = stateno = 210 && movehit && p2statetype = A && random <=600
trigger2 = stateno = 400 && movehit && p2statetype = A && random <=600
trigger3 = ctrl && (enemynear,movetype = A) && (p2bodydist x <=50) && (p2bodydist y <= -20) ;&& random <=200
value = 1300

[State -1]
type = ChangeState
triggerall = var(59)>=1
triggerall = statetype != A
trigger1 = stateno = 210 && movehit && p2statetype = A && random <=600
trigger2 = stateno = 400 && movehit && p2statetype = A && random <=600
trigger3 = ctrl && (enemynear,movetype = A) && (p2bodydist x <=50) && (p2bodydist y <= -20) ;&& random <=200
value = 1340

[State -1]
type = ChangeState
triggerall = var(59)>=1 ; && random <= 249
triggerall = statetype = A && random <= 300
triggerall = p2movetype = A
triggerall = p2statetype != A; [5000,5200]
trigger1 = ctrl
trigger1 = P2bodydist X = [20,60];40
trigger1 = pos y <= -33
trigger2 = stateno = 640 && movehit
ignorehitpause = 1
value = 1520

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist x <= 70) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1700

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist x <= 70) && (prevstateno != 5120) && (p2movetype != H) && (numproj = 0) && (statetype != A)
value = 1705

;-|-AI Attempt Hyper-|----------------------------------------------------------
[State -1]
type = ChangeState
triggerall = power >=1000
triggerall = var(59)>=1 && p2life > 0
triggerall = P2statetype != A
triggerall = ctrl
trigger1 = stateno = 210
trigger1 = movehit = 1
trigger2 = P2BodyDist X = [0,65]
trigger2 = P2BodyDist Y = [-90,0]
trigger2 = p2movetype = A
trigger2 = Random > 500
trigger3 = P2BodyDist X = [0,65]
trigger3 = P2BodyDist Y = [-90,0]
trigger3 = p2movetype = A
value = 3000

[State -1]
type = ChangeState
triggerall = var(59)>=1
triggerall = statetype != A
triggerall = power >=1000
trigger1 = stateno = 210 && movehit && p2statetype = A && random <=400
trigger2 = stateno = 400 && movehit && p2statetype = A && random <=400
value = 3200

[State -1]
type = ChangeState
triggerall = var(59)>=1  && random <=200
triggerall = statetype  = A
triggerall = power >=1000
trigger1 = (stateno = 1201) && movehit
value = 3300

[State -1]
type = ChangeState
triggerall = var(59)>0 && random <=400
triggerall = Statetype != A
triggerall = p2Statetype != A
triggerall = power >=3000
trigger1 = stateno=210 && movehit
trigger2 = stateno=400 && movehit
trigger3 = stateno=430 && movehit
ignorehitpause = 1
value = 3400

;-------------------------------------------------------------------------------
;Commands
;-------------------------------------------------------------------------------
[State -1, Dash Forward]
type = ChangeState
value = 100
triggerall = StateType = S
triggerall = (Ctrl) && (StateNo != 100)
trigger1 = Command = "FF"
;-----------------------------
[State -1, Dash Back]
type = ChangeState
value = 105
triggerall = StateType = S
triggerall = (Ctrl) && (StateNo != 100)
trigger1 = Command = "BB"
;-----------------------------
[State -1, Shining Gou Shock]
type = ChangeState
value = 3400
triggerall = Statetype != A
triggerall = command = "Shining_Gou_Shock"
triggerall = power >=3000
trigger1 = ctrl
trigger2=(stateno=[200,499])
trigger3=(stateno=[1100,1499]) && movecontact
;-----------------------------
[State -1, Scramble Gou Punch]
type = ChangeState
value = 3200
triggerall = command = "Scramble_Gou_Punch"
triggerall = power >= 1000
trigger1 = (statetype = S) && (ctrl)
trigger2 = (stateno = [200,450]) && movecontact
;-----------------------------
[State -1, High Mega Gou Beam]
type = ChangeState
value = 3000
triggerall = command = "High_Mega_Gou_Beam"
triggerall = power >= 1000
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
;-----------------------------
[State -1, Thunder Gou Shower]
type = ChangeState
value = 3100
triggerall = command = "Thunder_Gou_Shower"
triggerall = power >= 1000
trigger1 = (statetype = A) && (ctrl)
trigger2 = (stateno = [600,650]) && movecontact
;-----------------------------
[State -1, Messastu Gou Zankukyakyu]
type = ChangeState
value = 3300
triggerall = Statetype != A
triggerall = command = "Messastu_Gou_Zankukyakyu"
triggerall = power >=1000
trigger1 = ctrl
trigger2=(stateno=[200,499]) && movecontact
trigger3=(stateno=[1100,1499]) && movecontact
;-----------------------------
[State -1, Lightning Senku Foward]
type = ChangeState
value = 1700
triggerall = command = "LSF"
trigger1 = (StateType = S) && (Ctrl)
;-----------------------------
[State -1, Lightning Senku Backward]
type = ChangeState
value = 1705
triggerall = command = "LSB"
trigger1 = (StateType = S) && (Ctrl)
;-----------------------------
[State -1, Shining Circuit Shoryuken]
type = ChangeState
value = 1300
triggerall = command = "Shining_Circuit_ShoryukenX"
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = [200,251]) && movecontact
trigger3 = (stateno = [400,450]) && movecontact
;-----------------------------
[State -1, Shining Circuit Shoryuken]
type = ChangeState
value = 1320
triggerall = command = "Shining_Circuit_ShoryukenY"
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = [200,251]) && movecontact
trigger3 = (stateno = [400,450]) && movecontact
;-----------------------------
[State -1, Shining Circuit Shoryuken]
type = ChangeState
value = 1340
triggerall = command = "Shining_Circuit_ShoryukenZ"
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = [200,251]) && movecontact
trigger3 = (stateno = [400,450]) && movecontact
;-----------------------------
[State -1, Hadouken]
type = ChangeState
value = 1000
triggerall = command = "HadoukenX"
triggerall = numproj = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger2 = (stateno = [200,251]) && movecontact
trigger3 = (stateno = [400,450]) && movecontact
trigger4 = stateno = 1700
[State -1, Hadouken]
type = ChangeState
value = 1010
triggerall = command = "HadoukenY"
triggerall = numproj = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger2 = (stateno = [200,251]) && movecontact
trigger3 = (stateno = [400,450]) && movecontact
trigger4 = stateno = 1700
[State -1, Hadouken]
type = ChangeState
value = 1020
triggerall = command = "HadoukenZ"
triggerall = numproj = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger2 = (stateno = [200,251]) && movecontact
trigger3 = (stateno = [400,450]) && movecontact
trigger4 = stateno = 1700
;-----------------------------
[State -1, Zankuu Bolt Hadouken]
type = ChangeState
value = 1100
triggerall = command = "Zankuu_Bolt_HadoukenX"
trigger1 =statetype = A
triggerall = numproj = 0
trigger1 = (statetype = A) && (ctrl)
trigger2 = (stateno = [600,650]) && movecontact
[State -1, Zankuu Bolt Hadouken]
type = ChangeState
value = 1110
triggerall = command = "Zankuu_Bolt_HadoukenY"
trigger1 =statetype = A
triggerall = numproj = 0
trigger1 = (statetype = A) && (ctrl)
trigger2 = (stateno = [600,650]) && movecontact
[State -1, Zankuu Bolt Hadouken]
type = ChangeState
value = 1120
triggerall = command = "Zankuu_Bolt_HadoukenZ"
trigger1 = statetype = A
triggerall = numproj = 0
trigger1 = (statetype = A) && (ctrl)
trigger2 = (stateno = [600,650]) && movecontact
;-----------------------------
[State -1, Air Thunder_Shock_Zankukyakyu]
type = ChangeState
value = 1250
triggerall = command = "Air_Thunder_Shock_Zankukyakyu"
trigger1 = (statetype = A) && (ctrl)
trigger2 = (stateno = [600,650]) && movecontact
;-----------------------------
[State -1, Thunder_Shock_Zankukyakyu]
type = ChangeState
value = 1200
triggerall = command = "Thunder_Shock_ZankukyakyuA"
trigger1 = (movetype !=H) && ctrl
trigger2 = (stateno = [200,251]) && movecontact
trigger3 = (stateno = [400,450]) && movecontact
trigger4 = (stateno = [600,650]) && movecontact
;-----------------------------
[State -1, Thunder_Shock_Zankukyakyu]
type = ChangeState
value = 1210
triggerall = command = "Thunder_Shock_ZankukyakyuB"
trigger1 =(movetype !=H) && ctrl
trigger2 = (stateno = [200,251]) && movecontact
trigger3 = (stateno = [400,450]) && movecontact
trigger4 = (stateno = [600,650]) && movecontact
;-----------------------------
[State -1, Thunder_Shock_Zankukyakyu]
type = ChangeState
value = 1220
triggerall = command = "Thunder_Shock_ZankukyakyuC"
trigger1 =(movetype !=H) && ctrl
trigger2 = (stateno = [200,251]) && movecontact
trigger3 = (stateno = [400,450]) && movecontact
trigger4 = (stateno = [600,650]) && movecontact
;-----------------------------
[State -1, Diving Rocket Kujinkyaku]
type = ChangeState
value = 1500
triggerall = command = "Diving_Rocket_KujinkyakuA"
trigger1 = (statetype = A) && (ctrl)
trigger2= (stateno = [600,650]) && movecontact
[State -1, Diving Rocket Kujinkyaku]
type = ChangeState
value = 1510
triggerall = command = "Diving_Rocket_KujinkyakuB"
trigger1 = (statetype = A) && (ctrl)
trigger2= (stateno = [600,650]) && movecontact
[State -1, Diving Rocket Kujinkyaku]
type = ChangeState
value = 1520
triggerall = command = "Diving_Rocket_KujinkyakuC"
trigger1 = (statetype = A) && (ctrl)
trigger2= (stateno = [600,650]) && movecontact
;-----------------------------
[State -1, Standing Counter]
type = ChangeState
value = 1600
triggerall = command = "StandCounter"
trigger1 = (StateType = S) && (Ctrl)
;-----------------------------
;Overhead Throw
[State -1, Overhead Throw]
type = ChangeState
value = 800
triggerall = !var(59)
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "holdfwd" && command = "throw_p"|| command = "holdback" && command = "throw_p"
trigger1 = p2bodydist X <= 10
trigger1 = (p2statetype = S)
trigger1 = p2movetype != H
;-----------------------------
;Kick Throw
[State -1, Kick Throw]
type = ChangeState
value = 820
triggerall = !var(59)
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "holdfwd" && command = "throw_k"|| command = "holdback" && command = "throw_k"
trigger1 = p2bodydist X <= 10
trigger1 = (p2statetype = S)
trigger1 = p2movetype != H
;-----------------------------
[State -1, AP]
type = ChangeState
value = 211
triggerall = p2bodydist x > 10
triggerall = Command = "AP"
trigger1 = (statetype = S) && (ctrl)
;-----------------------------
[State -1, AK]
type = ChangeState
value = 241
triggerall = p2bodydist x > 10
triggerall = command = "AK"
trigger1 = (statetype = S) && (ctrl)
;-----------------------------
[State -1, s]
type = ChangeState
value = 195
triggerall = Command = "s"
triggerall = Command != "holddown"
triggerall = stateno != 100
trigger1 = (StateType = S) && (Ctrl)
;-----------------------------
[State -1, X]
type = ChangeState
value = 200
triggerall = Command = "x"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
;-----------------------------
[State -1, Y]
type = ChangeState
value = 210
triggerall = Command = "y"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact) && time > 3
trigger3 = (StateNo = 230) && (Movecontact) && time > 3
;-----------------------------
[State -1, Z]
type = ChangeState
value = 220
triggerall = Command = "z"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact) && time > 3
trigger3 = (StateNo = 230) && (Movecontact) && time > 3
trigger4 = (StateNo = 210) && (Movecontact) && time > 3
trigger5 = (StateNo = 211) && (Movecontact) && time > 3
trigger6 = (StateNo = 240) && (Movecontact) && time > 3
;-----------------------------
[State -1, A]
type = ChangeState
value = 230
triggerall = Command = "a"
triggerall = Command != "holddown"
triggerall = stateno != 100
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (Stateno = 200) && (Movecontact)
;-----------------------------
[State -1, B]
type = ChangeState
value = 240
triggerall = Command = "b"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 210) && (Movecontact)
trigger5 = (StateNo = 211) && (Movecontact)
;-----------------------------
[State -1, C]
type = ChangeState
value = 250
triggerall = Command = "c"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 210) && (Movecontact)
trigger5 = (StateNo = 211) && (Movecontact)
trigger6 = (StateNo = 240) && (Movecontact)
trigger7 = (StateNo = 220) && (Movecontact)
;-----------------------------
[State -1, X agachado]
type = ChangeState
value = 400
triggerall = Command = "x"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
;-----------------------------
[State -1, Y agachado]
type = ChangeState
value = 410
triggerall = Command = "y"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 400) && (Movecontact)
trigger5 = (StateNo = 430) && (Movecontact)
trigger6 = (StateNo = 210) && (Movecontact)
trigger7 = (StateNo = 211) && (Movecontact)
;-----------------------------
[State -1, Z agachado]
type = ChangeState
value = 420
triggerall = Command = "z"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 400) && (Movecontact)
trigger5 = (StateNo = 430) && (Movecontact)
trigger6 = (StateNo = 210) && (Movecontact)
trigger7 = (StateNo = 211) && (Movecontact)
trigger8 = (StateNo = 240) && (Movecontact)
trigger9 = (StateNo = 220) && (Movecontact)
trigger10 = (StateNo = 221) && (Movecontact)
trigger11 = (StateNo = 410) && (Movecontact)
trigger12 = (StateNo = 440) && (Movecontact)
;-----------------------------
[State -1, A agachado]
type = ChangeState
value = 430
triggerall = Command = "a"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (Stateno = 200) && (Movecontact)
trigger3 = (Stateno = 230) && (Movecontact)
trigger4 = (Stateno = 400) && (Movecontact)
;-----------------------------
[State -1, B agachado]
type = ChangeState
value = 440
triggerall = Command = "b"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 400) && (Movecontact)
trigger5 = (StateNo = 430) && (Movecontact)
trigger6 = (StateNo = 210) && (Movecontact)
trigger7 = (StateNo = 211) && (Movecontact)
trigger8 = (StateNo = 240) && (Movecontact)
trigger9 = (StateNo = 220) && (Movecontact)
trigger10 = (StateNo = 221) && (Movecontact)
;-----------------------------
[State -1, C agachado]
type = ChangeState
value = 450
triggerall = Command = "c"
triggerall = Command = "holddown"
trigger1 = (StateType != A) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 400) && (Movecontact)
trigger5 = (StateNo = 430) && (Movecontact)
trigger6 = (StateNo = 210) && (Movecontact)
trigger7 = (StateNo = 211) && (Movecontact)
trigger8 = (StateNo = 250) && (Movecontact)
trigger9 = (StateNo = 251) && (Movecontact)
trigger10 = (StateNo = 420) && (Movecontact)
trigger11 = (StateNo = 421) && (Movecontact)
trigger12 = (StateNo = 410) && (Movecontact)
trigger13 = (StateNo = 440) && (Movecontact)
;-----------------------------
[State -1, X]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = Statetype = A && ctrl
trigger2 = stateno = 105 && time > 4
;-----------------------------
[State -1, Y]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact) && time > 2
trigger3 = (StateNo = 630) && (Movecontact) && time > 2
;-----------------------------
[State -1, Z]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact) && time > 2
trigger3 = (StateNo = 630) && (Movecontact) && time > 2
trigger4 = (StateNo = 610) && (Movecontact) && time > 2
trigger5 = (StateNo = 640) && (Movecontact) && time > 2
;-----------------------------
[State -1, A]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact)
;-----------------------------
[State -1, B]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact)
trigger3 = (StateNo = 610) && (Movecontact)
trigger4 = (StateNo = 620) && (Movecontact)
trigger5 = (StateNo = 630) && (Movecontact)
;-----------------------------
[State -1, C]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact)
trigger3 = (StateNo = 610) && (Movecontact)
trigger4 = (StateNo = 620) && (Movecontact)
trigger5 = (StateNo = 630) && (Movecontact)
trigger6 = (StateNo = 640) && (Movecontact)
;------------------------------------------------------------------------
[State -1, Super Jump]
type = ChangeState
value = 7000
triggerall = Command = "SJ"
trigger1 = StateType = S
trigger1 = ctrl
;-----------------------------
[State -1, Super Jump]
type = ChangeState
value = 7000
triggerall = Command = "holdup"
trigger1 = stateno = 420 && time > 4
[State -1, Guard Push stand]
type = ChangeState
value = 6300
triggerall = command = "guardpush" && statetype = S
trigger1 = stateno = [150,153]
[State -1, Guard Push crouch]
type = ChangeState
value = 6310
triggerall = command = "guardpush" && statetype = C
trigger1 = stateno = [150,153]
;-------------------------------------------------------------------------------
;----------------------------- Recovery Roll -----------------------------------
;-------------------------------------------------------------------------------
;Forward Wakeup Roll
[State -1, Forward Wakeup Roll]
type = ChangeState
value = 900
triggerall = (stateno = 5110) && time >= 5
trigger1 =  Life
trigger1 = command = "Forward Wakeup Roll"
;-------------------------------------------------------------------------------
;Backward Wakeup Roll
[State -1, Backward Wakeup Roll]
type = ChangeState
value = 920
triggerall = (stateno = 5110) && time >= 5
trigger1 = life
trigger1 =  command = "Backward Wakeup Roll"
