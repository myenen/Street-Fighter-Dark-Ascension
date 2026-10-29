;-| Button Remapping |-----------------------------------------------------
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
buffer.time = 1
 
[Command]
name = "b"
command = b
time = 1
buffer.time = 1
 
[Command]
name = "c"
command = c
time = 1
buffer.time = 1
 
[Command]
name = "x"
command = x
time = 1
buffer.time = 1
 
[Command]
name = "y"
command = y
time = 1
buffer.time = 1
 
[Command]
name = "z"
command = z
time = 1
buffer.time = 1
 
[Command]
name = "start"
command = s
time = 1
buffer.time = 1

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

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1
 
;-| Hold Button |-----------------------------------------------------------
[Command]
name = "hold_a"
command = /a
time = 1
buffer.time = 1
 
[Command]
name = "hold_b"
command = /b
time = 1
buffer.time = 1
 
[Command]
name = "hold_c"
command = /c
time = 1
buffer.time = 1
 
[Command]
name = "hold_x"
command = /x
time = 1
buffer.time = 1
 
[Command]
name = "hold_y"
command = /y
time = 1
buffer.time = 1
 
[Command]
name = "hold_z"
command = /z
time = 1
buffer.time = 1
 
[Command]
name = "hold_start"
command = /s
time = 1
buffer.time = 1

;-| Super Motions |--------------------------------------------------------
;[Command]
;name = "QFQB"
;command = ~D, DF, F, D, DB
;time = 24;32

;[Command]
;name = "QBQF"
;command = ~D, DB, B, D, DF
;time = 24;32
;--------------------------
[Command]
name = "QFQB"
command = ~D, F, $D, B
time = 24;32

[Command]
name = "QBQF"
command = ~D, B, $D, F
time = 24;32

[Command]
name = "QCFx2"
command = ~D, DF, F, D, DF
time = 21;24

[Command]
name = "QCBx2"
command = ~D, DB, B, D, DB
time = 21;24

;-| Special Motions |--------------------------------------------------------
[Command]
name = "DP"
command = ~F, D, DF
time = 12;15

[Command]
name = "RDP"
command = ~B, D, DB
time = 12;15

[Command]
name = "QCB"
command = ~D, DB, B
time = 15;12

[Command]
name = "relf"
command = ~$F
time = 1
buffer.time = 8

[Command]
name = "relb"
command = ~$B
time = 1
buffer.time = 8

[Command]
name = "QCF"
command = ~D, DF, F
time = 15;12

[Command]
name = "QCBD"
command = ~B, DB, D
time = 15

[Command]
name = "QCFD"
command = ~F, DF, D
time = 15

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10
 
;-| Dir + Button |---------------------------------------------------------
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
 
;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = F;$F
time = 1

[Command]
name = "downfwd"
command = DF;$DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = D;$D
time = 1

[Command]
name = "downback"
command = DB;$DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = B;$B
time = 1

[Command]
name = "upback"
command = UB;$UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = U;$U
time = 1

[Command]
name = "upfwd"
command = UF;$UF
time = 1

;---------------------------------------------------------------------------
;Release Direction
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

;--------------------------------------------------------------------------
;Release Button
[Command]
name = "rlsx"
command = ~x
time = 1
buffer.time = 1

[Command]
name = "rlsy"
command = ~y
time = 1
buffer.time = 1

[Command]
name = "rlsz"
command = ~z
time = 1
buffer.time = 1

[Command]
name = "rlsa"
command = ~a
time = 1
buffer.time = 1

[Command]
name = "rlsb"
command = ~b
time = 1
buffer.time = 1

[Command]
name = "rlsc"
command = ~c
time = 1
buffer.time = 1

[Command]
name = "rlss"
command = ~s
time = 1
buffer.time = 1

;---------------------------------------------------------------------------
;Other
[Command]
name = "highjump"
command = $D, $U
time = 15

;---------------------------------------------------------------------------
;It is VERY important to note, that the placement of Changestates, 
;here are HEAVILY important with this buffering system! 
;Even more so than default! I'm adding this notation as a constant, 
;reminder. Don't forget DW to adjust as needed!

;Also ALWAYS and I mean ALWAYS add these two triggers:
;triggerall = AIlevel=0
;triggerall = !IsHelper(10371) 
;triggerall = numhelper(10371)
;To EVERY Changestate that uses the buffer. You know why!
;Also be sure to adjust the "Tick Fix" on a char by char basis.
[Statedef -1]

[State -1, Tick Fix]
type = CtrlSet
triggerall = RoundState = 2
triggerall = !ctrl
triggerall = movetype!=H
trigger1 = (stateno = 52 || stateno = 101 || stateno = 5120) && !AnimTime
trigger2 = (stateno = [200,299]) && !AnimTime
trigger3 = (stateno = [400,499]) && !AnimTime
trigger4 = (stateno = [700,715]) && !AnimTime
trigger5 = (stateno = [760,762]) && !AnimTime
value = 1

[State -1, CtrlSet For Helpers];special thanks to 20S
type = CtrlSet
trigger1 = IsHelper
value = 0

[State -1, Hit Count For Helpers];special thanks to 20S
type = ParentVarAdd
trigger1 = IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime 
trigger1 = !(HitDefAttr = SCA, AT)
var(13) = 1

[State -1, Juggle Count For Helpers];special thanks to 20S
type = ParentVarAdd
trigger1 = IsHelper
trigger1 = MoveHit = 1
trigger1 = !HitPauseTime 
trigger1 = !(HitDefAttr = SCA, AT)
var(15) = 1

[State -1, ProjContact];special thanks to 20S
type = VarSet
trigger1 = IsHelper
trigger1 = MoveContact = 1 && NumTarget
var(18) = 1

[State -1, Root ProjContact];special thanks to 20S
type = ParentVarSet
trigger1 = IsHelper
trigger1 = MoveContact = 1 && NumTarget
var(18) = 1
;------------------------------------------------------------------------------
;?????????
[State -1, SLTAI]
type = ChangeState
value = 3400
Triggerall = (RoundState = 2) && (AILevel>0) 
Triggerall = (StateType != A)
Triggerall = (P2BodyDist X = [-15,55]) 
triggerall =p2bodydist y =[-45,0]
Triggerall = Random < (349* (AIlevel ** 2 / 64.0))
triggerall = p2statetype !=L
triggerall = !var(16) && var(15)<1 || p2statetype!=A
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall =  power>=cond(var(20)>0,1000,3000)
triggerall =p2stateno!=[120,155]
;triggerall = var(27)<5
trigger1 = (p2movetype=A&&p2bodydist x<30&&(random<199||AIlevel>5))&&!ishelper&&helper(10003),var(11)=0 && !ishelper&&helper(10003),var(10)=0 && var(45)<=0
trigger1 = ctrl || stateno=20||stateno=[100,101]
trigger2 = stateno=200 ||stateno=210|| stateno=221||stateno=400 ||stateno=410 ||stateno=430 ||stateno=440 ||(stateno=[230,250]) && animelemtime(4)<0
trigger2 =movehit && AIlevel >4 || movecontact && AIlevel <=4
trigger2= var(45)<=0
trigger3 = stateno=1200||stateno=1210||stateno=1220 || stateno=[1300,1320]
trigger3 = movehit && AIlevel >6 || movecontact && AIlevel <=6
trigger4 = (cond(numhelper(1010),helper(1010),movehit,enemy,numproj>0)||cond(numhelper(1025),helper(1025),movehit,enemy,numproj>0))&& var(45)<=0 &&  !ishelper&&helper(10003),var(11)=0 &&!ishelper&&helper(10003),var(10)=0
trigger4 = (stateno=[1000,1030])||(stateno=[1100,1130])
trigger4=p2statetype!=A

