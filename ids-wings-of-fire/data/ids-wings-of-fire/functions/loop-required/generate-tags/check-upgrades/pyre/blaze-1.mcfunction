#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Purchase Blaze 1
execute if entity @e[type=player,tag=Blaze1Purchase,tag=!Blaze1] run tellraw @e[type=player,tag=Blaze1Purchase,tag=!Blaze1] ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Blaze I","color":"red","bold":true},{"text":"!","color":"gray"}]

#Announce Tier Already Owned
execute if entity @e[type=player,tag=Blaze1Purchase,tag=Blaze1] run tellraw @p ["",{"text":"You already own ","color":"gray"},{"text":"Blaze I","color":"red","bold":true},{"text":"!","color":"gray"}]

#Tag Blaze1
execute if entity @e[type=player,tag=Blaze1Purchase,tag=!Blaze1] run tag @e[type=player,tag=Blaze1Purchase,tag=!Blaze1] add Blaze1

#Remove Purchase Tag
execute if entity @e[type=player,tag=Blaze1] run tag @e[type=player,tag=Blaze1] remove Blaze1Purchase