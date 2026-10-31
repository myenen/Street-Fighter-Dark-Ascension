; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional)
;   buffer.time = time (optional)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas. Each of these
;   buttons or directions is referred to as a "symbol".
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   greater-than (>) - means there must be no other keys pressed or released
;                      between the previous and the current symbol.
;          egs. command = a, >~a   ;press a and release it without having hit
;                                  ;or released any other keys in between
;   You can combine the symbols:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;
;   Note: Successive direction symbols are always expanded in a manner similar
;         to this example:
;           command = F, F
;         is expanded when MUGEN reads it, to become equivalent to:
;           command = F, >~F, >F
;
;   It is recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This makes the command easier
;   to do.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. The default
;   value for this is set in the [Defaults] section below. A typical
;   value is 15.
;
; - buffer.time (optional)
;   Time that the command will be buffered for. If the command is done
;   successfully, then it will be valid for this time. The simplest
;   case is to set this to 1. That means that the command is valid
;   only in the same tick it is performed. With a higher value, such
;   as 3 or 4, you can get a "looser" feel to the command. The result
;   is that combos can become easier to do because you can perform
;   the command early. Attacks just as you regain control (eg. from
;   getting up) also become easier to do. The side effect of this is
;   that the command is continuously asserted, so it will seem as if
;   you had performed the move rapidly in succession during the valid
;   time. To understand this, try setting buffer.time to 30 and hit
;   a fast attack, such as KFM's light punch.
;   The default value for this is set in the [Defaults] section below. 
;   This parameter does not affect hold-only commands (eg. /F). It
;   will be assumed to be 1 for those commands.
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, zz
; time = 10
;
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10


;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| Super Motions |--------------------------------------------------------
;The following two have the same name, but different motion.
;Either one will be detected by a "command = TripleKFPalm" trigger.
;Time is set to 20 (instead of default of 15) to make the move
;easier to do.
;
[Command]
name = "ar"
command = ~D, DF, F, D, DF, F, a
time = 20

[Command]
name = "TripleKFPalm"   ;Same name as above
command = ~D, DF, F, D, DF, F, b
time = 20

[Command]
name = "TripleKFPalm"   ;Same name as above
command = ~D, DF, F, D, DF, F, c
time = 20

[Command]
name = "gt"
command = ~D, DB, B, D, DB, B, x;~F, D, DF, F, D, DF, x
time = 20

[Command]
name = "SmashKFUpper"   ;Same name as above
command = ~D, DB, B, D, DB, B, y;~F, D, DF, F, D, DF, y
time = 20

[Command]
name = "SmashKFUpper"   ;Same name as above
command = ~D, DB, B, D, DB, B, z;~F, D, DF, F, D, DF, z
time = 20

[Command]
name = "tt"   ;Same name as above
command = ~D, DF, F, D, DF, F, x
time = 20

[Command]
name = "jt"   ;Same name as above
command = ~D, DF, F, D, DF, F, y
time = 20

[Command]
name = "jt"   ;Same name as above
command = ~D, DF, F, D, DF, F, z
time = 20

[Command]
name = "tp"
command = ~D, DB, B, D, DB, B, a
time = 20

[Command]
name = "tof"   ;Same name as above
command = ~D, DB, B, D, DB, B, b
time = 20

[Command]
name = "tof"   ;Same name as above
command = ~D, DB, B, D, DB, B, c
time = 20

;-| CPU Commands    |------------------------------------------------------

[Command]
name = "CPU1"
command = x,x,x,x,x,x,x,x,x
time = 0

[Command]
name = "CPU2"
command = y,y,y,y,y,y,y,y,y
time = 0

[Command]
name = "CPU3"
command = z,z,z,z,z,z,z,z,z
time = 0

[Command]
name = "CPU4"
command = a,a,a,a,a,a,a,a,a
time = 0

[Command]
name = "CPU5"
command = b,b,b,b,b,b,b,b,b
time = 0

[Command]
name = "CPU6"
command = c,c,c,c,c,c,c,c,c
time = 0

[Command]
name = "CPU7"
command = s,s,s,s,s,s,s,s,s
time = 0

