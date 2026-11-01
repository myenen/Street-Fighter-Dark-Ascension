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
;   time = time (optional -- defaults to 15 if omitted)
;
;-some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
;-command
;   list of buttons or directions, separated by commas.
;   Directions and buttons can be preceded by special characters:
;   slash (/)-means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~)-to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($)-Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+)-Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their command detection.
;
;-time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward+x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back+a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward+y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward+z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
; 
; [Command] ;Charge down, then up+c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10
; 

;-| Button Remapping |------------------------------------------------------------------------------------------------------------------------
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

;-| Default Values |--------------------------------------------------------------------------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;-| Single Button |---------------------------------------------------------------------------------------------------------------------------
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


;-| Hold Dir |-------------------------------------------------------------------------------------------------------------------------------
[Command]
name = "holdfwd"
command=/$F
time=1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time=1

[Command]
name = "holddown"
command = /$D
time = 1


;-| Hold Button |---------------------------------------------------------------------------------------------------------------------------
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


;-| Direction |-------------------------------------------------------------------------------------------------------------------------------
[Command]
name = "fwd"
command = F
time = 1

[Command]
name = "back"
command = B
time = 1

[Command]
name = "up"
command = U
time = 1

[Command]
name = "down"
command = D
time = 1

[Command]
name = "dfwd"
command = DF
time = 1

[Command]
name = "dback"
command = DB
time = 1

[Command]
name = "ufwd"
command = UF
time = 1

[Command]
name = "uback"
command = UB
time = 1


;-| Release Direction |-----------------------------------------------------------------------------------------------------------------------
[Command]
name = "rlsfwd"
command = ~$F
time = 1

[Command]
name = "rlsback"
command = ~$B
time = 1

[Command]
name = "rlsup"
command = ~$U
time = 1

[Command]
name = "rlsdown"
command = ~$D
time = 1


;-| Release Button |--------------------------------------------------------------------------------------------------------------------------
[Command]
name = "rlsx"
command = ~x
time = 1

[Command]
name = "rlsy"
command = ~y
time = 1

[Command]
name = "rlsz"
command = ~z
time = 1

[Command]
name = "rlsa"
command = ~a
time = 1

[Command]
name = "rlsb"
command = ~b
time = 1

[Command]
name = "rlsc"
command = ~c
time = 1


;-| Super Jump |------------------------------------------------------------------------------------------------------------------------------
[Command]
name = "highjump"
command = $D, $U
time = 15


;-| Double Tap Direction |--------------------------------------------------------------------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10


;-| 2/3 Button Combination |------------------------------------------------------------------------------------------------------------------
[Command]
name = "recovery"
command = x+y
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = a+x
time = 1

[Command]
name = "pp"
command = x+y
time = 1

[Command]
name = "pp"
command = x+z
time = 1

[Command]
name = "pp"
command = y+z
time = 1

[Command]
name = "kk"
command = a+b
time = 1

[Command]
name = "kk"
command = a+c
time = 1

[Command]
name = "kk"
command = b+c
time = 1

[Command]
name = "a+x"
command = a+x
time=1

[Command]
name = "b+y"
command = b+y
time = 1

[Command]
name = "c+z"
command = c+z
time = 1

[Command]
name = "a+b"
command = a+b
time = 1

[Command]
name = "a+c"
command = a+c
time = 1

[Command]
name = "b+c"
command = b+c
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = null;ChangeState          ;Don't change this
;   value = new_state_number
;   ;trigger1 = command = command_name
;   . . .  (any additional triggers)
;
;-new_state_number is the number of the state to change to
;-command_name is the name of the command (from the section above)
;-Useful triggers to know:
;  -statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;  -Ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want Ctrl = 1
;  -stateno
;       number of state player is in-useful for "move interrupts"
;  -movecontact
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

;==============================================================================================
;==============================================================================================
;================================<EXPLODsive Buffering System>=================================
;====================================<by JustMorphPointman>====================================
;==============================================================================================
;==============================================================================================

;This is an explod-based buffering system, designed to overcome several different errors and bugs
;related to MUGEN's default method of processing commands, as well as offering creators more control
;over how the commands of their character should work. It is designed to be easy to use, understand,
;and install. For more information, including instructions on how to add this to a character, as
;well as how to customize it and add new commands, please visit http://mugenguild.com/forum/msg.2366951

;==============================================================================================
;========================<QUICK REFERENCE GUIDE TO THE EXPLOD ID #'s>==========================
;==============================================================================================

;BASIC DIRECTIONAL INPUTS (these are primarily used to detect directional releases, but also can
;be used outside of the Buffering system code block to detect when a specific direction is currently
;being input or held down)

;Down:										90000002
;Down-right:									90000003
;Right:										90000006
;Up-right:									90000009
;Up:										90000008
;Up-left:									90000007
;Left:										90000004
;Down-left:									90000001


;BUTTON PRESS
;x:										90000200
;y:										90000210
;z:										90000220
;a:										90000230
;b:										90000240
;c:										90000250
;start:										90000901


;BUTTON RELEASE
;x:										90000205
;y:										90000215
;z:										90000225
;a:										90000235
;b:										90000245
;c:										90000255
;start:										90000902


;SYSTEM MOTIONS
;Down (3 ticks):				(D with a 3 tick buffer)	90000012
;Down-right (3 ticks):				(DR with a 3 tick buffer)	90000013
;Right (3 ticks):				(R with a 3 tick buffer)	90000016
;Up-right (3 ticks):				(UR with a 3 tick buffer)	90000019
;Up (3 ticks):					(U with a 3 tick buffer)	90000018
;Up-left (3 ticks):				(UL with a 3 tick buffer)	90000017
;Left (3 ticks):				(L with a 3 tick buffer)	90000014
;Down-left (3 ticks):				(DL with a 3 tick buffer)	90000011

;Down (3 ticks+HitPause):			(D w/ 3 tick buffer+HitPause)	90000022
;Down-right (3 ticks+HitPause):		(DR w/ 3 tick buffer+HitPause)          90000023
;Right (3 ticks+HitPause):			(R w/ 3 tick buffer+HitPause)	90000026
;Up-right (3 ticks+HitPause):			(UR w/ 3 tick buffer+HitPause)  90000029
;Up (3 ticks+HitPause):			(U w/ 3 tick buffer+HitPause)	        90000028
;Up-left (3 ticks+HitPause):			(UL w/ 3 tick buffer+HitPause)  90000027
;Left (3 ticks+HitPause):			(L w/ 3 tick buffer+HitPause)	90000024
;Down-left (3 ticks+HitPause):		(DL w/ 3 tick buffer+HitPause)          90000021

;R, R:						(F, F)				90001016
;L, L:						(B, B)				90001064
;D, U:						(D, U)				90000408
;U, U:						(U, U)				90000518
;D, D:						(D, D)				90000562
;R, DR, D					(F, DF, D)			90007502
;L, DL, D					(B, DB, D)			90007552


;SPECIAL MOTIONS
;D, DR, R:					(QCF)				90010006
;D, DL, L:					(QCB)				90010104
;R, D, DR:					(F, D, DF)			90010203
;L, D, DL:					(B, D, DB)			90010301
;L, DL, D, DR, R:				(HCF)				90010406
;R, DR, D, DL, L:				(HCB)				90010504
;(charge) L, R:					([charge] B, F)			90010606
;(charge) R, L:					([charge] F, B)			90010704
;(charge) D, U:					([charge] D, U)			90010808
;L, D, R, U:					(360)				90011008
;L, U, R, D:					(360)				90011102
;D, R, U, L:					(360)				90011204
;D, L, U, R:					(360)				90011306
;R, D, L, U:					(360)				90011408
;R, U, L, D:					(360)				90011502
;U, R, D, L:					(360)				90011604
;U, L, D, R:					(360)				90011706
;R, D, L, R:					(HCB, F)			90012016
;L, D, R, L:					(HCF, B)			90012114
;R, L, R:					(F, B, F)			90012216
;L, R, L:					(B, F, B)			90012314
;D, DR, R, UR:					(QCF, UF)			90012409
;D, DL, L, UL:					(QCB, UB)			90012507
;D, D:						([special] D, D)		90012602


;SUPER MOTIONS
;D, DR, R, D, DR, R:				(QCFx2)				90030016
;D, DL, L, D, DL, L:				(QCBx2)				90030114
;L, DL, D, DR, R, L, DL, D, DR, R:		(HCFx2)				90030416
;R, DR, D, DL, L, R, DR, D, DL, L:		(HCBx2)				90030514
;(charge) L, R, L, R:				([charge] B, F, B, F)		90030616
;(charge) R, L, R, L:				([charge] F, B, F, B)		90030714
;(charge) DL, DR, DL, UR:			([charge] DB, DF, DB, UF)	90030809
;(charge) DR, DL, DR, UL:			([charge] DF, DB, DF, UB)	90030907
;L, D, R, U, L, D, R, U:			(720)				90031018
;L, U, R, D, L, U, R, D:			(720)				90031112
;D, R, U, L, D, R, U, L:			(720)				90031214
;D, L, U, R, D, L, U, R:			(720)				90031316
;R, D, L, U, R, D, L, U:			(720)				90031418
;R, U, L, D, R, U, L, D:			(720)				90031512
;U, R, D, L, U, R, D, L:			(720)				90031614
;U, L, D, R, U, L, D, R:			(720)				90031716
;R, L, D, R:					(F, HCF)			90032016
;L, R, D, L:					(B, HCB)			90032114
;D, DR, R, D, L:				(QCF, HCB)			90032204
;D, DL, L, D, R:				(QCB, HCF)			90032306
;D, DR, R, DR, L:				(QCF, DF, B)			90032404
;D, DL, L, DL, R:				(QCB, DB, F)			90032506
;D, D, D:					(D, D, D)			90032602


;SUPER MOTIONS (button inputs)
;x, x, F, a, z:					(Shun Goku Satsu)		94000220



;==============================================================================================
;===================================<DIRECTIONAL COMMANDS>=====================================
;==============================================================================================

;==============================================================================================
;These are required for the system to function; they are active whenever the specified direction
;is currently being input, and disappear as soon as they are released (via a series of RemoveExplods
;at the bottom of the Buffering system code block). They are used by the system to detect directional
;releases, but can also be used outside of the Buffering system code block to detect when a specific
;direction is being input or held down.
;==============================================================================================

[State -1, Release Down Detector]
type = Explod
;make sure explod doesn't already exist
triggerall = !NumExplod(90000002)
;check to make sure Helper exists, and that the entity running this code isn't the helper, and that
;the AI isn't active. Only a human player should be making explods!
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
;If either of these explods exist, then down/up inputs have been reversed (this is usually caused
;by an attack of some sort, such as Thanos's Mind Gem super). We can easily flip left/right commands,
;but for down/up inputs, we must have two sets of triggers. This is the first set, which only activate
;if the explods don't exist, so we can just check the inputs normally.
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
;explod will be created if down is input
trigger1 = Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown"
;no other directions may be input, otherwise it wouldn't be a down input!
trigger1 = Helper(90000005),Command != "fwd" && Helper(90000005),Command != "holdfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "holdback" && Helper(90000005),Command != "up" && Helper(90000005),Command != "holdup"
;These sets of triggers, however, only are used if one of the direction input reversal explods exist.
;We treat "down" inputs as "up", and vice-versa; "down-right" is treated as "up-right", and so on.
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
trigger2 = Helper(90000005),Command != "fwd" && Helper(90000005),Command != "holdfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "holdback" && Helper(90000005),Command != "down" && Helper(90000005),Command != "holddown"
anim = 9999
ID = 90000002
;these explods are only removed via a RemoveExplod, so their removetime is set to -1 (aka infinite)
removetime = -1
pausemovetime = -1
supermovetime = -1
ignorehitpause = 1

[State -1, Release Down-Right Detector]
type = Explod
triggerall = !NumExplod(90000003)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown"
trigger1 = Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd"
trigger1 = Helper(90000005),Command != "back" && Helper(90000005),Command != "holdback" && Helper(90000005),Command != "up" && Helper(90000005),Command != "holdup"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
trigger2 = Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd"
trigger2 = Helper(90000005),Command != "back" && Helper(90000005),Command != "holdback" && Helper(90000005),Command != "down" && Helper(90000005),Command != "holddown"
anim = 9999
ID = 90000003
removetime = -1
pausemovetime = -1
supermovetime = -1
ignorehitpause = 1

[State -1, Release Right Detector]
type = Explod
triggerall = !NumExplod(90000006)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd"
trigger1 = Helper(90000005),Command != "down" && Helper(90000005),Command != "holddown" && Helper(90000005),Command != "back" && Helper(90000005),Command != "holdback" && Helper(90000005),Command != "up" && Helper(90000005),Command != "holdup"
anim = 9999
ID = 90000006
removetime = -1
pausemovetime = -1
supermovetime = -1
ignorehitpause = 1

[State -1, Release Up-Right Detector]
type = Explod
triggerall = !NumExplod(90000009)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
trigger1 = Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd"
trigger1 = Helper(90000005),Command != "back" && Helper(90000005),Command != "holdback" && Helper(90000005),Command != "down" && Helper(90000005),Command != "holddown"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown"
trigger2 = Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd"
trigger2 = Helper(90000005),Command != "back" && Helper(90000005),Command != "holdback" && Helper(90000005),Command != "up" && Helper(90000005),Command != "holdup"
anim = 9999
ID = 90000009
removetime = -1
pausemovetime = -1
supermovetime = -1
ignorehitpause = 1

[State -1, Release Up Detector]
type = Explod
triggerall = !NumExplod(90000008)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
trigger1 = Helper(90000005),Command != "fwd" && Helper(90000005),Command != "holdfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "holdback" && Helper(90000005),Command != "down" && Helper(90000005),Command != "holddown"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown"
trigger2 = Helper(90000005),Command != "fwd" && Helper(90000005),Command != "holdfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "holdback" && Helper(90000005),Command != "up" && Helper(90000005),Command != "holdup"
anim = 9999
ID = 90000008
removetime = -1
pausemovetime = -1
supermovetime = -1
ignorehitpause = 1

[State -1, Release Up-Left Detector]
type = Explod
triggerall = !NumExplod(90000007)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
trigger1 = Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback"
trigger1 = Helper(90000005),Command != "fwd" && Helper(90000005),Command != "holdfwd" && Helper(90000005),Command != "down" && Helper(90000005),Command != "holddown"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown"
trigger2 = Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback"
trigger2 = Helper(90000005),Command != "fwd" && Helper(90000005),Command != "holdfwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "holdup"
anim = 9999
ID = 90000007
removetime = -1
pausemovetime = -1
supermovetime = -1
ignorehitpause = 1

[State -1, Release Left Detector]
type = Explod
triggerall = !NumExplod(90000004)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback"
trigger1 = Helper(90000005),Command != "down" && Helper(90000005),Command != "holddown" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "holdfwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "holdup"
anim = 9999
ID = 90000004
removetime = -1
pausemovetime = -1
supermovetime = -1
ignorehitpause = 1

[State -1, Release Down-Left Detector]
type = Explod
triggerall = !NumExplod(90000001)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown"
trigger1 = Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback"
trigger1 = Helper(90000005),Command != "fwd" && Helper(90000005),Command != "holdfwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "holdup"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
trigger2 = Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback"
trigger2 = Helper(90000005),Command != "fwd" && Helper(90000005),Command != "holdfwd" && Helper(90000005),Command != "down" && Helper(90000005),Command != "holddown"
anim = 9999
ID = 90000001
removetime = -1
pausemovetime = -1
supermovetime = -1
ignorehitpause = 1



;==============================================================================================
;==========================================<BUTTONS>===========================================
;==============================================================================================

[State -1, Press x]
type = Explod
;if there already exists a "press x" explod, and the player is in HitPauseTime, then we don't need another!
trigger1 = !HitPauseTime || !NumExplod(90000200)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "x"
anim = 9999
ID = 90000200
;the removetime, pausemovetime, and supermovetime all must be the same value. This represents the
;amount of time (in ticks) that this individual input is "active"; in other words, it's the window
;of time the player has to input the next input in sequence (or if it's the final input of a command,
;the amount of time that command will last, if the character cannot currently perform the move in
;question). We use "10" as the default value for most directional inputs, because it's generally the
;standard amount of time for most games
;We use "3" for button inputs, which is what many modern games use, but there's a lot of variance
;there.

;We also include "+Cond(HitPauseTime,HitPauseTime-1,0)" to the removetime/pausemovetime/supermovetime
;in order to keep the command alive during hit pause. This goes on all button press commands, as well as
;the final directional input of any system, special, or super command.
;For more information on what the removetime (and pausemovetime, et. al.) represents, see the comments for
;the "Right, Right" command
removetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1

[State -1, Press y]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000210)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "y"
anim = 9999
ID = 90000210
removetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1

[State -1, Press z]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000220)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "z"
anim = 9999
ID = 90000220
removetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1

[State -1, Press a]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000230)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "a"
anim = 9999
ID = 90000230
removetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1

[State -1, Press b]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000240)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "b"
anim = 9999
ID = 90000240
removetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1

[State -1, Press c]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000250)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "c"
anim = 9999
ID = 90000250
removetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1

[State -1, Press start]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000901)
trigger1 = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "start"
anim = 9999
ID = 90000901
removetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;==============================================================================================
;These explods are used to detect button releases, much in the same way that the directional
;detectors work. These are required for the system, but it's easier to use MUGEN's standard
;"holda" / "holdx" / etc. for situations where you need to detect a held button input, rather than
;making use of these like you would the release direction detectors.
;==============================================================================================
[State -1, Release x Detector]
type = Explod
triggerall = !NumExplod(90000201)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "x" || Helper(90000005),Command = "holdx"
anim = 9999
ID = 90000201
removetime = -1
pausemovetime = -1
supermovetime = -1
ignorehitpause = 1

[State -1, Release y Detector]
type = Explod
triggerall = !NumExplod(90000211)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "y" || Helper(90000005),Command = "holdy"
anim = 9999
ID = 90000211
removetime = -1
pausemovetime = -1
supermovetime = -1
ignorehitpause = 1

[State -1, Release z Detector]
type = Explod
triggerall = !NumExplod(90000221)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "z" || Helper(90000005),Command = "holdz"
anim = 9999
ID = 90000221
removetime = -1
pausemovetime = -1
supermovetime = -1
ignorehitpause = 1

[State -1, Release a Detector]
type = Explod
triggerall = !NumExplod(90000231)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "a" || Helper(90000005),Command = "holda"
anim = 9999
ID = 90000231
removetime = -1
pausemovetime = -1
supermovetime = -1
ignorehitpause = 1

[State -1, Release b Detector]
type = Explod
triggerall = !NumExplod(90000241)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "b" || Helper(90000005),Command = "holdb"
anim = 9999
ID = 90000241
removetime = -1
pausemovetime = -1
supermovetime = -1
ignorehitpause = 1

[State -1, Release c Detector]
type = Explod
triggerall = !NumExplod(90000251)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "c" || Helper(90000005),Command = "holdc"
anim = 9999
ID = 90000251
removetime = -1
pausemovetime = -1
supermovetime = -1
ignorehitpause = 1

[State -1, Release start Detector]
type = Explod
triggerall = !NumExplod(90000900)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "start"
anim = 9999
ID = 90000900
removetime = -1
pausemovetime = -1
supermovetime = -1
ignorehitpause = 1



;==============================================================================================
;Take note of the removetimes on these: release button inputs don't persist through hitpause!
;==============================================================================================

[State -1, Release x]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000205)
triggerall = NumExplod(90000201)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command != "x" && Helper(90000005),Command != "holdx"
anim = 9999
ID = 90000205
removetime = 3
pausemovetime = 3
supermovetime = 3
ignorehitpause = 1

[State -1, Release y]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000215)
triggerall = NumExplod(90000211)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command != "y" && Helper(90000005),Command != "holdy"
anim = 9999
ID = 90000215
removetime = 3
pausemovetime = 3
supermovetime = 3
ignorehitpause = 1

[State -1, Release z]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000225)
triggerall = NumExplod(90000221)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command != "z" && Helper(90000005),Command != "holdz"
anim = 9999
ID = 90000225
removetime = 3
pausemovetime = 3
supermovetime = 3
ignorehitpause = 1

[State -1, Release a]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000235)
triggerall = NumExplod(90000231)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command != "a" && Helper(90000005),Command != "holda"
anim = 9999
ID = 90000235
removetime = 3
pausemovetime = 3
supermovetime = 3
ignorehitpause = 1

[State -1, Release b]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000245)
triggerall = NumExplod(90000241)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command != "b" && Helper(90000005),Command != "holdb"
anim = 9999
ID = 90000245
removetime = 3
pausemovetime = 3
supermovetime = 3
ignorehitpause = 1

[State -1, Release c]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000255)
triggerall = NumExplod(90000251)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command != "c" && Helper(90000005),Command != "holdc"
anim = 9999
ID = 90000255
removetime = 3
pausemovetime = 3
supermovetime = 3
ignorehitpause = 1

[State -1, Release start]
type = Explod
trigger1 = !HitPauseTime || !NumExplod(90000902)
triggerall = NumExplod(90000900)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command != "start" && Helper(90000005),Command != "holdstart"
anim = 9999
ID = 90000902
removetime = 3
pausemovetime = 3
supermovetime = 3
ignorehitpause = 1



;==============================================================================================
;=============================<DIRECTIONAL INPUTS (3 TICK BUFFER)>=============================
;==============================================================================================

;==============================================================================================
;These activate whenever the direction in question is input, and persist for three ticks. Useful
;if you need to use only a single directional input, but also want it to last longer than one tick.
;==============================================================================================

;======================================<DOWN (3 TICKS)>========================================
[State -1, Down (3 ticks)]
type = Explod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "fwd"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down" && Helper(90000005),Command != "fwd"
anim = 9999
ID = 90000012
removetime = 3
pausemovetime = 3
supermovetime = 3
ignorehitpause = 1



;===================================<DOWN-RIGHT (3 TICKS)>=====================================
[State -1, Down-Right (3 ticks)]
type = Explod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
anim = 9999
ID = 90000013
removetime = 3
pausemovetime = 3
supermovetime = 3
ignorehitpause = 1



;======================================<RIGHT (3 TICKS)>=======================================
[State -1, Right (3 ticks)]
type = Explod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90000016
removetime = 3
pausemovetime = 3
supermovetime = 3
ignorehitpause = 1



;=====================================<UP-RIGHT (3 TICKS)>=====================================
[State -1, Up-Right (3 ticks)]
type = Explod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
anim = 9999
ID = 90000019
removetime = 3
pausemovetime = 3
supermovetime = 3
ignorehitpause = 1



;========================================<UP (3 TICKS)>========================================
[State -1, Up (3 ticks)]
type = Explod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "up" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down" && Helper(90000005),Command != "back"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "down" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "back"
anim = 9999
ID = 90000018
removetime = 3
pausemovetime = 3
supermovetime = 3
ignorehitpause = 1



;=====================================<UP-LEFT (3 TICKS)>======================================
[State -1, Up-Left (3 ticks)]
type = Explod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
anim = 9999
ID = 90000017
removetime = 3
pausemovetime = 3
supermovetime = 3
ignorehitpause = 1



;=======================================<LEFT 3 TICKS>=========================================
[State -1, Left (3 ticks)]
type = Explod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90000014
removetime = 3
pausemovetime = 3
supermovetime = 3
ignorehitpause = 1



;====================================<DOWN-LEFT 3 TICKS>=======================================
[State -1, Down-Left (3 ticks)]
type = Explod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
anim = 9999
ID = 90000011
removetime = 3
pausemovetime = 3
supermovetime = 3
ignorehitpause = 1



;==============================================================================================
;=====================<DIRECTIONAL INPUTS (3 TICK BUFFER+HITPAUSE TIME)>=====================
;==============================================================================================

;==============================================================================================
;These are almost identical to the explods directly above this, except these will persist through
;a HitPause, and will only activate if the direction in question is being either held or input on
;the same tick that any button is input. These can be used to replicate the command behavior of Capcom
;games for crouching and command normal moves. For more information, please see [INSERT LINK].
;==============================================================================================

;==============================<DOWN (3 TICKS+HITPAUSE TIME)>================================
[State -1, Down (3 ticks+HitPauseTime)]
type = Explod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
triggerall = Helper(90000005),Command = "x" || Helper(90000005),Command = "y" || Helper(90000005),Command = "z" || Helper(90000005),Command = "a"  || Helper(90000005),Command = "b" || Helper(90000005),Command = "c" || Helper(90000005),Command = "start"
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = (Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown") && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "holdback" && Helper(90000005),Command != "holdup" && Helper(90000005),Command != "holdfwd"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = (Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup") && Helper(90000005),Command != "back" && Helper(90000005),Command != "down" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "holdback" && Helper(90000005),Command != "holddown" && Helper(90000005),Command != "holdfwd"
anim = 9999
ID = 90000022
removetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1




;===========================<DOWN-RIGHT (3 TICKS+HITPAUSE TIME)>=============================
[State -1, Down-Right (3 ticks+HitPauseTime)]
type = Explod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
triggerall = Helper(90000005),Command = "x" || Helper(90000005),Command = "y" || Helper(90000005),Command = "z" || Helper(90000005),Command = "a"  || Helper(90000005),Command = "b" || Helper(90000005),Command = "c" || Helper(90000005),Command = "start"
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = (Helper(90000005),Command = "dfwd" || (Helper(90000005),Command = "holddown" && Helper(90000005),Command = "holdfwd")) && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "holdback" && Helper(90000005),Command != "holdup"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = (Helper(90000005),Command = "ufwd" || (Helper(90000005),Command = "holdup" && Helper(90000005),Command = "holdfwd")) && Helper(90000005),Command != "back" && Helper(90000005),Command != "down" && Helper(90000005),Command != "holdback" && Helper(90000005),Command != "holddown"
anim = 9999
ID = 90000023
removetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;==============================<RIGHT (3 TICKS+HITPAUSE TIME)>===============================
[State -1, Right (3 ticks+HitPauseTime)]
type = Explod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
triggerall = Helper(90000005),Command = "x" || Helper(90000005),Command = "y" || Helper(90000005),Command = "z" || Helper(90000005),Command = "a"  || Helper(90000005),Command = "b" || Helper(90000005),Command = "c" || Helper(90000005),Command = "start"
trigger1 = (Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd") && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down" && Helper(90000005),Command != "holdback" && Helper(90000005),Command != "holdup" && Helper(90000005),Command != "holddown"
anim = 9999
ID = 90000026
removetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;=============================<UP-RIGHT (3 TICKS+HITPAUSE TIME)>=============================
[State -1, Up-Right (3 ticks+HitPauseTime)]
type = Explod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
triggerall = Helper(90000005),Command = "x" || Helper(90000005),Command = "y" || Helper(90000005),Command = "z" || Helper(90000005),Command = "a"  || Helper(90000005),Command = "b" || Helper(90000005),Command = "c" || Helper(90000005),Command = "start"
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = (Helper(90000005),Command = "ufwd" || (Helper(90000005),Command = "holdup" && Helper(90000005),Command = "holdfwd")) && Helper(90000005),Command != "back" && Helper(90000005),Command != "down" && Helper(90000005),Command != "holdback" && Helper(90000005),Command != "holddown"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = (Helper(90000005),Command = "dfwd" || (Helper(90000005),Command = "holddown" && Helper(90000005),Command = "holdfwd")) && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "holdback" && Helper(90000005),Command != "holdup"
anim = 9999
ID = 90000029
removetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;================================<UP (3 TICKS+HITPAUSE TIME)>================================
[State -1, Up (3 ticks+HitPauseTime)]
type = Explod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
triggerall = Helper(90000005),Command = "x" || Helper(90000005),Command = "y" || Helper(90000005),Command = "z" || Helper(90000005),Command = "a"  || Helper(90000005),Command = "b" || Helper(90000005),Command = "c" || Helper(90000005),Command = "start"
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = (Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup") && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down" && Helper(90000005),Command != "back" && Helper(90000005),Command != "holdfwd" && Helper(90000005),Command != "holddown" && Helper(90000005),Command != "holdback"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = (Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown") && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "back" && Helper(90000005),Command != "holdfwd" && Helper(90000005),Command != "holdup" && Helper(90000005),Command != "holdback"
anim = 9999
ID = 90000028
removetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;=============================<UP-LEFT (3 TICKS+HITPAUSE TIME)>==============================
[State -1, Up-Left (3 ticks+HitPauseTime)]
type = Explod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
triggerall = Helper(90000005),Command = "x" || Helper(90000005),Command = "y" || Helper(90000005),Command = "z" || Helper(90000005),Command = "a"  || Helper(90000005),Command = "b" || Helper(90000005),Command = "c" || Helper(90000005),Command = "start"
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = (Helper(90000005),Command = "uback" || (Helper(90000005),Command = "holdup" && Helper(90000005),Command = "holdback")) && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down" && Helper(90000005),Command != "holdfwd" && Helper(90000005),Command != "holddown"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = (Helper(90000005),Command = "dback" || (Helper(90000005),Command = "holddown" && Helper(90000005),Command = "holdback")) && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "holdfwd" && Helper(90000005),Command != "holdup"
anim = 9999
ID = 90000027
removetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;===============================<LEFT 3 TICKS+HITPAUSE TIME>=================================
[State -1, Left (3 ticks+HitPauseTime)]
type = Explod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
triggerall = Helper(90000005),Command = "x" || Helper(90000005),Command = "y" || Helper(90000005),Command = "z" || Helper(90000005),Command = "a"  || Helper(90000005),Command = "b" || Helper(90000005),Command = "c" || Helper(90000005),Command = "start"
trigger1 = (Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback") && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down" && Helper(90000005),Command != "holdfwd" && Helper(90000005),Command != "holdup" && Helper(90000005),Command != "holddown"
anim = 9999
ID = 90000024
removetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;============================<DOWN-LEFT 3 TICKS+HITPAUSE TIME>===============================
[State -1, Down-Left (3 ticks+HitPauseTime)]
type = Explod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
triggerall = Helper(90000005),Command = "x" || Helper(90000005),Command = "y" || Helper(90000005),Command = "z" || Helper(90000005),Command = "a"  || Helper(90000005),Command = "b" || Helper(90000005),Command = "c" || Helper(90000005),Command = "start"
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = (Helper(90000005),Command = "dback" || (Helper(90000005),Command = "holddown" && Helper(90000005),Command = "holdback")) && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "holdfwd" && Helper(90000005),Command != "holdup"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = (Helper(90000005),Command = "uback" || (Helper(90000005),Command = "holdup" && Helper(90000005),Command = "holdback")) && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down" && Helper(90000005),Command != "holdfwd" && Helper(90000005),Command != "holddown"
anim = 9999
ID = 900000021
removetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;==============================================================================================
;Reminder: because this system is based on absolute directions (left/right) instead of relative
;directions (forward/backward), all commands must have a mirrored command as well (unless they are
;performed solely with up and/or down!) In other words, two different versions of each individual
;command must be defined in this system: one assuming the character is facing the right, and one
;for the left.
;==============================================================================================

;==============================================================================================
;================================<FORWARD, FORWARD/BACK, BACK>=================================
;==============================================================================================

;==============================================================================================
;Dash/run commands in SNK typically have release directions as their first inputs. In other words,
;in most SNK games, you can dash/run by holding forward or back for however long you like, and then
;quickly releasing the stick and returning to neutral, then quickly inputting forward/back again.
;In most Capcom games, this will not work. We have the dash/run commands in this system set up to
;follow Capcom's example.

;Different games have different input windows for dash commands. KOF gives you a 7 tick window between
;each the first and second forward/back commands, and the final input has a buffer time of 3 ticks.
;CPS2 Capcom games (under the normal speed setting) have an input window of 7 ticks for the consecutive
;forward/back commands, and the final input has a buffer time of 2 ticks. In SFIII, both the input
;window and the buffer time is 7 ticks. The default values in this system are 10 for the input window
;and 3 for the buffer time, to match up with the other commands (but feel free to change those values
;to suit your personal preference!)
;==============================================================================================

;=======================================<RIGHT, RIGHT>=========================================
[State -1, R, R: 1st Right]
type = Explod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90001006
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, R, R: Neutral]
type = Explod
triggerall = NumExplod(90000006) && NumExplod(90001006)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
;make sure no directional input is being performed
trigger1 = Helper(90000005),Command != "fwd" && Helper(90000005),Command != "holdfwd"
trigger1 = Helper(90000005),Command != "down" && Helper(90000005),Command != "holddown" && Helper(90000005),Command != "back" && Helper(90000005),Command != "holdback" && Helper(90000005),Command != "up" && Helper(90000005),Command != "holdup"
anim = 9999
ID = 90001005
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

;We remove the neutral explod if any non-right input is detected, or if the 1st right explod does not exist
;in most Capcom games, a dash command will be cancelled mid-input if any direction other than forward/back
;and neutral are input. But SNK games give you more leeway: as long as you have inputting forward/back, and
;have returned the stick to neutral, you can input any other directional command and still get a dash as long
;as you input another forward/back command. If you want to replicate this behavior, simply delete the first trigger
;of this RemoveExplod sCtrl (you will still need the second trigger, though).
[State -1, Remove R, R: Neutral]
type = RemoveExplod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = NumExplod(90000002) || NumExplod(90000003) || NumExplod(90000009) || NumExplod(90000008) || NumExplod(90000007) || NumExplod(90000004) || NumExplod(90000001)
trigger2 = !NumExplod(90001006)
ID = 90001005
ignorehitpause = 1

[State -1, R, R: 2nd Right]
type = Explod
;we check to see if the user has input right recently, and has returned the stick to neutral
triggerall = NumExplod(90001005) && NumExplod(90001006)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90001016
;see the button explods above for an explanation of this Cond statement. This statement only goes on the final
;input of any command, and should not go anywhere else in the command!
;We also are using a non-standard removetime for this input, as dash commands in most games are only active
;for a short period of time (around 1-3 ticks).
removetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1

[State -1, R, R: 2nd Right (10 ticks)]
type = Explod
;this one is used for Kung Fu Knee
triggerall = NumExplod(90001005) && NumExplod(90001006)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90001026
removetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;==============================================================================================
;Now for the reversed command:
;==============================================================================================

;=======================================<LEFT, LEFT>=========================================
[State -1, L, L: 1st Left]
type = Explod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90001054
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, L, L: Neutral]
type = Explod
triggerall = NumExplod(90000004) && NumExplod(90001054)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command != "back" && Helper(90000005),Command != "holdback"
trigger1 = Helper(90000005),Command != "down" && Helper(90000005),Command != "holddown" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "holdfwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "holdup"
anim = 9999
ID = 90001055
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, Remove L, L: Neutral]
type = RemoveExplod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = NumExplod(90000002) || NumExplod(90000003) || NumExplod(90000006) || NumExplod(90000009) || NumExplod(90000008) || NumExplod(90000007) || NumExplod(90000001)
trigger2 = !NumExplod(90001054)
ID = 90001055
ignorehitpause = 1

[State -1, L, L: 2nd Left]
type = Explod
triggerall = NumExplod(90001055) && NumExplod(90001054)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90001064
removetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1

[State -1, L, L: 2nd Left (10 ticks)]
type = Explod
triggerall = NumExplod(90001055) && NumExplod(90001054)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90001074
removetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;==============================================================================================
;===================================<DOWN, UP (SUPER JUMP)>====================================
;==============================================================================================

;==============================================================================================
;Super jump commands can be done with any down directional input, followed by any up directional
;==============================================================================================

;=======================================<DOWN, UP>=========================================
[State -1, D, U: Down]
type = Explod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" || Helper(90000005),Command = "dfwd" || Helper(90000005),Command = "dback"
trigger1 = Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" || Helper(90000005),Command = "ufwd" || Helper(90000005),Command = "uback"
trigger2 = Helper(90000005),Command != "down"
anim = 9999
ID = 90000402
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, D, U: Up]
type = Explod
triggerall = NumExplod(90000402)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "up" || Helper(90000005),Command = "ufwd" || Helper(90000005),Command = "uback"
trigger1 = Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "down" || Helper(90000005),Command = "dfwd" || Helper(90000005),Command = "dback"
trigger2 = Helper(90000005),Command != "up"
anim = 9999
ID = 90000408
removetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;==============================================================================================
;=====================================<UP, UP/DOWN, DOWN>======================================
;==============================================================================================

;==============================================================================================
;Pretty similar to the Forward, Forward/Back, Back commands, only we don't need to worry about
;the player's facing or anything, since all the inputs are either down or up!

;Also of note is that any up/down direction may be used to activate this command (i.e., a UF, UF
;will still be considered a U, U command).
;==============================================================================================

;=======================================<UP, UP>=========================================
[State -1, U, U: 1st Up]
type = Explod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "up" || Helper(90000005),Command = "ufwd" || Helper(90000005),Command = "uback"
trigger1 = Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "down" || Helper(90000005),Command = "dfwd" || Helper(90000005),Command = "dback"
trigger2 = Helper(90000005),Command != "up"
anim = 9999
ID = 90000508
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, U, U: Neutral]
type = Explod
triggerall = (NumExplod(90000007) || NumExplod(90000008) || NumExplod(90000009)) && NumExplod(90000508)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command != "up" && Helper(90000005),Command != "holdup"
trigger1 = Helper(90000005),Command != "down" && Helper(90000005),Command != "holddown" && Helper(90000005),Command != "back" && Helper(90000005),Command != "holdback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "holdfwd"
anim = 9999
ID = 90000505
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, Remove U, U: Neutral]
type = RemoveExplod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = NumExplod(90000004) || NumExplod(90000001) || NumExplod(90000002) || NumExplod(90000003) || NumExplod(90000006)
trigger2 = !NumExplod(90000508)
ID = 90000505
ignorehitpause = 1

