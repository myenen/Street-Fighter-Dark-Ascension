[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Defaults]
command.time = 30
command.buffer.time = 1

;-| 2/3 Button Combination |-----------------------------------------------

[command]
name = "recovery";required (do not remove)
command = x+y
time = 1

[Command]
name = "undizzy"
command = ~B, F, B, F, B, F, B, F
time = 35

[Command]
name = "undizzy"
command = ~D, U, D, U, D, U, D, U
time = 35

;-| push back |-----------------------------------------------------------
[command]
name = "guardpush"
command = x+y
time = 10

[command]
name = "guardpush"
command = x+z
time = 10

[command]
name = "guardpush"
command = z+y
time = 10

;-| super jump |-----------------------------------------------------------
[command]
name = "du"
command = ~D, $U
time = 8

[command]
name = "abc"
command = a+b+c
time = 8

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


;-| Hold Button |--------------------------------------------------------
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

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1
;-| CPU |----------------------------------------------------------------
[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
time = 1

[Command]
name = "start2"
command = s
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holdfwd2"
command = /$F
time = 1

[Command]
name = "holdback2"
command = /$B
time = 1

[Command]
name = "holdup2"
command = /$U
time = 1

[Command]
name = "holddown2"
command = /$D
time = 1

[Command]
name = "holda2"
command = /a
time = 1

[Command]
name = "holdb2"
command = /b
time = 1

[Command]
name = "holdc2"
command = /c
time = 1

[Command]
name = "holdx2"
command = /x
time = 1

[Command]
name = "holdy2"
command = /y
time = 1

[Command]
name = "holdz2"
command = /z
time = 1

[Command]
name = "holdstart2"
command = /s
time = 1

[Command]
name = "recovery2"
command = x+a
time = 1

;-| Super Motions |--------------------------------------------------------



[Command]
name = "108PH"
command = ~D, DF, F, x+y
time = 10

[Command]
name = "108PH"
command = ~D, DF, F, y+z
time = 10

[Command]
name = "108PH"
command = ~D, DF, F, x+z
time = 10

[Command]
name = "KTM"
command = ~D, DB, B, a+b
time = 32

[Command]
name = "KTM"
command = ~D, DB, B, b+c
time = 32

[Command]
name = "KTM"
command =~D, DB, B, a+c
time = 32


[Command]
name = "KT"
command = ~D, DF, F, a+b
time = 32

[Command]
name = "KT"
command = ~D, DF, F, b+c
time = 32

[Command]
name = "KT"
command =~D, DF, F, a+c
time = 32

[Command]
name = "KT2"
command = ~D, DB, B, x+y
time = 32

[Command]
name = "KT2"
command = ~D, DB, B, y+z
time = 32

[Command]
name = "KT2"
command =~D, DB, B, x+z
time = 32

[Command]
name = "109PH"
command = x, x, F, a, z
time=45

[Command]
name = "109PH"
command = x, x, F, a, ~z
time=45

[Command]
name = "109PH"
command = x, x, /F, a, ~z
time = 48

[Command]
name = "109PH"
command = x, x, F, a+z
time = 40

[Command]
name = "109PH"
command = x, x, F+a+z
time = 32
;-| Special Motions |------------------------------------------------------


[Command]
name = "01"
command = ~D, DF, F, x

[Command]
name = "02"
command = ~D, DF, F, y

[Command]
name = "03"
command = ~D, DF, F, z

[Command]
name = "04"
command = ~F, D, DF, x

[Command]
name = "05"
command = ~F, D, DF, y

[Command]
name = "06"
command =~F, D, DF, z

[Command]
name = "07"
command = ~D, DB, B, a

[Command]
name = "08"
command = ~D, DB, B, b

[Command]
name = "09"
command = ~D, DB, B,c

[Command]
name = "10"
command = ~D, DF, F,a


[Command]
name = "10"
command = ~D, DF, F,b


[Command]
name = "10"
command = ~D, DF, F,c

[Command]
name = "11"
command = ~F, D, DF,a


[Command]
name = "11"
command = ~F, D, DF,b


[Command]
name = "11"
command = ~F, D, DF,c

[Command]
name = "12"
command = ~B, D, DB,a


[Command]
name = "12"
command = ~B, D, DB,b


[Command]
name = "12"
command = ~B, D, DB,c

[command] 
name = "Fly"
command = D, D,c


[Command]
name = "fwy"
command = /F,y
time = 1

[Command]
name = "fwz"
command = /F,z
time = 1

[Command]
name = "fwb"
command = /F,b
time = 1

[Command]
name = "fwy"
command =~D, D,y


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
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "down";Required (do not remove)
command = $D
time = 1


;throw shouldersuplex

[Command]
name = "2k"
command = a+b
time = 5
[Command]
name = "2k"
command = b+c
time = 5
[Command]
name = "2k"
command = c+a
time = 5

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
name = "recovery";Required (do not remove)
command = x+a
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
; --------------------------------------------------------------------------
[Statedef -1]

;===========================================================================
; Skill Section
;===========================================================================
; Fly Mode
[State -1, Fly]
type = ChangeState
value = 730
triggerall = var(59) = 0
triggerall = StateNo != 731
triggerall = command = "Fly"
trigger1 = ctrl
trigger2 = StateNo = [200,650]

[State -1, Fly End]
type = Null;ChangeState
value = 49
triggerall = command = "Fly"
triggerall = Var(12) > 0
trigger1 = 1
;===========================================================================
;Artificial Intelligence
;===========================================================================
;var(59) = AI variable
;var(50) = Difficulty variable

[State -1, AI ON] ; Turn the AI on when
Type = VarSet
TriggerAll = Var(59) < 1; it is not on yet and
TriggerAll = RoundState=2 ; the fight has started and is not over yet and
Trigger1 = AILevel>0 ; the computer is playing the character
v = 59
value= 1 ; value of 1 will mean the AI is on
Ignorehitpause=1

[State -1, AI OFF] ; Turn the AI off when
Type=VarSet
Trigger1=var(59)>0 ; it is on and
Trigger1=RoundState!=2 ; the round is not started yet or is already over
Trigger2=!IsHelper ; OR if we are a player, but
Trigger2=AILevel=0 ; the computer is not in control
v=59
value=0 ; value of 0 will mean the AI is off. values other than 0 and 1 are not used in this example, we have only one AI mode, the normal one.
Ignorehitpause=1

[State -1]
Type=VarSet
Trigger1=1
var(50)=(AILevel=1)*3+(AILevel=2)*7+(AILevel=3)*16+(AILevel=4)*30+(AILevel=5)*58+(AILevel=6)*90+ (AILevel=7)*150+(AILevel=8)*300

;--------------------------------------------------------------------------------------------------------------------------------
;===========================================================================
;Artificial Intelligence
;===========================================================================
;var(59) = AI variable
;var(50) = Difficulty variable

[State -1, AI ON] ; Turn the AI on when
Type = VarSet
TriggerAll = Var(59) < 1; it is not on yet and
TriggerAll = RoundState=2 ; the fight has started and is not over yet and
Trigger1 = AILevel>0 ; the computer is playing the character
v = 59
value= 1 ; value of 1 will mean the AI is on
Ignorehitpause=1

[State -1, AI OFF] ; Turn the AI off when
Type=VarSet
Trigger1=var(59)>0 ; it is on and
Trigger1=RoundState!=2 ; the round is not started yet or is already over
Trigger2=!IsHelper ; OR if we are a player, but
Trigger2=AILevel=0 ; the computer is not in control
v=59
value=0 ; value of 0 will mean the AI is off. values other than 0 and 1 are not used in this example, we have only one AI mode, the normal one.
Ignorehitpause=1

[State -1]
Type=VarSet
Trigger1=1
var(50)=(AILevel=1)*3+(AILevel=2)*7+(AILevel=3)*16+(AILevel=4)*30+(AILevel=5)*58+(AILevel=6)*90+ (AILevel=7)*150+(AILevel=8)*300

;--------------------------------------------------------------------------------------------------------------------------------
;--------------------------------------------------------------------------------------------------------------------------------

;You're boring him.....===========================================================================
[State -1, random taunt]
type = changestate
value = 195
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A
triggerall = ctrl
triggerall = P2BodyDist X >= 50
triggerall = random <= 50
triggerall = life >= p2life+350
trigger1 = p2stateno = 5050
trigger2 = p2stateno = [5100,5101]
trigger3 = p2stateno = 5120   || p2stateno = 5020 || p2stateno = 5030

[State -1, Super Jump]
type = ChangeState
value = 40
triggerall = var(59) != 0 && roundstate =2; Applied if AI is activated
trigger1 = statetype != A ; AI level is based on level 1 - 8 - AIlevel is multipled by 10 meaning at AIlevel = 8 it has a 80% change of this move happening with 80% of the triggers that is activated.
trigger1 = movehit >= 1
trigger1 = stateno = 420

[State -1, AI Super Jump]
type = ChangeState
value = 2600
triggerall = var(59) = 1
triggerall = statetype != A
triggerall = command = "holdfwd"
trigger1= p2movetype=A && ctrl && p2bodydist x >70
trigger1 = ctrl
trigger1 = p2stateno= [1000,1099]

[State -1, AI Run Fwd]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 100
triggerall = var(59) = 1
triggerall = statetype != A
trigger1 = ctrl
trigger1 = stateno != 100
trigger1 = stateno != 105
trigger1 = Random < 50



[State -1, AI Air Run Fwd]
type = ChangeState
value = 102
triggerall = var(59) = 1
trigger1 = statetype = A
trigger1 = ctrl
trigger1 = stateno != [1400, 1499]
trigger1 = p2bodydist x > 120
trigger1 = Random < 20


[State -1, AI Throw]
type = ChangeState
value = 800
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A
triggerall = P2movetype != H
triggerall = P2statetype != A
triggerall = P2statetype != L
trigger1 = ctrl
trigger1 = Random <= 20
trigger1 = p2bodydist X < 3

[State -1, AI Throw]
type = ChangeState
value = 850
triggerall = var(59) != 0 && roundstate =2
triggerall = StateType = A
trigger1 = ctrl
trigger1 = P2BodyDist X < 4
trigger1 = P2StateType = A
trigger1 = Random < 100


;===========================================================================
; AI Guard
;===========================================================================

[State -1]
Type=Changestate
Triggerall=Inguarddist; Guard when in guard distance
Triggerall=var(59)>0; and the AI is on
Triggerall=ctrl; and we have control
Trigger1 = random< (var(50)*2+(AiLevel>=3)*100); chance is higher than for attacking, but not by too much.
value=120

[State -1]; The engine will still guard by through pressing the back button, we need to disable that.
Type=Assertspecial
Triggerall=StateNo!=[120,160]
Trigger1=var(59)>0
flag=noairguard
flag2=nocrouchguard
flag3=nostandguard

;---------------------------------------------------------------------------
;AI Guard (Standing)
[State -1, AI Guard (Standing)]
type = ChangeState
value = 130
triggerall = var(59) != 0
triggerall = roundstate =2
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1); Difficulty level
triggerall = AIlevel > 4 || ((random < 499) && Time <= 1) ; Difficulty level
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1)
triggerall = enemy,NumProj = 1
triggerall = (ctrl && statetype != A) || (stateno = 100) || (stateno = 105)
triggerall = p2statetype != C
trigger1 =Enemynear,statetype = A && Enemynear,movetype = A
trigger1 = inguarddist