[Command]
name = "CPU8"
command = x,x,x,x,x,x,x,x,x,x
time = 0

[Command]
name = "CPU9"
command = x,x,x,x,x,x,x,x,x,x,x
time = 0

[Command]
name = "CPU10"
command = x,x,x,x,x,x,x,x,x,x,x,x
time = 0

[Command]
name = "CPU11"
command = x,x,x,x,x,x,x,x,x,y
time = 0

[Command]
name = "CPU12"
command = x,x,x,x,x,x,x,x,x,y,y
time = 0

[Command]
name = "CPU1"
command = x,x,x,x,x,x,x,x,x,y,y,y
time = 0

[Command]
name = "CPU13"
command = x,x,x,x,x,x,x,x,x,z
time = 0

[Command]
name = "CPU14"
command = x,x,x,x,x,x,x,x,x,z,z
time = 0

[Command]
name = "CPU15"
command = x,x,x,x,x,x,x,x,x,z,z,z
time = 0

[Command]
name = "CPU16"
command = x,x,x,x,x,x,x,x,x,a
time = 0

[Command]
name = "CPU17"
command = x,x,x,x,x,x,x,x,x,a,a
time = 0

[Command]
name = "CPU18"
command = x,x,x,x,x,x,x,x,x,a,a,a
time = 0

[Command]
name = "CPU19"
command = x,x,x,x,x,x,x,x,x,b
time = 0

[Command]
name = "CPU20"
command = x,x,x,x,x,x,x,x,x,b,b
time = 0

[Command]
name = "CPU21"
command = x,x,x,x,x,x,x,x,x,b,b,b
time = 0

[Command]
name = "CPU22"
command = x,x,x,x,x,x,x,x,x,c
time = 0

[Command]
name = "CPU23"
command = x,x,x,x,x,x,x,x,x,c,c
time = 0

[Command]
name = "CPU24"
command = x,x,x,x,x,x,x,x,x,c,c,c
time = 0

[Command]
name = "CPU25"
command = x,x,x,x,x,x,x,x,x,s
time = 0

[Command]
name = "CPU26"
command = x,x,x,x,x,x,x,x,x,s,s
time = 0

[Command]
name = "CPU27"
command = x,x,x,x,x,x,x,x,x,s,s,s
time = 0

[Command]
name = "CPU28"
command = x,x,x,x,x,x,x,x,x,x,y
time = 0

[Command]
name = "CPU29"
command = x,x,x,x,x,x,x,x,x,x,y,y
time = 0

[Command]
name = "CPU30"
command = x,x,x,x,x,x,x,x,x,x,y,z
time = 0

[Command]
name = "CPU31"
command = x,x,x,x,x,x,x,x,x,x,z,z
time = 0

[Command]
name = "CPU32"
command = x,x,x,x,x,x,x,x,x,y,x,x
time = 0

[Command]
name = "CPU32"
command = x,x,x,x,x,x,x,x,y,z,z
time = 0

[Command]
name = "CPU34"
command = x,x,x,x,x,x,x,x,x,y,x,z
time = 0

[Command]
name = "CPU35"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,y,z
time = 0

[Command]
name = "CPU36"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,y,zx,x,x,x,y,z
time = 0

[Command]
name = "CPU37"
command = x,x,x,x,x,x,x,x,x,x,x,x,x,y,zx,x,x,x,y,zx,x,x,x,y,z
time = 0

[Command]
name = "CPU38"
command = x,x,x,x,x,x,x,x,xx,x,x,x,y,zx,x,x,x,y,zx,x,x,x,y,zx,x,x,x,y,z
time = 0

[Command]
name = "CPU39"
command = x,x,x,x,x,x,x,x,xx,x,x,x,y,zx,x,x,x,y,zx,x,x,x,y,zx,x,x,x,y,zx,x,x,x,
time = 0


;-| Special Motions |------------------------------------------------------
[Command]
name = "upper_x"
command = D, F, a

[Command]
name = "upper_y"
command = D, F, b

[Command]
name = "upper_xy"
command = D, F, c

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_xy"
command = ~D, DF, F, z

[Command]
name = "QCB_x"
command = D, B, a

