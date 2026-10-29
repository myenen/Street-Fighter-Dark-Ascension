;====================================================================
;=											  =
;=				MECH ZANGIEF'S COMMAND				  =
;=											  =
;=										        =
;====================================================================

;-| Super Motions |--------------------------------------------------------
[command]
name = "Ultra Final Atomic Buster"
command = ~D, B, a+b
time = 22 

[command]
name = "Ultra Final Atomic Buster"
command = ~D, B, a+c
time = 22

[command]
name = "Ultra Final Atomic Buster"
command = ~D, B, b+c
time = 22

[command]
name = "Final Atomic Buster"
command = ~D, F, x+y
time = 22

[command]
name = "Final Atomic Buster"
command = ~D, F, x+z
time = 22

[command]
name = "Final Atomic Buster"
command = ~D, F, y+z
time = 22

[command]
name = "Aerial Russian Slam"
command = ~D, F, a+b
time = 30

[command]
name = "Aerial Russian Slam"
command = ~D, F, b+c
time = 30

[command]
name = "Aerial Russian Slam"
command = ~D, F, a+c
time = 30

[command]
name = "Fire"
command = ~D, F, D, F, x
time = 30

[command]
name = "Fire"
command = ~D, F, D, F, y
time = 30

[command]
name = "Fire"
command = ~D, F, D, F, z
time = 30

[command]
name = "Standing Lariat"
command = z+c
time = 30

[command]
name = "Standing Lariat"
command = y+b
time = 30

[command]
name = "Standing Lariat"
command = x+a
time = 30

[command]
name = "Aerial Lariat"
command = ~D, B, x+y
time = 30

[command]
name = "Aerial Lariat"
command = ~D, B, x+z
time = 30

[command]
name = "Aerial Lariat"
command = ~D, B, y+z
time = 30

;-| Special Motions |------------------------------------------------------
[Command]
name = "throwup"
command = ~B, D, DB, x

[Command]
name = "throwup"
command = ~B, D, DB, y

[Command]
name = "throwup"
command = ~B, D, DB, z

[command]
name = "Pile Driver_X"
command = ~B, D, F, x

[command]
name = "Pile Driver_Y"
command = ~B, D, F, y

[command]
name = "Pile Driver_Z"
command = ~B, D, F, z

[command]
name = "Pile Driver_Air"
command = ~B, D, F, x

[command]
name = "Pile Driver_Air"
command = ~B, D, F, y

[command]
name = "Pile Driver_Air"
command = ~B, D, F, z

[command]
name = "Atomic Suplex"
command = ~F, D, F, a

[command]
name = "Atomic Suplex"
command = ~F, D, F, b

[command]
name = "Atomic Suplex"
command = ~F, D, F, c

[command]
name = "Russian Slam"
command = ~B, D, B, a

[command]
name = "Russian Slam"
command = ~B, D, B, b

[command]
name = "Russian Slam"
command = ~B, D, B, c

[command]
name = "Vodka"
command = ~D, DF, F, x

[command]
name = "Vodka"
command = ~D, DF, F, y

[command]
name = "Vodka"
command = D, DF, F, z

[command]
name = "Flying Powerbomb"
command = ~B, D, F, a

[command]
name = "Flying Powerbomb"
command = ~B, D, F, b

[command]
name = "Flying Powerbomb"
command = ~B, D, F, c

[command]
name = "Banishing Flat"
command = ~F, D, F, x

[command]
name = "Banishing Flat"
command = ~F, D, F, y

[command]
name = "Banishing Flat"
command = ~F, D, F, z

[command]
name = "fastlariat"
command = a+b

[command]
name = "fastlariat"
command = b+c

[command]
name = "fastlariat"
command = a+c

[command]
name = "lariat"
command = x+y

[command]
name = "lariat"
command = y+z

[command]
name = "lariat"
command = x+z

[command]
name = "qcb_A"
command = ~D, DB, B, a

[command]
name = "qcb_B"
command = ~D, DB, B, b

;-| DoUBle tap |-----------------------------------------------------------
[command]
name = "ff";required (do not remove)
command = F, F
time = 10

[command]
name = "bb";required (do not remove)
command = B, B
time = 10

[command]
name = "superjump"
command = ~D, U
time = 10

[command]
name = "superjump"
command = ~D, UF
time = 10

[command]
name = "superjump"
command = ~D, UB
time = 10

;-| 2/3 button combination |-----------------------------------------------
[command]
name = "recovery";required (do not remove)
command = a+b
time = 1