;---------------------------------------------------------------------------
;AI Guard (Crouching)
[State -1, AI Guard (Crouching)]
type = ChangeState
value = 131
triggerall = var(59) != 0
triggerall = roundstate =2
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1); Difficulty level
triggerall = AIlevel > 4 || ((random < 499) && Time <= 1) ; Difficulty level
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1)
triggerall = enemy,numproj = 1 
triggerall = (ctrl && statetype != A) || (stateno = 100) || (stateno = 105)
triggerall = p2statetype = C
trigger1 =Enemynear,statetype = A && Enemynear,movetype = A
trigger1 = inguarddist


;AI Guard Push (Stand)
[State -1, Guard Push (Stand)]
type = ChangeState
value = 171
triggerall = var(59) != 0
triggerall = roundstate =2
triggerall = stateno = 150
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1); Difficulty level
triggerall = AIlevel > 4 || ((random = [401,700]) && Time <= 1) ; Difficulty level
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1) ; Difficulty level
trigger1 = statetype = S
ignorehitpause = 1

;---------------------------------------------------------------------------
;AI Guard (Air)
[State -1, AI Guard (Air)]
type = ChangeState
value = 132
triggerall = var(59) != 0
triggerall = roundstate =2
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1); Difficulty level
triggerall = AIlevel > 4 || ((random < 499) && Time <= 1) ; Difficulty level
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1)
triggerall = enemy,NumProj = 1
triggerall = statetype = A
triggerall = ctrl
trigger1 = inguarddist
trigger1 =Enemynear,statetype = A && Enemynear,movetype = A


