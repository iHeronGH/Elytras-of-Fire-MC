#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Purchase Desolation 1
execute if entity @e[type=player,tag=Desolation1Purchase,tag=!Desolation1] run tellraw @e[type=player,tag=Desolation1Purchase,tag=!Desolation1] ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Desolation I","color":"red","bold":true},{"text":"!","color":"gray"}]

#Announce Tier Already Owned
execute if entity @e[type=player,tag=Desolation1Purchase,tag=Desolation1] run tellraw @p ["",{"text":"You already own ","color":"gray"},{"text":"Desolation I","color":"red","bold":true},{"text":"!","color":"gray"}]

#Tag Desolation1
execute if entity @e[type=player,tag=Desolation1Purchase,tag=!Desolation1] run tag @e[type=player,tag=Desolation1Purchase,tag=!Desolation1] add Desolation1

#Remove Purchase Tag
execute if entity @e[type=player,tag=Desolation1] run tag @e[type=player,tag=Desolation1] remove Desolation1Purchase