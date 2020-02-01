#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Purchase Icefall 1
execute if entity @e[type=player,tag=Icefall1Purchase,tag=!Icefall1] run tellraw @e[type=player,tag=Icefall1Purchase,tag=!Icefall1] ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Icefall I","color":"aqua","bold":true},{"text":"!","color":"gray"}]

#Announce Tier Already Owned
execute if entity @e[type=player,tag=Icefall1Purchase,tag=Icefall1] run tellraw @p ["",{"text":"You already own ","color":"gray"},{"text":"Icefall I","color":"aqua","bold":true},{"text":"!","color":"gray"}]

#Tag Icefall1
execute if entity @e[type=player,tag=Icefall1Purchase,tag=!Icefall1] run tag @e[type=player,tag=Icefall1Purchase,tag=!Icefall1] add Icefall1

#Remove Purchase Tag
execute if entity @e[type=player,tag=Icefall1] run tag @e[type=player,tag=Icefall1] remove Icefall1Purchase