[State -1, U, U: 2nd Up]
type = Explod
triggerall = NumExplod(90000505) && NumExplod(90000508)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "up" || Helper(90000005),Command = "ufwd" || Helper(90000005),Command = "uback"
trigger1 = Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "down" || Helper(90000005),Command = "dfwd" || Helper(90000005),Command = "dback"
trigger2 = Helper(90000005),Command != "up"
anim = 9999
ID = 90000518
removetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;=========================================<DOWN,DOWN>==========================================
[State -1, D, D: 1st Down]
type = Explod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" || Helper(90000005),Command = "dfwd" || Helper(90000005),Command = "dback"
trigger1 = Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" || Helper(90000005),Command = "ufwd" || Helper(90000005),Command = "uback"
trigger2 = Helper(90000005),Command != "down"
anim = 9999
ID = 90000552
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, D, D: Neutral]
type = Explod
triggerall = (NumExplod(90000001) || NumExplod(90000002) || NumExplod(90000003)) && NumExplod(90000552)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command != "down" && Helper(90000005),Command != "holddown"
trigger1 = Helper(90000005),Command != "fwd" && Helper(90000005),Command != "holdfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "holdback" && Helper(90000005),Command != "up" && Helper(90000005),Command != "holdup"
anim = 9999
ID = 90000555
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, Remove D, D: Neutral]
type = RemoveExplod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = NumExplod(90000004) || NumExplod(90000007) || NumExplod(90000008) || NumExplod(90000009) || NumExplod(90000006)
trigger2 = !NumExplod(90000552)
ID = 90000555
ignorehitpause = 1

[State -1, D, D: 2nd Down]
type = Explod
triggerall = NumExplod(90000555) && NumExplod(90000552)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" || Helper(90000005),Command = "dfwd" || Helper(90000005),Command = "dback"
trigger1 = Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" || Helper(90000005),Command = "ufwd" || Helper(90000005),Command = "uback"
trigger2 = Helper(90000005),Command != "down"
anim = 9999
ID = 90000562
removetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 3+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;==============================================================================================
;===================================<QUARTER CIRCLE DOWN>======================================
;==============================================================================================

;==============================================================================================
;This is the SFA2 style Zero Counter command. This is the first command in the system that uses
;a release directional input. However, this command works somewhat differently from the way pretty
;much every other command in this system works, so we're gonna avoid getting deep into discussion
;about anything here. Please see the following command (quarter-circle forward/back) for a basic
;look at how most release inputs work in this system.
;==============================================================================================


;================================<RIGHT, DOWN-RIGHT, DOWN>=====================================
[State -1, R, DR, D: Release Right]
type = Explod
;check to see if the Release Right Detector explod exists. If it exists and down is no longer being
;input, that means it was released!
triggerall = NumExplod(90000006)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
;if right isn't currently being input by the user, then right was released!
trigger1 = Helper(90000005),Command != "fwd" && Helper(90000005),Command != "holdfwd"
;... but if right is currently being input by the user, AND there's another direction being input,
;then right is still considered to have been released.
trigger2 = Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd"
trigger2 = Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown" || Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback" || Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
anim = 9999
ID = 90007506
removetime = 5
pausemovetime = 5
supermovetime = 5
ignorehitpause = 1

[State -1, R, DR, D: Down-Right]
type = Explod
;the "Right" explod needs to exist before the next command in sequence is allowed
triggerall = NumExplod(90007506)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
anim = 9999
ID = 90007503
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, R, DR, D: Down]
type = Explod
triggerall = NumExplod(90007503)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "fwd"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down" && Helper(90000005),Command != "fwd"
anim = 9999
ID = 90007502
removetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;=================================<LEFT, DOWN-LEFT, DOWN>======================================
[State -1, L, DL, D: Release Left]
type = Explod
triggerall = NumExplod(90000004)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command != "back" && Helper(90000005),Command != "holdback"
trigger2 = Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback"
trigger2 = Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown" || Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd" || Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
anim = 9999
ID = 90007554
removetime = 5
pausemovetime = 5
supermovetime = 5
ignorehitpause = 1

[State -1, L, DL, D: Down-Left]
type = Explod
triggerall = NumExplod(90007554)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
anim = 9999
ID = 90007551
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, L, DL, D: Down]
type = Explod
triggerall = NumExplod(90007551)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "fwd"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down" && Helper(90000005),Command != "fwd"
anim = 9999
ID = 90007552
removetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;==============================================================================================
;===============================<QUARTER CIRCLE FORWARD/BACK>==================================
;==============================================================================================

;==============================================================================================
;The vast majority of all commands in fighting games allow the first input of any command to be
;a release input, so that you're allowed to hold the direction that the command starts with for
;however long you want, then input the rest of the command, and still get the move. This is why
;in MUGEN, people typically write all their character's commands as starting with a release input;
;however, things are a bit more complicated outside of MUGEN (and thus, more complicated in this
;buffer too). In most games, the window of time a player has to input the next command in sequence
;after performing a release input is shorter than the window of time they have to input the next
;command after a press input. For example, in Street Fighter III, if you want to perform a quarter-
;circle forward motion, and you press (or hold) the "down" direction, you will have 10 ticks to
;input "down-forward" and continue the command. But if instead you were to hold the "down" direction
;down for a few seconds before releasing it, you will have only 5 ticks to input "down-forward" to
;continue entering the command.

;The way this is translated to the EXPLODsive Buffering system is this: we have two separate explods
;for the first input of every command that uses a release directional input. One explod is created
;whenever the first input is entered, and has a removetime of 10 (which is the same amount of time
;that most other directional explods use in this system); one other explod is also created whenever
;the direction of the first input is released: this has a removetime of 5, which is generally what
;commercial fighting games use.

;Do note that not every game gives players the same input windows for every single command: for
;example, in Street Fighter Alpha 3 (on normal speed), press directional inputs all have a 10 tick
;input window, but the input window for the release directional input in a quarter-circle motion is
;6, while the input window for the release directional input in a forward, down, down-forward motion
;is only 4! There's a whole bunch of variance here, sometimes in the same game, and so it's best to check
;the source game of the character you're making (if applicable) to try and get an idea of what removetime
;will be best for each of your commands.
;==============================================================================================

;================================<DOWN, DOWN-RIGHT, RIGHT>=====================================

;Since this is the press directional input for the first input, it has a removetime of 10
[State -1, D, DR, R: Press Down]
type = Explod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "fwd"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down" && Helper(90000005),Command != "fwd"
anim = 9999
ID = 90010002
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

;And since this is the release directional input for the first input, it has a removetime of only 5!
[State -1, D, DR, R: Release Down]
type = Explod
triggerall = NumExplod(90000002)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command != "down" && Helper(90000005),Command != "holddown"
trigger2 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown"
trigger2 = Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd" || Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback" || Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
trigger3 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger3 = Helper(90000005),Command != "up" && Helper(90000005),Command != "holdup"
trigger4 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger4 = Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
trigger4 = Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd" || Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback" || Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown"
anim = 9999
ID = 90010052
removetime = 5
pausemovetime = 5
supermovetime = 5
ignorehitpause = 1

[State -1, D, DR, R: Down-Right]
type = Explod
;Remember, we have to check to see if either the "press down" or "release down" explods exist!
triggerall = NumExplod(90010002) || NumExplod(90010052)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
anim = 9999
ID = 90010003
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, D, DR, R: Right]
type = Explod
triggerall = NumExplod(90010003)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90010006
removetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;=================================<DOWN, DOWN-LEFT, LEFT>======================================
[State -1, D, DL, L: Press Down]
type = Explod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "fwd"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down" && Helper(90000005),Command != "fwd"
anim = 9999
ID = 90010102
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, D, DL, L: Release Down]
type = Explod
triggerall = NumExplod(90000002)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command != "down" && Helper(90000005),Command != "holddown"
trigger2 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown"
trigger2 = Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd" || Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback" || Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
trigger3 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger3 = Helper(90000005),Command != "up" && Helper(90000005),Command != "holdup"
trigger4 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger4 = Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
trigger4 = Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd" || Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback" || Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown"
anim = 9999
ID = 90010152
removetime = 5
pausemovetime = 5
supermovetime = 5
ignorehitpause = 1

[State -1, D, DL, L: Down-Left]
type = Explod
triggerall = NumExplod(90010102) || NumExplod(90010152)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
anim = 9999
ID = 90010101
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, D, DL, L: Left]
type = Explod
triggerall = NumExplod(90010101)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90010104
removetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;==============================================================================================
;===========================<DOUBLE QUARTER CIRCLE FORWARD/BACK>===============================
;==============================================================================================

;==============================================================================================
;This command is mostly identical to the QCF/QCB commands, but with different ID's; there are some
;important differences, however. Instead of repeating the entire first QCF/QCB command, we just
;(mostly) use the ones we already defined above!

;We do repeat the forward/backward input from the first QCF/QCB, though. This is because the final
;explod of the QCF/QCB command will persist through hitpause, which is not true for the QCFx2
;command: otherwise, you'd be able to input a QCF during a long hitpause, wait for the hitpause to
;end, and then input another QCF and still get a QCFx2 motion, and that's not how things are supposed
;to work!

;Also, do note that Capcom games use a command shortcut for QCFx2/QCBx2 motions; a D, DF, F, D, DF
;will work just as well as a D, DF, F, D, DF, F motion; if you want to replicate this behavior, all
;you have to do is check to see if either the repsective "DF/DB" or the "F/B" explods exist in the
;triggers for that move's ChangeState.
;==============================================================================================

;===========================<DOUBLE DOWN, DOWN-RIGHT, RIGHT>===============================
;this is almost identical to the D, DR, R: Right explod; the only difference is that it has a
;removetime of 10 (with no additional Cond statements), because it shouldn't persist through hitpause!
[State -1, D, DR, R, D, DR, R: 1st Right]
type = Explod
triggerall = NumExplod(90010003)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90030006
removetime = 15
pausemovetime = 15
supermovetime = 15
ignorehitpause = 1

[State -1, D, DR, R, D, DR, R: 2nd Down]
type = Explod
triggerall = NumExplod(90030006)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "fwd"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down" && Helper(90000005),Command != "fwd"
anim = 9999
ID = 90030002
removetime = 15
pausemovetime = 15
supermovetime = 15
ignorehitpause = 1

[State -1, D, DR, R, D, DR, R: 2nd Down-Right]
type = Explod
triggerall = NumExplod(90030002)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
anim = 9999
ID = 90030003
removetime = 15
pausemovetime = 15
supermovetime = 15
ignorehitpause = 1

[State -1, D, DR, R, D, DR, R: 2nd Right]
type = Explod
triggerall = NumExplod(90030003)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90030016
removetime = 15+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 15+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 15+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1


;===========================<DOUBLE DOWN, DOWN-LEFT, LEFT>===============================
[State -1, D, DL, L, D, DL, L: 1st Left]
type = Explod
triggerall = NumExplod(90010101)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90030104
removetime = 15
pausemovetime = 15
supermovetime = 15
ignorehitpause = 1

[State -1, D, DL, L, D, DL, L: 2nd Down]
type = Explod
triggerall = NumExplod(90030104)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "fwd"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down" && Helper(90000005),Command != "fwd"
anim = 9999
ID = 90030102
removetime = 15
pausemovetime = 15
supermovetime = 15
ignorehitpause = 1

[State -1, D, DL, L, D, DL, L: 2nd Down-Left]
type = Explod
triggerall = NumExplod(90030102)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
anim = 9999
ID = 90030101
removetime = 15
pausemovetime = 15
supermovetime = 15
ignorehitpause = 1

[State -1, D, DL, L, D, DL, L: 2nd Left]
type = Explod
triggerall = NumExplod(90030101)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90030114
removetime = 15+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 15+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 15+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;==============================================================================================
;=====<QUARTER CIRCLE FORWARD, HALF CIRCLE BACK/QUARTER CIRCLE BACK, HALF CIRCLE FORWARD>======
;==============================================================================================

;==============================================================================================
;This is a command used mostly by SNK, and it has a few quirks compared to how Capcom approaches
;commands. For half-circle motions, SNK only checks for the cardinal inputs (i.e., the non-diagonal
;directions) to see if the user has successfully complated the move, and gives those cardinal inputs
;an extra-long input window (in KOF '98, for example, it's 16, compared to the 10 tick input window for
;normal commands) to compensate for the loss of the diagonal inputs.

;For the default EXPLODsive Buffering system, however, we have opted to allow diagonal inputs in
;these SNK-style half-circle commands, but to make them optional (because, to be quite honest, ignoring
;diagonal inputs entirely is pretty dumb!). What this ends up looking like is that the command can be
;completed only using cardinal inputs, but any diagonal inputs will still be cheked: any diagonal
;input will keep the command "alive" even if the cardinal input preceeding it has exhausted its input
;window.

;The way that translates to this explod system is that (for half-circle motions) we allow the user
;to skip the diagonal inputs: the "down" explod in a HCF command could be created if the "back"
;explod exists, e.g., instead of requiring the "down-back" explod to exist. However, we must also
;allow the "back" explod to be created if the "down-back" explod exists: this makes it so the diagonal
;inputs aren't just a waste of time; they will keep the command alive even if the previous cardinal
;direction explod has expired, which is exactly the same behavior that KOF has.

;To replicate the same behavior that SNK games use, simply delete the diagonal input explods, and increase
;the removetime on each of the cardinal input explods.

;A final note: as with the QCFx2/QCBx2 commands, we use the parts of the earlier QCF/QCB command block
;instead of just repeating that code.
;==============================================================================================

;===============<DOWN, DOWN-RIGHT, RIGHT, DOWN-RIGHT, DOWN, DOWN-LEFT, LEFT>===================
[State -1, D, DR, R, DR, D, DL, L: Right]
type = Null;Explod
triggerall = NumExplod(90010003)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90032206
removetime = 15
pausemovetime = 15
supermovetime = 15
ignorehitpause = 1

[State -1, D, DR, R, DR, D, DL, L: Down-Right]
type = Null;Explod
triggerall = NumExplod(90032206)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
anim = 9999
ID = 90032203
removetime = 15
pausemovetime = 15
supermovetime = 15
ignorehitpause = 1

[State -1, D, DR, R, DR, D, DL, L: Down]
type = Null;Explod
triggerall = NumExplod(90032203) || NumExplod(90032206)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "fwd"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down" && Helper(90000005),Command != "fwd"
anim = 9999
ID = 90032202
removetime = 15
pausemovetime = 15
supermovetime = 15
ignorehitpause = 1

[State -1, D, DR, R, DR, D, DL, L: Down-Left]
type = Null;Explod
triggerall = NumExplod(90032202)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
anim = 9999
ID = 90032201
removetime = 15
pausemovetime = 15
supermovetime = 15
ignorehitpause = 1

[State -1, D, DR, R, DR, D, DL, L: Left]
type = Null;Explod
triggerall = NumExplod(90032201) || NumExplod(90032202)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90032204
removetime = 15+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 15+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 15+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;================<DOWN, DOWN-LEFT, LEFT, DOWN-LEFT, DOWN, DOWN-RIGHT, RIGHT>===================
[State -1, D, DL, L, DL, D, DR, R: Left]
type = Null;Explod
triggerall = NumExplod(90010101)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90032304
removetime = 15
pausemovetime = 15
supermovetime = 15
ignorehitpause = 1

[State -1, D, DL, L, DL, D, DR, R: Down-Left]
type = Null;Explod
triggerall = NumExplod(90032304)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
anim = 9999
ID = 90032301
removetime = 15
pausemovetime = 15
supermovetime = 15
ignorehitpause = 1

[State -1, D, DL, L, DL, D, DR, R: Down]
type = Null;Explod
triggerall = NumExplod(90032301) || NumExplod(90032304)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "fwd"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down" && Helper(90000005),Command != "fwd"
anim = 9999
ID = 90032302
removetime = 15
pausemovetime = 15
supermovetime = 15
ignorehitpause = 1

[State -1, D, DL, L, DL, D, DR, R: Down-Right]
type = Null;Explod
triggerall = NumExplod(90032302)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
anim = 9999
ID = 90032303
removetime = 15
pausemovetime = 15
supermovetime = 15
ignorehitpause = 1

[State -1, D, DL, L, DL, D, DR, R: Right]
type = Null;Explod
triggerall = NumExplod(90032303) || NumExplod(90032302)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90032306
removetime = 15+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 15+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 15+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;==============================================================================================
;=====<QUARTER CIRCLE FORWARD, DOWN-FORWARD, BACK/QUARTER CIRCLE BACK, DOWN-BACK, FORWARD>=====
;==============================================================================================

;==============================================================================================
;This is very, very similar to the preceding command, but it is a distinct command with its own
;quirks! This is typically used for Terry's Power Geyser super, among a few other moves. What
;makes this different from the QCF, HCB/QCB, HCF command is that although this command is officially
;referred to in move lists as "QCF, DF, B/QCB, DB, F", in KOF games, this command can (usually) skip
;straight from the starting QCF/QCB and proceed directly to the final input of the command (the
;command would here be rendered as "QCF, B"/"QCB, F"). But this can sometimes be weird: in KOF 2002
;this can only be done if  that final input in the QCF/QCB part of the command is held for at least
;two ticks (KOF 2002 is the first game in the series where the player only needs to enter an individual
;input for only one frame and still complete a command; previous games required the inputs to be held
;for at least two). In the Fatal Fury series, however, generally this either uses a motion that is
;actually "QCF, DF, B / QCB, DB, F" motion, or sometimes even a QCF, HCB/QCB, HCF motion. Point is,
;there's a ton of variance here!

;As with the previous command, we have opted to modify this for the default EXPLODsive Buffering system,
;in order to keep it relatively simple and tried to change the manner in which the command worked into
;something that made more sense (to us, at least). We have it set up so that this command can skip straight
;from the starting QCF/QCB and proceed directly to the final input of the command (the command would here
;be rendered as "QCF, B"/"QCB, F"). It also can be performed using a QCF, HCB/QCB, HCF motion, with
;the additional quirk that the user can proceed immediately to the final input of the command no matter
;where they are in the half circle motion. So, for example, the user could perform QCB, DB, D, F, and
;still get the move. What this ends up looking like translated to MUGEN code is that, for instance, the
;explod representing QCF, DF, B: DB is allowed to be created if an explod exists representing "D", or "DF",
;or even "F".

;As with the the QCF, HCB / QCB, HCF command, this can be made to accurate to the source game(s)
;by removing some or all of the non-diagonal (and also the "down") explods.
;==============================================================================================

;========================<DOWN, DOWN-RIGHT, RIGHT, DOWN-RIGHT, LEFT>===========================
[State -1, D, DR, R, DR, L: Right]
type = Null;Explod
triggerall = NumExplod(90010003)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90032406
removetime = 15
pausemovetime = 15
supermovetime = 15
ignorehitpause = 1

[State -1, D, DR, R, DR, L: Down-Right]
type = Null;Explod
triggerall = NumExplod(90032406)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
anim = 9999
ID = 90032403
removetime = 15
pausemovetime = 15
supermovetime = 15
ignorehitpause = 1

[State -1, D, DR, R, DR, L: Down]
type = Null;Explod
;the Down explod will be created if either (or both) the Right or Down-Right explods exist
triggerall = NumExplod(90032406) || NumExplod(90032403)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "fwd"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down" && Helper(90000005),Command != "fwd"
anim = 9999
ID = 90032402
removetime = 15
pausemovetime = 15
supermovetime = 15
ignorehitpause = 1

[State -1, D, DR, R, DR, L: Down-Left]
type = Null;Explod
;the Down-Left explod will be created if the Right, Down-Right, or Down explods exist
triggerall = NumExplod(90032406) || NumExplod(90032403) || NumExplod(90032402)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
anim = 9999
ID = 90032401
removetime = 15
pausemovetime = 15
supermovetime = 15
ignorehitpause = 1

[State -1, D, DR, R, DR, L: Left]
type = Null;Explod
;the Left explod will be created if the Right, Down-Right, Down, or Down-Left explods exist
triggerall = NumExplod(90032406) || NumExplod(90032403) || NumExplod(90032402) || NumExplod(90032401)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90032404
removetime = 15+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 15+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 15+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;=========================<DOWN, DOWN-LEFT, LEFT, DOWN-LEFT, RIGHT>============================
[State -1, D, DL, L, DL, R: Left]
type = Null;Explod
triggerall = NumExplod(90010101)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90032504
removetime = 15
pausemovetime = 15
supermovetime = 15
ignorehitpause = 1

[State -1, D, DL, L, DL, R: Down-Left]
type = Null;Explod
triggerall = NumExplod(90032504)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
anim = 9999
ID = 90032501
removetime = 15
pausemovetime = 15
supermovetime = 15
ignorehitpause = 1

[State -1, D, DL, L, DL, R: Down]
type = Null;Explod
triggerall = NumExplod(90032504) || NumExplod(90032501)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "fwd"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down" && Helper(90000005),Command != "fwd"
anim = 9999
ID = 90032502
removetime = 15
pausemovetime = 15
supermovetime = 15
ignorehitpause = 1

[State -1, D, DL, L, DL, R: Down-Right]
type = Null;Explod
triggerall = NumExplod(90032504) || NumExplod(90032501) || NumExplod(90032502)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
anim = 9999
ID = 90032503
removetime = 15
pausemovetime = 15
supermovetime = 15
ignorehitpause = 1

[State -1, D, DL, L, DL, R: Right]
type = Null;Explod
triggerall = NumExplod(90032504) || NumExplod(90032501) || NumExplod(90032502) || NumExplod(90032503)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90032506
removetime = 15+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 15+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 15+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;==============================================================================================
;============<QUARTER CIRCLE FORWARD, UP-FORWARD/QUARTER CIRCLE BACK, UP-BACK>=================
;==============================================================================================

;==============================================================================================
;Also known as a "Tiger Knee" motion. Works much the same way the double quarter circle motions
;work.
;==============================================================================================

;===========================<DOWN, DOWN-RIGHT, RIGHT, UP-RIGHT>================================
[State -1, D, DR, R, UR: Right]
type = Null;Explod
triggerall = NumExplod(90010003)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90012406
removetime = 15
pausemovetime = 15
supermovetime = 15
ignorehitpause = 1

[State -1, D, DR, R, UR: Up-Right]
type = Null;Explod
triggerall = NumExplod(90012406)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
anim = 9999
ID = 90012409
removetime = 15+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 15+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 15+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;=============================<DOWN, DOWN-LEFT, LEFT, UP-LEFT>=================================
[State -1, D, DL, L, UL: Left]
type = Null;Explod
triggerall = NumExplod(90010101)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90012504
removetime = 15
pausemovetime = 15
supermovetime = 15
ignorehitpause = 1

[State -1, D, DL, L, UL: Up-Left]
type = Null;Explod
triggerall = NumExplod(90012504)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
anim = 9999
ID = 90012507
removetime = 15+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 15+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 15+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;==============================================================================================
;====================<FORWARD, DOWN, DOWN-FORWARD/BACK, DOWN, DOWN-BACK>=======================
;==============================================================================================

;==============================================================================================
;Nothing special here, just the standard dragon punch motion!
;==============================================================================================

;================================<RIGHT, DOWN, DOWN-RIGHT>=====================================
[State -1, R, D, DR: Press Right]
type = Explod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90010206
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, R, D, DR: Release Right]
type = Explod
triggerall = NumExplod(90000006)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command != "fwd" && Helper(90000005),Command != "holdfwd"
trigger2 = Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd"
trigger2 = Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown" || Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback" || Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
anim = 9999
ID = 90010256
removetime = 5
pausemovetime = 5
supermovetime = 5
ignorehitpause = 1

[State -1, R, D, DR: Down]
type = Explod
triggerall = NumExplod(90010206) || NumExplod(90010256)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "fwd"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down" && Helper(90000005),Command != "fwd"
anim = 9999
ID = 90010202
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, R, D, DR: Down-Right]
type = Explod
triggerall = NumExplod(90010202)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
anim = 9999
ID = 90010203
removetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;=================================<LEFT, DOWN, DOWN-LEFT>======================================
[State -1, L, D, DL: Press Left]
type = Explod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90010304
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, L, D, DL: Release Left]
type = Explod
triggerall = NumExplod(90000004)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command != "back" && Helper(90000005),Command != "holdback"
trigger2 = Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback"
trigger2 = Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown" || Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd" || Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
anim = 9999
ID = 90010354
removetime = 5
pausemovetime = 5
supermovetime = 5
ignorehitpause = 1

[State -1, L, D, DL: Down]
type = Explod
triggerall = NumExplod(90010304) || NumExplod(90010354)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "fwd"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down" && Helper(90000005),Command != "fwd"
anim = 9999
ID = 90010302
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, L, D, DL: Down-Left]
type = Explod
triggerall = NumExplod(90010302)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
anim = 9999
ID = 90010301
removetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;==============================================================================================
;=================================<HALF CIRCLE FORWARD/BACK>===================================
;==============================================================================================

;==============================================================================================
;As mentioned earlier, SNK games have command shortcuts for half-circle moves, allowing the user
;to only input cardinal directions and still complete the command. We have opted to use Capcom's
;method for the standard half circle comands here, but these can very easily be modified to use
;the SNK method!
;==============================================================================================

;========================<LEFT, DOWN-LEFT, DOWN, DOWN-RIGHT, RIGHT>============================
[State -1, L, DL, D, DR, R: Press Left]
type = Explod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90010404
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, L, DL, D, DR, R: Release Left]
type = Explod
triggerall = NumExplod(90000004)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command != "back" && Helper(90000005),Command != "holdback"
trigger2 = Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback"
trigger2 = Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown" || Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd" || Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
anim = 9999
ID = 90010454
removetime = 5
pausemovetime = 5
supermovetime = 5
ignorehitpause = 1

[State -1, L, DL, D, DR, R: Down-Left]
type = Explod
triggerall = NumExplod(90010404) || NumExplod(90010454)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
anim = 9999
ID = 90010401
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, L, DL, D, DR, R: Down]
type = Explod
triggerall = NumExplod(90010404) || NumExplod(90010454) || NumExplod(90010401)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "fwd"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down" && Helper(90000005),Command != "fwd"
anim = 9999
ID = 90010402
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, L, DL, D, DR, R: Down-Right]
type = Explod
triggerall = NumExplod(90010402)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
anim = 9999
ID = 90010403
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, L, DL, D, DR, R: Right]
type = Explod
triggerall = NumExplod(90010402) || NumExplod(90010403)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90010406
removetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;========================<RIGHT, DOWN-RIGHT, DOWN, DOWN-LEFT, LEFT>============================
[State -1, R, DR, D, DL, L: Press Right]
type = Explod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90010506
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1


[State -1, R, DR, D, DL, L: Release Right]
type = Explod
triggerall = NumExplod(90000006)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command != "fwd" && Helper(90000005),Command != "holdfwd"
trigger2 = Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd"
trigger2 = Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown" || Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback" || Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
anim = 9999
ID = 90010556
removetime = 5
pausemovetime = 5
supermovetime = 5
ignorehitpause = 1

[State -1, R, DR, D, DL, L: Down-Right]
type = Explod
triggerall = NumExplod(90010506) || NumExplod(90010556)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
anim = 9999
ID = 90010503
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, R, DR, D, DL, L: Down]
type = Explod
triggerall = NumExplod(90010506) || NumExplod(90010556) || NumExplod(90010503)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "fwd"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down" && Helper(90000005),Command != "fwd"
anim = 9999
ID = 90010502
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, R, DR, D, DL, L: Down-Left]
type = Explod
triggerall = NumExplod(90010502)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
anim = 9999
ID = 90010501
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, R, DR, D, DL, L: Left]
type = Explod
triggerall = NumExplod(90010502) || NumExplod(90010501)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90010504
removetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;==============================================================================================
;==============================<DOUBLE HALF CIRCLE FORWARD/BACK>===============================
;==============================================================================================

;==============================================================================================
;The double half circle motions use the exact same principles that the double quarter circle motions
;used: they're dependent on the standard half circle motions to reduce clutter and unnecessary
;duplication of code.
;==============================================================================================

;=====================<DOUBLE LEFT, DOWN-LEFT, DOWN, DOWN-RIGHT, RIGHT>========================
[State -1, L, DL, D, DR, R, L, DL, D, DR, R: 1st Right]
type = Null;Explod
triggerall = NumExplod(90010403)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90030406
removetime = 15
pausemovetime = 15
supermovetime = 15
ignorehitpause = 1

[State -1, L, DL, D, DR, R, L, DL, D, DR, R: 2nd Left]
type = Null;Explod
triggerall = NumExplod(90030406)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90030404
removetime = 15
pausemovetime = 15
supermovetime = 15
ignorehitpause = 1

[State -1, L, DL, D, DR, R, L, DL, D, DR, R: 2nd Down-Left]
type = Null;Explod
triggerall = NumExplod(90030404)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
anim = 9999
ID = 90030401
removetime = 15
pausemovetime = 15
supermovetime = 15
ignorehitpause = 1

[State -1, L, DL, D, DR, R, L, DL, D, DR, R: 2nd Down]
type = Null;Explod
triggerall = NumExplod(90030401)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "fwd"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down" && Helper(90000005),Command != "fwd"
anim = 9999
ID = 90030402
removetime = 15
pausemovetime = 15
supermovetime = 15
ignorehitpause = 1

[State -1, L, DL, D, DR, R, L, DL, D, DR, R: 2nd Down-Right]
type = Null;Explod
triggerall = NumExplod(90030402)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
anim = 9999
ID = 90030403
removetime = 15
pausemovetime = 15
supermovetime = 15
ignorehitpause = 1

[State -1, L, DL, D, DR, R, L, DL, D, DR, R: 2nd Right]
type = Null;Explod
triggerall = NumExplod(90030403)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90030416
removetime = 15+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 15+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 15+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;========================<DOUBLE RIGHT, DOWN-RIGHT, DOWN, DOWN-LEFT, LEFT>============================
[State -1, R, DR, D, DL, L, R, DR, D, DL, L: Left]
type = Null;Explod
triggerall = NumExplod(90010501)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90030504
removetime = 15
pausemovetime = 15
supermovetime = 15
ignorehitpause = 1

[State -1, R, DR, D, DL, L, R, DR, D, DL, L: 2nd Right]
type = Null;Explod
triggerall = NumExplod(90030504)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90030506
removetime = 15
pausemovetime = 15
supermovetime = 15
ignorehitpause = 1

[State -1, R, DR, D, DL, L, R, DR, D, DL, L: 2nd Down-Right]
type = Null;Explod
triggerall = NumExplod(90030506)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
anim = 9999
ID = 90030503
removetime = 15
pausemovetime = 15
supermovetime = 15
ignorehitpause = 1

[State -1, R, DR, D, DL, L, R, DR, D, DL, L: 2nd Down]
type = Null;Explod
triggerall = NumExplod(90030503)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "fwd"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down" && Helper(90000005),Command != "fwd"
anim = 9999
ID = 90030502
removetime = 15
pausemovetime = 15
supermovetime = 15
ignorehitpause = 1

[State -1, R, DR, D, DL, L, R, DR, D, DL, L: 2nd Down-Left]
type = Null;Explod
triggerall = NumExplod(90030502)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
anim = 9999
ID = 90030501
removetime = 15
pausemovetime = 15
supermovetime = 15
ignorehitpause = 1

[State -1, R, DR, D, DL, L, R, DR, D, DL, L: 2nd Left]
type = Null;Explod
triggerall = NumExplod(90030501)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90030514
removetime = 15+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 15+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 15+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;==============================================================================================
;=================================<CHARGE BACK, FORWARD>===================================
;==============================================================================================

;==============================================================================================
;Capcom and SNK approach charge moves very differently; SNK bases its charge moves solely on the
;user's input, with no regard to character facing. Capcom games, however, "reset" their charge moves
;whenever the characters switch sides. Additionally, SNK style charge commands allow charging during
;hitpause; Capcom does not allow this.

;The charge moves below are patterned after Capcom's style of charge moves; for the SNK style, please
;see http://mugenguild.com/forum/msg.2366956, where code that replicates SNK behavior is provided, as
;well as further discussion about the nuances of Capcom and SNK's style of charge moves.

;A note about AI: we have opted to only have the charge variables trigger for human controlled players,
;but if you want the character to simulate charging up charge moves when played by an AI, the best way of
;doing so would be to have the AI also utilize these variables. A commonly-used example of how one might
;implement this would be to have the AI always increment the Left/Right (and Down, if used) charge variables
;[var(47) and var(49), respectively], and then to have various triggers in the Left/Right (and Down) Charge
;Reset sCtrls that reset the charge variable to 0. For example, if the character were to walk forward, or go
;to idle, it would look weird if they then performed a charge move, so those would be good triggers to have for
;the reset sCtrls. You should also reset the charge variables when the AI-controlled character activates a
;special or super move, so they won't be able to fire off another charge move immediately after performing
;their current move!
;==============================================================================================

;===============================<(CAPCOM) CHARGE BACK, FORWARD>================================


;==============================================================================================
;this is the standard method of coding charge moves in MUGEN (since MUGEN's in-built charge commands
;are completely broken), with two changes: the triggers are adjusted to ensure
;that the correct behavior occurs when switching sides, and the variable keeping track of how long
;the character is holding a particular direction increases when left is held, but decreases when right
;is held.

;When a right-facing character holds left, var(47) will increase by one every tick. When a left-facing
;character holds right, var(47) will decrease by one every tick. If at any point the character stops
;holding that respective direction, var(47) will be reset to 0. And if var(47) has an absolute value
;greater than or equal to 45 (meaning left or right has been held for 45 or more ticks), then var(48)
;is set to 16. This is our charge buffer, and as long as it's non-zero, the character is able to perform
;a charge move. var(48) will slowly start counting down to 0, however, if the player stops hold left or right!
;==============================================================================================
[State -1, Left Charge Increment]
type = VarAdd
triggerall = NumHelper(90000005) && !IsHelper
trigger1 = !AILevel
trigger1 = Helper(90000005),Command = "holdback"
var(47) = 1
ignorehitpause = 1

;AI Buffer Increment
[State -2, AI L/R Charge Increment]
type = VarAdd
triggerall = AILevel
trigger1 = !(StateNo = 0 && Ctrl && Time > 0) && !(StateNo = 40 && PrevStateNo = 0) && !(StateNo = 102)
trigger1 = !(StateNo = 20 && Command = "holdfwd") && !(StateNo = 40 && sysvar(1) >= 0) && !(StateNo = 720)
var(47) = 1
ignorehitpause = 1

;this will only activate if var(47) is greater than zero; this is to avoid this VarSet from activating
;when the player is charging right
[State -1, Left Charge Reset]
type = VarSet
triggerall = Var(47) > 0
triggerall = NumHelper(90000005) && !IsHelper
trigger1 = !AILevel
trigger1 =  Helper(90000005),Command != "holdback" || Helper(90000005),Command = "holdfwd"
var(47) = 0
ignorehitpause = 1

;AI Left Charge Reset
[State -2, Left Charge Reset]
type = VarSet
triggerall = AILevel
trigger1 = ((StateNo = 0 && Ctrl && Time > 0) || (StateNo = 40 && PrevStateNo = 0) || (StateNo = 102))
trigger2 = ((StateNo = 20 && Var(47) > 42) || (StateNo = 40 && sysvar(1) >= 0))
trigger3 = !Time && (StateNo = 61 || StateNo = 63 || StateNo = 64)
trigger4 = StateNo = 100 && !Time
trigger5 = StateNo = 1000 && Var(47) > 42
trigger6 = StateNo = 1010 && Var(47) > 42
trigger7 = StateNo = 1200 && !Time
trigger8 = StateNo = 1210 && !Time
trigger9 = StateNo = 1300 && !Time
trigger10 = StateNo = 1310 && !Time
trigger11 = StateNo = 1500 && !Time
trigger12 = StateNo = 1510 && !Time
var(47) = 0
ignorehitpause = 1

[State -1, Right Charge Increment]
type = VarAdd
triggerall = NumHelper(90000005) && !IsHelper
trigger1 = !AILevel
trigger1 = Helper(90000005),Command = "holdfwd"
var(47) = -1
ignorehitpause = 1

[State -1, Right Charge Reset]
type = VarSet
triggerall = Var(47) < 0
triggerall = NumHelper(90000005) && !IsHelper
trigger1 = !AILevel
trigger1 =  Helper(90000005),Command != "holdfwd" || Helper(90000005),Command = "holdback"
var(47) = 0
ignorehitpause = 1

[State -1, Left/Right Charge Buffer Activation]
type = VarSet
;we need to remember to check the absolute value of var(47), since it can be
;either positive or negative!
trigger1 = Abs(Var(47)) >= 45
var(48) = Cond(Var(47) < 0,-10,10)
ignorehitpause = 1

[State -1, Left Charge Buffer Decrement]
type = VarAdd
trigger1 = Abs(Var(47)) < 45 && Var(48) > 0
var(48) = -1

[State -1, Right Charge Buffer Decrement]
type = VarAdd
trigger1 = Abs(Var(47)) < 45 && Var(48) < 0
var(48) = 1



;==============================================================================================
;With Capcom-style charge moves, the length of time the command is active behaves very differently;
;than with standard commands, instead of having the removetime be a constant value, we use the
;current value of the charge buffer, var(48).
;==============================================================================================

;=====================================<CHARGE LEFT, RIGHT>=====================================
;we only need one command explod for this move, since we already know that the player has been
;inputting the opposite direction!
[State -1, Charge Left, Right: Right]
type = Explod
triggerall = Var(48) > 0
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90010606
removetime = Var(48)+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = Var(48)+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = Var(48)+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;=====================================<CHARGE RIGHT, LEFT>=====================================
[State -1, Charge Right, Left: Left]
type = Explod
triggerall = Var(48) < 0
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90010704
removetime = Abs(Var(48))+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = Abs(Var(48))+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = Abs(Var(48))+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;==============================================================================================
;============================<CHARGE BACK, FORWARD, BACK, FORWARD>=============================
;==============================================================================================

