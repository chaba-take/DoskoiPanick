# 勝利チームのtitle

execute if score _winTeam winTeam matches 1 run title @a title {"text":"赤チームの勝利！","color":"red"}
execute if score _winTeam winTeam matches 1 run tellraw @a ["",{"text":"[dosPani]","color":"gold"},{"text":"赤チーム","color":"red"},{"text":"の勝利！"}]
execute if score _winTeam winTeam matches 2 run title @a title {"text":"青チームの勝利！","color":"blue"}
execute if score _winTeam winTeam matches 2 run tellraw @a ["",{"text":"[dosPani]","color":"gold"},{"text":"青チーム","color":"blue"},{"text":"の勝利！"}]
execute if score _winTeam winTeam matches 1.. as @a at @a run playsound ui.toast.challenge_complete master @a ~ ~ ~ 0.1