[Command]
name = "QCB_y"
command = D, B, b

[Command]
name = "QCB_xy"
command = D, B, c

[Command]
name = "FF_ab"
command = D, B, z

[Command]
name = "FF_a"
command = D, B, x

[Command]
name = "FF_b"
command = D, B, y

[Command]
name = "airkick1"
command = ~D, a

[Command]
name = "airkick2"
command = ~D, b

[Command]
name = "airkick3"
command = ~D, c

[Command]
name = "bp"
command = x+a

[Command]
name = "bp2"
command = y+b

[Command]
name = "bp3"
command = z+c

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "Parry"     ;Required (do not remove)
command = ~F
time = 14

[Command]
name = "Parry"     ;Required (do not remove)
command = F
time = 14

[Command]
name = "Parry"     ;Required (do not remove)
command = ~B
time = 14

[Command]
name = "Parry"     ;Required (do not remove)
command = B
time = 14

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
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

;-| Hold Dir |--------------------------------------------------------------
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

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

[State -1, Activate AI]
type = VarSet
triggerall = var(59) != 1
trigger1 = command = "CPU1"
trigger2 = command = "CPU2"
trigger3 = command = "CPU3"
trigger4 = command = "CPU4"
trigger5 = command = "CPU5"
trigger6 = command = "CPU6"
trigger7 = command = "CPU7"
trigger8 = command = "CPU8"
trigger8 = command = "CPU9"
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
trigger31 = command = "CPU31"
trigger32 = command = "CPU32"
trigger33 = command = "CPU33"
trigger34 = command = "CPU34"
trigger35 = command = "CPU35"
trigger36 = command = "CPU36"
trigger37 = command = "CPU37"
trigger38 = command = "CPU38"
trigger39 = command = "CPU39"
v = 59
value = 1
;=====================================================================
;==========================Punch Combo=====================
;---------------------------------------------------------------------
;AI s light punch
[State -1]
type = changestate
value = 200
triggerall = p2life > 0
triggerall = life > 0
triggerall = var(59) = 1
triggerall = statetype = S
triggerall = statetype != C
trigger1 = ctrl = 1
trigger1 = p2bodydist x < 20
trigger1 = p2bodydist x > 7
trigger1 = p2bodydist y < 75
trigger1 = p2bodydist y < 46

;--------------------------------------------------------------------------
;AI s strong punch
[State -1]
type = ChangeState
triggerall = var(59) = 1
triggerall = StateType != A
trigger1 = stateno = 200 && movehit
trigger1 = power <= 999
value = 220

;--------------------------------------------------------------------------
;IF enough power, changestate to grab
[State -1]
type = ChangeState
triggerall = var(59) = 1
triggerall = StateType != A
trigger1 = stateno = 200 && movehit
trigger1 = power >= 1000
value = 3400

;=====================================================================
;==========================kick-to-elecball Combo=====================
;---------------------------------------------------------------------
;AI s light kick
[State -1]
type = changestate
value = 230
triggerall = p2life > 0
triggerall = life > 0
triggerall = var(59) = 1
triggerall = statetype = S
triggerall = statetype != C
trigger1 = ctrl = 1
trigger1 = p2bodydist x < 35
trigger1 = p2bodydist x > 21
trigger1 = p2bodydist y < 45
trigger1 = p2bodydist y < 36

;--------------------------------------------------------------------------
;AI s med kick
[State -1]
type = ChangeState
triggerall = var(59) = 1
triggerall = StateType != A
trigger1 = stateno = 230 && movehit
value = 240

;--------------------------------------------------------------------------
;AI s fierce kick
[State -1]
type = ChangeState
triggerall = var(59) = 1
triggerall = statetype != A
trigger1 = stateno = 240 && movehit
value = 250

;--------------------------------------------------------------------------
;AI hi elecball
[State -1]
type = ChangeState
triggerall = var(59) = 1
triggerall = statetype != A
trigger1 = stateno = 250 && movehit
value = 1020