;==============================================================================================
;This is extremely similar to the QCFx2/QCBx2 code, only with slight adjustments made to make it
;fit the format of a charge move.
;==============================================================================================

;==============================<CHARGE LEFT, RIGHT, LEFT, RIGHT>===============================

[State -1, Charge Left, Right, Left, Right: 1st Right]
type = Explod
triggerall = Var(48) > 0
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90030606
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, Charge Left, Right, Left, Right: 2nd Left]
type = Explod
triggerall = NumExplod(90030606)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90030604
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, Charge Left, Right, Left, Right: 2nd Right]
type = Explod
triggerall = NumExplod(90030604)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90030616
removetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;==============================<CHARGE RIGHT, LEFT, RIGHT, LEFT>===============================
[State -1, Charge Right, Left, Right, Left: 1st Left]
type = Explod
triggerall = Var(48) < 0
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90030704
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, Charge Right, Left, Right, Left: 2nd Right]
type = Explod
triggerall = NumExplod(90030704)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90030706
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, Charge Right, Left, Right, Left: 2nd Left]
type = Explod
triggerall = NumExplod(90030706)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90030714
removetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;==============================================================================================
;======================================<CHARGE DOWN, UP>=======================================
;==============================================================================================

;==============================================================================================
;This uses the exact same concept as the Back, Forward charge move, only things are much easier
;since we don't have to deal with switching sides and having to have mirrored commands!

;Do note that we use different variables [var(49) and var(50)] here.
;==============================================================================================

[State -1, Down Charge Increment]
type = VarAdd
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !AIlevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "holddown"
trigger2 = !AIlevel
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "holdup"
var(49) = 1
ignorehitpause = 1

;AI Buffer Increment
[State -2, Down Charge Increment]
type = VarAdd
triggerall = AILevel
trigger1 = !(StateType = S && StateNo != 100)
trigger1 = StateNo != 20
var(49) = 1
ignorehitpause = 1
;trigger1 = StateNo != 40
;trigger1 = !((StateNo = 61 || StateNo = 63 || StateNo = 64) && Time = 0)
;trigger1 = !(StateNo = 100 && Time = 0)
;trigger1 = !(StateNo = 102 && Time = 0)
;trigger1 = !(StateNo = 105 && Time = 0)
;trigger1 = StateNo != 1000
;trigger1 = StateNo != 1010
;trigger1 = !(StateNo = 1100 && Time = 0)
;trigger1 = !(StateNo = 1110 && Time = 0)
;trigger1 = !(StateNo = 1200 && Time = 0)
;trigger1 = !(StateNo = 1210 && Time = 0)
;trigger1 = !(StateNo = 1500 && Time = 0)
;trigger1 = !(StateNo = 1510 && Time = 0)
;trigger13 = !(StateNo = 1300 && Time = 0)
;trigger14 = !(StateNo = 1310 && Time = 0)

[State -1, Down Charge Reset]
type = VarSet
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command != "holddown" || Helper(90000005),Command = "holdup"
trigger2 = !AILevel
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command != "holdup" || Helper(90000005),Command = "holddown"
var(49) = 0
ignorehitpause = 1

;AI Charge Reset
[State -2, Down Charge Reset]
type = VarSet
triggerall = AILevel
trigger1 = StateNo = 0 && Var(50) > 0
trigger2 = StateNo = 20 && Var(50) > 0
trigger3 = StateNo = 40
trigger4 = !Time && (StateNo = 61 || StateNo = 63 || StateNo = 64)
trigger5 = StateNo = 100 && !Time
trigger6 = StateNo = 102 && !Time
trigger7 = StateNo = 105 && !Time
trigger8 = (StateNo = [200,299]) && !Time
trigger9 = StateNo = 1000 && !Time
trigger10 = StateNo = 1010 && !Time
trigger11 = StateNo = 1100 && !Time
trigger12 = StateNo = 1110 && !Time
trigger13 = StateNo = 1200 && !Time
trigger14 = StateNo = 1210 && !Time
trigger15 = StateNo = 1300 && !Time
trigger16 = StateNo = 1310 && !Time
trigger18 = StateNo = 1400 && !Time
trigger19 = StateNo = 1410 && !Time
trigger20 = StateNo = 1500 && !Time
trigger21 = StateNo = 1510 && !Time
var(49) = 0
ignorehitpause = 1

[State -1, Down Charge Buffer Activation]
type = VarSet
trigger1 = Var(49) >= 45
var(50) = 10
ignorehitpause = 1

[State -1, Down Charge Buffer Decrement]
type = VarAdd
trigger1 = Var(49) < 45 && Var(50) > 0
var(50) = -1

[State -1, Charge Down, Up: Up]
type = Explod
triggerall = Var(50) > 0
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "up" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "down" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
anim = 9999
ID = 90010808
removetime = Var(50)+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = Var(50)+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = Var(50)+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;==============================================================================================
;===================<CHARGE DOWN-BACK, DOWN-FORWARD, DOWN-BACK, UP-FORWARD>====================
;==============================================================================================

;==============================================================================================
;Almost identical to the charge Back, Forward, Back, Forward command, only we have to check var(50)
;(to make sure down has been charged enough) in addition to checking var(48) (to make sure back has
;been charged enough.
;==============================================================================================

;=====================<CHARGE DOWN-LEFT, DOWN-RIGHT, DOWN-LEFT, UP-RIGHT>======================
[State -1, Charge Down-Left, Down-Right, Down-Left, Up-Right: Down-Right]
type = Null;Explod
triggerall = var(48) > 0 && var(50) > 0
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
anim = 9999
ID = 90030803
removetime = var(50)
pausemovetime = var(50)
supermovetime = var(50)
ignorehitpause = 1

[State -1, Charge Down-Left, Down-Right, Down-Left, Up-Right: 2nd Down-Left]
type = Null;Explod
triggerall = NumExplod(90030803)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
anim = 9999
ID = 90030801
removetime = var(50)
pausemovetime = var(50)
supermovetime = var(50)
ignorehitpause = 1

[State -1, Charge Down-Left, Down-Right, Down-Left, Up-Right: Up-Right]
type = Null;Explod
triggerall = NumExplod(90030801)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
anim = 9999
ID = 90030809
removetime = var(50)+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = var(50)+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = var(50)+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;=====================<CHARGE DOWN-RIGHT, DOWN-LEFT, DOWN-RIGHT, UP-LEFT>======================
[State -1, Charge Down-Right, Down-Left, Down-Right, Up-Left: Down-Left]
type = Null;Explod
triggerall = var(48) < 0 && var(50) > 0
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
anim = 9999
ID = 90030901
removetime = var(50)
pausemovetime = var(50)
supermovetime = var(50)
ignorehitpause = 1

[State -1, Charge Down-Right, Down-Left, Down-Right, Up-Left: 2nd Down-Right]
type = Null;Explod
triggerall = NumExplod(90030901)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
anim = 9999
ID = 90030903
removetime = var(50)
pausemovetime = var(50)
supermovetime = var(50)
ignorehitpause = 1

[State -1, Charge Down-Right, Down-Left, Down-Right, Up-Left: Up-Left]
type = Null;Explod
triggerall = NumExplod(90030903)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
anim = 9999
ID = 90030907
removetime = var(50)+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = var(50)+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = var(50)+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;==============================================================================================
;===========================================<360>==============================================
;==============================================================================================

;==============================================================================================
;Much like with SNK's half circle commands, 360 commands (from both Capcom and SNK) only require
;you to input the cardinal directions. And again like SNK's half-circle commands, however, we have
;opted to make it so that diagonal inputs are still accepted and that they will keep the command "alive".
;There are eight different permutations of the 360 command: there are four different directional input
;that the move can be started in, and the move can be performed in either a clockwise or counter-clockwise
;direction.

;This all means a whole lot of code! If you aren't using either the 360 or 720 commands, it is strongly
;recommended that you delete this huge block of code!
;==============================================================================================

;=================================<360/LEFT, DOWN, RIGHT, UP>==================================
[State -1, 360/L, D, R, U: Press Left]
type = Null;Explod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90011004
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/L, D, R, U: Release Left]
type = Null;Explod
triggerall = NumExplod(90000004)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command != "back" && Helper(90000005),Command != "holdback"
trigger2 = Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback"
trigger2 = Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown" || Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd" || Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
anim = 9999
ID = 90011054
removetime = 5
pausemovetime = 5
supermovetime = 5
ignorehitpause = 1

[State -1, 360/L, D, R, U: Down-Left]
type = Null;Explod
triggerall = NumExplod(90011004) || NumExplod(90011054)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
anim = 9999
ID = 90011001
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/L, D, R, U: Down]
type = Null;Explod
triggerall = NumExplod(90011004) || NumExplod(90011054) || NumExplod(90011001)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "fwd"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down" && Helper(90000005),Command != "fwd"
anim = 9999
ID = 90011002
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/L, D, R, U: Down-Right]
type = Null;Explod
triggerall = NumExplod(90011002)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
anim = 9999
ID = 90011003
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/L, D, R, U: Right]
type = Null;Explod
triggerall = NumExplod(90011003) || NumExplod(90011002)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90011006
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/L, D, R, U: Up-Right]
type = Null;Explod
triggerall = NumExplod(90011006)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
anim = 9999
ID = 90011009
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/L, D, R, U: Up]
type = Null;Explod
triggerall = NumExplod(90011006) || NumExplod(90011009)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "up" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "down" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
anim = 9999
ID = 90011008
removetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;=================================<360/LEFT, UP, RIGHT, DOWN>==================================
[State -1, 360/L, U, R, D: Press Left]
type = Null;Explod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90011104
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/L, U, R, D: Release Left]
type = Null;Explod
triggerall = NumExplod(90000004)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command != "back" && Helper(90000005),Command != "holdback"
trigger2 = Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback"
trigger2 = Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown" || Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd" || Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
anim = 9999
ID = 90011154
removetime = 5
pausemovetime = 5
supermovetime = 5
ignorehitpause = 1

[State -1, 360/L, U, R, D: Up-Left]
type = Null;Explod
triggerall = NumExplod(90011104) || NumExplod(90011154)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
anim = 9999
ID = 90011107
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/L, U, R, D: Up]
type = Null;Explod
triggerall = NumExplod(90011104) || NumExplod(90011154) || NumExplod(90011107)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "up" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "down" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
anim = 9999
ID = 90011108
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/L, U, R, D: Up-Right]
type = Null;Explod
triggerall = NumExplod(90011108)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
anim = 9999
ID = 90011109
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/L, U, R, D: Right]
type = Null;Explod
triggerall = NumExplod(90011108) || NumExplod(90011109)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90011106
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/L, U, R, D: Down-Right]
type = Null;Explod
triggerall = NumExplod(90011106)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
anim = 9999
ID = 90011103
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/L, U, R, D: Down]
type = Null;Explod
triggerall = NumExplod(90011106) || NumExplod(90011103)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "fwd"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down" && Helper(90000005),Command != "fwd"
anim = 9999
ID = 90011102
removetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;=================================<360/DOWN, RIGHT, UP, LEFT>==================================
[State -1, 360/D, R, U, L: Press Down]
type = Null;Explod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "fwd"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down" && Helper(90000005),Command != "fwd"
anim = 9999
ID = 90011202
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/D, R, U, L: Release Down]
type = Null;Explod
triggerall = NumExplod(90000002)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command != "down" && Helper(90000005),Command != "holddown"
trigger2 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown"
trigger2 = Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd" || Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback" || Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
trigger3 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger3 = Helper(90000005),Command != "up" && Helper(90000005),Command != "holdup"
trigger4 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger4 = Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
trigger4 = Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd" || Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback" || Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown"
anim = 9999
ID = 90011252
removetime = 5
pausemovetime = 5
supermovetime = 5
ignorehitpause = 1

[State -1, 360/D, R, U, L: Down-Right]
type = Null;Explod
triggerall = NumExplod(90011202) || NumExplod(90011252)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
anim = 9999
ID = 90011203
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/D, R, U, L: Right]
type = Null;Explod
triggerall = NumExplod(90011202) || NumExplod(90011252) || NumExplod(90011203)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90011206
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/D, R, U, L: Up-Right]
type = Null;Explod
triggerall = NumExplod(90011206)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
anim = 9999
ID = 90011209
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/D, R, U, L: Up]
type = Null;Explod
triggerall = NumExplod(90011206) || NumExplod(90011209)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "up" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "down" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
anim = 9999
ID = 90011208
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/D, R, U, L: Up-Left]
type = Null;Explod
triggerall = NumExplod(90011208)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
anim = 9999
ID = 90011207
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/D, R, U, L: Left]
type = Null;Explod
triggerall = NumExplod(90011208) || NumExplod(90011207)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90011204
removetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;=================================<360/DOWN, LEFT, UP, RIGHT>==================================
[State -1, 360/D, L, U, R: Press Down]
type = Null;Explod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "fwd"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down" && Helper(90000005),Command != "fwd"
anim = 9999
ID = 90011302
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/D, L, U, R: Release Down]
type = Null;Explod
triggerall = NumExplod(90000002)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command != "down" && Helper(90000005),Command != "holddown"
trigger2 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown"
trigger2 = Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd" || Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback" || Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
trigger3 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger3 = Helper(90000005),Command != "up" && Helper(90000005),Command != "holdup"
trigger4 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger4 = Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
trigger4 = Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd" || Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback" || Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown"
anim = 9999
ID = 90011352
removetime = 5
pausemovetime = 5
supermovetime = 5
ignorehitpause = 1

[State -1, 360/D, L, U, R: Down-Left]
type = Null;Explod
triggerall = NumExplod(90011302) || NumExplod(90011352)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
anim = 9999
ID = 90011301
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/D, L, U, R: Left]
type = Null;Explod
triggerall = NumExplod(90011302) || NumExplod(90011352) || NumExplod(90011301)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90011304
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/D, L, U, R: Up-Left]
type = Null;Explod
triggerall = NumExplod(90011304)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
anim = 9999
ID = 90011307
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/D, L, U, R: Up]
type = Null;Explod
triggerall = NumExplod(90011304) || NumExplod(90011307)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "up" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "down" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
anim = 9999
ID = 90011308
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/D, L, U, R: Up-Right]
type = Null;Explod
triggerall = NumExplod(90011308)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
anim = 9999
ID = 90011309
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/D, L, U, R: Right]
type = Null;Explod
triggerall = NumExplod(90011308) || NumExplod(90011309)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90011306
removetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;=================================<360/RIGHT, DOWN, LEFT, UP>==================================
[State -1, 360/R, D, L, U: Press Right]
type = Null;Explod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90011406
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/R, D, L, U: Release Right]
type = Null;Explod
triggerall = NumExplod(90000006)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command != "fwd" && Helper(90000005),Command != "holdfwd"
trigger2 = Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd"
trigger2 = Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown" || Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback" || Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
anim = 9999
ID = 90011456
removetime = 5
pausemovetime = 5
supermovetime = 5
ignorehitpause = 1

[State -1, 360/R, D, L, U: Down-Right]
type = Null;Explod
triggerall = NumExplod(90011406) || NumExplod(90011456)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
anim = 9999
ID = 90011403
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/R, D, L, U: Down]
type = Null;Explod
triggerall = NumExplod(90011406) || NumExplod(90011456) || NumExplod(90011403)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "fwd"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down" && Helper(90000005),Command != "fwd"
anim = 9999
ID = 90011402
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/R, D, L, U: Down-Left]
type = Null;Explod
triggerall = NumExplod(90011402)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
anim = 9999
ID = 90011401
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/R, D, L, U: Left]
type = Null;Explod
triggerall = NumExplod(90011402) || NumExplod(90011401)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90011404
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/R, D, L, U: Up-Left]
type = Null;Explod
triggerall = NumExplod(90011404)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
anim = 9999
ID = 90011407
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/R, D, L, U: Up]
type = Null;Explod
triggerall = NumExplod(90011404) || NumExplod(90011407)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "up" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "down" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
anim = 9999
ID = 90011408
removetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;=================================<360/RIGHT, UP, LEFT, DOWN>==================================
[State -1, 360/R, U, L, D: Press Right]
type = Null;Explod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90011506
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/R, U, L, D: Release Right]
type = Null;Explod
triggerall = NumExplod(90000006)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command != "fwd" && Helper(90000005),Command != "holdfwd"
trigger2 = Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd"
trigger2 = Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown" || Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback" || Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
anim = 9999
ID = 90011556
removetime = 5
pausemovetime = 5
supermovetime = 5
ignorehitpause = 1

[State -1, 360/R, U, L, D: Up-Right]
type = Null;Explod
triggerall = NumExplod(90011506) || NumExplod(90011556)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
anim = 9999
ID = 90011509
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/R, U, L, D: Up]
type = Null;Explod
triggerall = NumExplod(90011506) || NumExplod(90011556) || NumExplod(90011509)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "up" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "down" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
anim = 9999
ID = 90011508
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/R, U, L, D: Up-Left]
type = Null;Explod
triggerall = NumExplod(90011508)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
anim = 9999
ID = 90011507
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/R, U, L, D: Left]
type = Null;Explod
triggerall = NumExplod(90011508) || NumExplod(90011507)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90011504
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/R, U, L, D: Down-Left]
type = Null;Explod
triggerall = NumExplod(90011504)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
anim = 9999
ID = 90011501
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/R, U, L, D: Down]
type = Null;Explod
triggerall = NumExplod(90011504) || NumExplod(90011501)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "fwd"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down" && Helper(90000005),Command != "fwd"
anim = 9999
ID = 90011502
removetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;=================================<360/UP, RIGHT, DOWN, LEFT>==================================
[State -1, 360/U, R, D, L: Press Up]
type = Null;Explod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "up" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "down" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
anim = 9999
ID = 90011608
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/U, R, D, L: Release Up]
type = Null;Explod
triggerall = NumExplod(90000008)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command != "up" && Helper(90000005),Command != "holdup"
trigger2 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
trigger2 = Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd" || Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback" || Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown"
trigger3 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger3 = Helper(90000005),Command != "down" && Helper(90000005),Command != "holddown"
trigger4 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger4 = Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown"
trigger4 = Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd" || Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback" || Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
anim = 9999
ID = 90011658
removetime = 5
pausemovetime = 5
supermovetime = 5
ignorehitpause = 1

[State -1, 360/U, R, D, L: Up-Right]
type = Null;Explod
triggerall = NumExplod(90011608) || NumExplod(90011658)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
anim = 9999
ID = 90011609
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/U, R, D, L: Right]
type = Null;Explod
triggerall = NumExplod(90011608) || NumExplod(90011658) || NumExplod(90011609)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90011606
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/U, R, D, L: Down-Right]
type = Null;Explod
triggerall = NumExplod(90011606)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
anim = 9999
ID = 90011603
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/U, R, D, L: Down]
type = Null;Explod
triggerall = NumExplod(90011606) || NumExplod(90011603)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "fwd"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down" && Helper(90000005),Command != "fwd"
anim = 9999
ID = 90011602
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/U, R, D, L: Down-Left]
type = Null;Explod
triggerall = NumExplod(90011602)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
anim = 9999
ID = 90011601
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/U, R, D, L: Left]
type = Null;Explod
triggerall = NumExplod(90011602) || NumExplod(90011601)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90011604
removetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;=================================<360/UP, LEFT, DOWN, RIGHT>==================================
[State -1, 360/U, L, D, R: Press Up]
type = Null;Explod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "up" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "down" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
anim = 9999
ID = 90011708
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/U, L, D, R: Release Up]
type = Null;Explod
triggerall = NumExplod(90000008)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command != "up" && Helper(90000005),Command != "holdup"
trigger2 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
trigger2 = Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd" || Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback" || Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown"
trigger3 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger3 = Helper(90000005),Command != "down" && Helper(90000005),Command != "holddown"
trigger4 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger4 = Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown"
trigger4 = Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd" || Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback" || Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
anim = 9999
ID = 90011758
removetime = 5
pausemovetime = 5
supermovetime = 5
ignorehitpause = 1

[State -1, 360/U, L, D, R: Up-Left]
type = Null;Explod
triggerall = NumExplod(90011708) || NumExplod(90011758)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
anim = 9999
ID = 90011707
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/U, L, D, R: Left]
type = Null;Explod
triggerall = NumExplod(90011708) || NumExplod(90011758) || NumExplod(90011707)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90011704
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/U, L, D, R: Down-Left]
type = Null;Explod
triggerall = NumExplod(90011704)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
anim = 9999
ID = 90011701
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/U, L, D, R: Down]
type = Null;Explod
triggerall = NumExplod(90011704) || NumExplod(90011701)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "fwd"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down" && Helper(90000005),Command != "fwd"
anim = 9999
ID = 90011702
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/U, L, D, R: Down-Right]
type = Null;Explod
triggerall = NumExplod(90011702)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
anim = 9999
ID = 90011703
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 360/U, L, D, R: Right]
type = Null;Explod
triggerall = NumExplod(90011702) || NumExplod(90011703)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90011706
removetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;==============================================================================================
;===========================================<720>==============================================
;==============================================================================================

;==============================================================================================
;This block of code is pretty much identical to the 360 command block, but we only have to code
;one additional rotation, because the first rotation is already covered by the 360 command block
;(much in the same way that the QCFx2/QCBx2 block only needed to code a single quarter-circle motion)
;==============================================================================================

;======================<720/LEFT, DOWN, RIGHT, UP, LEFT, DOWN, RIGHT, UP>======================
[State -1, 720/L, D, R, U, L, D, R, U: 1st Up]
type = Null;Explod
triggerall = NumExplod(90011006) || NumExplod(90011009)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "up" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "down" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
anim = 9999
ID = 90031008
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/L, D, R, U, L, D, R, U: Up-Left]
type = Null;Explod
triggerall = NumExplod(90031008)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
anim = 9999
ID = 90031007
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/L, D, R, U, L, D, R, U: 2nd Left]
type = Null;Explod
triggerall = NumExplod(90031008) || NumExplod(90031007)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90031004
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/L, D, R, U, L, D, R, U: 2nd Down-Left]
type = Null;Explod
triggerall = NumExplod(90031004)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
anim = 9999
ID = 90031001
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/L, D, R, U, L, D, R, U: 2nd Down]
type = Null;Explod
triggerall = NumExplod(90031001) || NumExplod(90031004)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "fwd"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down" && Helper(90000005),Command != "fwd"
anim = 9999
ID = 90031002
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/L, D, R, U, L, D, R, U: 2nd Down-Right]
type = Null;Explod
triggerall = NumExplod(90031002)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
anim = 9999
ID = 90031003
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/L, D, R, U, L, D, R, U: 2nd Right]
type = Null;Explod
triggerall = NumExplod(90031003) || NumExplod(90031002)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90031006
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/L, D, R, U, L, D, R, U: 2nd Up-Right]
type = Null;Explod
triggerall = NumExplod(90031006)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
anim = 9999
ID = 90031009
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/L, D, R, U, L, D, R, U: 2nd Up]
type = Null;Explod
triggerall = NumExplod(90031006) || NumExplod(90031009)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "up" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "down" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
anim = 9999
ID = 90031018
removetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;=====================<720/LEFT, UP, RIGHT, DOWN, LEFT, UP, RIGHT, DOWN>=======================
[State -1, 720/L, U, R, D, L, U, R, D: 1st Down]
type = Null;Explod
triggerall = NumExplod(90011106) || NumExplod(90011103)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "fwd"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down" && Helper(90000005),Command != "fwd"
anim = 9999
ID = 90031102
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/L, U, R, D, L, U, R, D: Down-Left]
type = Null;Explod
triggerall = NumExplod(90031102)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
anim = 9999
ID = 90031101
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/L, U, R, D, L, U, R, D: 2nd Left]
type = Null;Explod
triggerall = NumExplod(90031102) || NumExplod(90031101)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90031104
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/L, U, R, D, L, U, R, D: 2nd Up-Left]
type = Null;Explod
triggerall = NumExplod(90031104)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
anim = 9999
ID = 90031107
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/L, U, R, D, L, U, R, D: 2nd Up]
type = Null;Explod
triggerall = NumExplod(90031107) || NumExplod(90031104)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "up" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "down" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
anim = 9999
ID = 90031108
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/L, U, R, D, L, U, R, D: 2nd Up-Right]
type = Null;Explod
triggerall = NumExplod(90031108)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
anim = 9999
ID = 90031109
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/L, U, R, D, L, U, R, D: 2nd Right]
type = Null;Explod
triggerall = NumExplod(90031108) || NumExplod(90031109)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90031106
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/L, U, R, D, L, U, R, D: 2nd Down-Right]
type = Null;Explod
triggerall = NumExplod(90031106)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
anim = 9999
ID = 90031103
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/L, U, R, D, L, U, R, D: 2nd Down]
type = Null;Explod
triggerall = NumExplod(90031106) || NumExplod(90031103)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "fwd"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down" && Helper(90000005),Command != "fwd"
anim = 9999
ID = 90031112
removetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;======================<720/DOWN, RIGHT, UP, LEFT, DOWN, RIGHT, UP, LEFT>======================
[State -1, 720/D, R, U, L, D, R, U, L: 1st Left]
type = Null;Explod
triggerall = NumExplod(90011208) || NumExplod(90011207)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90031204
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/L, D, R, U, L, D, R, U: Down-Left]
type = Null;Explod
triggerall = NumExplod(90031204)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
anim = 9999
ID = 90031201
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/D, R, U, L, D, R, U, L: 2nd Down]
type = Null;Explod
triggerall = NumExplod(90031204) || NumExplod(90031201)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "fwd"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down" && Helper(90000005),Command != "fwd"
anim = 9999
ID = 90031202
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/D, R, U, L, D, R, U, L: 2nd Down-Right]
type = Null;Explod
triggerall = NumExplod(90031202)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
anim = 9999
ID = 90031203
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/D, R, U, L, D, R, U, L: 2nd Right]
type = Null;Explod
triggerall = NumExplod(90031202) || NumExplod(90031203)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90031206
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/D, R, U, L, D, R, U, L: 2nd Up-Right]
type = Null;Explod
triggerall = NumExplod(90031206)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
anim = 9999
ID = 90031209
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/D, R, U, L, D, R, U, L: 2nd Up]
type = Null;Explod
triggerall = NumExplod(90031206) || NumExplod(90031209)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "up" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "down" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
anim = 9999
ID = 90031208
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/D, R, U, L, D, R, U, L: 2nd Up-Left]
type = Null;Explod
triggerall = NumExplod(90031208)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
anim = 9999
ID = 90031207
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/D, R, U, L, D, R, U, L: 2nd Left]
type = Null;Explod
triggerall = NumExplod(90031208) || NumExplod(90031207)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90031214
removetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;=================================<360/DOWN, LEFT, UP, RIGHT>==================================
[State -1, 720/D, L, U, R, D, L, U, R: 1st Right]
type = Null;Explod
triggerall = NumExplod(90011308) || NumExplod(90011309)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90031306
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/D, L, U, R, D, L, U, R: Down-Right]
type = Null;Explod
triggerall = NumExplod(90031306)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
anim = 9999
ID = 90031303
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/D, L, U, R, D, L, U, R: 2nd Down]
type = Null;Explod
triggerall = NumExplod(90031306) || NumExplod(90031303)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "fwd"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down" && Helper(90000005),Command != "fwd"
anim = 9999
ID = 90031302
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/D, L, U, R, D, L, U, R: 2nd Down-Left]
type = Null;Explod
triggerall = NumExplod(90031302)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
anim = 9999
ID = 90031301
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/D, L, U, R, D, L, U, R: 2nd Left]
type = Null;Explod
triggerall = NumExplod(90031302) || NumExplod(90031301)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90031304
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/D, L, U, R, D, L, U, R: 2nd Up-Left]
type = Null;Explod
triggerall = NumExplod(90031304)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
anim = 9999
ID = 90031307
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/D, L, U, R, D, L, U, R: 2nd Up]
type = Null;Explod
triggerall = NumExplod(90031304) || NumExplod(90031307)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "up" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "down" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
anim = 9999
ID = 90031308
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/D, L, U, R, D, L, U, R: 2nd Up-Right]
type = Null;Explod
triggerall = NumExplod(90031308)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
anim = 9999
ID = 90031309
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/D, L, U, R, D, L, U, R: 2nd Right]
type = Null;Explod
triggerall = NumExplod(90031308) || NumExplod(90031309)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90031316
removetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;======================<720/RIGHT, DOWN, LEFT, UP, RIGHT, DOWN, LEFT, UP>======================
[State -1, 720/R, D, L, U, R, D, L, U: 1st Up]
type = Null;Explod
triggerall = NumExplod(90011404) || NumExplod(90011407)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "up" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "down" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
anim = 9999
ID = 90031408
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/R, D, L, U, R, D, L, U: Up-Right]
type = Null;Explod
triggerall = NumExplod(90031408)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
anim = 9999
ID = 90031409
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/R, D, L, U, R, D, L, U: 2nd Right]
type = Null;Explod
triggerall = NumExplod(90031408) || NumExplod(90031409)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90031406
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/R, D, L, U, R, D, L, U: 2nd Down-Right]
type = Null;Explod
triggerall = NumExplod(90031406)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
anim = 9999
ID = 90031403
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/R, D, L, U, R, D, L, U: 2nd Down]
type = Null;Explod
triggerall = NumExplod(90031406) || NumExplod(90031403)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "fwd"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down" && Helper(90000005),Command != "fwd"
anim = 9999
ID = 90031402
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/R, D, L, U, R, D, L, U: 2nd Down-Left]
type = Null;Explod
triggerall = NumExplod(90031402)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
anim = 9999
ID = 90031401
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/R, D, L, U, R, D, L, U: 2nd Left]
type = Null;Explod
triggerall = NumExplod(90031402) || NumExplod(90031401)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90031404
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/R, D, L, U, R, D, L, U: 2nd Up-Left]
type = Null;Explod
triggerall = NumExplod(90031404)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
anim = 9999
ID = 90031407
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/R, D, L, U, R, D, L, U: 2nd Up]
type = Null;Explod
triggerall = NumExplod(90031404) || NumExplod(90031407)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "up" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "down" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
anim = 9999
ID = 90031418
removetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;======================<720/RIGHT, UP, LEFT, DOWN, RIGHT, UP, LEFT, DOWN>======================
[State -1, 720/R, U, L, D, R, U, L, D: 1st Down]
type = Null;Explod
triggerall = NumExplod(90011504) || NumExplod(90011501)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "fwd"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down" && Helper(90000005),Command != "fwd"
anim = 9999
ID = 90031505
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/R, D, L, U, R, D, L, U: Down-Right]
type = Null;Explod
triggerall = NumExplod(90031505)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
anim = 9999
ID = 90031503
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/R, U, L, D, R, U, L, D: 2nd Right]
type = Null;Explod
triggerall = NumExplod(90031505) || NumExplod(90031503)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90031506
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/R, U, L, D, R, U, L, D: 2nd Up-Right]
type = Null;Explod
triggerall = NumExplod(90031506)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
anim = 9999
ID = 90031509
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/R, U, L, D, R, U, L, D: 2nd Up]
type = Null;Explod
triggerall = NumExplod(90031506) || NumExplod(90031509)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "up" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "down" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
anim = 9999
ID = 90031508
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/R, U, L, D, R, U, L, D: 2nd Up-Left]
type = Null;Explod
triggerall = NumExplod(90031508)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
anim = 9999
ID = 90031507
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/R, U, L, D, R, U, L, D: 2nd Left]
type = Null;Explod
triggerall = NumExplod(90031508) || NumExplod(90031507)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90031504
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/R, U, L, D, R, U, L, D: 2nd Down-Left]
type = Null;Explod
triggerall = NumExplod(90031504)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
anim = 9999
ID = 90031501
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/R, U, L, D, R, U, L, D: 2nd Down]
type = Null;Explod
triggerall = NumExplod(90031504) || NumExplod(90031501)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "fwd"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down" && Helper(90000005),Command != "fwd"
anim = 9999
ID = 90031502
removetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;======================<720/UP, RIGHT, DOWN, LEFT, UP, RIGHT, DOWN, LEFT>======================
[State -1, 720/U, R, D, L, U, R, D, L: 1st Left]
type = Null;Explod
triggerall = NumExplod(90011602) || NumExplod(90011601)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90031604
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/U, R, D, L, U, R, D, L: Up-Left]
type = Null;Explod
triggerall = NumExplod(90031604)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
anim = 9999
ID = 90031607
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/U, R, D, L, U, R, D, L: 2nd Up]
type = Null;Explod
triggerall = NumExplod(90031604) || NumExplod(90031607)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "up" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "down" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
anim = 9999
ID = 90031608
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/U, R, D, L, U, R, D, L: 2nd Up-Right]
type = Null;Explod
triggerall = NumExplod(90031608)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
anim = 9999
ID = 90031609
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/U, R, D, L, U, R, D, L: 2nd Right]
type = Null;Explod
triggerall = NumExplod(90031608) || NumExplod(90031609)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90031606
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/U, R, D, L, U, R, D, L: 2nd Down-Right]
type = Null;Explod
triggerall = NumExplod(90031606)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
anim = 9999
ID = 90031603
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/U, R, D, L, U, R, D, L: 2nd Down]
type = Null;Explod
triggerall = NumExplod(90031606) || NumExplod(90031603)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "fwd"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down" && Helper(90000005),Command != "fwd"
anim = 9999
ID = 90031602
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/U, R, D, L, U, R, D, L: 2nd Down-Left]
type = Null;Explod
triggerall = NumExplod(90031602)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
anim = 9999
ID = 90031601
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/U, R, D, L, U, R, D, L: 2nd Left]
type = Null;Explod
triggerall = NumExplod(90031602) || NumExplod(90031601)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90031614
removetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;=================================<720/UP, LEFT, DOWN, RIGHT>==================================
[State -1, 720/U, L, D, R, U, L, D, R: 1st Right]
type = Null;Explod
triggerall = NumExplod(90011702) || NumExplod(90011703)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90031706
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/U, L, D, R, U, L, D, R: Up-Right]
type = Null;Explod
triggerall = NumExplod(90031706)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
anim = 9999
ID = 90031709
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/U, L, D, R, U, L, D, R: 2nd Up]
type = Null;Explod
triggerall = NumExplod(90031706) || NumExplod(90031709)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "up" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "down" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
anim = 9999
ID = 90031708
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/U, L, D, R, U, L, D, R: 2nd Up-Left]
type = Null;Explod
triggerall = NumExplod(90031708)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
anim = 9999
ID = 90031707
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/U, L, D, R, U, L, D, R: 2nd Left]
type = Null;Explod
triggerall = NumExplod(90031708) || NumExplod(90031707)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90031704
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/U, L, D, R, U, L, D, R: 2nd Down-Left]
type = Null;Explod
triggerall = NumExplod(90031704)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
anim = 9999
ID = 90031701
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/U, L, D, R, U, L, D, R: 2nd Down]
type = Null;Explod
triggerall = NumExplod(90031704) || NumExplod(90031701)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "fwd"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down" && Helper(90000005),Command != "fwd"
anim = 9999
ID = 90031702
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/U, L, D, R, U, L, D, R: 2nd Down-Right]
type = Null;Explod
triggerall = NumExplod(90031702)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
anim = 9999
ID = 90031703
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, 720/U, L, D, R, U, L, D, R: 2nd Right]
type = Null;Explod
triggerall = NumExplod(90031702) || NumExplod(90031703)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90031716
removetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;==============================================================================================
;===================<HALF CIRCLE FORWARD, BACK/HALF CIRCLE BACK, FORWARD>======================
;==============================================================================================

;==============================================================================================
;This command is used generally by SNK for characters with command throws; much like SNK half-circle
;commands, a player can skip the diagonal inputs and still complete the move.
;==============================================================================================

;====================<RIGHT, DOWN-RIGHT, DOWN, DOWN-LEFT, LEFT, RIGHT>=========================
[State -1, R, DR, D, DL, L, R: Press 1st Right]
type = Null;Explod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90012006
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, R, DR, D, DL, L, R: Release 1st Right]
type = Null;Explod
triggerall = NumExplod(90000006)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command != "fwd" && Helper(90000005),Command != "holdfwd"
trigger2 = Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd"
trigger2 = Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown" || Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback" || Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
anim = 9999
ID = 90012056
removetime = 5
pausemovetime = 5
supermovetime = 5
ignorehitpause = 1

[State -1, R, DR, D, DL, L, R: Down-Right]
type = Null;Explod
triggerall = NumExplod(90012006) || NumExplod(90012056)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
anim = 9999
ID = 90012003
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, R, DR, D, DL, L, R: Down]
type = Null;Explod
triggerall = NumExplod(90012003) || NumExplod(90012006) || NumExplod(90012056)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "fwd"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down" && Helper(90000005),Command != "fwd"
anim = 9999
ID = 90012002
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, R, DR, D, DL, L, R: Down-Left]
type = Null;Explod
triggerall = NumExplod(90012002)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
anim = 9999
ID = 90012001
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, R, DR, D, DL, L, R: Left]
type = Null;Explod
triggerall = NumExplod(90012001) || NumExplod(90012002)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90012004
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, R, DR, D, DL, L, R: 2nd Right]
type = Null;Explod
triggerall = NumExplod(90012004)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90012016
removetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;=====================<LEFT, DOWN-LEFT, DOWN, DOWN-RIGHT, RIGHT, LEFT>=========================
[State -1, L, DL, D, DR, R, L: Press 1st Left]
type = Null;Explod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90012104
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, L, DL, D, DR, R, L: Release 1st Left]
type = Null;Explod
triggerall = NumExplod(90000004)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command != "back" && Helper(90000005),Command != "holdback"
trigger2 = Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback"
trigger2 = Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown" || Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd" || Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
anim = 9999
ID = 90012154
removetime = 5
pausemovetime = 5
supermovetime = 5
ignorehitpause = 1

