#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Purchase Wildfire 1
execute if entity @e[type=player,tag=Wildfire1Purchase,tag=!Wildfire1,tag=!Wildfire2] run tellraw @e[type=player,tag=Wildfire1Purchase,tag=!Wildfire1,tag=!Wildfire2] ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Wildfire I","color":"red","bold":true},{"text":"!","color":"gray"}]

#Announce Tier Already Owned
execute if entity @e[type=player,tag=Wildfire1Purchase,tag=Wildfire1] run tellraw @p ["",{"text":"You already own ","color":"gray"},{"text":"Wildfire I","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @e[type=player,tag=Wildfire1Purchase,tag=Wildfire2] run tellraw @p ["",{"text":"You already own ","color":"gray"},{"text":"Wildfire II","color":"red","bold":true},{"text":"!","color":"gray"}]

#Tag Wildfire1
execute if entity @e[type=player,tag=Wildfire1Purchase,tag=!Wildfire1] run tag @e[type=player,tag=Wildfire1Purchase,tag=!Wildfire1] add Wildfire1

#Remove Purchase Tag
execute if entity @e[type=player,tag=Wildfire1] run tag @e[type=player,tag=Wildfire1] remove Wildfire1Purchase