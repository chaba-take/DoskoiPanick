# ワールドボーダーを10秒かけて-10マス縮める
# TODO: -10マスは適当な数なので実際のフィールドをみて調整する
tellraw @a ["",{"text":"[dosPani]","color":"gold"},{"text":"リング縮小開始！！！"}]
worldborder add -10 10
