; _________________________________________
;| Guile by Jmorphman                      |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;==============================================================================================
;=======================================<COMMAND FILE>=========================================
;==============================================================================================

;====================<BUTTON REMAPPING>====================

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s


;====================<DEFAULT VALUES>====================

[Defaults]
command.time = 15
command.buffer.time = 1



;====================<SINGLE BUTTON>====================

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



;==================<HOLD DIRECTION>==================

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


;====================<HOLD BUTTON>====================

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



;====================<DIRECTION>====================

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



;====================<RELEASE DIR>====================

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



;====================<RELEASE BUTTON>====================

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



;====================<SUPER MOTIONS>====================

[Command]
name = "SomersaultJustice"
command = D, DB, B, D, DB, B, a
time = 32

[Command]
name = "SomersaultJustice"
command = D, DB, B, D, DB, B, b
time = 32

[Command]
name = "SomersaultJustice"
command = D, DB, B, D, DB, B, c
time = 32

[Command]
name = "SomersaultJustice"
command = D, DB, B, D, DB, B, ~a
time = 32

[Command]
name = "SomersaultJustice"
command = D, DB, B, D, DB, B, ~b
time = 32

[Command]
name = "SomersaultJustice"
command = D, DB, B, D, DB, B, ~c
time = 32

[Command]
name = "MAXSomersaultJuctice"
command = D, DB, B, D, DB, B, a+b
time = 32

[Command]
name = "MAXSomersaultJuctice"
command = D, DB, B, D, DB, B, b+c
time = 32

[Command]
name = "MAXSomersaultJuctice"
command = D, DB, B, D, DB, B, a+c
time = 32

[Command]
name = "CrossfireBlitzV"
command = ~D, DF, F, D, DF, F, a
time = 32

[Command]
name = "CrossfireBlitzV"
command = ~D, DF, F, D, DF, F, b
time = 32

[Command]
name = "CrossfireBlitzV"
command = ~D, DF, F, D, DF, F, c
time = 32

[Command]
name = "CrossfireBlitzV"
command = ~D, DF, F, D, DF, F, ~a
time = 32

[Command]
name = "CrossfireBlitzV"
command = ~D, DF, F, D, DF, F, ~b
time = 32

[Command]
name = "CrossfireBlitzV"
command = ~D, DF, F, D, DF, F, ~c
time = 32


[Command]
name = "MAXCrossfireBlitzV"
command = ~D, DF, F, D, DF, F, a+b
time = 32

[Command]
name = "MAXCrossfireBlitzV"
command = ~D, DF, F, D, DF, F, a+c
time = 32

[Command]
name = "MAXCrossfireBlitzV"
command = ~D, DF, F, D, DF, F, b+c
time = 32

[Command]
name = "CrossfireBlitzIII"
command = ~D, DF, F, D, DF, F, a+b+c
time = 32


[Command]
name = "SonicBreak"
command = ~D, DF, F, D, DF, F, x
time = 32

[Command]
name = "SonicBreak"
command = ~D, DF, F, D, DF, F, y
time = 32

[Command]
name = "SonicBreak"
command = ~D, DF, F, D, DF, F, z
time = 32

[Command]
name = "SonicBreak"
command = ~D, DF, F, D, DF, F, ~x
time = 32

[Command]
name = "SonicBreak"
command = ~D, DF, F, D, DF, F, ~y
time = 32

[Command]
name = "SonicBreak"
command = ~D, DF, F, D, DF, F, ~z
time = 32


[Command]
name = "PunishmentSaber"
command = ~D, DB, B, D, DB, B, x+y
time = 32

[Command]
name = "PunishmentSaber"
command = ~D, DB, B, D, DB, B, x+z
time = 32

[Command]
name = "PunishmentSaber"
command = ~D, DB, B, D, DB, B, y+z
time = 32

;====================<SPECIAL MOTIONS>====================

[Command]
name = "MoonsaultSlashC"
command = ~U, UF, F, a
time = 15

[Command]
name = "MoonsaultSlashC"
command = ~U, UF, F, b
time = 15

[Command]
name = "MoonsaultSlashC"
command = ~U, UF, F, c
time = 15

[Command]
name = "MoonsaultSlashC"
command = ~U, UF, F, ~a
time = 15

[Command]
name = "MoonsaultSlashC"
command = ~U, UF, F, ~b
time = 15

[Command]
name = "MoonsaultSlashC"
command = ~U, UF, F, ~c
time = 15

[Command]
name = "EXMoonsaultSlashC"
command = ~U, UF, F, a+b
time = 15

[Command]
name = "EXMoonsaultSlashC"
command = ~U, UF, F, b+c
time = 15

[Command]
name = "EXMoonsaultSlashC"
command = ~U, UF, F, a+c
time = 15

