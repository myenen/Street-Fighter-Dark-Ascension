;シャドゥスモウ
;------------------------------------------------------------------------------
[Remap]
x = x      ;Ｘボタンの入力判定を実際に押すボタンに割り当てる。
y = y      ;Ｙボタン　　　　　　　　　〃
z = z      ;Ｚボタン　　　　　　　　　〃
a = a      ;Ａボタン　　　　　　　　　〃
b = b      ;Ｂボタン　　　　　　　　　〃
c = c      ;Ｃボタン　　　　　　　　　〃
s = s      ;スタートボタン　　　　　　〃

;------------------------------------------------------------------------------
[Defaults]
command.time = 15
command.buffer.time = 1

;------------------------------------------------------------------------------
;-| 必殺技 |-------------------------------------------------------------------

[Command]
name = "atama2x"
command = ~F, D, DF, x

[Command]
name = "atama2y"
command = ~F, D, DF, y

[Command]
name = "atama2z"
command = ~F, D, DF, z

[Command]
name = "showera"
command = ~F, D, DF, a

[Command]
name = "showerb"
command = ~F, D, DF, b

[Command]
name = "showerc"
command = ~F, D, DF, c

[Command]
name = "orochi"
command = ~F, D, B, x+y

[Command]
name = "orochi"
command = ~F, D, B, x+z

[Command]
name = "orochi"
command = ~F, D, B, y+z

[Command]
name = "spina"
command = ~F, D, B, a+b

[Command]
name = "spinb"
command = ~F, D, B, b+c

[Command]
name = "spinc"
command = ~F, D, B, a+c

[Command]
name = "yobix"
command = ~F, D, B, x

[Command]
name = "yobiy"
command = ~F, D, B, y

[Command]
name = "yobiz"
command = ~F, D, B, z

[Command]
name = "divea"
command = ~F, D, B, a

[Command]
name = "diveb"
command = ~F, D, B, b

[Command]
name = "divec"
command = ~F, D, B, c

[Command]
name = "combi"
command = ~D, DF, F, z+c

[Command]
name = "neo"
command = ~D, DF, F, x+y

[Command]
name = "neo"
command = ~D, DF, F, x+z

[Command]
name = "neo"
command = ~D, DF, F, y+z

[Command]
name = "canon"
command = ~D, DF, F, a+b

[Command]
name = "canon"
command = ~D, DF, F, a+c

[Command]
name = "canon"
command = ~D, DF, F, b+c

[Command]
name = "sen"
command = ~D, DB, B, a+b

[Command]
name = "sen"
command = ~D, DB, B, a+c

[Command]
name = "sen"
command = ~D, DB, B, b+c

[Command]
name = "atamax"
command = ~D, DF, F, x

[Command]
name = "atamay"
command = ~D, DF, F, y

[Command]
name = "atamaz"
command = ~D, DF, F, z

[Command]
name = "desia"
command = ~D, DF, F, a

[Command]
name = "desib"
command = ~D, DF, F, b

[Command]
name = "desic"
command = ~D, DF, F, c

[Command]
name = "count"
command = ~B, DB, D, z+c

[Command]
name = "rollx"
command = ~B, DB, D, x

[Command]
name = "rolly"
command = ~B, DB, D, y

[Command]
name = "rollz"
command = ~B, DB, D, z

;------------------------------------------------------------------------------
;-| キー２回連続入力 |---------------------------------------------------------

[Command]
name = "FF"       ;必須コマンド名
command = F, F
time = 10

[Command]
name = "BB"       ;必須コマンド名
command = B, B
time = 10

;------------------------------------------------------------------------------
;-| 同時押し |-----------------------------------------------------------------

[Command]
name = "xyz"
command = x+y+z
time = 2

[Command]
name = "abc"
command = a+b+c
time = 2

[Command]
name = "recovery"
command = x+y+z
time = 2

[Command]
name = "xa"
command = x+a
time = 1

[Command]
name = "sio"
command = y+a
time = 1

[Command]
name = "zc"
command = z+c
time = 1

