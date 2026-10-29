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
; command = ~60$B, F, z
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

;-| Hold Button |----------------------------------------------------------

[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

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
name = "holdstart"
command = /s
time = 1


;***************************************************************************
; CMD
;***************************************************************************

;-| CPU |--------------------------------------------------------------

[Command]
name = "cpu0"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu1"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu2"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu3"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu4"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu5"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu6"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu7"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu8"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

[Command]
name = "cpu9"
command = B+D+F+U,~U,~32222U,a+b+c+x+y+z+s
time = -2

; Add more as desired.  The greater the number of uniquely-named CPU-only
; commands you use, the faster the AI will tend to activate.  Mugen allows up
; to 128 total unique command names.
; Note that the command input strings do not need to be unique, but the command
; names do.  Having 32 commands named "cpu" won't make the computer any more
; likely to choose one of them than having a single "cpu" command would.


;-| Super Motions |--------------------------------------------------------
[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y+z

[Command]
name = "QCF_xy"
command = ~D, DF, F, y+z

[Command]
name = "QCF_ab"
command = ~D, DF, F, b+c

[Command]
name = "QCF_ab"
command = ~D, DF, F, a+b

[Command]
name = "QCF_ab"
command = ~D, DF, F, a+b+c

[Command]
name = "QCB_xy"
command = ~D, DB, B, x+y

[Command]
name = "QCB_ab"
command = ~D, DB, B, a+b

[Command]
name = "QCB_ab"
command = ~D, DB, B, b+c

[Command]
name = "QCB_ab"
command = ~D, DB, B, a+b+c

[Command]
name = "QCB"
command = ~D, DB, B
time = 30

;-| Special Motions |------------------------------------------------------
[Command]
name = "kneep1"
command = ~B, DB, D, DF, F, a
time = 30

[Command]
name = "kneep2"
command = ~B, DB, D, DF, F, b
time = 30

[Command]
name = "kneep3"
command = ~B, DB, D, DF, F, c
time = 30

[Command]
name = "HCB_x"
command = ~F, DF, D, DB, B, x
time = 30

[Command]
name = "HCB_y"
command = ~F, DF, D, DB, B, y
time = 30

[Command]
name = "HCB_z"
command = ~F, DF, D, DB, B, z
time = 30

[Command]
name = "QCF_x"
command = ~10$B,F,x
time = 30

[Command]
name = "QCF_y"
command = ~10$B,F,y
time = 30

[Command]
name = "QCF_z"
command = ~10$B,F,z
time = 30

[Command]
name = "upper_x"
command = ~F, D, DF, x

[Command]
name = "upper_y"
command = ~F, D, DF, y

[Command]
name = "upper_z"
command = ~F, D, DF, z

[Command]
name = "upper_a"
command = ~F, D, DF, a

[Command]
name = "upper_b"
command = ~F, D, DF, b

[Command]
name = "upper_c"
command = ~F, D, DF, c

[Command]
name = "hpk"
command = ~20$D, U, a
time = 30

[Command]
name = "hpk"
command = ~20$D, U, b
time = 30

[Command]
name = "hpk"
command = ~20$D, U, c
time = 30

[Command]
name = "hpp"
command = ~20$D, U, x
time = 30

[Command]
name = "hpp"
command = ~20$D, U, y
time = 30

[Command]
name = "hpp"
command = ~20$D, U, z
time = 30

[Command]
name = "QCB_x"
command = ~D, DB, B, x

[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_z"
command = ~D, DB, B, z

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_c"
command = ~D, DB, B, c

[Command]
name = "DU"  
command = $D, $U
time = 10


;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "DD"     ;Required (do not remove)
command = D, D
time = 10

[Command]
name = "UU"     ;Required (do not remove)
command = U, U
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

; The main purpose of having these next two controllers here at the top of
; StateDef -1 is to make sure the AI helper never changes to a different state,
; nor encounters any VarSets within State -1.
; But they also improve efficiency by preventing Mugen from wasting time
; processing the entire State -1 for the helper.
[State -1, AI Helper Check]
type = ChangeState
trigger1 = IsHelper(9741)
value = 9741

[State -1, AI Helper Check 2]
type = ChangeState
trigger1 = IsHelper(9742)
value = 9742


;===========================================================================
;---------------------------------------------------------------------------
;Smash Kung Fu Upper (uses one super bar)
;スマッシュ・カンフー・ウッパー（ゲージレベル１）
[State -1, Smash Kung Fu Upper]
type = ChangeState
value = 3050
triggerall = var(0) != 1 
triggerall = command = "QCF_ab"
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3050,3100)
trigger2 = movecontact
trigger3 = stateno = [1000,1010)
trigger3 = statetime >= 8
trigger4 = stateno = [1090,1100)
trigger4 = statetime >= 8
;---------------------------------------------------------------------------
;Triple Kung Fu Palm (uses one super bar)
;三烈カンフー突き手（ゲージレベル１）
[State -1, Triple Kung Fu Palm]
type = ChangeState
value = 3000
triggerall = var(0) != 1 
triggerall = command = "QCF_xy"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA, HA
trigger2 = stateno != [3000,3050)
trigger2 = movecontact
trigger3 = statetype = A
trigger3 = ctrl
trigger4 = stateno = 600 || stateno = 630 || stateno = 640 || stateno = 610 || stateno = 641
trigger4 = movecontact
trigger5 = stateno = 3080
trigger6 = stateno = [1000,1010)
trigger6 = statetime >= 8
trigger7 = stateno = [1090,1100)
trigger7 = statetime >= 8

[State -1, Counter]
type = ChangeState
value = 3435
triggerall = var(0) != 1 
triggerall = stateno != 3435
triggerall = power >= 1000
triggerall = command = "QCB_x" || command = "QCB_y" || command = "QCB_z" 
trigger1 = statetype = S || statetype = C
trigger1 = stateno = [150,155]


[State -1, Counter]
type = ChangeState
value = 3435
triggerall = var(0) != 1 
triggerall = stateno != 3435
triggerall = power >= 1000
triggerall = command = "QCB_a" || command = "QCB_b" || command = "QCB_c"
trigger1 = statetype = S || statetype = C
trigger1 = stateno = [150,155]


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



;Recovery - Roll
[State -1, Recovery - Roll Far]
type = VarSet
triggerall = var(0) != 1 
trigger1 = (var(12) = 0) && (MoveType = H) 
trigger1 = command = "QCB_z" || command = "QCB_c" 
v = 12
value = 1

;Recovery - Roll
[State -1, Recovery - Roll Short]
type = VarSet
triggerall = var(0) != 1 
trigger1 = (var(12) = 0) && (MoveType = H) 
trigger1 = command = "QCB_a" || command = "QCB_x"
v = 12
value = 2

;Recovery - Roll
[State -1, Recovery - Roll Medium]
type = VarSet
triggerall = var(0) != 1 
trigger1 = (var(12) = 0) && (MoveType = H) 
trigger1 = command = "QCB_b" || command = "QCB_y"
v = 12
value = 3

[State -1,Recovery - Roll Deactivate]
type = VarSet
trigger1 = ((var(12) > 0) && (MoveType != H)) || (Lose)
v = 12
value = 0


;===========================================================================
;Fly up
[State -1]
type = ChangeState
value = 1999
triggerall = var(0) != 1 
triggerall = command = "QCB_ab"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = statetype = A
trigger2 = ctrl = 1

;===========================================================================
;Fly down
[State -1]
type = ChangeState
value = 78
triggerall = var(0) != 1 
triggerall = command = "QCB_ab"
trigger1 = stateno = 3080

;---------------------------------------------------------------------------
[State -1,Warp X]
type = VarSet
triggerall = var(0) != 1
trigger1 = command = "upper_x"
v = 6
value = 1

[State -1,Warp Y]
type = VarSet
triggerall = var(0) != 1
trigger1 = command = "upper_y"
v = 6
value = 2

[State -1,Warp Z]
type = VarSet
triggerall = var(0) != 1
trigger1 = command = "upper_z"
v = 6
value = 3

[State -1,Warp Z]
type = VarSet
triggerall = var(0) != 1
trigger1 = command = "upper_a"
v = 6
value = 4

[State -1,Warp Z]
type = VarSet
triggerall = var(0) != 1
trigger1 = command = "upper_b"
v = 6
value = 5

[State -1,Warp Z]
type = VarSet
triggerall = var(0) != 1
trigger1 = command = "upper_c"
v = 6
value = 6


;Light Kung Fu Blow
[State -1, Light Kung Fu Blow]
type = ChangeState
value = 1200
triggerall = var(0) != 1
triggerall = command = "upper_x" || command = "upper_y" || command = "upper_z" || command = "upper_a" || command = "upper_b" || command = "upper_c"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = stateno = 78
trigger3 = statetype = A
trigger3 = ctrl
trigger4 = stateno = 3080

;---------------------------------------------------------------------------
;Head Press A
[State -1, Head Press]
type = ChangeState
value = 1120
triggerall = var(0) != 1
triggerall = command = "hpk"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = stateno = 40
trigger3 = statetype = A
trigger3 = ctrl
trigger4 = stateno = 3080
;---------------------------------------------------------------------------
;Head Press B
[State -1, Head Press]
type = ChangeState
value = 1124
triggerall = var(0) != 1
triggerall = command = "hpp"
trigger1 = statetype = S || statetype = C
trigger1 = ctrl
trigger2 = stateno = 40
trigger3 = statetype = A
trigger3 = ctrl
trigger4 = stateno = 3080
;---------------------------------------------------------------------------
;Fast Kung Fu Knee 
;速いカンフー蹴り（ゲージレベル１／３）
[State -1, Fast Kung Fu Knee]
type = changestate
value = 1090
triggerall = numhelper(1011) = 0
triggerall = var(0) != 1 
triggerall = command = "HCB_x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = var(1) ;Use combo condition (above)
;---------------------------------------------------------------------------
;Fast Kung Fu Knee 
;速いカンフー蹴り（ゲージレベル１／３）
[State -1, Fast Kung Fu Knee]
type = changestate
value = 1095
triggerall = numhelper(1011) = 0
triggerall = var(0) != 1 
triggerall = command = "HCB_y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Fast Kung Fu Knee 
;速いカンフー蹴り（ゲージレベル１／３）
[State -1, Fast Kung Fu Knee]
type = changestate
value = 1100
triggerall = numhelper(1011) = 0
triggerall = var(0) != 1 
triggerall = command = "HCB_z"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Light Kung Fu Knee
;カンフー蹴り（弱）
[State -1, Light Kung Fu Knee]
type = changestate
value = ifelse(pos y < 0,1070,1050)
triggerall = var(0) != 1 
triggerall = command = "kneep1"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = var(1) ;Use combo condition (above)
trigger3 = statetype = A
trigger3 = ctrl
trigger4 = stateno = 600 || stateno = 630 || stateno = 640 || stateno = 610 || stateno = 641 || stateno = 651
 || stateno = 650  || stateno = 620
trigger4 = movecontact
trigger5 = stateno = 3080
;---------------------------------------------------------------------------
;Light Kung Fu Knee
;カンフー蹴り（弱）
[State -1, Light Kung Fu Knee]
type = changestate
value = ifelse(pos y < 0,1075,1055)
triggerall = var(0) != 1 
triggerall = command = "kneep2"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = var(1) ;Use combo condition (above)
trigger3 = statetype = A
trigger3 = ctrl
trigger4 = stateno = 600 || stateno = 630 || stateno = 640 || stateno = 610 || stateno = 641 || stateno = 651
 || stateno = 650  || stateno = 620
trigger4 = movecontact
trigger5 = stateno = 3080
;---------------------------------------------------------------------------
;Light Kung Fu Knee
;カンフー蹴り（弱）
[State -1, Light Kung Fu Knee]
type = changestate
value = ifelse(pos y < 0,1080,1060)
triggerall = var(0) != 1 
triggerall = command = "kneep3"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = var(1) ;Use combo condition (above)
trigger3 = statetype = A
trigger3 = ctrl
trigger4 = stateno = 600 || stateno = 630 || stateno = 640 || stateno = 610 || stateno = 641 || stateno = 651
 || stateno = 650  || stateno = 620
trigger4 = movecontact
trigger5 = stateno = 3080
;---------------------------------------------------------------------------
;Light Kung Fu Palm
;カンフー突き手（弱）
[State -1, Light Kung Fu Palm]
type = changestate
value = 1000
triggerall = var(0) != 1 
triggerall = command = "QCF_x"
triggerall = numhelper(1001) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Light Kung Fu Palm
;カンフー突き手（弱）
[State -1, Light Kung Fu Palm]
type = changestate
value = 1005
triggerall = var(0) != 1 
triggerall = command = "QCF_y"
triggerall = numhelper(1001) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = var(1) ;Use combo condition (above)

;---------------------------------------------------------------------------
;Light Kung Fu Palm
;カンフー突き手（弱）
[State -1, Light Kung Fu Palm]
type = changestate
value = 1010
triggerall = var(0) != 1 
triggerall = command = "QCF_z"
triggerall = numhelper(1001) = 0
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = statetype != A
trigger2 = var(1) ;Use combo condition (above)


;===========================================================================
;---------------------------------------------------------------------------
;Run Fwd
;ダッシュ
[State -1, Run Fwd]
type = changestate
value = 100
triggerall = var(0) != 1  
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Run Back
;後退ダッシュ
[State -1, Run Back]
type = changestate
value = 105
triggerall = var(0) != 1  
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;Super Jump
[State -1, Super Jump]
type =  ChangeState
value = 7000
triggerall = var(0) != 1  
triggerall = command = "DU"
triggerall = statetype != A
trigger1 = ctrl

;Guard Push
[State -1, Guard Push]
type = ChangeState
value = 985
triggerall = var(0) != 1  
triggerall = command = "x" && command = "y" || command = "y" && command = "z"
trigger1 = statetype = A 
trigger1 = stateno = [150,155] ;The guard state numbers

;Guard Push
[State -1, Guard Push]
type = ChangeState
value = 980
triggerall = var(0) != 1  
triggerall = command = "x" && command = "y" || command = "y" && command = "z"
trigger1 = statetype = S || statetype = C
trigger1 = stateno = [150,155] ;The guard state numbers

;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1,Air Kung Fu Throw]
type = ChangeState
value = 830
triggerall = var(0) != 1  
triggerall = command = "y" || command = "z"
triggerall = statetype = A
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 25
trigger1 = (p2statetype = A) 
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 25
trigger2 = (p2statetype = A) 
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;Kung Fu Throw
;投げ
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = var(0) != 1  
triggerall = command = "y" || command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 25
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 25
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;---------------------------------------------------------------------------
;Taunt
;挑発
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(0) != 1
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl


;===========================================================================
;===========================================================================
;---------------------------------------------------------------------------
;Stand Light Punch
;立ち弱パンチ
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(0) != 1  
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl


;---------------------------------------------------------------------------
;Stand Medium Punch
;立ち弱パンチ
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = var(0) != 1  
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact ;Light Punch
trigger3 = (stateno = 230) && movecontact ;Light Kick
trigger4 = (stateno = 400) && movecontact ;Crouch Light Punch
trigger5 = (stateno = 430) && movecontact ;Crouch Light Kick


;---------------------------------------------------------------------------
;Stand Strong Punch
;立ち強パンチ
[State -1, Stand Strong Punch]
type = ChangeState
value = 220
triggerall = var(0) != 1 
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact ;Light Punch
trigger3 = (stateno = 230) && movecontact ;Light Kick
trigger4 = (stateno = 400) && movecontact ;Crouch Light Punch
trigger5 = (stateno = 430) && movecontact ;Crouch Light Kick

;---------------------------------------------------------------------------
;Stand Light Kick
;立ち弱キック
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(0) != 1 
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Stand Medium Kick
;立ち弱キック
[State -1, Stand Medium  Kick]
type = ChangeState
value = 240
triggerall = var(0) != 1 
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact ;Light Punch
trigger3 = (stateno = 230) && movecontact ;Light Kick
trigger4 = (stateno = 400) && movecontact ;Crouch Light Punch
trigger5 = (stateno = 430) && movecontact ;Crouch Light Kick



;---------------------------------------------------------------------------
;Standing Strong Kick
;立ち強キック
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = var(0) != 1 
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact ;Light Punch
trigger3 = (stateno = 230) && movecontact ;Light Kick
trigger4 = (stateno = 400) && movecontact ;Crouch Light Punch
trigger5 = (stateno = 430) && movecontact ;Crouch Light Kick

;---------------------------------------------------------------------------
;Crouching Light Punch
;しゃがみ弱パンチ
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = var(0) != 1 
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C || stateno = 100 ||  stateno = 105
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Medium Punch
;しゃがみ弱パンチ
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = var(0) != 1 
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C || stateno = 100 ||  stateno = 105
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact ;Light Punch
trigger3 = (stateno = 230) && movecontact ;Light Kick
trigger4 = (stateno = 400) && movecontact ;Crouch Light Punch
trigger5 = (stateno = 430) && movecontact ;Crouch Light Kick

;---------------------------------------------------------------------------
;Crouching Strong Punch
;しゃがみ強パンチ
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = var(0) != 1 
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C || stateno = 100 ||  stateno = 105
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact ;Light Punch
trigger3 = (stateno = 230) && movecontact ;Light Kick
trigger4 = (stateno = 400) && movecontact ;Crouch Light Punch
trigger5 = (stateno = 430) && movecontact ;Crouch Light Kick

;---------------------------------------------------------------------------
;Crouching Light Kick
;しゃがみ弱キック
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = var(0) != 1 
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C || stateno = 100 ||  stateno = 105
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Medium Kick
;しゃがみ弱キック
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = var(0) != 1 
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C || stateno = 100 ||  stateno = 105
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact ;Light Punch
trigger3 = (stateno = 230) && movecontact ;Light Kick
trigger4 = (stateno = 400) && movecontact ;Crouch Light Punch
trigger5 = (stateno = 430) && movecontact ;Crouch Light Kick

;---------------------------------------------------------------------------
;Crouching Strong Kick
;しゃがみ強キック
[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = var(0) != 1 
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C || stateno = 100 ||  stateno = 105
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact ;Light Punch
trigger3 = (stateno = 230) && movecontact ;Light Kick
trigger4 = (stateno = 400) && movecontact ;Crouch Light Punch
trigger5 = (stateno = 430) && movecontact ;Crouch Light Kick

;---------------------------------------------------------------------------
;Jump Light Punch
;空中弱パンチ
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(0) != 1 
triggerall = stateno != 100 && stateno != 105;not running
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 3080
;---------------------------------------------------------------------------
;Jump Medium Punch
;空中弱パンチ
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = var(0) != 1 
triggerall = stateno != 100 && stateno != 105;not running
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 
trigger2 = movecontact
trigger3 = stateno = 3080
;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = var(0) != 1 
triggerall = stateno != 100 && stateno != 105;not running
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 || stateno = 640 || stateno = 610 || stateno = 641
trigger2 = movecontact
trigger3 = stateno = 3080
;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = var(0) != 1 
triggerall = stateno != 100 && stateno != 105;not running
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact
trigger3 = stateno = 3080

;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = var(0) != 1 
triggerall = stateno != 100 && stateno != 105;not running
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 || stateno = 610 
trigger2 = movecontact
trigger3 = stateno = 3080

;---------------------------------------------------------------------------
;Jump Strong Kick
;空中強キック
[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = var(0) != 1 
triggerall = stateno != 100 && stateno != 105;not running
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 || stateno = 640 || stateno = 610 || stateno = 641
trigger2 = movecontact
trigger3 = stateno = 3080



;----------------------------------------------------------------------
; AI 
;=======================================================================

;[State -2, DTC]
;type = DisplayToClipboard
;trigger1 = 1
;text = "P2BodyDist X = %d, P2BodyDist Y = %d, Frontedgedist = %d, Backedgedist = %d"
;params = Floor(P2BodyDist X), Floor(P2BodyDist Y), frontedgedist, backedgedist
;IgnoreHitPause = 1



;-|-AI Attempt Hyper-|---------------------------------------------

[State -1, AI Smash Kung Fu Upper]
type = changestate
value = 3050
triggerall = var(0) = 1
triggerall = p2statetype!=L 
triggerall = power >= 1000 && statetype != A
trigger1 = ctrl && (P2BodyDist Y = [-150, 0]) && (P2BodyDist X = [100, 120])
trigger1 = p2movetype = A
trigger2 = (numhelper(1011) > 0) && p2movetype = H && random < 300
trigger2 = (p2bodydist x = [30,50]) && ctrl && statetype != A
trigger3 = (numhelper(1001) > 0) && p2movetype = H && random < 300
trigger3 = (p2bodydist x = [30,50]) && ctrl && statetype != A

[State -1, Triple Kung Fu Palm]
type = changestate
value = 3000
triggerall = var(0) = 1
triggerall = power >= 1000 && p2statetype != L
trigger1 = (stateno = [200,299]) || (stateno = [400,499]) && stateno != 220
trigger1 = movehit && stateno != 450
trigger1 = (p2bodydist x=[0,40]) && random <= 300 && statetype != A
trigger2 = (stateno = 1090|| stateno = 1095 || stateno = 1100) && p2movetype = H && statetime > 7 && random < 200
trigger2 = p2bodydist x = [10,30]
trigger3 = !(enemy,ctrl) && (enemy,stateno!=[120,155]) && (p2bodydist x=[0,40]) && (p2bodydist y=[-100,0])
trigger3 = Statetype != A && ctrl && p2movetype = A && random <= 200
trigger4 = (numhelper(1011) > 0) && p2movetype = H && random < 300
trigger4 = (p2bodydist x = [10,30]) && ctrl && statetype != A
trigger5 = stateno = 610|| stateno = 640 
trigger5 = (MoveHit) && random < 200

[State -1, Counter]
type = ChangeState
value = 3435
triggerall = var(0) = 1 
triggerall = stateno != 3435 && pos y = 0
triggerall = power >= 1000
trigger1 = statetype = S || statetype = C
trigger1 = (stateno = [150,155]) && random < 400
trigger1 = (p2bodydist x=[0,50]) && !(enemy,ctrl) && (p2bodydist y=[-20,5])

;--------------------- Defence 2 ------------------------------------------
[State -1]
type = ChangeState
triggerall = var(0) = 1 
triggerall = stateno != [100,105]
triggerall = (Ctrl) && (p2movetype = A) && (statetype = A)
trigger1 = (p2bodydist X <= 500) && (random <= 800)
value = 132

[State -1]
type = ChangeState
triggerall = var(0) = 1 
triggerall = stateno != [100,105]
triggerall = (Ctrl) && (p2movetype = A) && (statetype = C)
trigger1 = (p2bodydist X <= 500) && (random <= 800)
value = 131

[State -1]
type = ChangeState
triggerall = var(0) = 1
triggerall = stateno != [100,105]
triggerall = (Ctrl) && (p2movetype = A) && (statetype = S) && (p2statetype != C)
trigger1 = (p2bodydist X <= 500) && (random <= 800)
value = 130
;------------------
;-|-AI Combo Attempt-|----------------------------------------------

[State -1, AIR Kung Fu Throw]
type = ChangeState
value = 830
triggerall = var(0) = 1
triggerall = statetype = A
triggerall = ctrl
triggerall = stateno != 100
triggerall = p2bodydist y = [-10,10]
trigger1 = p2bodydist X < 25
trigger1 = random < 400
trigger1 = (p2statetype = A)
trigger1 = p2movetype != H
trigger2 = p2bodydist X < 25
trigger2 = (p2statetype = A)
trigger2 = p2movetype != H
trigger2 = random < 400

[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = var(0) = 1 
triggerall = statetype = S 
triggerall = ctrl
triggerall = stateno != 100
trigger1 = p2bodydist X < 25
trigger1 = (p2statetype = S) || (p2statetype = C) 
trigger1 = p2movetype != H
trigger1 = random < 400
trigger2 = p2bodydist X < 25
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
trigger2 = random < 400


[State -1,AI Crouch Weak Kick]
type = ChangeState
value = 430
triggerall = var(0) = 1 && p2statetype != A ;&& P2statetype = S
trigger1 = p2bodydist x <= 35
trigger1 = (statetype != A) 
trigger1 = ctrl && random < 500
trigger2 = (stateno = [100,105]) && ctrl
trigger2 = p2bodydist x <= 35
trigger2 = (statetype != A) 
trigger2 = ctrl && random < 500
trigger3 = stateno = 22
trigger3 = p2bodydist x <= 35
trigger3 = (statetype != A) 
trigger3 = ctrl && random < 500



[State -1, AI Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(0) = 1
triggerall = p2statetype != L && p2statetype != C
trigger1 = p2bodydist x <= 44 && (p2bodydist y = [-5,5])
trigger1 = statetype != A || (stateno = [100,105]) 
trigger1 = ctrl && p2statetype = S && random < 300

[State -1, AI Stand Light Kick]
type = ChangeState
value = 230
triggerall = var(0) = 1
triggerall = p2statetype != L && p2statetype != C
trigger1 = p2bodydist x <= 44 && (p2bodydist y = [-5,5])
trigger1 = (stateno = [100,105]) 
trigger1 = ctrl && p2statetype = S && random < 300


[State -1,AI Stand Strong Punch]
type = ChangeState
value = 220
triggerall = var(0) = 1 && p2statetype != L && p2bodydist y = 0
trigger1 = stateno = 430 || stateno = 230 || stateno = 400 || stateno = 200
trigger1 = movehit
trigger1 = random < 400
trigger1 = p2bodydist x <= 25
trigger1 = p2bodydist y = [-7,5]
trigger2 = p2bodydist x <= 15 && stateno = 430 && movehit && random < 800 
trigger3 = p2bodydist x <= 15 && (stateno = 200 || stateno = 230)
trigger3 = movehit && random < 100 
trigger4 = p2bodydist x <= 17
trigger4 = statetype != A || (stateno = [100,105])
trigger4 = ctrl && random < 100 


[State -1,AI Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = var(0) = 1;&& p2movetype != A
trigger1 = stateno = 430 || stateno = 400 || stateno = 230
trigger1 = movehit
trigger1 = random < 80
trigger2 = stateno = 200
trigger2 = movehit && random <=80 && p2statetype != A
trigger3 = P2statetype = S
trigger3 = p2bodydist x <= 40
trigger3 = p2bodydist y = [-5,5]
trigger3 = statetype != A 
trigger3 = ctrl && random <=80
trigger4 = stateno = 230 || stateno = 200
trigger4 = movehit
trigger4 = random < 80
trigger4 = p2bodydist y = [-2,2]

[State -1, AI Crouch Light Punch]
type = ChangeState
value = 400
triggerall = var(0) = 1;
triggerall = p2statetype != A && p2statetype != L
trigger1 = p2bodydist x <= 30
trigger1 = (statetype != A) 
trigger1 = ctrl && random < 500 
trigger2 = p2bodydist x <= 30
trigger2 = (stateno = [100,105])
trigger2 = ctrl && random < 500 

[State -1,AI Crouch Strong Punch]
type = ChangeState
value = 420
triggerall = var(0) = 1 && p2bodydist y = 0
trigger1 = p2bodydist x <= 15 && stateno = 430 && movehit && random < 80
trigger2 = p2bodydist x <= 15 && (stateno = 200 || stateno = 230)
trigger2 = movehit && random < 100 

[State -1, AI Crouch Light Punch]
type = ChangeState
value = 400
triggerall = var(0) = 1;
triggerall = p2statetype != A && p2statetype != L
trigger1 = p2bodydist x <= 30
trigger1 = (stateno = [100,105])
trigger1 = ctrl && random < 500 

[State -1, AI Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(0) = 1
triggerall = p2statetype = A
trigger1 = p2bodydist x <=30
trigger1 = p2bodydist y = [-70,5]
trigger1 = statetype != A || (stateno = [100,105])
trigger1 = ctrl
trigger1 = random < 500

[State -1,AI Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = var(0) = 1
triggerall = p2statetype != A && p2statetype != L 
trigger1 = stateno = 400 || stateno = 430
trigger1 = movehit && random < 80


[State -1,AI Stand Medium Punch]
type = ChangeState
value = 210
triggerall = var(0) = 1 && p2statetype != C && p2statetype != L
trigger1 = stateno = 200 || stateno = 400
trigger1 = movehit
trigger1 = p2bodydist x <= 30
trigger2 = p2bodydist x <= 50
trigger2 = p2bodydist y = [-5,5]
trigger2 = statetype != A || (stateno = [100,105])
trigger2 = ctrl && p2statetype = A && random < 400


[State -1,AI Stand Medium Kick]
type = ChangeState
value = 240
triggerall = var(0) = 1&& p2statetype != C && p2statetype != L
trigger1 = stateno = 230 || stateno = 200
trigger1 = movehit
trigger1 = random < 500
trigger2 = stateno = 400 || stateno = 430
trigger2 = movehit
trigger2 = random < 500

[State -1, AI Standing Strong Kick]
type = ChangeState
value = 250
triggerall = var(0) = 1 && p2statetype != C && p2statetype != L
trigger1 = stateno = 200 || stateno = 230 || stateno = 400 
trigger1 = movecontact
trigger1 = random < 80
trigger1 = p2bodydist x <= 40
trigger1 = p2bodydist y = [-10,5]

[State -1,AI Crouch Strong Kick]
type = ChangeState
value = 450
triggerall = var(0) = 1
triggerall = p2bodydist x = [-2,44]
triggerall = P2MoveType != A
trigger1 = stateno = 430 
trigger1 = movehit
trigger1 = random < 200
trigger2 = stateno = 400
trigger2 = movehit
trigger2 = random < 50


[State -1, Head Press A]
type = ChangeState
value = 1120
triggerall = frontedgedist >= 10 && p2movetype != H && (p2statetype != A)
triggerall = var(0) = 1
trigger1 = statetype = A || stateno = 3080
trigger1 = ctrl && random <= 80
trigger1 = p2bodydist X = [55,170]
trigger2 = p2bodydist X >= 60
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype = I 
trigger2 = random <= 30
trigger2 = statetype = S
trigger2 = ctrl
trigger3 = p2bodydist X >= 60
trigger3 = p2statetype = S
trigger3 = random <= 80
trigger3 = statetype = S
trigger3 = ctrl
trigger4 = random <= 50
trigger4 = (p2bodydist x >= 60)
trigger4 = (enemy,vel y > 0)
trigger4 = statetype = S && random <= 80
trigger4 = ctrl && p2movetype != H
trigger5 = random <= 80
trigger5 = (p2bodydist x >= 50)
trigger5 = (enemy,vel x > 0)
trigger5 = statetype = S
trigger5 = ctrl && p2movetype != H
trigger6 = stateno = 3080
trigger6 = p2bodydist X >= 55

[State -1, Head Press B]
type = ChangeState
value = 1124
triggerall = frontedgedist >= 10 && p2movetype != H && (p2statetype != A)
triggerall = var(0) = 1
trigger1 = statetype = A || stateno = 3080
trigger1 = ctrl && random <= 80
trigger1 = p2bodydist X = [55,170]
trigger2 = p2bodydist X >= 55 && random <= 100
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype = I
trigger2 = random <= 80
trigger2 = statetype = S
trigger2 = ctrl
trigger3 = p2bodydist X >= 55
trigger3 = p2statetype = S
trigger3 = random <= 80
trigger3 = statetype = S
trigger3 = ctrl


;-|-AI XMEN vs SF Super Attempt-|----------------------------------------------

[State -1, SpinBall 1]
type = ChangeState
value = ifelse(pos y < 0,1070,1050) 
triggerall = (var(0) = 1) && (stateno != [1050,1060]) && stateno != 220
triggerall = p2statetype!=L 
trigger1 = (P2BodyDist Y = [-90, -5]) && (p2bodydist x = [10,30]) && random < 200
trigger1 = statetype != A && ctrl || (stateno = [100,105])&& ctrl
trigger2 = (p2bodydist x = [10,40]) && p2movetype = A
trigger2 = (P2BodyDist Y = [-5, 0]) && Statetype != A && ctrl
trigger3 = p2bodydist x = [40,45]
trigger3 = (stateno = 440 || stateno = 210) && movehit && random <= 300
trigger4 = !(enemy,ctrl) && (enemy,stateno!=[120,155]) && (p2bodydist x=[0,30]) && (p2bodydist y=[-100,0])
trigger4 = statetype != A || (stateno = [100,105])
trigger4 = ctrl && random <= 200
trigger5 = (StateType != A) && (stateno = 400) && (Movehit) && random < 100

[State -1, SpinBall 2]
type = ChangeState
value = ifelse(pos y < 0,1075,1055) 
triggerall = (var(0) = 1) && (stateno != [1050,1060]) && stateno != 220
triggerall = p2statetype!=L 
trigger1 = P2BodyDist Y = [-110, -5]
trigger1 = p2bodydist x = [10,50]
trigger1 = Statetype != A || statetype = A && var(36) != 1 
trigger1 = random < 200 && ctrl
trigger2 = (p2bodydist x = [10,50]) && p2movetype = A && (P2BodyDist Y = [-5, 0]) && Statetype != A && ctrl
trigger3 = !(enemy,ctrl) && (enemy,stateno!=[120,155])
trigger3 = (p2bodydist x=[0,50]) && (p2bodydist y=[-120,0]) && Statetype != A && ctrl && random <= 200

[State -1, SpinBall 3]
type = ChangeState
value = ifelse(pos y < 0,1080,1060)
triggerall = (var(0) = 1) && (stateno != [1050,1060]) && stateno != 220
trigger1 = (P2BodyDist Y = [-170, -10]) && (p2bodydist x = [10,55]) && ctrl
trigger1 = Statetype != A || statetype = A && var(36) != 1 || (stateno = [100,105]) && random <= 300

[State -1, VarSet]
type = VarSet
trigger1 = p2statetype != A
var(36) = 0

[State -1,AI Fireball X]
type = ChangeState
value = 1090
triggerall = var(0) = 1
triggerall = numhelper(1011) = 0 && p2movetype != A
trigger1 = statetype != A && ctrl || (stateno = [100,105]) && ctrl
trigger1 = P2BodyDist X = [85,100]
trigger1 = (P2BodyDist Y = [-10, 5]) && random <= 200 && enemy,vel x <= 0

[State -1,AI Fireball X]
type = ChangeState
value = 1000
triggerall = var(0) = 1
triggerall = numhelper(1001) = 0 && p2movetype != A
trigger1 = statetype != A && ctrl || (stateno = [100,105]) && ctrl
trigger1 = P2BodyDist X >= 150
trigger1 = (P2BodyDist Y = [-30, -3]) && random <= 200 && enemy,vel x <= 0

[State -1, AI Run Fwd]
type = ChangeState
value = 100
triggerall = var(0) = 1
triggerall = stateno != 22 && stateno != 100
trigger1 = (p2movetype != A) && statetype != A && ctrl
trigger1 = (p2bodydist x = [40,150]) ;&& (p2bodydist y = [-100,0])
trigger1 = random < 700 && enemy,vel x <= 0 


[State -1,AI Fireball X]
type = ChangeState
value = 1005
triggerall = var(0) = 1
triggerall = numhelper(1001) = 0 && p2movetype != A
trigger1 = statetype != A && ctrl || (stateno = [100,105]) && ctrl
trigger1 = P2BodyDist X >= 150
trigger1 = (P2BodyDist Y = 0) && random <= 200 && enemy,vel x <= 0

[State -1,AI Fireball Z]
type = ChangeState
value = 1010
triggerall = var(0) = 1
triggerall = numhelper(1001) = 0 && p2movetype != A
trigger1 = statetype != A && ctrl || (stateno = [100,105]) && ctrl
trigger1 = P2BodyDist X >= 170
trigger1 = (P2BodyDist Y = [-30, -3]) && random <= 200 ;&& enemy,vel x <= 0

[State -1,AI Fireball Y]
type = ChangeState
value = 1095
triggerall = var(0) = 1
triggerall = numhelper(1011) = 0 && p2movetype != A
triggerall = P2Movetype != A
trigger1 = statetype != A && ctrl || (stateno = [100,105]) && ctrl
trigger1 = P2BodyDist X > 150  && (P2BodyDist Y = [-50, 0]) && random < 100  && enemy,vel x <= 0
trigger2 = statetype != A && ctrl || (stateno = [100,105]) && ctrl
trigger2 = P2BodyDist X > 120  && (P2BodyDist Y = [-50, 0]) && random < 100 
trigger2 = p2stateno = 5100 || p2stateno = 5120


[State -1,AI Fireball Z]
type = ChangeState
value = 1100
triggerall = var(0) = 1
triggerall = numhelper(1011) = 0 && p2movetype != A
trigger1 = statetype != A && ctrl
trigger1 = P2BodyDist X > 150 && (P2BodyDist Y = [-10, 0])
trigger1 = random < 100  && enemy,vel x <= 0


[State -1, Drill FWD A]
type = ChangeState
value = 1050
triggerall = (var(0) = 1) && p2statetype = S && (p2bodydist x = [11,46]) 
trigger1 = (StateType = A) && ctrl && random < 10 && stateno != 220
trigger2 = Statetype = A && ctrl && p2bodydist x < 40 && (p2bodydist y = [-11,10])
trigger2 = p2statetype = S || p2statetype = C

[State -1, Drill FWD B]
type = ChangeState
value = 1055
triggerall = (var(0) = 1) && p2statetype = S && stateno != 220

triggerall = p2bodydist x = [11,65]
trigger1 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact) && random < 50 && stateno != 420
trigger2 = Statetype = A && ctrl && p2bodydist x < 50 && (p2bodydist y = [-11,10])
trigger2 = p2statetype = S || p2statetype = C
trigger3 = (stateno = 250 || stateno = 440 || stateno = 220 || stateno = 400) && movehit && random < 100
trigger4 = (stateno = 440 || stateno = 240) && movehit && random < 300

[State -1, Drill FWD C]
type = ChangeState
value = 1060
triggerall = (var(0) = 1) && p2statetype = S && stateno != 220
triggerall = p2bodydist x = [5,95]
trigger1 = (StateType != A) && (HitdefAttr = SC, NA) && (MoveContact) && random < 50 && stateno != 420
trigger2 = Statetype = A && ctrl && p2bodydist x < 40
trigger2 = (p2statetype = S || p2statetype = C) && (p2bodydist y = [-11,10])
trigger3 = (stateno = 250 || stateno = 400 || stateno = 220 || stateno = 240) && movehit && random < 100
trigger4 = (stateno = 440 || stateno = 240) && movehit && random <= 300
trigger5 = (stateno = 241 || stateno = 240) && hitcount > 2 && random <= 200



;-|-AI Air Combo -|----------------------------------------------

[State -1, AI Super Jump 2]
type = ChangeState
value = 7000
triggerall = stateno != 100 && pos y = 0 && ctrl && p2stateno != 822 && p2stateno != 823
triggerall = (var(0) = 1) 
triggerall = statetype != A
triggerall = (p2bodydist y = [-300,-70]) 
trigger1 = enemy,vel y < -1
trigger1 = p2bodydist x = [ 20, 50]
trigger1 = random <= 100 && p2movetype != A  
trigger1 = p2statetype = S
trigger2 = enemy,vel y < -1
trigger2 = p2movetype = H && (p2stateno = 5040 || p2stateno = 5200 || p2stateno = 5210) 
trigger2 = p2bodydist x <= 30
trigger3 = P2MoveType != H
trigger3 = P2BodyDist Y < -90
trigger3 = enemy,vel y <= 0
trigger3 = random < 40

[State -1, AI Jump strong kick]
type = ChangeState
value = 650
triggerall = var(0) = 1 
trigger1 = stateno = 640
trigger1 = movecontact && p2bodydist x < 40
trigger1 = random < 100 
trigger2 = p2bodydist x <= 60
trigger2 = P2BodyDist Y = [1, 100]
trigger2 = statetype = A 
trigger2 = ctrl  && var(36) != 1
trigger2 = random <= ifelse(p2statetype = S,500,100) && p2statetype != C

[State -1, AI Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(0) = 1
triggerall = stateno != 100 && stateno != 105;not running
trigger1 = p2bodydist x <= 30
trigger1 = P2BodyDist Y = [-70, 30]
trigger1 = statetype = A
trigger1 = ctrl

[State -1, AI Jump light kick]
type = ChangeState
value = 630
triggerall = var(0) = 1
trigger1 = (StateNo = 600) && (Movecontact)

[State -1, AI Jump Medium kick]
type = ChangeState
value = 640
triggerall = var(0) = 1
trigger1 = stateno = 610 || stateno = 630
trigger1 = movecontact
trigger1 = random < 500 
trigger2 = p2bodydist x <= 40
trigger2 = P2BodyDist Y = [-1, 30]
trigger2 = statetype = A
trigger2 = ctrl
trigger2 = p2statetype = S
trigger2 = random < 500 
trigger3 = stateno = 3080
trigger3 = p2bodydist x <= 40
trigger3 = P2BodyDist Y = [-1, 30]
trigger3 = p2statetype = S || p2statetype = A
trigger3 = random < 500 

[State -1, AI Jump Medium Punch]
type = ChangeState
value = 610
triggerall = var(0) = 1
trigger1 = stateno = 630
trigger1 = movecontact
trigger1 = P2BodyDist Y = [-20, -1]

[State -1, Special1 Air]
type = ChangeState
value = 1070
triggerall = (var(0) = 1) 
trigger1 = stateno = 610|| stateno = 640
trigger1 = (MoveHit)
trigger1 = random < ifelse(p2bodydist x < 40, 250,700)

[State -1, Special1 Air]
type = ChangeState
value = 1075
triggerall = (var(0) = 1) 
trigger1 = stateno = 610|| stateno = 640
trigger1 = (MoveHit)
trigger1 = random < ifelse(p2bodydist x < 40, 250,700)

[State -1, Special1 Air]
type = ChangeState
value = 1080
triggerall = (var(0) = 1) 
trigger1 = stateno = 610|| stateno = 640
trigger1 = (MoveHit)
trigger1 = random < ifelse(p2bodydist x < 40, 250,700)


[State -1, AI Diving Attack X]
type = ChangeState
value = 1070
triggerall = (var(0) = 1) 
triggerall = (var(36) != 1) 
trigger1 = statetype = A && (stateno != [100,105])
trigger1 = ctrl && random < 50
trigger1 = p2bodydist x >= 50
trigger1 = pos y < 20
trigger1 = p2bodydist y = [ -1, 80]
trigger2 = stateno = 3080 && (stateno != [100,105])
trigger2 = random < 50
trigger2 = p2bodydist x >= 50
trigger2 = pos y < 20
trigger2 = p2bodydist y = [ -1, 80]


[State -1, AI Diving Attack X]
type = ChangeState
value = 1075
triggerall = (var(0) = 1) 
triggerall = (var(36) != 1) 
trigger1 = statetype = A && (stateno != [100,105])
trigger1 = ctrl && random < 50
trigger1 = p2bodydist x = [ 30, 50]
trigger1 = pos y < 20
trigger1 = p2bodydist y = [ 1, 80]
trigger2 = stateno = 3080 && (stateno != [100,105])
trigger2 = random < 50
trigger2 = p2bodydist x >= 50
trigger2 = pos y < 20
trigger2 = p2bodydist y = [ -1, 80]

[State -1, AI Diving Attack X]
type = ChangeState
value = 1080
triggerall = (var(0) = 1) 
triggerall = (var(36) != 1) 
trigger1 = statetype = A && (stateno != [100,105])
trigger1 = ctrl && random < 50
trigger1 = pos y < 20
trigger1 = p2bodydist x = [ 30, 50]
trigger1 = p2bodydist y = [ 1, 80]
trigger2 = stateno = 3080 && (stateno != [100,105])
trigger2 = random < 50
trigger2 = p2bodydist x >= 50
trigger2 = pos y < 20
trigger2 = p2bodydist y = [ -1, 80]

[State -1, AI Jump Strong Punch]
type = ChangeState
value = 620
triggerall = var(0) = 1 && p2bodydist x < 40
trigger1 = stateno = 610|| stateno = 640
trigger1 = movecontact
trigger1 = random < 500 

;--|-AI Defense-|-----------------------------------------------------------
[State -1, AI Run Fwd Stop]
type = ChangeState
triggerall = var(0) = 1
triggerall = stateno = 100 || stateno = 101 || stateno = 22 || stateno = 20
trigger1 = P2movetype = A  
trigger2 = enemy,vel x > 0 && (enemy,facing != facing) && random < 200
trigger3 = p2bodydist x <= 30 ;&& random < 200
value = 0
ctrl = 1

[State -1, Stay Still]
type = ChangeState
value = 0
triggerall = var(0) = 1
trigger1 = statetype != A && stateno = 40
ctrl = 1


[State -1, AI Run Bwd]
type = ChangeState
value = 105
triggerall = var(0) = 1
triggerall = stateno != 105 && backedgedist > 50 && p2movetype != A && enemy,vel x <= 0
trigger1 = frontedgedist < 70 && statetype = S && ctrl && random < 80
trigger2 = p2statetype = L && statetype = S && ctrl && random < 80 && (p2bodydist x = [0,40])

[State -1, AI Super Jump]
type = ChangeState
value = 7000
triggerall = var(0) = 1
triggerall = statetype != A
trigger1 = ctrl && frontedgedist > 180
trigger1 = p2bodydist x > 115 && random < 100
trigger2 = ctrl && frontedgedist > 180
trigger2 = p2bodydist x > 100 && random < 100
trigger2 = p2bodydist y = 0 && p2movetype = A

[State -1, AI Walk Fwd]
type = ChangeState
value = 22
triggerall = var(0) = 1
triggerall = stateno != 22 && stateno != 100
trigger1 = statetype != A && ctrl
trigger1 = p2bodydist x > 10 && random < 800
trigger1 = p2movetype != A

[State -1,Jump]
type = ChangeState
value = 49
triggerall = stateno != 100 && pos y = 0 && ctrl && p2stateno != 822 && p2stateno != 823
triggerall = var(0) = 1
triggerall = statetype != A && frontedgedist > 200 && p2movetype != A  
trigger1 = (p2bodydist x = [170,180]) && random <= 400 
trigger1 = enemy,backedgedist < 70
trigger2 = p2bodydist x > 120 && random < 60

[State -1,Jump]
type = ChangeState
value = 49
triggerall = stateno != 100 && pos y = 0 && ctrl && p2stateno != 822 && p2stateno != 823
triggerall = var(0) = 1
triggerall = statetype != A && enemy,vel y < 0 && enemy,pos y < -10
triggerall = p2movetype != A
trigger1 = p2stateno = 5040 || p2stateno = 5200 || p2stateno = 5210 || p2movetype = H 
trigger1 = (p2bodydist y = [-40,-1]) || enemy,vel y < 0
trigger1 = p2bodydist x <= 25 && random < 200
trigger2 = p2movetype = H && (p2stateno = 5040 || p2stateno = 5200 || p2stateno = 5210) 
trigger2 = (p2bodydist y = [-40,-1]) && p2bodydist x <= 50




--- Defence 3 ------------------------------------------
;Guard Push
[State -1, Guard Push]
type = ChangeState
value = 985
triggerall = var(0) = 1  
trigger1 = random < 400
trigger1 = statetype = A 
trigger1 = stateno = [150,155] ;The guard state numbers

;Guard Push
[State -1, Guard Push]
type = ChangeState
value = 980
triggerall = var(0) = 1  
trigger1 = random < 400
trigger1 = statetype = S || statetype = C
trigger1 = stateno = [150,155] ;The guard state numbers

[State -1, AI Stand to Crouch Guard Transition]
type = ChangeState
triggerall = var(0) = 1
triggerall = stateno != [100,105]
triggerall = inguarddist && StateType != A && P2statetype = C && P2Movetype = A
triggerall = Pos Y != [-1,-999]
trigger1 = stateno = 150
trigger1 = 1
value = 152

[State -1, AI Crouch to Stand Guard Transition]
type = ChangeState
triggerall = var(0) = 1
triggerall = (stateno != [100,105]) && Statetype != A && P2statetype != C && P2Movetype = A
trigger1 = 1
trigger1 = stateno = 152
value = 150

;Recovery - Roll
[State -1, Recovery - Roll Far]
type = VarSet
triggerall = var(0) = 1 
trigger1 = (var(12) = 0) && (MoveType = H) 
trigger1 = p2bodydist x >= 250
trigger1 = random < 70
v = 12
value = 1

;Recovery - Roll
[State -1, Recovery - Roll Short]
type = VarSet
triggerall = var(0) = 1 
trigger1 = (var(12) = 0) && (MoveType = H) 
trigger1 = p2bodydist x = [100,150]
trigger1 = random < 70
v = 12
value = 2

;Recovery - Roll
[State -1, Recovery - Roll Medium]
type = VarSet
triggerall = var(0) = 1 
trigger1 = (var(12) = 0) && (MoveType = H) 
trigger1 = p2bodydist x = [151,250]
trigger1 = random < 70
v = 12
value = 3

;---------------------------------------------------------------------------
[State -1,Warp FR A]
type = VarSet
triggerall = var(0) = 1 && statetype != A
trigger1 = random <= 100
trigger1 = p2bodydist X < 40 && p2movetype = A
trigger1 = backedgedist < 100 && teamside != 1
trigger2 = random <= 90
trigger2 = p2bodydist X > 50 && p2movetype = A
trigger2 = frontedgedist > 200 && teamside = 1
trigger3 = random <= 90
trigger3 = enemy,vel x > 0
trigger3 = backedgedist < 100
trigger4 = random <= 90
trigger4 = enemy,vel x > 0
trigger4 = frontedgedist > 200
v = 6
value = 4

[State -1,Warp C]
type = VarSet
triggerall = var(0) = 1
trigger1 = random <= 90
trigger1 = p2bodydist X < 40 && p2movetype = A
trigger1 = backedgedist > 200
trigger1 = teamside = 1
trigger2 = random <= 90
trigger2 = p2bodydist X > 50 && p2movetype = A
trigger2 = frontedgedist > 200
trigger2 = teamside = 1
v = 6
value = 6

[State -1, Light Kung Fu Blow]
type = ChangeState
value = 1200
triggerall = var(0) = 1 && stateno != 220 && p2movetype != H
triggerall = var(6) = [1,6]
trigger1 = statetype = S || statetype = C
trigger1 = ctrl && random < 100
trigger2 = stateno = 78
trigger3 = statetype = A
trigger3 = ctrl 
trigger4 = stateno = 3080

[State -1,AI Dont Fly]
type = ChangeState
triggerall = var(0) = 1
triggerall = P2MoveType != A
triggerall = stateno = 3080
trigger1 = p2statetype = S
trigger1 = p2bodydist Y > 50
value = 78

[State -1, Fly]
type = ChangeState
triggerall = var(0) = 1
triggerall = MoveType != H
triggerall = MoveType != A 
triggerall = random < 40
triggerall = StateNo != [3000, 4100]
triggerall = Pos Y >= 0
;triggerall = P2MoveType != A
trigger1 = P2Name = "Goku-n-hd by EmuBoarding"
trigger1 = P2StateNo = 1500
trigger2 = P2Name = "Mystic Gohan by Zero_X"
trigger2 = P2StateNo = 2000
trigger3 = P2Name = "Freeza by OverMind"
trigger3 = P2StateNo = 3001
trigger4 = P2Name = "Kurilin by EmuBoarding"
trigger4 = P2StateNo = 1500
trigger5 = P2Name = "Trunks por ssonic"
trigger5 = P2StateNo = 1900
trigger6 = P2Name = "Vegeta Super Sayjin 4 by EB and BS"
trigger6 = P2StateNo = 1500
trigger7 = P2Name = "N-Trunks by EmuBoarding"
trigger7 = P2StateNo = 1500
trigger8 = P2Name = "Mr.Boo by OverMind"
trigger8 = P2StateNo = 3001
trigger9 = P2Name = "Vegeta by OverMind"
trigger9 = P2StateNo = 3001
trigger10 = P2Name = "Broli Remix ver1.2"
trigger10 = P2StateNo = 2000
trigger11 = P2Name = "Mew Two"
trigger11 = P2StateNo = 1051
trigger12 = P2Name = "Raditz"
trigger12 = P2StateNo = 1510
trigger13 = P2Name = "C-Trunks by EmuBoarding"
trigger13 = P2StateNo = 1500
trigger14 = P2Name = "Vegeta por Ssonic"
trigger14 = P2StateNo = 1900
trigger15 = P2Name = "M. Bison"
trigger15 = P2StateNo = 89598
trigger16 = P2Name = "Cell por Ssonic"
trigger16 = P2StateNo = 1900
trigger17 = P2Name = "Recoom by Lucifer"
trigger17 = P2StateNo = 1500
trigger18 = P2Name = "Vegetto EX by Shishi-Ryu"
trigger18 = P2StateNo = 2000
trigger19 = P2Name = "Goku Super Sayajin 2 by ribeiro"
trigger19 = P2StateNo = 2000
trigger20 = P2Name = "Pan Dragonball GT por Ssonic"  
trigger20 = P2StateNo = 1900
trigger21 = P2Name = "The Necromancer"
trigger21 = P2StateNo = 2000
trigger22 = P2MoveType != H
trigger22 = P2BodyDist Y < -90
trigger22 = enemy,vel y <= 0
trigger22 = random < 20
value = 1999

