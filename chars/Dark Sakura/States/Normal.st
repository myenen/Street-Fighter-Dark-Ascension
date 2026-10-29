; _________________________________________
;| Sakura by varo_hades                    |
; ¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯¯
;===============================================================================
;============================<NORMAL MOVES>=====================================
;===============================================================================

;===========<STANDING LIGHT PUNCH>==========
[StateDef 200]
type = S
physics = S
moveType = A
anim = 200
ctrl = 0
velset = 0,0
sprPriority = 1
powerAdd = 0
facep2 = 1

[State 200, Voice]
type = PlaySnd
triggerall = var(40) = 0
trigger1 = !Time && Random < 200
value = 4, ifElse(Random < 500, 0, 1)
channel = 0

[State 200, Voice]
type = PlaySnd
triggerall = var(40) = 1
trigger1 = !Time && Random < 200
value = 4, ifElse(Random < 500, 10, 11)
channel = 0

[State 200, Woosh]
type = PlaySnd
trigger1 = !Time
value = 1,0
channel = 1

[State 200, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 2
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 0
getpower = 72 * !var(20), 36 * !var(20)
givepower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 12 + 2 * var(9)
ground.slideTime = 12 + 2 * var(9)
guard.hitTime = 12
air.hitTime = 120
ground.velocity = ifelse(var(20), -2.41, -4.49), 0
ground.cornerpush.veloff = 0
guard.velocity = ifelse(var(20), -2.41, -4.49)
guard.cornerPush.velOff = 0
air.velocity = ifElse(var(20), -2.41, -3), -7.5
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 71), var(36):= -71
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd = -255,-255,-255,48

[State 200, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0
moveType = I

[State 200, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;===========<STANDING FAR MEDIUM PUNCH>==========
[StateDef 210]
type = S
physics = S
moveType = A
anim = 210
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 210, Voice]
type = PlaySnd
triggerall = var (40) = 0
trigger1 = !Time && Random < 350
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 210, Voice]
type = PlaySnd
triggerall = var (40) = 1
trigger1 = !Time && Random < 350
value = 4, ifElse(Random < 500, 11, 12)
channel = 0

[State 210, Woosh]
type = PlaySnd
trigger1 = !Time
value = 1,1
channel = 1

[State 210, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 48 < 7, 7, fvar(11) * 48)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.66, -6.25), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -6.25)
guard.cornerPush.velOff = 0
air.velocity = ifelse(var(20), -2.66, -3.5), -7.5
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 71), var(36) := -69
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 210, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 210, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;===========<STANDING CLOSE MEDIUM PUNCH>==========
[StateDef 215]
type = S
physics = S
moveType = A
anim = 215
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
facep2 = 1

[State 215, Voice]
type = PlaySnd
triggerall = var (40) = 0
trigger1 = !Time && Random < 350
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 215, Voice]
type = PlaySnd
triggerall = var (40) = 1
trigger1 = !Time && Random < 350
value = 4, ifElse(Random < 500, 11, 12)
channel = 0

[State 215, Woosh]
type = PlaySnd
trigger1 = !Time
value = 1,1
channel = 1

[State 215, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 48 < 7, 7, fvar(11) * 48)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.66, -6.25), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -6.25)
guard.cornerPush.velOff = 0
air.velocity = ifelse(var(20), -2.66, -3.5), -7.5
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 71), var(36) := -66
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 215, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 215, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;===========<STANDING FAR HEAVY PUNCH>==========
[StateDef 220]
type = S
physics = S
moveType = A
anim = 220
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
facep2 = 1

[State 220, Voice]
type = PlaySnd
triggerall = var(40) = 0
trigger1 = AnimElem = 3 && Random < 500
value = 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 220, Voice]
type = PlaySnd
triggerall = var(40) = 1
trigger1 = AnimElem = 3 && Random < 500
value = 4, ifElse(Random < 500, 12, 13)
channel = 0

[State 220, Woosh]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,2
channel = 1

[State 220, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 68 < 7, 7, fvar(11) * 68)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 17 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -4.36, -8.52), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.36, -8.52)
guard.cornerPush.velOff = 0
air.velocity = ifelse(var(20), -2.36, -4), -7.5
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 81), var(36) := -65
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 220, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
movetype = I

[State 220, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;===========<STANDING CLOSE HEAVY PUNCH>==========
[StateDef 225]
type = S
physics = S
moveType = A
anim = 225
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
facep2 = 1

[State 225, Voice]
type = PlaySnd
triggerall = var(40) = 0
trigger1 = !Time && Random < 500
value = 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 225, Voice]
type = PlaySnd
triggerall = var(40) = 1
trigger1 = !Time && Random < 500
value = 4, ifElse(Random < 500, 12, 13)
channel = 0

[State 225, Woosh]
type = PlaySnd
trigger1 = !Time
value = 1,2
channel = 1

[State 225, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 68 < 7, 7, fvar(11) * 68)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 17 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -4.36, -8.52), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.36, -8.52)
guard.cornerPush.velOff = 0
air.velocity = ifelse(var(20), -2.36, -4), -7.5
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -58
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
forceStand = 1

[State 225, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 4 && !movecontact && !movereversed
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 68 < 7, 7, fvar(11) * 68)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 17 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -4.36, -8.52), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.36, -8.52)
guard.cornerPush.velOff = 0
air.velocity = ifelse(var(20), -2.36, -4), -7.5
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -101
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
forceStand = 1

[State 225, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
movetype = I

[State 225, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;===========<STANDING LIGHT KICK>==========
[StateDef 230]
type = S
physics = S
moveType = A
anim = 230
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
facep2 = 1

[State 230, Voice]
type = PlaySnd
triggerall = var(40) = 0
trigger1 = AnimElem = 3 && Random < 200
value = 4, ifElse(Random < 500, 0, 1)
channel = 0

[State 230, Voice]
type = PlaySnd
triggerall = var(40) = 1
trigger1 = AnimElem = 3 && Random < 200
value = 4, ifElse(Random < 500, 10, 11)
channel = 0

[State 230, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,3
channel = 1

[State 230, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 0
getPower = 72 * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12 + 2 * var(9)
ground.slideTime = 12 + 2 * var(9)
guard.hitTime = 12
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.41, -4.49)
guard.cornerPush.velOff = 0
air.velocity = ifelse(var(20), -2.41, -3), -7.5
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0*(var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 99), var(36) := -54
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 230, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 230, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;===========<STANDING LIGHT KICK>==========
[StateDef 235]
type = S
physics = S
moveType = A
anim = 235
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
facep2 = 1

[State 235, Voice]
type = PlaySnd
triggerall = var(40) = 0
trigger1 = AnimElem = 3 && Random < 200
value = 4, ifElse(Random < 500, 0, 1)
channel = 0

[State 235, Voice]
type = PlaySnd
triggerall = var(40) = 1
trigger1 = AnimElem = 3 && Random < 200
value = 4, ifElse(Random < 500, 10, 11)
channel = 0

[State 235, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,3
channel = 1

[State 235, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 0
getPower = 72 * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12 + 2 * var(9)
ground.slideTime = 12 + 2 * var(9)
guard.hitTime = 12
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.41, -4.49)
guard.cornerPush.velOff = 0
air.velocity = ifelse(var(20), -2.41, -3), -7.5
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0*(var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 119), var(36) := -39
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 235, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 235, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;===========<STANDING FAR MEDIUM KICK>==========
[StateDef 240]
type = S
physics = S
moveType = A
anim = 240
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 240, Voice]
type = PlaySnd
triggerall = var(40) = 0
trigger1 = AnimElem = 4 && Random < 350
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 240, Voice]
type = PlaySnd
triggerall = var(40) = 1
trigger1 = AnimElem = 4 && Random < 350
value = 4, ifElse(Random < 500, 11, 12)
channel = 0

[State 240, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,4
channel = 1

[State 240, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 4
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 48 < 7, 7, fvar(11) * 48)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.66, -6.25), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -6.25)
guard.cornerPush.velOff = 0
air.velocity = ifelse(var(20), -2.66, -3.5), -7.5
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 90), var(36) := -64
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 240, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
movetype = I

[State 240, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;===========<FLOWER KICK>==========
[StateDef 249]
type = S
physics = S
moveType = A
anim = 249
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 249, Voice]
type = PlaySnd
triggerall = var(40) = 0
trigger1 = AnimElem = 5 && Random < 350
value = 4,1
channel = 0

[State 249, Voice]
type = PlaySnd
triggerall = var(40) = 1
trigger1 = AnimElem = 5 && Random < 350
value = 4,11
channel = 0

[State 249, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 5
value = 1,4
channel = 1

[State 249, VelSet]
type = VelSet
trigger1 = AnimElem = 4
x = 3

[State 249, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 5
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 58 < 7, 7, fvar(11) * 58)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = ifElse(var(20), -4.36, -8.52), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.36, -8.52)
guard.cornerPush.velOff = 0
air.velocity = ifelse(var(20), -2.36, -4), -8
air.cornerPush.velOff = 0
yAccel = ifElse(var(20),.5,.6)
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 103), var(36) := -90
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 249, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 6 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = H
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 58 < 7, 7, fvar(11) * 58)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = ifElse(var(20), -4.36, -8.52), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.36, -8.52)
guard.cornerPush.velOff = 0
air.velocity = ifelse(var(20), -2.36, -4), -8
air.cornerPush.velOff = 0
yAccel = ifElse(var(20),.5,.6)
air.fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 103), var(36) := -34
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 249, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(7) >= 0
movetype = I

[State 249, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;===========<STANDING FAR HEAVY KICK>==========
[StateDef 250]
type = S
physics = N
moveType = A
anim = 250
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 250, Voice]
type = PlaySnd
triggerall = var(40) = 0
trigger1 = AnimElem = 3 && Random < 500
value = 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 250, Voice]
type = PlaySnd
triggerall = var(40) = 1
trigger1 = AnimElem = 3 && Random < 500
value = 4, ifElse(Random < 500, 12, 13)
channel = 0

