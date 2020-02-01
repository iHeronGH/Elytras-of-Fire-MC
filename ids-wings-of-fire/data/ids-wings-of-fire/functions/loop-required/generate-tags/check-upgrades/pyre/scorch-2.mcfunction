#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Purchase Scorch 2
execute if entity @e[type=player,tag=Scorch2Purchase,tag=!Scorch2,tag=!Scorch3] run tellraw @e[type=player,tag=Scorch2Purchase,tag=!Scorch2,tag=!Scorch3] ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Scorch II","color":"red","bold":true},{"text":"!","color":"gray"}]

#Announce Tier Already Owned
execute if entity @e[type=player,tag=Scorch2Purchase,tag=Scorch2] run tellraw @e[type=player,tag=Scorch2Purchase,tag=Scorch2] ["",{"text":"You already own ","color":"gray"},{"text":"Scorch II","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @e[type=player,tag=Scorch2Purchase,tag=Scorch3] run tellraw @e[type=player,tag=Scorch2Purchase,tag=Scorch3] ["",{"text":"You already own ","color":"gray"},{"text":"Scorch III","color":"red","bold":true},{"text":"!","color":"gray"}]

#Tag Scorch2
execute if entity @e[type=player,tag=Scorch2Purchase,tag=!Scorch2] run tag @e[type=player,tag=Scorch2Purchase,tag=!Scorch2] add Scorch2

#Remove Purchase Tag
execute if entity @e[type=player,tag=Scorch2] run tag @e[type=player,tag=Scorch2] remove Scorch2Purchase
execute if entity @e[type=player,tag=Scorch2,tag=Scorch1] run tag @e[type=player,tag=Scorch2,tag=Scorch1] remove Scorch1