[State -1, L, DL, D, DR, R, L: Down-Left]
type = Null;Explod
triggerall = NumExplod(90012104) || NumExplod(90012154)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
anim = 9999
ID = 90012101
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, L, DL, D, DR, R, L: Down]
type = Null;Explod
triggerall = NumExplod(90012101) || NumExplod(90012104) || NumExplod(90012154)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "fwd"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down" && Helper(90000005),Command != "fwd"
anim = 9999
ID = 90012102
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, L, DL, D, DR, R, L: Down-Right]
type = Null;Explod
triggerall = NumExplod(90012102)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
anim = 9999
ID = 90012103
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, L, DL, D, DR, R, L: Right]
type = Null;Explod
triggerall = NumExplod(90012103) || NumExplod(90012102)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90012106
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, L, DL, D, DR, R, L: 2nd Left]
type = Null;Explod
triggerall = NumExplod(90012106)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90012114
removetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;==============================================================================================
;========================<FORWARD, BACK, FORWARD/BACK, FORWARD, BACK>==========================
;==============================================================================================

;==============================================================================================
;The Zanretsuken motion, used mostly in Art of Fighting characters. Despite looking somewhat similar
;to a dash command, the first forward/back input can be a release motion, and there's no need to return
;the stick to neutral.
;==============================================================================================

;====================================<RIGHT, LEFT, RIGHT>======================================
[State -1, R, L, R: Press 1st Right]
type = Explod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90012206
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, R, L, R: Release 1st Right]
type = Explod
triggerall = NumExplod(90000006)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command != "fwd" && Helper(90000005),Command != "holdfwd"
trigger2 = Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd"
trigger2 = Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown" || Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback" || Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
anim = 9999
ID = 90012256
removetime = 5
pausemovetime = 5
supermovetime = 5
ignorehitpause = 1

[State -1, R, L, R: Left]
type = Explod
triggerall = NumExplod(90012206) || NumExplod(90012256)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90012204
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, R, L, R: 2nd Right]
type = Explod
triggerall = NumExplod(90012204)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90012216
removetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;====================================<LEFT, RIGHT, LEFT>=======================================
[State -1, L, R, L: Press 1st Left]
type = Explod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90012304
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, L, R, L: Release 1st Left]
type = Explod
triggerall = NumExplod(90000004)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command != "back" && Helper(90000005),Command != "holdback"
trigger2 = Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback"
trigger2 = Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown" || Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd" || Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
anim = 9999
ID = 90012354
removetime = 5
pausemovetime = 5
supermovetime = 5
ignorehitpause = 1

[State -1, L, R, L: Right]
type = Explod
triggerall = NumExplod(90012304) || NumExplod(90012354)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90012306
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, L, R, L: 2nd Left]
type = Explod
triggerall = NumExplod(90012306)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90012314
removetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;==============================================================================================
;==================================<(SPECIAL) DOWN, DOWN >=====================================
;==============================================================================================

;==============================================================================================
;This explod is for the special move variant of the D, D motion; the only difference between this
;and the one above is that this has a removetime of 10, like every other special move, since it's
;designed to be used for special moves (as opposed to the earlier D, D command, which was for air
;dashing).
;==============================================================================================

[State -1, (special) D, D: 2nd Down]
type = Explod
triggerall = NumExplod(90000555) && NumExplod(90000552)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" || Helper(90000005),Command = "dfwd" || Helper(90000005),Command = "dback"
trigger1 = Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" || Helper(90000005),Command = "ufwd" || Helper(90000005),Command = "uback"
trigger2 = Helper(90000005),Command != "down"
anim = 9999
ID = 90012602
removetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;==============================================================================================
;====================================<DOWN, DOWN, DOWN>========================================
;==============================================================================================

;==============================================================================================
;And this is just extending the principle futher, to a third down input! This is typically used
;as a super command.
;==============================================================================================

[State -1, D, D, D: 2nd Neutral]
type = Explod
triggerall = (NumExplod(90000001) || NumExplod(90000002) || NumExplod(90000003)) && NumExplod(90012602)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command != "down" && Helper(90000005),Command != "holddown"
trigger1 = Helper(90000005),Command != "fwd" && Helper(90000005),Command != "holdfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "holdback" && Helper(90000005),Command != "up" && Helper(90000005),Command != "holdup"
anim = 9999
ID = 90032605
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, Remove D, D, D: 2nd Neutral]
type = RemoveExplod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = NumExplod(90000004) || NumExplod(90000007) || NumExplod(90000008) || NumExplod(90000009) || NumExplod(90000006)
trigger2 = !NumExplod(90012602)
ID = 90032605
ignorehitpause = 1

[State -1, D, D, D: 3rd Down]
type = Explod
triggerall = NumExplod(90032605) && NumExplod(90012602)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "down" || Helper(90000005),Command = "dfwd" || Helper(90000005),Command = "dback"
trigger1 = Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" || Helper(90000005),Command = "ufwd" || Helper(90000005),Command = "uback"
trigger2 = Helper(90000005),Command != "down"
anim = 9999
ID = 90032602
removetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;==============================================================================================
;===================<FORWARD, HALF CIRCLE FORWARD/BACK, HALF CIRCLE BACK>======================
;==============================================================================================

;==============================================================================================
;A super motion used mostly by SNK; uses the modified SNK half-circle rules defined earlier.
;==============================================================================================

;=====================<RIGHT, LEFT, DOWN-LEFT, DOWN, DOWN-RIGHT, RIGHT>========================
[State -1, R, L, DL, D, DR, R: Press 1st Right]
type = Null;Explod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90032006
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, R, L, DL, D, DR, R: Release 1st Right]
type = Null;Explod
triggerall = NumExplod(90000006)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command != "fwd" && Helper(90000005),Command != "holdfwd"
trigger2 = Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd"
trigger2 = Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown" || Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback" || Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
anim = 9999
ID = 90032056
removetime = 5
pausemovetime = 5
supermovetime = 5
ignorehitpause = 1

[State -1, R, L, DL, D, DR, R: Left]
type = Null;Explod
triggerall = NumExplod(90032006) || NumExplod(90032056)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90032004
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, R, L, DL, D, DR, R: Down-Left]
type = Null;Explod
triggerall = NumExplod(90032004)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
anim = 9999
ID = 90032001
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, R, L, DL, D, DR, R: Down]
type = Null;Explod
triggerall = NumExplod(90032001) || NumExplod(90032004)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "fwd"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down" && Helper(90000005),Command != "fwd"
anim = 9999
ID = 90032002
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, R, L, DL, D, DR, R: Down-Right]
type = Null;Explod
triggerall = NumExplod(90032002)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
anim = 9999
ID = 90032003
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, R, L, DL, D, DR, R: 2nd Right]
type = Null;Explod
triggerall = NumExplod(90032003) || NumExplod(90032002)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90032016
removetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;==================<LEFT, RIGHT, DOWN-RIGHT, DOWN, DOWN-LEFT, LEFT>======================
[State -1, L, R, DR, D, DL, L: Press 1st Left]
type = Null;Explod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90032104
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, L, R, DR, D, DL, L: 1st Left]
type = Null;Explod
triggerall = NumExplod(90000004)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command != "back" && Helper(90000005),Command != "holdback"
trigger2 = Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback"
trigger2 = Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown" || Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd" || Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
anim = 9999
ID = 90032154
removetime = 5
pausemovetime = 5
supermovetime = 5
ignorehitpause = 1

[State -1, L, R, DR, D, DL, L: Right]
type = Null;Explod
triggerall = NumExplod(90032104) || NumExplod(90032154)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "fwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90032106
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, L, R, DR, D, DL, L: Down-Right]
type = Null;Explod
triggerall = NumExplod(90032106)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dfwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "ufwd" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down"
anim = 9999
ID = 90032103
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, L, R, DR, D, DL, L: Down]
type = Null;Explod
triggerall = NumExplod(90032103) || NumExplod(90032106)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "down" && Helper(90000005),Command != "back" && Helper(90000005),Command != "up" && Helper(90000005),Command != "fwd"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" && Helper(90000005),Command != "back" && Helper(90000005),Command != "down" && Helper(90000005),Command != "fwd"
anim = 9999
ID = 90032102
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, L, R, DR, D, DL, L: Down-Left]
type = Null;Explod
triggerall = NumExplod(90032102)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command = "dback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up"
trigger2 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "uback" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "down"
anim = 9999
ID = 90032101
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, L, R, DR, D, DL, L: 2nd Left]
type = Null;Explod
triggerall = NumExplod(90032101) || NumExplod(90032102)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "back" && Helper(90000005),Command != "fwd" && Helper(90000005),Command != "up" && Helper(90000005),Command != "down"
anim = 9999
ID = 90032114
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1



;==============================================================================================
;===========================<SHUN GOKU SATSU/x, x, FORWARD, a, z>==============================
;==============================================================================================

;==============================================================================================
;This move to demonstrates how button press commands work: note that we use unique button press explods
;here because we need to keep track of what order the buttons have been pressed in, and because
;unlike the regular button inputs, which only stay active for a fairly brief period of time, the
;button inputs for the Shun Goku Satsu motion stay active for the same period of time that all other
;directional commands do.
;==============================================================================================

;This is the 2nd x input for this move, but it goes above the 1st x input because otherwise, a single
;press of x would activate both explods! Placing it above the 1st means that x must be input twice, each
;on separate ticks.
[State -1, x, x, F, a, z: 2nd x]
type = Explod
triggerall = NumExplod(94000200)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "x"
anim = 9999
ID = 94000201
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, x, x, F, a, z: 1st x]
type = Explod
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "x"
anim = 9999
ID = 94000200
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1


;This forward input is a little bit tricky and weird. We have it patterned after SFA and other CPS2 games
;here, where it behaves a little differently compared to how most games (including SFA itself) operate
;for moves done in or inputted while in the air (see http://mugenguild.com/forum/msg.2366955 for a discussion
;about how most games operate). In CPS2 games, if you jump over an opponent while inputting this command,
;"forward" won't have flipped directions until you land. This is in contrast to how the move behaves in SFIII
;and elsewhere. Remove the "StateType != A" in the triggers below to have it work like SFIII/most other games.

;An additional item of interest here is that directional inputs in (most) games's command supers accept diagonals
;in place of cardinal directional inputs; i.e., "LP, LP, DF, LK, HP" would still activate an SGS in SFA2. Weirdly
;enough, though diagonals are allowed in SFA2, SFIII, and the Darkstalkers series, SFA3 only allows a cardinal input!
;SNK games also only allow cardinal inputs. We however have opted to follow Capcom's (usual) method and allow diagonals.
[State -1, x, x, F, a, z: Forward]
type = Explod
triggerall = NumExplod(94000201)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Cond(P2Dist X < 0, Facing = -1, Facing = 1)
trigger1 = (Helper(90000005),Command = "fwd" || Helper(90000005),Command = "dfwd" || Helper(90000005),Command = "ufwd") && Helper(90000005),Command != "back"
trigger2 = Cond(P2Dist X < 0, Facing = 1,Facing = -1)
trigger2 = (Helper(90000005),Command = "back" || Helper(90000005),Command = "dback" || Helper(90000005),Command = "uback") && Helper(90000005),Command != "fwd"
anim = 9999
ID = 94000006
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, x, x, F, a, z: a]
type = Explod
triggerall = NumExplod(94000006)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "a"
anim = 9999
ID = 94000230
removetime = 10
pausemovetime = 10
supermovetime = 10
ignorehitpause = 1

[State -1, x, x, F, a, z: z]
type = Explod
triggerall = NumExplod(94000230)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command = "z"
anim = 9999
ID = 94000220
removetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
pausemovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
supermovetime = 10+Cond(HitPauseTime,HitPauseTime-1,0)
ignorehitpause = 1



;==============================================================================================
;===============================<REMOVE DIRECTIONAL DETECTORS>=================================
;==============================================================================================

;==============================================================================================
;This block of RemoveExplods gets rid of any active release detector explods; if the direction in
;question isn't currently being input, or if the direction is being input but other directions are
;also being input, then the detector explod is removed, having served its purpose as a detector.
;This must go at the very bottom of the entire EXPLODsive Buffering system code!
;==============================================================================================

[State -1, Remove Down Detector]
type = RemoveExplod
triggerall = NumExplod(90000002)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command != "down" && Helper(90000005),Command != "holddown"
trigger2 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown"
trigger2 = Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd" || Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback" || Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
trigger3 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger3 = Helper(90000005),Command != "up" && Helper(90000005),Command != "holdup"
trigger4 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger4 = Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
trigger4 = Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd" || Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback" || Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown"
id = 90000002
ignorehitpause = 1

[State -1, Remove Down-Right Detector]
type = RemoveExplod
triggerall = NumExplod(90000003)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = (Helper(90000005),Command != "down" && Helper(90000005),Command != "holddown") || (Helper(90000005),Command != "fwd" && Helper(90000005),Command != "holdfwd")
trigger2 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown"
trigger2 = Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd"
trigger2 = Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback" || Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
trigger3 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger3 = (Helper(90000005),Command != "up" && Helper(90000005),Command != "holdup") || (Helper(90000005),Command != "fwd" && Helper(90000005),Command != "holdfwd")
trigger4 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger4 = Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
trigger4 = Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd"
trigger4 = Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback" || Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown"
id = 90000003
ignorehitpause = 1

[State -1, Remove Right Detector]
type = RemoveExplod
triggerall = NumExplod(90000006)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command != "fwd" && Helper(90000005),Command != "holdfwd"
trigger2 = Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd"
trigger2 = Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown" || Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback" || Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
id = 90000006
ignorehitpause = 1

[State -1, Remove Up-Right Detector]
type = RemoveExplod
triggerall = NumExplod(90000009)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = (Helper(90000005),Command != "up" && Helper(90000005),Command != "holdup") || (Helper(90000005),Command != "fwd" && Helper(90000005),Command != "holdfwd")
trigger2 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
trigger2 = Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd"
trigger2 = Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback" || Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown"
trigger3 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger3 = (Helper(90000005),Command != "down" && Helper(90000005),Command != "holddown") || (Helper(90000005),Command != "fwd" && Helper(90000005),Command != "holdfwd")
trigger4 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger4 = Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown"
trigger4 = Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd"
trigger4 = Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback" || Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
id = 90000009
ignorehitpause = 1

[State -1, Remove Up Detector]
type = RemoveExplod
triggerall = NumExplod(90000008)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = Helper(90000005),Command != "up" && Helper(90000005),Command != "holdup"
trigger2 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
trigger2 = Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd" || Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback" || Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown"
trigger3 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger3 = Helper(90000005),Command != "down" && Helper(90000005),Command != "holddown"
trigger4 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger4 = Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown"
trigger4 = Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd" || Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback" || Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
id = 90000008
ignorehitpause = 1

[State -1, Remove Up-Left Detector]
type = RemoveExplod
triggerall = NumExplod(90000007)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = (Helper(90000005),Command != "up" && Helper(90000005),Command != "holdup") || (Helper(90000005),Command != "back" && Helper(90000005),Command != "holdback")
trigger2 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
trigger2 = Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback"
trigger2 = Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd" || Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown"
trigger3 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger3 = (Helper(90000005),Command != "down" && Helper(90000005),Command != "holddown") || (Helper(90000005),Command != "back" && Helper(90000005),Command != "holdback")
trigger4 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger4 = Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown"
trigger4 = Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback"
trigger4 = Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd" || Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
id = 90000007
ignorehitpause = 1

[State -1, Remove Left Detector]
type = RemoveExplod
triggerall = NumExplod(90000004)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command != "back" && Helper(90000005),Command != "holdback"
trigger2 = Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback"
trigger2 = Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown" || Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd" || Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
id = 90000004
ignorehitpause = 1

[State -1, Remove Down-Left Detector]
type = RemoveExplod
triggerall = NumExplod(90000001)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger1 = (Helper(90000005),Command != "down" && Helper(90000005),Command != "holddown") || (Helper(90000005),Command != "back" && Helper(90000005),Command != "holdback")
trigger2 = !Enemy,NumExplod(92828282) && !Enemy,NumExplod(92468246)
trigger2 = Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown"
trigger2 = Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback"
trigger2 = Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd" || Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
trigger3 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger3 = (Helper(90000005),Command != "up" && Helper(90000005),Command != "holdup") || (Helper(90000005),Command != "back" && Helper(90000005),Command != "holdback")
trigger4 = Enemy,NumExplod(92828282) || Enemy,NumExplod(92468246)
trigger4 = Helper(90000005),Command = "up" || Helper(90000005),Command = "holdup"
trigger4 = Helper(90000005),Command = "back" || Helper(90000005),Command = "holdback"
trigger4 = Helper(90000005),Command = "fwd" || Helper(90000005),Command = "holdfwd" || Helper(90000005),Command = "down" || Helper(90000005),Command = "holddown"
id = 90000001
ignorehitpause = 1



;==============================================================================================
;==============================<REMOVE RELEASE BUTTON DETECTORS>===============================
;==============================================================================================

;==============================================================================================
;Same principle here as with the directional release detector explods.
;==============================================================================================

[State -1, Remove x Detector]
type = RemoveExplod
triggerall = NumExplod(90000201)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command != "x" && Helper(90000005),Command != "holdx"
ID = 90000201
ignorehitpause = 1

[State -1, Remove y Detector]
type = RemoveExplod
triggerall = NumExplod(90000211)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command != "y" && Helper(90000005),Command != "holdy"
ID = 90000211
ignorehitpause = 1

[State -1, Remove z Detector]
type = RemoveExplod
triggerall = NumExplod(90000221)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command != "z" && Helper(90000005),Command != "holdz"
ID = 90000221
ignorehitpause = 1

[State -1, Remove a Detector]
type = RemoveExplod
triggerall = NumExplod(90000231)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command != "a" && Helper(90000005),Command != "holda"
ID = 90000231
ignorehitpause = 1

[State -1, Remove b Detector]
type = RemoveExplod
triggerall = NumExplod(90000241)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command != "b" && Helper(90000005),Command != "holdb"
ID = 90000241
ignorehitpause = 1

[State -1, Remove c Detector]
type = RemoveExplod
triggerall = NumExplod(90000251)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command != "c" && Helper(90000005),Command != "holdc"
ID = 90000251
ignorehitpause = 1

[State -1, Remove start Detector]
type = RemoveExplod
triggerall = NumExplod(90000900)
triggerall = NumHelper(90000005) && !IsHelper && !AILevel
trigger1 = Helper(90000005),Command != "start" && Helper(90000005),Command != "holdstart"
ID = 90000900
ignorehitpause = 1


;==============================================================================================
;==========================================<GUARDING>==========================================
;==============================================================================================

;==============================================================================================
;Here, we override the MUGEN's default guard system when the character is airborne, and add our
;own triggers. This will ensure that the player can always block as long as they are holding a
;direction away from the opponent. This block of code also adds "chicken guarding", which is allowing
;the player to air guard by holding not only back, but down-back and up-back.

;It is also recommended that you also override the guard states (120, 130, 131, 132, 140, 150, 151,
;152, 154, 155) with an updated version that uses the EXPLODsive buffering system. A copy of those
;fixed states can be found here: http://network.mugenguild.com/jmorphman/resources/EXPLODsiveBuffering_GuardStates.txt
;==============================================================================================

[State -1, AssertSpecial: NoAirGuard]
type = AssertSpecial
trigger1 = P2Dist X < 0 && StateType = A
trigger1 = !AILevel
flag = NoAirGuard
ignorehitpause = 0

[State -1, Air Blocking]
type = ChangeState
triggerall = !AILevel
triggerall = InGuardDist
triggerall = StateType = A
triggerall = Ctrl
triggerall = !(StateNo = [120,155])
triggerall = !NumExplod(90000004) && !NumExplod(90000006) && !NumExplod(90000001) && !NumExplod(90000003) && !NumExplod(90000007) && !NumExplod(90000009)
trigger1 = (Cond(P2Dist X < 0,Facing = -1,Facing = 1) && NumExplod(90000004)) || (Cond(P2Dist X < 0, Facing = 1,Facing = -1) && NumExplod(90000006))
trigger2 = (Cond(P2Dist X < 0,Facing = -1,Facing = 1) && NumExplod(90000001)) || (Cond(P2Dist X < 0, Facing = 1,Facing = -1) && NumExplod(90000003))
trigger3 = (Cond(P2Dist X < 0,Facing = -1,Facing = 1) && NumExplod(90000007)) || (Cond(P2Dist X < 0, Facing = 1,Facing = -1) && NumExplod(90000009))
value = 120

;These three ChangeStates are only in use when the character has landed from a jump after switching
;sides, to get around a MUGEN bug where a character's directions don't switch until a tick has passed,
;after they've landed from a jump and switched sides. Otherwise, MUGEN's default guard behavior works
;well enough!
[State -1, AssertSpecial: No StandGuard and NoCrouchGuard]
type = AssertSpecial
triggerall = !AILevel
trigger1 = P2Dist X < 0 && StateType != A
trigger2 = Enemy,NumExplod(94646464) || Enemy,NumExplod(92468246)
trigger3 = !NumExplod(90000004) && !NumExplod(90000006) && !NumExplod(90000001) && !NumExplod(90000003) && !NumExplod(90000007) && !NumExplod(90000009)
flag = NoStandGuard
flag2 = NoCrouchGuard
ignorehitpause = 0

[State -1, Stand Blocking]
type = ChangeState
triggerall = !AILevel
triggerall = InGuardDist
triggerall = (P2Dist X < 0 && StateType != A) || Enemy,NumExplod(94646464) || Enemy,NumExplod(92468246)
triggerall = StateType = S
triggerall = Ctrl
trigger1 = (Cond(P2Dist X < 0,Facing = -1,Facing = 1) && NumExplod(90000004)) || (Cond(P2Dist X < 0, Facing = 1,Facing = -1) && NumExplod(90000006))
value = 120

[State -1, Crouch Blocking]
type = ChangeState
triggerall = !AILevel
triggerall = InGuardDist
triggerall = (P2Dist X < 0 && StateType != A) || Enemy,NumExplod(94646464) || Enemy,NumExplod(92468246)
triggerall = StateType = C
triggerall = Ctrl
trigger1 = (Cond(P2Dist X < 0,Facing = -1,Facing = 1) && NumExplod(90000001)) || (Cond(P2Dist X < 0, Facing = 1,Facing = -1) && NumExplod(90000003))
value = 120



;==============================================================================================
;==============================================================================================
;=============================<End of EXPLODsive Buffering System>=============================
;==============================================================================================
;==============================================================================================

;---------------------------------------------------------------------------
;Normal Cancel Check
[State -1, VarSet]
type = VarSet
trigger1 = 1
var(17) = 0

[State -1, VarSet]
type = VarSet
trigger1 = StateNo = 100 && AnimElemTime(4) > 0
trigger2 = StateNo = 200 || StateNo = 220 || Anim = 231 || Anim = 241 || (StateNo = [400,440])
trigger2 = AnimElemTime(4) < 0 && MoveContact
trigger3 = Anim = 210 || Anim = 240 || Anim = 251
trigger3 = AnimElemTime(5) < 0 && MoveContact
trigger4 = NumTarget(451)
trigger4 = StateNo = 450
trigger4 = AnimElemTime(9) > 0 && AnimElemTime(11) < 0
trigger5 = TeamMode != Simul
trigger5 = StateNo = 900
var(17) = 1

[State -1, VarSet]
type = VarSet
trigger1 = (StateNo = 600 || StateNo = 610 || StateNo = 620 || Anim = 630 || StateNo = 650) && AnimElemTime(3) >= 0 && MoveContact
trigger2 = (Anim = 631 || StateNo = 640) && AnimElemTime(2) >= 0 && MoveContact
var(17) = 2

[State -1, VarSet]
type = VarSet
trigger1 = 1
var(18) = 0

[State -1, VarSet]
type = VarSet
trigger1 = Var(17) = 1
trigger2 = Anim = 223
trigger2 = AnimElemTime(4) < 0 && MoveContact
var(18) = 1

;---------------------------------------------------------------------------
;Special Cancel Check
[State -1, VarSet]
type = VarSet
trigger1 = 1
var(19) = 0

[State -1, VarSet]
type = VarSet
triggerall = !AILevel
trigger1 = Var(17) = 1
trigger2 = StateNo = 1000 && NumHelper(6000)
trigger3 = StateNo = 1010 && NumHelper(6010)
trigger4 = StateNo = 1200 && NumHelper(6040)
trigger5 = StateNo = 1005 && NumHelper(6001)
trigger6 = StateNo = 1006 && NumHelper(6002)
trigger7 = StateNo = 1007 && NumHelper(6042)
trigger8 = StateNo = 1011 && NumHelper(6017)
trigger9 = StateNo = 1012 && NumHelper(6018)
var(19) = 1

[State -1, VarSet]
type = VarSet
triggerall = AILevel
triggerall = NumEnemy
trigger1 = Var(17) = 1
trigger2 = StateNo = 1000 && NumHelper(6000)
trigger2 = Helper(6000),Var(16)
trigger2 = EnemyNear,MoveType = H
trigger3 = StateNo = 1000 && NumHelper(6000)
trigger3 = EnemyNear,MoveType = H
trigger3 = EnemyNear,StateNo = [5000,5099]
trigger4 = StateNo = 1005 && NumHelper(6001)
trigger4 = Helper(6001),Var(16)
trigger4 = EnemyNear,MoveType = H
trigger5 = StateNo = 1005 && NumHelper(6001)
trigger5 = EnemyNear,MoveType = H
trigger5 = EnemyNear,StateNo = [5000,5099]
trigger6 = StateNo = 1006 && NumHelper(6002)
trigger6 = Helper(6002),Var(16)
trigger6 = EnemyNear,MoveType = H
trigger7 = StateNo = 1006 && NumHelper(6002)
trigger7 = EnemyNear,MoveType = H
trigger7 = EnemyNear,StateNo = [5000,5099]
trigger8 = StateNo = 1010 && NumHelper(6010)
trigger8 = Helper(6010),Var(16)
trigger8 = EnemyNear,MoveType = H
trigger9 = StateNo = 1010 && NumHelper(6010)
trigger9 = EnemyNear,MoveType = H
trigger9 = EnemyNear,StateNo = [5000,5099]
trigger10 = StateNo = 1011 && NumHelper(6017)
trigger10 = Helper(6017),Var(16)
trigger10 = EnemyNear,MoveType = H
trigger11 = StateNo = 1011 && NumHelper(6017)
trigger11 = EnemyNear,MoveType = H
trigger11 = EnemyNear,StateNo = [5000,5099]
trigger12 = StateNo = 1012 && NumHelper(6018)
trigger12 = Helper(6018),Var(16)
trigger12 = EnemyNear,MoveType = H
trigger13 = StateNo = 1012 && NumHelper(6018)
trigger13 = EnemyNear,MoveType = H
trigger13 = EnemyNear,StateNo = [5000,5099]
trigger14 = StateNo = 1200 && NumHelper(6040)
trigger14 = Helper(6040),Var(16)
trigger14 = EnemyNear,MoveType = H
trigger15 = StateNo = 1007 && NumHelper(6042)
trigger15 = Helper(6042),Var(16)
trigger15 = EnemyNear,MoveType = H
trigger16 = StateNo = 1007 && NumHelper(6042)
trigger16 = EnemyNear,MoveType = H
trigger16 = EnemyNear,StateNo = [5000,5099]
trigger17 = StateNo = 1200 && NumHelper(6040)
trigger17 = EnemyNear,MoveType = H
trigger17 = EnemyNear,StateNo = [5000,5099]
trigger18 = StateNo = 1210 && NumHelper(6050)
trigger18 = Helper(6050),Var(16)
trigger18 = EnemyNear,MoveType = H
trigger19 = StateNo = 1210 && NumHelper(6050)
trigger19 = EnemyNear,MoveType = H
trigger19 = EnemyNear,StateNo = [5000,5099]
var(19) = 1

[State -1, VarSet]
type = VarSet
triggerall = !AILevel
trigger1 = Var(17) = 2
trigger2 = StateNo = 1500 && AnimElemTime(5) > 0
trigger3 = StateNo = 1510 && NumHelper(6065)
var(19) = 2

[State -1, VarSet]
type = VarSet
triggerall = AILevel
triggerall = NumEnemy
trigger1 = Var(17) = 2
trigger2 = StateNo = 1500 && AnimElemTime(5) > 0 && NumHelper(6060)
trigger2 = Helper(6060),Var(16)
trigger2 = EnemyNear,MoveType = H
trigger2 = EnemyNear,StateNo = [5000,5099]
trigger3 = StateNo = 1510 && AnimElemTime(5) > 0 && NumHelper(6065)
trigger3 = Helper(6065),Var(16)
trigger3 = EnemyNear,MoveType = H
trigger3 = EnemyNear,StateNo = [5000,5099]
var(19) = 2

;---------------------------------------------------------------------------
;Crossfire Flash
[State -1, Crossfire Flash]
type = ChangeState
value = 4200
triggerall = !AILevel
triggerall = P2Life > 0
triggerall = (Cond(P2Dist X < 0,Facing = -1,Facing = 1) && NumExplod(90030016)) || (Cond(P2Dist X < 0,Facing = 1,Facing = -1) && NumExplod(90030114))
triggerall = (NumExplod(90000230) && NumExplod(90000240)) || (NumExplod(90000230) && NumExplod(90000250)) || (NumExplod(90000240) && NumExplod(90000250))
triggerall = RoundState = 2 && StateType = A
triggerall = Power >= 4000
triggerall = StateNo != 4200
trigger1 = Ctrl
trigger2 = Var(19) = 2

;---------------------------------------------------------------------------
;Sky Fissure
[State -1, Sky Fissure]
type = ChangeState
value = 3400
triggerall = !AILevel
triggerall = P2Life > 0
triggerall = (Cond(P2Dist X < 0,Facing = -1,Facing = 1) && NumExplod(90030016)) || (Cond(P2Dist X < 0,Facing = 1,Facing = -1) && NumExplod(90030114))
triggerall = NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250)
triggerall = RoundState = 2 && StateType = A
triggerall = Power >= 1000
triggerall = StateNo != 3400
trigger1 = Ctrl
trigger2 = Var(19) = 2

;---------------------------------------------------------------------------
;Buster Saw
[State -1, Buster Saw]
type = ChangeState
value = 3300
triggerall = !AILevel
triggerall = P2Life > 0
triggerall = (Cond(P2Dist X < 0,Facing = -1,Facing = 1) && NumExplod(90030114)) || (Cond(P2Dist X < 0,Facing = 1,Facing = -1) && NumExplod(90030016))
triggerall = NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250)
triggerall = RoundState = 2 && StateType = A
triggerall = Power >= 1000
triggerall = StateNo != 3300
trigger1 = Ctrl
trigger2 = Var(19) = 2

;---------------------------------------------------------------------------
;Total Wipeout
[State -1, Total Wipeout]
type = ChangeState
value = 3200
triggerall = !AILevel
triggerall = P2Life > 0
triggerall = (Cond(P2Dist X < 0,Facing = -1,Facing = 1) && NumExplod(90030616)) || (Cond(P2Dist X < 0,Facing = 1,Facing = -1) && NumExplod(90030714))
triggerall = NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250)
triggerall = RoundState = 2 && StateType != A
triggerall = Power >= 1000
trigger1 = Ctrl
trigger2 = Var(19) = 1

;---------------------------------------------------------------------------
;Somersault Strike
[State -1, Somersault Strike]
type = ChangeState
value = 3100
triggerall = !AILevel
triggerall = P2Life > 0
triggerall = (Cond(P2Dist X < 0,Facing = -1,Facing = 1) && NumExplod(90030016)) || (Cond(P2Dist X < 0,Facing = 1,Facing = -1) && NumExplod(90030114))
triggerall = NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250)
triggerall = RoundState = 2 && StateType != A
triggerall = Power >= 1000
trigger1 = Ctrl
trigger2 = Var(19) = 1

;---------------------------------------------------------------------------
;Sonic Hurricane
[State -1, Sonic Hurricane]
type = ChangeState
value = 3000
triggerall = !AILevel
triggerall = P2Life > 0
triggerall = (Cond(P2Dist X < 0,Facing = -1,Facing = 1) && NumExplod(90030616)) || (Cond(P2Dist X < 0,Facing = 1,Facing = -1) && NumExplod(90030714))
triggerall = NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)
triggerall = RoundState = 2 && StateType != A
triggerall = !NumHelper(6020)
triggerall = Power >= 1000
trigger1 = Ctrl
trigger2 = Var(19) = 1

;---------------------------------------------------------------------------
;EX Air Sonic Flash
[State -1, Air Sonic Flash]
type = ChangeState
value = 1710
triggerall = !AILevel
triggerall = P2Life > 0
triggerall = (Cond(P2Dist X < 0,Facing = -1,Facing = 1) && NumExplod(90010006)) || (Cond(P2Dist X < 0,Facing = 1,Facing = -1) && NumExplod(90010104))
triggerall = (NumExplod(90000230) && NumExplod(90000240)) || (NumExplod(90000230) && NumExplod(90000250)) || (NumExplod(90000240) && NumExplod(90000250))
triggerall = RoundState = 2 && StateType = A
triggerall = StateNo != [1700,1704]
triggerall = StateNo != [1710,1714]
triggerall = Var(1) != 6
triggerall = Power >= 500
trigger1 = Ctrl
trigger2 = Var(17) = 2

;---------------------------------------------------------------------------
;Air Sonic Flash
[State -1, Air Sonic Flash]
type = ChangeState
value = 1700
triggerall = !AILevel
triggerall = P2Life > 0
triggerall = (Cond(P2Dist X < 0,Facing = -1,Facing = 1) && NumExplod(90010006)) || (Cond(P2Dist X < 0,Facing = 1,Facing = -1) && NumExplod(90010104))
triggerall = NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250)
triggerall = RoundState = 2 && StateType = A
triggerall = StateNo != [1700,1704]
triggerall = Var(1) != 5
trigger1 = Ctrl
trigger2 = Var(17) = 2

;---------------------------------------------------------------------------
;EX Tempest Cutter
[State -1, Tempest Cutter]
type = ChangeState
value = 1650
triggerall = !AILevel
triggerall = P2Life > 0
triggerall = (Cond(P2Dist X < 0,Facing = -1,Facing = 1) && NumExplod(90010104)) || (Cond(P2Dist X < 0,Facing = 1,Facing = -1) && NumExplod(90010006))
triggerall = (NumExplod(90000200) && NumExplod(90000210)) || (NumExplod(90000200) && NumExplod(90000220)) || (NumExplod(90000210) && NumExplod(90000220))
triggerall = RoundState = 2 && StateType = A
triggerall = Power >= 500
triggerall = Pos Y <= -30
trigger1 = Ctrl
trigger2 = Var(17) = 2

;---------------------------------------------------------------------------
;Tempest Cutter
[State -1, Tempest Cutter]
type = ChangeState
value = 1600
triggerall = !AILevel
triggerall = P2Life > 0
triggerall = (Cond(P2Dist X < 0,Facing = -1,Facing = 1) && NumExplod(90010104)) || (Cond(P2Dist X < 0,Facing = 1,Facing = -1) && NumExplod(90010006))
triggerall = NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)
triggerall = RoundState = 2 && StateType = A
triggerall = Pos Y <= -30
trigger1 = Ctrl
trigger2 = Var(17) = 2

;---------------------------------------------------------------------------
;EX Buster Blade
[State -1, Buster Blade]
type = ChangeState
value = 1510
triggerall = !AILevel
triggerall = P2Life > 0
triggerall = (Cond(P2Dist X < 0,Facing = -1,Facing = 1) && NumExplod(90010104)) || (Cond(P2Dist X < 0,Facing = 1,Facing = -1) && NumExplod(90010006))
triggerall = (NumExplod(90000230) && NumExplod(90000240)) || (NumExplod(90000230) && NumExplod(90000250)) || (NumExplod(90000240) && NumExplod(90000250))
triggerall = RoundState = 2 && StateType = A
triggerall = Power >= 500
triggerall = StateNo != 1500
triggerall = Pos Y <= -30
triggerall = !NumHelper(6040)
triggerall = !NumHelper(6065)
trigger1 = Ctrl
trigger2 = Var(17) = 2

;---------------------------------------------------------------------------
;Buster Blade
[State -1, Buster Blade]
type = ChangeState
value = 1500
triggerall = !AILevel
triggerall = P2Life > 0
triggerall = (Cond(P2Dist X < 0,Facing = -1,Facing = 1) && NumExplod(90010104)) || (Cond(P2Dist X < 0,Facing = 1,Facing = -1) && NumExplod(90010006))
triggerall = NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250)
triggerall = RoundState = 2 && StateType = A
triggerall = StateNo != 1500
triggerall = Pos Y <= -30
triggerall = !NumHelper(6040)
triggerall = !NumHelper(6060)
trigger1 = Ctrl
trigger2 = Var(17) = 2

;---------------------------------------------------------------------------
;EX Moonsault Slash
[State -1, EX Moonsault Slash]
type = ChangeState
value = 1410
triggerall = !AILevel
triggerall = P2Life > 0
triggerall = (Cond(P2Dist X < 0,Facing = -1,Facing = 1) && NumExplod(90010104)) || (Cond(P2Dist X < 0,Facing = 1,Facing = -1) && NumExplod(90010006))
triggerall = (NumExplod(90000230) && NumExplod(90000240)) || (NumExplod(90000230) && NumExplod(90000250)) || (NumExplod(90000240) && NumExplod(90000250))
triggerall = RoundState = 2 && StateType != A
triggerall = Power >= 500
trigger1 = Ctrl
trigger2 = Var(18) = 1

