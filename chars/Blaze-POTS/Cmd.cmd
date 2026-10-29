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
name = "s"
command = s
time = 1

[Command]
name = "start"
command = s
time = 1


;==================<HOLD DIRECTION>==================

[Command]
name = "holdfwd+y"
command=/$F, y
time=1

[Command]
name = "holdfwd+b"
command=/$F, b
time=1

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

;====================<SUPER MOTIONS>===================
[Command]
name = "MAX Messatsu Gou Ryuu Zanshou"
command = ~D, DF, F, DF, D, DB, B, a+b
time = 36

[Command]
name = "MAX Messatsu Gou Ryuu Zanshou"
command = ~D, DF, F, DF, D, DB, B, b+c
time = 36

[Command]
name = "MAX Messatsu Gou Ryuu Zanshou"
command = ~D, DF, F, DF, D, DB, B, a+c
time = 36

[Command]
name = "Messatsu Gou Ryuu Zanshou"
command = ~D, DF, F, DF, D, DB, B, a
time = 36

[Command]
name = "Messatsu Gou Ryuu Zanshou"
command = ~D, DF, F, DF, D, DB, B, b
time = 36

[Command]
name = "Messatsu Gou Ryuu Zanshou"
command = ~D, DF, F, DF, D, DB, B, c
time = 36

;----------------
;----------------LVL 3 Super
[command]
name = "Messatsu Gou Hadou Ken"
command = ~D,DF,F,D,B,x+y
time = 32

[command]
name = "Messatsu Gou Hadou Ken"
command = ~D,DF,F,D,B,y+z
time = 32

[command]
name = "Messatsu Gou Hadou Ken"
command = ~D,DF,F,D,B,x+z
time = 32

[Command]
name = "sgs"
command = x, x, F, a, z
time = 40

[Command]
name = "sgs"
command = x, x, F, a+z
time = 32

[Command]
name = "sgs"
command = x, x, F+a+z
time = 24

[Command]
name = "Kishuu Musan Funjin"
command = ~F, B, DB, D, DF, F, x+y
time = 32

[Command]
name = "Kishuu Musan Funjin"
command = ~F, B, DB, D, DF, F, y+z
time = 32

[Command]
name = "Kishuu Musan Funjin"
command = ~F, B, DB, D, DF, F, x+z
time = 32
;----------------MAX Super 1
[Command]
name = "MAXSUPER1"
command = ~D, DF, F, D, DF, F, a+b
time = 32

[Command]
name = "MAXSUPER1"
command = ~D, DF, F, D, DF, F, b+c
time = 32

[Command]
name = "MAXSUPER1"
command = ~D, DF, F, D, DF, F, a+c
time = 32

[Command]
name = "SHINKUU HADOU KEN 2"
command = ~D, DF, F, D, DF, F, x+y
time = 30
[Command]
name = "SHINKUU HADOU KEN 2"
command = ~D, DF, F, D, DF, F, y+z
time = 30
[Command]
name = "SHINKUU HADOU KEN 2"
command = ~D, DF, F, D, DF, F, x+z
time = 30

[Command]
name = "SHINKUU TATSUMAKI SENPUU KYAKKU 2"
command = ~D, DB, B, D, DB, B, a+b
time = 30
[Command]
name = "SHINKUU TATSUMAKI SENPUU KYAKKU 2"
command = ~D, DB, B, D, DB, B, b+c
time = 30
[Command]
name = "SHINKUU TATSUMAKI SENPUU KYAKKU 2"
command = ~D, DB, B, D, DB, B, a+c
time = 30

[Command]
name = "SHORYUREPPA 2"
command = ~D, DB, B, D, DB, B, x+y
time = 30

[Command]
name = "SHORYUREPPA 2"
command = ~D, DB, B, D, DB, B, y+z
time = 30

[Command]
name = "SHORYUREPPA 2"
command = ~D, DB, B, D, DB, B, x+z
time = 30

[Command]
name = "SHINRYUKEN 2"
command = ~D, DF, F, D, DF, F, a+b
time = 30

[Command]
name = "SHINRYUKEN 2"
command = ~D, DF, F, D, DF, F, b+c
time = 30

[Command]
name = "SHINRYUKEN 2"
command = ~D, DF, F, D, DF, F, a+c
time = 30

[Command]
name = "TENMA GOU ZAKUU MAX"
command = ~D, DF, F, D, DF, F, x+y
time = 30

[Command]
name = "TENMA GOU ZAKUU MAX"
command = ~D, DF, F, D, DF, F, y+z
time = 30

[Command]
name = "TENMA GOU ZAKUU MAX"
command = ~D, DF, F, D, DF, F, x+z
time = 30
;----------------Super 1
[Command]
name = "SHINKUU HADOU KEN"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "SHINKUU HADOU KEN"
command = ~D, DF, F, D, DF, F, y
time = 30

[Command]
name = "SHINKUU HADOU KEN"
command = ~D, DF, F, D, DF, F, z
time = 30

[Command]
name = "SHINKUU TATSUMAKI SENPUU KYAKKU"
command = ~D, DB, B, D, DB, B, a
time = 30
[Command]
name = "SHINKUU TATSUMAKI SENPUU KYAKKU"
command = ~D, DB, B, D, DB, B, b
time = 30
[Command]
name = "SHINKUU TATSUMAKI SENPUU KYAKKU"
command = ~D, DB, B, D, DB, B, c
time = 30

