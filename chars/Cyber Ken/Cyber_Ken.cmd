;===========================================================================
Marvel vs. Capcom Template V.5
by REDHOT, Acey & eSkRo
;===========================================================================

;---------------------------------------------------------------------------
;Artificial Intelligence
;---------------------------------------------------------------------------
;-|-AI-|--------------------------------------------------------------------
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

;---------------------------------------------------------------------------
;Commands
;---------------------------------------------------------------------------
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

;----------------------------------------------------------------------------
;Air Mega Gou Beam
[Command]
name = "Air_Mega_Gou_Beam"
command = ~D, DF, F, x+y
[Command]
name = "Air_Mega_Gou_Beam"
command = ~D, DF, F, x+z
[Command]
name = "Air_Mega_Gou_Beam"
command = ~D, DF, F, y+z

;----------------------------------------------------------------------------
;Mega Zankuu Hadouken
[Command]
name = "Mega_Zankuu_Hadouken"
command = ~D, DB, B, x+y
[Command]
name = "Mega_Zankuu_Hadouken"
command = ~D, DB, B, x+z
[Command]
name = "Mega_Zankuu_Hadouken"
command = ~D, DB, B, y+z

;---------------------------------------------------------------------------
;Shoryureppa
[Command]
name = "Shoryureppa"
command = ~D, DF, F, x+y
[Command]
name = "Shoryureppa"
command = ~D, DF, F, x+z
[Command]
name = "Shoryureppa"
command = ~D, DF, F, y+z

;---------------------------------------------------------------------------
;High Mega Gou Beam
[Command]
name = "High_Mega_Gou_Beam"
command = ~D, DB, B, x+y
[Command]
name = "High_Mega_Gou_Beam"
command = ~D, DB, B, x+z
[Command]
name = "High_Mega_Gou_Beam"
command = ~D, DB, B, y+z

;---------------------------------------------------------------------------
;Electric Sphere
[Command]
name = "Electric_Sphere"
command = ~B, F, x+y
[Command]
name = "Electric_Sphere"
command = ~B, F, x+z
[Command]
name = "Electric_Sphere"
command = ~B, F, y+z

;---------------------------------------------------------------------------
;Shippu Jinrai Kyaku
[Command]
name = "Shippu_Jinrai_Kyaku"
command = ~D, DB, B, a+b
name = "Shippu_Jinrai_Kyaku"
command = ~D, DB, B, a+c
name = "Shippu_Jinrai_Kyaku"
command = ~D, DB, B, b+c

;---------------------------------------------------------------------------
;Bolt Hadouken
[Command]
name = "Bolt_Hadouken"
command = ~D,DF,F, x
[Command]
name = "Medium_Bolt_Hadouken"
command = ~D,DF,F, y
[Command]
name = "Hard_Bolt_Hadouken"
command = ~D,DF,F, z

;---------------------------------------------------------------------------
;Fire Bolt Hadouken
[Command]
name = "Fire_Bolt_Hadouken"
command = ~D,DB,B, x
[Command]
name = "M_Fire_Bolt_Hadouken"
command = ~D,DB,B, y
[Command]
name = "H_Fire_Bolt_Hadouken"
command = ~D,DB,B, z

;---------------------------------------------------------------------------
;Zankuu Bolt Hadouken
[Command]
name = "Zankuu_Bolt_Hadouken"
command = ~D, DF, F, x
[Command]
name = "Medium_Zankuu_Bolt_Hadouken"
command = ~D, DF, F, y
[Command]
name = "Hard_Zankuu_Bolt_Hadouken"
command = ~D, DF, F, z

;---------------------------------------------------------------------------
;Air Bolt Hadouken
[Command]
name = "Air_Bolt_Hadouken"
command = ~D, DB, B, x
[Command]
name = "Air_M_Bolt_Hadouken"
command = ~D, DB, B, y
[Command]
name = "Air_H_Bolt_Hadouken"
command = ~D, DB, B, z

;-------------------------------------------------------------------------
;Thunder Shock Zankukyakyu
[Command]
name = "Thunder_Shock_Zankukyakyu"
command = ~D, DB, B, a
[Command]
name = "Medium_Thunder_Shock_Zankukyakyu"
command = ~D, DB, B, b
[Command]
name = "Hard_Thunder_Shock_Zankukyakyu"
command = ~D, DB, B, c