;---------------------------------------------------------------------------
;Moonsault Slash
[State -1, Moonsault Slash]
type = ChangeState
value = 1400
triggerall = !AILevel
triggerall = P2Life > 0
triggerall = (Cond(P2Dist X < 0,Facing = -1,Facing = 1) && NumExplod(90010104)) || (Cond(P2Dist X < 0,Facing = 1,Facing = -1) && NumExplod(90010006))
triggerall = NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250)
triggerall = RoundState = 2 && StateType != A
trigger1 = Ctrl
trigger2 = Var(18) = 1

;---------------------------------------------------------------------------
;EX Sonic Flash
[State -1, EX Sonic Flash]
type = ChangeState
value = 1310
triggerall = !AILevel
triggerall = P2Life > 0
triggerall = (Cond(P2Dist X < 0,Facing = -1,Facing = 1) && NumExplod(90010006)) || (Cond(P2Dist X < 0,Facing = 1,Facing = -1) && NumExplod(90010104))
triggerall = (NumExplod(90000230) && NumExplod(90000240)) || (NumExplod(90000230) && NumExplod(90000250)) || (NumExplod(90000240) && NumExplod(90000250))
triggerall = RoundState = 2 && StateType != A
triggerall = Power >= 500
trigger1 = Ctrl
trigger2 = Var(18) = 1

;---------------------------------------------------------------------------
;Sonic Flash
[State -1, Sonic Flash]
type = ChangeState
value = 1300
triggerall = !AILevel
triggerall = P2Life > 0
triggerall = (Cond(P2Dist X < 0,Facing = -1,Facing = 1) && NumExplod(90010006)) || (Cond(P2Dist X < 0,Facing = 1,Facing = -1) && NumExplod(90010104))
triggerall = NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250)
triggerall = RoundState = 2 && StateType != A
trigger1 = Ctrl
trigger2 = Var(18) = 1

;---------------------------------------------------------------------------
;EX Sonic Blade
[State -1, EX Sonic Blade]
type = ChangeState
value = 1210
triggerall = !AILevel
triggerall = P2Life > 0
triggerall = (Cond(P2Dist X < 0,Facing = -1,Facing = 1) && NumExplod(90010104)) || (Cond(P2Dist X < 0,Facing = 1,Facing = -1) && NumExplod(90010006))
triggerall = (NumExplod(90000200) && NumExplod(90000210)) || (NumExplod(90000200) && NumExplod(90000220)) || (NumExplod(90000210) && NumExplod(90000220))
triggerall = RoundState = 2 && StateType != A
triggerall = Power >= 500
triggerall = !NumHelper(6040)
triggerall = !NumHelper(6050)
trigger1 = Ctrl
trigger2 = Var(18) = 1

;---------------------------------------------------------------------------
;Sonic Blade
[State -1, Sonic Blade]
type = ChangeState
value = 1200
triggerall = !AILevel
triggerall = P2Life > 0
triggerall = (Cond(P2Dist X < 0,Facing = -1,Facing = 1) && NumExplod(90010104)) || (Cond(P2Dist X < 0,Facing = 1,Facing = -1) && NumExplod(90010006))
triggerall = NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)
triggerall = RoundState = 2 && StateType != A
triggerall = !NumHelper(6040)
trigger1 = Ctrl
trigger2 = Var(18) = 1

;---------------------------------------------------------------------------
;Somersault Shell
[State -1, Somersault Shell]
type = ChangeState
value = 1110
triggerall = !AILevel
triggerall = P2Life > 0
triggerall = NumExplod(90010808)
triggerall = (NumExplod(90000230) && NumExplod(90000240)) || (NumExplod(90000230) && NumExplod(90000250)) || (NumExplod(90000240) && NumExplod(90000250))
triggerall = RoundState = 2 && StateType != A
triggerall = Power >= 500
triggerall = Anim != 220
trigger1 = Ctrl || StateNo = 40
trigger2 = Var(17) = 1

;---------------------------------------------------------------------------
;Somersault Kick
[State -1, Somersault Kick]
type = ChangeState
value = 1100
triggerall = !AILevel
triggerall = P2Life > 0
triggerall = NumExplod(90010808)
triggerall = NumExplod(90000230) || NumExplod(90000240) || NumExplod(90000250)
triggerall = RoundState = 2 && StateType != A
trigger1 = Ctrl || StateNo = 40
trigger2 = Var(17) = 1

;---------------------------------------------------------------------------
;Sonic Twister
[State -1, Sonic Twister]
type = ChangeState
value = 1010
triggerall = !AILevel
triggerall = P2Life > 0
triggerall = (Cond(P2Dist X < 0,Facing = -1,Facing = 1) && NumExplod(90010606)) || (Cond(P2Dist X < 0,Facing = 1,Facing = -1) && NumExplod(90010704))
triggerall = (NumExplod(90000200) && NumExplod(90000210)) || (NumExplod(90000200) && NumExplod(90000220)) || (NumExplod(90000210) && NumExplod(90000220))
triggerall = RoundState = 2 && StateType != A
triggerall = !NumHelper(6010)
triggerall = Power >= 500
trigger1 = Ctrl
trigger2 = Var(17) = 1

;---------------------------------------------------------------------------
;Sonic Boom
[State -1, Sonic Boom]
type = ChangeState
value = 1000
triggerall = !AILevel
triggerall = P2Life > 0
triggerall = (Cond(P2Dist X < 0,Facing = -1,Facing = 1) && NumExplod(90010606)) || (Cond(P2Dist X < 0,Facing = 1,Facing = -1) && NumExplod(90010704))
triggerall = NumExplod(90000200) || NumExplod(90000210) || NumExplod(90000220)
triggerall = RoundState = 2 && StateType != A
triggerall = !NumHelper(6000)
triggerall = !NumHelper(6001)
triggerall = !NumHelper(6002)
triggerall = !NumHelper(6050)
trigger1 = Ctrl
trigger2 = Var(17) = 1

;---------------------------------------------------------------------------
;Dash
[State -1, Dash]
type = ChangeState
value = 102
trigger1 = !AILevel
trigger1 = (Cond(P2Dist X < 0,Facing = -1,Facing = 1) && NumExplod(90001016)) || (Cond(P2Dist X < 0,Facing = 1,Facing = -1) && NumExplod(90001064))
trigger1 = RoundState = 2 && StateType = S && Ctrl

;---------------------------------------------------------------------------
;Back Dash
[State -1, Back Dash]
type = ChangeState
value = 105
trigger1 = !AILevel
trigger1 = (Cond(P2Dist X < 0,Facing = -1,Facing = 1) && NumExplod(90001064)) || (Cond(P2Dist X < 0,Facing = 1,Facing = -1) && NumExplod(90001016))
trigger1 = RoundState = 2 && StateType = S && Ctrl

;---------------------------------------------------------------------------
;Sky Step
[State -1, Sky Step]
type = ChangeState
value = 60
triggerall = !AILevel
triggerall = NumExplod(90000562)
triggerall = RoundState = 2 && StateType = A
triggerall = Pos Y <= -30
triggerall = StateNo != [60,65]
triggerall = !Var(1)
trigger1 = Ctrl
trigger2 = Var(17) = 2

;---------------------------------------------------------------------------
;Sky Step - Dash Forward
[State -1, Sky Step]
type = ChangeState
value = 61
triggerall = !AILevel
triggerall = (Cond(P2Dist X < 0,Facing = -1,Facing = 1) && NumExplod(90001016)) || (Cond(P2Dist X < 0,Facing = 1,Facing = -1) && NumExplod(90001064))
triggerall = RoundState = 2 && StateType = A
triggerall = Pos Y <= -30
triggerall = StateNo != [60,65]
triggerall = !Var(1)
trigger1 = Ctrl
trigger2 = Var(17) = 2

;---------------------------------------------------------------------------
;Sky Step - Dash Back
[State -1, Sky Step]
type = ChangeState
value = 62
triggerall = !AILevel
triggerall = (Cond(P2Dist X < 0,Facing = -1,Facing = 1) && NumExplod(90001064)) || (Cond(P2Dist X < 0,Facing = 1,Facing = -1) && NumExplod(90001016))
triggerall = RoundState = 2 && StateType = A
triggerall = Pos Y <= -30
triggerall = StateNo != [60,65]
triggerall = !Var(1)
trigger1 = Ctrl
trigger2 = Var(17) = 2

;---------------------------------------------------------------------------
;Sky Step - Jump Neutral
[State -1, Sky Step]
type = ChangeState
value = 63
triggerall = !AILevel
triggerall = NumExplod(90000518)
triggerall = RoundState = 2 && StateType = A
triggerall = Pos Y <= -30
triggerall = StateNo != [60,65]
triggerall = !Var(1)
trigger1 = Ctrl
trigger2 = Var(17) = 2

;---------------------------------------------------------------------------
;Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = !AILevel
triggerall = NumExplod(90000200) && NumExplod(90000230)
trigger1 = RoundState = 2 && Ctrl && StateType = S
trigger2 = StateNo = 100 && AnimElemTime(4) > 0
trigger3 = StateNo = 195

;---------------------------------------------------------------------------
;Power Charge
[State -1, Power Charge]
type = changestate
value = 740
trigger1 = !AILevel
trigger1 = NumExplod(90000220) && NumExplod(90000250)
trigger1 = RoundState = 2 && StateType != A && Ctrl
trigger1 = Power < Const(Data.Power) && Power < PowerMax

;---------------------------------------------------------------------------
;Just Defend Reset 1
[State -1, Just Defend Reset]
type = HitOverride
triggerall = !AILevel
trigger1 = (!Ctrl && (StateNo != [700,702]) && StateNo != 5120)
trigger2 = (MoveType != I) || (StateNo = [100,106]) || (StateNo = [120,132])
trigger3 = !AILevel && (Command = "holdfwd" || Command = "holdup")
trigger4 = (StateType = S || StateType = C) && Var(56) != 1 && Var(56) != 2
trigger5 = StateType = A && Var(56) != 3
trigger6 = MoveType = A
slot = 0
time = 0
;---------------------------------------------------------------------------
;Just Defend Reset 2
[State -1, Just Defend Reset]
type = HitOverride
triggerall = !AILevel
trigger1 = (!Ctrl && (StateNo != [700,702]) && StateNo != 5120)
trigger2 = (MoveType != I) || (StateNo = [100,106]) || (StateNo = [120,132])
trigger3 = !AILevel && (Command = "holdfwd" || Command = "holdup")
trigger4 = (StateType = S || StateType = C) && Var(56) != 1 && Var(56) != 2
trigger5 = StateType = A && Var(56) != 3
trigger6 = MoveType = A
slot = 1
time = 0
;---------------------------------------------------------------------------
;Just Defend Reset 3
[State -1, Just Defend Reset]
type = HitOverride
triggerall = !AILevel
trigger1 = (!Ctrl && (StateNo != [700,702]) && StateNo != 5120)
trigger2 = (MoveType != I) || (StateNo = [100,106]) || (StateNo = [120,132])
trigger3 = !AILevel && (Command = "holdfwd" || Command = "holdup")
trigger4 = (StateType = S || StateType = C) && Var(56) != 1 && Var(56) != 2
trigger5 = StateType = A && Var(56) != 3
trigger6 = MoveType = A
slot = 2
time = 0

;---------------------------------------------------------------------------
;Stand Just Defend
[State -1, Stand Just Defend]
type = HitOverRide
triggerall = !AILevel
triggerall = MoveType != A
triggerall = StateType != A
triggerall = StateNo != [5000,5999]
triggerall = RoundState = 2
triggerall = (Cond(P2Dist X < 0,Facing = -1,Facing = 1) && NumExplod(90000014)) || (Cond(P2Dist X < 0,Facing = 1,Facing = -1) && NumExplod(90000016))
triggerall = Var(56) := 1
trigger1 = Ctrl
trigger2 = StateNo = 100 && AnimElemTime(4) > 0
trigger3 = StateNo = [130,153]
trigger4 = StateNo = [700,701]
attr = SA,AA,AP
stateno = 700
slot = 0
time = 2

;---------------------------------------------------------------------------
;Crouch Just Defend
[State -1, Crouch Just Defend]
type = HitOverRide
triggerall = !AILevel
triggerall = MoveType != A
triggerall = StateType != A
triggerall = StateNo != [5000,5999]
triggerall = RoundState = 2
triggerall = NumExplod(90000012)
triggerall = Var(56) := 2
trigger1 = Ctrl
trigger2 = StateNo = 100 && AnimElemTime(4) > 0
trigger3 = StateNo = [130,153]
trigger4 = StateNo = [700,701]
attr = C,AA,AP
stateno = 701
slot = 1
time = 2

;---------------------------------------------------------------------------
;Air Just Defend
[State -1, Air Just Defend]
type = HitOverRide
triggerall = !AILevel
triggerall = MoveType != A
triggerall = StateType = A
triggerall = StateNo != [5000,5999]
triggerall = RoundState = 2
triggerall = (Cond(P2Dist X < 0,Facing = -1,Facing = 1) && NumExplod(90000014)) || (Cond(P2Dist X < 0,Facing = 1,Facing = -1) && NumExplod(90000016))
triggerall = Var(56) := 3
trigger1 = Ctrl
trigger2 = StateNo = 702
attr = SCA,AA,AP
stateno = 702
forceair = 1
slot = 2
time = 2

;---------------------------------------------------------------------------
;Run
[State -1, Run]
type = ChangeState
value = 100
triggerall = !AILevel
triggerall = NumExplod(90000210) && NumExplod(90000240)
triggerall = !NumExplod(90000002) && !NumExplod(90000004) && !NumExplod(90000006)
triggerall = !NumExplod(90000012) && !NumExplod(90000014) && !NumExplod(90000016)
triggerall = !NumExplod(90000022) && !NumExplod(90000024) && !NumExplod(90000026)
triggerall = RoundState = 2 && StateType != A
triggerall = MoveType != H
triggerall = StateNo != [700,751]
trigger1 = Ctrl
trigger2 = Power >= 500
trigger2 = Var(17) = 1
trigger3 = Power >= 500
trigger3 = Anim = 212 || Anim = 223 || Anim = 230
trigger3 = AnimElemTime(4) < 0 && MoveContact
trigger4 = Power >= 500
trigger4 = Anim = 250
trigger4 = AnimElemTime(5) < 0 && MoveContact

;---------------------------------------------------------------------------
;Dodge
[State -1, Dodge]
type = ChangeState
value = 710
triggerall = !AILevel
triggerall = RoundState = 2 && StateType != A
triggerall = NumExplod(90000210) && NumExplod(90000240)
triggerall = NumExplod(90000002) || NumExplod(90000012) || NumExplod(90000022)
triggerall = StateNo != 710
triggerall = PrevStateNo != 710
trigger1 = Ctrl
trigger2 = StateNo = 100 && AnimElemTime(4) > 0
trigger3 = StateNo = 900

;---------------------------------------------------------------------------
;Roll
[State -1, Roll]
type = ChangeState
value = 720
triggerall = !AILevel
triggerall = (Cond(P2Dist X < 0,Facing = -1,Facing = 1) && NumExplod(90000006)) || (Cond(P2Dist X < 0,Facing = 1,Facing = -1) && NumExplod(90000004))
triggerall = NumExplod(90000210) && NumExplod(90000240)
triggerall = RoundState = 2 && StateType != A
trigger1 = Ctrl
trigger2 = StateNo = 100 && AnimElemTime(4) > 0
trigger3 = StateNo = 900

;---------------------------------------------------------------------------
;Roll
[State -1, Roll]
type = ChangeState
value = 725
triggerall = !AILevel
triggerall = (Cond(P2Dist X < 0,Facing = -1,Facing = 1) && NumExplod(90000004)) || (Cond(P2Dist X < 0,Facing = 1,Facing = -1) && NumExplod(90000006))
triggerall = NumExplod(90000210) && NumExplod(90000240)
triggerall = RoundState = 2 && StateType != A
trigger1 = Ctrl
trigger2 = StateNo = 100 && AnimElemTime(4) > 0
trigger3 = StateNo = 900

;---------------------------------------------------------------------------
;Zero Counter
[State -1, Zero Counter]
type = ChangeState
value = Cond((NumEnemy && EnemyNear,Pos Y < 0),750,751)
triggerall = !AILevel
triggerall = Power >= 500
triggerall = NumExplod(90000210) && NumExplod(90000240)
triggerall = MoveType = H
triggerall = NumEnemy
triggerall = EnemyNear,HitDefAttr != SCA,SA,ST,SP
triggerall = RoundState = 2 && StateType != A
triggerall = StateNo != [700,702]
triggerall = PrevStateNo != [700,702]
trigger1 = StateNo = [120,155]
ignorehitpause = 1

;---------------------------------------------------------------------------
;Ground Tech
[State -1, Ground Tech]
type = ChangeState
value = 5201
triggerall = !AILevel
triggerall = NumExplod(90000002)
triggerall = RoundState = 2 && StateType != A
triggerall = Pos Y >= -2
triggerall = !Ctrl
trigger1 = Statetype = L
trigger1 = Time < 6

;---------------------------------------------------------------------------
;Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = !AILevel
triggerall = NumExplod(90000200)
triggerall = !NumExplod(900000021) && !NumExplod(90000022) && !NumExplod(90000023)
triggerall = StateType = S
trigger1 = Ctrl
trigger2 = StateNo = 100 && AnimElemTime(4) > 0

;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = !AILevel
triggerall = NumExplod(90000210)
triggerall = !NumExplod(90000240)
triggerall = !NumExplod(900000021) && !NumExplod(90000022) && !NumExplod(90000023)
triggerall = StateType = S
trigger1 = Ctrl
trigger2 = StateNo = 100 && AnimElemTime(4) > 0
trigger3 = Anim = 212 && AnimElemTime(4) < 0 && MoveContact

;---------------------------------------------------------------------------
;Spinning Back Knuckle
[State -1, Spinning Back Knuckle]
type = ChangeState
value = 223
triggerall = !AILevel
triggerall = NumExplod(90000220)
triggerall = (Cond(P2Dist X < 0,Facing = -1,Facing = 1) && NumExplod(90000006)) || (Cond(P2Dist X < 0,Facing = 1,Facing = -1) && NumExplod(90000004))
triggerall = !NumExplod(900000021) && !NumExplod(90000022) && !NumExplod(90000023)
triggerall = StateType = S
trigger1 = Ctrl
trigger2 = StateNo = 100 && AnimElemTime(4) > 0

;---------------------------------------------------------------------------
;Stand Heavy Punch
[State -1, Stand Heavy Punch]
type = ChangeState
value = 220
triggerall = !AILevel
triggerall = NumExplod(90000220)
triggerall = !NumExplod(900000021) && !NumExplod(90000022) && !NumExplod(90000023)
triggerall = StateType = S
trigger1 = Ctrl
trigger2 = StateNo = 100 && AnimElemTime(4) > 0
trigger3 = Anim = 221 && AnimElemTime(4) < 0 && MoveContact

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = !AILevel
triggerall = NumExplod(90000230)
triggerall = !NumExplod(900000021) && !NumExplod(90000022) && !NumExplod(90000023)
triggerall = StateType = S
trigger1 = Ctrl
trigger2 = StateNo = 100 && AnimElemTime(4) > 0

;---------------------------------------------------------------------------
;Rolling Sobat
[State -1, Rolling Sobat]
type = ChangeState
value = 242
triggerall = !AILevel
triggerall = NumExplod(90000240)
triggerall = (Cond(P2Dist X < 0,Facing = -1,Facing = 1) && NumExplod(90000006)) || (Cond(P2Dist X < 0,Facing = 1,Facing = -1) && NumExplod(90000004))
triggerall = !NumExplod(900000021) && !NumExplod(90000022) && !NumExplod(90000023)
triggerall = StateType = S
trigger1 = Ctrl
trigger2 = StateNo = 100 && AnimElemTime(4) > 0
[State -1, Rolling Sobat]
type = ChangeState
value = 242
triggerall = !AILevel
triggerall = NumExplod(90000240)
triggerall = (Cond(P2Dist X < 0,Facing = -1,Facing = 1) && NumExplod(90000004)) || (Cond(P2Dist X < 0,Facing = 1,Facing = -1) && NumExplod(90000006))
triggerall = !NumExplod(900000021) && !NumExplod(90000022) && !NumExplod(90000023)
triggerall = StateType = S
trigger1 = Ctrl
trigger2 = StateNo = 100 && AnimElemTime(4) > 0

;---------------------------------------------------------------------------
;Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = !AILevel
triggerall = NumExplod(90000240)
triggerall = !NumExplod(90000210)
triggerall = !NumExplod(900000021) && !NumExplod(90000022) && !NumExplod(90000023)
triggerall = StateType = S || StateNo = 450
trigger1 = Ctrl
trigger2 = StateNo = 100 && AnimElemTime(4) > 0
trigger3 = StateNo = 230 && AnimElemTime(4) < 0 && MoveContact

;---------------------------------------------------------------------------
;Reverse Spin Kick
[State -1, Reverse Spin Kick]
type = ChangeState
value = 252
triggerall = !AILevel
triggerall = NumExplod(90000250)
triggerall = (Cond(P2Dist X < 0,Facing = -1,Facing = 1) && NumExplod(90000006)) || (Cond(P2Dist X < 0,Facing = 1,Facing = -1) && NumExplod(90000004))
triggerall = !NumExplod(900000021) && !NumExplod(90000022) && !NumExplod(90000023)
triggerall = StateType = S
trigger1 = Ctrl
trigger2 = StateNo = 100 && AnimElemTime(4) > 0
[State -1, Reverse Spin Kick]
type = ChangeState
value = 252
triggerall = !AILevel
triggerall = NumExplod(90000250)
triggerall = (Cond(P2Dist X < 0,Facing = -1,Facing = 1) && NumExplod(90000004)) || (Cond(P2Dist X < 0,Facing = 1,Facing = -1) && NumExplod(90000006))
triggerall = !NumExplod(900000021) && !NumExplod(90000022) && !NumExplod(90000023)
triggerall = StateType = S
trigger1 = Ctrl
trigger2 = StateNo = 100 && AnimElemTime(4) > 0

;---------------------------------------------------------------------------
;Stand Heavy Kick
[State -1, Stand Heavy Kick]
type = ChangeState
value = 250
triggerall = !AILevel
triggerall = NumExplod(90000250)
triggerall = !NumExplod(900000021) && !NumExplod(90000022) && !NumExplod(90000023)
triggerall = StateType = S || StateNo = 450
trigger1 = Ctrl
trigger2 = StateNo = 100 && AnimElemTime(4) > 0
trigger3 = Anim = 231 && AnimElemTime(5) < 0 && MoveContact

;---------------------------------------------------------------------------
;Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = !AILevel
triggerall = !NumHelper(400100) && !NumHelper(400101)
triggerall = NumExplod(90000200)
triggerall = NumExplod(900000021) || NumExplod(90000022) || NumExplod(90000023)
trigger1 = StateType = C
trigger1 = Ctrl
trigger2 = StateNo = 100 && AnimElemTime(4) > 0

;---------------------------------------------------------------------------
;Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = !AILevel
triggerall = !NumHelper(410100) && !NumHelper(410101)
triggerall = NumExplod(90000210)
triggerall = NumExplod(900000021) || NumExplod(90000022) || NumExplod(90000023)
trigger1 = StateType = C
trigger1 = Ctrl
trigger2 = StateNo = 100 && AnimElemTime(4) > 0

;---------------------------------------------------------------------------
;Crouch Heavy Punch
[State -1, Crouch Heavy Punch]
type = ChangeState
value = 420
triggerall = !AILevel
triggerall = !NumHelper(420100) && !NumHelper(420101)
triggerall = NumExplod(90000220)
triggerall = NumExplod(900000021) || NumExplod(90000022) || NumExplod(90000023)
trigger1 = StateType = C
trigger1 = Ctrl
trigger2 = StateNo = 100 && AnimElemTime(4) > 0
trigger3 = Anim = 210 && AnimElemTime(5) < 0 && MoveContact

;---------------------------------------------------------------------------
;Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = !AILevel
triggerall = !NumHelper(430100) && !NumHelper(430101)
triggerall = NumExplod(90000230)
triggerall = NumExplod(900000021) || NumExplod(90000022) || NumExplod(90000023)
trigger1 = StateType = C
trigger1 = Ctrl
trigger2 = StateNo = 100 && AnimElemTime(4) > 0

;---------------------------------------------------------------------------
;Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = !AILevel
triggerall = !NumHelper(440100) && !NumHelper(440101)
triggerall = NumExplod(90000240)
triggerall = NumExplod(900000021) || NumExplod(90000022) || NumExplod(90000023)
trigger1 = StateType = C
trigger1 = Ctrl
trigger2 = StateNo = 100 && AnimElemTime(4) > 0

;---------------------------------------------------------------------------
;Crouch Heavy Kick
[State -1, Crouch Heavy Kick]
type = ChangeState
value = 450
triggerall = !AILevel
triggerall = !NumHelper(450100) && !NumHelper(450101)
triggerall = NumExplod(90000250)
triggerall = NumExplod(900000021) || NumExplod(90000022) || NumExplod(90000023)
trigger1 = StateType = C
trigger1 = Ctrl
trigger2 = StateNo = 100 && AnimElemTime(4) > 0

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = !AILevel
triggerall = NumExplod(90000200)
trigger1 = Statetype = A
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = !AILevel
triggerall = NumExplod(90000210)
trigger1 = Statetype = A
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Jump Heavy Punch
[State -1, Jump Heavy Punch]
type = ChangeState
value = 620
triggerall = !AILevel
triggerall = NumExplod(90000220)
trigger1 = Statetype = A
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = !AILevel
triggerall = NumExplod(90000230)
trigger1 = Statetype = A
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = !AILevel
triggerall = NumExplod(90000240)
trigger1 = Statetype = A
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Jump Heavy Kick
[State -1, Jump Heavy Kick]
type = ChangeState
value = 650
triggerall = !AILevel
triggerall = NumExplod(90000250)
trigger1 = Statetype = A
trigger1 = Ctrl

;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 900
triggerall = !AILevel
triggerall = StateType != A
triggerall = NumExplod(90000901)
triggerall = StateNo != 900
trigger1 = Ctrl
trigger2 = Var(17) = 1


;-| AI Set |---------------------------------------------------------------------------------------------------------------------------

[State -1]
type = VarRandom
trigger1 = 1
v = 59
range = 0,1000

;---------------------------------------------------------------------------
;AI Crouch
[State -1, Crouch]
type = ChangeState
triggerall = Var(41) != 10
triggerall = StateType = S
triggerall = StateNo != [10,12]
triggerall = PrevStateNo != [10,12]
triggerall = AILevel
triggerall = NumEnemy
triggerall = P2Life > 0
triggerall = P2BodyDist X = [0,200]
triggerall = MoveType != H
trigger1 = Var(59) < (60*(AILevel**2/64.0))
trigger1 = Ctrl
trigger1 = EnemyNear,MoveType != H
trigger2 = Var(59) < (80*(AILevel**2/64.0))
trigger2 = Ctrl
trigger2 = EnemyNear,MoveType = H
value = 10

;---------------------------------------------------------------------------
;AI Jump
[State -1]
type = ChangeState
triggerall = Var(54) > 0
triggerall = RoundState = 2
triggerall = StateType = S
triggerall = StateNo != 40
triggerall = PrevStateNo != 40
triggerall = AILevel
triggerall = NumEnemy
triggerall = P2BodyDist X = [90,100]
triggerall = !NumHelper(6600)
triggerall = !NumTarget(250)
triggerall = !NumTarget(600)
triggerall = !NumTarget(610)
triggerall = !NumTarget(611)
triggerall = !NumTarget(620)
triggerall = !NumTarget(621)
triggerall = !NumTarget(630)
triggerall = !NumTarget(631)
triggerall = !NumTarget(640)
triggerall = !NumTarget(650)
triggerall = !NumTarget(1100)
triggerall = !NumTarget(1101)
triggerall = !NumTarget(1102)
triggerall = !NumTarget(1112)
triggerall = !NumTarget(1201)
triggerall = !NumTarget(1219)
triggerall = !NumTarget(1311)
triggerall = !NumTarget(3105)
trigger1 = Var(59) < (50*(AILevel**2/64.0))
trigger1 = Ctrl
trigger1 = !(EnemyNear,HitDefAttr = SCA,AT)
trigger2 = Var(59) < (1000*(AILevel**2/64.0))
trigger2 = Ctrl
trigger2 = EnemyNear,HitDefAttr = SCA,AT
value = 40

;---------------------------------------------------------------------------
;AI Guard
[State -1]
type = ChangeState
triggerall = Pos Y >= 0
triggerall = InGuardDist
triggerall = AILevel
triggerall = MoveType != A
triggerall = MoveType != H
triggerall = NumEnemy
trigger1 = Var(59) < (1000*(AILevel**2/64.0))
trigger1 = Ctrl
trigger1 = EnemyNear,MoveType = A
trigger2 = Var(59) < (1000*(AILevel**2/64.0))
trigger2 = Ctrl
trigger2 = PlayerIdExist(Helper(33333333),Var(23))
trigger3 = Var(59) < (1000*(AILevel**2/64.0))
trigger3 = Ctrl
trigger3 = NumEnemy
trigger3 = EnemyNear,NumProj
value = 120
persistent = 0

[State -1]
Type = AssertSpecial
trigger1 = StateNo != [120,160]
trigger1 = AILevel
flag = NoAirGuard
flag2 = NoCrouchGuard
flag3 = NoStandGuard

;---------------------------------------------------------------------------
;AI Run
[State -1, Run]
type = ChangeState
value = 100
triggerall = AILevel
triggerall = P2Life > 0
triggerall = StateType != A
triggerall = MoveType != A
triggerall = MoveType != H
triggerall = StateNo != 100
triggerall = PrevStateNo != 100
triggerall = StateNo != [700,751]
triggerall = StateNo != [3000,4999]
triggerall = NumEnemy
triggerall = EnemyNear,StateType != L
triggerall = EnemyNear,MoveType != A
triggerall = EnemyNear,StateNo != [120,155]
triggerall = !NumTarget(223)
triggerall = !NumTarget(400)
triggerall = !NumTarget(430)
triggerall = !(NumHelper(6040) && EnemyNear,MoveType = I)
triggerall = !(NumHelper(6040) && EnemyNear,MoveType = A)
trigger1 = Var(59) < (1000*(AILevel**2/64.0))
trigger1 = Ctrl
trigger1 = MoveType != A
trigger1 = EnemyNear,MoveType = H
trigger1 = P2BodyDist X = [80,5000]
trigger2 = Var(59) < (100*(AILevel**2/64.0))
trigger2 = MoveType = A
trigger2 = Var(17) = 1
trigger2 = (MoveGuarded) || !((EnemyNear,StateNo = [2000,2027]) || (EnemyNear,StateNo = [5000,5099]))
trigger2 = Power >= 500

;---------------------------------------------------------------------------
;AI Sky Step
[State -1, Sky Step]
type = ChangeState
value = 60
triggerall = AILevel
triggerall = P2Life > 0
triggerall = !Var(1)
triggerall = StateType = A
triggerall = Pos Y <= -30
triggerall = P2Dist Y >= -200
triggerall = MoveType != H
triggerall = StateNo != [60,65]
triggerall = PrevStateNo != [60,65]
triggerall = NumEnemy
triggerall = !(EnemyNear,StateTYpe = L && (StateNo != [1100,1110]))
trigger1 = Var(59) < (1000*(AILevel**2/64.0))
trigger1 = Ctrl
trigger2 = Var(59) < (1000*(AILevel**2/64.0))
trigger2 = Var(17) = 2
;trigger2 = P2BodyDist X >= 50

;---------------------------------------------------------------------------
;AI Dash Forward
[State -1, Dash]
type = ChangeState
value = 102
triggerall = AILevel
triggerall = P2Life > 0
triggerall = StateType = S
triggerall = MoveType != A
triggerall = MoveType != H
triggerall = StateNo != 710
triggerall = PrevStateNo != 710
triggerall = StateNo != [1000,4999]
triggerall = Ctrl
triggerall = NumEnemy
triggerall = EnemyNear,MoveType != A
triggerall = EnemyNear,StateNo != [120,155]
triggerall = !NumTarget(250)
triggerall = !NumTarget(400)
triggerall = !NumTarget(430)
triggerall = !NumHelper(6040)
trigger1 = Var(59) < (10*(AILevel**2/64.0))
trigger1 = P2BodyDist X = [30,5000]
trigger1 = Ctrl

;---------------------------------------------------------------------------
;AI Dash Back
[State -1, Dash]
type = ChangeState
value = 105
triggerall = AILevel
triggerall = P2Life > 0
triggerall = Power < 1000
triggerall = NumEnemy
triggerall = StateType = S
triggerall = MoveType != A
triggerall = BackEdgeBodyDist >= 50
triggerall = P2BodyDist X = [50,100]
triggerall = MoveType != H
triggerall = EnemyNear,MoveType != H
triggerall = StateNo != 710
triggerall = PrevStateNo != 710
triggerall = PrevStateNo != 4005
triggerall = StateNo != [1000,4999]
trigger1 = Var(59) < (300*(AILevel**2/64.0))
trigger1 = Ctrl

;---------------------------------------------------------------------------
;AI Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = AILevel
triggerall = Var(41) != 800
triggerall = P2Life > 0
triggerall = StateType = S
triggerall = P2BodyDist X = [0,30]
triggerall = MoveType != H
triggerall = StateNo != 800
triggerall = PrevStateNo != 800
triggerall = StateNo != [1000,4999]
triggerall = NumEnemy
triggerall = EnemyNear,StateType != L
triggerall = EnemyNear,StateType != A
triggerall = EnemyNear,MoveType != H
triggerall = EnemyNear,StateNo != 1501
triggerall = EnemyNear,StateNo != 1511
triggerall = EnemyNear,StateNo != [2000,2027]
triggerall = EnemyNear,StateNo != 3310
triggerall = EnemyNear,StateNo != 3951
trigger1 = Var(59) < (1000*(AILevel**2/64.0))
trigger1 = Ctrl
trigger2 = Var(59) < (1000*(AILevel**2/64.0))
trigger2 = StateNo = 100 && AnimElemTime(4) > 0

;---------------------------------------------------------------------------
;AI Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = AILevel
triggerall = Var(41) != 200
triggerall = Var(54) > 0
triggerall = P2Life > 0
triggerall = StateType = S
triggerall = MoveType != A
triggerall = P2BodyDist X = [0,43]
triggerall = P2Dist Y > -40
triggerall = MoveType != H
triggerall = StateNo != 200
triggerall = StateNo != [1000,4999]
triggerall = NumEnemy
triggerall = !(EnemyNear,StateType = A && EnemyNear,Pos Y >= -30)
triggerall = !(EnemyNear,Const(Size.Head.Pos.Y) > Const(Size.Head.Pos.Y) && EnemyNear,StateType != A)
triggerall = EnemyNear,StateType != C
;triggerall = EnemyNear,StateType != A
triggerall = EnemyNear,StateType != L
triggerall = !(EnemyNear,MoveType = A && (StateNo != 710 || PrevStateNo != 710))
triggerall = !NumTarget(600)
triggerall = !NumTarget(610)
triggerall = !NumTarget(630)
triggerall = !NumTarget(631)
triggerall = !NumTarget(640)
triggerall = !NumTarget(800)
triggerall = !NumTarget(1411)
triggerall = EnemyNear,StateNo != [3252,3257]
trigger1 = Var(59) < (500*(AILevel**2/64.0))
trigger1 = Ctrl
trigger2 = Var(59) < (1000*(AILevel**2/64.0))
trigger2 = StateNo = 100 && AnimElemTime(4) > 0
trigger3 = Var(59) < (10*(AILevel**2/64.0))
trigger3 = NumTarget(200)
trigger3 = Ctrl
trigger4 = Var(59) < (1000*(AILevel**2/64.0))
trigger4 = NumTarget(400)
trigger4 = Ctrl
trigger5 = Var(59) < (1000*(AILevel**2/64.0))
trigger5 = NumTarget(430)
trigger5 = Ctrl

;---------------------------------------------------------------------------
;AI Crouch Light Kick
[State -1, Crouch Light Kick]
type = ChangeState
value = 430
triggerall = AILevel
triggerall = Var(54) > 0
triggerall = P2Life > 0
triggerall = StateType = C
triggerall = MoveType != A
triggerall = P2BodyDist X = [0,50]
triggerall = MoveType != H
triggerall = StateNo != 430
triggerall = StateNo != [1000,4999]
triggerall = NumEnemy
triggerall = EnemyNear,StateType != L
triggerall = EnemyNear,StateType != A
triggerall = EnemyNear,StateNo != [3250,3257]
trigger1 = Var(59) < (600*(AILevel**2/64.0))
trigger1 = Ctrl
trigger2 = Var(59) < (600*(AILevel**2/64.0))
trigger2 = StateNo = 100 && AnimElemTime(4) > 0
trigger3 = Var(59) < (600*(AILevel**2/64.0))
trigger3 = NumTarget(200)
trigger3 = Ctrl
trigger4 = Var(59) < (600*(AILevel**2/64.0))
trigger4 = NumTarget(201)
trigger4 = Ctrl
trigger5 = Var(59) < (600*(AILevel**2/64.0))
trigger5 = NumTarget(213)
trigger5 = Ctrl
trigger6 = Var(59) < (600*(AILevel**2/64.0))
trigger6 = NumTarget(241)
trigger6 = Ctrl
trigger7 = Var(59) < (600*(AILevel**2/64.0))
trigger7 = NumTarget(242)
trigger7 = Ctrl
trigger8 = Var(59) < (600*(AILevel**2/64.0))
trigger8 = NumTarget(252)
trigger8 = Ctrl
trigger9 = Var(59) < (600*(AILevel**2/64.0))
trigger9 = NumTarget(253)
trigger9 = Ctrl
trigger10 = Var(59) < (600*(AILevel**2/64.0))
trigger10 = NumTarget(400)
trigger10 = Ctrl
trigger11 = Var(59) < (600*(AILevel**2/64.0))
trigger11 = NumTarget(410)
trigger11 = Ctrl
trigger12 = Var(59) < (600*(AILevel**2/64.0))
trigger12 = NumTarget(430)
trigger12 = Ctrl