[Command]
name = "MoonsaultSlashN"
command = ~D, DF, F, a
time = 15

[Command]
name = "MoonsaultSlashN"
command = ~D, DF, F,b
time = 15

[Command]
name = "MoonsaultSlashN"
command = ~D, DF, F,c
time = 15

[Command]
name = "MoonsaultSlashN"
command = ~D, DF, F,~a
time = 15

[Command]
name = "MoonsaultSlashN"
command = ~D, DF, F,~b
time = 15

[Command]
name = "MoonsaultSlashN"
command = ~D, DF, F,~c
time = 15

[Command]
name = "EXMoonsaultSlashN"
command = ~D, DF, F,a+b
time = 15

[Command]
name = "EXMoonsaultSlashN"
command = ~D, DF, F,b+c
time = 15

[Command]
name = "EXMoonsaultSlashN"
command = ~D, DF, F,a+c
time = 15

[Command]
name = "SonicScythe"
command = ~D, DB, B, a
time = 15

[Command]
name = "SonicScythe"
command = ~D, DB, B,b
time = 15

[Command]
name = "SonicScythe"
command = ~D, DB, B,c
time = 15

[Command]
name = "SonicScythe"
command = ~D, DB, B,~a
time = 15

[Command]
name = "SonicScythe"
command = ~D, DB, B,~b
time = 15

[Command]
name = "SonicScythe"
command = ~D, DB, B,~c
time = 15

[Command]
name = "EXSonicScythe"
command = ~D, DB, B,a+b
time = 15

[Command]
name = "EXSonicScythe"
command = ~D, DB, B,b+c
time = 15

[Command]
name = "EXSonicScythe"
command = ~D, DB, B,a+c
time = 15

[Command]
name = "SomersaultKick"
command = ~$D, $U, a
time = 16

[Command]
name = "SomersaultKick"
command = ~$D, $U, b
time = 16

[Command]
name = "SomersaultKick"
command = ~$D, $U, c
time = 16

[Command]
name = "SomersaultKick"
command = ~$D, $U, ~a
time = 16

[Command]
name = "SomersaultKick"
command = ~$D, $U, ~b
time = 16

[Command]
name = "SomersaultKick"
command = ~$D, $U, ~c
time = 16


[Command]
name = "EXSomersaultKick"
command = ~$D, $U, a+b
time = 16

[Command]
name = "EXSomersaultKick"
command = ~$D, $U, b+c
time = 16

[Command]
name = "EXSomersaultKick"
command = ~$D, $U, a+c
time = 16


[Command]
name = "SonicBoomC"
command = ~$B, $F, x
time = 16

[Command]
name = "SonicBoomC"
command = ~$B, $F, y
time = 16

[Command]
name = "SonicBoomC"
command = ~$B, $F, z
time = 16

[Command]
name = "SonicBoomC"
command = ~$B, $F, ~x
time = 16

[Command]
name = "SonicBoomC"
command = ~$B, $F, ~y
time = 16

[Command]
name = "SonicBoomC"
command = ~$B, $F, ~z
time = 16


[Command]
name = "EXSonicBoomC"
command = ~$B, $F, x+y
time = 16

[Command]
name = "EXSonicBoomC"
command = ~$B, $F, y+z
time = 16

[Command]
name = "EXSonicBoomC"
command = ~$B, $F, x+z
time = 16

[Command]
name = "SonicBoomN"
command = ~D, DF, F, x
time = 16

[Command]
name = "SonicBoomN"
command = ~D, DF, F, y
time = 16

[Command]
name = "SonicBoomN"
command = ~D, DF, F, z
time = 16

[Command]
name = "SonicBoomN"
command = ~D, DF, F, ~x
time = 16

[Command]
name = "SonicBoomN"
command = ~D, DF, F, ~y
time = 16

[Command]
name = "SonicBoomN"
command = ~D, DF, F, ~z
time = 16


[Command]
name = "EXSonicBoomN"
command = ~D, DF, F, x+y
time = 16

[Command]
name = "EXSonicBoomN"
command = ~D, DF, F, y+z
time = 16

[Command]
name = "EXSonicBoomN"
command = ~D, DF, F, x+z
time = 16

[Command]
name = "TragicAssault"
command = ~F, D, DF, x
time = 16

[Command]
name = "TragicAssault"
command = ~F, D, DF, y
time = 16

[Command]
name = "TragicAssault"
command = ~F, D, DF, z
time = 16

[Command]
name = "TragicAssault"
command = ~F, D, DF, ~x
time = 16

[Command]
name = "TragicAssault"
command = ~F, D, DF, ~y
time = 16

[Command]
name = "TragicAssault"
command = ~F, D, DF, ~z
time = 16