[command]
name = "ab"
command = a+b
time = 1

;-| Dir + button |---------------------------------------------------------
[command]
name = "fwd_A"
command = /F,a
time = 1

[command]
name = "up_p"
command = /$U,x
time = 1

[command]
name = "up_p"
command = /$U,y
time = 1

[command]
name = "up_p"
command = /$U,z
time = 1

[command]
name = "fwd_B"
command = /F,b
time = 1

[command]
name = "fwd_Y"
command = /$F,y
time = 1

[command]
name = "fwd_C"
command = /F,c
time = 1

[command]
name = "downfwd_A"
command = /DF,a
time = 1

[command]
name = "downfwd_B"
command = /DF,b
time = 1

[command]
name = "back_A"
command = /B,a
time = 1

[command]
name = "back_B"
command = /B,b
time = 1

[command]
name = "back_C"
command = /B,c
time = 1

[command]
name = "down_A"
command = /$D,a
time = 1

[command]
name = "down_B"
command = /$D,b
time = 1

[command]
name = "down_C"
command = /$D,c
time = 1

[command]
name = "down_X"
command = /$D,x
time = 1

[command]
name = "down_Y"
command = /$D,y
time = 1

[command]
name = "down_Z"
command = /$D,z
time = 1

[command]
name = "fwd_Ab"
command = /F, a+b
time = 1

[command]
name = "back_Ab"
command = /B, a+b
time = 1

;-| single button |---------------------------------------------------------
[command]
name = "a"
command = a
time = 1

[command]
name = "b"
command = b
time = 1

[command]
name = "c"
command = c
time = 1

[command]
name = "x"
command = x
time = 1

[command]
name = "y"
command = y
time = 1

[command]
name = "z"
command = z
time = 1

[command]
name = "s"
command = s
time = 1

;-| hold Dir |--------------------------------------------------------------
[command]
name = "holdfwd";required (do not remove)
command = /$F
time = 1

[command]
name = "holdback";required (do not remove)
command = /$B
time = 1

[command]
name = "holdup";required (do not remove)
command = /$U
time = 1

[command]
name = "holddown";required (do not remove)
command = /$D
time = 1

[command]
name = "relfwd"
command = ~F
time = 1

[command]
name = "relback"
command = ~B
time = 1

[command]
name = "relup"
command = ~U
time = 1

[command]
name = "reldown"
command = ~D
time = 1

[Command]
name = "recoveryroll"
command = ~B, DB, D, x

[Command]
name = "recoveryroll"
command = ~B, DB, D, y

[Command]
name = "recoveryroll"
command = ~B, DB, D, z

[Command]
name = "recoveryroll"
command = ~B, DB, D, a

[Command]
name = "recoveryroll"
command = ~B, DB, D, b

[Command]
name = "recoveryroll"
command = ~B, DB, D, c

;-| CPU Commands |----------------------------------------------------------
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

;====================================================================
;=											  =
;=				MECH ZANGIEF'S STATEDEF -1			  =
;=											  =
;=										        =
;====================================================================

[Statedef -1]

;CPU 
[State -1]
type = VarSet
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
v = 7
value = 1

;---------------------------------------------------------------------------
; Ultra Final Atomic Buster
[state -1]
type = changestate
value = 3001
triggerall = command = "Ultra Final Atomic Buster"
triggerall = var(7) != 2
triggerall = power >= 3000
trigger1 = statetype = s
trigger1 = ctrl

;---------------------------------------------------------------------------
; Final Atomic Buster Super
[state -1]
type = changestate
value = 3000
triggerall = command = "Final Atomic Buster"
triggerall = var(7) != 2
triggerall = power >= 1000
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = statetype != a
trigger2 = hitdefattr = sc, na, sa
trigger2 = movecontact

;----------------------------------------------------------------------------
; Aerial Russian Slam Super
[state -1]
type = changestate
value = 4000
triggerall = command = "Aerial Russian Slam"
triggerall = var(7) != 2
triggerall = power >= 1000
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = statetype != a
trigger2 = hitdefattr = sc, na, sa
trigger2 = movecontact

;----------------------------------------
; Standing Lariat Super
[state -1]
type = changestate
value = 10400
triggerall = command = "Standing Lariat"
triggerall = var(7) != 2
triggerall = power >= 1000
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = statetype != a
trigger2 = hitdefattr = sc, na, sa
trigger2 = movecontact

