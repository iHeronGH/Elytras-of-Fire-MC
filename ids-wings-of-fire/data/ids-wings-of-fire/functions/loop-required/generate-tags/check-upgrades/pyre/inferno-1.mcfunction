#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Purchase Inferno 1
execute if entity @e[type=player,tag=Inferno1Purchase,tag=!Inferno1] run tellraw @e[type=player,tag=Inferno1Purchase,tag=!Inferno1] ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Inferno I","color":"red","bold":true},{"text":"!","color":"gray"}]

#Announce Tier Already Owned
execute if entity @e[type=player,tag=Inferno1Purchase,tag=Inferno1] run tellraw @p ["",{"text":"You already own ","color":"gray"},{"text":"Inferno I","color":"red","bold":true},{"text":"!","color":"gray"}]

#Tag Inferno1
execute if entity @e[type=player,tag=Inferno1Purchase,tag=!Inferno1] run tag @e[type=player,tag=Inferno1Purchase,tag=!Inferno1] add Inferno1

#Remove Purchase Tag
execute if entity @e[type=player,tag=Inferno1] run tag @e[type=player,tag=Inferno1] remove Inferno1Purchase