;-------------------------------------------------------------------------
;Air Hurricane Kick
[Command]
name = "Air_Thunder_Shock_Zankukyakyu"
command = ~D, DB, B, a
[Command]
name = "Air_Medium_Thunder_Shock_Zankukyakyu"
command = ~D, DB, B, b
[Command]
name = "Air_Hard_Thunder_Shock_Zankukyakyu"
command = ~D, DB, B, c

;-------------------------------------------------------------------------
;Shining Circuit Shoryuken
[Command]
name = "Shining_Circuit_Shoryuken"
command = ~F, D, DF, x
[Command]
name = "Medium_Shining_Circuit_Shoryuken"
command = ~F, D, DF, y
[Command]
name = "Hard_Shining_Circuit_Shoryuken"
command = ~F, D, DF, z

;-------------------------------------------------------------------------
;Diving_Rocket_Kujinkyaku
[Command]
name = "Diving_Rocket_Kujinkyaku"
command = ~D,DF,F, a
[Command]
name = "M_Diving_Rocket_Kujinkyaku"
command = ~D,DF,F, b
[Command]
name = "H_Diving_Rocket_Kujinkyaku"
command = ~D,DF,F, c

;-------------------------------------------------------------------------
;Charge Up
[Command]
name = "chargea"
command = /a
time = 1

[Command]
name = "charge1"
command = /b
time = 1

[Command]
name = "chargec"
command = /c
time = 1

[Command]
name = "charge2"
command = /y
time = 1

;---------------------------------------------------------------------------------------------
;Super Jump
[Command]
name = "Super_Jump"
command = ~D, U

;---------------------------------------------------------------------------------------------
;Double_Tap
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;---------------------------------------------------------------------------------------------
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
name = "Overhead_Throw"
command = /$F,x+y
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
name = "Kick_Throw"
command =/$F,a+b
time = 5

[Command]
name = "throw_k"
command = b+c
time = 5

[Command]
name = "throw_k"
command = a+c
time = 5

;---------------------------------------------------------------------------------------------
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
name = "Forward_Wakeup_Roll"
command = /$F
time = 10

[Command]
name = "Backward_Wakeup_Roll"
command = /$B
time = 10

;---------------------------------------------------------------------------------------------
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

;---------------------------------------------------------------------------------------------
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

[Command]
name = "pc1"
command = b+y

[Command]
name = "ki"
command = /b+y

;---------------------------------------------------------------------------------------------
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

;---------------------------------------------------------------------------
;Artificial Intelligence
;---------------------------------------------------------------------------

[Statedef -1]
;-|-AI-|--------------------------------------------------------------------
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

;--|-AI Defense-|-----------------------------------------------------------
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

;-|-AI Combo Attempt-|----------------------------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 20) && (random <= 750)
value = 200

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 20) && (random <= 750)
value = 210

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 230

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 7) && (random <= 750)
value = 235

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 240

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 400

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 410

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 430

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 440

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 600

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 610

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 630

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 25) && (random <= 750)
value = 640

;-|-AI Super Attempt-|----------------------------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist x <= 35) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1120

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist x <= 45) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1020

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist x <= 25) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1800

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist x <= 70) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1902

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist x <= 70) && (prevstateno != 5120) && (p2movetype != H) && (statetype != A)
value = 1120

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist x <= 70) && (prevstateno != 5120) && (p2movetype != H) && (numproj = 0) && (statetype != A)
value = 1902

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist x <= 70) && (prevstateno != 5120) && (p2movetype != H) && (numproj = 0) && (statetype != A)
value = 1020

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (random = [0,500])
trigger1 = (p2bodydist x <= 70) && (prevstateno != 5120) && (p2movetype != H) && (numproj = 0) && (statetype != A)
value = 1402

;-|-AI Attempt Hyper-|---------------------------------------------
[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x <= 35) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 3000) && (numproj = 0) && (random = [0,300])
value = 3000

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x <= 50) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power >= 1000) && (numproj = 0) && (random = [0,300])
value = 3100