[Command]
name = "SHORYUREPPA"
command = ~D, DB, B, D, DB, B, x
time = 30

[Command]
name = "SHORYUREPPA"
command = ~D, DB, B, D, DB, B, y
time = 30

[Command]
name = "SHORYUREPPA"
command = ~D, DB, B, D, DB, B, z
time = 30

[Command]
name = "SHINRYUKEN"
command = ~D, DF, F, D, DF, F, a
time = 30

[Command]
name = "SHINRYUKEN"
command = ~D, DF, F, D, DF, F, b
time = 30

[Command]
name = "SHINRYUKEN"
command = ~D, DF, F, D, DF, F, c
time = 30

[Command]
name = "TENMA GOU ZAKUU"
command = ~D, DF, F, D, DF, F, x
time = 30

[Command]
name = "TENMA GOU ZAKUU"
command = ~D, DF, F, D, DF, F, y
time = 30

[Command]
name = "TENMA GOU ZAKUU"
command = ~D, DF, F, D, DF, F, z
time = 30


;====================<SPECIAL MOTIONS>====================

;----------------Special 1
[Command]
name = "Gou Hadouken"
command = ~D, DF, F, x
time = 16

[Command]
name = "Gou Hadouken"
command = ~D, DF, F, y
time = 16

[Command]
name = "Gou Hadouken"
command = ~D, DF, F, z
time = 16

[Command]
name = "Zankuu Hadouken"
command = ~D, DF, F, x
time = 16

[Command]
name = "Zankuu Hadouken"
command = ~D, DF, F, y
time = 16

[Command]
name = "Zankuu Hadouken"
command = ~D, DF, F, z
time = 16

[Command]
name = "Gou Shoryuken"
command = ~F, D,DF, x
time = 16

[Command]
name = "Gou Shoryuken"
command = ~F, D,DF, y
time = 16


[Command]
name = "Gou Shoryuken"
command = ~F, D,DF, z
time = 16

[Command]
name = "Tatsumaki Zankuukyaku"
command = ~D,DB, B, a
time = 16

[Command]
name = "Tatsumaki Zankuukyaku"
command = ~D,DB, B, b
time = 16

[Command]
name = "Tatsumaki Zankuukyaku"
command = ~D,DB, B, c
time = 16

[Command]
name = "Air Tatsumaki Zankuukyaku"
command = ~D,DB, B, a
time = 16

[Command]
name = "Air Tatsumaki Zankuukyaku"
command = ~D,DB, B, b
time = 16

[Command]
name = "Air Tatsumaki Zankuukyaku"
command = ~D,DB, B, c
time = 16

[Command]
name = "Light Gou Ryuu Zanshou"
command = ~B, D, DB, a
time = 16

[Command]
name = "Medium Gou Ryuu Zanshou"
command = ~B, D, DB, b
time = 16

[Command]
name = "Heavy Gou Ryuu Zanshou"
command = ~B, D, DB, c
time = 16

[Command]
name = "Light Tenma Kuujin Kyaku"
command = ~D, DF, F, a
time = 16

[Command]
name = "Medium Tenma Kuujin Kyaku"
command = ~D, DF, F, b
time = 16

[Command]
name = "Heavy Tenma Kuujin Kyaku"
command = ~D, DF, F, c
time = 16

[Command]
name = "Light Hyakki Shuu"
command = ~F, D, DF, a
time = 16

[Command]
name = "Medium Hyakki Shuu"
command = ~F, D, DF, b
time = 16

[Command]
name = "Heavy Hyakki Shuu"
command = ~F, D, DF, c
time = 16
;----------------
;Ex Movies
[Command]
name = "EX Gou Hadouken"
command = ~D, DF, F, x+y
time = 16

[Command]
name = "EX Gou Hadouken"
command = ~D, DF, F, y+z
time = 16

[Command]
name = "EX Gou Hadouken"
command = ~D, DF, F, x+z
time = 16

[Command]
name = "EX Gou Shoryuken"
command = ~F, D,DF, x+y
time = 16

[Command]
name = "EX Gou Shoryuken"
command = ~F, D,DF, y+z
time = 16

[Command]
name = "EX Gou Shoryuken"
command = ~F, D,DF, x+z
time = 16

[Command]
name = "EX Tatsumaki Zankuukyaku"
command = ~D,DB, B, a+b
time = 16

[Command]
name = "EX Tatsumaki Zankuukyaku"
command = ~D,DB, B, b+c
time = 16

[Command]
name = "EX Tatsumaki Zankuukyaku"
command = ~D,DB, B, a+c
time = 16

[Command]
name = "EX Gou Ryuu Zanshou"
command = ~B, D, DB, a+b
time = 16

[Command]
name = "EX Gou Ryuu Zanshou"
command = ~B, D, DB, b+c
time = 16

[Command]
name = "EX Gou Ryuu Zanshou"
command = ~B, D, DB, a+c
time = 16

[Command]
name = "EX Tenma Kuujin Kyaku"
command = ~D, DF, F, a+b
time = 16

[Command]
name = "EX Tenma Kuujin Kyaku"
command = ~D, DF, F, b+c
time = 16

[Command]
name = "EX Tenma Kuujin Kyaku"
command = ~D, DF, F, a+c
time = 16

[Command]
name = "EX Hyakki Shuu"
command = ~F, D, DF, a+b
time = 16

[Command]
name = "EX Hyakki Shuu"
command = ~F, D, DF, b+c
time = 16

