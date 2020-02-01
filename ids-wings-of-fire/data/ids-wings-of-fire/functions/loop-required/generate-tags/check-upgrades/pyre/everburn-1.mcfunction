#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Purchase Everburn 1
execute if entity @e[type=player,tag=Everburn1Purchase,tag=!Everburn1,tag=!Everburn2] run tellraw @e[type=player,tag=Everburn1Purchase,tag=!Everburn1,tag=!Everburn2] ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Everburn I","color":"red","bold":true},{"text":"!","color":"gray"}]

#Announce Tier Already Owned
execute if entity @e[type=player,tag=Everburn1Purchase,tag=Everburn1] run tellraw @p ["",{"text":"You already own ","color":"gray"},{"text":"Everburn I","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @e[type=player,tag=Everburn1Purchase,tag=Everburn2] run tellraw @p ["",{"text":"You already own ","color":"gray"},{"text":"Everburn II","color":"red","bold":true},{"text":"!","color":"gray"}]

#Tag Everburn1
execute if entity @e[type=player,tag=Everburn1Purchase,tag=!Everburn1] run tag @e[type=player,tag=Everburn1Purchase,tag=!Everburn1] add Everburn1

#Remove Purchase Tag
execute if entity @e[type=player,tag=Everburn1] run tag @e[type=player,tag=Everburn1] remove Everburn1Purchase