;---------------------------------------------------------------------------
;AI Crouch Heavy Kick
[State -1, Crouch Heavy Kick]
type = ChangeState
value = 450
triggerall = AILevel
triggerall = Var(54) > 0
triggerall = P2Life > 0
triggerall = StateType = C
triggerall = MoveType != A
triggerall = P2BodyDist X = [0,105]
triggerall = MoveType != H
triggerall = StateNo != 450
triggerall = PrevStateNo != 450
triggerall = StateNo != [1000,4999]
triggerall = NumEnemy
triggerall = EnemyNear,StateType != L
triggerall = EnemyNear,StateType != A
triggerall = EnemyNear,StateNo != [3252,3257]
triggerall = !(EnemyNear,MoveType = H && FrontEdgeDist > 120)
triggerall = !(EnemyNear,MoveType = H && FrontEdgeDist > 120)
trigger1 = Var(59) < (300*(AILevel**2/64.0))
trigger1 = Ctrl
trigger2 = Var(59) < (1000*(AILevel**2/64.0))
trigger2 = StateNo = 100 && AnimElemTime(4) > 0
trigger3 = Var(59) < (1000*(AILevel**2/64.0))
trigger3 = NumTarget(200)
trigger3 = Ctrl
trigger4 = Var(59) < (1000*(AILevel**2/64.0))
trigger4 = NumTarget(220)
trigger4 = Ctrl
trigger5 = Var(59) < (1000*(AILevel**2/64.0))
trigger5 = NumTarget(223)
trigger5 = Ctrl
trigger6 = Var(59) < (1000*(AILevel**2/64.0))
trigger6 = NumTarget(240)
trigger6 = Ctrl
trigger7 = Var(59) < (1000*(AILevel**2/64.0))
trigger7 = NumTarget(241)
trigger7 = Ctrl
trigger8 = Var(59) < (1000*(AILevel**2/64.0))
trigger8 = NumTarget(242)
trigger8 = Ctrl
trigger9 = Var(59) < (1000*(AILevel**2/64.0))
trigger9 = NumTarget(250)
trigger9 = Ctrl
trigger10 = Var(59) < (1000*(AILevel**2/64.0))
trigger10 = NumTarget(400)
trigger10 = Ctrl
trigger11 = Var(59) < (1000*(AILevel**2/64.0))
trigger11 = NumTarget(410)
trigger11 = Ctrl
trigger12 = Var(59) < (1000*(AILevel**2/64.0))
trigger12 = NumTarget(430)
trigger12 = Ctrl
trigger13 = Var(59) < (1000*(AILevel**2/64.0))
trigger13 = NumHelper(6000)
trigger13 = Helper(6000),Var(16)
trigger13 = EnemyNear,MoveType = H
trigger13 = Ctrl

;---------------------------------------------------------------------------
;AI Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = AILevel
triggerall = Var(54) > 0
triggerall = P2Life > 0
triggerall = StateType = S
triggerall = MoveType != A
triggerall = P2BodyDist X = [36,50]
triggerall = MoveType != H
triggerall = StateNo != 230
triggerall = StateNo != [1000,4999]
triggerall = NumEnemy
triggerall = EnemyNear,StateType != L
triggerall = EnemyNear,StateType != A
trigger1 = Var(59) < (600*(AILevel**2/64.0))
trigger1 = Ctrl
trigger2 = Var(59) < (600*(AILevel**2/64.0))
trigger2 = StateNo = 100 && AnimElemTime(4) > 0
trigger3 = Var(59) < (1000*(AILevel**2/64.0))
trigger3 = NumTarget(200)
trigger3 = Ctrl
trigger4 = Var(59) < (1000*(AILevel**2/64.0))
trigger4 = NumTarget(231)
trigger4 = Ctrl
trigger5 = Var(59) < (1000*(AILevel**2/64.0))
trigger5 = NumTarget(400)
trigger5 = Ctrl
trigger6 = Var(59) < (1000*(AILevel**2/64.0))
trigger6 = NumTarget(430)
trigger6 = Ctrl

;---------------------------------------------------------------------------
;AI Crouch Light Punch
[State -1, Crouch Light Punch]
type = ChangeState
value = 400
triggerall = AILevel
triggerall = Var(54) > 0
triggerall = P2Life > 0
triggerall = StateType = C
triggerall = MoveType != A
triggerall = P2BodyDist X = [0,45]
triggerall = MoveType != H
triggerall = StateNo != 400
triggerall = StateNo != [1000,4999]
triggerall = NumEnemy
triggerall = EnemyNear,StateType != L
triggerall = EnemyNear,StateType != A
triggerall = EnemyNear,StateNo != [3252,3257]
triggerall = !NumTarget(1100)
trigger1 = Var(59) < (1000*(AILevel**2/64.0))
trigger1 = Ctrl
trigger2 = Var(59) < (1000*(AILevel**2/64.0))
trigger2 = StateNo = 100 && AnimElemTime(4) > 0
trigger3 = Var(59) < (1000*(AILevel**2/64.0))
trigger3 = NumTarget(200)
trigger3 = Ctrl
trigger4 = Var(59) < (1000*(AILevel**2/64.0))
trigger4 = NumTarget(231)
trigger4 = Ctrl
trigger5 = Var(59) < (1000*(AILevel**2/64.0))
trigger5 = NumTarget(400)
trigger5 = Ctrl
trigger6 = Var(59) < (1000*(AILevel**2/64.0))
trigger6 = NumTarget(430)
trigger6 = Ctrl

;---------------------------------------------------------------------------
;AI Stand Heavy Punch
[State -1, Stand Heavy Punch]
type = ChangeState
value = 220
triggerall = AILevel
triggerall = Var(54) > 0
triggerall = P2Life > 0
;triggerall = !InGuardDist
triggerall = StateType = S
triggerall = P2BodyDist X = [0,60]
triggerall = MoveType != H
triggerall = StateNo != [1000,4999]
triggerall = NumEnemy
triggerall = EnemyNear,StateType != C
triggerall = EnemyNear,StateType != A
triggerall = EnemyNear,StateType != L
triggerall = !(EnemyNear,MoveType = A && (StateNo != 710 || PrevStateNo != 710))
triggerall = EnemyNear,StateNo != [3252,3257]
trigger1 = Var(59) < (100*(AILevel**2/64.0))
trigger1 = Ctrl
trigger2 = Var(59) < (200*(AILevel**2/64.0))
trigger2 = StateNo = 100 && AnimElemTime(4) > 0
trigger3 = Anim = 221 && AnimElemTime(4) < 0 && MoveContact
trigger4 = Var(59) < (200*(AILevel**2/64.0))
trigger4 = NumTarget(200)
trigger4 = Ctrl
trigger5 = Var(59) < (1000*(AILevel**2/64.0))
trigger5 = NumTarget(231)
trigger5 = Ctrl
trigger6 = Var(59) < (1000*(AILevel**2/64.0))
trigger6 = NumTarget(240)
trigger6 = Ctrl
trigger7 = Var(59) < (1000*(AILevel**2/64.0))
trigger7 = NumTarget(242)
trigger7 = Ctrl
trigger8 = Var(59) < (1000*(AILevel**2/64.0))
trigger8 = NumTarget(250)
trigger8 = Ctrl
trigger9 = Var(59) < (1000*(AILevel**2/64.0))
trigger9 = NumTarget(400)
trigger9 = Ctrl
trigger10 = Var(59) < (1000*(AILevel**2/64.0))
trigger10 = NumTarget(410)
trigger10 = Ctrl
trigger11 = Var(59) < (1000*(AILevel**2/64.0))
trigger11 = NumTarget(430)
trigger11 = Ctrl
trigger12 = Var(59) < (1000*(AILevel**2/64.0))
trigger12 = NumHelper(6000)
trigger12 = Helper(6000),Var(16)
trigger12 = EnemyNear,MoveType = H
trigger12 = Ctrl

;---------------------------------------------------------------------------
;AI Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = AILevel
triggerall = Var(54) > 0 || (Anim = 212)
triggerall = P2Life > 0
triggerall = StateType = S
triggerall = (P2BodyDist X = [0,52]) || (Anim = 212)
triggerall = MoveType != H
triggerall = !NumTarget(210)
triggerall = StateNo != [1000,4999]
triggerall = NumEnemy
triggerall = EnemyNear,StateType != L
triggerall = EnemyNear,StateType != A
triggerall = EnemyNear,StateNo != [3252,3257]
trigger1 = Var(59) < (500*(AILevel**2/64.0))
trigger1 = Ctrl
trigger2 = Var(59) < (500*(AILevel**2/64.0))
trigger2 = StateNo = 100 && AnimElemTime(4) > 0
trigger3 = Var(59) < (1000*(AILevel**2/64.0))
trigger3 = NumTarget(200)
trigger3 = Ctrl
trigger4 = Var(59) < (1000*(AILevel**2/64.0))
trigger4 = Anim = 212 && AnimElemTime(4) < 0 && MoveContact
trigger5 = Var(59) < (1000*(AILevel**2/64.0))
trigger5 = NumTarget(400)
trigger5 = Ctrl
trigger6 = Var(59) < (1000*(AILevel**2/64.0))
trigger6 = NumTarget(430)
trigger6 = Ctrl
trigger7 = Var(59) < (1000*(AILevel**2/64.0))
trigger7 = NumHelper(6000)
trigger7 = Helper(6000),Var(16)
trigger7 = EnemyNear,MoveType = H
trigger7 = Ctrl

;---------------------------------------------------------------------------
;AI Spinning Back Knuckle
[State -1, Spinning Back Knuckle]
type = ChangeState
value = 223
triggerall = AILevel
triggerall = Var(54) > 0
triggerall = P2Life > 0
;triggerall = !InGuardDist
triggerall = StateType = S
triggerall = P2BodyDist X = [0,50]
triggerall = MoveType != H
triggerall = StateNo != 223
triggerall = PrevStateNo != 223
triggerall = StateNo != [1000,4999]
triggerall = NumEnemy
triggerall = EnemyNear,StateType != L
triggerall = EnemyNear,StateType != A
triggerall = EnemyNear,StateType != C
triggerall = EnemyNear,StateNo != [3252,3257]
triggerall = !NumTarget(242)
triggerall = !(EnemyNear,MoveType = A && (StateNo != 710 || PrevStateNo != 710))
triggerall = !NumTarget(631)
trigger1 = Var(59) < (800*(AILevel**2/64.0))
trigger1 = Ctrl
trigger2 = Var(59) < (1000*(AILevel**2/64.0))
trigger2 = StateNo = 100 && AnimElemTime(4) > 0
trigger3 = Var(59) < (1000*(AILevel**2/64.0))
trigger3 = NumHelper(6000)
trigger3 = Helper(6000),Var(16)
trigger3 = EnemyNear,MoveType = H
trigger3 = Ctrl

;---------------------------------------------------------------------------
;AI Stand Heavy Kick
[State -1, Heavy Kick]
type = ChangeState
value = 250
triggerall = AILevel
triggerall = Var(41) != 250
triggerall = Var(54) > 0
triggerall = P2Life > 0
triggerall = StateType = S
triggerall = P2BodyDist X = [0,61]
triggerall = FrontEdgeDist <= 100
triggerall = MoveType != H
triggerall = StateNo != 250
triggerall = PrevStateNo != 250
triggerall = StateNo != [1000,4999]
triggerall = !NumTarget(250)
triggerall = !NumTarget(251)
triggerall = !NumTarget(252)
triggerall = !NumTarget(631)
triggerall = NumEnemy
triggerall = EnemyNear,StateType != L
triggerall = EnemyNear,StateType != A
triggerall = EnemyNear,StateNo != [3252,3257]
trigger1 = Var(59) < (200*(AILevel**2/64.0))
trigger1 = Ctrl || (StateNo = 100 && AnimElemTime(4) > 0)
trigger1 = EnemyNear,StateType = A
trigger1 = EnemyNear,Pos Y = [-45,-35]
trigger2 = Var(59) < (1000*(AILevel**2/64.0))
trigger2 = Ctrl || (StateNo = 100 && AnimElemTime(4) > 0)
trigger2 = EnemyNear,StateType != A
trigger3 = Var(59) < (500*(AILevel**2/64.0))
trigger3 = EnemyNear,StateType != A
trigger3 = StateNo = 450 && AnimElemTime(4) < 0 && MoveContact
trigger4 = Var(59) < (1000*(AILevel**2/64.0))
trigger4 = NumTarget(410)
trigger4 = Ctrl
trigger5 = Var(59) < (1000*(AILevel**2/64.0))
trigger5 = NumHelper(6000)
trigger5 = Helper(6000),Var(16)
trigger5 = EnemyNear,MoveType = H
trigger5 = EnemyNear,Pos Y = [-45,-35]
trigger5 = Ctrl

;---------------------------------------------------------------------------
;AI Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = AILevel
triggerall = Var(54) > 0
triggerall = P2Life > 0
triggerall = StateType = S
triggerall = (P2BodyDist X = [0,55]) || (StateNo = 230)
triggerall = !(EnemyNear,StateType = A && P2BodyDist X > 40)
triggerall = !(EnemyNear,StateType = A && (EnemyNear,Pos Y != [-60,-20]))
triggerall = MoveType != H
triggerall = PrevStateNo != 240
triggerall = StateNo != [1000,4999]
triggerall = NumEnemy
triggerall = EnemyNear,StateType != L
triggerall = EnemyNear,StateType != C
triggerall = EnemyNear,StateNo != [3252,3257]
triggerall = !(NumTarget(200) && EnemyNear,StateType != A)
triggerall = !NumTarget(240)
triggerall = !NumTarget(241)
triggerall = !NumTarget(1411)
trigger1 = Var(59) < (200*(AILevel**2/64.0))
trigger1 = Ctrl
trigger1 = EnemyNear,Pos Y <= -50
trigger1 = EnemyNear,Pos Y > -55
trigger1 = EnemyNear,StateType = A
trigger2 = Var(59) < (800*(AILevel**2/64.0))
trigger2 = Ctrl
trigger2 = EnemyNear,StateType != A
trigger3 = Var(59) < (200*(AILevel**2/64.0))
trigger3 = StateNo = 100 && AnimElemTime(4) > 0
trigger3 = EnemyNear,Pos Y <= -50
trigger3 = EnemyNear,Pos Y > -55
trigger4 = Var(59) < (500*(AILevel**2/64.0))
trigger4 = NumTarget(200)
trigger4 = Ctrl
trigger5 = Var(59) < (200*(AILevel**2/64.0))
trigger5 = NumTarget(223)
trigger6 = Anim = 230 && AnimElemTime(4) < 0 && MoveContact
trigger7 = Var(59) < (500*(AILevel**2/64.0))
trigger7 = NumTarget(231)
trigger7 = Ctrl
trigger8 = Var(59) < (100*(AILevel**2/64.0))
trigger8 = NumTarget(242)
trigger8 = Ctrl
trigger9 = Var(59) < (100*(AILevel**2/64.0))
trigger9 = NumTarget(400)
trigger9 = Ctrl
trigger10 = Var(59) < (100*(AILevel**2/64.0))
trigger10 = NumTarget(410)
trigger10 = Ctrl
trigger11 = Var(59) < (100*(AILevel**2/64.0))
trigger11 = NumTarget(430)
trigger11 = Ctrl
trigger12 = Var(59) < (100*(AILevel**2/64.0))
trigger12 = NumTarget(451)
trigger12 = Ctrl
trigger12 = EnemyNear,Pos Y <= -50
trigger12 = EnemyNear,Pos Y > -55

;---------------------------------------------------------------------------
;AI Crouch Medium Punch
[State -1, Crouch Medium Punch]
type = ChangeState
value = 410
triggerall = AILevel
triggerall = Var(41) != 410
triggerall = Var(54) > 0
triggerall = P2Life > 0
triggerall = StateType = C
triggerall = MoveType != A
triggerall = P2BodyDist X = [0,55]
triggerall = !((EnemyNear,Pos Y != [-30,-25]) && EnemyNear,StateType = A)
triggerall = MoveType != H
triggerall = StateNo != 410
triggerall = StateNo != [1000,4999]
triggerall = NumEnemy
triggerall = EnemyNear,StateType != L
triggerall = !NumTarget(1301)
triggerall = !NumTarget(1302)
trigger1 = Var(59) < (1000*(AILevel**2/64.0))
trigger1 = Ctrl
trigger2 = Var(59) < (1000*(AILevel**2/64.0))
trigger2 = StateNo = 100 && AnimElemTime(4) > 0
trigger3 = Var(59) < (1000*(AILevel**2/64.0))
trigger3 = NumTarget(200)
trigger3 = Ctrl
trigger4 = Var(59) < (1000*(AILevel**2/64.0))
trigger4 = NumTarget(223)
trigger4 = Ctrl
trigger5 = Var(59) < (1000*(AILevel**2/64.0))
trigger5 = NumTarget(231)
trigger5 = Ctrl
trigger6 = Var(59) < (1000*(AILevel**2/64.0))
trigger6 = NumTarget(242)
trigger6 = Ctrl
trigger7 = Var(59) < (1000*(AILevel**2/64.0))
trigger7 = NumTarget(250)
trigger7 = Ctrl
trigger8 = Var(59) < (1000*(AILevel**2/64.0))
trigger8 = NumTarget(251)
trigger8 = Ctrl
trigger9 = Var(59) < (1000*(AILevel**2/64.0))
trigger9 = NumTarget(252)
trigger9 = Ctrl
trigger10 = Var(59) < (1000*(AILevel**2/64.0))
trigger10 = NumTarget(400)
trigger10 = Ctrl
trigger11 = Var(59) < (1000*(AILevel**2/64.0))
trigger11 = NumTarget(430)
trigger11 = Ctrl
trigger12 = Var(59) < (1000*(AILevel**2/64.0))
trigger12 = Ctrl
trigger12 = NumHelper(421)
trigger12 = Helper(421),Var(16)
trigger12 = EnemyNear,MoveType = H
trigger13 = Var(59) < (1000*(AILevel**2/64.0))
trigger13 = NumHelper(6000)
trigger13 = Helper(6000),Var(16)
trigger13 = EnemyNear,MoveType = H
trigger13 = Ctrl

;---------------------------------------------------------------------------
;AI Crouch Medium Kick
[State -1, Crouch Medium Kick]
type = ChangeState
value = 440
triggerall = AILevel
;triggerall = Var(41) != 440
;triggerall = Var(54) > 0
triggerall = P2Life > 0
triggerall = StateType = C
triggerall = MoveType != A
triggerall = MoveType != H
triggerall = P2BodyDist X = [0,105]
triggerall = StateNo != 440
triggerall = PrevStateNo != 440
triggerall = StateNo != [1000,4999]
triggerall = NumEnemy
triggerall = EnemyNear,StateType != L
triggerall = EnemyNear,StateType != A
triggerall = EnemyNear,StateNo != [3250,3257]
trigger1 = Var(59) < (1000*(AILevel**2/64.0))
trigger1 = Ctrl
trigger2 = Var(59) < (1000*(AILevel**2/64.0))
trigger2 = StateNo = 100 && AnimElemTime(4) > 0
trigger3 = Var(59) < (1000*(AILevel**2/64.0))
trigger3 = NumTarget(200)
trigger3 = Ctrl
trigger4 = Var(59) < (1000*(AILevel**2/64.0))
trigger4 = NumTarget(220)
trigger4 = Ctrl
trigger5 = Var(59) < (1000*(AILevel**2/64.0))
trigger5 = NumTarget(223)
trigger5 = Ctrl
trigger6 = Var(59) < (1000*(AILevel**2/64.0))
trigger6 = NumTarget(230)
trigger6 = Ctrl
trigger7 = Var(59) < (1000*(AILevel**2/64.0))
trigger7 = NumTarget(231)
trigger7 = Ctrl
trigger8 = Var(59) < (1000*(AILevel**2/64.0))
trigger8 = NumTarget(240)
trigger8 = Ctrl
trigger9 = Var(59) < (1000*(AILevel**2/64.0))
trigger9 = NumTarget(241)
trigger9 = Ctrl
trigger10 = Var(59) < (1000*(AILevel**2/64.0))
trigger10 = NumTarget(242)
trigger10 = Ctrl
trigger11 = Var(59) < (1000*(AILevel**2/64.0))
trigger11 = NumTarget(250)
trigger11 = Ctrl
trigger12 = Var(59) < (1000*(AILevel**2/64.0))
trigger12 = NumTarget(400)
trigger12 = Ctrl
trigger13 = Var(59) < (1000*(AILevel**2/64.0))
trigger13 = NumTarget(410)
trigger13 = Ctrl
trigger14 = Var(59) < (1000*(AILevel**2/64.0))
trigger14 = NumTarget(430)
trigger14 = Ctrl
trigger15 = Var(59) < (1000*(AILevel**2/64.0))
trigger15 = NumHelper(6000)
trigger15 = Helper(6000),Var(16)
trigger15 = EnemyNear,MoveType = H
trigger15 = Ctrl

;---------------------------------------------------------------------------
;AI Somersault Strike H
[State -1, Somersault Strike]
type = ChangeState
value = 3100
triggerall = AILevel
triggerall = P2Life > 0
triggerall = Power >= 3000
triggerall = P2BodyDist X = [0,60]
triggerall = P2Dist Y >= -40
triggerall = !(P2Dist Y <= -20 && P2Dist X <= 5)
triggerall = RoundState = 2 && StateType != A
triggerall = StateNo != 200
triggerall = StateNo != 230
triggerall = StateNo != 400
triggerall = StateNo != 430
triggerall = StateNo != 1010
triggerall = StateNo != [3000,4999]
triggerall = NumEnemy
triggerall = EnemyNear,MoveType = H
triggerall = EnemyNear,StateType != L
triggerall = EnemyNear,StateNo != [120,155]
triggerall = !(Power < 2000 && EnemyNear,StateType = A)
triggerall = !NumHelper(6010)
triggerall = !NumHelper(6020)
trigger1 = Var(59) < (1000*(AILevel**2/64.0))
trigger1 = Ctrl
trigger1 = EnemyNear,MoveType = H
trigger1 = EnemyNear,StateType = A
trigger1 = EnemyNear,Pos Y = [-40,-25]
trigger2 = Var(59) < (1000*(AILevel**2/64.0))
trigger2 = Ctrl
trigger2 = EnemyNear,MoveType = H
trigger2 = EnemyNear,StateType != A
trigger3 = Var(59) < (1000*(AILevel**2/64.0))
trigger3 = Var(19) = 1
trigger3 = EnemyNear,StateType = A
trigger3 = EnemyNear,Pos Y = [-40,-25]
trigger4 = Var(59) < (1000*(AILevel**2/64.0))
trigger4 = Var(19) = 1
trigger4 = EnemyNear,StateType != A
trigger5 = Var(59) < (1000*(AILevel**2/64.0))
trigger5 = NumHelper(6000)
trigger5 = Helper(6000),Var(16)
trigger5 = Helper(6000),NumTarget(6000)
trigger5 = !MoveGuarded
trigger5 = Ctrl
trigger6 = Var(59) < (1000*(AILevel**2/64.0))
trigger6 = NumHelper(6010)
trigger6 = Helper(6010),Var(16)
trigger6 = Helper(6010),NumTarget(6012)
trigger6 = !MoveGuarded
trigger6 = Ctrl
trigger7 = Var(59) < (1000*(AILevel**2/64.0))
trigger7 = NumHelper(6040)
trigger7 = Helper(6040),Var(16)
trigger7 = Helper(6040),NumTarget(6040)
trigger7 = !MoveGuarded
trigger7 = Ctrl
trigger8 = Var(59) < (1000*(AILevel**2/64.0))
trigger8 = NumHelper(6042)
trigger8 = Helper(6042),Var(16)
trigger8 = EnemyNear,MoveType = H
trigger8 = Ctrl
trigger9 = Var(59) < (1000*(AILevel**2/64.0))
trigger9 = NumHelper(6050)
trigger9 = Helper(6050),Var(16)
trigger9 = Helper(6050),NumTarget(6050)
trigger9 = !MoveGuarded
trigger9 = Ctrl
trigger10 = Var(59) < (1000*(AILevel**2/64.0))
trigger10 = Ctrl
trigger10 = NumTarget(240)
trigger10 = Target(240),MoveType = H
trigger10 = Target(240),StateType = A
trigger11 = Var(59) < (1000*(AILevel**2/64.0))
trigger11 = Ctrl
trigger11 = NumTarget(800)
trigger11 = Target(800),MoveType = H
trigger11 = Target(800),StateType = A
trigger11 = Target(800),Pos Y = [-70,-40]

;---------------------------------------------------------------------------
;AI Somersault Strike M
[State -1, Somersault Strike]
type = ChangeState
value = 3100
triggerall = AILevel
triggerall = P2Life > 0
triggerall = Power >= 2000 && Power < 3000
triggerall = P2BodyDist X = [0,60]
triggerall = P2Dist Y >= -40
triggerall = !(P2Dist Y <= -20 && P2Dist X <= 5)
triggerall = RoundState = 2 && StateType != A
triggerall = StateNo != 200
triggerall = StateNo != 230
triggerall = StateNo != 400
triggerall = StateNo != 430
triggerall = StateNo != 1010
triggerall = StateNo != [3000,4999]
triggerall = NumEnemy
triggerall = EnemyNear,MoveType = H
triggerall = EnemyNear,StateType != L
triggerall = EnemyNear,StateNo != [120,155]
triggerall = !(Power < 2000 && EnemyNear,StateType = A)
triggerall = !NumHelper(6010)
triggerall = !NumHelper(6020)
trigger1 = Var(59) < (1000*(AILevel**2/64.0))
trigger1 = Ctrl
trigger1 = EnemyNear,MoveType = H
trigger1 = EnemyNear,StateType = A
trigger1 = EnemyNear,Pos Y = [-40,-25]
trigger2 = Var(59) < (1000*(AILevel**2/64.0))
trigger2 = Ctrl
trigger2 = EnemyNear,MoveType = H
trigger2 = EnemyNear,StateType != A
trigger3 = Var(59) < (1000*(AILevel**2/64.0))
trigger3 = Var(19) = 1
trigger3 = EnemyNear,StateType = A
trigger3 = EnemyNear,Pos Y = [-40,-25]
trigger4 = Var(59) < (1000*(AILevel**2/64.0))
trigger4 = Var(19) = 1
trigger4 = EnemyNear,StateType != A
trigger5 = Var(59) < (1000*(AILevel**2/64.0))
trigger5 = NumHelper(6000)
trigger5 = Helper(6000),Var(16)
trigger5 = Helper(6000),NumTarget(6000)
trigger5 = !MoveGuarded
trigger5 = Ctrl
trigger6 = Var(59) < (1000*(AILevel**2/64.0))
trigger6 = NumHelper(6010)
trigger6 = Helper(6010),Var(16)
trigger6 = Helper(6010),NumTarget(6012)
trigger6 = !MoveGuarded
trigger6 = Ctrl
trigger7 = Var(59) < (1000*(AILevel**2/64.0))
trigger7 = NumHelper(6040)
trigger7 = Helper(6040),Var(16)
trigger7 = Helper(6040),NumTarget(6040)
trigger7 = !MoveGuarded
trigger7 = Ctrl
trigger8 = Var(59) < (1000*(AILevel**2/64.0))
trigger8 = NumHelper(6042)
trigger8 = Helper(6042),Var(16)
trigger8 = EnemyNear,MoveType = H
trigger8 = Ctrl
trigger9 = Var(59) < (1000*(AILevel**2/64.0))
trigger9 = NumHelper(6050)
trigger9 = Helper(6050),Var(16)
trigger9 = Helper(6050),NumTarget(6050)
trigger9 = !MoveGuarded
trigger9 = Ctrl
trigger10 = Var(59) < (1000*(AILevel**2/64.0))
trigger10 = Ctrl
trigger10 = NumTarget(240)
trigger10 = Target(240),MoveType = H
trigger10 = Target(240),StateType = A
trigger11 = Var(59) < (1000*(AILevel**2/64.0))
trigger11 = Ctrl
trigger11 = NumTarget(800)
trigger11 = Target(800),MoveType = H
trigger11 = Target(800),StateType = A
trigger11 = Target(800),Pos Y = [-70,-40]

;---------------------------------------------------------------------------
;AI Total Wipeout M/H
[State -1, Total Wipeout]
type = ChangeState
value = 3200
triggerall = AILevel
triggerall = (Var(48) >= 10) || ((StateNo = 1000 && AnimElemTime(5) < 3) || (StateNo = 1010 && AnimElemTime(5) < 3))
triggerall = P2Life > 0
triggerall = Power >= 2000
triggerall = P2BodyDist X = [0,80]
triggerall = !(EnemyNear,StateType = A && (EnemyNear,Pos Y != [-50,-40]))
triggerall = RoundState = 2 && StateType != A
triggerall = StateNo != 200
triggerall = StateNo != 230
triggerall = StateNo != 1010
triggerall = StateNo != 1200
triggerall = StateNo != 1210
triggerall = StateNo != [3000,4999]
triggerall = !MoveGuarded
triggerall = NumEnemy
triggerall = EnemyNear,MoveType = H
triggerall = EnemyNear,StateType != L
triggerall = EnemyNear,Pos Y >= -20
triggerall = EnemyNear,StateNo != [120,155]
triggerall = !NumTarget(3204)
trigger1 = Var(59) < (300*(AILevel**2/64.0))
trigger1 = Ctrl
trigger1 = EnemyNear,MoveType = H
trigger1 = EnemyNear,StateType = A
trigger1 = EnemyNear,Pos Y = [-20,-10]
trigger2 = Var(59) < (1000*(AILevel**2/64.0))
trigger2 = Ctrl
trigger2 = EnemyNear,MoveType = H
trigger2 = EnemyNear,StateType != A
trigger3 = Var(59) < (300*(AILevel**2/64.0))
trigger3 = Var(19) = 1
trigger3 = EnemyNear,StateType = A
trigger3 = EnemyNear,Pos Y = [-20,-10]
trigger4 = Var(59) < (1000*(AILevel**2/64.0))
trigger4 = Var(19) = 1
trigger4 = EnemyNear,StateType != A
trigger5 = Var(59) < (1000*(AILevel**2/64.0))
trigger5 = NumHelper(6000)
trigger5 = Helper(6000),Var(16)
trigger5 = Helper(6000),NumTarget(6000)
trigger5 = !MoveGuarded
trigger5 = Ctrl
trigger6 = Var(59) < (1000*(AILevel**2/64.0))
trigger6 = NumHelper(6010)
trigger6 = Helper(6010),Var(16)
trigger6 = Helper(6010),NumTarget(6012)
trigger6 = !MoveGuarded
trigger6 = Ctrl
trigger7 = Var(59) < (1000*(AILevel**2/64.0))
trigger7 = NumHelper(6040)
trigger7 = Helper(6040),Var(16)
trigger7 = Helper(6040),NumTarget(6040)
trigger7 = !MoveGuarded
trigger7 = Ctrl
trigger8 = Var(59) < (1000*(AILevel**2/64.0))
trigger8 = NumHelper(6042)
trigger8 = Helper(6042),Var(16)
trigger8 = EnemyNear,MoveType = H
trigger8 = Ctrl
trigger9 = Var(59) < (1000*(AILevel**2/64.0))
trigger9 = NumHelper(6050)
trigger9 = Helper(6050),Var(16)
trigger9 = Helper(6050),NumTarget(6050)
trigger9 = !MoveGuarded
trigger9 = Ctrl
trigger10 = Var(59) < (1000*(AILevel**2/64.0))
trigger10 = Ctrl
trigger10 = NumTarget(240)
trigger10 = Target(240),MoveType = H
trigger10 = Target(240),StateType = A
trigger11 = Var(59) < (1000*(AILevel**2/64.0))
trigger11 = Ctrl
trigger11 = NumTarget(800)
trigger11 = Target(800),MoveType = H
trigger11 = Target(800),StateType = A
trigger11 = Target(800),Pos Y = [-20,-10]

;---------------------------------------------------------------------------
;AI Sky Fissure
[State -1, Sky Fissure]
type = ChangeState
value = 3400
triggerall = AILevel
triggerall = P2Life > 0
triggerall = Power >= 1000
triggerall = P2Dist X <= 120
;triggerall = !(P2Dist X < 20 && P2Dist Y > 10)
triggerall = P2Dist Y >= -40 && P2Dist Y < 0
triggerall = Pos Y <= -20
triggerall = !MoveGuarded
triggerall = RoundState = 2 && StateType = A
triggerall = StateNo != [3000,4999]
triggerall = NumEnemy
triggerall = EnemyNear,StateType != L
triggerall = EnemyNear,StateType != C
triggerall = EnemyNear,MoveType = H
triggerall = EnemyNear,StateNo != [120,155]
triggerall = EnemyNear,StateNo != [700,702]
trigger1 = Var(59) < (1000*(AILevel**2/64.0))
trigger1 = Ctrl
trigger2 = Var(59) < (1000*(AILevel**2/64.0))
trigger2 = Var(19) = 2

;---------------------------------------------------------------------------
;AI Crossfire Flash
[State -1, Crossfire Flash]
type = ChangeState
value = 4200
triggerall = AILevel
triggerall = P2Life > 0
triggerall = Power >= 4000
triggerall = P2Dist Y >= -30 && P2Dist Y < 30
triggerall = Pos Y <= -20
triggerall = !MoveGuarded
triggerall = RoundState = 2 && StateType = A
triggerall = StateNo != [3000,4999]
triggerall = NumEnemy
triggerall = EnemyNear,StateType != L
triggerall = EnemyNear,StateType != C
triggerall = EnemyNear,MoveType = H
triggerall = EnemyNear,StateNo != [120,155]
triggerall = EnemyNear,StateNo != [700,702]
trigger1 = Var(59) < (300*(AILevel**2/64.0))
trigger1 = Ctrl
trigger2 = Var(59) < (1000*(AILevel**2/64.0))
trigger2 = Var(19) = 2

;---------------------------------------------------------------------------
;AI Sonic Hurricane H
[State -1, Sonic Hurricane H]
type = ChangeState
value = 3000
triggerall = AILevel
triggerall = (Var(48) >= 10) || ((StateNo = 1000 && AnimElemTime(5) < 3) || (StateNo = 1010 && AnimElemTime(5) < 3))
triggerall = P2Life > 0
triggerall = Power >= 3000
triggerall = P2BodyDist X = [0,110]
triggerall = RoundState = 2 && StateType != A
triggerall = StateNo != 200
triggerall = StateNo != 230
triggerall = StateNo != 400
triggerall = StateNo != 430
triggerall = StateNo != [1005,1006]
triggerall = StateNo != 1200
triggerall = StateNo != 1210
triggerall = StateNo != [3000,4999]
triggerall = NumEnemy
triggerall = EnemyNear,StateType != L
triggerall = EnemyNear,MoveType = H
triggerall = EnemyNear,StateNo != [120,155]
triggerall = !NumHelper(6020)
triggerall = !NumHelper(6022)
trigger1 = Var(59) < (1000*(AILevel**2/64.0))
trigger1 = Ctrl
trigger1 = EnemyNear,MoveType = H
trigger1 = EnemyNear,StateType = A
trigger1 = EnemyNear,Pos Y = [-80,-10]
trigger2 = Var(59) < (1000*(AILevel**2/64.0))
trigger2 = Ctrl
trigger2 = EnemyNear,MoveType = H
trigger2 = EnemyNear,StateType != A
trigger3 = Var(59) < (1000*(AILevel**2/64.0))
trigger3 = Var(19) = 1
trigger3 = EnemyNear,StateType = A
trigger3 = EnemyNear,Pos Y = [-80,-10]
trigger4 = Var(59) < (1000*(AILevel**2/64.0))
trigger4 = Var(19) = 1
trigger4 = EnemyNear,StateType != A
trigger5 = Var(59) < (1000*(AILevel**2/64.0))
trigger5 = NumHelper(6000)
trigger5 = Helper(6000),Var(16)
trigger5 = Helper(6000),NumTarget(6000)
trigger5 = !MoveGuarded
trigger5 = Ctrl
trigger6 = Var(59) < (1000*(AILevel**2/64.0))
trigger6 = NumHelper(6010)
trigger6 = Helper(6010),Var(16)
trigger6 = Helper(6010),NumTarget(6012)
trigger6 = !MoveGuarded
trigger6 = Ctrl
trigger7 = Var(59) < (1000*(AILevel**2/64.0))
trigger7 = NumHelper(6040)
trigger7 = Helper(6040),Var(16)
trigger7 = Helper(6040),NumTarget(6040)
trigger7 = !MoveGuarded
trigger7 = Ctrl
trigger8 = Var(59) < (1000*(AILevel**2/64.0))
trigger8 = NumHelper(6042)
trigger8 = Helper(6042),Var(16)
trigger8 = EnemyNear,MoveType = H
trigger8 = Ctrl
trigger9 = Var(59) < (1000*(AILevel**2/64.0))
trigger9 = NumHelper(6050)
trigger9 = Helper(6050),Var(16)
trigger9 = Helper(6050),NumTarget(6050)
trigger9 = !MoveGuarded
trigger9 = Ctrl
trigger10 = Var(59) < (1000*(AILevel**2/64.0))
trigger10 = Ctrl
trigger10 = NumTarget(241)
trigger10 = Target(241),MoveType = H
trigger10 = Target(241),StateType = A
trigger11 = Var(59) < (1000*(AILevel**2/64.0))
trigger11 = Ctrl
trigger11 = NumTarget(800)
trigger11 = Target(800),MoveType = H
trigger11 = Target(800),StateType = A
trigger11 = Target(800),Pos Y = [-80,-10]
trigger12 = Var(59) < (1000*(AILevel**2/64.0))
trigger12 = Ctrl
trigger12 = EnemyNear,MoveType = H
trigger12 = EnemyNear,StateNo = 2000
trigger12 = EnemyNear,StateType != A
trigger13 = Var(59) < (1000*(AILevel**2/64.0))
trigger13 = Ctrl
trigger13 = EnemyNear,MoveType = H
trigger13 = EnemyNear,StateNo = 2001
trigger13 = EnemyNear,StateType = A
trigger13 = EnemyNear,Pos Y = [-80,-10]

