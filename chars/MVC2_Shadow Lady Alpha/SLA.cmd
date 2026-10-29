; The CMD file.
;Chun Li by WhiteMagic2002 Animation Actions
;---------------------------------------------------------------------------
;AI Stuff
[command]
name = "CPU1"
command = D, D, D, D, D, D, D, D
time = 1

[command]
name = "CPU11"
command = D, D, D, D, D, D, D, D
time = 1

[command]
name = "CPU12"
command = D, D, D, D, D, D, D, D
time = 1

[command]
name = "CPU2"
command = z, z, z, z, z, z, z, z
time = 1

[command]
name = "CPU13"
command = z, z, z, z, z, z, z, z
time = 1

[command]
name = "CPU14"
command = z, z, z, z, z, z, z, z
time = 1

[command]
name = "CPU3"
command = B, B, B, B, B, B, B, B
time = 1

[command]
name = "CPU15"
command = B, B, B, B, B, B, B, B
time = 1

[command]
name = "CPU16"
command = B, B, B, B, B, B, B, B
time = 1

[command]
name = "CPU4"
command = x, x, x, x, x, x, x, x
time = 1

[command]
name = "CPU17"
command = x, x, x, x, x, x, x, x
time = 1

[command]
name = "CPU18"
command = x, x, x, x, x, x, x, x
time = 1

[command]
name = "CPU5"
command = U, U, U, U, U, U, U, U
time = 1

[command]
name = "CPU19"
command = U, U, U, U, U, U, U, U
time = 1

[command]
name = "CPU20"
command = U, U, U, U, U, U, U, U
time = 1

[command]
name = "CPU6"
command = a, a, a, a, a, a, a, a
time = 1

[command]
name = "CPU21"
command = a, a, a, a, a, a, a, a
time = 1

[command]
name = "CPU22"
command = a, a, a, a, a, a, a, a
time = 1

[command]
name = "CPU7"
command = F, F, F, F, F, F, F, F
time = 1

[command]
name = "CPU23"
command = F, F, F, F, F, F, F, F
time = 1

[command]
name = "CPU24"
command = F, F, F, F, F, F, F, F
time = 1

[command]
name = "CPU8"
command = b, b, b, b, b, b, b, b
time = 1

[command]
name = "CPU25"
command = b, b, b, b, b, b, b, b
time = 1

[command]
name = "CPU26"
command = b, b, b, b, b, b, b, b
time = 1

[command]
name = "CPU9"
command = y, y, y, y, y, y, y, y
time = 1

[command]
name = "CPU27"
command = y, y, y, y, y, y, y, y
time = 1

[command]
name = "CPU28"
command = y, y, y, y, y, y, y, y
time = 1

[command]
name = "CPU10"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU29"
command = s, s, s, s, s, s, s, s
time = 1

[command]
name = "CPU30"
command = s, s, s, s, s, s, s, s
time = 1

;-| Super Motions |--------------------------------------------------------

[Command]
name = "lkicksup"
command = D, DF, F, a+b
time = 30
[Command]
name = "lkicksup"
command = D, DF, F, a+c
time = 30
[Command]
name = "lkicksup"
command = D, DF, F, b+c
time = 30

[Command]
name = "kikou"
command = D, DF, F, x+y
time = 30
[Command]
name = "kikou"
command = D, DF, F, x+z
time = 30
[Command]
name = "kikou"
command = D, DF, F, z+y
time = 30

[Command]
name = "Final Mission"
command = ~20$B,F,B,F,a+b
time = 50
[Command]
name = "Final Mission"
command = ~20$B,F,B,F,a+c
time = 50
[Command]
name = "Final Mission"
command = ~20$B,F,B,F,b+c
time = 50

;-| Special Motions |------------------------------------------------------

[Command]
name = "dropa"
command = ~DF, D, DB, B, a
time = 30
[Command]
name = "dropb"
command = ~DF, D, DB, B, b
time = 30
[Command]
name = "dropc"
command = ~DF, D, DB, B, c
time = 30

[Command]
name = "missile"
command = ~D, DF, F, a
time = 15
[Command]
name = "missile"
command = ~D, DF, F, b
time = 15
[Command]
name = "missile"
command = ~D, DF, F, c
time = 15

[Command]
name = "spina"
command = ~F, D, F, a
time = 30
[Command]
name = "spinb"
command = ~F, D, F, b
time = 30
[Command]
name = "spinc"
command = ~F, D, F, c
time = 30