;--------------------------------------
; Aerial Lariat Super
[state -1]
type = changestate
value = 10500
triggerall = command = "Aerial Lariat"
triggerall = var(7) != 2
triggerall = power >= 1000
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = statetype != a
trigger2 = hitdefattr = sc, na, sa
trigger2 = movecontact

;---------------------------------------------------------------------------
; Vodka Fire Super
[state -1]
type = changestate
value = 6600
triggerall = NumHelper(7000) = 0  
triggerall = command = "Fire"
triggerall = var(7) != 2
triggerall = power >= 1000
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = statetype != a
trigger2 = hitdefattr = sc, na, sa
trigger2 = movecontact

;-------------------------------
; Throw up
[state -1]
type = changestate
value = 920
triggerall = command = "throwup"
triggerall = var(7) != 2
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240 
trigger6 = movecontact
trigger7 = stateno = 250 
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = stateno = 420
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440 
trigger12 = movecontact
trigger13 = stateno = 450 
trigger13 = movecontact

;----------------------------------
; Dash
[state -1]
type = changestate
value = 100
triggerall = command = "ff"
triggerall = var(7) != 2
trigger1 = statetype = s
trigger1 = ctrl

; Dash
[state -1]
type = changestate
value = 110
triggerall = command = "bb"
triggerall = var(7) != 2
trigger1 = statetype = s
trigger1 = ctrl

;-----------------------------------
; Taunt
[state -1]
type = changestate
value = 95
triggerall = command = "s"
triggerall = var(7) != 2
trigger1 = statetype = s
trigger1 = ctrl

;---------------------------------------------------------------------------
; Pile Driver
[state -1]
type = changestate
value = 4100
triggerall = command = "Pile Driver_X"
triggerall = var(7) != 2
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240 
trigger6 = movecontact
trigger7 = stateno = 250 
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = stateno = 420
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440 
trigger12 = movecontact
trigger13 = stateno = 450 
trigger13 = movecontact
trigger14 = p2statetype != a
trigger14 = stateno = [200,250]
trigger14 = movecontact

; Pile Driver
[state -1]
type = changestate
value = 6100
triggerall = command = "Pile Driver_Y"
triggerall = var(7) != 2
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240 
trigger6 = movecontact
trigger7 = stateno = 250 
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = stateno = 420
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440 
trigger12 = movecontact
trigger13 = stateno = 450 
trigger13 = movecontact
trigger14 = p2statetype != a
trigger14 = stateno = [200,250]
trigger14 = movecontact

; Pile Driver
[state -1]
type = changestate
value = 1100
triggerall = command = "Pile Driver_Z"
triggerall = var(7) != 2
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240 
trigger6 = movecontact
trigger7 = stateno = 250 
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = stateno = 420
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440 
trigger12 = movecontact
trigger13 = stateno = 450 
trigger13 = movecontact
trigger14 = p2statetype != a
trigger14 = stateno = [200,250]
trigger14 = movecontact

;---------------------------------------
;Air Pile Driver
[state -1]
type = changestate
value = 6000
triggerall = command = "Pile Driver_Air"
triggerall = var(7) != 2
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = movecontact
trigger5 = stateno = 630
trigger5 = movecontact
trigger6 = stateno = 640 
trigger6 = movecontact
trigger7 = stateno = 650
trigger8 = p2statetype = a
trigger8 = stateno = [600,650]
trigger8 = movecontact

;----------------------------------------------
; Lariat
[state -1]
type = changestate
value = 1200
triggerall = command = "lariat"
triggerall = var(7) != 2
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240 
trigger6 = movecontact
trigger7 = stateno = 250 
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = stateno = 420
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440 
trigger12 = movecontact
trigger13 = stateno = 450 
trigger13 = movecontact
trigger14 = p2statetype != a
trigger14 = stateno = [200,250]
trigger14 = movecontact

; Fast Lariat
[state -1]
type = changestate
value = 1203
triggerall = command = "fastlariat"
triggerall = var(7) != 2
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240 
trigger6 = movecontact
trigger7 = stateno = 250 
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = stateno = 420
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440 
trigger12 = movecontact
trigger13 = stateno = 450 
trigger13 = movecontact
trigger14 = p2statetype != a
trigger14 = stateno = [200,250]
trigger14 = movecontact


; Aerial Fast Lariat
[state -1]
type = changestate
value = 1205
triggerall = command = "fastlariat"
triggerall = var(7) != 2
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = movecontact
trigger5 = stateno = 630
trigger5 = movecontact
trigger6 = stateno = 640 
trigger6 = movecontact
trigger7 = stateno = 650
trigger8 = p2statetype = a
trigger8 = stateno = [600,650]
trigger8 = movecontact

