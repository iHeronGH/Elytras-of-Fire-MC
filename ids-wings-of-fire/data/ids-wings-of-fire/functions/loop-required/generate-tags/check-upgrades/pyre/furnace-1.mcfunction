#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Purchase Furnace 1
execute if entity @e[type=player,tag=Furnace1Purchase,tag=!Furnace1,tag=!Furnace2,tag=!Furnace3] run tellraw @e[type=player,tag=Furnace1Purchase,tag=!Furnace1,tag=!Furnace2,tag=!Furnace3] ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Furnace I","color":"red","bold":true},{"text":"!","color":"gray"}]

#Announce Tier Already Owned
execute if entity @e[type=player,tag=Furnace1Purchase,tag=Furnace1] run tellraw @e[type=player,tag=Furnace1Purchase,tag=Furnace1] ["",{"text":"You already own ","color":"gray"},{"text":"Furnace I","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @e[type=player,tag=Furnace1Purchase,tag=Furnace2] run tellraw @e[type=player,tag=Furnace1Purchase,tag=Furnace2] ["",{"text":"You already own ","color":"gray"},{"text":"Furnace II","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @e[type=player,tag=Furnace1Purchase,tag=Furnace3] run tellraw @e[type=player,tag=Furnace1Purchase,tag=Furnace3] ["",{"text":"You already own ","color":"gray"},{"text":"Furnace III","color":"red","bold":true},{"text":"!","color":"gray"}]

#Tag Furnace1
execute if entity @e[type=player,tag=Furnace1Purchase,tag=!Furnace1] run tag @e[type=player,tag=Furnace1Purchase,tag=!Furnace1] add Furnace1

#Remove Purchase Tag
execute if entity @e[type=player,tag=Furnace1] run tag @e[type=player,tag=Furnace1] remove Furnace1Purchase