[State 250, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,5
channel = 1

[State 250, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4,Hit
damage = ceil(ifElse(fvar(11) * 68 < 7, 7, fvar(11) * 68)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 17 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -4.36, -8.52), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.36, -8.52)
guard.cornerPush.velOff = 0
air.velocity = ifelse(var(20), -2.36, -4), -7.5
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 113), var(36) := -72
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 250, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 250, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;=============<DODGE HARD KICK>==========
[StateDef 251]
type = S
physics = S
moveType = A
anim = 250
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 251, Voice]
type = PlaySnd
triggerall = var(40) = 0
trigger1 = AnimElem = 3 && Random < 500
value = 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 251, Voice]
type = PlaySnd
triggerall = var(40) = 1
trigger1 = AnimElem = 3 && Random < 500
value = 4, ifElse(Random < 500, 12, 13)
channel = 0

[State 251, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,5
channel = 1

[State 251, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 3
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4,Hit
damage = ceil(ifElse(fvar(11) * 68 < 7, 7, fvar(11) * 68)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = DiagUp
air.animType = DiagUp
fall.animType = DiagUp
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 17 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.36, -4), -8
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.36, -8.52)
guard.cornerPush.velOff = 0
air.velocity = ifelse(var(20), -2.36, -4), -8
air.cornerPush.velOff = 0
yAccel = ifElse(var(20),.5,.6)
fall = 1
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkxy = -10 + 0 * (var(35) := 113), var(36) := -72
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 251, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
movetype = I

[State 251, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;===========<STANDING CLOSE HEAVY KICK>==========
[StateDef 255]
type = S
physics = S
moveType = A
anim = 255
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 255, Voice]
type = PlaySnd
triggerall = var(40) = 0
trigger1 = AnimElem = 3 && Random < 500
value = 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 255, Voice]
type = PlaySnd
triggerall = var(40) = 1
trigger1 = AnimElem = 3 && Random < 500
value = 4, ifElse(Random < 500, 12, 13)
channel = 0

[State 255, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,5
channel = 1

[State 255, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = S, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 68 < 7, 7, fvar(11) * 68)), 0
getPower = ifElse(!var(13), 216, 72)*!var(20), 36*!var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = High
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 17 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -4.36, -8.52), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.36, -8.52)
guard.cornerPush.velOff = 0
air.velocity = ifelse(var(20), -2.36, -4), -7.5
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkno = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 74), var(36) := -90
palFX.time = 12 * var(9)
palFX.add = 255,255,255
palFX.sinAdd= -255,-255,-255,48
forceStand = 1

[State 255, StateTypeSet]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 255, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;===========<CROUCHING LIGHT PUNCH>==========
[StateDef 400]
type = C
physics = C
moveType = A
anim = 400
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 400, Voice]
type = PlaySnd
triggerall = var(40) = 0
trigger1 = !Time && Random < 200
value = 4, ifElse(Random < 500, 0, 1)
channel = 0

[State 400, Voice]
type = PlaySnd
triggerall = var(40) = 1
trigger1 = !Time && Random < 200
value = 4, ifElse(Random < 500, 10, 11)
channel = 0

[State 400, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1,0
channel = 1

[State 400, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 2
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 0
getPower = 72 * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12 + 2 * var(9)
ground.slideTime = 12 + 2 * var(9)
guard.hitTime = 12
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.41, -4.49)
guard.cornerPush.velOff = 0
air.velocity = ifelse(var(20), -2.41, -3), -7.5
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 75), var(36) := -36
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 400, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0
moveType = I

[State 400, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;===========<CROUCHING MEDIUM PUNCH>==========
[StateDef 410]
type = C
physics = C
moveType = A
anim = 410
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 410, Voice]
type = PlaySnd
triggerall = var(40) = 0
trigger1 = !Time && Random < 350
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 410, Voice]
type = PlaySnd
triggerall = var(40) = 1
trigger1 = !Time && Random < 350
value = 4, ifElse(Random < 500, 11, 12)
channel = 0

[State 410, Woosh Sound]
type = PlaySnd
trigger1 = !Time
value = 1,1
channel = 1

[State 410, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 48 < 7, 7, fvar(11) * 48)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.66, -6.25), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -6.25)
guard.cornerPush.velOff = 0
air.velocity = ifelse(var(20), -2.66, -3.5), -7.5
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0*(var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -37
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 410, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 4 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 48 < 7, 7, fvar(11) * 48)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.66, -6.25), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -6.25)
guard.cornerPush.velOff = 0
air.velocity = ifelse(var(20), -2.66, -3.5), -7.5
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0*(var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -5
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 410, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 410, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;===========<CROUCHING HEAVY PUNCH>==========
[StateDef 420]
type = C
physics = C
moveType = A
anim = 420
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 420, Voice]
type = PlaySnd
triggerall = var(40) = 0
trigger1 = AnimElem = 2 && Random < 500
value = 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 420, Voice]
type = PlaySnd
triggerall = var(40) = 1
trigger1 = AnimElem = 2 && Random < 500
value = 4, ifElse(Random < 500, 12, 13)
channel = 0

[State 420, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,2
channel = 1

[State 420, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 2
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 68 < 7, 7, fvar(11) * 68)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 17 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -4.36, -8.52), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.36, -8.52)
guard.cornerPush.velOff = 0
air.velocity = ifelse(var(20), -2.36, -4), -7.5
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 65), var(36) := -35
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
forceStand = 1

[State 420, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 3 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = C, NA
hitFlag = MAF
guardFlag = M
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 68 < 7, 7, fvar(11) * 68)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 17 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = ifElse(var(20), -4.36, -8.52), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.36, -8.52)
guard.cornerPush.velOff = 0
air.velocity = ifelse(var(20), -2.36, -4), -7.5
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 65), var(36) := -86
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48
forceStand = 1

[State 420, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 420, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;===========<CROUCHING LIGHT KICK>==========
[StateDef 430]
type = C
physics = C
moveType = A
anim = 430
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 0
faceP2 = 1

[State 430, Voice]
type = PlaySnd
triggerall = var(40) = 0
trigger1 = AnimElem = 2 && Random < 200
value = 4, ifElse(Random < 500, 0, 1)
channel = 0

[State 430, Voice]
type = PlaySnd
triggerall = var(40) = 1
trigger1 = AnimElem = 2 && Random < 200
value = 4, ifElse(Random < 500, 10, 11)
channel = 0

[State 430, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,3
channel = 1

[State 430, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
forceNoFall = !var(20)
attr = C, NA
hitFlag = MA
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 0
getPower = 72 * !var(20), 36 * !var(20)
givepower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12 + 2 * var(9)
ground.slideTime = 12 + 2 * var(9)
guard.hitTime = 12
air.hitTime = 120
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.41, -4.49)
guard.cornerPush.velOff = 0
air.velocity = ifelse(var(20), -2.41, -3), -7.5
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 76), var(36) := -5
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinadd = -255, -255, -255, 48

[State 430, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0
moveType = I

[State 430, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;===========<CROUCHING MEDIUM KICK>==========
[StateDef 440]
type = C
physics = C
moveType = A
anim = 440
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 440, Voice]
type = PlaySnd
triggerall = var(40) = 0
trigger1 = AnimElem = 2 && Random < 350
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 440, Voice]
type = PlaySnd
triggerall = var(40) = 1
trigger1 = AnimElem = 2 && Random < 350
value = 4, ifElse(Random < 500, 11, 12)
channel = 0

[State 440, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,4
channel = 1

[State 440, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 2
forceNoFall = !var(20)
attr = C, NA
hitFlag = MA
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 48 < 7, 7, fvar(11) * 48)), 0
getPower = ifElse(!var(13),144,72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 15 + 3 * var(9)
ground.slideTime = 15 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
ground.velocity = ifElse(var(20), -3.66, -6.25), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -6.25)
guard.cornerPush.velOff = 0
air.velocity = ifelse(var(20), -2.66, -3.5), -7.5
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 76), var(36) := -38
palFX.time = 12*var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 440, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0
movetype = I

[State 440, End]
type = Changestate
trigger1 = !AnimTime
value = 11
ctrl = 1

;===========<CROUCHING HEAVY KICK>==========
[StateDef 450]
type = C
physics = C
moveType = A
anim = 450
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 450, Voice]
type = PlaySnd
triggerall = var(40) = 0
trigger1 = AnimElem = 3 && Random < 500
value = 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 450, Voice]
type = PlaySnd
triggerall = var(40) = 1
trigger1 = AnimElem = 3 && Random < 500
value = 4, ifElse(Random < 500, 12, 13)
channel = 0

[State 450, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,5
channel = 1

[State 450, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 1 || var(20))
trigger1 = AnimElem = 3
attr = C, NA
hitFlag = MA
guardFlag = L
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 68 < 7, 7, fvar(11) * 68)), 0
getpower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givepower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animtype = Back
fall.animtype = Back
ground.type = Trip
air.type = Trip
ground.hitTime = 18 + 4 * var(9)
ground.slideTime = 17 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
ground.velocity = -1.5, -6
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.36, -8.52)
guard.cornerPush.velOff = 0
air.velocity = -1.5, -6
air.cornerPush.velOff = 0
yAccel = 0.58
fall = 1
fall.recover = 1
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 96), var(36) := -10
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 450, StateTypeSet: Idle]
type = StateTypeset
trigger1 = AnimElemTime(4) >= 0
moveType = I

[State 450, End]
type = ChangeState
trigger1 = !AnimTime
value = 11
ctrl = 1

;===========<JUMPING LIGHT PUNCH>==========
[StateDef 600]
type = A
physics = N
moveType = A
anim = 600
ctrl = 0
sprPriority = 1
powerAdd = 0