[Command]
name = "EX Hyakki Shuu"
command = ~F, D, DF, a+c
time = 16

; Ashura Senkuu

[Command]
name = "ashura_fwd_p"
command = /F, x+y+z

[Command]
name = "ashura_bwd_p"
command = /B, x+y+z
;----------------
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
trigger2 = (StateNo = [200,499]) && !AnimTime && Anim != 251 
trigger3 = ((StateNo = [760,762]) || (StateNo = [700,715]) || (StateNo = [900,905])) && !AnimTime
trigger4 = (StateNo = 5001 || StateNo = 5011 || StateNo = 151 || StateNo = 153) && HitOver
value = 1

[State -1, CtrlSet For Helpers]
type = CtrlSet
trigger1 = IsHelper
value = 0

[State -1, Hit Count For Helpers]
type = ParentVarAdd
trigger1 = IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime
trigger1 = !(HitDefAttr = SCA, AT)
var(13) = 1

[State -1, Juggle Count For Helpers]
type = ParentVarAdd
trigger1 = IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime
trigger1 = !(HitDefAttr = SCA, AT)
var(15) = 1

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


[State -1, Kishuu Musan Funjin]
type = ChangeState
value = 6200
TriggerAll = Var(59) < 1
triggerAll = command = "Kishuu Musan Funjin"
triggerAll = RoundState = 2 && StateType != A
triggerAll = ifelse(var(53) <= 0, power >= 3000 && !var(20), power >= 1000)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, Shun Goku Satsu]
type = ChangeState
value = 3600
TriggerAll = Var(59) < 1
triggerAll = command = "sgs"
triggerAll = RoundState = 2 && StateType != A
triggerAll = ifelse(var(53) <= 0, power >= 3000 && !var(20), power >= 1000)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, Shun Goku Satsu]
type = ChangeState
value = 3500
TriggerAll = Var(59) < 1
triggerAll = command = "Messatsu Gou Hadou Ken"
triggerAll = RoundState = 2 && StateType != A
triggerAll = ifelse(var(53) <= 0, power >= 3000 && !var(20), power >= 1000)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, MAX Messatsu Gou Ryuu Zanshou]
type = ChangeState
value = 4050
TriggerAll = Var(59) < 1
triggerAll = command = "MAX Messatsu Gou Ryuu Zanshou"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, Messatsu Gou Ryuu Zanshou]
type = ChangeState
value = 4000
TriggerAll = Var(59) < 1
triggerAll = command = "Messatsu Gou Ryuu Zanshou"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Super 1]
type = ChangeState
value = 3400
TriggerAll = Var(59) < 1
triggerAll = command = "TENMA GOU ZAKUU MAX"
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(39) ;Projectile Flag
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)


[State -1, Super 1]
type = ChangeState
value = 3339
TriggerAll = Var(59) < 1
triggerAll = command = "TENMA GOU ZAKUU"
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(39) ;Projectile Flag
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)


[State -1, Super 1]
type = ChangeState
value = 3350
TriggerAll = Var(59) < 1
triggerAll = command = "SHINRYUKEN 2"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, Super 1]
type = ChangeState
value = 3300
TriggerAll = Var(59) < 1
triggerAll = command = "SHINRYUKEN"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, Super 1]
type = ChangeState
value = 3150
TriggerAll = Var(59) < 1
triggerAll = command = "SHORYUREPPA 2"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)


[State -1, Super 1]
type = ChangeState
value = 3100
TriggerAll = Var(59) < 1
triggerAll = command = "SHORYUREPPA"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, Super 1]
type = ChangeState
value = 3200
TriggerAll = Var(59) < 1
triggerAll = command = "SHINKUU TATSUMAKI SENPUU KYAKKU 2"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, Super 1]
type = ChangeState
value = 3250
TriggerAll = Var(59) < 1
triggerAll = command = "SHINKUU TATSUMAKI SENPUU KYAKKU"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, Super 1]
type = ChangeState
value = 3010
TriggerAll = Var(59) < 1
triggerAll = command = "SHINKUU HADOU KEN 2"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 2000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1, Super 1]
type = ChangeState
value = 3000
TriggerAll = Var(59) < 1
triggerAll = command = "SHINKUU HADOU KEN"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(7)

[State -1]
type = ChangeState
value = 1400
triggerall = Var(59) != 2
triggerall = command = "ashura_fwd_p"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = [100,105]
trigger2 = time >= 4


[State -1 EX Hyakki Shuu]
type = ChangeState
value = 2580
TriggerAll = Var(59) < 1
triggerall = command = "EX Hyakki Shuu"
triggerall = Var(54) != 1 && Var(59) != 2
triggerAll = power >= 500 && var(20) <= 60
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = [200,450]
trigger2 = movecontact = 1
trigger3 = stateno = [100,105]
trigger3 = time >= 4

[State -1 Light Hyakki Shuu]
type = ChangeState
value = 2500
TriggerAll = Var(59) < 1
triggerall = command = "Light Hyakki Shuu"
triggerall = Var(54) != 1 && Var(59) != 2
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = [200,450]
trigger2 = movecontact = 1
trigger3 = stateno = [100,105]
trigger3 = time >= 4


[State -1 Medium Hyakki Shuu]
type = ChangeState
value = 2530
TriggerAll = Var(59) < 1
triggerall = command = "Medium Hyakki Shuu"
triggerall = Var(54) != 1 && Var(59) != 2
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = [200,450]
trigger2 = movecontact = 1
trigger3 = stateno = [100,105]
trigger3 = time >= 4