[Command]
name = "whirla"
command = D, DB, B, a
time = 30
[Command]
name = "whirlb"
command = D, DB, B, b
time = 30
[Command]
name = "whirlc"
command = D, DB, B, c
time = 30

[Command]
name = "LKWeak"
command = a, a, a, a
time = 30
[Command]
name = "LKmed"
command = b, b, b, b
time = 30
[Command]
name = "LKhard"
command = c, c, c, c
time = 30

[Command]
name = "LKWeak2"
command = a
time = 30
[Command]
name = "LKmed2"
command = b
time = 30
[Command]
name = "LKhard2"
command = c
time = 30

[Command]
name = "plasma"
command = ~F, D, F, x	;~D, DB, B, x	;
time = 30
[Command]
name = "plasma"
command = ~F, D, F, y	;~D, DB, B, y	;
time = 30
[Command]
name = "plasma"
command = ~F, D, F, z	;~D, DB, B, z	;
time = 30

[Command]
name = "kioken"
command = ~D, DF, F, x
time = 30

[Command]
name = "kioken"
command = ~D, DF, F, y
time = 30

[Command]
name = "kioken"
command = ~D, DF, F, z
time = 30

[Command]
name = "superjump"
command = $D, $U

[Command]
name = "superjump"
command = a+b

[Command]
name = "superjump"
command = c+b

[Command]
name = "superjump"
command = a+c

[Command]
name = "recoveryroll"
command = ~B, DB, D, a
[Command]
name = "recoveryroll"
command = ~B, DB, D, b
[Command]
name = "recoveryroll"
command = ~B, DB, D, c

[Command]
name = "infinitycounter"
command = z+c

[Command]
name = "infinitycounter"
command = c+z

[Command]
name = "PP"
command = x+y

[Command]
name = "PP"
command = y+z

[Command]
name = "PP"
command = z+x

;[Command]
;name = "infinitycounter"
;command = ~B, DB, D, x
;[Command]
;name = "infinitycounter"
;command = ~B, DB, D, y
;[Command]
;name = "infinitycounter"
;command = ~B, DB, D, z

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "jhk2"
command = /$F,c
time = 1

[Command]
name = "twistkick"
command = /$DF,c
time = 1