[State 600, Voice]
type = PlaySnd
triggerAll = var(40) = 0
trigger1 = AnimElem = 2 && Random < 200
value= 4, ifElse(Random < 500, 0, 1)
channel = 0

[State 600, Voice]
type = PlaySnd
triggerAll = var(40) = 1
trigger1 = AnimElem = 2 && Random < 200
value= 4, ifElse(Random < 500, 10, 11)
channel = 0

[State 600, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,0
channel = 1

[State 600, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 2
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 0
getPower = 72 * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12 + 2 * var(9)
ground.slideTime = 12 + 2 * var(9)
guard.hitTime = 12
air.hitTime = 120
airguard.ctrltime = 16
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.41, -4.49)
guard.cornerPush.velOff = 0
air.velocity = ifelse(var(20), -2.41, -3), -7.5
air.cornerPush.velOff = 0
airguard.velocity = -3, -1.5
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 0)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 80), var(36) := -38
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 600, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 600, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 600, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;===========<JUMPING MEDIUM PUNCH>==========
[StateDef 610]
type = A
physics  = N
moveType = A
anim = 610
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20)

[State 610, Voice]
type = PlaySnd
triggerAll = var(40) = 0
trigger1 = AnimElem = 2 && Random < 350
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 610, Voice]
type = PlaySnd
triggerAll = var(40) = 1
trigger1 = AnimElem = 2 && Random < 350
value = 4, ifElse(Random < 500, 11, 12)
channel = 0

[State 610, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,1
channel = 1

[State 610, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 2
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 48 < 7, 7, fvar(11) * 48)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12 + 3 * var(9)
ground.slideTime = 12 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -6.25)
guard.cornerPush.velOff = 0
air.velocity = ifelse(var(20), -2.41, -3.5), -7.5
air.cornerPush.velOff = 0
airguard.velocity = -4, -1.5
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 1)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 110), var(36) := -85
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 610, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0
movetype = I

[State 610, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 610, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;===========<NEUTRAL JUMPING HEAVY PUNCH>==========
[StateDef 620]
type = A
physics = N
moveType = A
anim = 620
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20)

[State 620, Voice]
type = PlaySnd
triggerAll = var(40) = 0
trigger1 = AnimElem = 3 && Random < 500
value = 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 620, Voice]
type = PlaySnd
triggerAll = var(40) = 1
trigger1 = AnimElem = 3 && Random < 500
value = 4, ifElse(Random < 500, 12, 13)
channel = 0

[State 620, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 3
value = 1,2
channel = 1

[State 620, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 3
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 68 < 7, 7, fvar(11) * 68)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animtype = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12 + 4 * var(9)
ground.slideTime = 12 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.36, -8.52)
guard.cornerPush.velOff = 0
air.velocity = ifelse(var(20), -2.41, -4), -7.5
air.cornerPush.velOff = 0
airguard.velocity = -5, -1.5
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 90), var(36) := -64
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 620, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 4 && !MoveContact && !MoveReversed
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 68 < 7, 7, fvar(11) * 68)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animtype = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12 + 4 * var(9)
ground.slideTime = 12 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.36, -8.52)
guard.cornerPush.velOff = 0
air.velocity = ifelse(var(20), -2.41, -4), -7.5
air.cornerPush.velOff = 0
airguard.velocity = -5, -1.5
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 2)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 90), var(36) := -32
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 620, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(6) >= 0
moveType = I

[State 620, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 620, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;===========<NEUTRAL JUMPING LIGHT KICK>==========
[StateDef 630]
type = A
physics = N
moveType = A
anim = 630
ctrl = 0
sprPriority = 1
powerAdd = 0

[State 630, Voice]
type = PlaySnd
triggerAll = var(40) = 0
trigger1 = AnimElem = 2 && Random < 200
value = 4, ifElse(Random < 500, 0, 1)
channel = 0

[State 630, Voice]
type = PlaySnd
triggerAll = var(40) = 1
trigger1 = AnimElem = 2 && Random < 200
value = 4, ifElse(Random < 500, 10, 11)
channel = 0

[State 630, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,3
channel = 1

[State 630, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 2
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 28 < 7, 7, fvar(11) * 28)), 0
getPower = 72 * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
guard.pauseTime = ifElse(var(20), 4, 8), ifElse(var(20), 4, 8)
animType = Light
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12 + 2 * var(9)
ground.slideTime = 12 + 2 * var(9)
guard.hitTime = 12
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -2.41, -4.49)
guard.cornerPush.velOff = 0
air.velocity = ifelse(var(20), -2.41, -3), -7.5
air.cornerPush.velOff = 0
airguard.velocity = -3, -1.5
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 3)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8010)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 77), var(36) := -52
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 630, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 630, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 630, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;===========<NEUTRAL JUMPING MEDIUM KICK>==========
[StateDef 640]
type = A
physics = N
moveType = A
anim = 640
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20)

[State 640, Voice]
type = PlaySnd
triggerAll = var(40) = 0
trigger1 = AnimElem = 2 && Random < 350
value = 4, ifElse(Random < 500, 1, 2)
channel = 0

[State 640, Voice]
type = PlaySnd
triggerAll = var(40) = 1
trigger1 = AnimElem = 2 && Random < 350
value = 4, ifElse(Random < 500, 11, 12)
channel = 0

[State 640, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,4
channel = 1

[State 640, Hit]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 2
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 48 < 7, 7, fvar(11) * 48)), 0
getPower = ifElse(!var(13), 144, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
guard.pauseTime = ifElse(var(20), 5, 10), ifElse(var(20), 5, 10)
animType = Medium
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12 + 3 * var(9)
ground.slideTime = 12 + 3 * var(9)
guard.hitTime = 15
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -3.66, -6.25)
guard.cornerPush.velOff = 0
air.velocity = ifelse(var(20), -2.41, -3.5), -7.5
air.cornerPush.velOff = 0
airguard.velocity = -4, -1.5
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 4)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8011)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 78), var(36) := -34
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 640, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(4) >= 0
movetype = I

[State 640, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 640, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;===========<JUMPING HEAVY KICK>==========
[StateDef 650]
type = A
physics = N
moveType = A
anim = 650
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20)

[State 650, Voice]
type = PlaySnd
triggerAll = var(40) = 0
trigger1 = AnimElem = 4 && Random < 500
value = 4, ifElse(Random < 500, 2, 3)
channel = 0

[State 650, Voice]
type = PlaySnd
triggerAll = var(40) = 1
trigger1 = AnimElem = 4 && Random < 500
value = 4, ifElse(Random < 500, 12, 13)
channel = 0

[State 650, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 4
value = 1,5
channel = 1

[State 650, HitDef]
type = HitDef
trigger1 = !var(16) && (var(15) < 2 || var(20))
trigger1 = AnimElem = 4
forceNoFall = !var(20)
attr = A, NA
hitFlag = MAF
guardFlag = HA
priority = 4, Hit
damage = ceil(ifElse(fvar(11) * 68 < 7, 7, fvar(11) * 68)), 0
getPower = ifElse(!var(13), 216, 72) * !var(20), 36 * !var(20)
givePower = 36, 36
pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
guard.pauseTime = ifElse(var(20), 6, 12), ifElse(var(20), 6, 12)
animType = Hard
air.animType = Back
fall.animType = Back
ground.type = Low
air.type = Low
ground.hitTime = 12 + 4 * var(9)
ground.slideTime = 12 + 4 * var(9)
guard.hitTime = 18
air.hitTime = 120
airguard.ctrlTime = 16
ground.velocity = ifElse(var(20), -2.41, -4.49), 0
ground.cornerPush.velOff = 0
guard.velocity = ifElse(var(20), -4.36, -8.52)
guard.cornerPush.velOff = 0
air.velocity = ifelse(var(20), -2.41, -4), -7.5
air.cornerPush.velOff = 0
airguard.velocity = -5, -1.5
airguard.cornerPush.velOff = 0
yAccel = 0.58
fall = 0
fall.recover = 1
fall.recoverTime = 120
hitSound = -1 + 0 * (var(31) := 5)
guardSound = -1 + 0 * (var(32) := 0)
sparkNo = -1 + 0 * (var(33) := 8012)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 75), var(36) := -20
palFX.time = 12 * var(9)
palFX.add = 255, 255, 255
palFX.sinAdd = -255, -255, -255, 48