[Command]
name = "yb"
command = y+b
time = 1

;------------------------------------------------------------------------------
;-| 方向キー＋ボタン |---------------------------------------------------------

[Command]
name = "guard"
command = /$D,x+y+z
time = 2

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;------------------------------------------------------------------------------
;-| ボタン単発 |---------------------------------------------------------------

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

;-| 方向キー |-----------------------------------------------------------------

[Command]
name = "holdfwd"   ;必須コマンド名
command = /$F
time = 1

[Command]
name = "holdback"  ;必須コマンド名
command = /$B
time = 1

[Command]
name = "holdup"    ;必須コマンド名
command = /$U
time = 1

[Command]
name = "up"
command = $U
time = 1

[Command]
name = "holddown"  ;必須コマンド名
command = /$D
time = 1

[Command]
name = "down"
command = $D
time = 1

[Command]
name = "holda"
command = /a

[Command]
name = "holdb"
command = /b

[Command]
name = "holdc"
command = /c

[Command]
name = "atauf"
command = /U+F
time = 1

[Command]
name = "ataub"
command = /U+B
time = 1

[Command]
name = "atadf"
command = /D+F
time = 1

[Command]
name = "atadb"
command = /D+B
time = 1

[Command]
name = "atau"
command = /U
time = 1

[Command]
name = "atad"
command = /D
time = 1

[Command]
name = "ataf"
command = /F
time = 1

[Command]
name = "atab"
command = /B
time = 1

;------------------------------------------------------------------------------
[Statedef -1]
;==============================================================================
; 超必殺技
;==============================================================================
;シャドウモード
;------------------------------------------------------------------------------
[State -1, センシュウラク]
type = ChangeState
value = 3300
triggerall = var(30) = 0
triggerall = var(13) = 0
triggerall = power >= 3000
triggerall = command = "sen"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200, 250]) || (stateno = [400, 450])
trigger2 = movecontact
trigger3 = stateno = [1000, 1021]
trigger3 = movecontact
trigger4 = stateno = 1400

;------------------------------------------------------------------------------
[State -1, ドラゴンスレイヤー]
type = ChangeState
value = 3200
triggerall = var(30) = 0
triggerall = var(13) = 0
triggerall = power >= 1000
triggerall = command = "orochi"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200, 250]) || (stateno = [400, 450])
trigger2 = movecontact
trigger3 = stateno = [1000, 1021]
trigger3 = movecontact
trigger4 = stateno = 1400

;------------------------------------------------------------------------------
[State -1, スモウキャノン]
type = ChangeState
value = 3000
triggerall = var(30) = 0
triggerall = var(13) = 0
triggerall = power >= 1000
triggerall = command = "canon"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200, 250]) || (stateno = [400, 450])
trigger2 = movecontact
trigger3 = stateno = [1000, 1021]
trigger3 = movecontact
trigger4 = stateno = 1400

;------------------------------------------------------------------------------
[State -1, ネオスモウクラッシュ]
type = ChangeState
value = 3100
triggerall = var(30) = 0
triggerall = var(13) = 0
triggerall = power >= 1000
triggerall = command = "neo"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200, 250]) || (stateno = [400, 450])
trigger2 = movecontact
trigger3 = stateno = [1000, 1021]
trigger3 = movecontact
trigger4 = stateno = 1400

[State -1, ネオスモウクラッシュ空中]
type = ChangeState
value = 3110
triggerall = var(30) = 0
triggerall = var(13) = 0
triggerall = power >= 1000
triggerall = command = "neo"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600, 650]
trigger2 = movecontact
trigger3 = stateno = 646
trigger4 = (stateno = [1100, 1120]) || (stateno = [1150, 1170]) || (stateno = [1200, 1220]) || stateno = 1250
trigger4 = movecontact