[State -1]
type = ChangeState
triggerall = (roundstate = 2) && (var(59) != 0)
triggerall = (Ctrl) && (Statetype = S) && (p2statetype != L)
trigger1 = (p2bodydist x <= 50) && (prevstateno != 5120) && (numproj = 0) && (statetype != A)
trigger1 = (power <= 2000) && (numproj = 0) && (random = [0,300])
value = 3200

;---------------------------------------------------------------------------
;Commands
;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 700
triggerall = Power < 3000 && (command = "charge1" && command = "charge2")
trigger1 = statetype = S
trigger1 = ctrl

;-----------------------------
[State -1, Dash Forward]
type = ChangeState
value = 100
triggerall = StateType = S
triggerall = (Ctrl) && (StateNo != 100)
trigger1 = Command = "FF"

;-----------------------------
[State -1, Jump Back]
type = ChangeState
value = 105
triggerall = StateType = S
triggerall = (Ctrl) && (StateNo != 100)
trigger1 = Command = "BB"

;---------------------------------------------------------------------------
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
[State -1, High Mega Gou Beam]
type = ChangeState
value = 3000
triggerall = command = "High_Mega_Gou_Beam"
triggerall = power >= 1000
triggerall = numproj = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------
[State -1, Electric Sphere]
type = ChangeState
value = 3500
triggerall = command = "Electric_Sphere"
triggerall = power >= 2000
triggerall = numproj = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------
[State -1, Shippu Jinrai Kyaku]
type = ChangeState
value = 3300
triggerall = command = "Shippu_Jinrai_Kyaku"
triggerall = power >= 2000
triggerall = numproj = 0
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)

;-----------------------------
[State -1, Air Mega Gou Beam]
type = ChangeState
value = 3200
triggerall = command = "Air_Mega_Gou_Beam"
triggerall = power >= 1000
trigger1 = (statetype = A) && (ctrl)
triggerall = numproj = 0
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 610) && (movecontact)
trigger4 = (stateno = 620) && (movecontact)
trigger5 = (stateno = 630) && (movecontact)
trigger6 = (stateno = 640) && (movecontact)
trigger7 = (stateno = 650) && (movecontact)

;-----------------------------
[State -1, Mega Zankuu Hadouken]
type = ChangeState
value = 3600
triggerall = command = "Mega_Zankuu_Hadouken"
triggerall = power >= 1000
trigger1 = (statetype = A) && (ctrl)
triggerall = numproj = 0
trigger2 = (stateno = 600) && (movecontact)
trigger3 = (stateno = 610) && (movecontact)
trigger4 = (stateno = 620) && (movecontact)
trigger5 = (stateno = 630) && (movecontact)
trigger6 = (stateno = 640) && (movecontact)
trigger7 = (stateno = 650) && (movecontact)

;-----------------------------
[State -1, Shoryureppa]
type = ChangeState
value = 3100
triggerall = command = "Shoryureppa"
triggerall = power >= 1000
trigger1 = Statetype != A && ctrl
trigger2 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact)
trigger3 = (stateno = 200) && (movecontact)
trigger4 = (stateno = 210) && (movecontact)
trigger5 = (stateno = 220) && (movecontact)
trigger6 = (stateno = 230) && (movecontact)
trigger7 = (stateno = 240) && (movecontact)
trigger8 = (stateno = 250) && (movecontact)
trigger9 = (stateno = 400) && (movecontact)
trigger10 = (stateno = 410) && (movecontact)
trigger11 = (stateno = 420) && (movecontact)
trigger12 = (stateno = 430) && (movecontact)
trigger13 = (stateno = 440) && (movecontact)
trigger14 = (stateno = 450) && (movecontact)
trigger15 = (stateno = 1300) && (movecontact)
trigger16 = (stateno = 1365) && (movecontact)
trigger17 = (stateno = 1385) && (movecontact)
trigger18 = (stateno = 1000) && (movecontact) && (time = 0)
trigger19 = (stateno = 1010) && (movecontact) && (time = 0)
trigger20 = (stateno = 1020) && (movecontact) && (time = 0)