[State -1 Heavy Hyakki Shuu]
type = ChangeState
value = 2560
TriggerAll = Var(59) < 1
triggerall = command = "Heavy Hyakki Shuu"
triggerall = Var(54) != 1 && Var(59) != 2
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = [200,450]
trigger2 = movecontact = 1
trigger3 = stateno = [100,105]
trigger3 = time >= 4

[State -1 EX Tenma Kuujin Kyaku]
type = ChangeState
value = 2230
TriggerAll = Var(59) < 1
triggerall = command = "EX Tenma Kuujin Kyaku"
triggerall = Var(54) != 1 && Var(59) != 2
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = p2statetype = A
trigger2 = stateno = [600,650]
trigger2 = movecontact = 1

[State -1 Light Tenma Kuujin Kyaku]
type = ChangeState
value = 2200
TriggerAll = Var(59) < 1
triggerall = command = "Light Tenma Kuujin Kyaku"
triggerall = Var(54) != 1 && Var(59) != 2
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = p2statetype = A
trigger2 = stateno = [600,650]
trigger2 = movecontact = 1


[State -1 Medium Tenma Kuujin Kyaku]
type = ChangeState
value = 2210
TriggerAll = Var(59) < 1
triggerall = command = "Medium Tenma Kuujin Kyaku"
triggerall = Var(54) != 1 && Var(59) != 2
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = p2statetype = A
trigger2 = stateno = [600,650]
trigger2 = movecontact = 1



[State -1 Heavy Tenma Kuujin Kyaku]
type = ChangeState
value = 2220
TriggerAll = Var(59) < 1
triggerall = command = "Heavy Tenma Kuujin Kyaku"
triggerall = Var(54) != 1 && Var(59) != 2
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = p2statetype = A
trigger2 = stateno = [600,650]
trigger2 = movecontact = 1

[State -1, EX Gou Ryuu Zanshou]
type = ChangeState
value = 2030
TriggerAll = Var(59) < 1
triggerAll = !AILevel
triggerAll = command = "EX Gou Ryuu Zanshou"
triggerAll = power >= 500 && var(20) <= 60
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Heavy Gou Ryuu Zanshou]
type = ChangeState
value = 2020
TriggerAll = Var(59) < 1
triggerAll = !AILevel
triggerAll = command = "Heavy Gou Ryuu Zanshou"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger4 = time >= 4

[State -1, Medium Gou Ryuu Zanshou]
type = ChangeState
value = 2010
TriggerAll = Var(59) < 1
triggerAll = command = "Medium Gou Ryuu Zanshou"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger4 = time >= 4

[State -1, Light Gou Ryuu Zanshou]
type = ChangeState
value = 2000
TriggerAll = Var(59) < 1
triggerAll = command = "Light Gou Ryuu Zanshou"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger4 = time >= 4

[State -1, EX Air Tatsumaki Zankuukyaku]
type = ChangeState
value = 1256
TriggerAll = Var(59) < 1
triggerAll = command = "EX Tatsumaki Zankuukyaku"
triggerAll = power >= 500 && var(20) <= 60
triggerAll = RoundState = 2 && StateType = A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Tatsumaki Zankuukyaku]
type = ChangeState
value = 1255
TriggerAll = Var(59) < 1
triggerAll = command = "EX Tatsumaki Zankuukyaku"
triggerAll = power >= 500 && var(20) <= 60
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Air Tatsumaki Zankuukyaku]
type = ChangeState
value = 1250
TriggerAll = Var(59) < 1
triggerAll = command = "Air Tatsumaki Zankuukyaku"
triggerAll = RoundState = 2 && StateType = A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Tatsumaki Zankuukyaku]
type = ChangeState
value = 1200
TriggerAll = Var(59) < 1
triggerAll = command = "Tatsumaki Zankuukyaku"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Ex Gou Shoryuken]
type = ChangeState
value = 1130
TriggerAll = Var(59) < 1
triggerAll = command = "EX Gou Shoryuken"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)
trigger4 = time >= 4


[State -1, Gou Shoryuken]
type = ChangeState
value = 1100
TriggerAll = Var(59) < 1
triggerAll = command = "Gou Shoryuken"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)
trigger4 = time >= 4

[State -1, EX Gou Hadouken]
type = ChangeState
value = 1080
TriggerAll = Var(59) < 1
triggerAll = command = "EX Gou Hadouken"
triggerAll = RoundState = 2 && StateType = A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Gou Hadouken]
type = ChangeState
value = 1070
TriggerAll = Var(59) < 1
triggerAll = command = "Zankuu Hadouken"
triggerAll = RoundState = 2 && StateType = A
triggerAll = !var(39) ;Projectile Flag
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, EX Gou Hadouken]
type = ChangeState
value = 1010
TriggerAll = Var(59) < 1
triggerAll = command = "EX Gou Hadouken"
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 500 && var(20) <= 60
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)
trigger4 = time >= 4 

[State -1, Gou Hadouken]
type = ChangeState
value = 1000
TriggerAll = Var(59) < 1
triggerAll = command = "Gou Hadouken"
triggerAll = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)
trigger4 = time >= 4 

[State -1, Zero Counter]
type = ChangeState
value = 750
TriggerAll = Var(59) < 1
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = command = "412p" || command = "412k"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20)

