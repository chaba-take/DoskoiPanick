# ニワトリ召喚
execute as @e[type=armor_stand,tag=world_center] run summon minecraft:chicken ~ ~ ~ {Health:0.1f,Attributes:[{Name:"generic.max_health",Base:1}],Tags:["summon_chicken"]}
# 散らす
execute if score _wbRange wbRange matches 60.. as @e[type=armor_stand,tag=world_center] run spreadplayers ~ ~ 3 30 false @e[type=minecraft:chicken,tag=summon_chicken]
execute if score _wbRange wbRange matches 50..59 as @e[type=armor_stand,tag=world_center] run spreadplayers ~ ~ 3 25 false @e[type=minecraft:chicken,tag=summon_chicken]
execute if score _wbRange wbRange matches 40..49 as @e[type=armor_stand,tag=world_center] run spreadplayers ~ ~ 3 20 false @e[type=minecraft:chicken,tag=summon_chicken]
execute if score _wbRange wbRange matches 30..39 as @e[type=armor_stand,tag=world_center] run spreadplayers ~ ~ 3 15 false @e[type=minecraft:chicken,tag=summon_chicken]
execute if score _wbRange wbRange matches 20..29 as @e[type=armor_stand,tag=world_center] run spreadplayers ~ ~ 3 10 false @e[type=minecraft:chicken,tag=summon_chicken]

# 出現後のニワトリのタグを消す
execute as @e[type=minecraft:chicken,tag=summon_chicken] at @e[type=minecraft:chicken,tag=summon_chicken] run tag @s remove summon_chicken