;-------------------------------------------------------------------------
[State -1, Shining Circuit Shoryuken]
type = ChangeState
value = 1200
triggerall = command = "Shining_Circuit_Shoryuken"
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 210) && (movecontact)
trigger4 = (stateno = 220) && (movecontact)
trigger5 = (stateno = 230) && (movecontact)
trigger6 = (stateno = 240) && (movecontact)
trigger7 = (stateno = 250) && (movecontact)
trigger8 = (stateno = 400) && (movecontact)
trigger9 = (stateno = 410) && (movecontact)
trigger10 = (stateno = 420) && (movecontact)
trigger11 = (stateno = 430) && (movecontact)
trigger12 = (stateno = 440) && (movecontact)
trigger13 = (stateno = 450) && (movecontact)
[State -1, Shining Circuit Shoryuken]
type = ChangeState
value = 1265
triggerall = command = "Medium_Shining_Circuit_Shoryuken"
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 210) && (movecontact)
trigger4 = (stateno = 220) && (movecontact)
trigger5 = (stateno = 230) && (movecontact)
trigger6 = (stateno = 240) && (movecontact)
trigger7 = (stateno = 250) && (movecontact)
trigger8 = (stateno = 400) && (movecontact)
trigger9 = (stateno = 410) && (movecontact)
trigger10 = (stateno = 420) && (movecontact)
trigger11 = (stateno = 430) && (movecontact)
trigger12 = (stateno = 440) && (movecontact)
trigger13 = (stateno = 450) && (movecontact)
[State -1, Shining Circuit Shoryuken]
type = ChangeState
value = 1285
triggerall = command = "Hard_Shining_Circuit_Shoryuken"
trigger1 = (statetype = s) && ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 210) && (movecontact)
trigger4 = (stateno = 220) && (movecontact)
trigger5 = (stateno = 230) && (movecontact)
trigger6 = (stateno = 240) && (movecontact)
trigger7 = (stateno = 250) && (movecontact)
trigger8 = (stateno = 400) && (movecontact)
trigger9 = (stateno = 410) && (movecontact)
trigger10 = (stateno = 420) && (movecontact)
trigger11 = (stateno = 430) && (movecontact)
trigger12 = (stateno = 440) && (movecontact)
trigger13 = (stateno = 450) && (movecontact)

;-----------------------------
[State -1, Bolt Hadouken]
type = ChangeState
value = 1000
triggerall = command = "Bolt_Hadouken"
trigger1 = Statetype != A && ctrl
triggerall = numproj = 0
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 210) && (movecontact)
trigger4 = (stateno = 220) && (movecontact)
trigger5 = (stateno = 230) && (movecontact)
trigger6 = (stateno = 240) && (movecontact)
trigger7 = (stateno = 250) && (movecontact)
trigger8 = (stateno = 400) && (movecontact)
trigger9 = (stateno = 410) && (movecontact)
trigger10 = (stateno = 420) && (movecontact)
trigger11 = (stateno = 430) && (movecontact)
trigger12 = (stateno = 440) && (movecontact)
trigger13 = (stateno = 450) && (movecontact)
[State -1, Bolt Hadouken]
type = ChangeState
value = 1010
triggerall = command = "Medium_Bolt_Hadouken"
trigger1 = Statetype != A && ctrl
triggerall = numproj = 0
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 210) && (movecontact)
trigger4 = (stateno = 220) && (movecontact)
trigger5 = (stateno = 230) && (movecontact)
trigger6 = (stateno = 240) && (movecontact)
trigger7 = (stateno = 250) && (movecontact)
trigger8 = (stateno = 400) && (movecontact)
trigger9 = (stateno = 410) && (movecontact)
trigger10 = (stateno = 420) && (movecontact)
trigger11 = (stateno = 430) && (movecontact)
trigger12 = (stateno = 440) && (movecontact)
trigger13 = (stateno = 450) && (movecontact)
[State -1, Bolt Hadouken]
type = ChangeState
value = 1020
triggerall = command = "Hard_Bolt_Hadouken"
trigger1 = Statetype != A && ctrl
triggerall = numproj = 0
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 210) && (movecontact)
trigger4 = (stateno = 220) && (movecontact)
trigger5 = (stateno = 230) && (movecontact)
trigger6 = (stateno = 240) && (movecontact)
trigger7 = (stateno = 250) && (movecontact)
trigger8 = (stateno = 400) && (movecontact)
trigger9 = (stateno = 410) && (movecontact)
trigger10 = (stateno = 420) && (movecontact)
trigger11 = (stateno = 430) && (movecontact)
trigger12 = (stateno = 440) && (movecontact)
trigger13 = (stateno = 450) && (movecontact)

