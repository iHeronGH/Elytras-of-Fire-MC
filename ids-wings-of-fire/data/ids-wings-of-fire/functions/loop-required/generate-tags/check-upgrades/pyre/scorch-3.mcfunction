#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Purchase Scorch 1
execute if entity @e[type=player,tag=Scorch3Purchase,tag=!Scorch3] run tellraw @e[type=player,tag=Scorch3Purchase,tag=!Scorch3] ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Scorch III","color":"red","bold":true},{"text":"!","color":"gray"}]

#Announce Tier Already Owned
execute if entity @e[type=player,tag=Scorch3Purchase,tag=Scorch3] run tellraw @e[type=player,tag=Scorch3Purchase,tag=Scorch3] ["",{"text":"You already own ","color":"gray"},{"text":"Scorch III","color":"red","bold":true},{"text":"!","color":"gray"}]

#Tag Scorch1
execute if entity @e[type=player,tag=Scorch3Purchase,tag=!Scorch3] run tag @e[type=player,tag=Scorch3Purchase,tag=!Scorch3] add Scorch3

#Remove Purchase Tag
execute if entity @e[type=player,tag=Scorch3] run tag @e[type=player,tag=Scorch3] remove Scorch3Purchase
execute if entity @e[type=player,tag=Scorch3,tag=Scorch2] run tag @e[type=player,tag=Scorch3,tag=Scorch2] remove Scorch2
execute if entity @e[type=player,tag=Scorch3,tag=Scorch1] run tag @e[type=player,tag=Scorch3,tag=Scorch1] remove Scorch1