;------------------------------------------------------------------------------
;?????????
[State -1, SLTAI]
type = ChangeState
value = 3350
Triggerall = (RoundState = 2) && (AILevel>0) 
Triggerall = (StateType != A)
Triggerall = (P2BodyDist X = [-15,65]) 
triggerall =p2bodydist y =[-65,0]
Triggerall = Random < (249* (AIlevel ** 2 / 64.0))
triggerall = p2statetype !=L
triggerall = !var(16) && var(15)<1 || p2statetype!=A
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall =  power>=cond(var(20)>0,1000,2000)
triggerall =p2stateno!=[120,155]
;triggerall = var(27)<5
trigger1 = (p2movetype=A&&p2bodydist x<30&&(random<199||AIlevel>5))&&!ishelper&&helper(10003),var(11)=0 && !ishelper&&helper(10003),var(10)=0 && var(45)<=0
trigger1 = ctrl || stateno=20||stateno=[100,101]
trigger2 = stateno=200 ||stateno=210|| stateno=221||stateno=400 ||stateno=410 ||stateno=430 ||stateno=440 ||(stateno=[230,250]) && animelemtime(4)<0
trigger2 =movehit && AIlevel >4 || movecontact && AIlevel <=4
trigger2= var(45)<=0
trigger3 = stateno=1200||stateno=1210||stateno=1220 || stateno=[1300,1320]
trigger3 = movehit && AIlevel >6 || movecontact && AIlevel <=6
trigger4 = (cond(numhelper(1010),helper(1010),movehit,enemy,numproj>0)||cond(numhelper(1025),helper(1025),movehit,enemy,numproj>0))&& var(45)<=0 &&  !ishelper&&helper(10003),var(11)=0 &&!ishelper&&helper(10003),var(10)=0
trigger4 = (stateno=[1000,1030])||(stateno=[1100,1130])
trigger4=p2statetype!=A
;------------------------------------------------------------------------------
;?????????
[State -1, SLTAI]
type = ChangeState
value = 3300
Triggerall = (RoundState = 2) && (AILevel>0) 
Triggerall = (StateType != A)
Triggerall = (P2BodyDist X = [-15,65]) 
triggerall =p2bodydist y =[-65,0]
Triggerall = Random < (249* (AIlevel ** 2 / 64.0))
triggerall = p2statetype !=L
triggerall = !var(16) && var(15)<1 || p2statetype!=A
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = power >=1000||var(20)>0
triggerall =p2stateno!=[120,155]
;triggerall = var(27)<5
trigger1 = (p2movetype=A&&p2bodydist x<30)&&!ishelper&&helper(10003),var(11)=0 && !ishelper&&helper(10003),var(10)=0 && var(45)<=0&&(AIlevel<6)
trigger1 = ctrl || stateno=20||stateno=[100,101]
trigger2 = stateno=200 ||stateno=210|| stateno=221||stateno=400 ||stateno=410 ||stateno=430 ||stateno=440 ||(stateno=[230,250]) && animelemtime(4)<0
trigger2 =movehit && AIlevel >4 || movecontact && AIlevel <=4
trigger2= var(45)<=0
trigger3 = stateno=1200||stateno=1210||stateno=1220 || stateno=[1300,1320]
trigger3 = movehit && AIlevel >6 || movecontact && AIlevel <=6
trigger4 = (cond(numhelper(1010),helper(1010),movehit,enemy,numproj>0)||cond(numhelper(1025),helper(1025),movehit,enemy,numproj>0))&& var(45)<=0 &&  !ishelper&&helper(10003),var(11)=0 &&!ishelper&&helper(10003),var(10)=0
trigger4 = (stateno=[1000,1030])||(stateno=[1100,1130])
trigger4=p2statetype!=A
;------------------------------------------------------------------------------
;?????????
[State -1, SLTAI]
type = ChangeState
value = 3250
Triggerall = (RoundState = 2) && (AILevel>0) 
Triggerall = (StateType != A)
Triggerall = (P2BodyDist X = [-15,95]) 
triggerall =p2bodydist y =[-65,0]
Triggerall = Random < (249* (AIlevel ** 2 / 64.0))
triggerall = p2statetype !=L
triggerall = !var(16) && var(15)<1 || p2statetype!=A
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall =  power>=cond(var(20)>0,1000,2000)
triggerall =p2stateno!=[120,155]
;triggerall = var(27)<5
trigger1 = (p2statetype=A ||p2movetype=A&&p2bodydist x<30&&(random<199||AIlevel>5))&&!ishelper&&helper(10003),var(11)=0 && !ishelper&&helper(10003),var(10)=0 && var(45)<=0
trigger1 = ctrl || stateno=20||stateno=[100,101]
trigger2 = stateno=200 ||stateno=210|| stateno=221||stateno=400 ||stateno=410 ||stateno=430 ||stateno=440 ||(stateno=[230,250]) && animelemtime(4)<0
trigger2 =movehit && AIlevel >4 || movecontact && AIlevel <=4
trigger2= var(45)<=0
trigger3 = stateno=1200||stateno=1210||stateno=1220 || stateno=[1300,1320]
trigger3 = movehit && AIlevel >6 || movecontact && AIlevel <=6
trigger4 = (cond(numhelper(1010),helper(1010),movehit,enemy,numproj>0)||cond(numhelper(1025),helper(1025),movehit,enemy,numproj>0))&& var(45)<=0 &&  !ishelper&&helper(10003),var(11)=0 &&!ishelper&&helper(10003),var(10)=0
trigger4 = (stateno=[1000,1030])||(stateno=[1100,1130])
trigger4=p2statetype!=A
;------------------------------------------------------------------------------
;?????????
[State -1, SLTAI]
type = ChangeState
value = 3200
Triggerall = (RoundState = 2) && (AILevel>0) 
Triggerall = (StateType != A)
Triggerall = (P2BodyDist X = [-15,95]) 
triggerall =p2bodydist y =[-65,0]
Triggerall = Random < (249* (AIlevel ** 2 / 64.0))
triggerall = p2statetype !=L
triggerall = !var(16) && var(15)<1 || p2statetype!=A
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = power >=1000||var(20)>0
triggerall =p2stateno!=[120,155]
;triggerall = var(27)<5
trigger1 = (p2statetype=A ||p2movetype=A&&p2bodydist x<30)&&!ishelper&&helper(10003),var(11)=0 && !ishelper&&helper(10003),var(10)=0 && var(45)<=0&&(AIlevel<6)
trigger1 = ctrl || stateno=20||stateno=[100,101]
trigger2 = stateno=200 ||stateno=210|| stateno=221||stateno=400 ||stateno=410 ||stateno=430 ||stateno=440 ||(stateno=[230,250]) && animelemtime(4)<0
trigger2 =movehit && AIlevel >4 || movecontact && AIlevel <=4
trigger2= var(45)<=0
trigger3 = stateno=1200||stateno=1210||stateno=1220 || stateno=[1300,1320]
trigger3 = movehit && AIlevel >6 || movecontact && AIlevel <=6
trigger4 = (cond(numhelper(1010),helper(1010),movehit,enemy,numproj>0)||cond(numhelper(1025),helper(1025),movehit,enemy,numproj>0))&& var(45)<=0 &&  !ishelper&&helper(10003),var(11)=0 &&!ishelper&&helper(10003),var(10)=0
trigger4 = (stateno=[1000,1030])||(stateno=[1100,1130])
trigger4=p2statetype!=A
;------------------------------------------------------
;??????????
[State -1, SBB AI]
type = ChangeState
value =  3050+(p2statetype=C || p2statetype=L || !ishelper&&!helper(10003),var(14))*100
triggerall = random< (cond(movecontact||enemy,numproj>0,275,179)* (AIlevel ** 2 / 64.0))
Triggerall = (RoundState = 2) && (AILevel>0)
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = power>=cond(var(20)>0,1000,2000)
triggerall =  Cond(numhelper(3010),(helper(3010),stateno=3015),numhelper(3010)=0) 
triggerall = (statetype!=A &&p2bodydist y =[-85,0])
triggerall = numhelper(8050)=0
triggerall = p2bodydist x >70|| movecontact
trigger1 = (enemy,numproj>0&&p2movetype=A)&& var(45)<=0 &&  !ishelper&&helper(10003),var(11)=0 &&!ishelper&&helper(10003),var(10)=0
trigger1 = ctrl || stateno=20
trigger2 = stateno=200 ||stateno=210|| stateno=221||stateno=400 ||stateno=410 ||stateno=430 ||stateno=440 ||(stateno=[230,250]) && animelemtime(4)<0
trigger2 = movecontact && p2bodydist x >=30|| moveguarded && AIlevel >6 || movecontact && AIlevel <=6
trigger2= var(45)<=0
trigger3 = (cond(numhelper(1010),helper(1010),movehit,enemy,numproj>0)||cond(numhelper(1025),helper(1025),movehit,enemy,numproj>0))&& var(45)<=0 &&  !ishelper&&helper(10003),var(11)=0 &&!ishelper&&helper(10003),var(10)=0
trigger3 = (stateno=[1000,1030])||(stateno=[1100,1130])
trigger4 = stateno=1200||stateno=1210||stateno=1220 || stateno=[1300,1320]
trigger4 = movehit && AIlevel >6 || movecontact && AIlevel <=6
;------------------------------------------------------
;??????????
[State -1, SBB AI]
type = ChangeState
value =  3000+(p2statetype=C || p2statetype=L || !ishelper&&!helper(10003),var(14))*100
triggerall = random< (cond(movecontact||enemy,numproj>0,275,179)* (AIlevel ** 2 / 64.0))
Triggerall = (RoundState = 2) && (AILevel>0)
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = power>=1000 || var(20)>0
triggerall =  Cond(numhelper(3010),(helper(3010),stateno=3015),numhelper(3010)=0) 
triggerall = (statetype!=A &&p2bodydist y =[-85,0])
triggerall = numhelper(8050)=0
triggerall = p2bodydist x >70|| movecontact
trigger1 = (enemy,numproj>0&&p2movetype=A&&(p2bodydist x >70||AIlevel<6))&& var(45)<=0 &&  !ishelper&&helper(10003),var(11)=0 &&!ishelper&&helper(10003),var(10)=0
trigger1 = ctrl || stateno=20
trigger2 = stateno=200 ||stateno=210|| stateno=221||stateno=400 ||stateno=410 ||stateno=430 ||stateno=440 ||(stateno=[230,250]) && animelemtime(4)<0
trigger2 = movecontact && p2bodydist x >=30|| moveguarded && AIlevel >6 || movecontact && AIlevel <=6
trigger2= var(45)<=0
trigger3 = (cond(numhelper(1010),helper(1010),movehit,enemy,numproj>0)||cond(numhelper(1025),helper(1025),movehit,enemy,numproj>0))&& var(45)<=0 &&  !ishelper&&helper(10003),var(11)=0 &&!ishelper&&helper(10003),var(10)=0
trigger3 = (stateno=[1000,1030])||(stateno=[1100,1130])
trigger4 = stateno=1200||stateno=1210||stateno=1220 || stateno=[1300,1320]
trigger4 = movehit && AIlevel >6 || movecontact && AIlevel <=6
;------------------------------------------------------------------------------
;?????????
[State -1, L LTAI]
type = ChangeState
value = 1230
Triggerall = (RoundState = 2) && (AILevel>0) 
Triggerall = (StateType != A)
Triggerall = (P2BodyDist X = [-15,50]) || (p2statetype=A && p2bodydist x =[0,75])
triggerall =p2bodydist y =[-105,18]
Triggerall = Random < (229* (AIlevel ** 2 / 64.0))
triggerall = p2statetype !=L
triggerall = !var(16) && var(15)<1 || p2statetype!=A
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = power >=700|| var(20)>400
triggerall =p2stateno!=[120,155]
;triggerall = var(27)<5
trigger1 = (p2statetype=A ||p2movetype=A&&p2bodydist x<30&&(random<199||AIlevel>5))&&!ishelper&&helper(10003),var(11)=0 && !ishelper&&helper(10003),var(10)=0 && var(45)<=0
trigger1 = ctrl || stateno=20||stateno=[100,101]
trigger2 = stateno=200 ||stateno=210|| stateno=221||stateno=400 ||stateno=410 ||stateno=430 ||stateno=440 ||(stateno=[230,250]) && animelemtime(4)<0
trigger2 =movehit && AIlevel >4 || movecontact && AIlevel <=4
trigger2= var(45)<=0
;------------------------------------------------------------------------------
;?????????
[State -1, L LTAI]
type = ChangeState
value = 1220
Triggerall = (RoundState = 2) && (AILevel>0) 
Triggerall = (StateType != A)
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
Triggerall = (P2BodyDist X = [-15,50]) || (p2statetype=A && p2bodydist x =[0,75])
triggerall =p2bodydist y =[-105,18]
triggerall = !var(16) && var(15)<1 || p2statetype!=A
Triggerall = Random < (cond(var(45)>0&&AIlevel=8,999,279)* (AIlevel ** 2 / 64.0))
triggerall = p2statetype !=L
triggerall = p2statetype=A||p2stateno!=[120,155]
;triggerall = var(27)<5
trigger1 = (p2statetype=A ||p2movetype=A&&p2bodydist x<30&&(random<199||AIlevel>5))&&!ishelper&&helper(10003),var(11)=0 && !ishelper&&helper(10003),var(10)=0 && var(45)<=0
trigger1 = ctrl || stateno=20||stateno=[100,101]
trigger2 = stateno=200 ||stateno=210|| stateno=221||stateno=400 ||stateno=410 ||stateno=430 ||stateno=440 ||(stateno=[230,250]) && animelemtime(4)<0
trigger2 =movehit && AIlevel >4 || movecontact && AIlevel <=4
trigger2= var(45)<=0
trigger2 = p2bodydist x <=45
trigger3= var(45)=1220 && var(46)
;?????????
[State -1, L LTAI]
type = ChangeState
value = 1210
Triggerall = (RoundState = 2) && (AILevel>0) 
Triggerall = (StateType != A)
triggerall = !IsHelper(10371)
triggerall = !var(16) && var(15)<1 || p2statetype!=A
triggerall = numhelper(10371)
Triggerall = (P2BodyDist X = [-15,50]) || (p2statetype=A && p2bodydist x =[0,67])
triggerall =p2bodydist y =[-105,18]
Triggerall = Random < (279* (AIlevel ** 2 / 64.0))
triggerall = p2statetype !=L
triggerall = p2statetype=A||p2stateno!=[120,155]
;triggerall = var(27)<5
trigger1 = (p2statetype=A ||p2movetype=A&&p2bodydist x<30&&(random<199||AIlevel>5))&&!ishelper&&helper(10003),var(11)=0 && !ishelper&&helper(10003),var(10)=0 && var(45)<=0
trigger1 = ctrl || stateno=20||stateno=[100,101]
trigger2 = stateno=200 ||stateno=210|| stateno=221||stateno=400 ||stateno=410 ||stateno=430 ||stateno=440 ||(stateno=[230,250]) && animelemtime(4)<0
trigger2 =movehit && AIlevel >4 || movecontact && AIlevel <=4
trigger2= var(45)<=0
trigger2 = p2bodydist x <=45
;?????????
[State -1, L LTAI]
type = ChangeState
value = 1200
Triggerall = (RoundState = 2) && (AILevel>0) 
Triggerall = (StateType != A)
triggerall = !IsHelper(10371)
triggerall = !var(16) && var(15)<1 || p2statetype!=A
triggerall = numhelper(10371)
Triggerall = (P2BodyDist X = [-15,50]) || (p2statetype=A && p2bodydist x =[0,55])
triggerall =p2bodydist y =[-105,18]
Triggerall = Random < (279* (AIlevel ** 2 / 64.0))
triggerall = p2statetype !=L
triggerall = p2statetype=A||p2stateno!=[120,155]
;triggerall = var(27)<5
trigger1 = (p2statetype=A ||p2movetype=A&&p2bodydist x<30&&(random<199||AIlevel>5))&&!ishelper&&helper(10003),var(11)=0 && !ishelper&&helper(10003),var(10)=0 && var(45)<=0
trigger1 = ctrl || stateno=20||stateno=[100,101]
trigger2 = stateno=200 ||stateno=210|| stateno=221||stateno=400 ||stateno=410 ||stateno=430 ||stateno=440 ||(stateno=[230,250]) && animelemtime(4)<0
trigger2 =movehit && AIlevel >4 || movecontact && AIlevel <=4
trigger2= var(45)<=0
trigger2 = p2bodydist x <=45
;-------------------------------------------------------------------------------------
[state -1, AI_DodgeF]
type = ChangeState