;-----------------------------
[State -1, Fire Bolt Hadouken]
type = ChangeState
value = 1030
triggerall = command = "Fire_Bolt_Hadouken"
trigger1 = Statetype != A && ctrl
triggerall = numproj = 0
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 210) && (movecontact)
trigger4 = (stateno = 220) && (movecontact)
trigger5 = (stateno = 230) && (movecontact)
trigger6 = (stateno = 240) && (movecontact)
trigger7 = (stateno = 250) && (movecontact)
trigger8 = (stateno = 400) && (movecontact)
trigger9 = (stateno = 410) && (movecontact)
trigger10 = (stateno = 420) && (movecontact)
trigger11 = (stateno = 430) && (movecontact)
trigger12 = (stateno = 440) && (movecontact)
trigger13 = (stateno = 450) && (movecontact)
[State -1, Fire Bolt Hadouken]
type = ChangeState
value = 1040
triggerall = command = "M_Fire_Bolt_Hadouken"
trigger1 = Statetype != A && ctrl
triggerall = numproj = 0
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 210) && (movecontact)
trigger4 = (stateno = 220) && (movecontact)
trigger5 = (stateno = 230) && (movecontact)
trigger6 = (stateno = 240) && (movecontact)
trigger7 = (stateno = 250) && (movecontact)
trigger8 = (stateno = 400) && (movecontact)
trigger9 = (stateno = 410) && (movecontact)
trigger10 = (stateno = 420) && (movecontact)
trigger11 = (stateno = 430) && (movecontact)
trigger12 = (stateno = 440) && (movecontact)
trigger13 = (stateno = 450) && (movecontact)
[State -1, Fire Bolt Hadouken]
type = ChangeState
value = 1050
triggerall = command = "H_Fire_Bolt_Hadouken"
trigger1 = Statetype != A && ctrl
triggerall = numproj = 0
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 210) && (movecontact)
trigger4 = (stateno = 220) && (movecontact)
trigger5 = (stateno = 230) && (movecontact)
trigger6 = (stateno = 240) && (movecontact)
trigger7 = (stateno = 250) && (movecontact)
trigger8 = (stateno = 400) && (movecontact)
trigger9 = (stateno = 410) && (movecontact)
trigger10 = (stateno = 420) && (movecontact)
trigger11 = (stateno = 430) && (movecontact)
trigger12 = (stateno = 440) && (movecontact)
trigger13 = (stateno = 450) && (movecontact)

;-----------------------------
[State -1, Zankuu Bolt Hadouken]
type = ChangeState
value = 1300
triggerall = command = "Zankuu_Bolt_Hadouken"
trigger1 =statetype = A
triggerall = numproj = 0
trigger1 = (statetype = A) && (ctrl)
trigger2 = (stateno = 630) && (movecontact)
trigger3 = (stateno = 640) && (movecontact)
trigger4 = (stateno = 641) && (movecontact)
trigger5 = (stateno = 600) && (movecontact)
trigger6 = (stateno = 610) && (movecontact)
trigger7 = (stateno = 620) && (movecontact)
trigger8 = (stateno = 650) && (movecontact)
trigger9 = (stateno = 651) && (movecontact)
[State -1, Zankuu Bolt Hadouken]
type = ChangeState
value = 1310
triggerall = command = "Medium_Zankuu_Bolt_Hadouken"
trigger1 =statetype = A
triggerall = numproj = 0
trigger1 = (statetype = A) && (ctrl)
trigger2 = (stateno = 630) && (movecontact)
trigger3 = (stateno = 640) && (movecontact)
trigger4 = (stateno = 641) && (movecontact)
trigger5 = (stateno = 600) && (movecontact)
trigger6 = (stateno = 610) && (movecontact)
trigger7 = (stateno = 620) && (movecontact)
trigger8 = (stateno = 650) && (movecontact)
trigger9 = (stateno = 651) && (movecontact)
[State -1, Zankuu Bolt Hadouken]
type = ChangeState
value = 1320
triggerall = command = "Hard_Zankuu_Bolt_Hadouken"
trigger1 = statetype = A
triggerall = numproj = 0
trigger1 = (statetype = A) && (ctrl)
trigger2 = (stateno = 630) && (movecontact)
trigger3 = (stateno = 640) && (movecontact)
trigger4 = (stateno = 641) && (movecontact)
trigger5 = (stateno = 600) && (movecontact)
trigger6 = (stateno = 610) && (movecontact)
trigger7 = (stateno = 620) && (movecontact)
trigger8 = (stateno = 650) && (movecontact)
trigger9 = (stateno = 651) && (movecontact)