[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
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
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
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

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_start"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1

;---------------------------------------------------------------------------
				[Statedef -1]
;---------------------------------------------------------------------------

;  AI CPU
[State -1, A.I.]
type = VarSet
var(57) = 1
trigger1 = command = "CPU1"
trigger2 = command = "CPU2"
trigger3 = command = "CPU3"
trigger4 = command = "CPU4"
trigger5 = command = "CPU5"
trigger6 = command = "CPU6"
trigger7 = command = "CPU7"
trigger8 = command = "CPU8"
trigger9 = command = "CPU9"
trigger10 = command = "CPU10"
trigger11 = command = "CPU11"
trigger12 = command = "CPU12"
trigger13 = command = "CPU13"
trigger14 = command = "CPU14"
trigger15 = command = "CPU15"
trigger16 = command = "CPU16"
trigger17 = command = "CPU17"
trigger18 = command = "CPU18"
trigger19 = command = "CPU19"
trigger20 = command = "CPU20"
trigger21 = command = "CPU21"
trigger22 = command = "CPU22"
trigger23 = command = "CPU23"
trigger24 = command = "CPU24"
trigger25 = command = "CPU25"
trigger26 = command = "CPU26"
trigger27 = command = "CPU27"
trigger28 = command = "CPU28"
trigger29 = command = "CPU29"
trigger30 = command = "CPU30"
trigger31 = TeamSide = 2 && TeamMode =Single && IsHomeTeam = 1

;===========================================================================

;---------------------------------------------------------------------------
[State -1, Galaxy Missile]
type = changestate
value = 2600
triggerall = command = "lkicksup"
triggerall = power >=1000
trigger1 = statetype != a
trigger1 = ctrl = 1
trigger2 = stateno = 100
trigger3 = stateno = 200
;trigger3 = movecontact
trigger4 = stateno = 230
;trigger4 = movecontact
trigger5 = stateno = 210
;trigger5 = movecontact
trigger6 = stateno = 240
;trigger6 = movecontact
trigger7 = stateno = 220
;trigger7 = movecontact
trigger8 = stateno = 400
;trigger8 = movecontact
trigger9 = stateno = 430
;trigger9 = movecontact
trigger10 = stateno = 410
;trigger10 = movecontact
trigger11 = stateno = 420
;trigger11 = movecontact
trigger12 = stateno = 440
;trigger12 = movecontact
trigger13 = stateno = 250
;trigger13 = movecontact
trigger14 = stateno = 450
;trigger14 = movecontact

;---------------------------------------------------------------------------
[State -1, Kikou]
type = changestate
value = 2000
triggerall = command = "kikou"
triggerall = power >=1000
trigger1 = statetype != a
trigger1 = ctrl = 1
trigger2 = stateno = 100
trigger3 = stateno = 200
;trigger3 = movecontact
trigger4 = stateno = 230
;trigger4 = movecontact
trigger5 = stateno = 210
;trigger5 = movecontact
trigger6 = stateno = 240
;trigger6 = movecontact
trigger7 = stateno = 220
;trigger7 = movecontact
trigger8 = stateno = 400
;trigger8 = movecontact
trigger9 = stateno = 430
;trigger9 = movecontact
trigger10 = stateno = 410
;trigger10 = movecontact
trigger11 = stateno = 420
;trigger11 = movecontact
trigger12 = stateno = 440
;trigger12 = movecontact
trigger13 = stateno = 250
;trigger13 = movecontact
trigger14 = stateno = 450
;trigger14 = movecontact

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 6200
triggerall = Var(59) != 2
triggerall = command = "Final Mission"
triggerall = power >= 3000		;triggerall = power = 3000
triggerall = Var(54) != 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact
trigger3 = stateno = [100,105]
trigger3 = time >= 4
trigger4 = statetype != A
trigger4 = Var(56) = 1

;---------------------------------------------------------------------------
[State -1, Dropkick A]
type = changestate
value = 1400
triggerall = command = "dropa"
trigger1 = statetype != a
trigger1 = ctrl = 1
trigger2 = stateno = 100
trigger3 = stateno = 200
;trigger3 = movecontact
trigger4 = stateno = 230
;trigger4 = movecontact
trigger5 = stateno = 210
;trigger5 = movecontact
trigger6 = stateno = 240
;trigger6 = movecontact
trigger7 = stateno = 220
;trigger7 = movecontact
trigger8 = stateno = 400
;trigger8 = movecontact
trigger9 = stateno = 430
;trigger9 = movecontact
trigger10 = stateno = 410
;trigger10 = movecontact
trigger11 = stateno = 420
;trigger11 = movecontact
trigger12 = stateno = 440
;trigger12 = movecontact
trigger13 = stateno = 250
;trigger13 = movecontact
trigger14 = stateno = 450
;trigger14 = movecontact

;---------------------------------------------------------------------------
[State -1, Dropkick B]
type = changestate
value = 1410
triggerall = command = "dropb"
trigger1 = statetype != a
trigger1 = ctrl = 1
trigger2 = stateno = 100
trigger3 = stateno = 200
;trigger3 = movecontact
trigger4 = stateno = 230
;trigger4 = movecontact
trigger5 = stateno = 210
;trigger5 = movecontact
trigger6 = stateno = 240
;trigger6 = movecontact
trigger7 = stateno = 220
;trigger7 = movecontact
trigger8 = stateno = 400
;trigger8 = movecontact
trigger9 = stateno = 430
;trigger9 = movecontact
trigger10 = stateno = 410
;trigger10 = movecontact
trigger11 = stateno = 420
;trigger11 = movecontact
trigger12 = stateno = 440
;trigger12 = movecontact
trigger13 = stateno = 250
;trigger13 = movecontact
trigger14 = stateno = 450
;trigger14 = movecontact

;---------------------------------------------------------------------------
[State -1, Dropkick C]
type = changestate
value = 1420
triggerall = command = "dropc"
trigger1 = statetype != a
trigger1 = ctrl = 1
trigger2 = stateno = 100
trigger3 = stateno = 200
;trigger3 = movecontact
trigger4 = stateno = 230
;trigger4 = movecontact
trigger5 = stateno = 210
;trigger5 = movecontact
trigger6 = stateno = 240
;trigger6 = movecontact
trigger7 = stateno = 220
;trigger7 = movecontact
trigger8 = stateno = 400
;trigger8 = movecontact
trigger9 = stateno = 430
;trigger9 = movecontact
trigger10 = stateno = 410
;trigger10 = movecontact
trigger11 = stateno = 420
;trigger11 = movecontact
trigger12 = stateno = 440
;trigger12 = movecontact
trigger13 = stateno = 250
;trigger13 = movecontact
trigger14 = stateno = 450
;trigger14 = movecontact

;---------------------------------------------------------------------------
[State -1, Lightning Kick Air]
type = changestate
value = 1149
triggerall = command = "LKWeak" || command = "LKmed" || command = "LKhard"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 630
;trigger4 = movecontact
trigger5 = stateno = 635
;trigger5 = movecontact
trigger6 = stateno = 620
trigger6 = movecontact
trigger7 = stateno = 640
;trigger7 = movecontact
trigger8 = stateno = 645
;trigger8 = movecontact
trigger9 = stateno = 650
;trigger9 = movecontact
trigger10 = stateno = 655
;trigger10 = movecontact

;---------------------------------------------------------------------------
[State -1, Lightning Kick Ground]
type = changestate
value = 1097
triggerall = command = "LKWeak" || command = "LKmed" || command = "LKhard"
trigger1 = statetype != a
trigger1 = ctrl = 1
trigger2 = stateno = 100
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 230
;trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = movecontact
trigger6 = stateno = 240
;trigger6 = movecontact
trigger7 = stateno = 220
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 430
;trigger9 = movecontact
trigger10 = stateno = 410
trigger10 = movecontact
trigger11 = stateno = 420
trigger11 = movecontact
trigger12 = stateno = 440
;trigger12 = movecontact
trigger13 = stateno = 250
;trigger13 = movecontact
trigger14 = stateno = 450
;trigger14 = movecontact

;---------------------------------------------------------------------------
[State -1, Lightning Kick Ground]
type = changestate
value = 1700
triggerall = command = "plasma"
trigger1 = statetype != a
trigger1 = ctrl = 1
trigger2 = stateno = 100
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 230
;trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = movecontact
trigger6 = stateno = 240
;trigger6 = movecontact
trigger7 = stateno = 220
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 430
;trigger9 = movecontact
trigger10 = stateno = 410
trigger10 = movecontact
trigger11 = stateno = 420
trigger11 = movecontact
trigger12 = stateno = 440
;trigger12 = movecontact
trigger13 = stateno = 250
;trigger13 = movecontact
trigger14 = stateno = 450
;trigger14 = movecontact

;---------------------------------------------------------------------------
[State -1, Kioken]
type = changestate
value = 1000
triggerall = command = "kioken"
trigger1 = statetype != a
trigger1 = ctrl = 1
trigger2 = stateno = 100
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 220
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 410
trigger10 = movecontact
trigger11 = stateno = 420
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact
trigger13 = stateno = 250
trigger13 = movecontact
trigger14 = stateno = 450
trigger14 = movecontact

;---------------------------------------------------------------------------
;Missile Attack
[State -1,]
type = ChangeState
value = 1600
triggerall = command = "missile"
triggerall = var(20) != 20
triggerall = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
; Super Jump
[State -1, Super Jump]
type = changestate
value = 900
trigger1 = command = "superjump"
trigger1 = statetype != a
trigger1 = ctrl = 1
trigger2 = stateno = 250
trigger2 = movehit
trigger2 = command = "holdup" || command = "holdupback" || command = "holdupfwd"

;===========================================================================
;Recovery Roll
[State -1, Falling]
type = VarSet
triggerall = (StateNo = 5030) || (StateNo = 5035) || (StateNo = 5050) || (StateNo = 5071)
triggerall = alive
trigger1 = ((Command = "recoveryroll") || (Command = "infinitycounter")) && (Alive = 1)
v = 20
value = ifelse((Command = "infinitycounter"),1,2)

[State -1, Rolling]
type = ChangeState
value = 850
triggerall = Var(20) = [1,2]
trigger1 = (Pos Y >= 0) && (Vel Y > 0)
trigger1 = stateno != 5210
trigger1 = prevstateno != 5210

;---------------------------------------------------------------------------
;Infinity Counter

[State -1, Infinity Counter]
type = ChangeState
value = 851
trigger1 = statetype !=A
trigger1 = (Command = "infinitycounter") && (Power >= 1000) && (StateNo = [150,155]) && (Anim != [860,862])

;---------------------------------------------------------------------------

; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 101
triggerall = var(24) != 1
trigger1 = command = "FF"
trigger1 = statetype = A
trigger1 = ctrl

; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = command = "PP"	;command = "y" || command = "z"
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

;===========================================================================

;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 100
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 430
trigger6 = movecontact

; Stand Strong Punch
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact

;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact

;---------------------------------------------------------------------------
; Standing Medium Kick
[State -1, Standing Medium Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 430
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact

;---------------------------------------------------------------------------
; Standing Strong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 220
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 410
trigger10 = movecontact
trigger11 = stateno = 420
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact

;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 100

;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact
trigger4 = stateno = 100
trigger5 = stateno = 400
trigger5 = movecontact
trigger6 = stateno = 430
trigger6 = movecontact

;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 400
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 440
trigger10 = movecontact

;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact

;---------------------------------------------------------------------------
; Crouching Medium Kick
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact
trigger7 = stateno = 430
trigger7 = movecontact
trigger8 = stateno = 410
trigger8 = movecontact

;---------------------------------------------------------------------------
; Crouching Strong Kick 2
[State -1, Crouching Strong Kick 2]
type = ChangeState
value = 455
triggerall = command = "twistkick"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 220
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 410
trigger10 = movecontact
trigger11 = stateno = 420
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact

;---------------------------------------------------------------------------
; Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 100
trigger3 = stateno = 200
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 210
trigger5 = movecontact
trigger6 = stateno = 240
trigger6 = movecontact
trigger7 = stateno = 220
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 430
trigger9 = movecontact
trigger10 = stateno = 410
trigger10 = movecontact
trigger11 = stateno = 420
trigger11 = movecontact
trigger12 = stateno = 440
trigger12 = movecontact

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 630
trigger3 = movecontact
trigger4 = stateno = 635
trigger4 = movecontact

;---------------------------------------------------------------------------
; Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 630
trigger3 = movecontact
trigger4 = stateno = 635
trigger4 = movecontact
trigger5 = stateno = 610
trigger5 = movecontact
trigger6 = stateno = 640
trigger6 = movecontact

;---------------------------------------------------------------------------
; Jump Light Kick 2
[State -1, Jump Light Kick]
type = ChangeState
value = 635
triggerall = command = "up_a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact

;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact

;---------------------------------------------------------------------------
; Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 630
trigger4 = movecontact
trigger5 = stateno = 635
trigger5 = movecontact

;---------------------------------------------------------------------------
; Jump Strong Kick 2 
[State -1, Jump Strong Kick]
type = ChangeState
value = 655
triggerall = command = "jhk2"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 630
trigger4 = movecontact
trigger5 = stateno = 635
trigger5 = movecontact
trigger6 = stateno = 620
trigger6 = movecontact
trigger7 = stateno = 640
trigger7 = movecontact

;---------------------------------------------------------------------------
; Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 630
trigger4 = movecontact
trigger5 = stateno = 635
trigger5 = movecontact
trigger6 = stateno = 620
trigger6 = movecontact
trigger7 = stateno = 640
trigger7 = movecontact

;---------------------------------------------------------------------------
[State -1,Wall Jump]
type = ChangeState
value = 123
triggerall = var(23) != 1
trigger1 = ((backEdgeDist) > -10 && (backEdgeDist) < 2)
triggerall = Pos Y <= -50
triggerall = Vel X != 0
triggerall = statetype = A
triggerall = ctrl = 1
trigger1 = command = "holdfwd"
trigger2 = ((frontEdgeDist) > -10 && (frontEdgeDist) < 2)
trigger2 = command = "holdback"

;-| Push Block |---------------------------------------------------------

;Push Block (Stand)
[State -1]
type = ChangeState
value = 171
triggerall = var(59) = 0
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" &&  command = "z")
trigger1 = stateno = [150,151]

;Push Block (crouching)
[State -1]
type = ChangeState
value = 172
triggerall = var(59) = 0
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" &&  command = "z")
trigger1 = stateno = [152,153]

;Push Block (aerial)
[State -1]
type = ChangeState
value = 173
triggerall = var(59) = 0
triggerall = (command = "x" && command = "y") || (command = "y" && command = "z") || (command = "x" &&  command = "z")
trigger1 = stateno = 154
trigger2 = stateno = 155
trigger2 = Time <= 10