[State -1]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 0
triggerall = var(59) != 0
triggerall = roundstate = 3
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;ai misc
;---------------------------------------------------------------------------

;==============================Ground Combo=============================================

;COMBO 1

;
[State -1,1]
type = ChangeState
value = 230
triggerall = AIlevel > 2 || (random < 250)
triggerall = AIlevel > 4 || (random < 500)
triggerall = AIlevel > 7 || (random < 799)
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A && P2Bodydist Y > -30 && enemynear, statetype != L
triggerall = ctrl = 1
trigger1 = P2BodyDist X = [0,30]


;
[State -1,2]
type = ChangeState
value = 200
triggerall = AIlevel > 2 || (random < 250)
triggerall = AIlevel > 4 || (random < 500)
triggerall = AIlevel > 7 || (random < 799)
triggerall = var(59) != 0 && roundstate =2 
triggerall = statetype != A
trigger1 = stateno = 230
trigger1 = movecontact 

;
[State -1,2]
type = ChangeState
value = 210
triggerall = AIlevel > 2 || (random < 250)
triggerall = AIlevel > 4 || (random < 500)
triggerall = AIlevel > 7 || (random < 799)
triggerall = var(59) != 0 && roundstate =2 
triggerall = statetype != A
trigger1 = stateno = 200
trigger1 = movecontact 