;-----------------------------
[State -1, Air Bolt Hadouken]
type = ChangeState
value = 1330
triggerall = command = "Air_Bolt_Hadouken"
trigger1 =statetype = A
triggerall = numproj = 0
trigger1 = (statetype = A) && (ctrl)
trigger2 = (stateno = 630) && (movecontact)
trigger3 = (stateno = 640) && (movecontact)
trigger4 = (stateno = 641) && (movecontact)
trigger5 = (stateno = 600) && (movecontact)
trigger6 = (stateno = 610) && (movecontact)
trigger7 = (stateno = 620) && (movecontact)
trigger8 = (stateno = 650) && (movecontact)
trigger9 = (stateno = 651) && (movecontact)
[State -1, Air Bolt Hadouken]
type = ChangeState
value = 1340
triggerall = command = "Air_M_Bolt_Hadouken"
trigger1 =statetype = A
triggerall = numproj = 0
trigger1 = (statetype = A) && (ctrl)
trigger2 = (stateno = 630) && (movecontact)
trigger3 = (stateno = 640) && (movecontact)
trigger4 = (stateno = 641) && (movecontact)
trigger5 = (stateno = 600) && (movecontact)
trigger6 = (stateno = 610) && (movecontact)
trigger7 = (stateno = 620) && (movecontact)
trigger8 = (stateno = 650) && (movecontact)
trigger9 = (stateno = 651) && (movecontact)
[State -1, Air Bolt Hadouken]
type = ChangeState
value = 1350
triggerall = command = "Air_H_Bolt_Hadouken"
trigger1 = statetype = A
triggerall = numproj = 0
trigger1 = (statetype = A) && (ctrl)
trigger2 = (stateno = 630) && (movecontact)
trigger3 = (stateno = 640) && (movecontact)
trigger4 = (stateno = 641) && (movecontact)
trigger5 = (stateno = 600) && (movecontact)
trigger6 = (stateno = 610) && (movecontact)
trigger7 = (stateno = 620) && (movecontact)
trigger8 = (stateno = 650) && (movecontact)
trigger9 = (stateno = 651) && (movecontact)

;-------------------------------------------------------------------------
[State -1, Air Thunder Shock Zankukyakyu]
type = ChangeState
value = 1150
triggerall = command = "Air_Thunder_Shock_Zankukyakyu"
trigger1 = (statetype = A) && (ctrl) 
trigger2 = (stateno = 630) && (movecontact)
trigger3 = (stateno = 640) && (movecontact)
trigger4 = (stateno = 641) && (movecontact)
trigger5 = (stateno = 600) && (movecontact)
trigger6 = (stateno = 610) && (movecontact)
trigger7 = (stateno = 620) && (movecontact)
trigger8 = (stateno = 650) && (movecontact)
trigger9 = (stateno = 651) && (movecontact)
[State -1, Air Thunder Shock Zankukyakyu]
type = ChangeState
value = 1160
triggerall = !var(59)
triggerall = command = "Air_Medium_Thunder_Shock_Zankukyakyu"
trigger1 =(statetype = A) && (ctrl)
trigger2 = (stateno = 630) && (movecontact)
trigger3 = (stateno = 640) && (movecontact)
trigger4 = (stateno = 641) && (movecontact)
trigger5 = (stateno = 600) && (movecontact)
trigger6 = (stateno = 610) && (movecontact)
trigger7 = (stateno = 620) && (movecontact)
trigger8 = (stateno = 650) && (movecontact)
trigger9 = (stateno = 651) && (movecontact)
[State -1, Air Thunder Shock Zankukyakyu]
type = ChangeState
value = 1170
triggerall = command = "Air_Hard_Thunder_Shock_Zankukyakyu"
trigger1 =(statetype = A) && (ctrl)
trigger2 = (stateno = 630) && (movecontact)
trigger3 = (stateno = 640) && (movecontact)
trigger4 = (stateno = 641) && (movecontact)
trigger5 = (stateno = 600) && (movecontact)
trigger6 = (stateno = 610) && (movecontact)
trigger7 = (stateno = 620) && (movecontact)
trigger8 = (stateno = 650) && (movecontact)
trigger9 = (stateno = 651) && (movecontact)

