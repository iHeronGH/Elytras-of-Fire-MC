#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Purchase EternalFlame 2
execute if entity @e[type=player,tag=EternalFlame2Purchase,tag=!EternalFlame2] run tellraw @e[type=player,tag=EternalFlame2Purchase,tag=!EternalFlame2] ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Eternal Flame II","color":"red","bold":true},{"text":"!","color":"gray"}]

#Announce Tier Already Owned
execute if entity @e[type=player,tag=EternalFlame2Purchase,tag=EternalFlame2] run tellraw @p ["",{"text":"You already own ","color":"gray"},{"text":"Eternal Flame II","color":"red","bold":true},{"text":"!","color":"gray"}]

#Tag EternalFlame2
execute if entity @e[type=player,tag=EternalFlame2Purchase,tag=!EternalFlame2] run tag @e[type=player,tag=EternalFlame2Purchase,tag=!EternalFlame2] add EternalFlame2

#Remove Purchase Tag
execute if entity @e[type=player,tag=EternalFlame2] run tag @e[type=player,tag=EternalFlame2] remove EternalFlame2Purchase
execute if entity @e[type=player,tag=EternalFlame2,tag=EternalFlame1] run tag @e[type=player,tag=EternalFlame2,tag=EternalFlame1] remove EternalFlame1