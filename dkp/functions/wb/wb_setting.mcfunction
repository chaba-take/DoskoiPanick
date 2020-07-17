# ワールドボーダー中心位置設定
execute at @e[type=armor_stand,tag=world_center] run worldborder center ~ ~
# ワールドボーダー範囲設定
# TODO: ワールドボーダーの範囲はマップに着手してから決める
worldborder set 60
# ワールドボーダーダメージ範囲設定
worldborder damage buffer 0
# ワールドボーダーダメージ量設定
worldborder damage amount 200000
# ワールドボーダー現在の幅確認、スコアボードに設定
execute store result score _wbRange wbRange run worldborder get