;------------------------------------------------------------------------------
[State -1, ヴァリアブルコンビネーション(スモウキャノン)]
type = ChangeState
value = 4200
triggerall = var(30) = 0
triggerall = var(13) = 0 && var(35)
triggerall = NumHelper(4200) = 0
triggerall = power >= 2000
triggerall = command = "combi"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200, 250]) || (stateno = [400, 450])
trigger2 = movecontact
trigger3 = stateno = [1000, 1021]
trigger3 = movecontact
trigger4 = stateno = 1400

;==============================================================================
;オイルモード
;------------------------------------------------------------------------------
[State -1, フライングオイルスピン]
type = ChangeState
value = 3400
triggerall = var(30) = 1
triggerall = var(13) = 0
triggerall = power >= 1000
triggerall = command = "spina" || command = "spinb" || command = "spinc"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200, 450]
trigger2 = movecontact
trigger3 = stateno = 1500
trigger4 = stateno = 1710
trigger5 = stateno = 1730
trigger6 = stateno = 1810
trigger7 = stateno = 1700
trigger7 = movecontact

;------------------------------------------------------------------------------
[State -1, オイルコースター]
type = ChangeState
value = 3500
triggerall = var(30) = 1
triggerall = var(13) = 0
triggerall = power >= 1000
triggerall = command = "orochi"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200, 450]
trigger2 = movecontact
trigger3 = stateno = 1500
trigger4 = stateno = 1710
trigger5 = stateno = 1730
trigger6 = stateno = 1810
trigger7 = stateno = 1700
trigger7 = movecontact

;------------------------------------------------------------------------------
[State -1, オイルコンビネーションホールド]
type = ChangeState
value = 3600
triggerall = var(30) = 1
triggerall = var(13) = 0
triggerall = power >= 1000
triggerall = command = "canon"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200, 450]
trigger2 = movecontact
trigger3 = stateno = 1500
trigger4 = stateno = 1710
trigger5 = stateno = 1730
trigger6 = stateno = 1810
trigger7 = stateno = 1700
trigger7 = movecontact

;------------------------------------------------------------------------------
[State -1, オイルレイジ]
type = ChangeState
value = 3700
triggerall = var(30) = 1
triggerall = var(13) = 0
triggerall = power >= 1000
triggerall = command = "neo"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200, 450]
trigger2 = movecontact
trigger3 = stateno = 1500
trigger4 = stateno = 1710
trigger5 = stateno = 1730
trigger6 = stateno = 1810
trigger7 = stateno = 1700
trigger7 = movecontact

;------------------------------------------------------------------------------
[State -1, ヴァリアブルコンビネーション(オイルレイジ)]
type = ChangeState
value = 4300
triggerall = var(30) = 1
triggerall = var(13) = 0 && var(35)
triggerall = NumHelper(4200) = 0
triggerall = power >= 2000
triggerall = command = "combi"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200, 450]
trigger2 = movecontact
trigger3 = stateno = 1500
trigger4 = stateno = 1710
trigger5 = stateno = 1730
trigger6 = stateno = 1810
trigger7 = stateno = 1700
trigger7 = movecontact

;==============================================================================
; 必殺技
;==============================================================================
;シャドウモード
;------------------------------------------------------------------------------
[State -1, コールバック]
type = ChangeState
value = 1300
triggerall = var(30) = 0
triggerall = var(13) = 0
triggerall = command = "yobix" || command = "yobiy" || command = "yobiz"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200, 250]) || (stateno = [400, 450])
trigger2 = movecontact

;------------------------------------------------------------------------------
[State -1, スモウクラッシュβ弱]
type = ChangeState
value = 1150
triggerall = var(30) = 0
triggerall = var(13) = 0
triggerall = command = "atama2x"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200, 250]) || (stateno = [400, 450])
trigger2 = movecontact

[State -1, スモウクラッシュβ中]
type = ChangeState
value = 1160
triggerall = var(30) = 0
triggerall = var(13) = 0
triggerall = command = "atama2y"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200, 250]) || (stateno = [400, 450])
trigger2 = movecontact

[State -1, スモウクラッシュβ強]
type = ChangeState
value = 1170
triggerall = var(30) = 0
triggerall = var(13) = 0
triggerall = command = "atama2z"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200, 250]) || (stateno = [400, 450])
trigger2 = movecontact