;--------------------------------------------------------------------------
;IF enough power, changestate from elecball to grab
[State -1]
type = ChangeState
triggerall = var(59) = 1
triggerall = StateType != A
trigger1 = stateno = 1020 && time = 25
trigger1 = power >= 1000
trigger2 = p2bodydist x > 256
trigger2 = power >= 1000
value = 3200

;--------------------------------------------------------------------------
;IF tyrantpunish finish, changestate to low weak kick
[State -1]
type = ChangeState
triggerall = var(59) = 1
triggerall = StateType != A
trigger1 = stateno = 3200 && animelem = 50
value = 430

;--------------------------------------------------------------------------
;IF low weak kick connects, changestate to low med kick
[State -1]
type = ChangeState
triggerall = var(59) = 1
triggerall = StateType != A
trigger1 = stateno = 430 && movehit
value = 440

;--------------------------------------------------------------------------
;IF low med kick conect OR hi elecball connects, changestate to low med punch
[State -1]
type = ChangeState
triggerall = var(59) = 1
triggerall = StateType != A
trigger1 = stateno = 440 && movehit
trigger2 = stateno = 1020 && time = 25
value = 410

;--------------------------------------------------------------------------
;IF low med punch conect and have enough power, changestate to grab
[State -1]
type = ChangeState
triggerall = var(59) = 1
triggerall = StateType != A
trigger1 = stateno = 410
trigger1 = animelem = 5
trigger1 = power >= 1000
value = 3400

;=====================================================================
;==========================airkicks===================================
;---------------------------------------------------------------------
;AI airkick combos
[State -1]
type = changestate
value = 1420
triggerall = p2life > 0
triggerall = life > 0
triggerall = var(59) = 1
triggerall = statetype = S
triggerall = statetype != A
trigger1 = ctrl = 1
trigger1 = p2bodydist x < 7
trigger1 = p2bodydist x > 4

;=====================================================================
;==========================run bkwd===================================
;---------------------------------------------------------------------
;AI run bkwd
[State -1]
type = changestate
value = 105
triggerall = p2life > 0
triggerall = life > 0
triggerall = var(59) = 1
triggerall = statetype = S
triggerall = statetype != A
trigger1 = ctrl = 1
trigger1 = p2bodydist x < 4
trigger1 = p2bodydist x >= 0

;=====================================================================
;==========================weak vkd===================================
;---------------------------------------------------------------------
;AI weak vkd
[State -1]
type = changestate
value = 1200
triggerall = p2life > 0
triggerall = life > 0
triggerall = var(59) = 1
triggerall = statetype = S
triggerall = statetype != C
trigger1 = ctrl = 1
trigger1 = p2bodydist x < 45
trigger1 = p2bodydist x > 36

;=====================================================================
;==========================chariot tackle combo=======================
;---------------------------------------------------------------------
;AI weak chariot tackle
[State -1]
type = changestate
value = 1100
triggerall = p2life > 0
triggerall = life > 0
triggerall = var(59) = 1
triggerall = statetype = S
triggerall = statetype != A
trigger1 = ctrl = 1
trigger1 = p2bodydist x < 55
trigger1 = p2bodydist x > 46

;--------------------------------------------------------------------------
;AI med chariot tackle
[State -1]
type = ChangeState
triggerall = var(59) = 1
triggerall = StateType != A
trigger1 = stateno = 1100 && movehit
trigger2 = stateno = 195 && movehit
value = 1110

;=====================================================================
;==========================taunt======================================
;---------------------------------------------------------------------
;AI taunt stomp
[State -1]
type = changestate
value = 195
triggerall = p2life > 0
triggerall = life > 0
triggerall = var(59) = 1
triggerall = statetype != A
trigger1 = p2statetype = L
trigger1 = ctrl = 1

;=====================================================================
;==========================dangerous headbutt=========================
;---------------------------------------------------------------------
;AI strong dangerous headbutt
[State -1]
type = changestate
value = 1070
triggerall = p2life > 0
triggerall = life > 0
triggerall = var(59) = 1
triggerall = statetype = S
triggerall = statetype != A
trigger1 = p2bodydist x > 56
trigger1 = p2bodydist x < 65
trigger1 = ctrl = 1