;---------------------------------------------------------------------------
;AI Crouch Heavy Punch
[State -1, Crouch Heavy Punch]
type = ChangeState
value = 420
triggerall = AILevel
;triggerall = Var(41) != 420
;triggerall = Var(54) > 0
triggerall = Var(55) < 200
triggerall = P2Life > 0
triggerall = (StateType = C) || (Anim = 210)
triggerall = P2BodyDist X = [0,65]
triggerall = MoveType != H
triggerall = StateNo != 420
triggerall = PrevStateNo != 420
triggerall = StateNo != [1000,4999]
triggerall = NumEnemy
triggerall = EnemyNear,StateType != L
triggerall = !((EnemyNear,Pos Y != [-50,-20]) && EnemyNear,StateType = A)
triggerall = !NumTarget(800)
triggerall = !NumHelper(421)
triggerall = !NumTarget(242)
trigger1 = Var(59) < (1000*(AILevel**2/64.0))
trigger1 = Ctrl
trigger1 = EnemyNear,StateType = A
trigger2 = Var(59) < (1000*(AILevel**2/64.0))
trigger2 = Ctrl
trigger2 = EnemyNear,StateType != A
trigger3 = Var(59) < (1000*(AILevel**2/64.0))
trigger3 = StateNo = 100 && AnimElemTime(4) > 0
trigger3 = EnemyNear,StateType = A
trigger4 = Var(59) < (1000*(AILevel**2/64.0))
trigger4 = StateNo = 100 && AnimElemTime(4) > 0
trigger4 = EnemyNear,StateType != A
trigger5 = Var(59) < (1000*(AILevel**2/64.0))
trigger5 = NumTarget(200)
trigger5 = Ctrl
trigger6 = Var(59) < (1000*(AILevel**2/64.0))
trigger6 = Anim = 210 && (AnimElemTime(4) >= 0 && AnimElemTime(5) < 0)
trigger6 = MoveContact
trigger6 = FrontEdgeDist <= 100
trigger7 = Var(59) < (1000*(AILevel**2/64.0))
trigger7 = NumTarget(231)
trigger7 = Ctrl
trigger8 = Var(59) < (1000*(AILevel**2/64.0))
trigger8 = NumTarget(241)
trigger8 = Ctrl
trigger9 = Var(59) < (1000*(AILevel**2/64.0))
trigger9 = NumTarget(242)
trigger9 = Ctrl
trigger10 = Var(59) < (1000*(AILevel**2/64.0))
trigger10 = NumTarget(250)
trigger10 = Ctrl
trigger11 = Var(59) < (1000*(AILevel**2/64.0))
trigger11 = NumTarget(251)
trigger11 = Ctrl
trigger12 = Var(59) < (1000*(AILevel**2/64.0))
trigger12 = NumTarget(252)
trigger12 = Ctrl
trigger13 = Var(59) < (1000*(AILevel**2/64.0))
trigger13 = NumTarget(400)
trigger13 = Ctrl
trigger14 = Var(59) < (1000*(AILevel**2/64.0))
trigger14 = NumTarget(410)
trigger14 = Ctrl
trigger15 = Var(59) < (1000*(AILevel**2/64.0))
trigger15 = NumTarget(430)
trigger15 = Ctrl
trigger16 = Var(59) < (1000*(AILevel**2/64.0))
trigger16 = NumTarget(451)
trigger16 = Ctrl
trigger17 = Var(59) < (1000*(AILevel**2/64.0))
trigger17 = NumHelper(6000)
trigger17 = Helper(6000),Var(16)
trigger17 = EnemyNear,MoveType = H
trigger17 = Ctrl
trigger18 = Var(59) < (1000*(AILevel**2/64.0))
trigger18 = NumHelper(6040)
trigger18 = Helper(6040),Var(16)
trigger18 = EnemyNear,MoveType = H
trigger18 = Ctrl

;---------------------------------------------------------------------------
;AI Rolling Sobat
[State -1, Rolling Sobat]
type = ChangeState
value = 242
triggerall = AILevel
triggerall = Var(54) > 0
triggerall = P2Life > 0
;triggerall = !InGuardDist
triggerall = StateType = S
triggerall = P2BodyDist X <= 85
triggerall = MoveType != H
triggerall = StateNo != 242
triggerall = PrevStateNo != 242
triggerall = !NumTarget(200)
triggerall = !NumTarget(220)
triggerall = !NumTarget(223)
triggerall = !NumTarget(230)
triggerall = !NumTarget(231)
triggerall = !NumTarget(240)
triggerall = !NumTarget(241)
triggerall = !NumTarget(242)
triggerall = !NumTarget(250)
triggerall = !NumTarget(251)
triggerall = !NumTarget(252)
triggerall = !NumTarget(1100)
triggerall = !NumTarget(1101)
triggerall = !NumTarget(1102)
triggerall = !NumTarget(1111)
triggerall = !NumTarget(1300)
triggerall = !NumTarget(1301)
triggerall = !NumTarget(1302)
triggerall = !NumHelper(6010)
;triggerall = !NumHelper(6040)
;triggerall = !NumHelper(6050)
triggerall = StateNo != [1000,4999]
triggerall = NumEnemy
triggerall = EnemyNear,StateType != C
triggerall = !(EnemyNear,StateType = A && EnemyNear,StateNo != 811)
triggerall = !(EnemyNear,StateType = A && EnemyNear,Pos Y >= -70)
triggerall = EnemyNear,StateType != L
triggerall = !(EnemyNear,MoveType = A && (StateNo != 710 || PrevStateNo != 710))
triggerall = EnemyNear,StateNo != [3250,3257]
trigger1 = Var(59) < (100*(AILevel**2/64.0))
trigger1 = Ctrl
trigger2 = Var(59) < (600*(AILevel**2/64.0));700
trigger2 = StateNo = 100 && AnimElemTime(4) > 0
trigger3 = Var(59) < (1000*(AILevel**2/64.0))
trigger3 = Ctrl
trigger3 = NumTarget(800)
trigger4 = Var(59) < (1000*(AILevel**2/64.0))
trigger4 = Ctrl
trigger4 = NumHelper(421)
trigger4 = Helper(421),Var(16)
trigger4 = EnemyNear,MoveType = H
trigger5 = Var(59) < (1000*(AILevel**2/64.0))
trigger5 = NumHelper(6000)
trigger5 = Helper(6000),Var(16)
trigger5 = EnemyNear,MoveType = H
trigger5 = Ctrl

;---------------------------------------------------------------------------
;AI Reverse Spin Kick
[State -1, Reverse Spin Kick]
type = ChangeState
value = 252
triggerall = AILevel
triggerall = Var(54) > 0
triggerall = P2Life > 0
;triggerall = !InGuardDist
triggerall = StateType = S
triggerall = P2BodyDist X <= 66
triggerall = MoveType != H
triggerall = StateNo != 242
triggerall = PrevStateNo != 242
triggerall = !NumTarget(200)
triggerall = !NumTarget(220)
;triggerall = !NumTarget(221)
triggerall = !NumTarget(223)
triggerall = !NumTarget(230)
triggerall = !NumTarget(231)
triggerall = !NumTarget(240)
triggerall = !NumTarget(241)
triggerall = !NumTarget(242)
triggerall = !NumTarget(250)
triggerall = !NumTarget(251)
triggerall = !NumTarget(252)
triggerall = !NumTarget(631)
triggerall = !NumTarget(1100)
triggerall = !NumTarget(1101)
triggerall = !NumTarget(1102)
triggerall = !NumTarget(1111)
triggerall = !NumTarget(1300)
triggerall = !NumTarget(1301)
triggerall = !NumTarget(1302)
triggerall = StateNo != [1000,4999]
triggerall = NumEnemy
triggerall = EnemyNear,StateType != C
triggerall = EnemyNear,StateType != A
triggerall = EnemyNear,StateType != L
triggerall = !(EnemyNear,MoveType = A && (StateNo != 710 || PrevStateNo != 710))
trigger1 = Var(59) < (200*(AILevel**2/64.0))
trigger1 = Ctrl
trigger2 = Var(59) < (10*(AILevel**2/64.0))
trigger2 = StateNo = 100 && AnimElemTime(4) > 0
trigger3 = Var(59) < (400*(AILevel**2/64.0))
trigger3 = NumHelper(6000)
trigger3 = Helper(6000),Var(16)
trigger3 = EnemyNear,MoveType = H
trigger3 = Ctrl

;---------------------------------------------------------------------------
;AI Jump Medium Kick
[State -1, Jump Medium Kick]
type = ChangeState
value = 640
triggerall = AILevel
triggerall = Var(54) > 0
triggerall = P2Life > 0
triggerall = Pos Y <= -30
triggerall = !(Pos Y >= -40 && Vel Y > 0)
triggerall = StateType = A
triggerall = P2BodyDist Y = [-20,40]
triggerall = MoveType != H
triggerall = StateNo != 640
triggerall = NumEnemy
triggerall = EnemyNear,StateType != L
trigger1 = Var(59) < (1000*(AILevel**2/64.0))
trigger1 = Ctrl
trigger1 = Vel X > 0
trigger1 = P2BodyDist X = [0,86]
trigger2 = Var(59) < (1000*(AILevel**2/64.0))
trigger2 = Ctrl
trigger2 = Vel X <= 0
trigger2 = P2BodyDist X = [0,86]

;---------------------------------------------------------------------------
;AI Jump Heavy Kick
[State -1, Jump Heavy Kick]
type = ChangeState
value = 650
triggerall = AILevel
triggerall = Var(54) > 0
triggerall = P2Life > 0
triggerall = StateType = A
triggerall = Pos Y <= -30
triggerall = !(Pos Y >= -40 && Vel Y > 0)
triggerall = P2BodyDist X <= 95
triggerall = Abs(P2BodyDist Y) <= 45
triggerall = MoveType != H
triggerall = StateNo != 650
triggerall = NumEnemy
triggerall = EnemyNear,StateType != L
triggerall = EnemyNear,StateType != C
trigger1 = Var(59) < (1000*(AILevel**2/64.0))
trigger1 = Ctrl && sysvar(1) = 0 && P2StateType != A && (Vel Y > -3 || sysvar(1) < 0)
trigger1 = (P2BodyDist X-Facing*(Vel X*Facing-EnemyNear,Vel X*EnemyNear,Facing)*7) = [-20,90]
trigger1 = (P2Dist Y-(Vel Y-EnemyNear,Vel Y)*7) = [-10,35]
trigger2 = Var(59) < (1000*(AILevel**2/64.0))
trigger2 = Ctrl && sysvar(1) = 0 && P2StateType = A
trigger2 = (P2BodyDist X-Facing*(Vel X*Facing-EnemyNear,Vel X*EnemyNear,Facing)*7) = [-20,90]
trigger2 = (P2Dist Y-(Vel Y-EnemyNear,Vel Y)*7) = [-5,45]
trigger3 = Var(59) < (1000*(AILevel**2/64.0))
trigger3 = Ctrl && sysvar(1) != 0
trigger3 = P2StateType != A && (Vel Y > -3 || sysvar(1) < 0)
trigger3 = (P2BodyDist X-Facing*(Vel X*Facing-EnemyNear,Vel X*Enemynear,Facing)*4) = [10,100]
trigger3 = (P2Dist Y-(Vel Y-EnemyNear,Vel Y)*4) = [10,50]
trigger4 = Var(59) < (1000*(AILevel**2/64.0))
trigger4 = Ctrl && sysvar(1) != 0
trigger4 = P2StateType = A
trigger4 = (P2BodyDist X-Facing*(Vel X*Facing-EnemyNear,Vel X*EnemyNear,Facing)*4) = [10,100]
trigger4 = (P2Dist Y-(Vel Y-EnemyNear,Vel Y)*4) = [-10,70]

;---------------------------------------------------------------------------
;AI Jump Heavy Punch
[State -1, Jump Heavy Punch]
type = ChangeState
value = 620
triggerall = AILevel
triggerall = Var(54) > 0
triggerall = P2Life > 0
triggerall = Pos Y <= -30
triggerall = P2Dist X >= 0
triggerall = StateType = A
triggerall = MoveType != H
triggerall = StateNo != 620
triggerall = NumEnemy
triggerall = EnemyNear,StateType != L
trigger1 = Var(59) < (1000*(AILevel**2/64.0))
trigger1 = Ctrl && P2StateType != A && (Vel Y > -3 || sysvar(1) < 0)
trigger1 = Vel X = 0
trigger1 = (P2BodyDist X-Facing*(Vel X*Facing-EnemyNear,Vel X*EnemyNear,Facing)*4) = [-10-60*(EnemyNear,BackEdgeBodyDist < 10),60]
trigger1 = (P2Dist Y-(Vel Y-Enemynear,Vel Y)*4) = [-5,50];10,48
trigger2 = Var(59) < (1000*(AILevel**2/64.0))
trigger2 = Ctrl && P2StateType = A
trigger2 = Vel X != 0
trigger2 = (P2BodyDist X-Facing*(Vel X*Facing-Enemynear,Vel X*Enemynear,Facing)*4) = [-30,60]
trigger2 = (P2Dist Y-(Vel Y-Enemynear,Vel Y)*4) = [-5,54]
trigger3 = Var(59) < (1000*(AILevel**2/64.0))
trigger3 = Ctrl && P2StateType != A && (Vel Y > -3 || sysvar(1) < 0)
trigger3 = Vel X = 0
trigger3 = (P2BodyDist X-Facing*(Vel X*Facing-EnemyNear,Vel X*EnemyNear,Facing)*4) = [-10-60*(EnemyNear,BackEdgeBodyDist < 10),60]
trigger3 = (P2Dist Y-(Vel Y-Enemynear,Vel Y)*4) = [-5,50]
trigger4 = Var(59) < (1000*(AILevel**2/64.0))
trigger4 = Ctrl && P2StateType = A
trigger4 = Vel X != 0
trigger4 = (P2BodyDist X-Facing*(Vel X*Facing-Enemynear,Vel X*Enemynear,Facing)*4) = [-30,60]
trigger4 = (P2Dist Y-(Vel Y-Enemynear,Vel Y)*4) = [-5,54]

;---------------------------------------------------------------------------
;AI Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = AILevel
triggerall = Var(54) > 10
triggerall = P2Life > 0
triggerall = Pos Y <= -30
triggerall = StateType = A
triggerall = Vel Y >= -.5
triggerall = P2BodyDist X = [0,30]
triggerall = P2BodyDist Y = [-60,20]
triggerall = MoveType != H
triggerall = StateNo != 610
triggerall = NumEnemy
triggerall = EnemyNear,StateType != L
triggerall = EnemyNear,StateType != C
trigger1 = Var(59) < (1000*(AILevel**2/64.0))
trigger1 = Ctrl

;---------------------------------------------------------------------------
;AI Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = AILevel
triggerall = Var(54) > 0
triggerall = P2Life > 0
triggerall = Pos Y <= -30
triggerall = P2Dist X = [-40,10]
triggerall = !(Vel X = 0 && P2Dist X < 0)
triggerall = Abs(P2BodyDist Y) <= 60
triggerall = StateType = A
triggerall = MoveType != H
triggerall = NumEnemy
triggerall = EnemyNear,StateType != L
triggerall = !(StateNo = 61 && AnimElemTime(9) < 0)
triggerall = StateNo != 1704
triggerall = StateNo != 1714
trigger1 = Var(59) < (1000*(AILevel**2/64.0))
trigger1 = Ctrl

;---------------------------------------------------------------------------
;AI Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = AILevel
triggerall = Var(41) != 600
triggerall = Var(54) > 0
triggerall = P2Life > 0
triggerall = Pos Y <= -30
triggerall = StateType = A
triggerall = Vel Y >= 0
triggerall = P2Dist X = [0,50]
triggerall = P2BodyDist Y = [-20,20]
triggerall = MoveType != H
triggerall = StateNo != 600
triggerall = NumEnemy
triggerall = EnemyNear,StateType != L
triggerall = !NumTarget(1201)
trigger1 = Var(59) < (1000*(AILevel**2/64.0))
trigger1 = Ctrl

;---------------------------------------------------------------------------
;AI Just Defend Reset 1
[State -1, AI Just Defend Reset]
type = HitOverride
triggerall = AILevel
trigger1 = (!Ctrl && (StateNo != [700,702]) && StateNo != 5120)
trigger2 = (MoveType != I) || (StateNo = [100,106]) || (StateNo = [120,132])
trigger3 = !AILevel && (Command = "holdback" || Command = "holdup")
trigger4 = (StateType = S || StateType = C) && Var(56) != 1 && Var(56) != 2
trigger5 = StateType = A && Var(56) != 3
trigger6 = MoveType = A
slot = 0
time = 0
;---------------------------------------------------------------------------
;AI Just Defend Reset 2
[State -1, AI Just Defend Reset]
type = HitOverride
triggerall = AILevel
trigger1 = (!Ctrl && (StateNo != [700,702]) && StateNo != 5120)
trigger2 = (MoveType != I) || (StateNo = [100,106]) || (StateNo = [120,132])
trigger3 = !AILevel && (Command = "holdback" || Command = "holdup")
trigger4 = (StateType = S || StateType = C) && Var(56) != 1 && Var(56) != 2
trigger5 = StateType = A && Var(56) != 3
trigger6 = MoveType = A
slot = 1
time = 0
;---------------------------------------------------------------------------
;AI Just Defend Reset 3
[State -1, AI Just Defend Reset]
type = HitOverride
triggerall = AILevel
trigger1 = (!Ctrl && (StateNo != [700,702]) && StateNo != 5120)
trigger2 = (MoveType != I) || (StateNo = [100,106]) || (StateNo = [120,132])
trigger3 = !AILevel && (Command = "holdback" || Command = "holdup")
trigger4 = (StateType = S || StateType = C) && Var(56) != 1 && Var(56) != 2
trigger5 = StateType = A && Var(56) != 3
trigger6 = MoveType = A
slot = 2
time = 0

;---------------------------------------------------------------------------
;AI Stand Just Defend
[State -1, Stand Just Defend]
type = HitOverRide
triggerall = AILevel
triggerall = StateType != A
triggerall = MoveType != A
triggerall = StateNo != [5000,5999]
triggerall = RoundState = 2
triggerall = Var(56) := 1
trigger1 = Ctrl || StateNo = 100 && AnimElemTime(4) > 0 || StateNo = [130,153]
trigger1 = Var(59) < (700*(AILevel**2/64.0))
trigger2 = StateNo = [700,701]
trigger2 = Var(59) < (1000*(AILevel**2/64.0))
trigger3 = Ctrl || StateNo = 100 && AnimElemTime(4) > 0 || StateNo = [130,153]
trigger3 = PlayerIdExist(Helper(33333333),Var(23))
trigger3 = Var(59) < (700*(AILevel**2/64.0))
trigger4 = Ctrl || StateNo = 100 && AnimElemTime(4) > 0 || StateNo = [130,153]
trigger4 = NumEnemy
trigger4 = EnemyNear,NumProj
trigger4 = Var(59) < (700*(AILevel**2/64.0))
attr = SA,AA,AP
stateno = 700
slot = 0
time = 1

;---------------------------------------------------------------------------
;AI Crouch Just Defend
[State -1, Crouch Just Defend]
type = HitOverRide
triggerall = AILevel
triggerall = StateType != A
triggerall = MoveType != A
triggerall = StateNo != [5000,5999]
triggerall = RoundState = 2
triggerall = Var(56) := 2
trigger1 = Ctrl || StateNo = 100 && AnimElemTime(4) > 0 || StateNo = [130,153]
trigger1 = Var(59) < (700*(AILevel**2/64.0))
trigger2 = StateNo = [700,701]
trigger2 = Var(59) < (1000*(AILevel**2/64.0))
trigger3 = Ctrl || StateNo = 100 && AnimElemTime(4) > 0 || StateNo = [130,153]
trigger3 = PlayerIdExist(Helper(33333333),Var(23))
trigger3 = Var(59) < (700*(AILevel**2/64.0))
trigger4 = Ctrl || StateNo = 100 && AnimElemTime(4) > 0 || StateNo = [130,153]
trigger4 = NumEnemy
trigger4 = EnemyNear,NumProj
trigger4 = Var(59) < (700*(AILevel**2/64.0))
attr = C,AA,AP
stateno = 701
slot = 1
time = 1

;---------------------------------------------------------------------------
;AI Air Just Defend
[State -1, Air Just Defend]
type = HitOverRide
triggerall = AILevel
triggerall = StateType = A
triggerall = MoveType != A
triggerall = StateNo != [5000,5999]
triggerall = RoundState = 2
triggerall = Var(56) := 3
trigger1 = Ctrl
trigger1 = Var(59) < (700*(AILevel**2/64.0))
trigger2 = StateNo = 702
trigger2 = Var(59) < (1000*(AILevel**2/64.0))
trigger3 = Ctrl
trigger3 = PlayerIdExist(Helper(33333333),Var(23))
trigger3 = Var(59) < (700*(AILevel**2/64.0))
trigger4 = Ctrl
trigger4 = NumEnemy
trigger4 = EnemyNear,NumProj
trigger4 = Var(59) < (700*(AILevel**2/64.0))
attr = SCA,AA,AP
stateno = 702
forceair = 1
slot = 2
time = 1

;---------------------------------------------------------------------------
;AI Dodge
[State -1, Dodge]
type = ChangeState
value = 710
triggerall = AILevel
triggerall = P2Life > 0
triggerall = StateType != A && StateType != L
triggerall = MoveType != A
triggerall = P2Dist X = [0,65]
triggerall = MoveType != H
triggerall = StateNo != [710,725]
triggerall = PrevStateNo != 710
triggerall = StateNo != [1000,4999]
triggerall = NumEnemy
triggerall = EnemyNear,StateType != L
triggerall = EnemyNear,MoveType = A
triggerall = !(EnemyNear,AuthorName = "Burn" && EnemyNear,Name = "Ken" && EnemyNear,Anim = 243 && EnemyNear,Time < 20)
trigger1 = Var(59) < (1000*(AILevel**2/64.0))
trigger1 = Ctrl
trigger2 = Var(59) < (1000*(AILevel**2/64.0))
trigger2 = StateNo = 100 && AnimElemTime(4) > 0

;---------------------------------------------------------------------------
;AI Roll
[State -1, Roll Forward]
type = ChangeState
value = 720
triggerall = AILevel
triggerall = P2Life > 0
triggerall = StateType = S
triggerall = MoveType != A
triggerall = P2BodyDist X = [90,120]
triggerall = MoveType != H
triggerall = StateNo != [710,725]
triggerall = PrevStateNo != [710,725]
triggerall = StateNo != [1000,4999]
triggerall = NumEnemy
triggerall = EnemyNear,StateType != L
triggerall = EnemyNear,MoveType = A
triggerall = EnemyNear,Vel X >= 0
trigger1 = Var(59) < (31*(AILevel**2/64.0))
trigger1 = Ctrl
trigger2 = Var(59) < (31*(AILevel**2/64.0))
trigger2 = StateNo = 100 && AnimElemTime(4) > 0

;---------------------------------------------------------------------------
;AI Roll Back
[State -1, Roll Back]
type = ChangeState
value = 725
triggerall = AILevel
triggerall = P2Life > 0
triggerall = StateType = S
triggerall = MoveType != A
triggerall = P2BodyDist X = [80,120]
triggerall = MoveType != H
triggerall = StateNo != [710,725]
triggerall = PrevStateNo != [710,725]
triggerall = StateNo != [1000,4999]
triggerall = NumEnemy
triggerall = EnemyNear,StateType != L
triggerall = EnemyNear,MoveType = A
triggerall = EnemyNear,Vel X = 0
trigger1 = Var(59) < (32*(AILevel**2/64.0))
trigger1 = Ctrl
trigger2 = Var(59) < (32*(AILevel**2/64.0))
trigger2 = StateNo = 100 && AnimElemTime(4) > 0

;---------------------------------------------------------------------------
;AI Power Charge
[State -1, Power Charge]
type = changestate
value = 740
trigger1 = AILevel
trigger1 = P2Life > 0
trigger1 = NumEnemy
trigger1 = EnemyNear,Life >= 100
trigger1 = P2BodyDist X >= 100
trigger1 = !PlayerIdExist(Helper(33333333),Var(23))
trigger1 = !EnemyNear,NumProj
trigger1 = EnemyNear,StateNo != [1000,4999]
trigger1 = RoundState = 2 && StateType != A && Ctrl
trigger1 = StateNo != 740
trigger1 = PrevStateNo != 740
trigger1 = StateNo != 741
trigger1 = PrevStateNo != 741
trigger1 = Power < Const(Data.Power) && Power < PowerMax
trigger1 = Var(59) < (1000*(AILevel**2/64.0))

;---------------------------------------------------------------------------
;AI Power Charge End
[State -1, Power Charge End]
type = changestate
value = 741
triggerall = AILevel
triggerall = NumEnemy
triggerall = RoundState = 2
triggerall = StateNo = 740
triggerall = StateNo != 741
triggerall = PrevStateNo != 741
trigger1 = Var(59) < (1000*(AILevel**2/64.0))
trigger1 = PlayerIdExist(Helper(33333333),Var(23))
trigger2 = Var(59) < (1000*(AILevel**2/64.0))
trigger2 = EnemyNear,NumProj
trigger3 = Var(59) < (1000*(AILevel**2/64.0))
trigger3 = EnemyNear,Vel X > 0
trigger3 = EnemyNear,MoveType = A
trigger4 = Var(59) < (1000*(AILevel**2/64.0))
trigger4 = EnemyNear,MoveType != H
trigger4 = EnemyNear,StateNo = [1000,4999]

;---------------------------------------------------------------------------
;AI Zero Counter
[State -1, Zero Counter]
type = ChangeState
value = Cond((NumEnemy && EnemyNear,Pos Y < 0),750,751)
triggerall = AILevel
triggerall = Life <= 600
triggerall = Power >= 500
triggerall = MoveType = H
triggerall = StateNo != [700,702]
triggerall = PrevStateNo != [700,702]
triggerall = NumEnemy
triggerall = EnemyNear,HitDefAttr != SCA,SA,ST,SP
triggerall = (EnemyNear,Pos Y >= 0 && (P2BodyDist X = [0,80])) || (EnemyNear,Pos Y < 0 && (P2BodyDist X = [0,40]))
triggerall = RoundState = 2 && StateType != A
trigger1 = Var(59) < (20*(AILevel**2/64.0))
trigger1 = StateNo = [120,155]
ignorehitpause = 1

;---------------------------------------------------------------------------
;AI Taunt
;[State -1, Taunt]
;type = ChangeState
;value = 900
;triggerall = AILevel
;triggerall = P2Life > 0
;triggerall = StateType != A
;triggerall = MoveType = A
;triggerall = StateNo != 900
;triggerall = PrevStateNo != 900
;triggerall = StateNo != [1000,4999]
;triggerall = NumEnemy
;triggerall = EnemyNear,StateType != L
;triggerall = EnemyNear,Pos Y <= -5
;triggerall = EnemyNear,MoveType = H

;---------------------------------------------------------------------------
;AI Sonic Boom
[State -1, Sonic Boom]
type = ChangeState
value = 1000
triggerall = AILevel
triggerall = Var(48) >= 10
triggerall = Var(55) < 200
triggerall = P2Life > 0
;triggerall = P2Dist X > 0
triggerall = P2Dist Y >= -80;-20
triggerall = RoundState = 2 && StateType != A
triggerall = StateNo != [1000,4999]
triggerall = NumEnemy
triggerall = EnemyNear,StateType != L
triggerall = !(EnemyNear,StateType = A && (EnemyNear,Pos Y != [-110,-70]))
triggerall = !(EnemyNear,StateType = A && EnemyNear,MoveType != H)
triggerall = !(EnemyNear,StateType = A && P2BodyDist X > 20)
triggerall = !(Anim = 241 && EnemyNear,StateType != A)
triggerall = !(NumTarget(420) && EnemyNear,StateType = A && Var(50) >= 10)
triggerall = !NumHelper(6000)
triggerall = !NumHelper(6001)
triggerall = !NumHelper(6002)
triggerall = !NumTarget(1300)
triggerall = !NumTarget(1301)
triggerall = !NumTarget(1302)
trigger1 = Var(59) < (1000*(AILevel**2/64.0))
trigger1 = Ctrl
trigger1 = !(EnemyNear,Name = "Ryu" && EnemyNear,AuthorName = "Burn" && (EnemyNear,StateNo = [1600,1610]))
trigger2 = Var(59) < (1000*(AILevel**2/64.0))
trigger2 = Var(17) = 1
trigger2 = StateNo != 100
trigger3 = Var(59) < (1000*(AILevel**2/64.0))
trigger3 = Var(17) = 1
trigger3 = StateNo = 100
trigger4 = Var(59) < (1000*(AILevel**2/64.0))
trigger4 = Ctrl || StateNo = 100
trigger4 = NumTarget(250)
trigger4 = Target(250),StateType != A
trigger4 = Target(250),MoveType = H
trigger5 = Var(59) < (1000*(AILevel**2/64.0))
trigger5 = Ctrl || StateNo = 100
trigger5 = NumHelper(6040)
trigger5 = Helper(6040),Var(16)
trigger5 = EnemyNear,StateType != A

;---------------------------------------------------------------------------
;AI Somersault Kick
[State -1, Somersault Kick]
type = ChangeState
value = 1100
triggerall = AILevel
triggerall = Var(50) >= 10
triggerall = Var(54) > 0
triggerall = NumEnemy
triggerall = P2Life > 0
triggerall = (P2BodyDist X = [0,62]) || (StateNo = 420) || (StateNo = 450) || (NumTarget(242)) || (NumTarget(252)) || (NumTarget(800) && FrontEdgeDist <= 50) || (NumTarget(1411))
triggerall = RoundState = 2 && StateType != A
;triggerall = !(StateNo = 420 && NumHelper(621))
triggerall = StateNo != [1000,4999]
triggerall = !((EnemyNear,Pos Y != [-115,-15]) && EnemyNear,StateType = A && StateNo != 450)
triggerall = EnemyNear,StateType != L
triggerall = !(TeamMode = Simul && EnemyNear,MoveType != H)
triggerall = !(Enemy,TeamMode = Simul && EnemyNear,MoveType != H)
trigger1 = Var(59) < (1000*(AILevel**2/64.0))
trigger1 = Ctrl
trigger1 = EnemyNear,StateType = A
;trigger1 = EnemyNear,Pos Y <= -5 && EnemyNear,Pos Y > -70
trigger2 = Var(59) < (1000*(AILevel**2/64.0))
trigger2 = Ctrl
trigger2 = EnemyNear,MoveType = H
trigger2 = EnemyNear,StateType != A
trigger2 = EnemyNear,StateType != L
trigger3 = Var(59) < (1000*(AILevel**2/64.0))
trigger3 = Var(17) = 1
;trigger3 = EnemyNear,Pos Y > -70
trigger4 = Var(59) < (1000*(AILevel**2/64.0))
trigger4 = Ctrl
trigger4 = NumTarget(1300)
;trigger4 = Target(1300),Pos Y <= -5 && EnemyNear,Pos Y > -70
trigger5 = Var(59) < (1000*(AILevel**2/64.0))
trigger5 = Ctrl
trigger5 = NumTarget(1301)
;trigger5 = Target(1301),Pos Y <= -5 && EnemyNear,Pos Y > -70
trigger6 = Var(59) < (1000*(AILevel**2/64.0))
trigger6 = Ctrl
trigger6 = NumTarget(1302)
;trigger6 = Target(1302),Pos Y <= -5 && EnemyNear,Pos Y > -70
trigger7 = Var(59) < (1000*(AILevel**2/64.0))
trigger7 = NumHelper(6042)
trigger7 = Helper(6042),Var(16)
trigger7 = EnemyNear,MoveType = H
trigger7 = Ctrl

;---------------------------------------------------------------------------
;AI Buster Saw
[State -1, Buster Saw]
type = ChangeState
value = 3300
triggerall = AILevel
triggerall = P2Life > 0
triggerall = Power > 1000
triggerall = P2BodyDist X <= 48
triggerall = Pos Y <= -50
triggerall = !MoveGuarded
triggerall = RoundState = 2 && StateType = A
triggerall = StateNo != [3000,4999]
triggerall = NumEnemy
triggerall = !(EnemyNear,Pos Y >= 0 && P2BodyDist X > 50)
triggerall = EnemyNear,StateNo != [120,155]
triggerall = EnemyNear,StateNo != [700,702]
trigger1 = Var(59) < (1000*(AILevel**2/64.0))
trigger1 = Var(19) = 2

;---------------------------------------------------------------------------
;AI EX Tempest Cutter
[State -1, EX Tempest Cutter]
type = ChangeState
value = 1650
triggerall = AILevel
triggerall = Power >= 2000
triggerall = Pos Y <= -15
triggerall = Vel X >= 0 || (StateNo = 1704 || StateNo = 1714)
triggerall = FrontEdgeDist > 100
triggerall = P2Dist X > 0
triggerall = P2BodyDist X <= 50
triggerall = P2Dist Y >= -50 && P2Dist Y <= 30;Abs(P2BodyDist Y) <= 20
triggerall = RoundState = 2 && StateType = A
triggerall = StateNo != [1600,1610]
triggerall = NumEnemy
triggerall = EnemyNear,StateType = A
trigger1 = Var(59) < (800*(AILevel**2/64.0))
trigger1 = Ctrl
trigger2 = Var(59) < (800*(AILevel**2/64.0))
trigger2 = Var(17) = 2

;---------------------------------------------------------------------------
;AI Tempest Cutter
[State -1, Tempest Cutter]
type = ChangeState
value = 1600
triggerall = AILevel
triggerall = Pos Y <= -20
triggerall = Vel X >= 0 || (StateNo = 1704 || StateNo = 1714)
triggerall = P2Dist X > 0
triggerall = P2BodyDist X <= 40
triggerall = P2Dist Y >= -50 && P2Dist Y <= 40
triggerall = StateType = A
triggerall = StateNo != [1600,1610]
triggerall = NumEnemy
triggerall = EnemyNear,StateType = A
trigger1 = Var(59) < (1000*(AILevel**2/64.0))
trigger1 = Ctrl
trigger2 = Var(59) < (1000*(AILevel**2/64.0))
trigger2 = Var(17) = 2

;---------------------------------------------------------------------------
;AI EX Air Sonic Flash
[State -1, EX Air Sonic Flash]
type = ChangeState
value = 1710
triggerall = AILevel
triggerall = Var(1) != 6
triggerall = Var(54) > 0
triggerall = NumEnemy
triggerall = Power >= 1500
triggerall = P2Life > 0
triggerall = P2Dist X > 0
triggerall = P2BodyDist X <= 200
triggerall = P2Dist Y >= -50 && P2Dist Y <= 15
triggerall = !(EnemyNear,MoveType != H && FrontEdgeDist > 80)
triggerall = StateType = A
triggerall = StateNo != [1700,1704]
triggerall = StateNo != [1710,1714]
triggerall = EnemyNear,StateType != L
triggerall = EnemyNear,StateType != C
triggerall = EnemyNear,StateNo != [120,155]
trigger1 = Var(59) < (200*(AILevel**2/64.0))
trigger1 = Ctrl
trigger2 = Var(59) < (1000*(AILevel**2/64.0))
trigger2 = Var(17) = 2
trigger3 = Var(59) < (1000*(AILevel**2/64.0))
trigger3 = Ctrl
trigger3 = PlayerIdExist(Helper(33333333),Var(23))
trigger3 = P2BodyDist X <= 200
trigger4 = Var(59) < (1000*(AILevel**2/64.0))
trigger4 = Ctrl
trigger4 = EnemyNear,NumProj
trigger4 = P2BodyDist X <= 200

