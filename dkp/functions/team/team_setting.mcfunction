# 各種設定初期化
# チーム設定
# とりあえず二種類
team remove red
team remove blue


# チーム作成
team add red
team add blue
team add spec

# 赤チームの設定
team modify red color red
# 死亡ログ表示
team modify red deathMessageVisibility always
# ffなし
team modify red friendlyFire false
# 同じチームの透明化は見える
team modify red seeFriendlyInvisibles true

# 青チーム設定
team modify blue color blue
# 死亡ログ表示
team modify blue deathMessageVisibility always
# ffなし
team modify blue friendlyFire false
# 同じチームの透明化は見える
team modify blue seeFriendlyInvisibles true

# 観戦チーム設定
# 死亡ログ表示
team modify spec deathMessageVisibility always
# ffなし
team modify spec friendlyFire false
# 同じチームの透明化は見える
team modify spec seeFriendlyInvisibles true
