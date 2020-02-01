#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Purchase Fission 1
execute if entity @e[type=player,tag=Fission1Purchase,tag=!Fission1] run tellraw @e[type=player,tag=Fission1Purchase,tag=!Fission1] ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Fission I","color":"red","bold":true},{"text":"!","color":"gray"}]

#Announce Tier Already Owned
execute if entity @e[type=player,tag=Fission1Purchase,tag=Fission1] run tellraw @p ["",{"text":"You already own ","color":"gray"},{"text":"Fission I","color":"red","bold":true},{"text":"!","color":"gray"}]

#Tag Fission1
execute if entity @e[type=player,tag=Fission1Purchase,tag=!Fission1] run tag @e[type=player,tag=Fission1Purchase,tag=!Fission1] add Fission1

#Remove Purchase Tag
execute if entity @e[type=player,tag=Fission1] run tag @e[type=player,tag=Fission1] remove Fission1Purchase