[State -1, スモウクラッシュα弱]
type = ChangeState
value = 1100
triggerall = var(30) = 0
triggerall = var(13) = 0
triggerall = command = "atamax"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200, 250]) || (stateno = [400, 450])
trigger2 = movecontact

[State -1, スモウクラッシュα中]
type = ChangeState
value = 1110
triggerall = var(30) = 0
triggerall = var(13) = 0
triggerall = command = "atamay"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200, 250]) || (stateno = [400, 450])
trigger2 = movecontact

[State -1, スモウクラッシュα強]
type = ChangeState
value = 1120
triggerall = var(30) = 0
triggerall = var(13) = 0
triggerall = command = "atamaz"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200, 250]) || (stateno = [400, 450])
trigger2 = movecontact

[State -1, スモウクラッシュγ弱]
type = ChangeState
value = 1200
triggerall = var(30) = 0
triggerall = var(13) = 0
triggerall = command = "atamax"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600, 650]
trigger2 = movecontact
trigger3 = stateno = 646

[State -1, スモウクラッシュγ中]
type = ChangeState
value = 1210
triggerall = var(30) = 0
triggerall = var(13) = 0
triggerall = command = "atamay"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600, 650]
trigger2 = movecontact
trigger3 = stateno = 646

[State -1, スモウクラッシュγ強]
type = ChangeState
value = 1220
triggerall = var(30) = 0
triggerall = var(13) = 0
triggerall = command = "atamaz"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600, 650]
trigger2 = movecontact
trigger3 = stateno = 646

[State -1, スモウクラッシュ方向転換]
type = ChangeState
value = 1250
triggerall = var(30) = 0
triggerall = var(13) = 0
triggerall = command = "x" || command = "y" || command = "z"
triggerall = command = "atau" || command = "atad" || command = "ataf" || command = "atab" || command = "atauf" || command = "ataub" || command = "atadf" || command = "atadb"
trigger1 = (stateno = [1100, 1120]) && AnimElemTime(5) >= 5
trigger1 = command != "holddown"
trigger2 = (stateno = [1150, 1170]) && AnimElemTime(4) >= 5
trigger3 = (stateno = [1200, 1220]) && AnimElemTime(4) >= 5

;------------------------------------------------------------------------------
[State -1, スモウフォース]
type = ChangeState
value = 1400
triggerall = var(30) = 0
triggerall = var(13) = 0
triggerall = command = "desia" || command = "desib" || command = "desic"
triggerall = numhelper(1400) = 0 && numhelper(1410) = 0 && numhelper(1420) = 0
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200, 250]) || (stateno = [400, 450])
trigger2 = movecontact

;------------------------------------------------------------------------------
[State -1, インフィニティパーム強]
type = ChangeState
value = 1020
triggerall = var(30) = 0
triggerall = var(13) = 0
triggerall = command = "z"
triggerall = var(9) > 2
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200, 250]) || (stateno = [400, 450])
trigger2 = movecontact

[State -1, インフィニティパーム中]
type = ChangeState
value = 1010
triggerall = var(30) = 0
triggerall = var(13) = 0
triggerall = command = "y"
triggerall = var(9) > 2
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200, 250]) || (stateno = [400, 450])
trigger2 = movecontact

[State -1, インフィニティパーム弱]
type = ChangeState
value = 1000
triggerall = var(30) = 0
triggerall = var(13) = 0
triggerall = command = "x"
triggerall = var(9) > 2
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200, 250]) || (stateno = [400, 450])
trigger2 = movecontact

;==============================================================================
;オイルモード
;------------------------------------------------------------------------------
[State -1, オイルダイブ]
type = ChangeState
value = 1800
triggerall = var(30) = 1
triggerall = var(13) = 0
triggerall = command = "divea" || command = "diveb" || command = "divec"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200, 450]
trigger2 = movecontact