;
[State -1,2]
type = ChangeState
value = 240
triggerall = AIlevel > 2 || (random < 250)
triggerall = AIlevel > 4 || (random < 500)
triggerall = AIlevel > 7 || (random < 799)
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A
trigger1 = stateno = 210
trigger1 = movecontact 

;
[State -1,2]
type = ChangeState
value = 420
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A
trigger1 = stateno = 240
trigger1 = movecontact 

;
[State -1,2]
type = ChangeState
value = 420
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A
triggerall = (Ctrl) && (Statetype = S)&& p2statetype = A
trigger1 = (p2bodydist X <= 16)&&(EnemyNear, Pos Y > -100)
trigger1 = (prevstateno != 5120)

;COMBO 2

;
[State -1,1]
type = ChangeState
value = 440
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A && P2Bodydist Y > -30 && enemynear, statetype != L
triggerall = ctrl = 1
trigger1 = P2BodyDist X = [25,50]
trigger1 = random = [0,400]


;
[State -1,2]
type = ChangeState
value =220
triggerall = var(59) != 0 && roundstate =2 && random = [401,700]
triggerall = statetype != A
trigger1 = stateno = 440
trigger1 = movecontact 

;
[State -1,2]
type = ChangeState
value = 1020
triggerall = var(59) != 0 && roundstate =2 && random = [401,700]
triggerall = statetype != A
trigger1 = stateno =220
trigger1 = movecontact



[State -1,3]
type = ChangeState
value = 1200
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype != A
trigger1 = stateno =220
trigger1 = movecontact

[State -1,3]
type = ChangeState
value = 1400
triggerall = var(59) != 0 && roundstate =2 && random = [401,700]
triggerall = statetype != A
Triggerall=StateNo!=1003
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1)
triggerall = AIlevel > 4 || ((random = [401,700]) && Time <= 1)
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1)
trigger1 = p2bodydist x = [200,300]
trigger1 = ctrl = 1
trigger1 = enemynear, statetype != L && P2statetype != C


;================================AI AIR COMBO=============================================

[State -1]
type = ChangeState
value = 600
triggerall = var(59) != 0 && roundstate =2
triggerall = statetype = A
triggerall = (random < (AILevel* 100))
trigger1 = p2bodydist x <= 45 && p2bodydist y = [-80,65]
trigger1 = vel y > 0 && p2statetype != A||p2statetype = A
trigger1 = ctrl 

[State -1]
type = ChangeState
value = 630
triggerall = var(59) != 0 && roundstate =2
trigger1 = stateno = 600
trigger1 = movecontact >= 1

[State -1]
type = ChangeState
value = 610
triggerall = var(59) != 0 && roundstate =2
trigger1 = stateno = 630
trigger1 = movecontact >= 1


[State -1]
type = ChangeState
value = 640
triggerall = var(59) != 0 && roundstate =2
trigger1 = stateno = 610 
trigger1 = movecontact >= 1

[State -1]
type = ChangeState
value = 620
triggerall = var(59) != 0 && roundstate =2
trigger1 = stateno = 640 && random = [0,499]
trigger1 = movecontact >= 1

[State -1]
type = ChangeState
value = 650
triggerall = var(59) != 0  && roundstate =2
trigger1 = stateno = 640 && random = [0,499]
trigger1 = movecontact >= 2

[State -1,32]
type = ChangeState
value = 1230
triggerall = var(59) != 0 && random = [401,700]
triggerall = roundstate = 2
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1)
triggerall = AIlevel > 4 || ((random = [401,700]) && Time <= 1)
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1)
trigger1 = statetype = A
trigger1 = stateno = 640 || stateno = 610
trigger1 = movecontact

[State -1,32]
type = ChangeState
value = 1050
triggerall = var(59) != 0 && random = [401,700]
triggerall = roundstate = 2
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1)
triggerall = AIlevel > 4 || ((random = [401,700]) && Time <= 1)
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1)
trigger1 = statetype = A
trigger1 = stateno = 640 || stateno = 610
trigger1 = movecontact