;=====================================================================
;==========================aegis reflector============================
;---------------------------------------------------------------------
;AI aegis
[State -1]
type = changestate
value = 3000
triggerall = p2life > 0
triggerall = life > 0
triggerall = var(59) = 1
triggerall = statetype = S
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = p2bodydist x > 66
trigger1 = p2bodydist x < 85
trigger1 = ctrl = 1

;=====================================================================
;==========================temporal thunder===========================
;---------------------------------------------------------------------
;AI aegis
[State -1]
type = changestate
value = 3100
triggerall = p2life > 0
triggerall = life > 0
triggerall = var(59) = 1
triggerall = statetype = S
triggerall = statetype != A
triggerall = power >= 1000
trigger1 = p2bodydist x > 86
trigger1 = p2bodydist x < 125
trigger1 = ctrl = 1

;=====================================================================
;==========================elecball strait combo======================
;---------------------------------------------------------------------
;AI normal elecball
[State -1]
type = changestate
value = 1000
triggerall = p2life > 0
triggerall = life > 0
triggerall = var(59) = 1
triggerall = statetype = S
triggerall = statetype != A
trigger1 = p2bodydist x > 126
trigger1 = p2bodydist x < 175
trigger1 = ctrl = 1

;--------------------------------------------------------------------------
;AI omni
[State -1]
type = ChangeState
triggerall = var(59) = 1
triggerall = StateType != A
triggerall = ctrl = 1
trigger1 = stateno = 1000 && time = 25
trigger2 = stateno = 195 && animelem = 15
trigger3 = p2bodydist x > 176
value = 1120

;---------------------------------------------------------------------------
;===========================================================================
;AI ENDS HERE
;===========================================================================
;---------------------------------------------------------------------------
;aegis reflector
;スマッシュ・カンフー・ウッパー（ゲージレベル１）
[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 3100
triggerall = command = "ar"
triggerall = power >= 1000
triggerall = statetype != A
triggerall = var(59) != 1
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3050,3100)
trigger2 = movecontact

;---------------------------------------------------------------------------
;temporal thunder
;三烈カンフー突き手（ゲージレベル１）
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3000
triggerall = command = "tt"
triggerall = power >= 1000
triggerall = var(59) != 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact

;---------------------------------------------------------------------------
;tyrant punish
;三烈カンフー突き手（ゲージレベル１）
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3200
triggerall = command = "tp"
triggerall = power >= 1000
triggerall = var(59) != 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact

;---------------------------------------------------------------------------
;grab
;三烈カンフー突き手（ゲージレベル１）
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3400
triggerall = command = "gt"
triggerall = power >= 1000
triggerall = var(59) != 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact

