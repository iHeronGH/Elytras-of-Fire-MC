#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Purchase High Tide 1
execute if entity @e[type=player,tag=HighTide1Purchase,tag=!HighTide1,tag=!HighTide2,tag=!HighTide3] run tellraw @e[type=player,tag=HighTide1Purchase,tag=!HighTide1,tag=!HighTide2,tag=!HighTide3] ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"High Tide I","color":"aqua","bold":true},{"text":"!","color":"gray"}]

#Announce Tier Already Owned
execute if entity @e[type=player,tag=HighTide1Purchase,tag=HighTide1] run tellraw @e[type=player,tag=HighTide1Purchase,tag=HighTide1] ["",{"text":"You already own ","color":"gray"},{"text":"High Tide I","color":"aqua","bold":true},{"text":"!","color":"gray"}]
execute if entity @e[type=player,tag=HighTide1Purchase,tag=HighTide2] run tellraw @e[type=player,tag=HighTide1Purchase,tag=HighTide2] ["",{"text":"You already own ","color":"gray"},{"text":"High Tide II","color":"aqua","bold":true},{"text":"!","color":"gray"}]
execute if entity @e[type=player,tag=HighTide1Purchase,tag=HighTide3] run tellraw @e[type=player,tag=HighTide1Purchase,tag=HighTide3] ["",{"text":"You already own ","color":"gray"},{"text":"High Tide III","color":"aqua","bold":true},{"text":"!","color":"gray"}]

#Tag HighTide1
execute if entity @e[type=player,tag=HighTide1Purchase,tag=!HighTide1] run tag @e[type=player,tag=HighTide1Purchase,tag=!HighTide1] add HighTide1

#Remove Purchase Tag
execute if entity @e[type=player,tag=HighTide1] run tag @e[type=player,tag=HighTide1] remove HighTide1Purchase