[State -1,3]
type = ChangeState
value = 1020
triggerall = var(59) != 0 && roundstate =2 && random = [401,700]
triggerall = statetype != A
Triggerall=StateNo!=1003
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1)
triggerall = AIlevel > 4 || ((random = [401,700]) && Time <= 1)
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1)
trigger1 = p2bodydist x = [200,300]
trigger1 = ctrl = 1
trigger1 = enemynear, statetype != L && P2statetype != C

;===========================================================================
;
[State -1, ]
type = ChangeState
value = 3000
triggerall = statetype = S && var(59) != 0 && random <= 400
triggerall = stateno != [800,850]
triggerall = power >= 1000
triggerall = p2statetype !=A||((p2bodydist y =[-55,-20])&&enemy,vel y >=0&& AILevel >3)
triggerall = p2statetype !=L
triggerall = enemynear,anim!=5120
triggerall = p2bodydist x = [0,300]
triggerall = stateno != [1200,1299]
trigger1= p2movetype=A && ctrl && p2bodydist x >90
trigger2 = stateno = 220 && movecontact && p2movetype=H
trigger3 = stateno = 240 && movecontact && p2movetype=H
trigger4 = stateno = 210 && movecontact && p2movetype=H
trigger5 = stateno = 440 && movecontact && p2movetype=H
trigger6 = stateno = 250 && movecontact & p2movetype=H
trigger7= enemynear,anim=5300 && ctrl

[State -1,32]
type = ChangeState
value = 3050
triggerall = power >= 1000
triggerall = var(59) != 0 && random = [401,700]
triggerall = roundstate = 2
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1)
triggerall = AIlevel > 4 || ((random = [401,700]) && Time <= 1)
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1)
trigger1 = statetype = A
trigger1 = stateno = 640 || stateno = 610|| stateno = 1020|| stateno = 1050
trigger1 = time = 5
trigger2 = stateno = 1200
trigger2 = time = 12

;
[State -1, ]
type = ChangeState
value = 3100
triggerall = statetype = S && var(59) != 0 && random <= 400
triggerall = stateno != [800,850]
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1)
triggerall = AIlevel > 4 || ((random = [401,700]) && Time <= 1)
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1)
triggerall = power >= 1000
triggerall = stateno < 3100
triggerall = p2statetype !=A||((p2bodydist y =[-55,-20])&&enemy,vel y >=0&& AILevel >3)
triggerall = p2statetype !=L
triggerall = enemynear,anim!=5120
triggerall = p2bodydist x = [0,20]
trigger1= p2movetype=A && ctrl && p2bodydist x <40
trigger2 = stateno = [200,450]
trigger2 = movecontact && time > 17&& p2movetype=H
trigger3= enemynear,anim=5300 && ctrl


[State -1,32]
type = ChangeState
value = 3200
triggerall = power >= 1000
triggerall = var(59) != 0 && random = [401,700]
triggerall = roundstate = 2
triggerall = AIlevel > 2 || ((random < 250) && Time <= 1)
triggerall = AIlevel > 4 || ((random = [401,700]) && Time <= 1)
triggerall = AIlevel > 7 || ((random < 799) && Time <= 1)
trigger1 = statetype = A
trigger1 = stateno = 420
trigger1 = time = 5

;
[State -1, ]
type = ChangeState
value = 3300
triggerall = (Var(0) = 0)
triggerall = power >= 3000
triggerall = random <= 31*AILevel
triggerall = AILevel >0
triggerall = statetype != A
triggerall = p2statetype !=A
triggerall = p2statetype !=L
triggerall = ctrl || stateno=20
triggerall = stateno != [200,450]
Triggerall = (RoundState = 2)
triggerall = (p2MoveType != H)|| (p2stateno=120||p2stateno=140)
triggerall = p2bodydist X < 40
triggerall = p2bodydist y = 0
triggerall = stateno != [800,899]
triggerall = stateno != [1100,1999]
trigger1= ctrl
trigger2 = (p2stateno =[120,150]) &&ctrl
trigger3 = p2movetype=A && ctrl && (enemynear,hitdefattr!=SCA,AA,AP)&& AIlevel >5


;
[State -1, ]
type = ChangeState
value = 3400
triggerall = statetype = S && var(59) != 0 && random <= 400
triggerall = stateno != [800,850]
triggerall = power >= 3000
triggerall = p2statetype !=A||((p2bodydist y =[-55,-20])&&enemy,vel y >=0&& AILevel >3)
triggerall = p2statetype !=L
triggerall = enemynear,anim!=5120
triggerall = p2bodydist x = [0,300]
trigger1= p2movetype=A && ctrl && p2bodydist x >90
trigger2 = stateno = 240 && movecontact && time > 17&& p2movetype=H
trigger3 = stateno = 440 && movecontact && time > 17&& p2movetype=H
trigger4 = stateno = 220 && movecontact && time > 17&& p2movetype=H
trigger5 = stateno = 450 && movecontact && time > 17&& p2movetype=H
trigger6 = stateno = 250 && movecontact && time > 17&& p2movetype=H
trigger7= enemynear,anim=5300 && ctrl