; Aerial Lariat
[state -1]
type = changestate
value = 1205
triggerall = command = "lariat"
triggerall = var(7) != 2
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = movecontact
trigger5 = stateno = 630
trigger5 = movecontact
trigger6 = stateno = 640 
trigger6 = movecontact
trigger7 = stateno = 650
trigger8 = p2statetype = a
trigger8 = stateno = [600,650]
trigger8 = movecontact

;---------------------
; Elbow (ground)
[state -1]
type = changestate
value = 196
triggerall = command = "fwd_Y"
triggerall = var(7) != 2
trigger1 = statetype = s
trigger1 = ctrl

;------------------------------------
; Atomic Suplex
[state -1]
type = changestate
value = 1300
triggerall = command = "Atomic Suplex"
triggerall = var(7) != 2
triggerall = statetype != a
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240 
trigger6 = movecontact
trigger7 = stateno = 250 
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = stateno = 420
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440 
trigger12 = movecontact
trigger13 = stateno = 450 
trigger13 = movecontact

;------------------------------------
; Flying Powerbomb
[state -1]
type = changestate
value = 2100
triggerall = command = "Flying Powerbomb"
triggerall = var(7) != 2
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240 
trigger6 = movecontact
trigger7 = stateno = 250 
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = stateno = 420
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440 
trigger12 = movecontact
trigger13 = stateno = 450 
trigger13 = movecontact

;-------------------------------------
; Russian Slam
[state -1]
type = changestate
value = 6500
triggerall = command = "Russian Slam"
triggerall = var(7) != 2
triggerall = statetype != a 
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240 
trigger6 = movecontact
trigger7 = stateno = 250 
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = stateno = 420
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440 
trigger12 = movecontact
trigger13 = stateno = 450 
trigger13 = movecontact

;---------------------------------------------------------------------------
; Banishing Flat
[state -1]
type = changestate
value = 1010
triggerall = command = "Banishing Flat"
triggerall = var(7) != 2
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240 
trigger6 = movecontact
trigger7 = stateno = 250 
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = stateno = 420
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440 
trigger12 = movecontact
trigger13 = stateno = 450 
trigger13 = movecontact

;-------------------------------------
; Vodka
[state -1]
type = changestate
value = 94
triggerall = command = "Vodka"
triggerall = var(7) != 2
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 220
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact
trigger6 = stateno = 240 
trigger6 = movecontact
trigger7 = stateno = 250 
trigger7 = movecontact
trigger8 = stateno = 400
trigger8 = movecontact
trigger9 = stateno = 410
trigger9 = movecontact
trigger10 = stateno = 420
trigger10 = movecontact
trigger11 = stateno = 430
trigger11 = movecontact
trigger12 = stateno = 440 
trigger12 = movecontact
trigger13 = stateno = 450 
trigger13 = movecontact

;---------------------------------------------------------------------------
;Stand_throw
[state -1]
type = Null;changestate
value = 900
triggerall = statetype = s
triggerall = ctrl
trigger1 = command = "fwd_Ab";command
trigger2 = command = "back_Ab";command
trigger3 = command = "fwd_B";near, p2 stand
trigger3 = stateno != 100    ;not running
trigger3 = p2bodydist x < 3
trigger3 = p2statetype = s
trigger3 = p2movetype != h
trigger4 = command = "fwd_B";near, p2 crouch
trigger4 = stateno != 100    ;not running
trigger4 = p2bodydist x < 3
trigger4 = p2statetype = c
trigger4 = p2movetype != h
trigger5 = command = "back_B";near, p2 stand
trigger5 = p2bodydist x < 5
trigger5 = p2statetype = s
trigger5 = p2movetype != h
trigger6 = command = "back_B";near, p2 crouch
trigger6 = p2bodydist x < 5
trigger6 = p2statetype = c
trigger6 = p2movetype != h

;---------------------------------------------------------------------------
;air_throw1
[state -1]
type = null;changestate
value = 950
triggerall = statetype = a
triggerall = ctrl
trigger1 = command = "fwd_Ab"
trigger2 = command = "back_Ab"