[Command]
name = "EXTragicAssault"
command = ~F, D, DF, x+y
time = 16

[Command]
name = "EXTragicAssault"
command = ~F, D, DF, y+z
time = 16

[Command]
name = "EXTragicAssault"
command = ~F, D, DF, x+z
time = 16

[Command]
name = "412p"
command = ~B, DB, D, x
time = 16

[Command]
name = "412p"
command = ~B, DB, D, y
time = 16

[Command]
name = "412p"
command = ~B, DB, D, z
time = 16

[Command]
name = "412p"
command = ~B, DB, D, ~x
time = 16

[Command]
name = "412p"
command = ~B, DB, D, ~y
time = 16

[Command]
name = "412p"
command = ~B, DB, D, ~z
time = 16


[Command]
name = "412k"
command = ~B, DB, D, a
time = 16

[Command]
name = "412k"
command = ~B, DB, D, b
time = 16

[Command]
name=  "412k"
command = ~B, DB, D, c
time = 16

[Command]
name = "412k"
command = ~B, DB, D, ~a
time = 16

[Command]
name = "412k"
command = ~B, DB, D, ~b
time = 16

[Command]
name = "412k"
command = ~B, DB, D, ~c
time = 16




;====================<OTHER>====================

[Command]
name = "highjump"
command = $D, $U
time = 15



;====================<DOUBLE TAP>====================

[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10



;====================<2/3 BUTTON COMBINATION>====================

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




;==============================================================================================
;========================================<-1 STATES>===========================================
;==============================================================================================
[StateDef -1]

[State -1, Tick Fix]
type = CtrlSet
triggerAll = !ctrl
trigger1 = (StateNo = 52 || StateNo = 101 || StateNo = 5120) && !AnimTime
trigger2 = (StateNo = [200,499]) && !AnimTime
trigger3 = ((StateNo = [760,762]) || (StateNo = [700,715]) || (StateNo = [900,905])) && !AnimTime
trigger4 = (StateNo = 5001 || StateNo = 5011 || StateNo = 151 || StateNo = 153) && HitOver
value = 1

[State -1, Roll Forward]
type = ChangeState
value = 710
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdfwd"
trigger2 = var(20) && var(4)

[State -1, Roll Backward]
type = ChangeState
value = 715
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdback"

[State -1, Dodge]
type = ChangeState
value = 700
triggerAll = !AILevel
triggerAll = command = "a+x"
triggerAll = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101]))

[State -1, Punishment Saber]
type = ChangeState
value = 3800
triggerAll = !AILevel
triggerAll = command = "PunishmentSaber"
triggerAll = var(40)
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 3000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, Crossfire Blitz]
type = ChangeState
value = 3300
triggerAll = !AILevel
triggerAll = command = "CrossfireBlitzIII" || command = "PunishmentSaber"
triggerAll = !var(40)
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 3000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, Sonic Break]
type = ChangeState
value = 3200
triggerAll = !AILevel
triggerAll = command = "SonicBreak"
triggerAll = !var(40)
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, MAX Somersault Justice]
type = ChangeState
value = 3050
triggerAll = !AILevel
triggerAll = command = "MAXSomersaultJuctice"
triggerAll = !var(40)
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)

[State -1, MAX Crossfire Blitz]
type = ChangeState
value = 3150
triggerAll = !AILevel
triggerAll = command = "MAXCrossfireBlitzV"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7) || var(8)