[State -1, Custom Combo]
type = ChangeState
value = ifElse(StateType = A, 905, 900)
TriggerAll = Var(59) < 1
trigger1 = command = "c+z"&&!var(54)
trigger1 = RoundState = 2
trigger1 = power >= 1000 && !var(20)
trigger1 = ctrl || StateNo = 52 || (StateNo = [100,101])
trigger1 = !var(41)

[State -1, MAX Mode]
type = ChangeState
value = 770
triggerall = command = "c+z"&&var(54)
triggerall = RoundState = 2 && StateType != A
triggerall = var(53) <= 0 && Power >= 1000
trigger1 = ctrl || (Stateno = [100,101])

[State -1, Power Charging]
type = ChangeState
value = 730
TriggerAll = Var(59) < 1
trigger1 = command = "holdb" && command = "holdy"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power < const(data.power) && power < PowerMax && !var(20)
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Dash Forward/Run]
type = ChangeState
value = 102
TriggerAll = Var(59) < 1
trigger1 = command = "FF"
trigger1 = roundstate = 2 && StateType = S
trigger1 = ctrl

[State -1, Dash Backward]
type = ChangeState
value = 105
TriggerAll = Var(59) < 1
trigger1 = command = "BB"
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Throw]
type = ChangeState
value = 800
TriggerAll = Var(59) < 1
trigger1 = (command = "holdfwd" || command = "holdback") && command = "pp" 
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Throw]
type = ChangeState
value = 810
TriggerAll = Var(59) < 1
trigger1 = (command = "holdfwd" || command = "holdback") && command = "kk"
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Standing Heavy Punch]
type = ChangeState
value = 220 
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "z"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Heavy Kick]
type = ChangeState
value = 250 
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "c"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)



[State -1, Standing Medium Punch]
type = ChangeState
value = 210
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "y"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Medium Kick]
type = ChangeState
value = 240 
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "b"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(4)

[State -1, Standing Light Punch]
type = ChangeState
value = 200 
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "x"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 230 || StateNo = 400 || StateNo = 430) && Time >= 4
trigger3 = var(4)

[State -1, Standing Light Kick]
type = ChangeState
value = 230 
triggerAll = !AILevel
triggerAll = command != "holddown" && command = "a"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 400 || StateNo = 430) && Time >= 4
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
trigger2 = (StateNo = 200 || StateNo = 400 || StateNo = 430) && Time >= 4
trigger3 = var(4)

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerAll = !AILevel
triggerAll = command = "holddown" && command = "a"
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = (StateNo = 200 || StateNo = 400 || StateNo = 430) && Time >= 4
trigger3 = var(4)

[State -1, Jumping Heavy Punch]
type = ChangeState
value = 620
triggerAll = !AILevel
triggerAll = command = "z"
triggerAll = StateType = A
trigger1 = ctrl
trigger2 = var(4)

[State -1, Neutral Jumping Heavy Kick]
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
value = 195
triggerall = command = "s"
triggerall = !AILevel&&Roundstate=2&&StateType != A
triggerall = StateNo != [200,699]
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(5)

;==============================================================================================
;===========================================< A.I >============================================
;==============================================================================================

[State -1, roll / dodge]
type = changestate
value = ifelse(random < 600, 700, 710)
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && statetype != A && ctrl && random < (200 * (AIlevel ** 2 / 64.0))
trigger1 = enemynear, movetype = A && p2bodydist x < 80

[State -1, airrecover]
type=changestate
value=ifelse((pos y>=-20),5200,5210)
triggerall= AILevel && numenemy
triggerall= roundstate=2 && stateno=5050
trigger1= vel y>-1 && alive && canrecover && random < (350 * (AIlevel ** 2 / 64.0))


[State -1, run]
type = changestate
value = 102
trigger1 = AIlevel && numenemy
trigger1 = statetype = S && roundstate = 2 && ctrl && random < (300 * (AIlevel ** 2 / 64.0))
trigger1 = (stateno != [100, 105]) && enemynear, movetype != A && p2bodydist x > 100

[State -1, dash]
type = changestate
value = 105
triggerall = AIlevel && numenemy
triggerall = statetype = S && roundstate = 2 && ctrl
triggerall = (p2bodydist x = [0, 80]) && backedgebodydist > 80 && (stateno != [100, 105])
trigger1 = enemynear, movetype = A && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = enemynear, stateno = 5120 && enemynear, animtime = -3 && random < (300 * (AIlevel ** 2 / 64.0))

[State -1, Jump]
type = changestate
value = 40
triggerall = AIlevel && numenemy&&random < (50 * (AIlevel ** 2 / 64.0))
triggerall = roundstate = 2 && statetype != A
triggerall = enemynear, movetype = A && p2bodydist x < 160 && enemynear, hitdefattr = SC, AT
trigger1=ctrl

[state -1,AI Air Guard]
type = ChangeState
value = 132
triggerall = AIlevel && numenemy&& roundstate = 2&&InGuardDist
triggerall = ctrl&&statetype = A
trigger1 = enemynear,numproj
trigger2 = enemynear,HitDefAttr = SCA, NA,SA,HA
trigger2 = random <=ifelse(backedgedist<=10,900,700)

