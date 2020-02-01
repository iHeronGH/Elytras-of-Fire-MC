#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Purchase Dehydrate 2
execute if entity @e[type=player,tag=Dehydrate2Purchase,tag=!Dehydrate2] run tellraw @e[type=player,tag=Dehydrate2Purchase,tag=!Dehydrate2] ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Dehydrate II","color":"red","bold":true},{"text":"!","color":"gray"}]

#Announce Tier Already Owned
execute if entity @e[type=player,tag=Dehydrate2Purchase,tag=Dehydrate2] run tellraw @p ["",{"text":"You already own ","color":"gray"},{"text":"Dehydrate II","color":"red","bold":true},{"text":"!","color":"gray"}]

#Tag Dehydrate2
execute if entity @e[type=player,tag=Dehydrate2Purchase,tag=!Dehydrate2] run tag @e[type=player,tag=Dehydrate2Purchase,tag=!Dehydrate2] add Dehydrate2

#Remove Purchase Tag
execute if entity @e[type=player,tag=Dehydrate2] run tag @e[type=player,tag=Dehydrate2] remove Dehydrate2Purchase
execute if entity @e[type=player,tag=Dehydrate2,tag=Dehydrate1] run tag @e[type=player,tag=Dehydrate2,tag=Dehydrate1] remove Dehydrate1