[State -1, Somersault Justice]
type = ChangeState
value = 3000
triggerAll = !AILevel
triggerAll = command = "SomersaultJustice"
triggerAll = !var(40)
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, Crossfire Blitz]
type = ChangeState
value = 3100
triggerAll = !AILevel
triggerAll = command = "CrossfireBlitzV"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, EX Moonsault Slash]
type = changestate
value = 1230
triggerall = !var(40)
triggerall = !AIlevel
triggerall = command = "EXMoonsaultSlashC"
triggerall = roundstate = 2 && statetype = A
triggerall = (var(3) != [1, 2]) && pos y <= -32
triggerall = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Somersault Kick]
type = ChangeState
value = 1130
triggerAll = !AILevel
triggerall = !var(40)
triggerAll = command = "EXMoonsaultSlashN"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Sonic Boom]
type = ChangeState
value = 1030
triggerall = !var(40)
triggerAll = !AILevel
triggerAll = command = "EXSonicBoomN"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
triggerAll = !var(39)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Tragic Assault]
type = ChangeState
value = 1430
triggerAll = !AILevel
triggerall = var(40)
triggerAll = command = "EXTragicAssault"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX V.Sonic Boom]
type = ChangeState
value = 1070
triggerall = var(40)
triggerAll = !AILevel
triggerAll = command = "EXSonicBoomN"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
triggerAll = !var(39)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX V.Moonsault Slash]
type = ChangeState
value = 1270
triggerAll = !AILevel
triggerall = var(40)
triggerAll = command = "EXMoonsaultSlashN"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Sonic Scythe]
type = ChangeState
value = 1330
triggerAll = !AILevel
triggerall = var(40)
triggerAll = command = "EXSonicScythe"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Moonsault Slash Charlie]
type = changestate
value = 1200
triggerall = !AIlevel
triggerall = !var(40)
triggerall = command = "MoonsaultSlashC"
triggerall = roundstate = 2 && statetype = A
triggerall = (var(3) != [1, 2]) && pos y <= -32
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Somersault Kick]
type = ChangeState
value = 1100
triggerAll = !AILevel
triggerall = !var(40)
triggerAll = command = "MoonsaultSlashN"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Sonic Boom Charlie]
type = ChangeState
value = 1000
triggerall = !var(40)
triggerAll = !AILevel
triggerAll = command = "SonicBoomN"
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(39)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Tragic Assault]
type = ChangeState
value = 1400
triggerAll = !AILevel
triggerall = var(40)
triggerAll = command = "TragicAssault"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Sonic Boom Nash]
type = ChangeState
value = 1050
triggerall = var(40)
triggerAll = !AILevel
triggerAll = command = "SonicBoomN"
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(39)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Moonsault Slash Nash]
type = ChangeState
value = 1250
triggerAll = !AILevel
triggerall = var(40)
triggerAll = command = "MoonsaultSlashN"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Sonic Scythe]
type = ChangeState
value = 1300
triggerAll = !AILevel
triggerall = var(40)
triggerAll = command = "SonicScythe"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Zero Counter]
type = ChangeState
value = 750
triggerAll = !AILevel
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = command = "412p" || command = "412k"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20)

[State -1, Custom Combo]
type = ChangeState
value = ifElse(StateType = A, 905, 900)
triggerAll = !AILevel
trigger1 = command = "c+z"
trigger1 = RoundState = 2
trigger1 = power >= 1000 && !var(20)
trigger1 = ctrl || StateNo = 52 || (StateNo = [100,101])
trigger1 = !var(41)

[State -1, Power Charge]
type = ChangeState
value = 730
triggerAll = !AILevel
trigger1 = command = "holdb" && command = "holdy"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power < const(data.power) && power < PowerMax && !var(20)
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Dash Forward/Run]
type = ChangeState
value = 110
triggerAll = !AILevel
trigger1 = command = "FF"
trigger1 = roundstate = 2 && StateType = S
trigger1 = ctrl

[State -1, Dash Backward]
type = ChangeState
value = 105
triggerAll = !AILevel
trigger1 = command = "BB"
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Throw]
type = ChangeState
value = 800
triggerAll = !AILevel
trigger1 = (command = "holdfwd" || command = "holdback") && (command = "pp" || command = "kk")
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Air Throw]
type = ChangeState
value = 850
triggerAll = !AILevel
triggerAll = RoundState = 2 && StateType = A
triggerAll = ctrl && pos y <= -32
trigger1 = (command = "holdfwd" || command = "holdback") && command = "pp"
trigger2 = (command = "holdfwd" || command = "holdback") && command = "kk"

[State -1, Standing Far/Close Heavy Punch]
type = ChangeState
value = 220 + (command = "holdfwd"*6 * var(40)) + (Abs(P2BodyDist X) <= 25) * 5 * !var(40)
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "z"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Far/Close Heavy Kick]
type = ChangeState
value = 250 + (Abs(P2BodyDist X) <= 35) * 5
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "c"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Chopping Assault]
type = ChangeState
value = 217
triggerall = var(40)
triggerAll = !AILevel
triggerAll = command = "holdfwd" && command = "y"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Far/Close Medium Punch]
type = ChangeState
value = 210 + (Abs(P2BodyDist X) <= 15) * 5 * !var(40)
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "y"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Far/Close Medium Kick]
type = ChangeState
value = 240 + (Abs(P2BodyDist X) <= 35) * 5 * !var(40)
triggerall = !var(40)
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "b"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, V Standing Medium Kick]
type = ChangeState
value = 240 + (command != "holdfwd"*6)
triggerall = var(40)
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "b"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Light Punch]
type = ChangeState
value = 200 + var(40)*2
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "x"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 400) && Time >= 5
trigger3 = var(4)

[State -1, Knee Bazooka]
type = ChangeState
value = 239
triggerAll = !AILevel
triggerAll = command != "holddown" && (command = "holdfwd" || command = "holdback") && command = "a"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Light Kick]
type = ChangeState
value = 230
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "a"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 400) && Time >= 5
trigger3 = var(4)

