                            __________________________________________
===========================| Charlie Nash by Trololo                  |===========================
                            ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯        [14.09.16]

 - Contact:	Only on MFG
 - Website:	Nope
 - Customized version of Capcom's Charlie Nash character, for MUGEN 1.0

=====<Mode Overview>=====

This character has two different modes:

<Charlie>
- Plays like his SFA version
- Moves faster
- Charger

<Nash>
- Plays like his SF5 version
- No more charged commands, better comboability

=====<.DEF Overview>=====

This char has five different .def files, here's what each one does:

<CharlieNash.def>
The mode is selected via palette:

Palettes 1, 2, 3, 4, 5, 6	-> SFA Charlie
Palettes 7, 8, 9, 10, 11, 12	-> SF5 Nash

To add him to your Mugen, add the following line to your select.def, under [Characters]:
CharlieNash,

<CHARLIE.def>
Only SFA mode.
To add him to your Mugen, add the following line to your select.def, under [Characters]:
CharlieNash/Charlie.def,

<NASH.def>
Only SF5 mode.
To add him to your Mugen, add the following line to your select.def, under [Characters]:
CharlieNash/Nash.def,

=====<Features>=====

 - All the essential stuff
 - Details and moves taken from his various video game appearances
 - Gameplay mixed from several games, including CvS2, KOF, SFA3 and SFIII
 - Special intros versus Guile, Leona
 - Nash SF5 mode

=====<Movelist>=====

 U - up          x - light punch        a - light kick
 D - down        y - medium punch       b - medium kick
 F - forward     z - heavy punch        c - heavy kick
 B - back        p - any punch          k - any kick
 s - start       2p- two punches        2k- two kicks

 (Air) - Move must be performed in the air.
 (EX)  - Move has an EX version, performed by pressing two punch/kick buttons.
 (MAX) - Use two punch/kick buttons when performing a Super move to power it up.

=====<SFA Mode>=====

<NORMAL>

.Knee Bazooka				F/B + a
.Dragon Suplex:				F/B + 2p		(near opponent)


<SPECIAL>

.Sonic Boom (EX)			(charge) B, F, p
.Somersault Kick (EX)			(charge) D, U, k
.Moonsault Kick (EX)			U, UF, F, k		(Air)


<SUPER>

.Sonic Break:                	        (charge) B, F, B, F, p
.Somersault Justice (MAX):		(charge) DB, D, DF, F, UF, k
.Crossfire Blitz (MAX):	                (charge) B, F, B, F, k


<Lv3 SUPER>

.Crossfire Blitz:                	(charge) B, F, B, F, 3k


=====<SF5 Mode>=====

<NORMAL>

.Chopping Assault			F + y
.Spinning Back Knuckle			F + z
.Knee Bazooka				F/B + a
.Rolling Sobat				F + b
.Dragon Suplex:				F/B + 2p		(near opponent)


<SPECIAL>

.Sonic Boom (EX)			D, DF, F, p
.Tragedy Assault (EX)			F, D, DF, F, p
.Sonic Scythe (EX)			D, DB, B, k
.Moonsault Slash (EX)			D, DF, F, k


<SUPER>

.Crossfire Blitz (MAX):	                D, DF, F, D, DF, F, k


<Lv3 SUPER>

.Punishment Saber:                	D, DB, B, D, DB, B, 2p

<SYSTEM>

.Forward Dash:                  	F, F
   .Run:                        	hold
.Backward Dash:                 	B, B
.Low Jump:                      	tap U
.High Jump:                     	tap D, U
.Long Low Jump:                 	tap D, tap U            
.Sidestep:                      	a + x
   .Sidestep Attack:            	p / k
.Forward Roll:                  	F + a + x
.Backward Roll:                 	B + a + x
.Parry High:                    	tap F
.Parry Low:                     	tap D
.Air Parry:                     	tap F           	(Air)
.Power Charge:                  	hold b + y
.Zero Counter:                  	B, DB, D, p / k 	(during standing or crouching guard)
.Custom Combo:                  	c + z           	(Air also)
.Fall Recovery:                 	2p / a + x      	(while falling and allowed)




=====<Move Details>=====

 - HK and EX Sonic Scythe are good jugglers.
 - Chopping Assault is overhead.
 - In SF5 mode after first EX Sonic Boom press any punch button to perform second one.
 - Tragedy Assault steals enemy's energy. EX version steals some of enemy's health and regains yours.
 ----- Beware! Tragedy Assault is blockable!
 - In addition to the regular command, you can also perform Somersault Justice with the classic
   command ([charge] DB, DF, DB, UF, k).
-For those, who can't use three attack buttons at the same time I made alternative command for Crossfire Blitz III:
    D, DB, B, D, DB, B, 2k

=====<Gameplay Notes>=====

COMBO SYSTEM:
 - Some Normal attacks can be canceled into Special and Super moves
 - Some Special moves can be canceled into Super moves
 - Some Lv1 Super moves can be canceled into MAX Super moves
 - Cancelling a Special, Super move or Custom Combo into a Super move resets the juggle points
   but also reduces its damage

CUSTOM COMBO:
 - Removes cancellable attack restrictions and gives you a lot of freedom to combo them
 - Juggle limit is lifted
 - You can only use EX Special or Super moves from the point the character starts flashing faster
   and brighter, and doing so ends Custom Combo
 - Gives you a short invulnerability window at the start



=====<Miscellaneous>=====

- If you don't like having to charge directions to perform Super moves, open the .def file and replace
  "Command.cmd" with "CommandEasy.cmd".

=====<SFA Easy Mode>=====

<SPECIAL>

.Sonic Boom (EX)			D, DF, F, p
.Somersault Kick (EX)			D, DF, F, k
.Moonsault Kick (EX)			U, UF, F, k		(Air)


<SUPER>

.Sonic Break:                	        D, DF, F, D, DF, F, p
.Somersault Justice (MAX):		D, DB, B, D, DB, B, k
.Crossfire Blitz (MAX):	                D, DF, F, D, DF, F, k


<Lv3 SUPER>

.Crossfire Blitz:                	D, DF, F, D, DF, F, 3k


=====<Version History>=====

<31.08.2016>
-Still unreleased. Private Beta Testing.

<14.09.2016>
-First version released.

=====<Special Thanks>=====
 - P.o.t.S. for code, effects, hitsparks, formatting style
 - Jmorphman, for his Guile
 - Yaret, Armentis and Chuchoryu, for some sprites
 - Hades, for Super portraits and fonts

=====<Disclaimer>=====

 - The Charlie character is property of Capcom
 - Capcom vs SNK is property of Capcom
 - This MUGEN character is a non-profit fan work, it cannot be used for any commercial purposes