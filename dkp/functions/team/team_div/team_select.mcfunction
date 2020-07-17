# チーム分け機能検知
# 赤チーム:1or青チーム:2
# TODO:座標は仮置。チーム分け場所の中心をみて入れ直す
# ゲーム開始してない間だけコイツを呼ぶ
# チームの装備
execute as @a at @s[team=!blue] if block ~ ~-1 ~ minecraft:blue_wool run replaceitem entity @s armor.chest leather_chestplate{display:{Name:'{"text":"青チーム"}',color:5857279},Unbreakable:1b}
execute as @a at @s[team=!blue] if block ~ ~-1 ~ minecraft:blue_wool run tellraw @a ["",{"text":"[dosPani]","color":"gold"},{"selector":"@s"},{"text":" さんが "},{"text":"青チーム","color":"blue"},{"text":" に所属しました"}]
execute as @a at @s[team=!blue] if block ~ ~-1 ~ minecraft:blue_wool run gamemode creative @s
execute as @a at @s[team=!blue] if block ~ ~-1 ~ minecraft:blue_wool run team join blue @s

execute as @a at @s[team=!red] if block ~ ~-1 ~ minecraft:red_wool run replaceitem entity @s armor.chest leather_chestplate{display:{Name:'{"text":"赤チーム"}',color:16730704},Unbreakable:1b}
execute as @a at @s[team=!red] if block ~ ~-1 ~ minecraft:red_wool run tellraw @a ["",{"text":"[dosPani]","color":"gold"},{"selector":"@s"},{"text":" さんが "},{"text":"赤チーム","color":"red"},{"text":" に所属しました"}]
execute as @a at @s[team=!red] if block ~ ~-1 ~ minecraft:red_wool run gamemode creative @s
execute as @a at @s[team=!red] if block ~ ~-1 ~ minecraft:red_wool run team join red @s

# 観戦チーム
execute as @a at @s[team=!] if block ~ ~-1 ~ minecraft:light_gray_wool run tellraw @a ["",{"text":"[dosPani]","color":"gold"},{"selector":"@s"},{"text":" さんが観戦モードになりました"}]
execute as @a at @s[team=!] if block ~ ~-1 ~ minecraft:light_gray_wool run replaceitem entity @s armor.chest air
execute as @a at @s[team=!] if block ~ ~-1 ~ minecraft:light_gray_wool run gamemode spectator @s
execute as @a at @s[team=!] if block ~ ~-1 ~ minecraft:light_gray_wool run team leave @s