;=======================================================================================
;HYPER COMBOS

[State -1, ]
type = ChangeState
value = 3400
triggerall = Command = "109PH"
triggerall = var(59) = 0
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = statetype != a
trigger2=(stateno=[200,499])
trigger3 = stateno = [1000,1999]


[State -1, ]
type = ChangeState
value = 3300
triggerall = Command = "KT2"
triggerall = var(59) = 0
triggerall = statetype != a
triggerall = power >= 3000
trigger1 = statetype !=a 
trigger1 = ctrl
trigger2 = statetype != a
trigger2=(stateno=[200,499])
trigger3 = stateno = [1000,1999]


[State -1, ]
type = ChangeState
value = 3200
triggerall = Command = "KT"
triggerall = var(59) = 0
triggerall = statetype != a
triggerall = power >= 1000
trigger1 = statetype !=a 
trigger1 = ctrl
trigger2 = statetype != a
trigger2=(stateno=[200,499])
trigger3 = stateno = [1000,1999]

[State -1, ]
type = ChangeState
value = 3100
triggerall = Command = "KTM"
triggerall = var(59) = 0
triggerall = statetype != a
triggerall = power >= 1000
trigger1 = statetype !=a 
trigger1 = ctrl
trigger2 = statetype != a
trigger2=(stateno=[200,499])
trigger3 = stateno = [1000,1999]

[State -1, ]
type = ChangeState
value = 3050
triggerall = roundstate = 2 
triggerall =  !AiLevel
triggerall = Command = "108PH"
Triggerall = StateType != S
triggerall = power >= 1000
trigger1 = ctrl
trigger2=(stateno=[600,650])
trigger3 = stateno = [1000,1999]


[State -1, ]
type = ChangeState
value = 3000
triggerall = Command = "108PH"
triggerall = var(59) = 0
triggerall = power >= 1000
triggerall = statetype != A
trigger1 = ctrl
trigger2 = statetype != a
trigger2=(stateno=[200,499])
trigger3 = stateno = [1000,1999]


;---------------------------------------------------------------------------;

;SUPERS


[state -1, a2]
type = ChangeState
value = 1400
triggerall = command = "11"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]

[state -1, a2]
type = ChangeState
value = 1410
triggerall = command = "12"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]


[state -1, a2]
type = ChangeState
value = 1130
triggerall = command = "04"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = stateno = [600,699]

[state -1, a2]
type = ChangeState
value = 1140
triggerall = command = "05"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = stateno = [600,699]

[state -1, a2]
type = ChangeState
value = 1150
triggerall = command = "06"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = stateno = [600,699]

[state -1, a2]
type = ChangeState
value = 1030
triggerall = command = "01"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = stateno = [600,699]

[state -1, a2]
type = ChangeState
value = 1040
triggerall = command = "02"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = stateno = [600,699]

[state -1, a2]
type = ChangeState
value = 1050
triggerall = command = "03"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = stateno = [600,699]

[state -1, a2]
type = ChangeState
value = 1230
triggerall = command = "07"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = stateno = [600,699]

[state -1, a2]
type = ChangeState
value = 1240
triggerall = command = "08"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = stateno = [600,699]

[state -1, a2]
type = ChangeState
value = 1250
triggerall = command = "09"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = stateno = [600,699]

;01
[state -1, a2]
type = ChangeState
value = 1200
triggerall = statetype != A
triggerall = command = "07"
trigger1 = ctrl
trigger2 = stateno = [200,499]

;01
[state -1, a2]
type = ChangeState
value = 1210
triggerall = statetype != A
triggerall = command = "08"
trigger1 = ctrl
trigger2 = stateno = [200,499]

;01
[state -1, a2]
type = ChangeState
value = 1220
triggerall = statetype != A
triggerall = command = "09"
trigger1 = ctrl
trigger2 = stateno = [200,499]

;01
[state -1, a2]
type = ChangeState
value = 1100
triggerall = statetype != A
triggerall = command = "04"
trigger1 = ctrl
trigger2 = stateno = [200,499]

[state -1, a2]
type = ChangeState
value = 1110
triggerall = statetype != A
triggerall = command = "05"
trigger1 = ctrl
trigger2 = stateno = [200,499]