[State -1, Guard]
type = changestate
value = 120
trigger1 = AIlevel && numenemy
trigger1 = roundstate = 2 && inguarddist
trigger1 = ctrl && (stateno != [120, 155]) && !var(20)
trigger1 = !(enemynear, hitdefattr = SCA, AT) && (enemynear, time < 120)
trigger1 = statetype != A || p2statetype = A
trigger1 = random < (ifelse((p2stateno = [200, 699]), 300, ifelse((p2stateno = [1000, 2999]), 500, 1000)) * (AIlevel ** 2 / 64.0))

[State -1, Guard]
type = ChangeState
value = 120
triggerall= AILevel && numenemy&& (StateNo!=[120,155]) && !(enemynear,ctrl) && random < (450 * (AIlevel ** 2 / 64.0))
triggerall= Ctrl||stateno = 21
triggerall=enemynear,Movetype=A && !(enemynear,hitdefattr=SCA,AT) 
trigger1 = inguarddist

[State -1, Zero Counter]
type = changestate
value = 750
trigger1 = AIlevel && numenemy
trigger1 = (p2dist x = [-90, 90]) && stateno = 150 || stateno = 152
trigger1 = roundstate = 2 && power >= 2000 && !var(20) && life < 500 && random < (10 * (AIlevel ** 2 / 64.0))

[State -1, powercharge]
type = changestate
value = 730
trigger1 = AIlevel && numenemy
trigger1 = !numhelper(3033)
trigger1 = roundstate = 2 && statetype != A && ctrl
trigger1 = power < const(data.power) && power < powermax && !var(20)
trigger1 = random < (50 * (AIlevel ** 2 / 64.0)) && !inguarddist && p2movetype != A && p2dist x >= 160

[State -1, powercharge]
type = changestate
value = 730
trigger1 = AIlevel && numenemy
trigger1 = !numhelper(3033)
trigger1 = roundstate = 2 && statetype != A && ctrl
trigger1 = power < const(data.power) && power < powermax && !var(20)
trigger1 = random < (50 * (AIlevel ** 2 / 64.0)) && !inguarddist && p2movetype != A && p2dist x >= 160


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
TriggerAll = Var(59) < 1
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl && (StateNo != [100,106])
trigger1 = (EnemyNear, MoveType != A) && P2BodyDist x >= 160 && Random < (25 * (AILevel ** 2 / 64.0))