;---------------------------
;air_throw1 (second set of commands)
[state -1]
type = null;changestate
value = 950
triggerall = statetype = a
triggerall = ctrl
triggerall = p2bodydist x < 9
triggerall = p2bodydist y > -22
triggerall = p2bodydist y < 22
triggerall = p2statetype = a
triggerall = p2movetype != h
trigger1 = command = "fwd_B"
trigger2 = command = "back_B"

;---------------------------------------------------------------------------
;Stand_X
[state -1]
type = changestate
value = 200
triggerall = command = "x"
triggerall = var(7) != 2
triggerall = command != "holddown" 
trigger1 = statetype = s
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand_Y
[state -1]
type = changestate
value = 210
triggerall = command = "y"
triggerall = var(7) != 2
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact
trigger3 = stateno = 230
trigger3 = movecontact

;-------------------------------
;Stand_Z
[state -1]
type = changestate
value = 220
triggerall = command = "z"
triggerall = var(7) != 2
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = stateno = 210
trigger2 = movecontact
trigger3 = stateno = 240
trigger3 = movecontact
trigger4 = stateno = 200
trigger4 = movecontact
trigger5 = stateno = 230
trigger5 = movecontact

;-------------------------------
;Stand_A
[state -1]
type = changestate
value = 230
triggerall = command = "a"
triggerall = var(7) != 2
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = movecontact

;-------------------------------------
;Stand_B
[state -1]
type = changestate
value = 240
triggerall = command = "b"
triggerall = var(7) != 2
triggerall = command != "holddown"  
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = stateno = 230
trigger2 = movecontact
trigger3 = stateno = 210
trigger3 = movecontact
trigger4 = stateno = 200
trigger4 = movecontact

;---------------------------------------------------------------------------
;Stand_C
[state -1]
type = changestate
value = 250
triggerall = command = "c"
triggerall = var(7) != 2
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = stateno = 240
trigger2 = movecontact
trigger3 = stateno = 220
trigger3 = movecontact
trigger4 = stateno = 230
trigger4 = movecontact
trigger5 = stateno = 200
trigger5 = movecontact
trigger6 = stateno = 210
trigger6 = movecontact

;---------------------------------------------------------------------------
;Crouch_X
[state -1]
type = changestate
value = 400
triggerall = command = "x"
triggerall = var(7) != 2
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouch_Y
[state -1]
type = changestate
value = 410
triggerall = command = "y"
triggerall = var(7) != 2
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact
trigger3 = stateno = 430
trigger3 = movecontact

;---------------------------------------------------------------------------
;Crouch_Z
[state -1]
type = changestate
value = 420
triggerall = command = "z"
triggerall = var(7) != 2
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl
trigger2 = stateno = 410
trigger2 = movecontact
trigger3 = stateno = 440
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact
trigger5 = stateno = 430
trigger5 = movecontact

;---------------------------------------------------------------------------
;Crouch_A
[state -1]
type = changestate
value = 430
triggerall = command = "a"
triggerall = var(7) != 2
triggerall = command = "holddown" 
trigger1 = statetype = c
trigger1 = ctrl
trigger2 = stateno = 400
trigger2 = movecontact

;------------------------
;Crouch_B
[state -1]
type = changestate
value = 440
triggerall = command = "b"
triggerall = var(7) != 2
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl
trigger2 = stateno = 430
trigger2 = movecontact
trigger3 = stateno = 410
trigger3 = movecontact
trigger4 = stateno = 400
trigger4 = movecontact

;----------------------------
;Crouch_C
[state -1]
type = changestate
value = 450
triggerall = command = "c"
triggerall = var(7) != 2
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl
trigger2 = stateno = 440
trigger2 = movecontact
trigger3 = stateno = 420
trigger3 = movecontact
trigger4 = stateno = 430
trigger4 = movecontact
trigger5 = stateno = 410
trigger5 = movecontact
trigger6 = stateno = 400
trigger6 = movecontact

;-----------------------------
; Knee
[state -1]
type = changestate
value = 601
triggerall = command = "down_B"
triggerall = var(7) != 2
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = movecontact
trigger5 = stateno = 630
trigger5 = movecontact
trigger6 = stateno = 640 
trigger6 = movecontact
trigger7 = stateno = 650
 
;---------------------------------
; Elbow
[state -1]
type = changestate
value = 199
triggerall = command = "down_Y"
triggerall = var(7) != 2
trigger1 = statetype = a
trigger1 = ctrl 
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = movecontact
trigger5 = stateno = 630
trigger5 = movecontact
trigger6 = stateno = 640 
trigger6 = movecontact
trigger7 = stateno = 650