value = 740
triggerall = movetype != H
triggerall = P2Life > 0
triggerall = roundstate = 2
triggerall = random <=(cond(life<ceil(lifemax*.45),399,199) * (AIlevel ** 2 / 64.0))
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = AIlevel >0 && p2movetype=A
triggerall = statetype != A
triggerall = p2statetype!=L || enemy,pos y=0
triggerall = frontEdgeBodyDist > 100
triggerall = p2bodydist x >120 
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20)
;-------------------------------------------------------------------------------------
[state -1, AI_DodgeF]
type = ChangeState

value = 700
triggerall = P2Life > 0
triggerall = roundstate = 2
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = AIlevel >0 
triggerall = statetype != A
triggerall = enemy,vel x =0 || AIlevel <6 || enemy,numproj >0&&p2movetype=A
triggerall = frontEdgeBodyDist > 100
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20)
trigger1 = movetype != A
trigger1 = ctrl
trigger1 = p2movetype = A
trigger1 = p2bodydist x = [110,180]
trigger1 = enemyNear, p2bodydist x > 0
trigger1 = random <=(304 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = 100
trigger2 = p2movetype = A
trigger2 = p2bodydist x >= 150
trigger2 = enemyNear, p2bodydist x > 0
trigger2 = random <= (126* (AIlevel ** 2 / 64.0))
trigger3 = ctrl
trigger3 = enemyNear, p2bodydist x > 0
trigger3 = enemynear,NumProj >= 1
trigger3 = random <= (496* (AIlevel ** 2 / 64.0))
;-------------------------------------------------------------------------------------
[state -1, AI_DodgeF]
type = ChangeState

value = 710
triggerall = movetype != H
triggerall = P2Life > 0
triggerall = roundstate = 2
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = AIlevel >0
triggerall = enemy,vel x !=0 || AIlevel <6 || enemy,numproj >0
triggerall = statetype != A
triggerall = p2statetype!=L || enemy,pos y=0
triggerall = frontEdgeBodyDist > 100
trigger1 = movetype != A
trigger1 = ctrl
trigger1 = p2movetype = A
trigger1 = p2bodydist x <= 30
trigger1 = enemyNear, p2bodydist x > 0
trigger1 = random <=(304 * (AIlevel ** 2 / 64.0))
trigger2 = stateno = 100
trigger2 = p2movetype = A
trigger2 = p2bodydist x <= 150
trigger2 = enemyNear, p2bodydist x > 0
trigger2 = random <= (126* (AIlevel ** 2 / 64.0))
trigger3 = ctrl
trigger3 = enemyNear, p2bodydist x > 0
trigger3 = enemynear,NumProj >= 1
trigger3 = random <= (496* (AIlevel ** 2 / 64.0))
;-------------------------------------------------------------------------------------
[state -1, AI_DodgeB]
type = ChangeState

value = 715
triggerall = movetype != H
triggerall = P2Life > 0
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = roundstate = 2
triggerall = enemy,vel x !=0 || AIlevel <6
triggerall = AIlevel >0
triggerall = stateno != 100
triggerall = random <=(128* (AIlevel ** 2 / 64.0))
triggerall = enemynear,NumProj > 0
trigger1 = statetype != A
trigger1 = movetype != A
trigger1 = BackEdgeBodyDist > 50
trigger1 = ctrl
trigger1 = p2bodydist x > 120
trigger1 = p2bodydist x <= 200
;------------------------------------------------------------------------
[State -1, AI Throw]
type = ChangeState
value = 800
triggerall = AILevel >0
triggerall = random <= (199* (AIlevel ** 2 / 64.0))
triggerall = statetype = S
triggerall = p2statetype != A
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = ctrl 
triggerall = !ishelper&&helper(10003),var(10)=0
triggerall = !ishelper&&helper(10003),var(11)=0
triggerall = p2statetype!=L
triggerall = stateno != [200,9999]
Triggerall = (RoundState = 2)
triggerall = (p2MoveType != H)
trigger1 = p2bodydist X < 35 && p2dist y <= 0
trigger2 = (p2stateno =[120,150]) &&(p2bodydist X < 35 && p2dist y <= 0)

 
[State -1, AI_Guard]
type = ChangeState
value = 120
triggerall = P2Life > 0
triggerall = roundstate = 2
triggerall = AIlevel >0
triggerall = ((EnemyNear, movetype=A&& enemy,numproj>0)||(  enemy,numproj>0 || enemynear,hitdefattr = SCA,AA));&& p2bodydist x <=45
triggerall = p2bodydist x > -20
triggerall = p2statetype!=L
triggerall = enemy,numproj=0 || p2bodydist x <=100
triggerall = p2bodydist x >= -10
triggerall =movetype=I || stateno=5210 || (!ishelper&&helper(10003),var(7)=1 && movetype=I)
trigger1 = ctrl || stateno=20 
trigger1 = random <= (588*(AILevel**2/64.0)) 
trigger2 = enemynear,NumProj >= 1
trigger2 = ctrl
;-------------------------------------------------------------------------------------
[state -1, AI_gdF]
type = ChangeState

value = 750
triggerall = P2Life > 0
triggerall = random <= (cond(life<ceil(lifemax*.45),399,199)*(AILevel**2/64.0)) 
triggerall = p2bodydist x <60
triggerall = roundstate = 2
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = AIlevel >0
triggerall = statetype != A
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20)
[State -1, MAX Mode]
type = ChangeState
value = 770
triggerall = AIlevel>0
Triggerall =   random <= (249* (AIlevel ** 2 / 64.0))
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = RoundState = 2 && StateType != A
triggerall = var(20) <= 0 && Power >= 1000
trigger1 = (p2statetype=L) ||enemy,hitfall
trigger1 = ctrl || (StateNo = [100,101])||(stateno=[12,20])

