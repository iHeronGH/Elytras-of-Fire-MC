#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Purchase Oxygenate 1
execute if entity @e[type=player,tag=Oxygenate3Purchase,tag=!Oxygenate3] run tellraw @e[type=player,tag=Oxygenate3Purchase,tag=!Oxygenate3] ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Oxygenate III","color":"red","bold":true},{"text":"!","color":"gray"}]

#Announce Tier Already Owned
execute if entity @e[type=player,tag=Oxygenate3Purchase,tag=Oxygenate3] run tellraw @e[type=player,tag=Oxygenate3Purchase,tag=Oxygenate3] ["",{"text":"You already own ","color":"gray"},{"text":"Oxygenate III","color":"red","bold":true},{"text":"!","color":"gray"}]

#Tag Oxygenate1
execute if entity @e[type=player,tag=Oxygenate3Purchase,tag=!Oxygenate3] run tag @e[type=player,tag=Oxygenate3Purchase,tag=!Oxygenate3] add Oxygenate3

#Remove Purchase Tag
execute if entity @e[type=player,tag=Oxygenate3] run tag @e[type=player,tag=Oxygenate3] remove Oxygenate3Purchase
execute if entity @e[type=player,tag=Oxygenate3,tag=Oxygenate2] run tag @e[type=player,tag=Oxygenate3,tag=Oxygenate2] remove Oxygenate2
execute if entity @e[type=player,tag=Oxygenate3,tag=Oxygenate1] run tag @e[type=player,tag=Oxygenate3,tag=Oxygenate1] remove Oxygenate1