;===========================================================================
;This is not a move, but it sets up var(1) to be 1 if conditions are right
;for a combo into a special move (used below).
;Since a lot of special moves rely on the same conditions, this reduces
;redundant logic.
[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
var(1) = 1

;---------------------------------------------------------------------------
;Fast Kung Fu Knee (1/3 super bar)
;速いカンフー蹴り（ゲージレベル１／３）
[State -1, Fast Kung Fu Knee]
type = ChangeState
value = 1070
triggerall = command = "FF_ab"
triggerall = var(59) != 1
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Light Kung Fu Knee
;カンフー蹴り（弱）
[State -1, Light Kung Fu Knee]
type = ChangeState
value = 1050
triggerall = command = "FF_a"
triggerall = var(59) != 1
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Strong Kung Fu Knee
;カンフー蹴り（弱）
[State -1, Strong Kung Fu Knee]
type = ChangeState
value = 1060
triggerall = command = "FF_b"
triggerall = statetype != C
triggerall = var(59) != 1
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Fast Kung Fu Palm (1/3 super bar)
;速いカンフー突き手（ゲージレベル１／３）
[State -1, Fast Kung Fu Palm]
type = ChangeState
value = 1020
triggerall = command = "QCF_xy"
triggerall = var(59) != 1
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Light Kung Fu Palm
;カンフー突き手（弱）
[State -1, Light Kung Fu Palm]
type = ChangeState
value = 1000
triggerall = command = "QCF_x"
triggerall = var(59) != 1
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Strong Kung Fu Palm
;カンフー突き手（強）
[State -1, Strong Kung Fu Palm]
type = ChangeState
value = 1010
triggerall = command = "QCF_y"
triggerall = var(59) != 1
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Fast Kung Fu Upper (1/3 super bar)
;速いカンフー・ウッパー
[State -1, Fast Kung Fu Upper]
type = ChangeState
value = 1120
triggerall = command = "upper_xy"
triggerall = var(59) != 1
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Light Kung Fu Upper
;カンフー・ウッパー（弱）
[State -1, Light Kung Fu Upper]
type = ChangeState
value = 1100
triggerall = command = "upper_x"
triggerall = var(59) != 1
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Strong Kung Fu Upper
;カンフー・ウッパー（強）
[State -1, Strong Kung Fu Upper]
type = ChangeState
value = 1110
triggerall = command = "upper_y"
triggerall = var(59) != 1
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Fast Kung Fu Blow (1/3 super bar)
[State -1, Fast Kung Fu Blow]
type = ChangeState
value = 1220
triggerall = command = "QCB_xy"
triggerall = var(59) != 1
triggerall = power >= 330
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Light Kung Fu Blow
[State -1, Light Kung Fu Blow]
type = ChangeState
value = 1200
triggerall = command = "QCB_x"
triggerall = var(59) != 1
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Strong Kung Fu Blow
[State -1, Strong Kung Fu Blow]
type = ChangeState
value = 1210
triggerall = command = "QCB_y"
triggerall = var(59) != 1
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;airkick1
;カンフー蹴り（弱）
[State -1, Strong Kung Fu Knee]
type = ChangeState
value = 1400
triggerall = command = "airkick1"
triggerall = statetype != C
triggerall = var(59) != 1
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;airkick2
;カンフー蹴り（弱）
[State -1, Strong Kung Fu Knee]
type = ChangeState
value = 1410
triggerall = command = "airkick2"
triggerall = statetype != C
triggerall = var(59) != 1
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;airkick2
;カンフー蹴り（弱）
[State -1, Strong Kung Fu Knee]
type = ChangeState
value = 1420
triggerall = command = "airkick3"
triggerall = statetype != C
triggerall = var(59) != 1
trigger1 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;bp
;カンフー蹴り（弱）
[State -1, Strong Kung Fu Knee]
type = ChangeState
value = 1300
triggerall = command = "bp"
triggerall = statetype != C
triggerall = var(59) != 1
trigger1 = var(1) ;Use combo condition (above)

;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(59) != 1
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(59) != 1
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = var(59) != 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6

;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = var(59) != 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5

;---------------------------------------------------------------------------
;Stand fierce Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
triggerall = var(59) != 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 210) && time > 6
trigger3 = (stateno = 410) && time > 6

;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = var(59) != 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 220) && time > 6

;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = var(59) != 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6

;---------------------------------------------------------------------------
;Standing fierce Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = var(59) != 1
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 240) && time > 5
trigger3 = (stateno = 210) && time > 6
;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
triggerall = var(59) != 1
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
triggerall = var(59) != 1
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
triggerall = var(59) != 1
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching feircePunch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
triggerall = var(59) != 1
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
triggerall = var(59) != 1
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
triggerall = var(59) != 1
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching feirce Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
triggerall = var(59) != 1
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = var(59) != 1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7
trigger3 = stateno = 1350 ;Air blocking
trigger4 = (stateno = 610) && movecontact
trigger5 = (stateno = 630) && movecontact
trigger6 = (stateno = 640) && movecontact

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
triggerall = var(59) != 1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
trigger4 = (stateno = 600) && movecontact
trigger5 = (stateno = 630) && movecontact
trigger6 = (stateno = 640) && movecontact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
triggerall = var(59) != 1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 1350 ;Air blocking
trigger4 = (stateno = 610) && movecontact
trigger5 = (stateno = 600) && movecontact
trigger6 = (stateno = 640) && movecontact

;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
triggerall = var(59) != 1
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact
trigger3 = stateno = 1350 ;Air blocking
trigger4 = (stateno = 610) && movecontact
trigger5 = (stateno = 630) && movecontact
trigger6 = (stateno = 600) && movecontact