;---------------------------------------------------------------------------
[State -1, Standing Low Punch AI]
type = ChangeState
value = 200
triggerall = AILevel && numenemy&&roundstate=2&&StateType != A
triggerall = p2bodydist x <=45&&(p2bodydist y = [-80,5])&&P2statetype != A&&P2statetype != C&&P2statetype != L&& random < (650 * (AIlevel ** 2 / 64.0))
trigger1 = ctrl
trigger2 = (stateno = [100,101]) && random < 100
;---------------------------------------------------------------------------
[State -1, Standing Medium Punch AI]
type = ChangeState
value = 210
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != A && P2statetype != C
triggerall = (p2bodydist x = [0, 30]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (150 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [200,209])|| (stateno = [230,239])||(stateno = [400,409])||(stateno = [430,439]))&& movehit&&var(55)
trigger2 = random < 350
;---------------------------------------------------------------------------
[State -1, Standing High Punch AI]
type = ChangeState
value = 220
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 55]) && (p2bodydist y = [ -80, 80]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (80 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [210,219])|| (stateno = [240,249])||(stateno = [410,419])||(stateno = [440,449]))&& movehit&&var(55)
trigger2 = random < 650
;---------------------------------------------------------------------------
[State -1, Standing Low Kick AI]
type = ChangeState
value = 230
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != A
triggerall = (p2bodydist x = [0, 40]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (80 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [200,209])|| (stateno = [400,409]))&& movehit&&var(55)
trigger2 = random < 200
trigger3 = (stateno = [100,101]) && random < 100
;---------------------------------------------------------------------------
[State -1, Standing Medium Kick AI]
type = ChangeState
value = 240
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != A && P2statetype != C
triggerall = (p2bodydist x = [0, 55]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [210,219])|| (stateno = [230,239])||(stateno = [410,419])||(stateno = [430,439]))&& movehit&&var(55)
trigger2 = random < 350
;---------------------------------------------------------------------------
[State -1, Standing High Kick AI]
type = ChangeState
value = 250
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != C
triggerall = (p2bodydist x = [0, 60]) && (p2bodydist y = [ -60, 50]) && p2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [240,249])|| (stateno = [440,449]))&& movehit && stateno != 225&&var(55)
trigger2 = random < 800
;---------------------------------------------------------------------------
[State -1, Crouching Low Punch]
type = ChangeState
value = 400
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 40]) &&(p2bodydist y = [-50,25]) && P2statetype != A && P2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = [100,101]
;---------------------------------------------------------------------------
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 55]) &&(p2bodydist y = [-50,25]) && P2statetype != A && P2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (150 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [200,209])|| (stateno = [230,239])||(stateno = [400,409])||(stateno = [430,439]))&& movehit&&var(55)
trigger2 = random < 800
;---------------------------------------------------------------------------
[State -1, Crouching High Punch]
type = ChangeState
value = 420
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 70]) &&(p2bodydist y = [-80,5]) && P2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (125 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [210,219])|| (stateno = [240,249])||(stateno = [410,419])||(stateno = [440,449]))&& movehit&&var(55)=1
trigger2 = random < 600
;---------------------------------------------------------------------------
[State -1, Crouching Low Kick]
type = ChangeState
value = 430
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 35]) &&(p2bodydist y = [-50,25]) && P2statetype != A && P2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [200,209])|| (stateno = [400,409]))&& movehit&&var(55)
;---------------------------------------------------------------------------
[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = AILevel && numenemy && roundstate=2 && StateType != A
triggerall = (p2bodydist x = [0, 45]) &&(p2bodydist y = [-50,25]) && P2statetype != A && P2statetype != L && !(enemynear, hitfall)
trigger1 = ctrl && random < (75 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [210,219])|| (stateno = [230,239])||(stateno = [410,419])||(stateno = [430,439]))&& movehit&&var(55)
trigger2 = random < 350
;---------------------------------------------------------------------------
[State -1, Crouching High Kick]
type = ChangeState
value = 450
triggerall = AILevel && numenemy && roundstate=2 && StateType != A && P2statetype != A
triggerall = (p2bodydist x = [0, 55]) && (p2bodydist y = [ -50, 50]) && p2statetype != L && p2statetype = S && !(enemynear, hitfall)
trigger1 = ctrl && random < (100 * (AIlevel ** 2 / 64.0))
trigger2 = ((stateno = [220,229])|| (stateno = [240,249])||(stateno = [420,429])||(stateno = [440,449]))&& movehit&&var(55)
trigger2 = random < 900
;---------------------------------------------------------------------------
[State -1, Jumping Low Punch]
type = ChangeState
value = 600
triggerall = AILevel && numenemy&&roundstate=2&&statetype = A && (p2bodydist x = [0,60]) && (p2bodydist y = [ -50, 50]) && p2statetype != L
trigger1 = ctrl && random < (500 * (AIlevel ** 2 / 64.0))
;---------------------------------------------------------------------------
[State -1, Jumping Medium Punch]
type = ChangeState
value = 610
triggerall = AILevel && numenemy&&roundstate=2&&statetype = A && (p2bodydist x = [0, 70]) && (p2bodydist y = [ -50, 50]) && p2statetype != L 
trigger1 = ctrl && random < (ifelse((vel x > 0 && p2statetype = A), 250, 125) * (AIlevel ** 2 / 64.0)) 
trigger2 = (stateno = [600,609])&& movehit && var(55)=2 && random < 750
trigger3 = (stateno = [630,639])&& movehit && var(55)=2 && random < 250
;---------------------------------------------------------------------------
[State -1, Jumping High Punch]
type = ChangeState
value = 620
triggerall = AILevel && numenemy&&roundstate=2&&statetype = A && (p2bodydist x = [0, 100]) && (p2bodydist y = [ -80, 50]) && p2statetype != L 
trigger1 = ctrl && random < (150 * (AIlevel ** 2 / 64.0)) && !(enemynear, hitfall)
trigger2 = (stateno = [610,619])&& movehit && var(55)=2 && random < 700
trigger3 = (stateno = [640,649])&& movehit && var(55)=2 && random < 200
;---------------------------------------------------------------------------
[State -1, Jumping Low Kick]
type = ChangeState
value = 630
triggerall = AILevel && numenemy&&roundstate=2&&statetype = A && (p2bodydist x = [0, 70]) && (p2bodydist y = [ -50, 50]) && p2statetype != L 
trigger1 = ctrl && random < (50 * (AIlevel ** 2 / 64.0))
trigger2 = (stateno = [600,609])&& movehit && var(55)=2 && random < 250
;---------------------------------------------------------------------------
[State -1, Jumping Medium Kick]
type = ChangeState
value = 640
triggerall = AILevel && numenemy&&roundstate=2&&statetype = A && (p2bodydist x = [0, 90]) && (p2bodydist y = [ -50, 50]) && p2statetype != L 
trigger1 = ctrl && random < (250 * (AIlevel ** 2 / 64.0)) && !(enemynear, hitfall)
trigger2 = (stateno = [610,619])&& movehit && var(55)=2 && random < 100
trigger3 = (stateno = [630,639])&& movehit && var(55)=2 && random < 750
;---------------------------------------------------------------------------
[State -1, Jumping High Kick]
type = ChangeState
value = 650
triggerall = AILevel && numenemy &&roundstate=2&&statetype = A && (p2bodydist x = [0, 130]) && (p2bodydist y = [ -50, 50]) && p2statetype != L 
trigger1 = ctrl && random < (250 * (AIlevel ** 2 / 64.0)) && !(enemynear, hitfall) 
trigger2 = (stateno = [610,619])&& movehit && var(55)=2 && random < 250
trigger3 = (stateno = [640,649])&& movehit && var(55)=2 && random < 750
;---------------------------------------------------------------------------


;ai Zmugens

[State -1, AI ON] ;
Type = VarSet
TriggerAll = Var(59) < 1
TriggerAll = RoundState=2  
Trigger1 = AILevel>0 
v = 59
value= 1 
Ignorehitpause=1

[State -1, AI OFF]
Type=VarSet
Trigger1=var(59)>0 
Trigger1=RoundState!=2 
Trigger2=!IsHelper 
Trigger2=AILevel=0 
v=59
value=0 
Ignorehitpause=1

[State -1]
Type=VarSet
Trigger1=1
var(50)=(AILevel=1)*3+(AILevel=2)*7+(AILevel=3)*16+(AILevel=4)*30+(AILevel=5)*58+(AILevel=6)*90+ (AILevel=7)*150+(AILevel=8)*300