[State -1, Crouching Heavy Punch]
type = ChangeState
value = 420
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "z"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Heavy Kick]
type = ChangeState
value = 450
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "c"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerAll = !AILevel
triggerAll = command  ="holddown" && command = "y"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "b"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "x"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 400) && Time >= 5
trigger3 = var(4)

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "a"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 400) && Time >= 5
trigger3 = var(4)

[State -1, Jumping Heavy Punch]
type = ChangeState
value = 620
triggerAll = !AILevel
triggerAll = command = "z"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Heavy Kick]
type = ChangeState
value = 650
triggerAll = !AILevel
triggerAll = command = "c"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerAll = !AILevel
triggerAll = command = "y"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Medium Kick]
type = ChangeState
value = 640
triggerAll = !AILevel
triggerAll = command = "b"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Light Punch]
type = ChangeState
value = 600
triggerAll = !AILevel
triggerAll = command = "x"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Jumping Light Kick]
type = ChangeState
value = 630
triggerAll = !AILevel
triggerAll = command = "a"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Taunt]
type = ChangeState
value = Ifelse(var(40),199,195 + (command = "holdfwd"))
triggerAll = !AILevel
triggerAll = command = "start"
triggerAll = StateType != A
triggerAll = StateNo != [200,699]
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(6)



;==============================================================================================
;===========================================< A.I >============================================
;==============================================================================================

[State -1, Fall Recovery (Air)]
type = ChangeState
value = 5210
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && Alive
trigger1 = StateNo = 5050 && CanRecover
trigger1 = vel y > 0 && pos y < -20
trigger1 = Random < (25 * (AILevel ** 2 / 64.0))

[State -1, Fall Recovery (Ground)]
type = ChangeState
value = 5200
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && Alive
trigger1 = StateNo = 5050 && GetHitVar(fall.recover)
trigger1 = vel y > 0 && pos y >= -20
trigger1 = Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Jump]
type = ChangeState
value = 40
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A && ctrl
trigger1 = EnemyNear, MoveType = A && P2BodyDist x < 160 && EnemyNear, HitDefAttr = SC, AT

[State -1, Roll Forward]
type = ChangeState
value = 710
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = Random < (50 * (AILevel ** 2 / 64.0))
trigger1 = (ctrl || (StateNo = [100,101])) && var(20) <= 164 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && !(EnemyNear, HitDefAttr = SCA, AT) && (P2BodyDist x = [92,122])

[State -1, Dodge]
type = ChangeState
value = 700
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = Random < (50 * (AIlevel ** 2 / 64.0))
trigger1 = (ctrl || (StateNo = [100,101])) && var(20) <= 164 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && !(EnemyNear, HitDefAttr = SCA, AT) && (P2BodyDist x = [0,60])

[State -1, Dash Backward]
type = ChangeState
value = 105
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = S
triggerAll = ctrl && (StateNo != [100,106]) && var(20) <= 150 && !var(26)
trigger1 = (EnemyNear, MoveType = A) && BackEdgeDist >= 80 && (P2BodyDist x = [80,120]) && (EnemyNear, vel x)
trigger1 = Random < (ifElse((EnemyNear, HitDefAttr = SC, AT), 150, 50) * (AILevel ** 2 / 64.0))
trigger2 = (P2BodyDist x = [0,80]) && BackEdgeBodyDist >= 80
trigger2 = EnemyNear, StateNo = 5120 && EnemyNear, AnimTime = -4 && Random < (750 * (AILevel ** 2 / 64.0))

[State -1, Guard]
type = ChangeState
value = 120
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && InGuardDist
trigger1 = ctrl && (StateNo != [120, 155]) && !var(20)
trigger1 = !var(26) || P2BodyDist x >= 40
trigger1 = !(EnemyNear, HitDefAttr = SCA, AT) && (EnemyNear, Time < 120)
trigger1 = StateType != A || P2StateType = A
trigger1 = ifElse(StateType = A, ((var(3) != [1, 2]) || StateNo = 5210), 1)
trigger1 = Random < (ifElse((P2StateNo = [200, 699]), 100, ifElse((P2StateNo = [1000,2999]), 333, 1000)) * (AILevel ** 2 / 64.0))

[State -1, Zero Counter]
type = ChangeState
value = 750
trigger1 = AILevel && NumEnemy
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = RoundState = 2 && StateType != A
trigger1 = Power >= 1000 && var(20) <= 60
trigger1 = Random < (25 * (AILevel ** 2 / 64.0))
trigger1 = (P2BodyDist x = [0,50]) && (Life < 0.5 * LifeMax)