[State -1, Power Charge]
type = ChangeState
value = 730
triggerall = AIlevel>0
Triggerall =   random <= (349* (AIlevel ** 2 / 64.0))
trigger1 = (p2statetype=L) && p2bodydist x >100 ||enemy,hitfall
trigger1 = !ishelper&&helper(10003),var(20)&&!ishelper&&!helper(10003),var(21)&&!ishelper&&!helper(10003),var(22) && !ishelper&&!helper(10003),var(30)
trigger1 = RoundState = 2 && StateType != A
trigger1 =  power < PowerMax && !var(20)
trigger1 = ctrl || (StateNo = [100,101])||(stateno=[12,20])
;|Normal Commands|--------------------------------------------------------
[State -1, Standing Strong Kick]
type = ChangeState
value = 251+(stateno=[200,499])
Triggerall = (RoundState = 2) && (AILevel>0)
Triggerall = (StateType != A)
triggerall = stateno != [800,3999]
Triggerall = P2BodyDist X = [0,cond(stateno=450,75,65)]
;triggerall = var(27)<5
triggerall = ((p2bodydist y= [-80,-50]))||p2statetype!=A || stateno=450; && p2movetype!=A
Triggerall =   random <= (cond(stateno=700,320,220)* (AIlevel ** 2 / 64.0))
triggerall = p2statetype !=L || stateno=450
triggerall = !enemy,hitfall || p2life <25|| stateno=450
triggerall = movetype!=H
triggerall = !var(16) && var(15)<1 || p2statetype!=A|| stateno=450
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall =!ishelper&&helper(10003),var(8)=0 || p2bodydist x >55
trigger1= (ctrl||(stateno=[12,20])) && (p2bodydist x=[45,60]) && p2statetype!=C&& p2movetype=I&&random <199&& var(45)<=0
trigger2 = stateno=700 && Time = [15,25]
trigger2= numproj =0
trigger3 = stateno=200 ||stateno=210|| stateno=221||stateno=400 ||stateno=410 ||stateno=430 ||stateno=440 ||(stateno=[230,250]) && animelemtime(4)<0
trigger3 =movecontact 
trigger3= var(45)<=0&& random <= (125* (AIlevel ** 2 / 64.0))
trigger4 = stateno=450 ;&& random <= (299* (AIlevel ** 2 / 64.0))
trigger4 =movecontact 
trigger4= var(45)<=0
;------------------------------------------------------------------------------
;Stand Light Punch
;?�?????p?`
[State -1, Stand Light Punch]
type = ChangeState
value =200
Triggerall = (RoundState = 2) && (AILevel>0)
Triggerall = (StateType != A)
triggerall = stateno != [800,3999]
Triggerall = P2BodyDist X = [0,50]
;triggerall = var(27)<5
triggerall = !ishelper&&helper(10003),var(14) || p2statetype=A
triggerall = (((p2bodydist y= [-80,-45]) &&enemy,vel y >=0)||p2statetype!=A) && p2movetype!=A
Triggerall =   random <= (275* (AIlevel ** 2 / 64.0))
triggerall = p2statetype !=L
triggerall = !enemy,hitfall || p2life <25
triggerall = movetype!=H
triggerall = !var(16) && var(15)<1 || p2statetype!=A
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = p2statetype != C&& !ishelper&&helper(10003),var(8)=0
triggerall =p2statetype=A|| p2movetype!=H || !ishelper&&helper(10003),var(10)>0|| p2stateno=[120,155]
trigger1= ( ctrl||stateno=20 ||stateno=[100,101])&& !ishelper&&helper(10003),var(10)>0&& p2bodydist x <=40&& var(45)<=0
trigger2 = var(45)=200 && !var(46)&& (ctrl||stateno=[20,101])
trigger3 = (ctrl||(stateno=[12,20])) && (p2bodydist x=[0,40]) &&  p2movetype=I&&random <199&& var(45)<=0

[State -1, Stand Medium Punch]
type = ChangeState
value = 210 
Triggerall = (RoundState = 2) && (AILevel>0)
Triggerall = (StateType != A)
triggerall = stateno != [800,3999]
Triggerall = P2BodyDist X = [0,65]
triggerall = var(27)<5
triggerall = !ishelper&&helper(10003),var(14)|| p2statetype=A
triggerall = !enemy,hitfall || p2life <50
triggerall = ((p2bodydist y= [-70,-45]) && enemy,vel y >=0)||p2statetype!=A ;&& p2movetype!=A || p2bodydist x >
Triggerall =   random <= (300* (AIlevel ** 2 / 64.0))
triggerall = p2statetype !=L
triggerall = movetype!=H
triggerall = !var(16) && var(15)<1 || p2statetype!=A
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = (p2statetype != C || !ishelper&&!helper(10003),var(14))&& !ishelper&&helper(10003),var(8)=0
triggerall =p2statetype=A|| p2movetype!=H || !ishelper&&helper(10003),var(11)>0|| p2stateno=[120,155]
trigger1= ( ctrl||stateno=20 ||stateno=[100,101])&& !ishelper&&helper(10003),var(11)>0&& p2bodydist x <=60&& var(45)<=0
trigger2 = var(45)=210 && var(46)
trigger3= (ctrl||(stateno=[12,20])) && (p2bodydist x=[35,60]) &&  p2movetype=I&&random <199&& var(45)<=0
trigger4 = stateno=700 && Time = [15,25]
trigger4=numproj =0

[State -1, Stand Strong Punch]
type = ChangeState
value = 220 + (Abs(P2BodyDist X) <= 20) * 1
Triggerall = (RoundState = 2) && (AILevel>0)
Triggerall = (StateType != A)
triggerall = stateno != [800,3999]
Triggerall = P2BodyDist X = [0,90]
;triggerall = var(27)<5
triggerall = !ishelper&&helper(10003),var(14)|| p2statetype=A
triggerall = !enemy,hitfall || p2life <70
triggerall = (p2bodydist y= [cond(p2bodydist x<20,-100,-75),-55])||p2statetype!=A ;&& enemy,vel y >=0 ;&& p2movetype!=A || p2bodydist x >
Triggerall =   random <= (400* (AIlevel ** 2 / 64.0))
triggerall = p2statetype !=L
triggerall = !var(16) && var(15)<1 || p2statetype!=A
triggerall = movetype!=H
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = (p2statetype != C)&& !ishelper&&helper(10003),var(8)=0
triggerall =p2statetype=A|| p2movetype!=H || !ishelper&&helper(10003),var(11)>0|| p2stateno=[120,155]
trigger1= ( ctrl||stateno=20 ||stateno=[100,101])&& !ishelper&&helper(10003),var(11)>0&& p2bodydist x <=20&& var(45)<=0
trigger2 = var(45)=220 && var(46)
trigger3 = var(45)=220 && !var(46) && (ctrl||stateno=[20,101])
trigger4 = (ctrl||(stateno=[12,20])) && (p2bodydist x=[45,85]) &&  p2movetype=I&&random <199&& var(45)<=0

[State -1, Stand Light Kick]
type = ChangeState
value = 230
Triggerall = (RoundState = 2) && (AILevel>0)
Triggerall = (StateType != A)
triggerall = stateno != [800,3999]
Triggerall = P2BodyDist X = [0,95]
;triggerall = var(27)<5
triggerall = ((p2bodydist y= [-30,-1]) &&enemy,vel y >=0)||p2statetype!=A; && p2movetype!=A
Triggerall =   random <= (275* (AIlevel ** 2 / 64.0))
triggerall = p2statetype !=L
triggerall = !enemy,hitfall || p2life <25
triggerall = movetype!=H
triggerall = !var(16) && var(15)<1 || p2statetype!=A
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall =!ishelper&&helper(10003),var(8)=0|| p2bodydist x >70
trigger1= ( ctrl||stateno=20 ||stateno=[100,101])&& !ishelper&&helper(10003),var(10)>0&& p2bodydist x <=30&& var(45)<=0
trigger2 = var(45)=230 && var(46)
trigger3 = var(45)=230 && !var(46) && (ctrl||stateno=[20,101])
trigger4 = (ctrl||(stateno=[12,20])) && (p2bodydist x=[30,90]) &&  p2movetype=I&&random <199&& var(45)<=0

[State -1, Stand Medium Kick]
type = ChangeState
value = 240
Triggerall = (RoundState = 2) && (AILevel>0)
Triggerall = (StateType != A)
triggerall = stateno != [800,3999]
Triggerall = P2BodyDist X = [0,105]
;triggerall = var(27)<5
triggerall = ((p2bodydist y= [-60,-1]) &&enemy,vel y >=0)||p2statetype!=A; && p2movetype!=A
Triggerall =   random <= (300* (AIlevel ** 2 / 64.0))
triggerall = p2statetype !=L
triggerall = !enemy,hitfall || p2life <25
triggerall = movetype!=H
triggerall = !var(16) && var(15)<1 || p2statetype!=A
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall =!ishelper&&helper(10003),var(8)=0|| p2bodydist x >70
trigger1= ( ctrl||stateno=20 ||stateno=[100,101])&& !ishelper&&helper(10003),var(11)>0&& p2bodydist x <=30 && var(45)<=0
trigger2 = var(45)=240 && var(46)
trigger3 = var(45)=240 && !var(46) && (ctrl||stateno=[20,101])
trigger4 = (ctrl||(stateno=[12,20])) && (p2bodydist x=[30,90]) &&  p2movetype=I&&random <199&& var(45)<=0

[State -1, Standing Strong Kick]
type = ChangeState
value = 250
Triggerall = (RoundState = 2) && (AILevel>0)
Triggerall = (StateType != A)
triggerall = stateno != [800,3999]
Triggerall = P2BodyDist X = [0,105]
;triggerall = var(27)<5
triggerall = ((p2bodydist y= [-100,-70]))||p2statetype!=A; && p2movetype!=A
Triggerall =   random <= (400* (AIlevel ** 2 / 64.0))
triggerall = p2statetype !=L
triggerall = !enemy,hitfall || p2life <25
triggerall = movetype!=H
triggerall = !var(16) && var(15)<1 || p2statetype!=A
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall =!ishelper&&helper(10003),var(8)=0 || p2bodydist x >70
trigger1= ( ctrl||stateno=20 ||stateno=[100,101])&& !ishelper&&helper(10003),var(11)>0&& p2bodydist x <=30&& var(45)<=0
trigger2 = var(45)=250 && var(46)
trigger3 = var(45)=250 && !var(46) && (ctrl||stateno=[20,101])
trigger4 = (ctrl||(stateno=[12,20])) && (p2bodydist x=[30,90]) && p2statetype!=C&& p2movetype=I&&random <199&& var(45)<=0

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
Triggerall = (RoundState = 2) && (AILevel>0)
Triggerall = (StateType != A)
triggerall = stateno != [800,3999]
Triggerall = P2BodyDist X = [0,55]
;triggerall = var(27)<5
triggerall = ((p2bodydist y= [-40,-1]) &&enemy,vel y >=0)||p2statetype!=A; && p2movetype!=A
Triggerall =   random <= (350* (AIlevel ** 2 / 64.0))
triggerall = p2statetype !=L
triggerall = !enemy,hitfall || p2life <25
triggerall = movetype!=H
triggerall = !var(16) && var(15)<1 || p2statetype!=A
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall =!ishelper&&helper(10003),var(8)=0
trigger1= ( ctrl||stateno=20 ||stateno=[100,101])&& !ishelper&&helper(10003),var(10)>0&& p2bodydist x <=50&& var(45)<=0
trigger2 = var(45)=400 && !var(46)&& (ctrl||stateno=[20,101])
trigger3 = (ctrl||(stateno=[12,20])) && (p2bodydist x=[10,45]) &&  p2movetype=I&&random <199&& var(45)<=0


[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
Triggerall = (RoundState = 2) && (AILevel>0)
Triggerall = (StateType != A)
triggerall = stateno != [800,3999]
Triggerall = P2BodyDist X = [0,55]
;triggerall = var(27)<5
triggerall = ((p2bodydist y= [-40,-1]) &&enemy,vel y >=0)||p2statetype!=A; && p2movetype!=A
Triggerall =   random <= (350* (AIlevel ** 2 / 64.0))
triggerall = p2statetype !=L
triggerall = !enemy,hitfall || p2life <55
triggerall = movetype!=H
triggerall = !var(16) && var(15)<1 || p2statetype!=A
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall =!ishelper&&helper(10003),var(8)=0
trigger1= ( ctrl||stateno=20 ||stateno=[100,101])&& !ishelper&&helper(10003),var(11)>0&& p2bodydist x <=50&& var(45)<=0
trigger2 = var(45)=410 && var(46)
trigger3 = var(45)=410 && !var(46) && (ctrl||stateno=[20,101])
trigger4 = (ctrl||(stateno=[12,20])) && (p2bodydist x=[30,50]) &&  p2movetype=I&&random <199&& var(45)<=0


[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
Triggerall = (RoundState = 2) && (AILevel>0)
Triggerall = (StateType != A)
triggerall = stateno != [800,3999]
Triggerall = P2BodyDist X = [0,75]
;triggerall = var(27)<5
triggerall = ((p2bodydist y= [-40,-1]) &&enemy,vel y >=0)||p2statetype!=A; && p2movetype!=A
Triggerall =   random <= (350* (AIlevel ** 2 / 64.0))
triggerall = p2statetype !=L
triggerall = !enemy,hitfall || p2life <90
triggerall = movetype!=H
triggerall = !var(16) && var(15)<1 || p2statetype!=A
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall =!ishelper&&helper(10003),var(8)=0
trigger1= (ctrl||(stateno=[12,20])) && (p2bodydist x=[40,70]) &&  p2movetype=I&&random <199&& var(45)<=0
trigger2 = var(45)=420 && var(46)
trigger3 = var(45)=420 && !var(46) && (ctrl||stateno=[20,101])



[State -1, Crouching Light Kick]
type = ChangeState
value = 430
Triggerall = (RoundState = 2) && (AILevel>0)
Triggerall = (StateType != A)
triggerall = stateno != [800,3999]
Triggerall = P2BodyDist X = [0,50]
;triggerall = var(27)<5
triggerall = p2statetype!=A; && p2movetype!=A
Triggerall =   random <= (cond(var(45)>0&&AIlevel=8,999,315)* (AIlevel ** 2 / 64.0))
triggerall = p2statetype !=L
triggerall = !enemy,hitfall || p2life <25
triggerall = movetype!=H
triggerall = !var(16) && var(15)<1 || p2statetype!=A
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall =!ishelper&&helper(10003),var(8)=0
trigger1= ( ctrl||stateno=20 ||stateno=[100,101])&& !ishelper&&helper(10003),var(10)>0&& p2bodydist x <=45&& var(45)<=0
trigger2 = var(45)=430 && !var(46)&& (ctrl||stateno=[20,101])
trigger3 = (ctrl||(stateno=[12,20])) && (p2bodydist x=[10,45]) &&  p2statetype=S&&random <199&& var(45)<=0


[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
Triggerall = (RoundState = 2) && (AILevel>0)
Triggerall = (StateType != A)
triggerall = stateno != [800,3999]
Triggerall = P2BodyDist X = [0,80]
;triggerall = var(27)<5
triggerall = p2statetype!=A; && p2movetype!=A
Triggerall =   random <= (315* (AIlevel ** 2 / 64.0))
triggerall = p2statetype !=L
triggerall = !enemy,hitfall || p2life <25
triggerall = movetype!=H
triggerall = !var(16) && var(15)<1 || p2statetype!=A
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall =!ishelper&&helper(10003),var(8)=0
trigger1= ( ctrl||stateno=20 ||stateno=[100,101])&& !ishelper&&helper(10003),var(11)>0&& p2bodydist x <=45&& var(45)<=0
trigger2 = var(45)=440 && var(46)
trigger3 = var(45)=440 && !var(46) && (ctrl||stateno=[20,101])
trigger4 = (ctrl||(stateno=[12,20])) && (p2bodydist x=[40,75]) &&  p2statetype=S&&random <199&& var(45)<=0

[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
Triggerall = (RoundState = 2) && (AILevel>0)
Triggerall = (StateType != A)
triggerall = stateno != [800,3999]
Triggerall = P2BodyDist X = [0,80]
;triggerall = var(27)<5
triggerall = p2statetype!=A; && p2movetype!=A
Triggerall =   random <= (365* (AIlevel ** 2 / 64.0))
triggerall = p2statetype !=L
triggerall = !enemy,hitfall || p2life <25
triggerall = movetype!=H
triggerall = !var(16) && var(15)<1 || p2statetype!=A
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall =!ishelper&&helper(10003),var(8)=0
trigger1= (ctrl||(stateno=[12,20])) && (p2bodydist x=[55,75]) &&  p2statetype=S&&random <199&& var(45)<=0
trigger2 = var(45)=450 && var(46)
trigger3 = var(45)=450 && !var(46) && (ctrl||stateno=[20,101])

[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = statetype = A
triggerall = stateno !=105
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
Triggerall = (RoundState = 2) && (AILevel >0)
triggerall = stateno != [800,3999]
Triggerall=(P2BodyDist X = [0,65])
triggerall = (movetype !=H)
triggerall = !var(16) && var(15)<1 || p2statetype!=A
triggerall =p2statetype=A 
Triggerall =   ( p2statetype!=C&&p2bodydist y=[-45,40])
Triggerall = (300*(AILevel**2/64.0))  
trigger1=ctrl

[State -1, Jump Med Punch]
type = ChangeState
value = 610
triggerall = statetype = A
triggerall = stateno !=105
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
Triggerall = (RoundState = 2) && (AILevel >0)
triggerall = stateno != [800,3999]
Triggerall=(P2BodyDist X = [-15,40])
triggerall = (movetype !=H)
triggerall = !var(16) && var(15)<1 || p2statetype!=A
triggerall = p2statetype=A 
Triggerall =   ( p2statetype!=C&&p2bodydist y=[-65,30])
Triggerall = (315*(AILevel**2/64.0))  
trigger1=ctrl
[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = statetype = A
triggerall = stateno !=105
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
Triggerall = (RoundState = 2) && (AILevel >0)
triggerall = stateno != [800,3999]
Triggerall=(P2BodyDist X = [0,60])
triggerall = (movetype !=H)
triggerall = !var(16) && var(15)<1 || p2statetype!=A
triggerall = p2statetype=A 
Triggerall =   ( p2statetype!=C&&p2bodydist y=[-45,30])
Triggerall = (400*(AILevel**2/64.0))  
trigger1=ctrl

[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = statetype = A
triggerall = stateno !=105
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
Triggerall = (RoundState = 2) && (AILevel >0)
triggerall = stateno != [800,3999]
Triggerall=(P2BodyDist X = [-20,30])
triggerall = (movetype !=H)
triggerall = !var(16) && var(15)<1 || p2statetype!=A
triggerall = vel y >=0 || p2statetype=A 
Triggerall =   ( p2statetype=C &&p2bodydist y=[-15,50])||( p2statetype!=C&&p2bodydist y=[-15,75])
Triggerall = (300*(AILevel**2/64.0))  
trigger1=ctrl

[State -1, Jump Med Kick]
type = ChangeState
value = 640
triggerall = statetype = A
triggerall = stateno !=105
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
Triggerall = (RoundState = 2) && (AILevel >0)
triggerall = stateno != [800,3999]
Triggerall=(P2BodyDist X = [0,80])
triggerall = (movetype !=H)
triggerall = !var(16) && var(15)<1 || p2statetype!=A
triggerall = vel y >=0 || p2statetype=A 
Triggerall =   ( p2statetype=C &&p2bodydist y=[-15,50])||( p2statetype!=C&&p2bodydist y=[-15,70])
Triggerall = (330*(AILevel**2/64.0))  
trigger1=ctrl

[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = statetype = A
triggerall = stateno !=105
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
Triggerall = (RoundState = 2) && (AILevel >0)
triggerall = stateno != [800,3999]
Triggerall=(P2BodyDist X = [0,65])
triggerall = (movetype !=H)
triggerall = !var(16) && var(15)<1 || p2statetype!=A
triggerall = vel y >=0 || p2statetype=A 
Triggerall =   ( p2statetype=C &&p2bodydist y=[-15,50])||( p2statetype!=C&&p2bodydist y=[-15,75])
Triggerall = (400*(AILevel**2/64.0))  
trigger1=ctrl
;------------------------------------------------------------------------------
;?????????
[State -1, L LTAI]
type = ChangeState
value = 1330
Triggerall = (RoundState = 2) && (AILevel>0) 
Triggerall = (StateType != A)
Triggerall = (P2BodyDist X = [-15,105])
triggerall =p2bodydist y =[-80,0]
Triggerall = Random < (229* (AIlevel ** 2 / 64.0))
triggerall = p2statetype !=L
triggerall = !var(16) && var(15)<1 || p2statetype!=A
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = power >=700|| var(20)>400
triggerall =p2stateno!=[120,155]
;triggerall = var(27)<5
trigger1 = (p2movetype=I&&p2statetype=A ||p2movetype=A&&p2bodydist x>50&&(random<199||AIlevel>5))&&!ishelper&&helper(10003),var(11)=0 && !ishelper&&helper(10003),var(10)=0 && var(45)<=0
trigger1 = ctrl || stateno=20||stateno=[100,101]
trigger2 = stateno=200 ||stateno=210|| stateno=221||stateno=400 ||stateno=410 ||stateno=430 ||stateno=440 ||(stateno=[230,250]) && animelemtime(4)<0
trigger2 =movehit && AIlevel >4 || movecontact && AIlevel <=4
trigger2= var(45)<=0
trigger2 = p2bodydist x <=70
;?????????
[State -1, L LTAI]
type = ChangeState
value = 1300+(random%3)*10
Triggerall = (RoundState = 2) && (AILevel>0) 
Triggerall = (StateType != A)
triggerall = !IsHelper(10371)
triggerall = !var(16) && var(15)<1 || p2statetype!=A
triggerall = numhelper(10371)
Triggerall = (P2BodyDist X = [-8,105]) 
triggerall =p2bodydist y =[-80,0]
Triggerall = Random < (279* (AIlevel ** 2 / 64.0))
triggerall = p2statetype !=L
triggerall = p2stateno!=[120,155]
;triggerall = var(27)<5
trigger1 = (p2movetype=I&&p2statetype=A ||p2movetype=A&&p2bodydist x>50&&(random<199||AIlevel>5))&&!ishelper&&helper(10003),var(11)=0 && !ishelper&&helper(10003),var(10)=0 && var(45)<=0
trigger1 = ctrl || stateno=20||stateno=[100,101]
trigger2 = stateno=200 ||stateno=210|| stateno=221||stateno=400 ||stateno=410 ||stateno=430 ||stateno=440 ||(stateno=[230,250]) && animelemtime(4)<0
trigger2 =movehit && AIlevel >4 || movecontact && AIlevel <=4
trigger2= var(45)<=0
;??????????
[State -1, S BB AI]
type = ChangeState
value = 1030+(p2statetype=C || p2statetype=L)*100
triggerall = random< (cond(movecontact||enemy,numproj>0,272,199)* (AIlevel ** 2 / 64.0))
Triggerall = (RoundState = 2) && (AILevel>0)
triggerall = !IsHelper(10371)
triggerall =power >=700|| var(20)>600
triggerall = numhelper(10371)
triggerall =  Cond(numhelper(1025),(helper(1025),stateno=11101||helper(1025),stateno=10101||helper(1025),stateno=[1015,1016]),numhelper(1025)=0) 
triggerall =  Cond(numhelper(1010),(helper(1010),stateno=11101||helper(1010),stateno=10101||helper(1010),stateno=[1015,1016]),numhelper(1010)=0) 
triggerall = (statetype!=A &&p2bodydist y =[-85,0])
triggerall = p2bodydist x >70 || movecontact
triggerall = !ishelper&&helper(10003),var(10)=0
triggerall = !ishelper&&helper(10003),var(11)=0
triggerall = !ishelper&&helper(10003),var(8)=0
trigger1 = (!ishelper&&helper(10003),var(20)||!ishelper&&helper(10003),var(21)||!ishelper&&helper(10003),var(22))&& var(45)<=0 &&( p2movetype=A || enemy,numproj>0)
trigger1 = ctrl || stateno=20
trigger2 = stateno=200 ||stateno=210|| stateno=221||stateno=400 ||stateno=410 ||stateno=430 ||stateno=440 ||(stateno=[230,250]) && animelemtime(4)<0
trigger2 = movecontact && p2bodydist x >=30 || moveguarded && AIlevel >6 || movecontact && AIlevel <=6
trigger2= var(45)<=0


;------------------------------------------------------
;??????????
[State -1, L BB AI]
type = ChangeState
value =  1000+(p2statetype=C || p2statetype=L || !ishelper&&!helper(10003),var(14))*100
triggerall = random< (cond(movecontact,cond(var(45)>0&&AIlevel=8,999,312),199)* (AIlevel ** 2 / 64.0))
Triggerall = (RoundState = 2) && (AILevel>0)
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall =  Cond(numhelper(1025),(helper(1025),stateno=11101||helper(1025),stateno=10101||helper(1025),stateno=[1015,1016]),numhelper(1025)=0) 
triggerall =  Cond(numhelper(1010),(helper(1010),stateno=11101||helper(1010),stateno=10101||helper(1010),stateno=[1015,1016]),numhelper(1010)=0) 
triggerall = (statetype!=A &&p2bodydist y =[-85,0])
triggerall = p2bodydist x >70|| movecontact
triggerall = !ishelper&&helper(10003),var(10)=0
triggerall = !ishelper&&helper(10003),var(11)=0
triggerall = !ishelper&&helper(10003),var(8)=0
trigger1 = (!ishelper&&helper(10003),var(20)||!ishelper&&helper(10003),var(21)||!ishelper&&helper(10003),var(22))&& var(45)<=0
trigger1 = ctrl || stateno=20
trigger2 = stateno=200 ||stateno=210|| stateno=221||stateno=400 ||stateno=410 ||stateno=430 ||stateno=440 ||(stateno=[230,250]) && animelemtime(4)<0
trigger2 = movecontact && p2bodydist x >=30|| moveguarded && AIlevel >6 || movecontact && AIlevel <=6
trigger2= var(45)<=0
trigger3 = var(45)=1000 && var(46)

;-------------------------------------------------
[state -1, AI jump]
type = changestate
triggerall = roundstate = 2
triggerall = AILevel >0
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall =random < (999 * (AIlevel ** 2 / 64.0))
triggerall = statetype != A
triggerall = movetype!=H
triggerall = stateno!=40
trigger1 = !ishelper&&helper(10003),var(30) && ctrl
value = 40

[State -1, AI run]
type=changestate
value=20
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = roundstate = 2
triggerall =random < (999 * (AIlevel ** 2 / 64.0))
triggerall=AILevel >0 && statetype=S && ctrl && random < 249
trigger1= (stateno!=[20,105]) && p2movetype!=A && (p2bodydist x=[-25,120]) 
;--------------------------------------------------------
;---------------------------------------------------------------------------
;인공지능 달리�
[State -1, AI_Run Fwd]
type = ChangeState
value = 100
triggerall = movetype != H
triggerall = P2Life > 0
triggerall = roundstate = 2
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = AIlevel >0
triggerall = stateno != 100 && random <= (288*(AILevel**2/64.0)) 
triggerall = statetype = S
triggerall = p2bodydist x > 0
trigger1 = p2bodydist x >= 180 && p2statetype!=L
trigger1 = ctrl||stateno=20
trigger2 =  p2bodydist x >= 120 && p2statetype=L
trigger2 = ctrl||stateno=20
trigger3=  p2bodydist x >= 80 &&p2movetype=H&& p2stateno=[1390,1393]
trigger3 = ctrl||stateno=20
;---------------------------------------------------------------------------
;인공지능 도망
[State -1, AI_Run Back]
type = ChangeState
value = 105
triggerall = movetype != H
triggerall = P2Life > 0
triggerall = roundstate = 2
triggerall = !IsHelper(10371)
triggerall = numhelper(10371)
triggerall = AIlevel >0
triggerall = statetype != a
triggerall = BackEdgeBodyDist > 30
triggerall = ctrl
triggerall = p2movetype!=H || p2statetype=L
triggerall = p2bodydist x> 0
trigger1 = random <=  (56 * (AIlevel ** 2 / 64.0))
trigger1 =  p2bodydist x < 40 && (p2movetype!=H);|| p2stateno=824
trigger2 = random <=  (200 * (AIlevel ** 2 / 64.0))
trigger2 = p2bodydist x < 40 && p2statetype=L
trigger3 = random <=  (200 * (AIlevel ** 2 / 64.0))
trigger3 =  p2bodydist x< 90 && p2statetype=A &&p2movetype=A && backedgebodydist >50

;============================================================================

[State -1, Tiger Storm]
type = ChangeState
value = 3400
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(42)
triggerall = (helper(10371), var(0)) && (helper(10371), var(1)) || (helper(10371), var(1)) && (helper(10371), var(2)) || (helper(10371), var(0)) && (helper(10371), var(2))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 3000, power >= 1000)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Tiger Raid MAX]
type = ChangeState
value = 3350
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(41)
triggerall = (helper(10371), var(3)) && (helper(10371), var(4)) || (helper(10371), var(4)) && (helper(10371), var(5)) || (helper(10371), var(3)) && (helper(10371), var(5))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 2000, power >= 1000)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6) || var(7)

[State -1, Tiger Genocide MAX]
type = ChangeState
value = 3250
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(40)
triggerall = (helper(10371), var(3)) && (helper(10371), var(4)) || (helper(10371), var(4)) && (helper(10371), var(5)) || (helper(10371), var(3)) && (helper(10371), var(5))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 2000, power >= 1000)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6) || var(7)

[State -1, Low Tiger Cannon MAX]
type = ChangeState
value = 3150
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(41)
triggerall = (helper(10371), var(0)) && (helper(10371), var(1)) || (helper(10371), var(1)) && (helper(10371), var(2)) || (helper(10371), var(0)) && (helper(10371), var(2))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 2000, power >= 1000)
triggerall = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101]) || var(6) || var(7)
trigger1 = NumHelper(3060) <= 0
trigger2 = NumHelper(3060) <= 1
trigger2 = Helper(3060),StateNo = [3015,3016]

[State -1, Tiger Cannon MAX]
type = ChangeState
value = 3050
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(40)
triggerall = (helper(10371), var(0)) && (helper(10371), var(1)) || (helper(10371), var(1)) && (helper(10371), var(2)) || (helper(10371), var(0)) && (helper(10371), var(2))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 2000, power >= 1000)
triggerall = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101]) || var(6) || var(7)
trigger1 = NumHelper(3060) <= 0
trigger2 = NumHelper(3060) <= 1
trigger2 = Helper(3060),StateNo = [3015,3016]

[State -1, Tiger Raid]
type = ChangeState
value = 3300
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(41)
triggerall = (helper(10371), var(3)) || (helper(10371), var(4)) || (helper(10371), var(5)) || (helper(10371), var(10)) || (helper(10371), var(11)) || (helper(10371), var(12))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Tiger Genocide]
type = ChangeState
value = 3200
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(40)
triggerall = (helper(10371), var(3)) || (helper(10371), var(4)) || (helper(10371), var(5)) || (helper(10371), var(10)) || (helper(10371), var(11)) || (helper(10371), var(12))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(6)

[State -1, Low Tiger Cannon]
type = ChangeState
value = 3100
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(41)
triggerall = (helper(10371), var(0)) || (helper(10371), var(1)) || (helper(10371), var(2)) || (helper(10371), var(7)) || (helper(10371), var(8)) || (helper(10371), var(9))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
triggerall = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101]) || var(6)
trigger1 = NumHelper(3010) <= 0
trigger2 = NumHelper(3010) <= 1
trigger2 = Helper(3010),StateNo = [3015,3016]

[State -1, Tiger Cannon]
type = ChangeState
value = 3000
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(40)
triggerall = (helper(10371), var(0)) || (helper(10371), var(1)) || (helper(10371), var(2)) || (helper(10371), var(7)) || (helper(10371), var(8)) || (helper(10371), var(9))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 1000, power >= 0)
triggerall = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101]) || var(6)
trigger1 = NumHelper(3010) <= 0
trigger2 = NumHelper(3010) <= 1
trigger2 = Helper(3010),StateNo = [3015,3016]

[State -1, EX Tiger Knee]
type = ChangeState
value = 1330
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(23)
triggerall = (helper(10371), var(3)) && (helper(10371), var(4)) || (helper(10371), var(4)) && (helper(10371), var(5)) || (helper(10371), var(3)) && (helper(10371), var(5))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, EX Tiger Uppercut]
type = ChangeState
value = 1230
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(23)
triggerall = (helper(10371), var(0)) && (helper(10371), var(1)) || (helper(10371), var(1)) && (helper(10371), var(2)) || (helper(10371), var(0)) && (helper(10371), var(2))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, EX Low Tiger Shot]
type = ChangeState
value = 1130
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(21)
triggerall = (helper(10371), var(3)) && (helper(10371), var(4)) || (helper(10371), var(4)) && (helper(10371), var(5)) || (helper(10371), var(3)) && (helper(10371), var(5)) 
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
triggerall = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101]) || var(5)
trigger1 = NumHelper(1010) <= 0
trigger2 = NumHelper(1010) <= 1
trigger2 = Helper(1010),StateNo = [1015,1016]

[State -1, EX Tiger Shot]
type = ChangeState
value = 1030
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(21)
triggerall = (helper(10371), var(0)) && (helper(10371), var(1)) || (helper(10371), var(1)) && (helper(10371), var(2)) || (helper(10371), var(0)) && (helper(10371), var(2))
triggerall = RoundState = 2 && StateType != A
triggerall = ifelse(var(20) <= 0, power >= 500, power >= 0)
triggerall = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101]) || var(5)
trigger1 = NumHelper(1010) <= 0
trigger2 = NumHelper(1010) <= 1
trigger2 = Helper(1010),StateNo = [1015,1016]

[State -1, Strong Tiger Knee]
type = ChangeState
value = 1320
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(23)
triggerall = (helper(10371), var(5)) || (helper(10371), var(12))
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Med Tiger Knee]
type = ChangeState
value = 1310
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(23)
triggerall = (helper(10371), var(4)) || (helper(10371), var(11))
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Tiger Knee]
type = ChangeState
value = 1300
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(23)
triggerall = (helper(10371), var(3)) || (helper(10371), var(10))
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Strong Tiger Uppercut]
type = ChangeState
value = 1220
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(23)
triggerall = (helper(10371), var(2)) || (helper(10371), var(9))
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Med Tiger Uppercut]
type = ChangeState
value = 1210
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(23)
triggerall = (helper(10371), var(1)) || (helper(10371), var(8))
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Tiger Uppercut]
type = ChangeState
value = 1200
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(23)
triggerall = (helper(10371), var(0)) || (helper(10371), var(7))
triggerall = RoundState = 2 && StateType != A
trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
trigger2 = var(5)

[State -1, Alpha Counter(Kick)]
type = ChangeState
value = 750
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(20)
triggerall = (helper(10371), var(3)) || (helper(10371), var(4)) || (helper(10371), var(5)) || (helper(10371), var(10)) || (helper(10371), var(11)) || (helper(10371), var(12))
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20)

[State -1, Alpha Counter(Punch)]
type = ChangeState
value = 750
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(20)
triggerall = (helper(10371), var(0)) || (helper(10371), var(1)) || (helper(10371), var(2)) || (helper(10371), var(7)) || (helper(10371), var(8)) || (helper(10371), var(9))
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20)

[State -1, Low Tiger Shot]
type = ChangeState
value = 1100
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(21)
triggerall = (helper(10371), var(3)) || (helper(10371), var(4)) || (helper(10371), var(5)) || (helper(10371), var(10)) || (helper(10371), var(11)) || (helper(10371), var(12))
triggerall = RoundState = 2 && StateType != A
triggerall = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101]) || var(5)
trigger1 = NumHelper(1010) <= 0
trigger2 = NumHelper(1010) <= 1
trigger2 = Helper(1010),StateNo = [1015,1016]

[State -1, Tiger Shot]
type = ChangeState
value = 1000
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(21)
triggerall = (helper(10371), var(0)) || (helper(10371), var(1)) || (helper(10371), var(2)) || (helper(10371), var(7)) || (helper(10371), var(8)) || (helper(10371), var(9)) 
triggerall = RoundState = 2 && StateType != A
triggerall = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101]) || var(5)
trigger1 = NumHelper(1010) <= 0
trigger2 = NumHelper(1010) <= 1
trigger2 = Helper(1010),StateNo = [1015,1016]

;[State -1, Low Tiger Bluff]
;type = ChangeState
;value = 197
;triggerall = AIlevel=0
;triggerall = !IsHelper(10371) ;Always add this!
;triggerall = numhelper(10371)
;triggerall = helper(10371), var(22)
;triggerall = (helper(10371), var(6)) || (helper(10371), var(13))
;triggerall = RoundState = 2 && StateType != A
;trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
;trigger2 = var(5)

;[State -1, Tiger Bluff]
;type = ChangeState
;value = 196
;triggerall = AIlevel=0
;triggerall = !IsHelper(10371) ;Always add this!
;triggerall = numhelper(10371)
;triggerall = helper(10371), var(21)
;triggerall = (helper(10371), var(6)) || (helper(10371), var(13))
;triggerall = RoundState = 2 && StateType != A
;trigger1 = ctrl || StateNo = 40 || StateNo = 52 || (StateNo = [100,101])
;trigger2 = var(5)

[State -1, Counter Movement]
type = ChangeState
value = 740
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(14);LP+LK detection
triggerall = (helper(10371),command = "holdfwd") || (helper(10371),command = "holdback")
trigger1 = StateNo = 150 || StateNo = 152
trigger1 = RoundState = 2 && StateType != A
trigger1 = power >= 1000 && !var(20)

[State -1, Throw(Kick)]
type = ChangeState
value = 800
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = (helper(10371), var(3)) && (helper(10371), var(4)) || (helper(10371), var(4)) && (helper(10371), var(5)) || (helper(10371), var(3)) && (helper(10371), var(5))
trigger1 = (helper(10371),command = "holdfwd")|| (helper(10371),command = "holdback")
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Throw(Punch)]
type = ChangeState
value = 800
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = (helper(10371), var(0)) && (helper(10371), var(1)) || (helper(10371), var(1)) && (helper(10371), var(2)) || (helper(10371), var(0)) && (helper(10371), var(2))
trigger1 = (helper(10371),command = "holdfwd")|| (helper(10371),command = "holdback")
trigger1 = RoundState = 2 && StateType = S
trigger1 = ctrl

[State -1, Roll Forward]
type = ChangeState
value = 710
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(14) ;LP+LK detection
triggerall = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdfwd"

[State -1, Roll Back]
type = ChangeState
value = 715
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(14) ;LP+LK detection
triggerall = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101])) && command = "holdback"

[State -1, Power Charge]
type = ChangeState
value = 730
triggerall = AIlevel=0
trigger1 = command = "hold_b" && command = "hold_y"
trigger1 = RoundState = 2 && StateType != A
trigger1 = power < const(data.power) && power < PowerMax && !var(20)
trigger1 = ctrl || (StateNo = [100,101])
;^I'm gonna have to adapt this to the buffering system(maybe?) 
;I think it's good... I'll keep this as a reminder still though

[State -1, MAX Mode]
type = ChangeState
value = 770
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(16) ;HP+HK detection
triggerall = RoundState = 2 && StateType != A
triggerall = var(20) <= 0 && Power >= 1000
trigger1 = ctrl || (Stateno = [100,101])

[State -1, Dodge]
type = ChangeState
value = 700
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(14) ;LP+LK detection
triggerall = RoundState = 2 && StateType != A
trigger1 = (ctrl || (StateNo = [100,101]))

[State -1, Tiger Thrust]
type = Changestate
value = 251
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(5) ; The buffered version of HK
triggerall = (helper(10371),command != "holddown")
triggerall = command = "holdfwd"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])

[State -1, Tiger Thrust Combo'd]
type = Changestate
value = 252
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this!
triggerall = numhelper(10371)
triggerall = helper(10371), var(5) ; The buffered version of HK
triggerall = (helper(10371),command != "holddown")
triggerall = command = "holdfwd"
triggerall = statetype != A
trigger1 = statetype = S
trigger1 = ctrl || (stateno=[100,101])
trigger2 = var(4)

[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;|Normal Commands|--------------------------------------------------------
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(0) ; The buffered version of LP
triggerall = (helper(10371),command != "holddown")
;^Be sure to include the dir buffer check if needed DW!
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])

[State -1, Stand Medium Punch]
type = ChangeState
value = 210 
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(1) ; The buffered version of MP
triggerall = (helper(10371),command != "holddown")  
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Stand Strong Punch]
type = ChangeState
value = 220 + (Abs(P2BodyDist X) <= 20) * 1
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(2) ; The buffered version of HP
triggerall = (helper(10371),command != "holddown") 
triggerall = StateType != A
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(3) ; The buffered version of LK
triggerall = (helper(10371),command != "holddown")
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])

[State -1, Stand Medium Kick]
type = ChangeState
value = 240
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(4) ; The buffered version of MK
triggerall = (helper(10371),command != "holddown")
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])

[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(5) ; The buffered version of HK
triggerall = (helper(10371),command != "holddown")
triggerall = command != "holdfwd"
trigger1 = statetype != A
trigger1= ctrl || (stateno=[100,101])

[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(0) ; The buffered version of LP
triggerall = (helper(10371),command = "holddown")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(1) ; The buffered version of MP
triggerall = (helper(10371),command = "holddown")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(2) ; The buffered version of HP
triggerall = (helper(10371),command = "holddown")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(3) ; The buffered version of LK
triggerall = (helper(10371),command = "holddown")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Crouching Medium Kick]
type = ChangeState
value = 440
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(4) ; The buffered version of MK
triggerall = (helper(10371),command = "holddown")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Crouching Strong Kick]
type = ChangeState
value = 450
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(5) ; The buffered version of HK
triggerall = (helper(10371),command = "holddown")
triggerAll = StateType != A
trigger1 = ctrl || (StateNo = [100,101])

[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(0) ; The buffered version of LP
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Med Punch]
type = ChangeState
value = 610
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(1) ; The buffered version of MP
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Strong Punch]
type = ChangeState
value = 620
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(2) ; The buffered version of HP
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(3) ; The buffered version of LK
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Med Kick]
type = ChangeState
value = 640
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(4) ; The buffered version of MK
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Jump Strong Kick]
type = ChangeState
value = 650
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(5) ; The buffered version of HK
trigger1 = statetype = A
trigger1 = ctrl

[State -1, Taunt]
type = ChangeState
value = 195
triggerall = AIlevel=0
triggerall = !IsHelper(10371) ;Always add this as well!
triggerall = numhelper(10371) ;Prevent debug flood.
triggerall = helper(10371), var(6) ; The buffered version of Start
triggerall = StateType != A
triggerall = StateNo != [200,699]
trigger1 = ctrl || (StateNo = [100,101])
trigger2 = var(5)