;---------------------------------
; Head_Butt
[state -1]
type = changestate
value = 69
triggerall = command = "up_p"
triggerall = var(7) != 2
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = movecontact
trigger5 = stateno = 630
trigger5 = movecontact
trigger6 = stateno = 640 
trigger6 = movecontact
trigger7 = stateno = 650

;--------------------------
; Splash
[state -1]
type = changestate
value = 602
triggerall = command = "down_Z"
triggerall = var(7) != 2
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = stateno = 620
trigger4 = movecontact
trigger5 = stateno = 630
trigger5 = movecontact
trigger6 = stateno = 640 
trigger6 = movecontact
trigger7 = stateno = 650

;---------------------------------------------------------------------------
;Jump_X
[state -1]
type = changestate
value = 600
triggerall = command = "x"
triggerall = var(7) != 2
trigger1 = statetype = a
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump_Y
[state -1]
type = changestate
value = 610
triggerall = command = "y"
triggerall = var(7) != 2
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = p2statetype = a
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = p2statetype = a
trigger3 = stateno = 630
trigger3 = movecontact

;---------------------------------------------------------------------------
;Jump_Z
[state -1]
type = changestate
value = 620
triggerall = command = "z"
triggerall = var(7) != 2 
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = p2statetype = a
trigger2 = stateno = 610
trigger2 = movecontact
trigger3 = p2statetype = a
trigger3 = stateno = 640
trigger3 = movecontact
trigger4 = p2statetype = a
trigger4 = stateno = 600
trigger4 = movecontact
trigger5 = p2statetype = a
trigger5 = stateno = 630
trigger5 = movecontact

;-----------------------------------------
;Jump_A
[state -1]
type = changestate
value = 630
triggerall = command = "a"
triggerall = var(7) != 2
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = p2statetype = a
trigger2 = stateno = 600
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump_B
[state -1]
type = changestate
value = 640
triggerall = command = "b"
triggerall = var(7) != 2  
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = p2statetype = a
trigger2 = stateno = 630
trigger2 = movecontact
trigger3 = p2statetype = a
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = p2statetype = a
trigger4 = stateno = 600
trigger4 = movecontact

;---------------------------------------------------------------------------
;Jump_C
[state -1]
type = changestate
value = 650
triggerall = command = "c"
triggerall = var(7) != 2  
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = p2statetype = a
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = p2statetype = a
trigger3 = stateno = 610
trigger3 = movecontact
trigger4 = p2statetype = a
trigger4 = stateno = 620
trigger4 = movecontact
trigger5 = p2statetype = a
trigger5 = stateno = 630
trigger5 = movecontact
trigger6 = p2statetype = a
trigger6 = stateno = 640
trigger6 = movecontact

;-------------------------------
;Follow Up After Launcher
[state -1]
type = changestate
value = 8000
triggerall = var(7) != 2
triggerall = command = "holdup"
trigger1 = movehit
trigger1 = stateno = 410

;------------------------------
;Super Jump
[state -1]
type = changestate
value = 8000
triggerall = command = "superjump"
triggerall = var(7) != 2
trigger1 = statetype != a
trigger1 = ctrl

;-------------------------------
; Recovery Roll
[State -1, Falling]
type = VarSet
triggerall = (StateNo = 5030) || (StateNo = 5035) || (StateNo = 5050) || (StateNo = 5071)
trigger1 = ((Command = "recoveryroll") || (Command = "recoveryroll")) && (Alive = 1)
v = 20
value = ifelse((Command = "recoveryroll"),1,2)

[State -1, Rolling]
type = ChangeState
value = 1500
triggerall = Var(20) = [1,2] 
trigger1 = (Pos Y >= 0) && (Vel Y > 0)

[State -1, Falling]
type = VarSet
triggerall = var(7) != 2
triggerall = roundstate = 2
trigger1 = (StateNo = 5030) || (StateNo = 5035) || (StateNo = 5050) || (StateNo = 5071)
trigger1 = Alive = 1
v = 20
value = 1

[State -1, Falling]
type = VarSet
triggerall = var(7) != 2
triggerall = roundstate != 2
trigger1 = Alive = 0
v = 20
value = 0

:-------------------------------------------
; AI
[State -1, ChangeState]
type = ChangeState
triggerall = Var(7) = 1
triggerall = power >= 1000
trigger1 = (Random <= 999)
trigger1 = (StateType != A) && (Ctrl)
trigger1 = (P2BodyDist X <= 40) && (P2StateType = S)
value = 3000