;AI SUPERS / HYPERS
[State -1,]
type = ChangeState
value = 3000
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = power >= 1000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000,4999]))
triggerAll = !(EnemyNear, ctrl) && (EnemyNear, StateNo != [120,155])
triggerAll = (P2BodyDist x = [0,62])
triggerAll = P2StateType != A && P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100, 101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]),200,50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4



[State -1,]
type = ChangeState
value = 3010
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType = A
triggerAll = Power >= 2000 && var(20) <= 60
triggerAll = (var(3) != [1, 2]) && pos y <= -80
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000, 4999]))
triggerAll = !(EnemyNear, ctrl) && (EnemyNear, StateNo != [120,155])
triggerAll = (P2BodyDist x = [0,85])
triggerAll = P2StateType != L
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))

[State -1,]
type = ChangeState
value = 3100
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000, 4999]))
triggerAll = !(EnemyNear, ctrl) && (EnemyNear, StateNo != [120,155])
triggerAll = (P2BodyDist x = [0,210])
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != A
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4


[State -1,]
type = ChangeState
value = 3150
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 2000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000, 4999]))
triggerAll = !(EnemyNear, ctrl) && (EnemyNear, StateNo != [120,155])
triggerAll = (P2BodyDist x = [0,210])
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != A
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1,]
type = ChangeState
value = 3250
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000, 4999]))
triggerAll = !(EnemyNear, ctrl) && (EnemyNear, StateNo != [120,155])
triggerAll = (P2BodyDist x = [0,210])
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != A
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1,]
type = ChangeState
value = 3200
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 2000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000, 4999]))
triggerAll = !(EnemyNear, ctrl) && (EnemyNear, StateNo != [120,155])
triggerAll = (P2BodyDist x = [0,210])
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != A
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1,]
type = ChangeState
value = 3300
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000, 4999]))
triggerAll = !(EnemyNear, ctrl) && (EnemyNear, StateNo != [120,155])
triggerAll = (P2BodyDist x = [0,210])
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != A
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1,]
type = ChangeState
value = 3350
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 2000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000, 4999]))
triggerAll = !(EnemyNear, ctrl) && (EnemyNear, StateNo != [120,155])
triggerAll = (P2BodyDist x = [0,210])
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != A
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1,]
type = ChangeState
value = 3339
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 1000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000, 4999]))
triggerAll = !(EnemyNear, ctrl) && (EnemyNear, StateNo != [120,155])
triggerAll = (P2BodyDist x = [0,210])
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != A
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1,]
type = ChangeState
value = 3400
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 2000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000, 4999]))
triggerAll = !(EnemyNear, ctrl) && (EnemyNear, StateNo != [120,155])
triggerAll = (P2BodyDist x = [0,210])
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != A
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1,]
type = ChangeState
value = 3500
triggerAll = AILevel && NumEnemy
triggerAll = RoundState = 2 && StateType != A
triggerAll = Power >= 3000 && var(20) <= 60
triggerAll = !var(16) && (var(15) < 1 || var(20) || (StateNo = [1000, 4999]))
triggerAll = !(EnemyNear, ctrl) && (EnemyNear, StateNo != [120,155])
triggerAll = (P2BodyDist x = [0,210])
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != A
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4

[State -1,]
type = ChangeState
value = 1000
triggerall=AILevel && numenemy && RoundState=2 && StateType != A &&var(20)<=60&& random < (60 * (AIlevel ** 2 / 64.0))
triggerall=(enemynear,statetype != L) &&(enemynear,stateno!=[5100,5220]) &&(p2bodydist x >=60) && (p2bodydist y =[-80,5])
triggerall=(enemynear, statetype != A) &&(enemynear, statetype = S)&& !numhelper(3005) && !Numhelper(3055) && !Numhelper(1805) && Ifelse(!var(20), !numhelper(1005), numhelper(1005)<=4)
trigger1=ctrl || StateNo=40 || StateNo=52 || (StateNo=[100,101])
trigger2=var(5)
trigger3=(stateno=[200,440])&&movehit&&random<200

[State -1,]
type = ChangeState
value = 1100
triggerall=AILevel && numenemy && RoundState=2 && StateType != A &&var(20)<=60&& random < (250 * (AIlevel ** 2 / 64.0))
triggerall=(p2stateno != [120, 155]) && (enemynear,statetype != L)&&(enemynear,stateno!=[5100,5220]) && p2bodydist x >=10 && p2bodydist x <=70 &&(p2dist y=[-110,5]) &&(enemynear, statetype != C)
trigger1=ctrl || (StateNo=[100,101])|| (StateNo=[110,111])
trigger2=var(5)
trigger3=(stateno=[200,440])&&movehit&&random<200

[State -1,]
type = ChangeState
value = 1200
triggerall = AILevel && numenemy&&roundstate=2&&StateType != A
triggerAll = RoundState = 2 && StateType != A
triggerAll = !(EnemyNear, ctrl) && (EnemyNear, StateNo != [120,155])
triggerAll = (P2BodyDist x = [0,210])
triggerAll = P2StateType != A && P2StateType != L && P2MoveType != A
trigger1 = (ctrl || StateNo = 52 || (StateNo = [100,101])) && Random < (100 * (AILevel ** 2 / 64.0))
trigger2 = var(7) && MoveHit && Random < (ifElse((var(20) = [1,30]), 200, 50) * (AILevel ** 2 / 64.0))
trigger2 = EnemyNear, GetHitVar(HitTime) >= 4