[state -1, a2]
type = ChangeState
value = 1120
triggerall = command = "06"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]



;01
[state -1, a2]
type = ChangeState
value = 1000
triggerall = statetype != A
triggerall = command = "01"
trigger1 = ctrl
trigger2 = stateno = [200,499]

[state -1, a2]
type = ChangeState
value = 1010
triggerall = statetype != A
triggerall = command = "02"
trigger1 = ctrl
trigger2 = stateno = [200,499]


[state -1, a2]
type = ChangeState
value = 1020
triggerall = command = "03"
triggerall = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200,499]

[state -1, a2]
type = ChangeState
value = 1300
triggerall = command = "10"
triggerall = statetype = a
trigger1 = ctrl
trigger2 = stateno = [600,699]

;Super Jump
[state -1]
type = changestate
value = 40
triggerall = var(59) = 0
triggerall = command = "abc"
trigger1 = statetype != a
trigger1 = ctrl
trigger3 = stateno = 450


[State -1, Run Forward]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 100
triggerall = var(59) = 0
triggerall = statetype != a
trigger1 = (command = "FF") && (stateno !=[100,106])
trigger1 = ctrl

;
[state -1, suicidedive]
Type = changestate
value = 228
triggerall = time >=4
triggerall = command = "z"
trigger1 = stateno = 100

[State -1, Back Dash]
type = ChangeState
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "BB" && (stateno !=[100,106])
trigger1 = (StateType = S||StateType != A) && (ctrl)
value = 105

[state -1, run Fwd]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 102
triggerall = statetype = a
triggerall = var(59) = 0
trigger1 = (command = "FF") && (stateno !=[100,106])
trigger1 = ctrl

[state -1, run Fwd]
type = ChangeState
triggerall = !NumPartner || NumPartner && (sysvar(4) != [8,9]) && (sysvar(4) != 12) && (StateNo != [1251109,1251114])
value = 103
triggerall = statetype = a
triggerall = var(59) = 0
trigger1 = (command = "BB") && (stateno !=[100,106])
trigger1 = ctrl
;---------------------------------------------------------------------------;
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(59) = 0
triggerall = roundstate = 2
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl


[State -1, Throw]
type = changestate
value = 800
triggerall = var(59) = 0
trigger1 = command = "z"
trigger1 = command = "holdfwd" || command = "holdback"
trigger1 = statetype = s
trigger1 = ctrl
trigger1 = p2bodydist x < 10
trigger1 = p2statetype = s || p2statetype = c
trigger1 = p2movetype != h

[State -1, Air Throw]
type = ChangeState
value = 850
triggerall = p2stateno != 6100
triggerall = p2stateno != [5040,5999]
triggerall = !var(26)
triggerall =  command = "z"
triggerall = statetype = A
triggerall = ctrl
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = A)

trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = A)


;stand light punch
[state -1]
type = changestate
value = 200
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = (stateno = 230) && movecontact
;---------------------------------------------------------------------------
;stand medium punch
[state -1]
type = changestate
value = 215
triggerall = var(59) = 0
triggerall = command = "fwy"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4= (stateno = 400) && movecontact
trigger5 = (stateno = 430) && movecontact
trigger6 = (stateno = 210) && movecontact

;stand medium punch
[state -1]
type = changestate
value = 210
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4= (stateno = 400) && movecontact
trigger5 = (stateno = 430) && movecontact

;---------------------------------------------------------------------------

;stand strong punch
[state -1]
type = changestate
value = 220
triggerall = var(59) = 0
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 210) && movecontact
trigger4 = (stateno = 230) && movecontact
trigger5 = (stateno = 240) && movecontact
trigger6 = (stateno = 400) && movecontact
trigger7 = (stateno = 410) && movecontact
trigger8 = (stateno = 430) && movecontact
trigger9 = (stateno = 440) && movecontact
trigger10 = (stateno = 215) && movecontact
trigger11 = (stateno = 228) && movecontact

;---------------------------------------------------------------------------
;stand light kick
[state -1]
type = changestate
value = 230
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl

;---------------------------------------------------------------------------
[state -1]
type = changestate
value = 245
triggerall = var(59) = 0
triggerall = command = "fwb"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 230) && movecontact
trigger4= (stateno = 400) && movecontact
trigger5 = (stateno = 430) && movecontact
trigger6 = (stateno = 210) && movecontact