[State -1, オイルダイブ空中]
type = ChangeState
value = 1805
triggerall = var(30) = 1
triggerall = var(13) = 0
triggerall = command = "divea" || command = "diveb" || command = "divec"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600, 650]
trigger2 = movecontact
trigger3 = stateno = 646

[State -1, オイルロケット]
type = ChangeState
value = 1600
triggerall = var(30) = 1
triggerall = var(13) = 0
triggerall = command = "yobix" || command = "yobiy" || command = "yobiz"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200, 450]
trigger2 = movecontact

[State -1, オイルシャワー]
type = ChangeState
value = 1500
triggerall = var(30) = 1
triggerall = var(13) = 0
triggerall = command = "showera" || command = "showerb" || command = "showerc"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200, 450]
trigger2 = movecontact

[State -1, オイルスライディング]
type = ChangeState
value = 1700
triggerall = var(30) = 1
triggerall = var(13) = 0
triggerall = command = "atamax" || command = "atamay" || command = "atamaz"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = [200, 450]
trigger2 = movecontact

;==============================================================================
; 移動関連
;==============================================================================
;Ｓジャンプ
[State -1]
type = ChangeState
value = 40
triggerall = statetype != A
trigger1 = var(13) = 0
trigger1 = movehit && command = "holdup"
trigger1 = stateno = 220 && HitPauseTime = 0
trigger2 = command = "abc" || (command = "up" && var(8) > 0)
trigger2 = movehit && HitPauseTime = 0
trigger2 = stateno = [200, 450]
trigger3 = command = "abc" && ctrl

;------------------------------------------------------------------------------

[State -1, ステップ]
type = ChangeState
value = 100
triggerall = stateno != 100
triggerall = ctrl
triggerall = statetype = S
trigger1 = command = "FF"
trigger2 = command = "xyz" && command != "holdback"

[State -1, バックステッポ]
type = ChangeState
value = 105
triggerall = stateno != 105
triggerall = ctrl
triggerall = statetype = S
trigger1 = command = "BB"
trigger2 = command = "xyz" && command = "holdback"

;==============================================================================
; 特殊技
;==============================================================================

;ヴァリアブルアタック
[State -1]
type = ChangeState
value = 4000
triggerall = statetype != A
triggerall = var(13) = 0 && var(35)
triggerall = command = "zc"
trigger1 = ctrl
trigger2 = stateno = [200, 450]
trigger2 = movecontact

;ヴァリアブルカウンター
[State -1]
type = ChangeState
value = 4100
triggerall = statetype != A
triggerall = var(13) = 0 && var(35)
triggerall = power >= 1000
triggerall = command = "count"
trigger1 = stateno = [151,153]

;アシスト
[State -1]
type = ChangeState
value = 4500
triggerall = statetype != A
triggerall = var(13) = 0 && var(34)
triggerall = command = "yb"
triggerall =  numhelper(4500) = 0
trigger1 = ctrl
trigger2 = stateno = [200, 450]
trigger2 = movecontact


;------------------------------------------------------------------------------

[State -1, アドバシングガード]
type = ChangeState
value = 700
triggerall = command = "xyz"
trigger1 = stateno = [150,155]

;------------------------------------------------------------------------------

[State -1, タワラスルー/ハカンスルー]
type = ChangeState
value = 800 - var(30) * 80
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = p2bodydist X <= 30
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = command = "holdfwd" || command = "holdback"
trigger1 = command = "z"

[State -1, フォースアウト/ハカンリバース]
type = ChangeState
value = 830 - var(30) * 80
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = p2bodydist X <= 30
trigger1 = p2statetype != A
trigger1 = p2movetype != H
trigger1 = command = "holdfwd" || command = "holdback"
trigger1 = command = "c"

[State -1, スモウブリーカー/ハカンスタンプ]
type = ChangeState
value = 880 + var(30) * 60
triggerall = statetype = A
triggerall = ctrl
trigger1 = p2bodydist X = [-10, 40]
trigger1 = p2bodydist Y = [-80, 40]
trigger1 = p2statetype = A
trigger1 = p2movetype != H
trigger1 = command = "holdfwd" || command = "holdback"
trigger1 = command = "z"