[State 650, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(5) >= 0
moveType = I

[State 650, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 650, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;===========<THROW ATTEMPT>==========
[StateDef 800]
type = S
physics = S
movetype = A
anim = 800
ctrl = 0
velSet = 0,0
sprPriority = 1
powerAdd = 18 * !var(20)
faceP2 = 1

[State 800, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = (command = "kk")

[State 800, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = (Random < 500)

[State 800, Tech Hit Reset]
type = VarSet
trigger1 = 1
var(19) = 0

[State 800, Tech Hit]
type = VarSet
trigger1 = NumEnemy
trigger1 = EnemyNear, StateType != A
trigger1 = (EnemyNear, StateNo = [0,999]) && (EnemyNear, StateNo != [100,119]) && (EnemyNear, StateNo != [200,799])
var(19) = 7

[State 800, AttackDist]
type = AttackDist
trigger1 = 1
value = 0

[State 800, HitDef: PP Throw]
type = HitDef
trigger1 = AnimElem = 2
trigger1 = !var(38)
attr = S, NT
hitFlag = M-
priority = 1, Miss
getPower = 0,0
givePower = 0,0
sparkNo = -1 +0 * (var(33) := 0)
guard.sparkNo = -1 +0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -50
hitSound = -1 +0 * (var(31) := 800)
guardSound = -1 +0 * (var(32) := 0)
fall = 1
fall.recover = 1
numHits = 0
p1StateNo = ifElse(command = "holdfwd", 805, 820)

[State 800, HitDef: KK Throw]
type = HitDef
trigger1 = AnimElem = 2 && var(10)
trigger1 = !var(38)
attr = S, NT
hitFlag = M-
priority = 1, Miss
getPower = 0,0
givePower = 0,0
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 +0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -50
hitSound = -1 +0 * (var(31) := 800)
guardSound = -1 +0 * (var(32) := 0)
fall = 1
fall.recover = 1
numhits = 0
p1StateNo = ifElse(command = "holdback", 805, 810)

[State 850, Voice (Missed)]
type = PlaySnd
trigger1 = AnimElem = 3
value = 5000,3
channel = 0

[State 850, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,0
channel = 1

[State 800, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(3) >= 0
moveType = I

[State 800, End]
type = ChangeState
trigger1 = !AnimTime
value = 0
ctrl = 1

;===========<THROW SWITCHING SIDES>==========
[StateDef 805]
type = S
moveType = A
physics = S
anim = 805
ctrl = 0
sprPriority = 0

[State 805, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 806

[State 805, TargetFacing]
type = TargetFacing
trigger1 = !Time && NumTarget
value = -1

[State 805, Width]
type = Width
trigger1 = 1
edge = 24,24
ignoreHitPause = 1

[State 805, Turn]
type = Turn
trigger1 = AnimElem = 3

[State 805, Facing]
type = TargetFacing
trigger1 = 1
value = -1

[State 805, Tech Hit]
type = ChangeState
trigger1 = NumTarget && var(19)
trigger1 = (Target, command = "holdfwd" || Target, command = "holdback") && Target, command != "holdup" && Target, command != "holddown"
trigger1 = (Target, command = "b" || Target, command = "c" || Target, command = "y" || Target, command = "z")
value = 890

[State 805, Tech Hit Countdown]
type = VarAdd
trigger1 = var(19) > 0
var(19) = -1

[State 805, TargetBind 1]
type = TargetBind
trigger1 = AnimElemTime(2) < 0 || AnimElemTime(4) >= 0
pos = ceil(35 * const(size.xScale)), 0

[State 805, TargetBind 2]
type = TargetBind
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(4) < 0
pos = ceil(11 * const(size.xScale)), 0

[State 805, SprPriority 1]
type = SprPriority
trigger1 = AnimElemTime(2) < 0 || AnimElemTime(4) >= 0
value = 1

[State 805, SprPriority -1]
type = SprPriority
trigger1 = AnimElemTime(2) >= 0 && AnimElemTime(4)< 0
value = -1

[State 805, End]
type = ChangeState
trigger1 = !NumTarget
value = 0
ctrl = 1

[State 805, End]
type = ChangeState
trigger1 = AnimElemTime(4) >= 0
value = ifElse(var(10), 810, 820)

;===========<THROW SWITCHING SIDES (TARGET)>==========
[StateDef 806]
type = A
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 806, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 806, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 806

[State 806, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 1,1
ignoreHitPause = 1

[State 806, SelfState]
type = SelfState
trigger1 = Time >= 60
value = ifElse(pos y < 0, 5040, 0)
ctrl = 1

;===========<SAILOR SHOOT>==========
[Statedef 810]
type = A
physics = N
moveType = A
anim = 810
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 810, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 810, Tech Hit]
type = ChangeState
trigger1 = NumTarget && var(19)
trigger1 = (Target, command = "holdfwd" || Target, command = "holdback")
trigger1 = (Target, command = "b" || Target, command = "c" || Target, command = "y" || Target, command = "z")
value = 890

[State 810, Throw Escape]
type = VarAdd
trigger1 = var(19) > 0
var(19) = -1

[State 810, Throw]
type = TargetState
trigger1 = !Time && NumTarget
value = 815

[State 810, Vel]
type = velset
trigger1 = animelemtime(6) < 0
x = 0
y = 0

[State 810, width]
type = width
trigger1 = animelemtime(3) >= 0 && animelemtime(5) < 0
edge = 45, 0

[State 810, width]
type = width
trigger1 = animelemtime(5) >= 0 && animelemtime(6) < 0
edge = 75, 0

[State 810, Bind 1]
type = bindtotarget
trigger1 = animelemtime(1) >= 0 && animelemtime(2) < 0
pos = 25, 0, foot

[State 810, Bind 2]
type = bindtotarget
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 32, 50 + floor(0.5 * (target, const(size.head.pos.y) + target, const(size.mid.pos.y)))

[State 810, Bind 3]
type = bindtotarget
trigger1 = animelemtime(3) >= 0 && animelemtime(6) < 0
pos = 43, 50 + floor(0.5 * (target, const(size.head.pos.y) + target, const(size.mid.pos.y)))

[State 810, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && AnimElem = 5
value = floor(ifElse(100 * fvar(11) < 7, -7, -100 * fvar(11)))

[State 810, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && AnimElem = 5
value = 36

[State 810, Power]
type = PowerAdd
trigger1 = NumTarget && AnimElem = 5 && !var(20)
value = 72

[State 810, HitAdd]
type = HitAdd
trigger1 = NumTarget && AnimElem = 5
value = 1

[State 810, HitCount]
type = VarAdd
trigger1 = NumTarget && AnimElem = 5
var(13) = 1

[State 810, Juggle]
type = VarAdd
trigger1 = NumTarget && AnimElem = 5
var(15) = 1
ignoreHitPause = 1

[State 810, Juggle]
type = VarSet
trigger1 = NumTarget && AnimElem = 5
var(16) = 1
ignoreHitPause = 1

[State 810, Throw]
type = TargetState
trigger1 = NumTarget && AnimElem = 6
value = 816

[State 810, throwsnd]
type = playsnd
triggerall = var(40) = 0
trigger1 = animelem = 5
value = 820,0
channel = 0

[State 810, throwsnd]
type = playsnd
triggerall = var(40) = 1
trigger1 = animelem = 5
value = 820,10
channel = 0

[State 810, HitSound]
type = playsnd
trigger1 = animelem = 5
value = 2,5

[State 821, Hit Spark]
type = Helper
trigger1 = animelem = 5
helperType = Normal
stateNo = 8012
ID = 8000
name = "Spark"
posType = P1
pos = ceil(70 * const(size.xscale)), ceil(-48 * const(size.yscale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 810, Vel]
type = velset
trigger1 = animelem = 6
x = -4
y = -6

[State 810, Turn]
type = turn
trigger1 = animelem = 9

[State 810, Type]
type = statetypeset
trigger1 = animelemtime(6) >= 0
statetype = A
physics = N

[State 810, Accel]
type = gravity
trigger1 = animelemtime(6) >= 0

[State 810, End]
type = changestate
trigger1 = animelemtime(6) >= 0 && vel y > 0 && pos y > 0
value = 52

;===========<SAILOR SHOOT (TARGET)>==========
;Being Thrown
[StateDef 815]
type = A
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 815, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 815

[State 815, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

[State 815, Turn]
type = Turn
trigger1 = NumEnemy
trigger1 = Facing = EnemyNear, Facing
ignoreHitPause = 1

;After Throw
[StateDef 816]
type = A
movetype = H
physics = N
velSet = -4,-8
sprPriority = 0

[State 816, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,0
ignoreHitPause = 1

[State 815, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 816

[State 816, VelAdd]
type = VelAdd
Trigger1 = 1
y = 0.6

[State 816, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 5200, 1] ;Recover Near Ground
type = SelfState
triggerAll = Vel Y > 0
triggerAll = Pos Y >= -20
triggerAll = Alive
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_GROUND RECOVER

[State 816, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100

;===========<SAKURA JIME>==========
[StateDef 820]
type = A
physics = S
moveType = A
anim = 820
ctrl = 0
velset = 0,0
sprpriority = 1

[State 820, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 0
ctrl = 1

[State 820, Tech Hit]
type = ChangeState
trigger1 = NumTarget && var(19)
trigger1 = (Target, command = "holdfwd" || Target, command = "holdback")
trigger1 = (Target, command = "b" || Target, command = "c" || Target, command = "y" || Target, command = "z")
value = 890

[State 820, Throw Escape]
type = VarAdd
trigger1 = var(19) > 0
var(19) = -1

[State 820, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 0,0

[State 820, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 825

[State 820, throw]
type = targetfacing
trigger1 = time <= 1
value = -1

[State 820, Anim]
type = changeanim
trigger1 = !animtime && anim = 820
value = 821

[State 820, End]
type = changestate
triggerall = !animtime && anim = 821
trigger1 = time >= (181 + var(14))
trigger2 = hitcount >= 11
trigger3 = numtarget
trigger3 = !(target, alive)
value = 823

[State 820, Anim]
type = changeanim
triggerall = anim = 821 && animelemtime(6) < 0 && var(14) > 0
triggerall = animelemtime(animelemno(0)) > 1
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c" || command = "start"
trigger3 = command = "up" || command = "down" || command = "back" || command = "fwd"
trigger4 = AIlevel && !(time % 3)
value = 821
elem = animelemno(0) + 1

[State 820, throw]
type = targetstate
trigger1 = anim = 821
value = ifelse(animelemtime(5) < 0, 826, ifelse(animelemtime(6) < 6, 827, 826))

[State 820, Pos]
type = posset
trigger1 = anim = 820 && animelemtime(5) >= 0 && pos y >= 0
y = 0

[State 820, Pos]
type = posset
trigger1 = anim = 820 && animelemtime(4) >= 0 && animelemtime(5) < 0 && pos y >= 1
trigger2 = anim = 821 && animelemtime(5) >= 0 && animelemtime(6) < 0 && pos y >= 1
y = 1

[State 820, Pos]
type = posset
trigger1 = anim = 820 && animelemtime(2) >= 0 && animelemtime(3) < 0 && pos y >= 2
y = 2

[State 820, Pos]
type = posset
trigger1 = anim = 821 && animelemtime(1) >= 0 && animelemtime(2) < 0 && pos y >= 7
trigger2 = anim = 821 && animelemtime(3) >= 0 && animelemtime(4) < 0 && pos y >= 7
y = 7

[State 820, Pos]
type = posset
trigger1 = anim = 821 && animelemtime(2) >= 0 && animelemtime(3) < 0 && pos y >= 9
trigger2 = anim = 821 && animelemtime(4) >= 0 && animelemtime(5) < 0 && pos y >= 9
y = 9

[State 820, mashvar]
type = varset
trigger1 = !time
var(14) = 0

[State 820, mashvar]
type = varadd
triggerall = anim = 821
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c" || command = "start"
trigger3 = command = "up" || command = "down" || command = "back" || command = "fwd"
trigger4 = AIlevel && !(time % 3)
var(14) = 4

[State 820, mashvar]
type = varadd
triggerall = anim = 821 && numtarget
trigger1 = target, command = "x" || target, command = "y" || target, command = "z"
trigger2 = target, command = "a" || target, command = "b" || target, command = "c" || target, command = "start"
trigger3 = target, command = "up" || target, command = "down" || target, command = "back" || target, command = "fwd"
var(14) = -4

[State 820, mashvar]
type = varadd
trigger1 = var(14)
var(14) = ifelse(var(14) > 0, -1, ifelse(var(14) < 0, 1, 0))

[State 820, Flash]
type = palfx
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c" || command = "start"
trigger3 = command = "up" || command = "down" || command = "back" || command = "fwd"
trigger4 = AIlevel && !(time % 3)
time = 1
add = 50, 50, 50

[State 820, throwsnd]
type = playsnd
triggerall = var(40) = 0
trigger1 = anim = 821 && animelem = 2
value = 4,2
channel = 0

[State 820, throwsnd]
type = playsnd
triggerall = var(40) = 1
trigger1 = anim = 821 && animelem = 2
value = 4,12
channel = 0

[State 820, HitSound]
type = playsnd
trigger1 = anim = 821 && animelem = 2
value = 2,7

[State 821, Hit Spark]
type = Helper
trigger1 = anim = 821 && animelem = 2
helperType = Normal
stateNo = 8012
ID = 8000
name = "Spark"
posType = P1
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 820, Damage]
type = TargetLifeAdd
trigger1 = anim = 821 && animelem = 2
value = floor(ifElse(14 * fvar(11) < 7, -7, -14 * fvar(11)))

[State 820, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = anim = 821 && animelem = 2
value = 36

[State 820, Power]
type = PowerAdd
trigger1 = anim = 821 && animelem = 2 && !var(20)
value = 72

[State 820, HitAdd]
type = HitAdd
trigger1 = anim = 821 && animelem = 2
value = 1

[State 820, HitCount]
type = VarAdd
trigger1 = anim = 821 && animelem = 2
var(13) = 1

[State 820, Juggle]
type = VarAdd
trigger1 = anim = 821 && animelem = 2
var(15) = 1
ignoreHitPause = 1

[State 820, Juggle]
type = VarSet
trigger1 = anim = 821 && animelem = 2
var(16) = 1
ignoreHitPause = 1

[State 820, Shake]
type = envshake
trigger1 = anim = 821 && animelem = 2
time = 10
freq = 60
ampl = 2

[State 820, width]
type = width
trigger1 = anim = 820 && animelemtime(5) >= 0
edge = 20, 0

[State 820, Bind Others]
type = bindtotarget
trigger1 = numtarget && (anim = 820 && animelemtime(2) >= 0 && animelemtime(3) < 0)
pos = -ceil(1.5 * target, const(size.ground.back)), 10, head

[State 820]
type = bindtotarget
trigger1 = numtarget && ((anim = 820 && animelemtime(3) >= 0) || (anim = 821 && animelemtime(5) >= 0))
pos = -ceil(1 * target, const(size.ground.back)), 10, head

[State 820]
type = bindtotarget
trigger1 = numtarget && ((anim = 821 && animelemtime(5) < 0) || (anim = 821 && animelemtime(6) >= 6))
pos = -ceil(1.5 * target, const(size.ground.back)), 10, head

[State 820, Bind Sakura]
type = bindtotarget
triggerall = numtarget && (anim = 820 && animelemtime(2) >= 0 && animelemtime(3) < 0)
trigger1 = target, name = "Sakura Kasugano" && target, authorname = "Phantom.of.the.Server" || target, authorname = "varo_hades"
trigger2 = target, name = "Pneophen's pissed off Sakura" && target, authorname = "Patrick Ching(Pneophen)"
pos = -11, -75

[State 820]
type = bindtotarget
triggerall = numtarget && ((anim = 820 && animelemtime(3) >= 0) || (anim = 821 && animelemtime(5) >= 0))
trigger1 = target, name = "Sakura Kasugano" && target, authorname = "Phantom.of.the.Server" || target, authorname = "varo_hades"
trigger2 = target, name = "Pneophen's pissed off Sakura" && target, authorname = "Patrick Ching(Pneophen)"
pos = -24, -75

[State 820]
type = bindtotarget
triggerall = numtarget && ((anim = 821 && animelemtime(5) < 0) || (anim = 821 && animelemtime(6) >= 6))
trigger1 = target, name = "Sakura Kasugano" && target, authorname = "Phantom.of.the.Server" || target, authorname = "varo_hades"
trigger2 = target, name = "Pneophen's pissed off Sakura" && target, authorname = "Patrick Ching(Pneophen)"
pos = -38, -76

[State 820, Bind Cammy]
type = bindtotarget
trigger1 = numtarget && (anim = 820 && animelemtime(2) >= 0 && animelemtime(3) < 0)
trigger1 = target, name = "Cammy" && target, authorname = "Phantom.of.the.Server"
pos = -12, -76

[State 820]
type = bindtotarget
trigger1 = numtarget && ((anim = 820 && animelemtime(3) >= 0) || (anim = 821 && animelemtime(5) >= 0))
trigger1 = target, name = "Cammy" && target, authorname = "Phantom.of.the.Server"
pos = -26, -79

[State 820]
type = bindtotarget
trigger1 = numtarget && ((anim = 821 && animelemtime(5) < 0) || (anim = 821 && animelemtime(6) >= 6))
trigger1 = target, name = "Cammy" && target, authorname = "Phantom.of.the.Server"
pos = -36, -75

[State 820, Bind Chun -Li]
type = bindtotarget
triggerall = numtarget && (anim = 820 && animelemtime(2) >= 0 && animelemtime(3) < 0)
trigger1 = target, name = "Chun -Li" && target, authorname = "Phantom.of.the.Server"
trigger2 = target, name = "Chun Li" && target, authorname = "Conversion World - J.Lee"
trigger3 = target, name = "cvschunli" && target, authorname = "Warusaki3"
pos = -2, -78

[State 820]
type = bindtotarget
triggerall = numtarget && ((anim = 820 && animelemtime(3) >= 0) || (anim = 821 && animelemtime(5) >= 0))
trigger1 = target, name = "Chun -Li" && target, authorname = "Phantom.of.the.Server"
trigger2 = target, name = "Chun Li" && target, authorname = "Conversion World - J.Lee"
trigger3 = target, name = "cvschunli" && target, authorname = "Warusaki3"
pos = -21, -77

[State 820]
type = bindtotarget
triggerall = numtarget && ((anim = 821 && animelemtime(5) < 0) || (anim = 821 && animelemtime(6) >= 6))
trigger1 = target, name = "Chun -Li" && target, authorname = "Phantom.of.the.Server"
trigger2 = target, name = "Chun Li" && target, authorname = "Conversion World - J.Lee"
trigger3 = target, name = "cvschunli" && target, authorname = "Warusaki3"
pos = -36, -71

[State 820, Bind Dan]
type = bindtotarget
trigger1 = numtarget && (anim = 820 && animelemtime(2) >= 0 && animelemtime(3) < 0)
trigger1 = target, name = "Dan Hibiki" && target, authorname = "Phantom.of.the.Server"
pos = ceil(-10 * target, const(size.xscale)), ceil(-151 * target, const(size.yscale))

[State 820]
type = bindtotarget
trigger1 = numtarget && ((anim = 820 && animelemtime(3) >= 0) || (anim = 821 && animelemtime(5) >= 0))
trigger1 = target, name = "Dan Hibiki" && target, authorname = "Phantom.of.the.Server"
pos = ceil(-38 * target, const(size.xscale)), ceil(-158 * target, const(size.yscale))

[State 820]
type = bindtotarget
trigger1 = numtarget && ((anim = 821 && animelemtime(5) < 0) || (anim = 821 && animelemtime(6) >= 6))
trigger1 = target, name = "Dan Hibiki" && target, authorname = "Phantom.of.the.Server"
pos = ceil(-59 * target, const(size.xscale)), ceil(-158 * target, const(size.yscale))

[State 820, Bind Geese]
type = bindtotarget
triggerall = numtarget && (anim = 820 && animelemtime(2) >= 0 && animelemtime(3) < 0)
trigger1 = target, name = "Geese Howard" && target, authorname = "Phantom.of.the.Server"
trigger2 = target, name = "cvsgeese" && target, authorname = "Warusaki3"
pos = -7, -93

[State 820]
type = bindtotarget
triggerall = numtarget && ((anim = 820 && animelemtime(3) >= 0) || (anim = 821 && animelemtime(5) >= 0))
trigger1 = target, name = "Geese Howard" && target, authorname = "Phantom.of.the.Server"
trigger2 = target, name = "cvsgeese" && target, authorname = "Warusaki3"
pos = -17, -94

[State 820]
type = bindtotarget
triggerall = numtarget && ((anim = 821 && animelemtime(5) < 0) || (anim = 821 && animelemtime(6) >= 6))
trigger1 = target, name = "Geese Howard" && target, authorname = "Phantom.of.the.Server"
trigger2 = target, name = "cvsgeese" && target, authorname = "Warusaki3"
pos = -37, -89

[State 820, Bind Guy]
type = bindtotarget
trigger1 = numtarget && (anim = 820 && animelemtime(2) >= 0 && animelemtime(3) < 0)
trigger1 = target, name = "Guy" && target, authorname = "Phantom.of.the.Server"
pos = -3, -81

[State 820]
type = bindtotarget
trigger1 = numtarget && ((anim = 820 && animelemtime(3) >= 0) || (anim = 821 && animelemtime(5) >= 0))
trigger1 = target, name = "Guy" && target, authorname = "Phantom.of.the.Server"
pos = -16, -81

[State 820]
type = bindtotarget
trigger1 = numtarget && ((anim = 821 && animelemtime(5) < 0) || (anim = 821 && animelemtime(6) >= 6))
trigger1 = target, name = "Guy" && target, authorname = "Phantom.of.the.Server"
pos = -24, -82

[State 820, Bind Honda]
type = bindtotarget
trigger1 = numtarget && (anim = 820 && animelemtime(2) >= 0 && animelemtime(3) < 0)
trigger1 = target, name = "Edmond Honda" && target, authorname = "Phantom.of.the.Server"
pos = ceil(-6 * target, const(size.xscale)), ceil(-76 * target, const(size.yscale))

[State 820]
type = bindtotarget
trigger1 = numtarget && ((anim = 820 && animelemtime(3) >= 0) || (anim = 821 && animelemtime(5) >= 0))
trigger1 = target, name = "Edmond Honda" && target, authorname = "Phantom.of.the.Server"
pos = ceil(-24 * target, const(size.xscale)), ceil(-83 * target, const(size.yscale))

[State 820]
type = bindtotarget
trigger1 = numtarget && ((anim = 821 && animelemtime(5) < 0) || (anim = 821 && animelemtime(6) >= 6))
trigger1 = target, name = "Edmond Honda" && target, authorname = "Phantom.of.the.Server"
pos = ceil(-42 * target, const(size.xscale)), ceil(-82 * target, const(size.yscale))

[State 820, Bind Karin]
type = bindtotarget
trigger1 = numtarget && (anim = 820 && animelemtime(2) >= 0 && animelemtime(3) < 0)
trigger1 = target, name = "Karin Kanzuki" && target, authorname = "Phantom.of.the.Server"
pos = -11, -67

[State 820]
type = bindtotarget
trigger1 = numtarget && ((anim = 820 && animelemtime(3) >= 0) || (anim = 821 && animelemtime(5) >= 0))
trigger1 = target, name = "Karin Kanzuki" && target, authorname = "Phantom.of.the.Server"
pos = -33, -68

[State 820]
type = bindtotarget
trigger1 = numtarget && ((anim = 821 && animelemtime(5) < 0) || (anim = 821 && animelemtime(6) >= 6))
trigger1 = target, name = "Karin Kanzuki" && target, authorname = "Phantom.of.the.Server"
pos = -46, -66

[State 820, Bind Lei -Lei]
type = bindtotarget
trigger1 = numtarget && (anim = 820 && animelemtime(2) >= 0 && animelemtime(3) < 0)
trigger1 = target, name = "Lei -Lei" && target, authorname = "Phantom.of.the.Server"
pos = -15, -60

[State 820]
type = bindtotarget
trigger1 = numtarget && ((anim = 820 && animelemtime(3) >= 0) || (anim = 821 && animelemtime(5) >= 0))
trigger1 = target, name = "Lei -Lei" && target, authorname = "Phantom.of.the.Server"
pos = -17, -59

[State 820]
type = bindtotarget
trigger1 = numtarget && ((anim = 821 && animelemtime(5) < 0) || (anim = 821 && animelemtime(6) >= 6))
trigger1 = target, name = "Lei -Lei" && target, authorname = "Phantom.of.the.Server"
pos = -40, -50

[State 820, Bind Morrigan]
type = bindtotarget
trigger1 = numtarget && (anim = 820 && animelemtime(2) >= 0 && animelemtime(3) < 0)
trigger1 = target, name = "Morrigan Aensland" && target, authorname = "Phantom.of.the.Server"
pos = -1, -76

[State 820]
type = bindtotarget
trigger1 = numtarget && ((anim = 820 && animelemtime(3) >= 0) || (anim = 821 && animelemtime(5) >= 0))
trigger1 = target, name = "Morrigan Aensland" && target, authorname = "Phantom.of.the.Server"
pos = -11, -71

[State 820]
type = bindtotarget
trigger1 = numtarget && ((anim = 821 && animelemtime(5) < 0) || (anim = 821 && animelemtime(6) >= 6))
trigger1 = target, name = "Morrigan Aensland" && target, authorname = "Phantom.of.the.Server"
pos = -41, -63

[State 820, Bind Nakoruru]
type = bindtotarget
trigger1 = numtarget && (anim = 820 && animelemtime(2) >= 0 && animelemtime(3) < 0)
trigger1 = target, name = "Nakoruru" && target, authorname = "Phantom.of.the.Server"
pos = -5, -69

[State 820]
type = bindtotarget
trigger1 = numtarget && ((anim = 820 && animelemtime(3) >= 0) || (anim = 821 && animelemtime(5) >= 0))
trigger1 = target, name = "Nakoruru" && target, authorname = "Phantom.of.the.Server"
pos = -16, -68

[State 820]
type = bindtotarget
trigger1 = numtarget && ((anim = 821 && animelemtime(5) < 0) || (anim = 821 && animelemtime(6) >= 6))
trigger1 = target, name = "Nakoruru" && target, authorname = "Phantom.of.the.Server"
pos = -26, -64

[State 820, Bind Nash]
type = bindtotarget
trigger1 = numtarget && (anim = 820 && animelemtime(2) >= 0 && animelemtime(3) < 0)
trigger1 = target, name = "Nash" && target, authorname = "Phantom.of.the.Server"
pos = -15, -82

[State 820]
type = bindtotarget
trigger1 = numtarget && ((anim = 820 && animelemtime(3) >= 0) || (anim = 821 && animelemtime(5) >= 0))
trigger1 = target, name = "Nash" && target, authorname = "Phantom.of.the.Server"
pos = -35, -81

[State 820]
type = bindtotarget
trigger1 = numtarget && ((anim = 821 && animelemtime(5) < 0) || (anim = 821 && animelemtime(6) >= 6))
trigger1 = target, name = "Nash" && target, authorname = "Phantom.of.the.Server"
pos = -50, -74

[State 820, Bind Vega]
type = bindtotarget
trigger1 = numtarget && (anim = 820 && animelemtime(2) >= 0 && animelemtime(3) < 0)
trigger1 = target, name = "Vega" && target, authorname = "Phantom.of.the.Server"
pos = -6, -87

[State 820]
type = bindtotarget
trigger1 = numtarget && ((anim = 820 && animelemtime(3) >= 0) || (anim = 821 && animelemtime(5) >= 0))
trigger1 = target, name = "Vega" && target, authorname = "Phantom.of.the.Server"
pos = -24, -90

[State 820]
type = bindtotarget
trigger1 = numtarget && ((anim = 821 && animelemtime(5) < 0) || (anim = 821 && animelemtime(6) >= 6))
trigger1 = target, name = "Vega" && target, authorname = "Phantom.of.the.Server"
pos = -34, -92

[State 820, Bind Yuri]
type = bindtotarget
triggerall = numtarget && (anim = 820 && animelemtime(2) >= 0 && animelemtime(3) < 0)
trigger1 = target, name = "Yuri Sakazaki" && target, authorname = "Phantom.of.the.Server"
trigger2 = target, name = "cvsyuri" && target, authorname = "Warusaki3"
pos = -5, -73

[State 820]
type = bindtotarget
triggerall = numtarget && ((anim = 820 && animelemtime(3) >= 0) || (anim = 821 && animelemtime(5) >= 0))
trigger1 = target, name = "Yuri Sakazaki" && target, authorname = "Phantom.of.the.Server"
trigger2 = target, name = "cvsyuri" && target, authorname = "Warusaki3"
pos = -19, -76

[State 820]
type = bindtotarget
triggerall = numtarget && ((anim = 821 && animelemtime(5) < 0) || (anim = 821 && animelemtime(6) >= 6))
trigger1 = target, name = "Yuri Sakazaki" && target, authorname = "Phantom.of.the.Server"
trigger2 = target, name = "cvsyuri" && target, authorname = "Warusaki3"
pos = -31, -76

[State 820, Bind CvSShotos]
type = bindtotarget
triggerall = numtarget && (anim = 820 && animelemtime(2) >= 0 && animelemtime(3) < 0)
trigger1 = (target, name = "Ryu" || target, name = "Ken Masters" || target, name = "Shin Gouki") && target, authorname = "Phantom.of.the.Server"
trigger2 = (target, name = "cvsryu" || target, name = "cvsken" || target, name = "cvsgouki") && target, authorname = "Warusaki3"
pos = 0, -85

[State 820]
type = bindtotarget
triggerall = numtarget && ((anim = 820 && animelemtime(3) >= 0) || (anim = 821 && animelemtime(5) >= 0))
trigger1 = (target, name = "Ryu" || target, name = "Ken Masters" || target, name = "Shin Gouki") && target, authorname = "Phantom.of.the.Server"
trigger2 = (target, name = "cvsryu" || target, name = "cvsken" || target, name = "cvsgouki") && target, authorname = "Warusaki3"
pos = -20, -86

[State 820]
type = bindtotarget
triggerall = numtarget && ((anim = 821 && animelemtime(5) < 0) || (anim = 821 && animelemtime(6) >= 6))
trigger1 = (target, name = "Ryu" || target, name = "Ken Masters" || target, name = "Shin Gouki") && target, authorname = "Phantom.of.the.Server"
trigger2 = (target, name = "cvsryu" || target, name = "cvsken" || target, name = "cvsgouki") && target, authorname = "Warusaki3"
pos = -36, -83

[State 820, Bind KFM]
type = bindtotarget
trigger1 = numtarget && (anim = 820 && animelemtime(2) >= 0 && animelemtime(3) < 0)
trigger1 = target, name = "Kung Fu Man" && target, authorname = "Elecbyte"
pos = -10, -82

[State 820]
type = bindtotarget
trigger1 = numtarget && ((anim = 820 && animelemtime(3) >= 0) || (anim = 821 && animelemtime(5) >= 0))
trigger1 = target, name = "Kung Fu Man" && target, authorname = "Elecbyte"
pos = -19, -79

[State 820]
type = bindtotarget
trigger1 = numtarget && ((anim = 821 && animelemtime(5) < 0) || (anim = 821 && animelemtime(6) >= 6))
trigger1 = target, name = "Kung Fu Man" && target, authorname = "Elecbyte"
pos = -36, -80

[State 820, Bind SFZ Shotos]
type = bindtotarget
triggerall = numtarget && (anim = 820 && animelemtime(2) >= 0 && animelemtime(3) < 0)
trigger1 = target, name = "Oyaji" && target, authorname = "Mr.Chainsaw & Phantom.of.the.Server"
trigger2 = target, name = "Evil Ryu" && target, authorname = "Reu and Kingtigre"
trigger3 = target, name = "Evil Ken" && target, authorname = "Reu"
trigger4 = target, name = "Evil Dan" && target, authorname = "ilcane87"
pos = -6, -74

[State 820]
type = bindtotarget
triggerall = numtarget && ((anim = 820 && animelemtime(3) >= 0) || (anim = 821 && animelemtime(5) >= 0))
trigger1 = target, name = "Oyaji" && target, authorname = "Mr.Chainsaw & Phantom.of.the.Server"
trigger2 = target, name = "Evil Ryu" && target, authorname = "Reu and Kingtigre"
trigger3 = target, name = "Evil Ken" && target, authorname = "Reu"
trigger4 = target, name = "Evil Dan" && target, authorname = "ilcane87"
pos = -20, -75

[State 820]
type = bindtotarget
triggerall = numtarget && ((anim = 821 && animelemtime(5) < 0) || (anim = 821 && animelemtime(6) >= 6))
trigger1 = target, name = "Oyaji" && target, authorname = "Mr.Chainsaw & Phantom.of.the.Server"
trigger2 = target, name = "Evil Ryu" && target, authorname = "Reu and Kingtigre"
trigger3 = target, name = "Evil Ken" && target, authorname = "Reu"
trigger4 = target, name = "Evil Dan" && target, authorname = "ilcane87"
pos = -32, -75

;===========<SAKURA JIME FINISH>==========
;--- FINISH ---
[Statedef 823]
type = A
movetype = A
physics = S
anim = 822
sprpriority = 1
ctrl = 0

[State 823, Camera]
type = screenbound
trigger1 = animelemtime(4) < 0
value = 1
movecamera = 0,0

[State 823, throw]
type = targetstate
trigger1 = !time
value = 828

[State 823, throw]
type = targetfacing
trigger1 = time <= 1
value = -1

[State 823, mashvar]
type = varset
trigger1 = var(14)
var(14) = 0

[State 823, fixpos]
type = posadd
trigger1 = animelem = 4
x = -3
y = 79

[State 820, Damage]
type = TargetLifeAdd
trigger1 = animelem = 4
value = floor(ifElse(58 * fvar(11) < 7, -7, -58 * fvar(11)))

[State 820, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = animelem = 4
value = 36

[State 820, Power]
type = PowerAdd
trigger1 = animelem = 4 && !var(20)
value = 72

[State 820, HitAdd]
type = HitAdd
trigger1 = animelem = 4
value = 1

[State 820, HitCount]
type = VarAdd
trigger1 = animelem = 4
var(13) = 1

[State 820, Juggle]
type = VarAdd
trigger1 = animelem = 4
var(15) = 1
ignoreHitPause = 1

[State 820, Juggle]
type = VarSet
trigger1 = animelem = 4
var(16) = 1
ignoreHitPause = 1

[State 810, throw]
type = targetstate
trigger1 = animelem = 4
value = 829

[State 823, throwsnd]
type = playsnd
triggerall = var(40) = 0
trigger1 = animelem = 4
value = 4,3
channel = 0

[State 823, throwsnd]
type = playsnd
triggerall = var(40) = 1
trigger1 = animelem = 4
value = 4,13
channel = 0

[State 823, HitSound]
type = playsnd
trigger1 = animelem = 4
value = 2,2

[State 821, Hit Spark]
type = Helper
trigger1 = animelem = 4
helperType = Normal
stateNo = 8012
ID = 8000
name = "Spark"
posType = P1
pos = ceil(-27 * const(size.xscale)), ceil(-66 * const(size.yscale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 823, Shake]
type = envshake
trigger1 = animelem = 4
time = 10
freq = 60
ampl = 3

[State 823, Accel]
type = gravity
trigger1 = animelemtime(5) >= 0

[State 823, End]
type = changestate
trigger1 = animelemtime(5) >= 0 && vel y > 0 && pos y > 0
value = 52

;===========<SAKURA JIME (TARGET)>==========
;--- TARGET ---
[Statedef 825]
type = A
movetype = H
physics = N
velset = 0,0
sprpriority = 0

[State 825, Anim]
type = changeanim2
trigger1 = !time
value = 825

[State 825, Flash]
type = palfx
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c" || command = "start"
trigger3 = command = "up" || command = "down" || command = "back" || command = "fwd"
time = 1
add = 100,0,0

[State 825, freeze]
type = posfreeze
trigger1 = 1
value = 1

[Statedef 826]
type = A
movetype = H
physics = N
velset = 0,0
sprpriority = 0

[State 826, Anim]
type = changeanim2
trigger1 = !time
value = 826

[State 826, Flash]
type = palfx
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c" || command = "start"
trigger3 = command = "up" || command = "down" || command = "back" || command = "fwd"
time = 1
add = 100,0,0

[State 826, freeze]
type = posfreeze
trigger1 = 1
value = 1

[Statedef 827]
type = A
movetype = H
physics = N
velset = 0,0
sprpriority = 0

[State 827, Anim]
type = changeanim2
trigger1 = !time
value = 827

[State 827, Flash]
type = palfx
trigger1 = command = "x" || command = "y" || command = "z"
trigger2 = command = "a" || command = "b" || command = "c" || command = "start"
trigger3 = command = "up" || command = "down" || command = "back" || command = "fwd"
time = 1
add = 100,0,0

[State 827, freeze]
type = posfreeze
trigger1 = 1
value = 1

[Statedef 828]
type = A
movetype = H
physics = N
velset = 0,0

[State 828, Anim]
type = changeanim2
trigger1 = !time
value = 828

[State 828, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1,0

[Statedef 829]
type = A
movetype = H
physics = N
velset = 4,6

[State 829, Camera]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1, 0

[State 829, Accel]
type = gravity
trigger1 = 1

[State 829, hitground]
type = selfstate
trigger1 = vel y > 0 && pos y >= 25
value = 5100

;===========<AIR THROW ATTEMPT>==========
[StateDef 850]
type = A
physics = N
moveType = A
anim = 850
ctrl = 0
sprPriority = 1
powerAdd = 18 * !var(20)

[State 850, Button Detect]
type = VarSet
trigger1 = !Time && !AILevel
var(10) = (command = "kk")

[State 850, Button Detect (AI)]
type = VarSet
trigger1 = !Time && AILevel
var(10) = (Random < 500)

[State 850, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 850

[State 850, Tech Hit Reset]
type = VarSet
trigger1 = 1
var(19) = 0

[State 850, Tech Hit]
type = VarSet
trigger1 = NumEnemy
trigger1 = EnemyNear, StateType = A
trigger1 = (EnemyNear, StateNo = [0,999]) && (EnemyNear, StateNo != [100,119]) && (EnemyNear, StateNo != [200,799])
var(19) = 7

[State 850, AttackDist]
type = AttackDist
trigger1 = 1
value = 0

[State 850, HitDef: KK Throw]
type = HitDef
trigger1 = time = 0;!var(16) && (var(15) < 1 || var(20))
;trigger1 = AnimElem = 1 && var(10)
;trigger1 = !var(38)
attr = A,NT
hitFlag = AF
priority = 1,Miss
getPower = 0,0
givePower = 0,0
sparkNo = -1 + 0 * (var(33) := 0)
guard.sparkNo = -1 + 0 * (var(34) := 8000)
sparkXY = -10 + 0 * (var(35) := 40), var(36) := -50
hitSound = -1 + 0 * (var(31) := 800)
guardSound = -1 + 0 * (var(32) := 0)
fall = 1
fall.recover = 1
numHits = 0
p1StateNo = 870

[State 850, Voice (Missed)]
type = PlaySnd
trigger1 = AnimElem = 3
value = 5000,3
channel = 0

[State 850, Woosh Sound]
type = PlaySnd
trigger1 = AnimElem = 2
value = 1,0
channel = 1

[State 850, StateTypeSet: Idle]
type = StateTypeSet
trigger1 = AnimElemTime(2) >= 0
moveType = I

[State 850, Gravity]
type = Gravity
trigger1 = Time >= 0

[State 850, End]
type = ChangeState
trigger1 = pos y > -vel y
value = 52

;===========<SAILOR FLY>==========
[StateDef 870]
type = A
physics = N
moveType = A
anim = 810
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 870, Lost Target]
type = ChangeState
trigger1 = !Time && !NumTarget
value = 51
ctrl = 1

[State 870, Throw Escape]
type = ChangeState
trigger1 = NumTarget && var(19)
trigger1 = (Target, command = "holdfwd" || Target, command = "holdback")
trigger1 = (Target, command = "b" || Target, command = "c" || Target, command = "y" || Target, command = "z")
value = 892

[State 870, Throw Escape]
type = VarAdd
trigger1 = var(19) > 0
var(19) = -1

[State 870, Turn]
type = Turn
triggerAll = !Time
trigger1 = !AILevel && command = "holdback"
trigger2 = AILevel && BackEdgeDist < FrontEdgeDist

[State 870, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 875

[State 870, TargetFacing]
type = TargetFacing
trigger1 = Time <= 1
value = -1

[State 860, Vel]
type = velset
trigger1 = animelemtime(6) < 0 && pos y >= -60
x = 0
y = 0

[State 860, Pos]
type = posset
trigger1 = animelemtime(6) < 0 && pos y >= -60
y = -60

[State 860, Vel]
type = velmul
trigger1 = animelemtime(6) < 0
x = 0.9

[State 860, Vel]
type = veladd
trigger1 = animelemtime(6) < 0 && pos y < -60
y = ifelse(vel y <= 0, 0.5, 0.25)

[State 860, Bind 1]
type = bindtotarget
trigger1 = animelemtime(1) >= 0 && animelemtime(2) < 0
pos = 25, 0, foot

[State 860, Bind 2]
type = bindtotarget
trigger1 = animelemtime(2) >= 0 && animelemtime(3) < 0
pos = 32, 50 + floor(0.5 * (target, const(size.head.pos.y) + target, const(size.mid.pos.y)))

[State 860, Bind 3]
type = bindtotarget
trigger1 = animelemtime(3) >= 0 && animelemtime(6) < 0
pos = 43, 50 + floor(0.5 * (target, const(size.head.pos.y) + target, const(size.mid.pos.y)))

[State 871, Damage]
type = TargetLifeAdd
trigger1 = NumTarget && animelem = 5
value = floor(ifElse(100 * fvar(11) < 7, -7, -100 * fvar(11)))
kill = 1

[State 871, TargetPowerAdd]
type = TargetPowerAdd
trigger1 = NumTarget && animelem = 5
value = 36

[State 871, Power]
type = PowerAdd
trigger1 = NumTarget && animelem = 5 && !var(20)
value = 72

[State 871, HitAdd]
type = HitAdd
trigger1 = NumTarget && animelem = 5
value = 1

[State 871, HitCount]
type = VarAdd
trigger1 = NumTarget && animelem = 5
var(13) = 1

[State 871, Juggle]
type = VarAdd
trigger1 = NumTarget && animelem = 5
var(15) = 1
ignoreHitPause = 1

[State 871, Juggle]
type = VarSet
trigger1 = NumTarget && animelem = 5
var(16) = 1
ignoreHitPause = 1

[State 860, throw]
type = targetstate
trigger1 = animelem = 6
value = 876

[State 860, throwsnd]
type = playsnd
triggerall = var(40) = 0
trigger1 = animelem = 5
value = 820,0
channel = 0

[State 860, throwsnd]
type = playsnd
triggerall = var(40) = 1
trigger1 = animelem = 5
value = 820,10
channel = 0

[State 860, HitSound]
type = playsnd
trigger1 = animelem = 5
value = 2,5

[State 821, Hit Spark]
type = Helper
trigger1 = animelem = 5
helperType = Normal
stateNo = 8012
ID = 8000
name = "Spark"
posType = P1
pos = ceil(70 * const(size.xscale)), ceil(-48 * const(size.yscale))
ownPal = 1
pauseMoveTime = 65535
superMoveTime = 65535
ignoreHitPause = 1

[State 810, Vel]
type = veladd
trigger1 = animelem = 6
x = -4
y = -6

[State 860, Turn]
type = turn
trigger1 = animelem = 9

[State 860, Type]
type = statetypeset
trigger1 = animelemtime(6) >= 0
statetype = A
physics = N

[State 860, Accel]
type = gravity
trigger1 = animelemtime(6) >= 0

[State 860, End]
type = changestate
trigger1 = animelemtime(6) >= 0 && vel y > 0 && pos y > 0
value = 52

;===========<SAILOR FLY (TARGET)>==========
;In Air
[StateDef 875]
type = A
moveType = H
physics = N
velSet = 0,0
sprPriority = 0

[State 875, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 815

[State 875, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

;Finish
[StateDef 876]
type = A
physics = N
movetype = H
ctrl = 0
velSet = -4,-4
sprPriority = 0

[State 816, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 1
moveCamera = 1,0
ignoreHitPause = 1

[State 815, ChangeAnim2]
type = ChangeAnim2
trigger1 = !Time
value = 816

[State 816, VelAdd]
type = VelAdd
Trigger1 = 1
y = 0.6

[State 816, EnvShake]
type = EnvShake
trigger1 = pos y > -vel y
time = 14
ampl = -4
freq = 120

[State 5200, 1] ;Recover Near Ground
type = SelfState
triggerAll = Vel Y > 0
triggerAll = Pos Y >= -20
triggerAll = Alive
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_GROUND RECOVER

[State 816, End]
type = SelfState
trigger1 = pos y > -vel y
value = 5100

;===========<THROW ESCAPED>==========
[StateDef 890]
type = S
physics = N
movetype = I
anim = 5945
ctrl = 0
velset = 0,0
sprPriority = 1

[State 890, TargetBind]
type = TargetBind
trigger1 = !Time && NumTarget
pos = 0,0

[State 890, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 895

[State 890, TargetFacing]
type = TargetFacing
trigger1 = !Time && NumTarget
value = -1

[State 890, PosAdd]
type = PosAdd
trigger1 = !Time
x = 24

[State 890, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 890, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 890, SprPriority 1]
type = SprPriority
trigger1 = AnimElemTime(6) >= 0
value = 1

[State 890, SprPriority -1]
type = SprPriority
trigger1 = AnimElemTime(2) <= 0
value = -1

[State 890, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 890, VelSet]
type = VelSet
trigger1 = 1
x = -2.425
y = 0

[State 890, Voice]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5000,2
channel = 0

[State 890, Escape Sound]
type = PlaySnd
trigger1 = !Time
value = 5200,1

[State 890, Throw Escape FX]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8000
ID = 8000
name = "Spark"
PosType = P1
pos = 0,-68
facing = -1
ownPal = 1
size.xScale = 1.0
size.yScale = 1.0
pauseMoveTime = 65535
superMoveTime = 65535

[State 890, End]
type = ChangeState
trigger1 = Time >= 27
value = 0
ctrl = 1

;Target Escape
[StateDef 895]
type = S
physics = N
moveType = I
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 895, ChangeAnim]
type = ChangeAnim
trigger1= !Time
value = ifElse(SelfAnimExist(5940), 5940, 130)

[State 895, ChangeAnim]
type = ChangeAnim
trigger1 = !Time && !SelfAnimExist(5945) && SelfAnimExist(5940)
value = 5940

[State 895, ChangeAnim]
type = ChangeAnim
trigger1= !Time && !SelfAnimExist(5945) && !SelfAnimExist(5940) && SelfAnimExist(5910)
value = 5910

[State 895, ChangeAnim]
type = ChangeAnim
trigger1 = Time >= 20 && Anim = 130
value = 140

[State 895, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 895, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0
ignoreHitPause = 1

[State 895, PosSet]
type = PosSet
trigger1 = !Time
y = 0

[State 895, VelSet]
type = VelSet
trigger1 = 1
x = -2.425
y = 0

[State 895, End]
type = SelfState
trigger1 = Time >= 27
value = 0
ctrl = 1

;===========<THROW ESCAPE MIDAIR>==========
[StateDef 892]
type = A
physics = N
moveType = I
anim = 892
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 892, TargetBind]
type = TargetBind
trigger1 = !Time && NumTarget
pos = 48, 0

[State 892, TargetState]
type = TargetState
trigger1 = !Time && NumTarget
value = 897

[State 892, TargetFacing]
type = TargetFacing
trigger1 = !Time && NumTarget
value = -1

[State 892, PosAdd]
type = PosAdd
trigger1 = !Time
x = 24

[State 892, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 892, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 892, PosFreeze]
type = PosFreeze
trigger1 = Time < 18
value = 1

[State 892, VelSet]
type = VelSet
trigger1 = Time = 18
x = -2
y = -4

[State 892, VelAdd]
type = VelAdd
trigger1 = Time > 18
y = 0.5

[State 892, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = 5000,2
channel = 0

[State 892, PlaySnd]
type = PlaySnd
trigger1 = !Time
value = 5200,1

[State 892, Throw Escape FX]
type = Helper
trigger1 = !Time
helperType = Normal
stateNo = 8000
ID = 8000
name = "Spark"
posType = P1
pos = 24,-64
facing = -1
ownPal = 1
size.xScale = 1.0
size.yScale = 1.0
pauseMoveTime = 65535
superMoveTime = 65535

[State 892, ChangeState]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52

;Target Escape
[StateDef 897]
type = A
physics = N
moveType = I
ctrl = 0
velSet = 0,0
sprPriority = 1

[State 897, ChangeAnim]
type = ChangeAnim
trigger1 = !Time
value = 152

[State 897, ChangeAnim]
type = ChangeAnim
trigger1 = Time = 18
value = 142

[State 897, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 897, PlayerPush]
type = PlayerPush
trigger1 = 1
value = 0

[State 897, PosFreeze]
type = PosFreeze
trigger1 = Time < 18
value = 1

[State 897, VelSet]
type = VelSet
trigger1 = Time = 18
x = -2
y = -4

[State 897, VelAdd]
type = VelAdd
trigger1 = Time >= 18
y = 0.5

[State 897, SelfState]
type = SelfState
trigger1 = vel y > 0
trigger1 = pos y > -vel y
value = 52