;-----------------------------
[State -1, Thunder Shock Zankukyakyu]
type = ChangeState
value = 1100
triggerall = !var(59)
triggerall = command = "Thunder_Shock_Zankukyakyu"
trigger1 = (movetype !=H) && ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 210) && (movecontact)
trigger4 = (stateno = 220) && (movecontact)
trigger5 = (stateno = 230) && (movecontact)
trigger6 = (stateno = 240) && (movecontact)
trigger7 = (stateno = 250) && (movecontact)
trigger8 = (stateno = 400) && (movecontact)
trigger9 = (stateno = 410) && (movecontact)
trigger10 = (stateno = 420) && (movecontact)
trigger11 = (stateno = 430) && (movecontact)
trigger12 = (stateno = 440) && (movecontact)
trigger13 = (stateno = 450) && (movecontact)
[State -1, Thunder Shock Zankukyakyu]
type = ChangeState
value = 1110
triggerall = command = "Medium_Thunder_Shock_Zankukyakyu"
trigger1 =(movetype !=H) && ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 210) && (movecontact)
trigger4 = (stateno = 220) && (movecontact)
trigger5 = (stateno = 230) && (movecontact)
trigger6 = (stateno = 240) && (movecontact)
trigger7 = (stateno = 250) && (movecontact)
trigger8 = (stateno = 400) && (movecontact)
trigger9 = (stateno = 410) && (movecontact)
trigger10 = (stateno = 420) && (movecontact)
trigger11 = (stateno = 430) && (movecontact)
trigger12 = (stateno = 440) && (movecontact)
trigger13 = (stateno = 450) && (movecontact)
[State -1, Thunder Shock Zankukyakyu]
type = ChangeState
value = 1120
triggerall = !var(59)
triggerall = command = "Hard_Thunder_Shock_Zankukyakyu"
trigger1 =(movetype !=H) && ctrl
trigger2 = (stateno = 200) && (movecontact)
trigger3 = (stateno = 210) && (movecontact)
trigger4 = (stateno = 220) && (movecontact)
trigger5 = (stateno = 230) && (movecontact)
trigger6 = (stateno = 240) && (movecontact)
trigger7 = (stateno = 250) && (movecontact)
trigger8 = (stateno = 400) && (movecontact)
trigger9 = (stateno = 410) && (movecontact)
trigger10 = (stateno = 420) && (movecontact)
trigger11 = (stateno = 430) && (movecontact)
trigger12 = (stateno = 440) && (movecontact)
trigger13 = (stateno = 450) && (movecontact)

;-----------------------------
[State -1, Diving Rocket Kujinkyaku]
type = ChangeState
value = 1500
triggerall = command = "Diving_Rocket_Kujinkyaku"
trigger1 = (statetype = A) && (ctrl)
trigger2 = stateno = 600
trigger3 = stateno = 610
trigger4 = stateno = 640
trigger5 = stateno = 650
[State -1, Diving Rocket Kujinkyaku]
type = ChangeState
value = 1520
triggerall = command = "M_Diving_Rocket_Kujinkyaku"
trigger1 = (statetype = A) && (ctrl)
trigger2 = stateno = 600
trigger3 = stateno = 610
trigger4 = stateno = 640
trigger5 = stateno = 650
[State -1, Diving Rocket Kujinkyaku]
type = ChangeState
value = 1540
triggerall = command = "H_Diving_Rocket_Kujinkyaku"
trigger1 = (statetype = A) && (ctrl)
trigger2 = stateno = 600
trigger3 = stateno = 610
trigger4 = stateno = 640
trigger5 = stateno = 650