;------------------------------------------------------------------------------

[State -1, 塩挑発]
type = ChangeState
value = 195
triggerall = var(30) = 0
triggerall = var(13) = 0
triggerall = numhelper(195) = 0 && numhelper(196) = 0 && numhelper(197) = 0
triggerall = command = "start" || command = "sio"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200, 250]) || (stateno = [400, 450])
trigger2 = movecontact

[State -1, 油挑発]
type = ChangeState
value = 199
triggerall = var(30) = 1
triggerall = var(13) = 0
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;------------------------------------------------------------------------------

[State -1, ガードポジション]
type = ChangeState
value = 500
triggerall = var(30) = 1
triggerall = var(13) = 0
triggerall = command = "guard"
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = stateno = 1800 && anim = 1800

;==============================================================================
; 通常攻撃技
;==============================================================================

[State -1, スモウチョップ]
type = ChangeState
value = 225
triggerall = var(30) = 1
triggerall = command = "z"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200, 210]) || (stateno = [230, 245]) || (stateno = [400, 410]) || (stateno = [430, 440])
trigger2 = movecontact

[State -1, 立ち強パンチ]
type = ChangeState
value = 220
triggerall = command = "z" || command = "xa"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200, 210]) || (stateno = [230, 245]) || (stateno = [400, 410]) || (stateno = [430, 440])
trigger2 = movecontact

[State -1, 立ち弱パンチ]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, 立ち中パンチ]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 400 || stateno = 430
trigger2 = movecontact

[State -1, 立ち弱キック]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

[State -1, シコサイド]
type = ChangeState
value = 245
triggerall = var(30) = 1
triggerall = command = "holdfwd"
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 400 || stateno = 430
trigger2 = movecontact

[State -1, 立ち中キック]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 400 || stateno = 430
trigger2 = movecontact

[State -1, ハウリングキック]
type = ChangeState
value = 255
triggerall = var(30) = 1
triggerall = command = "holdfwd"
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200, 210]) || (stateno = [230, 245]) || (stateno = [400, 410]) || (stateno = [430, 440])
trigger2 = movecontact

[State -1, 立ち強キック]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = [200, 210]) || (stateno = [230, 245]) || (stateno = [400, 410]) || (stateno = [430, 440])
trigger2 = movecontact

;------------------------------------------------------------------------------

[State -1, しゃがみ弱パンチ]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[State -1, しゃがみ中パンチ]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 400 || stateno = 430
trigger2 = movecontact

[State -1, しゃがみ強パンチ]
type = ChangeState
value = 420
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [200, 210]) || (stateno = [230, 245]) || (stateno = [400, 410]) || (stateno = [430, 440])
trigger2 = movecontact

[State -1, しゃがみ弱キック]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

[State -1, しゃがみ中キック]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = stateno = 200 || stateno = 230 || stateno = 400 || stateno = 430
trigger2 = movecontact

[State -1, しゃがみ強キック]
type = ChangeState
value = 450
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = [200, 210]) || (stateno = [230, 245]) || (stateno = [400, 410]) || (stateno = [430, 440])
trigger2 = movecontact

;------------------------------------------------------------------------------
[State -1, スモウプレス]
type = ChangeState
value = 645
triggerall = var(30) = 0
triggerall = command = "holddown"
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, ジャンプ弱パンチ]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl

[State -1, ジャンプ中パンチ]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630
trigger2 = movecontact

[State -1, ジャンプ強パンチ]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600, 610]) || (stateno = [630, 645])
trigger2 = movecontact
trigger3 = stateno = 646

[State -1, ジャンプ弱キック]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = movecontact

[State -1, ジャンプ中キック]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = [600, 610]) || stateno = 630
trigger2 = movecontact

[State -1, ジャンプ強キック]
type = ChangeState
value = 650
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = [600, 645]
trigger2 = movecontact
trigger3 = stateno = 646


