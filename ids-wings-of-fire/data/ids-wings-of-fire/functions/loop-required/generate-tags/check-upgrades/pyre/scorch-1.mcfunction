#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Purchase Scorch 1
execute if entity @e[type=player,tag=Scorch1Purchase,tag=!Scorch1,tag=!Scorch2,tag=!Scorch3] run tellraw @e[type=player,tag=Scorch1Purchase,tag=!Scorch1,tag=!Scorch2,tag=!Scorch3] ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Scorch I","color":"red","bold":true},{"text":"!","color":"gray"}]

#Announce Tier Already Owned
execute if entity @e[type=player,tag=Scorch1Purchase,tag=Scorch1] run tellraw @e[type=player,tag=Scorch1Purchase,tag=Scorch1] ["",{"text":"You already own ","color":"gray"},{"text":"Scorch I","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @e[type=player,tag=Scorch1Purchase,tag=Scorch2] run tellraw @e[type=player,tag=Scorch1Purchase,tag=Scorch2] ["",{"text":"You already own ","color":"gray"},{"text":"Scorch II","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @e[type=player,tag=Scorch1Purchase,tag=Scorch3] run tellraw @e[type=player,tag=Scorch1Purchase,tag=Scorch3] ["",{"text":"You already own ","color":"gray"},{"text":"Scorch III","color":"red","bold":true},{"text":"!","color":"gray"}]

#Tag Scorch1
execute if entity @e[type=player,tag=Scorch1Purchase,tag=!Scorch1] run tag @e[type=player,tag=Scorch1Purchase,tag=!Scorch1] add Scorch1

#Remove Purchase Tag
execute if entity @e[type=player,tag=Scorch1] run tag @e[type=player,tag=Scorch1] remove Scorch1Purchase