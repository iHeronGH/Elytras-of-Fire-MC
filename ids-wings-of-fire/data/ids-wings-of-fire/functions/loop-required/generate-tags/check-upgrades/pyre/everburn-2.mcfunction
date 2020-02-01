#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Purchase Everburn 2
execute if entity @e[type=player,tag=Everburn2Purchase,tag=!Everburn2] run tellraw @e[type=player,tag=Everburn2Purchase,tag=!Everburn2] ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Everburn II","color":"red","bold":true},{"text":"!","color":"gray"}]

#Announce Tier Already Owned
execute if entity @e[type=player,tag=Everburn2Purchase,tag=Everburn2] run tellraw @p ["",{"text":"You already own ","color":"gray"},{"text":"Everburn II","color":"red","bold":true},{"text":"!","color":"gray"}]

#Tag Everburn2
execute if entity @e[type=player,tag=Everburn2Purchase,tag=!Everburn2] run tag @e[type=player,tag=Everburn2Purchase,tag=!Everburn2] add Everburn2

#Remove Purchase Tag
execute if entity @e[type=player,tag=Everburn2] run tag @e[type=player,tag=Everburn2] remove Everburn2Purchase
execute if entity @e[type=player,tag=Everburn2,tag=Everburn1] run tag @e[type=player,tag=Everburn2,tag=Everburn1] remove Everburn1