[State -1, Power Charge]
type = ChangeState
value = 730
triggerAll = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType != A
trigger1 = Power < const(data.power) && !var(20)
trigger1 = ctrl && Power < const(data.power) && Power < PowerMax && !var(20)
trigger1 = !InGuardDist && P2BodyDist x >= 160 && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Air Throw]
type = ChangeState
value = 850
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType = A
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = ctrl && pos y <= -32
trigger1 = P2StateType = A && Random < (200 * (AILevel ** 2 / 64.0))
trigger1 = (P2Dist x = [-20,33]) && (P2Dist y = [-118,48])

[State -1, Throw]
type = ChangeState
value = 800
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = S
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != H
triggerAll = (P2BodyDist x = [-20,40]) && P2BodyDist y = 0
trigger1 = ctrl && Random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = ctrl && (P2StateNo = [120,140]) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Run]
type = ChangeState
value = 100
trigger1 = AILevel && NumEnemy
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl && (StateNo != [100,106])
trigger1 = (EnemyNear, MoveType != A) && P2BodyDist x >= 160 && Random < (25 * (AILevel ** 2 / 64.0))

[State -1, Standing Far/Close Heavy Punch]
type = ChangeState
value = 220 + (Abs(P2BodyDist x) <= 25) * 5
triggerall = !var(40)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [10,125]) && (P2Dist y = [-85,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, V.Standing Heavy Punch]
type = ChangeState
value = 220
triggerall = var(40)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [10,75]) && (P2Dist y = [-85,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Spinning Back Knuckle]
type = ChangeState
value = 226
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [10,125]) && (P2Dist y = [-85,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Standing Far/Close Heavy Kick]
type = ChangeState
value = 250 + (Abs(P2BodyDist x) <= 35) * 5
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,146]) && (P2Dist y = [-111,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 4) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Heavy Punch]
type = ChangeState
value = 420
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && Statetype != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,50]) && (P2Dist y = [-132,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 4) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Heavy Kick]
type = ChangeState
value = 450
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,97]) && (P2Dist y = [-33,0]) && P2StateType != A && P2StateType != L
triggerAll = (P2StateType = S || (P2StateType = C && P2MoveType = H))
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 6) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Jumping Heavy Punch]
type = ChangeState
value = 620
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,45]) && (P2Dist y = [-64,50]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(4) && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Jumping Heavy Kick]
type = ChangeState
value = 650
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,92]) && (P2Dist y = [-116,50]) && P2StateType = S
trigger1 = ctrl && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(4) && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Standing Far/Close Medium Punch]
type = ChangeState
value = 210 + (Abs(P2BodyDist x) <= 35) * 5
triggerall = !var(40)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,80]) && (P2Dist y = [-129,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, V.Standing Medium Punch]
type = ChangeState
value = 210
triggerall = var(40)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [10,76]) && (P2Dist y = [-85,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Chopping Assault]
type = ChangeState
value = 217
triggerall = AIlevel && numenemy
triggerall = statetype != A && roundstate = 2
triggerall = (p2bodydist x = [0, 53]) && (p2bodydist y = [ -50, 50]) && p2statetype = S && !(enemynear, hitfall)
triggerall = (enemynear, const(size.head.pos.y) <= -40) || (enemynear, statetype = A)
trigger1 = ctrl && p2statetype = C && random < (150 * (AIlevel ** 2 / 64.0))

[State -1, Standing Far/Close Medium Kick]
type = ChangeState
value = 240 + (Abs(P2BodyDist x) <= 25) * 5
triggerall = !var(40)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,120]) && (P2Dist y = [-76,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, V. Standing Medium Kick]
type = ChangeState
value = 240
triggerall = var(40)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && Statetype != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,73]) && (P2Dist y = [-117,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 4) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,70]) && (P2Dist y = [-52,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,111]) && (P2Dist y = [-33,0]) && P2StateType != A && P2StateType != L
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,42]) && (P2Dist y = [-80,50]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Jumping Medium Kick]
type = ChangeState
value = 640
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,79]) && (P2Dist y = [-60,40]) && P2StateType = A
trigger1 = ctrl
trigger1 = vel y <= 0 && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, Standing Light Punch]
type = ChangeState
value = 200 + var(40)*2
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,63]) && (P2Dist y = [-87,0]) && P2StateType != C && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Knee Bazooka]
type = ChangeState
value = 239
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,77]) && (P2Dist y = [-75,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 2) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Standing Light Kick]
type = ChangeState
value = 230
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,72]) && (P2Dist y = [-23,0]) && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 2) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,61]) && (P2Dist y = [-54,0]) && P2StateType != A && P2StateType != L
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
trigger1 = (ctrl || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200,499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 2) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,90]) && (P2Dist y = [-27,0]) && P2StateType != A && P2StateType != L
trigger1 = (ctrl || (StateNo = [100, 101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (StateNo = [200, 499]) && !AnimTime && ctrl
trigger2 = MoveHit && (EnemyNear, GetHitVar(HitTime) >= 3) && Random < (250 * (AILevel ** 2 / 64.0))

[State -1, Jumping Light Punch]
type = ChangeState
value = 600
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,41]) && (P2Dist y = [-56,28]) && P2StateType = S
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (100 * (AIlevel ** 2 / 64.0))

[State -1, Jumping Light Kick]
type = ChangeState
value = 630
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = (P2BodyDist x = [0,32]) && (P2Dist y = [-117,40]) && P2StateType != L
trigger1 = ctrl
trigger1 = vel y > 0 && Random < (ifElse(P2Dist x < 0, 250, 50) * (AILevel ** 2 / 64.0))

[State -1, Moonsault Slash]
type = changestate
value = ifElse(Power >= 500 && Random < 133, 1230, 1200)
triggerall = !var(40)
triggerall = AIlevel && numenemy
triggerall = roundstate = 2 && statetype = A
triggerall = (var(3) != [1, 2]) && pos y <= -32
triggerall = numenemy >= 2 || var(14) < 1
triggerall = (p2bodydist x = [0, 90]) && p2dist y >= -30 && (p2statetype != L)
triggerall = !(enemynear, ctrl) && (enemynear, stateno != [120, 155])
triggerall = (enemynear, movetype != A) || (enemynear, stateno = [200, 699])
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = var(6) && (movecontact || var(18)) && random < (50 * (AIlevel ** 2 / 64.0))

[State -1, EX Somersault Kick (after Target Combo)]
type = ChangeState
value = 1130
triggerall = !var(40)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(40) && Power >= 500
triggerAll = (P2StateNo != [120, 155]) && P2StateType != L
triggerAll = (P2BodyDist x > 0) && (EnemyNear, vel y > -1) && (EnemyNear, vel x > -2)
triggerAll = (EnemyNear, const(size.head.pos.y) <= -40) || (EnemyNear, StateType = A)
triggerAll = var(40) || !(EnemyNear, HitFall) || NumTarget(1430) || NumTarget(3400)
trigger1 = var(6) && StateNo = 225 && PrevStateNo = 215 && MoveHit

[State -1, Somersault Kick]
type = ChangeState
value = ifElse(!var(40) && Power >= 500 && Random < 133, 1130, 1100)
triggerall = !var(40)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2StateType != L && (P2Dist y = [-80,32])
triggerAll = ((P2BodyDist x = [-48,48]) && P2StateType != A) || ((P2BodyDist x = [-140,140]) && P2StateType = A)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = var(6) && MoveHit && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 3
trigger3 = (StateNo = 5120 || StateNo = 5201) && !AnimTime && Random < (50 * (AILevel ** 2 / 64.0))

[State -1, Sonic Boom]
type = ChangeState
value = ifElse(Power >= 500 && Random < 100, 1030, 1000)
triggerall = !var(40)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(39)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2BodyDist x >= 25 && P2Dist y >= -120 && EnemyNear, vel y >= 0
triggerAll = P2StateType != A || EnemyNear, vel x < 0
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger2 = EnemyNear, StateNo = 195 && Random < (50 * (AILevel ** 2 / 64.0))
trigger3 = var(6) && MoveHit && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, V.Sonic Boom]
type = ChangeState
value = ifElse(Power >= 500 && Random < 100, 1070, 1050)
triggerall = var(40)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = !var(39)
triggerAll = !var(16) && (var(15) < 1 || var(20))
triggerAll = P2BodyDist x >= 25 && P2Dist y >= -120 && EnemyNear, vel y >= 0
triggerAll = P2StateType != A || EnemyNear, vel x < 0
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (25 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger2 = EnemyNear, StateNo = 195 && Random < (50 * (AILevel ** 2 / 64.0))
trigger3 = var(6) && MoveHit && Random < (100 * (AILevel ** 2 / 64.0))

[State -1, V.Moonsault Slash]
type = ChangeState
value = ifElse(Power >= 500 && Random < 100, 1270, 1250)
triggerall = var(40)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = (EnemyNear, MoveType != A) || (EnemyNear, StateNo = [200, 499])
triggerAll = (P2BodyDist x = [-8,97]) && P2StateType != A && (P2StateType != L || P2StateNo = 5120)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger1 = P2BodyDist x >= 15 && Random < (50 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger2 = (EnemyNear, StateNo = 5120 || EnemyNear, StateNo = 5201) && (EnemyNear, AnimTime = -18) && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = var(6) && MoveHit && Random < (100 * (AILevel ** 2 / 64.0))
trigger3 = EnemyNear, GetHitVar(HitTime) >= 6

[State -1, Sonic Scythe]
type = ChangeState
value = ifElse(Power >= 500 && Random < 100, 1330, 1300)
triggerall = var(40)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = (EnemyNear, MoveType != A) || (EnemyNear, StateNo = [200, 499])
triggerAll = (P2BodyDist x = [-8,65]) && P2StateType != A && (P2StateType != L || P2StateNo = 5120)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger1 = P2BodyDist x >= 65 && Random < (50 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger2 = (EnemyNear, StateNo = 5120 || EnemyNear, StateNo = 5201) && (EnemyNear, AnimTime = -18) && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = var(6) && MoveHit && Random < (100 * (AILevel ** 2 / 64.0))
trigger3 = EnemyNear, GetHitVar(HitTime) >= 6

[State -1, Tragic Assault]
type = ChangeState
value = ifElse(Power >= 500 && Random < 100, 1430, 1400)
triggerall = var(40)
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = (EnemyNear, MoveType != A) || (EnemyNear, StateNo = [200,499])
triggerAll = (P2BodyDist x = [-8,256]) && (P2StateType != L || P2StateNo = 5120)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger1 = P2BodyDist x >= 25 && Random < (50 * (AILevel ** 2 / 64.0))
trigger2 = (ctrl || StateNo = 52 || (StateNo = [100,101]))
trigger2 = (EnemyNear, StateNo = 5120 || EnemyNear, StateNo = 5201) && (EnemyNear, AnimTime = -18) && Random < (250 * (AILevel ** 2 / 64.0))
trigger3 = var(6) && MoveHit && Random < (100 * (AILevel ** 2 / 64.0))
trigger3 = EnemyNear, GetHitVar(HitTime) >= 6

[State -1, Punishment Sabre]
type = ChangeState
value = 3800
triggerAll = AILevel && NumEnemy && var(40)
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 3000 && !var(20)
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && P2StateNo != 5201
triggerAll = (P2BodyDist x = [-125,125]) && (P2Dist y = [-32,127])
triggerAll = (EnemyNear, HitOver || !(EnemyNear, MoveType = H) || var(21)) && !(EnemyNear, StateNo = [150,155]) && EnemyNear, Anim != 5040
triggerAll = !(EnemyNear, StateNo = 40 && EnemyNear, Time >= 1) && !(EnemyNear, StateNo = 52 && !(EnemyNear, ctrl) && EnemyNear, PrevStateNo = [5020,5040])
triggerAll = P2StateType != A && P2StateType != L && (P2Dist y = [-48,0])
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (500 * (AILevel ** 2 / 64.0))

[State -1, Crossfire Blitz]
type = ChangeState
value = 3300
triggerAll = AILevel && NumEnemy && !var(40)
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 3000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && (EnemyNear, StateNo != [120,155])
triggerAll = (P2BodyDist x = [0,250])
triggerAll = P2StateType != A && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100, 101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]),200,50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, Sonic Break]
type = ChangeState
value = 3200
triggerAll = AILevel && NumEnemy && !var(40)
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(39)
triggerAll = !var(16) && (var(15) < 1 || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerall = (P2BodyDist x = [0,150]) && (P2Dist y = [-80,0]) && (EnemyNear, StateType != L) && (EnemyNear, vel y >= 0)
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (10 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, MAX Crossfire Blitz]
type = ChangeState
value = 3150
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 2000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-80,80]) && (P2Dist y = [-80,32])
triggerAll = P2StateType != A && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, MAX Somersault Strike]
type = ChangeState
value = 3050
triggerAll = AILevel && NumEnemy && !var(40)
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 2000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [0,85]) && (P2Dist y = [-32,95])
triggerAll = P2StateType != A && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, Crossfire Blitz]
type = ChangeState
value = 3100
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [-80,80]) && (P2Dist y = [-80,32])
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != A
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, Somersault Strike]
type = ChangeState
value = 3000
triggerAll = AILevel && NumEnemy && !var(40)
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && ((EnemyNear, StateNo != [120,155]) || EnemyNear, StateType = A)
triggerAll = (P2BodyDist x = [0,85]) && (P2Dist y = [-32,95])
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != A
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1, Taunt]
type = ChangeState
value = Ifelse(var(40), 199, 195)
triggerAll = AILevel && NumEnemy
triggerAll = StateType != A && Life >= 0.5 * LifeMax
triggerAll = (EnemyNear, Life) <= 0.5 * (EnemyNear, LifeMax)
trigger1 = ctrl
trigger1 = P2Dist x >= 160 && !(EnemyNear, ctrl)
trigger1 = (EnemyNear, MoveType = H) && (EnemyNear, HitFall) && Random < (50 * (AILevel ** 2 / 64.0))