;---------------------------------------------------------------------------
;Overhead Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = !var(59)
triggerall = command = "Overhead_Throw"
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;Kick Throw
[State -1, Throw]
type = ChangeState
value = 830
triggerall = !var(59)
triggerall = command = "Kick_Throw"
triggerall = statetype = S
triggerall = ctrl
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S)
trigger2 = p2movetype != H

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
trigger4 = stateno = 105 && time > 4

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
trigger6 = stateno = 105 && time > 4

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
trigger6 = stateno = 105 && time > 4

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
trigger7 = stateno = 105 && time > 4

;-----------------------------
[State -1, A]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = Statetype = A && ctrl
trigger2 = (StateNo = 600) && (Movecontact)
trigger3 = stateno = 105 && time > 4

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
[State -1, X]
type = ChangeState
value = 200
triggerall = Command = "x"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)

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
[State -1, Y]
type = ChangeState
value = IfElse(P2BodyDist X > 28,210,211)
triggerall = Command = "y"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact) && time > 3
trigger3 = (StateNo = 230) && (Movecontact) && time > 3

;-----------------------------
[State -1, Z]
type = ChangeState
value = IfElse(P2BodyDist X > 28,220,221)
triggerall = Command = "z"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact) && time > 3
trigger3 = (StateNo = 230) && (Movecontact) && time > 3
trigger4 = (StateNo = 210) && (Movecontact) && time > 3
trigger5 = (StateNo = 211) && (Movecontact) && time > 3
trigger6 = (StateNo = 240) && (Movecontact) && time > 3
trigger7 = (StateNo = 241) && (Movecontact) && time > 3
 
;-----------------------------
[State -1, C]
type = ChangeState
value = IfElse(P2BodyDist X > 28,250,251)
triggerall = Command = "c"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 210) && (Movecontact)
trigger5 = (StateNo = 211) && (Movecontact)
trigger6 = (StateNo = 240) && (Movecontact)
trigger7 = (StateNo = 241) && (Movecontact)
trigger8 = (StateNo = 221) && (Movecontact)
trigger9 = (StateNo = 220) && (Movecontact)

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
trigger9 = (StateNo = 241) && (Movecontact)
trigger10 = (StateNo = 220) && (Movecontact)
trigger11 = (StateNo = 221) && (Movecontact)
trigger12 = (StateNo = 410) && (Movecontact)
trigger13 = (StateNo = 440) && (Movecontact)

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
[State -1, s]
type = ChangeState
value = 195
triggerall = Command = "s"
triggerall = Command != "holddown"
triggerall = stateno != 100
trigger1 = (StateType = S) && (Ctrl)

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
value = IfElse(P2BodyDist X > 28,240,241)
triggerall = Command = "b"
triggerall = Command != "holddown"
trigger1 = (StateType = S) && (Ctrl)
trigger2 = (StateNo = 200) && (Movecontact)
trigger3 = (StateNo = 230) && (Movecontact)
trigger4 = (StateNo = 210) && (Movecontact)
trigger5 = (StateNo = 211) && (Movecontact)

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
trigger9 = (StateNo = 241) && (Movecontact)
trigger10 = (StateNo = 220) && (Movecontact)
trigger11 = (StateNo = 221) && (Movecontact)

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
trigger1 = stateno = 420 && movehit

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

;---------------------------------------------------------------------------
;----------------------------- Recovery Roll -------------------------------
;---------------------------------------------------------------------------
;Forward Wakeup Roll
[State -1, Forward Wakeup Roll]
type = ChangeState
value = 900
triggerall = (stateno = 5110) && time >= 5
trigger1 =  Life
trigger1 = command = "Forward_Wakeup_Roll"

;---------------------------------------------------------------------------
;Backward Wakeup Roll
[State -1, Backward Wakeup Roll]
type = ChangeState
value = 920
triggerall = (stateno = 5110) && time >= 5
trigger1 = life
trigger1 =  command = "Backward_Wakeup_Roll"