;standing medium kick
[state -1]
type = changestate
value = 240
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = s
trigger1 = ctrl
trigger2 = stateno = 230 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 400 && movecontact
trigger5 = stateno = 430 && movecontact
trigger6 = stateno = 200 && movecontact
;---------------------------------------------------------------------------
;standing strong kick
[state -1]
type = changestate
value = 250
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 210 && movecontact
trigger4= stateno = 230 && movecontact
trigger5 = stateno = 240 && movecontact
trigger6 = stateno = 400 && movecontact
trigger7 = stateno = 410 && movecontact
trigger8 = stateno = 430 && movecontact
trigger9 = stateno = 440 && movecontact
trigger10 = (stateno = 220) && movecontact
trigger11 = (stateno = 215) && movecontact
trigger12 = (stateno = 228) && movecontact

;---------------------------------------------------------------------------
;taunt
;’§”­
[state -1, taunt]
type = changestate
value = 195
triggerall = var(59) = 0
triggerall = command = "start"
trigger1 = statetype != a
trigger1 = ctrl

;---------------------------------------------------------------------------
;crouching light punch
[state -1, crouching light punch]
type = changestate
value = 400
triggerall = var(59) = 0
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl

;---------------------------------------------------------------------------
;crouching medium punch
[state -1, crouching medium punch]
type = changestate
value = 410
triggerall = var(59) = 0
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 240 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
;crouching strong punch
[state -1, crouching strong punch]
type = changestate
value = 420
triggerall = var(59) = 0
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 430 && movecontact
trigger8 = stateno = 440 && movecontact
trigger9 = stateno = 210 && movecontact
trigger10 = stateno = 250 && movecontact
trigger11 = stateno = 240 && movecontact
trigger12 = stateno = 450 && movecontact
trigger13 = stateno = 228 && movecontact



;---------------------------------------------------------------------------
;crouching light kick
[state -1, crouching light kick]
type = changestate
value = 430
triggerall = var(59) = 0
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = c
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact
trigger3 = (stateno = 400) && movecontact

;---------------------------------------------------------------------------
;crouching medium kick
[state -1, crouching medium kick]
type = changestate
value = 440
triggerall = var(59) = 0
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype != a
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 240 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 430 && movecontact

;---------------------------------------------------------------------------
;crouching strong kick
[state -1, crouching strong kick]
type = changestate
value = 450
triggerall = var(59) = 0
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 220 && movecontact
trigger5 = stateno = 400 && movecontact
trigger6 = stateno = 410 && movecontact
trigger7 = stateno = 430 && movecontact
trigger8 = stateno = 440 && movecontact
trigger9 = stateno = 210 && movecontact
trigger10 = stateno = 250 && movecontact
trigger11 = stateno = 240 && movecontact
;---------------------------------------------------------------------------

;jump light punch
[state -1]
type = changestate
value = 600
triggerall = var(59) = 0
triggerall = command = "x"
trigger1 = statetype = a
trigger1 = ctrl

;---------------------------------------------------------------------------
;jump medium punch
[state -1]
type = changestate
value = 610
triggerall = var(59) = 0
triggerall = command = "y"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = stateno = 600&& MoveContact
trigger3 = StateNo = 630&& MoveContact
;---------------------------------------------------------------------------
;jump strong punch
[state -1]
type = changestate
value = 620
triggerall = var(59) = 0
triggerall = command = "z"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact

;---------------------------------------------------------------------------
;jump light kick
[state -1]
type = changestate
value = 630
triggerall = var(59) = 0
triggerall = command = "a"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
;---------------------------------------------------------------------------
;jump medium kick
[state -1]
type = changestate
value = 640
triggerall = var(59) = 0
triggerall = command = "b"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 630) && movecontact
trigger4 = (stateno = 610) && movecontact
;---------------------------------------------------------------------------
[State -1, ]
type = ChangeState
value = 655
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 620) && movecontact
trigger5 = (stateno = 630) && movecontact
trigger6 = (stateno = 640) && movecontact
trigger7 = (stateno = 650) && movecontact
;jump strong kick
[state -1]
type = changestate
value = 650
triggerall = var(59) = 0
triggerall = command = "c"
trigger1 = statetype = a
trigger1 = ctrl
trigger2 = (stateno = 600) && movecontact
trigger3 = (stateno = 610) && movecontact
trigger4 = (stateno = 630) && movecontact
trigger5 = (stateno = 640) && movecontact


; Push Block (Stand)
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

[State -1, Forward Recovery Roll]
type = ChangeState
value = 891
triggerall = !Var(59)
triggerall = command = "holdfwd"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1

[State -1, Backward Recovery Roll]
type = ChangeState
value = 895
triggerall = !Var(59)
triggerall = command = "holdback"
triggerall = time = 1
triggerall = life > 0
trigger1 = stateno = 5120
trigger1 = alive = 1


