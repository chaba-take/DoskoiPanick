# 金のちくわ仕様検知
execute if entity @a[scores={damageCnt=1..},nbt={SelectedItem:{id:"minecraft:blaze_rod"}}] as @a[scores={damageCnt=1..},nbt={SelectedItem:{id:"minecraft:blaze_rod"}}] at @a[scores={damageCnt=1..},nbt={SelectedItem:{id:"minecraft:blaze_rod"}}] run clear @a[scores={damageCnt=1..},nbt={SelectedItem:{id:"minecraft:blaze_rod"}}] minecraft:blaze_rod 1
scoreboard players set @a[scores={damageCnt=1..}] damageCnt 0
