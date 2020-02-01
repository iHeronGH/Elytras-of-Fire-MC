#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Purchase Potency 1
execute if entity @e[type=player,tag=Potency1Purchase,tag=!Potency1] run tellraw @e[type=player,tag=Potency1Purchase,tag=!Potency1] ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Potency I","color":"white","bold":true},{"text":"!","color":"gray"}]

#Announce Tier Already Owned
execute if entity @e[type=player,tag=Potency1Purchase,tag=Potency1] run tellraw @p ["",{"text":"You already own ","color":"gray"},{"text":"Potency I","color":"white","bold":true},{"text":"!","color":"gray"}]

#Tag Potency1
execute if entity @e[type=player,tag=Potency1Purchase,tag=!Potency1] run tag @e[type=player,tag=Potency1Purchase,tag=!Potency1] add Potency1

#Remove Purchase Tag
execute if entity @e[type=player,tag=Potency1] run tag @e[type=player,tag=Potency1] remove Potency1Purchase