;---------------------------------------------------------------------------
;AI Somersault Shell
[State -1, Somersault Shell]
type = ChangeState
value = 1110
triggerall = AILevel
triggerall = Var(50) >= 10
triggerall = Var(54) > 0
triggerall = P2Life > 0
triggerall = Power >= 1000
triggerall = !MoveGuarded
triggerall = (P2BodyDist X = [0,72]) || (NumTarget(800) && FrontEdgeDist <= 50)
triggerall = EnemyNear,Pos Y > -115
triggerall = RoundState = 2 && StateType != A
triggerall = !(StateNo = 100 && EnemyNear,StateType = A && EnemyNear,Pos Y > -5)
triggerall = StateNo != 200
triggerall = Anim != 220
triggerall = StateNo != 400
triggerall = !(StateNo = 420 && NumHelper(621))
triggerall = StateNo != 430
triggerall = StateNo != [1000,4999]
triggerall = NumEnemy
triggerall = EnemyNear,StateType != L
triggerall = !(TeamMode = Simul && EnemyNear,MoveType != H)
triggerall = !(Enemy,TeamMode = Simul && EnemyNear,MoveType != H)
triggerall = !MoveGuarded
trigger1 = Var(59) < (1000*(AILevel**2/64.0))
trigger1 = Ctrl
trigger1 = EnemyNear,StateType = A
trigger1 = EnemyNear,Pos Y <= -20 && EnemyNear,Pos Y > -120
trigger2 = Var(59) < (1000*(AILevel**2/64.0))
trigger2 = Ctrl
trigger2 = EnemyNear,MoveType = H
trigger2 = EnemyNear,StateType != A
trigger2 = EnemyNear,StateType != L
trigger3 = Var(59) < (1000*(AILevel**2/64.0))
trigger3 = Var(17) = 1
trigger4 = Var(59) < (1000*(AILevel**2/64.0))
trigger4 = Ctrl
trigger4 = NumTarget(1300)
trigger4 = Target(1300),Pos Y <= -20
trigger5 = Var(59) < (1000*(AILevel**2/64.0))
trigger5 = Ctrl
trigger5 = NumTarget(1301)
trigger5 = Target(1301),Pos Y <= -20
trigger6 = Var(59) < (1000*(AILevel**2/64.0))
trigger6 = Ctrl
trigger6 = NumTarget(1302)
trigger6 = Target(1302),Pos Y <= -20
trigger7 = Var(59) < (1000*(AILevel**2/64.0))
trigger7 = NumHelper(6042)
trigger7 = Helper(6042),Var(16)
trigger7 = EnemyNear,MoveType = H
trigger7 = Ctrl

;---------------------------------------------------------------------------
;AI EX Sonic Blade
[State -1, EX Sonic Blade]
type = ChangeState
value = 1210
triggerall = AILevel
triggerall = Var(54) > 0
triggerall = P2Life > 0
triggerall = Power >= 500 && Power < 4000
triggerall = NumEnemy
triggerall = EnemyNear,StateNo != [3252,3257]
triggerall = EnemyNear,StateType != A
triggerall = P2BodyDist X = [20,150]
triggerall = !(P2BodyDist X <= 80 && EnemyNear,StateType = L)
triggerall = RoundState = 2 && StateType != A
triggerall = StateNo != [1000,4999]
triggerall = !(NumTarget(200) && HitCount < 3)
triggerall = !(NumTarget(210) && EnemyNear,Vel Y > 0)
triggerall = !(NumTarget(210) && EnemyNear,Vel Y < 0)
triggerall = !NumTarget(250)
triggerall = !(NumTarget(400) && HitCount < 3)
triggerall = !(NumTarget(430) && HitCount < 3)
triggerall = !NumTarget(1401)
triggerall = !(NumTarget(3321) && P2BodyDist X > 20)
triggerall = !NumHelper(6040)
triggerall = !NumHelper(6050)
triggerall = EnemyNear,StateNo != [120,155]
trigger1 = Var(59) < (100*(AILevel**2/64.0))
trigger1 = Ctrl
trigger1 = !(EnemyNear,Name = "Ryu" && EnemyNear,AuthorName = "Burn" && EnemyNear,MoveType != H)
;trigger1 = !(EnemyNear,Name = "Ken" && EnemyNear,AuthorName = "Burn" && EnemyNear,MoveType != H)
trigger2 = Var(59) < (1000*(AILevel**2/64.0))
trigger2 = Var(18) = 1
trigger2 = P2BodyDist X <= 130
trigger2 = StateNo != 100
trigger3 = Var(59) < (500*(AILevel**2/64.0))
trigger3 = Var(18) = 1
trigger3 = StateNo = 100
trigger3 = P2BodyDist X = [150,1000]

;---------------------------------------------------------------------------
;AI EX Moonsault Slash
[State -1, EX Moonsault Slash]
type = ChangeState
value = 1410
triggerall = AILevel
triggerall = Var(54) > 0
triggerall = P2Life > 0
triggerall = Power >= 500
triggerall = NumEnemy
triggerall = EnemyNear,StateType != L
triggerall = P2BodyDist X <= 97
triggerall = EnemyNear,Pos Y >= -20
triggerall = RoundState = 2 && StateType != A
triggerall = !(StateNo = 450 && Var(50) >= 10); && (P2BodyDist X <= 62))
triggerall = EnemyNear,StateNo != [120,155]
triggerall = StateNo != [1000,4999]
triggerall = !(Anim = 241 && EnemyNear,StateType = A)
triggerall = !(NumTarget(200) && HitCount < 3)
triggerall = !NumTarget(250)
triggerall = !(NumTarget(400) && HitCount < 3)
triggerall = !(StateNo = 420 && Var(50) = 10)
triggerall = !(NumTarget(430) && HitCount < 3)
triggerall = !NumTarget(631)
triggerall = !NumTarget(800)
triggerall = !NumTarget(1300)
triggerall = !NumTarget(1301)
triggerall = !NumTarget(1302)
triggerall = !NumTarget(1401)
triggerall = !NumTarget(1411)
triggerall = !NumHelper(421)
triggerall = !(P2BodyDist X < 60 && NumHelper(6050))
trigger1 = Var(59) < (100*(AILevel**2/64.0))
trigger1 = Ctrl
trigger1 = EnemyNear,MoveType = H
trigger1 = EnemyNear,StateType != A
trigger2 = Var(59) < (410*(AILevel**2/64.0))
trigger2 = Var(18) = 1
trigger2 = StateNo != 100
trigger3 = Var(59) < (410*(AILevel**2/64.0))
trigger3 = Var(18) = 1
trigger3 = StateNo = 100
trigger3 = P2BodyDist X >= 100
trigger3 = EnemyNear,StateType != A

;---------------------------------------------------------------------------
;AI Buster Blade
[State -1, Buster Blade]
type = ChangeState
value = 1500
triggerall = AILevel
;triggerall = Var(54) > 0
triggerall = P2Life > 0
triggerall = Pos Y <= -30 && Pos Y >= -150
triggerall = P2Dist X > 20
triggerall = RoundState = 2 && StateType = A
triggerall = StateNo != [1000,4999]
triggerall = NumEnemy
triggerall = !NumHelper(6060)
triggerall = !NumHelper(6065)
triggerall = !(EnemyNear,AuthorName = "Burn" && EnemyNear,Name = "Ken" && P2BodyDist X <= 110 && EnemyNear,MoveType != H)
trigger1 = Var(59) < (1000*(AILevel**2/64.0))
trigger1 = Ctrl
trigger1 = P2BodyDist X = [10,500]
trigger1 = P2Dist Y < 40
trigger1 = !(EnemyNear,Name = "Ryu" && EnemyNear,AuthorName = "Burn" && EnemyNear,MoveType != H)
trigger2 = Var(59) < (1000*(AILevel**2/64.0))
trigger2 = Var(17) = 2
trigger2 = P2Dist Y < -10

;---------------------------------------------------------------------------
;AI EX Buster Blade
[State -1, Buster Blade]
type = ChangeState
value = 1510
triggerall = AILevel
triggerall = Var(54) > 0
triggerall = P2Life > 0
triggerall = Power >= 1000 && Power < 4000
triggerall = Pos Y <= -30
triggerall = P2BodyDist X >= 20 && P2BodyDist X <= 200
triggerall = RoundState = 2 && StateType = A
triggerall = StateNo != [1000,4999]
triggerall = NumEnemy
triggerall = !NumHelper(6040)
triggerall = !NumHelper(6060)
triggerall = !NumHelper(6065)
trigger1 = Var(59) < (1000*(AILevel**2/64.0))
trigger1 = Ctrl
trigger1 = P2BodyDist X = [0,200]
trigger1 = !(EnemyNear,Name = "Ryu" && EnemyNear,AuthorName = "Burn" && EnemyNear,MoveType != H)
trigger2 = Var(59) < (1000*(AILevel**2/64.0))
trigger2 = Var(17) = 2

;---------------------------------------------------------------------------
;AI Air Sonic Flash
[State -1, Air Sonic Flash]
type = ChangeState
value = 1700
triggerall = AILevel
triggerall = Var(1) != 5
triggerall = Var(54) > 0
triggerall = NumEnemy
triggerall = P2Life > 0
triggerall = P2Dist X > 0
triggerall = P2BodyDist X <= 200
triggerall = P2Dist Y >= -50 && P2Dist Y <= 15
triggerall = !(EnemyNear,MoveType != H && FrontEdgeDist > 80)
triggerall = StateType = A
triggerall = StateNo != [1700,1704]
triggerall = EnemyNear,StateType != L
triggerall = EnemyNear,StateType != C
trigger1 = Var(59) < (200*(AILevel**2/64.0))
trigger1 = Ctrl
trigger2 = Var(59) < (1000*(AILevel**2/64.0))
trigger2 = Var(17) = 2
trigger3 = Var(59) < (1000*(AILevel**2/64.0))
trigger3 = Ctrl
trigger3 = PlayerIdExist(Helper(33333333),Var(23))
trigger3 = P2BodyDist X <= 200
trigger4 = Var(59) < (1000*(AILevel**2/64.0))
trigger4 = Ctrl
trigger4 = EnemyNear,NumProj
trigger4 = P2BodyDist X <= 200

;---------------------------------------------------------------------------
;AI Moonsault Slash
[State -1, Moonsault Slash]
type = ChangeState
value = 1400
triggerall = AILevel
triggerall = Var(54) > 0
triggerall = P2Life > 0
triggerall = NumEnemy
triggerall = EnemyNear,StateType != L
triggerall = P2BodyDist X <= 95;101
triggerall = EnemyNear,Pos Y >= -20
triggerall = RoundState = 2 && StateType != A
triggerall = !(StateNo = 450 && Var(50) >= 10 && (P2BodyDist X < 62));62
triggerall = StateNo != [1000,4999]
triggerall = !(Anim = 241 && EnemyNear,StateType = A)
triggerall = !NumTarget(200)
triggerall = !NumTarget(250)
triggerall = StateNo != 400
triggerall = !(StateNo = 420 && Var(50) = 10)
triggerall = StateNo != 430
triggerall = !NumTarget(631)
triggerall = !NumTarget(1300)
triggerall = !NumTarget(1301)
triggerall = !NumTarget(1302)
triggerall = !NumTarget(1401)
triggerall = !NumTarget(1411)
triggerall = !NumHelper(421)
triggerall = !NumHelper(6050)
trigger1 = Var(59) < (400*(AILevel**2/64.0))
trigger1 = Ctrl
trigger1 = EnemyNear,MoveType = H
trigger1 = EnemyNear,StateType != A
trigger2 = Var(59) < (400*(AILevel**2/64.0))
trigger2 = Var(18) = 1
trigger2 = StateNo != 100
trigger3 = Var(59) < (400*(AILevel**2/64.0))
trigger3 = Var(18) = 1
trigger3 = StateNo = 100
trigger3 = P2BodyDist X >= 100
trigger4 = Var(59) < (200*(AILevel**2/64.0))
trigger4 = Ctrl
trigger4 = EnemyNear,MoveType = H
trigger4 = EnemyNear,StateType = A
trigger4 = EnemyNear,Vel Y < 0
trigger4 = P2BodyDist X <= 40
trigger4 = EnemyNear,Pos Y >= -40
trigger5 = Var(59) < (200*(AILevel**2/64.0))
trigger5 = Ctrl
trigger5 = EnemyNear,MoveType = H
trigger5 = EnemyNear,StateType = A
trigger5 = EnemyNear,Vel Y >= 0
trigger5 = P2BodyDist X <= 40
trigger5 = EnemyNear,Pos Y <= -50
trigger6 = Var(59) < (1000*(AILevel**2/64.0))
trigger6 = Ctrl
trigger6 = NumTarget(800)
trigger6 = P2BodyDist X <= 40
trigger6 = EnemyNear,Pos Y <= -20
trigger7 = Var(59) < (1000*(AILevel**2/64.0))
trigger7 = NumHelper(6000)
trigger7 = Helper(6000),Var(16)
trigger7 = EnemyNear,MoveType = H
trigger7 = Ctrl
trigger8 = Var(59) < (1000*(AILevel**2/64.0))
trigger8 = NumHelper(6042)
trigger8 = Helper(6042),Var(16)
trigger8 = EnemyNear,MoveType = H
trigger8 = Ctrl
trigger9 = Var(59) < (1000*(AILevel**2/64.0))
trigger9 = NumHelper(6050)
trigger9 = Helper(6050),Var(16)
trigger9 = EnemyNear,MoveType = H
trigger9 = P2BodyDist X >= 60
trigger9 = Ctrl

;---------------------------------------------------------------------------
;AI Sonic Twister
[State -1, Sonic Twister]
type = ChangeState
value = 1010
triggerall = AILevel
triggerall = Var(48) >= 10
triggerall = P2Life > 0
triggerall = P2BodyDist X = [0,300]
triggerall = NumEnemy
triggerall = Power >= 500 && Power < 4000
triggerall = RoundState = 2 && StateType != A
triggerall = StateNo != [1000,4999]
triggerall = !NumTarget(223)
triggerall = !(NumHelper(6000) && FrontEdgeDist <= 130)
triggerall = !NumHelper(6010)
triggerall = !(EnemyNear,StateType = A && P2BodyDist X > 30)
trigger1 = Var(59) < (1000*(AILevel**2/64.0))
trigger1 = Ctrl
trigger2 = Var(59) < (1000*(AILevel**2/64.0))
trigger2 = Var(17) = 1
trigger2 = StateNo != 100
trigger3 = Var(59) < (1000*(AILevel**2/64.0))
trigger3 = Var(17) = 1
trigger3 = StateNo = 100
trigger3 = P2BodyDist X = [150,1000]

;---------------------------------------------------------------------------
;AI Sonic Blade
[State -1, Sonic Blade]
type = ChangeState
value = 1200
triggerall = AILevel
triggerall = Var(48) < 10
triggerall = Var(50) < 10
triggerall = Var(55) < 60
triggerall = P2Life > 0
triggerall = NumEnemy
triggerall = EnemyNear,StateNo != [3252,3257]
triggerall = !(EnemyNear,MoveType != H && EnemyNear,StateType = A)
triggerall = !(EnemyNear,AuthorName = "Burn" && EnemyNear,Name = "Ken" && EnemyNear,StateType = L)
triggerall = ((P2BodyDist X = [20,90]) || EnemyNear,StateType = L)
triggerall = !(P2BodyDist X < 70 && EnemyNear,MoveType = A)
triggerall = RoundState = 2 && StateType != A
triggerall = StateNo != [1000,4999]
triggerall = !NumTarget(200)
triggerall = !NumTarget(250)
triggerall = StateNo != 400
;triggerall = !(StateNo = 420 && Var(55) > 20)
triggerall = StateNo != 430
triggerall = !NumTarget(1401)
triggerall = !NumTarget(1411)
triggerall = !(NumTarget(3023) && P2BodyDist X >= 40)
triggerall = !(NumTarget(3107) && FrontEdgeDist >= 40)
triggerall = !(NumTarget(3321) && P2BodyDist X > 20)
triggerall = !(NumHelper(6000) && FrontEdgeDist <= 130)
triggerall = !NumHelper(6040)
triggerall = !NumHelper(6050)
trigger1 = Var(59) < (300*(AILevel**2/64.0))
trigger1 = Ctrl
;trigger1 = !(EnemyNear,Name = "Ryu" && EnemyNear,AuthorName = "Burn" && EnemyNear,MoveType != H)
;trigger1 = !(EnemyNear,Name = "Ken" && EnemyNear,AuthorName = "Burn" && EnemyNear,MoveType != H)
trigger2 = Var(59) < (1000*(AILevel**2/64.0))
trigger2 = Var(18) = 1
trigger2 = !(StateNo != 420 && EnemyNear,StateType = A && P2BodyDist X > 30)
trigger2 = StateNo != 100
trigger3 = Var(59) < (200*(AILevel**2/64.0))
trigger3 = Var(18) = 1
trigger3 = StateNo = 100
trigger3 = P2BodyDist X = [130,150]
trigger3 = !(EnemyNear,StateType = A && P2BodyDist X > 30)

;---------------------------------------------------------------------------
;AI Sonic Flash
[State -1, Sonic Flash]
type = ChangeState
value = 1300
triggerall = AILevel
triggerall = Var(54) > 0
triggerall = P2Life > 0
triggerall = NumEnemy
triggerall = EnemyNear,StateType != L
triggerall = !((EnemyNear,Pos Y != [-53,-20]) && EnemyNear,StateType = A)
triggerall = P2BodyDist X <= 200
triggerall = RoundState = 2 && StateType != A
triggerall = StateNo != [1000,4999]
triggerall = !MoveGuarded
triggerall = EnemyNear,StateNo != [120,155]
triggerall = !NumTarget(200)
triggerall = !NumTarget(251)
triggerall = Anim != 251
triggerall = StateNo != 400
triggerall = StateNo != 430
triggerall = !NumTarget(451)
triggerall = !NumTarget(1300)
triggerall = !NumTarget(1301)
triggerall = !NumTarget(1302)
triggerall = !NumTarget(1310)
triggerall = !(EnemyNear,Name = "Ryu" && EnemyNear,AuthorName = "Burn" && (EnemyNear,StateNo = [1010,1012]))
triggerall = !(NumHelper(421) && P2Dist Y <= -1)
trigger1 = Var(59) < (200*(AILevel**2/64.0))
trigger1 = Ctrl
trigger1 = EnemyNear,MoveType = H
trigger1 = EnemyNear,StateType != A
trigger1 = P2BodyDist X = [30,150]
trigger2 = Var(59) < (800*(AILevel**2/64.0))
trigger2 = Var(18) = 1
trigger2 = StateNo != 100
trigger2 = EnemyNear,Vel Y > 0
trigger3 = Var(59) < (200*(AILevel**2/64.0))
trigger3 = Var(18) = 1
trigger3 = StateNo = 100
trigger3 = P2BodyDist X = [150,500]
trigger4 = Var(59) < (100*(AILevel**2/64.0))
trigger4 = Ctrl
trigger4 = EnemyNear,MoveType = H
trigger4 = EnemyNear,StateType = A
trigger4 = EnemyNear,Pos Y = [-30,-10]
trigger4 = EnemyNear,Vel Y <= 0
trigger5 = Var(59) < (800*(AILevel**2/64.0))
trigger5 = Ctrl
trigger5 = StateNo != 420
trigger5 = EnemyNear,MoveType = H
trigger5 = EnemyNear,StateType = A
trigger5 = EnemyNear,Pos Y = [-60,-50]
trigger5 = EnemyNear,Vel Y >= 0
trigger6 = Var(59) < (1000*(AILevel**2/64.0))
trigger6 = Ctrl
trigger6 = PlayerIdExist(Helper(33333333),Var(23))
trigger6 = P2BodyDist X <= 200
trigger7 = Var(59) < (1000*(AILevel**2/64.0))
trigger7 = Ctrl
trigger7 = EnemyNear,NumProj
trigger7 = P2BodyDist X <= 200
trigger8 = Var(59) < (1000*(AILevel**2/64.0))
trigger8 = Ctrl || StateNo = 100
trigger8 = NumHelper(6040)
trigger8 = Helper(6040),Var(16)
trigger8 = EnemyNear,MoveType = H
trigger8 = EnemyNear,StateType != A
trigger8 = EnemyNear,StateNo != [120,155]
trigger8 = P2BodyDist X >= 50

;---------------------------------------------------------------------------
;AI EX Sonic Flash
[State -1, EX Sonic Flash]
type = ChangeState
value = 1310
triggerall = AILevel
triggerall = Var(54) > 0
triggerall = P2Life > 0
triggerall = Power >= 1000 && Power < 4000
triggerall = NumEnemy
triggerall = EnemyNear,StateType != L
triggerall = EnemyNear,StateType != A
triggerall = EnemyNear,BackEdgeDist > 30
triggerall = !((EnemyNear,Pos Y != [-60,-20]) && EnemyNear,StateType = A)
triggerall = P2BodyDist X <= 210
triggerall = RoundState = 2 && StateType != A
triggerall = StateNo != [1000,4999]
triggerall = !MoveGuarded
triggerall = EnemyNear,StateNo != [120,155]
triggerall = EnemyNear,StateNo != [3252,3257]
triggerall = !NumTarget(200)
triggerall = !NumTarget(251)
triggerall = Anim != 251
triggerall = StateNo != 400
triggerall = StateNo != 430
triggerall = !NumTarget(1300)
triggerall = !NumTarget(1301)
triggerall = !NumTarget(1302)
triggerall = !NumTarget(1310)
triggerall = !(EnemyNear,Name = "Ryu" && EnemyNear,AuthorName = "Burn" && (EnemyNear,StateNo = [1010,1012]))
triggerall = !(NumHelper(421) && P2Dist Y <= -1)
trigger1 = Var(59) < (1000*(AILevel**2/64.0))
trigger1 = Ctrl
trigger1 = EnemyNear,MoveType = H
trigger1 = P2BodyDist X = [30,130]
trigger2 = Var(59) < (1000*(AILevel**2/64.0))
trigger2 = Var(18) = 1
trigger2 = StateNo != 100
trigger3 = Var(59) < (500*(AILevel**2/64.0))
trigger3 = Var(18) = 1
trigger3 = StateNo = 100
trigger3 = P2BodyDist X = [80,130]
trigger3 = EnemyNear,Pos Y = [-80,-60]
trigger4 = Var(59) < (1000*(AILevel**2/64.0))
trigger4 = Ctrl
trigger4 = PlayerIdExist(Helper(33333333),Var(23))
trigger4 = P2BodyDist X <= 250
trigger5 = Var(59) < (1000*(AILevel**2/64.0))
trigger5 = Ctrl
trigger5 = EnemyNear,NumProj
trigger5 = P2BodyDist X <= 250
trigger6 = Var(59) < (1000*(AILevel**2/64.0))
trigger6 = Ctrl || StateNo = 100
trigger6 = NumHelper(6040)
trigger6 = Helper(6040),Var(16)
trigger6 = EnemyNear,MoveType = H
trigger6 = EnemyNear,StateType != A
trigger6 = EnemyNear,StateNo != [120,155]
trigger6 = P2BodyDist X >= 60

;---------------------------------------------------------------------------
;AI Sonic Hurricane L
[State -1, Sonic Hurricane L]
type = ChangeState
value = 3000
triggerall = AILevel
triggerall = (Var(48) >= 10) || ((StateNo = 1000 && AnimElemTime(5) < 3) || (StateNo = 1010 && AnimElemTime(5) < 3))
triggerall = P2Life > 0
triggerall = Power >= 1000 && Power < 2000
triggerall = P2BodyDist X = [0,85]
triggerall = RoundState = 2 && StateType != A
triggerall = StateNo != 200
triggerall = StateNo != 230
triggerall = StateNo != 400
triggerall = StateNo != 430
triggerall = StateNo != [1005,1006]
triggerall = StateNo != 1010
triggerall = StateNo != 1200
triggerall = StateNo != 1210
triggerall = StateNo != [3000,4999]
triggerall = NumEnemy
triggerall = EnemyNear,MoveType = H
triggerall = EnemyNear,StateType != L
triggerall = EnemyNear,StateNo != [120,155]
triggerall = !NumHelper(421)
triggerall = !NumHelper(6020)
trigger1 = Var(59) < (1000*(AILevel**2/64.0))
trigger1 = Ctrl
trigger1 = EnemyNear,MoveType = H
trigger1 = EnemyNear,StateType = A
trigger1 = EnemyNear,Pos Y = [-50,-30]
trigger2 = Var(59) < (1000*(AILevel**2/64.0))
trigger2 = Ctrl
trigger2 = EnemyNear,MoveType = H
trigger2 = EnemyNear,StateType != A
trigger3 = Var(59) < (1000*(AILevel**2/64.0))
trigger3 = Var(19) = 1
trigger3 = EnemyNear,StateType = A
trigger3 = EnemyNear,Pos Y = [-50,-30]
trigger4 = Var(59) < (1000*(AILevel**2/64.0))
trigger4 = Var(19) = 1
trigger4 = EnemyNear,StateType != A
trigger5 = Var(59) < (1000*(AILevel**2/64.0))
trigger5 = NumHelper(6000)
trigger5 = Helper(6000),Var(16)
trigger5 = Helper(6000),NumTarget(6000)
trigger5 = !MoveGuarded
trigger5 = Ctrl
trigger6 = Var(59) < (1000*(AILevel**2/64.0))
trigger6 = NumHelper(6010)
trigger6 = Helper(6010),Var(16)
trigger6 = Helper(6010),NumTarget(6012)
trigger6 = !MoveGuarded
trigger6 = Ctrl
trigger7 = Var(59) < (1000*(AILevel**2/64.0))
trigger7 = NumHelper(6040)
trigger7 = Helper(6040),Var(16)
trigger7 = Helper(6040),NumTarget(6040)
trigger7 = !MoveGuarded
trigger7 = Ctrl
trigger8 = Var(59) < (1000*(AILevel**2/64.0))
trigger8 = NumHelper(6042)
trigger8 = Helper(6042),Var(16)
trigger8 = EnemyNear,MoveType = H
trigger8 = Ctrl
trigger9 = Var(59) < (1000*(AILevel**2/64.0))
trigger9 = NumHelper(6050)
trigger9 = Helper(6050),Var(16)
trigger9 = Helper(6050),NumTarget(6050)
trigger9 = !MoveGuarded
trigger9 = Ctrl
trigger10 = Var(59) < (1000*(AILevel**2/64.0))
trigger10 = Ctrl
trigger10 = NumTarget(241)
trigger10 = Target(241),MoveType = H
trigger10 = Target(241),StateType = A
trigger11 = Var(59) < (1000*(AILevel**2/64.0))
trigger11 = Ctrl
trigger11 = NumTarget(800)
trigger11 = Target(800),MoveType = H
trigger11 = Target(800),StateType = A
trigger11 = Target(800),Pos Y = [-50,-30]

;---------------------------------------------------------------------------
;AI Sonic Hurricane M
[State -1, Sonic Hurricane M]
type = ChangeState
value = 3000
triggerall = AILevel
triggerall = (Var(48) >= 10) || ((StateNo = 1000 && AnimElemTime(5) < 3) || (StateNo = 1010 && AnimElemTime(5) < 3))
triggerall = P2Life > 0
triggerall = Power >= 2000 && Power < 3000
triggerall = P2BodyDist X = [0,300]
triggerall = RoundState = 2 && StateType != A
triggerall = StateNo != 200
triggerall = StateNo != 230
triggerall = StateNo != 400
triggerall = StateNo != 430
triggerall = StateNo != [1005,1006]
triggerall = StateNo != 1010
triggerall = StateNo != 1200
triggerall = StateNo != 1210
triggerall = StateNo != [3000,4999]
triggerall = NumEnemy
triggerall = EnemyNear,MoveType = H
triggerall = EnemyNear,StateNo != [120,155]
triggerall = !NumHelper(421)
triggerall = !NumHelper(6020)
triggerall = !NumHelper(6022)
trigger1 = Var(59) < (1000*(AILevel**2/64.0))
trigger1 = Ctrl
trigger1 = EnemyNear,MoveType = H
trigger1 = EnemyNear,StateType = A
trigger1 = EnemyNear,Pos Y = [-80,-10]
trigger2 = Var(59) < (1000*(AILevel**2/64.0))
trigger2 = Ctrl
trigger2 = EnemyNear,MoveType = H
trigger2 = EnemyNear,StateType != A
trigger3 = Var(59) < (1000*(AILevel**2/64.0))
trigger3 = Var(19) = 1
trigger3 = EnemyNear,StateType = A
trigger3 = EnemyNear,Pos Y = [-80,-10]
trigger4 = Var(59) < (1000*(AILevel**2/64.0))
trigger4 = Var(19) = 1
trigger4 = EnemyNear,StateType != A
trigger5 = Var(59) < (1000*(AILevel**2/64.0))
trigger5 = NumHelper(6000)
trigger5 = Helper(6000),Var(16)
trigger5 = Helper(6000),NumTarget(6000)
trigger5 = !MoveGuarded
trigger5 = Ctrl
trigger6 = Var(59) < (1000*(AILevel**2/64.0))
trigger6 = NumHelper(6010)
trigger6 = Helper(6010),Var(16)
trigger6 = Helper(6010),NumTarget(6012)
trigger6 = !MoveGuarded
trigger6 = Ctrl
trigger7 = Var(59) < (1000*(AILevel**2/64.0))
trigger7 = NumHelper(6040)
trigger7 = Helper(6040),Var(16)
trigger7 = Helper(6040),NumTarget(6040)
trigger7 = !MoveGuarded
trigger7 = Ctrl
trigger8 = Var(59) < (1000*(AILevel**2/64.0))
trigger8 = NumHelper(6042)
trigger8 = Helper(6042),Var(16)
trigger8 = EnemyNear,MoveType = H
trigger8 = Ctrl
trigger9 = Var(59) < (1000*(AILevel**2/64.0))
trigger9 = NumHelper(6050)
trigger9 = Helper(6050),Var(16)
trigger9 = Helper(6050),NumTarget(6050)
trigger9 = !MoveGuarded
trigger9 = Ctrl
trigger10 = Var(59) < (1000*(AILevel**2/64.0))
trigger10 = Ctrl
trigger10 = NumTarget(241)
trigger10 = Target(241),MoveType = H
trigger10 = Target(241),StateType = A
trigger11 = Var(59) < (1000*(AILevel**2/64.0))
trigger11 = Ctrl
trigger11 = NumTarget(800)
trigger11 = Target(800),MoveType = H
trigger11 = Target(800),StateType = A
trigger11 = Target(800),Pos Y = [-80,-10]
trigger12 = Var(59) < (1000*(AILevel**2/64.0))
trigger12 = Ctrl
trigger12 = EnemyNear,MoveType = H
trigger12 = EnemyNear,StateNo = 2000
trigger12 = EnemyNear,StateType != A
trigger13 = Var(59) < (1000*(AILevel**2/64.0))
trigger13 = Ctrl
trigger13 = EnemyNear,MoveType = H
trigger13 = EnemyNear,StateNo = 2001
trigger13 = EnemyNear,StateType = A
trigger13 = EnemyNear,Pos Y = [-80,-10]

;---------------------------------------------------------------------------
;AI Somersault Strike L
[State -1, Somersault Strike]
type = ChangeState
value = 3100
triggerall = AILevel
triggerall = P2Life > 0
triggerall = Power >= 1000 && Power < 2000
triggerall = P2BodyDist X = [0,60]
triggerall = P2Dist Y >= -40
triggerall = !(P2Dist Y <= -20 && P2Dist X <= 5)
triggerall = RoundState = 2 && StateType != A
triggerall = StateNo != 200
triggerall = StateNo != 230
triggerall = StateNo != 400
triggerall = StateNo != 430
triggerall = StateNo != 1000
triggerall = StateNo != 1010
triggerall = StateNo != [1200,1210]
triggerall = StateNo != [3000,4999]
triggerall = NumEnemy
triggerall = EnemyNear,MoveType = H
triggerall = EnemyNear,StateType != A
triggerall = EnemyNear,StateType != L
triggerall = EnemyNear,StateNo != [120,155]
triggerall = !NumHelper(6010)
triggerall = !NumHelper(6020)
trigger1 = Var(59) < (500*(AILevel**2/64.0))
trigger1 = Ctrl
trigger1 = EnemyNear,MoveType = H
trigger1 = EnemyNear,StateType = A
trigger1 = EnemyNear,Pos Y = [-40,-25]
trigger2 = Var(59) < (500*(AILevel**2/64.0))
trigger2 = Ctrl
trigger2 = EnemyNear,MoveType = H
trigger2 = EnemyNear,StateType != A
trigger3 = Var(59) < (500*(AILevel**2/64.0))
trigger3 = Var(19) = 1
trigger3 = EnemyNear,StateType = A
trigger3 = EnemyNear,Pos Y = [-40,-25]
trigger4 = Var(59) < (500*(AILevel**2/64.0))
trigger4 = Var(19) = 1
trigger4 = EnemyNear,StateType != A
trigger5 = Var(59) < (500*(AILevel**2/64.0))
trigger5 = NumHelper(6000)
trigger5 = Helper(6000),Var(16)
trigger5 = Helper(6000),NumTarget(6000)
trigger5 = !MoveGuarded
trigger5 = Ctrl
trigger6 = Var(59) < (500*(AILevel**2/64.0))
trigger6 = NumHelper(6010)
trigger6 = Helper(6010),Var(16)
trigger6 = Helper(6010),NumTarget(6012)
trigger6 = !MoveGuarded
trigger6 = Ctrl
trigger7 = Var(59) < (500*(AILevel**2/64.0))
trigger7 = NumHelper(6040)
trigger7 = Helper(6040),Var(16)
trigger7 = Helper(6040),NumTarget(6040)
trigger7 = !MoveGuarded
trigger7 = Ctrl
trigger8 = Var(59) < (500*(AILevel**2/64.0))
trigger8 = NumHelper(6042)
trigger8 = Helper(6042),Var(16)
trigger8 = EnemyNear,MoveType = H
trigger8 = Ctrl
trigger9 = Var(59) < (500*(AILevel**2/64.0))
trigger9 = NumHelper(6050)
trigger9 = Helper(6050),Var(16)
trigger9 = Helper(6050),NumTarget(6050)
trigger9 = !MoveGuarded
trigger9 = Ctrl
trigger10 = Var(59) < (500*(AILevel**2/64.0))
trigger10 = Ctrl
trigger10 = NumTarget(240)
trigger10 = Target(240),MoveType = H
trigger10 = Target(240),StateType = A
trigger11 = Var(59) < (500*(AILevel**2/64.0))
trigger11 = Ctrl
trigger11 = NumTarget(800)
trigger11 = Target(800),MoveType = H
trigger11 = Target(800),StateType = A
trigger11 = Target(800),Pos Y = [-70,-40]

;---------------------------------------------------------------------------
;AI Total Wipeout L
[State -1, Total Wipeout]
type = ChangeState
value = 3200
triggerall = AILevel
triggerall = (Var(48) >= 10) || ((StateNo = 1000 && AnimElemTime(5) < 3) || (StateNo = 1010 && AnimElemTime(5) < 3))
triggerall = P2Life > 0
triggerall = Power >= 1000 && Power < 2000
triggerall = P2BodyDist X = [0,80]
triggerall = !(EnemyNear,StateType = A && (EnemyNear,Pos Y != [-50,-40]))
triggerall = RoundState = 2 && StateType != A
triggerall = StateNo != 200
triggerall = StateNo != 230
triggerall = !(StateNo = 400 && (Power < 2000 || Power >= 3000))
triggerall = !(StateNo = 430 && (Power < 2000 || Power >= 3000))
triggerall = StateNo != 1010
triggerall = StateNo != 1200
triggerall = StateNo != 1210
triggerall = StateNo != [3000,4999]
triggerall = !MoveGuarded
triggerall = NumEnemy
triggerall = EnemyNear,MoveType = H
triggerall = EnemyNear,StateType != L
triggerall = EnemyNear,Pos Y >= -20
triggerall = EnemyNear,StateNo != [120,155]
triggerall = !NumTarget(3204)
trigger1 = Var(59) < (1000*(AILevel**2/64.0))
trigger1 = Ctrl
trigger1 = EnemyNear,MoveType = H
trigger1 = EnemyNear,StateType = A
trigger1 = EnemyNear,Pos Y = [-20,-10]
trigger2 = Var(59) < (1000*(AILevel**2/64.0))
trigger2 = Ctrl
trigger2 = EnemyNear,MoveType = H
trigger2 = EnemyNear,StateType != A
trigger3 = Var(59) < (1000*(AILevel**2/64.0))
trigger3 = Var(19) = 1
trigger3 = EnemyNear,StateType = A
trigger3 = EnemyNear,Pos Y = [-20,-10]
trigger4 = Var(59) < (1000*(AILevel**2/64.0))
trigger4 = Var(19) = 1
trigger4 = EnemyNear,StateType != A
trigger5 = Var(59) < (1000*(AILevel**2/64.0))
trigger5 = NumHelper(6000)
trigger5 = Helper(6000),Var(16)
trigger5 = Helper(6000),NumTarget(6000)
trigger5 = !MoveGuarded
trigger5 = Ctrl
trigger6 = Var(59) < (1000*(AILevel**2/64.0))
trigger6 = NumHelper(6010)
trigger6 = Helper(6010),Var(16)
trigger6 = Helper(6010),NumTarget(6012)
trigger6 = !MoveGuarded
trigger6 = Ctrl
trigger7 = Var(59) < (1000*(AILevel**2/64.0))
trigger7 = NumHelper(6040)
trigger7 = Helper(6040),Var(16)
trigger7 = Helper(6040),NumTarget(6040)
trigger7 = !MoveGuarded
trigger7 = Ctrl
trigger8 = Var(59) < (1000*(AILevel**2/64.0))
trigger8 = NumHelper(6042)
trigger8 = Helper(6042),Var(16)
trigger8 = EnemyNear,MoveType = H
trigger8 = Ctrl
trigger9 = Var(59) < (1000*(AILevel**2/64.0))
trigger9 = NumHelper(6050)
trigger9 = Helper(6050),Var(16)
trigger9 = Helper(6050),NumTarget(6050)
trigger9 = !MoveGuarded
trigger9 = Ctrl
trigger10 = Var(59) < (1000*(AILevel**2/64.0))
trigger10 = Ctrl
trigger10 = NumTarget(240)
trigger10 = Target(240),MoveType = H
trigger10 = Target(240),StateType = A
trigger11 = Var(59) < (1000*(AILevel**2/64.0))
trigger11 = Ctrl
trigger11 = NumTarget(800)
trigger11 = Target(800),MoveType = H
trigger11 = Target(800),StateType = A
trigger11 = Target(800),Pos Y = [-20,-10]