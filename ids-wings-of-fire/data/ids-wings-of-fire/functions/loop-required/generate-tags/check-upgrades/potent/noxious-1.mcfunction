#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Purchase Noxious 1
execute if entity @e[type=player,tag=Noxious1Purchase,tag=!Noxious1,tag=!Noxious2] run tellraw @e[type=player,tag=Noxious1Purchase,tag=!Noxious1,tag=!Noxious2] ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Noxious I","color":"white","bold":true},{"text":"!","color":"gray"}]

#Announce Tier Already Owned
execute if entity @e[type=player,tag=Noxious1Purchase,tag=Noxious1] run tellraw @p ["",{"text":"You already own ","color":"gray"},{"text":"Noxious I","color":"white","bold":true},{"text":"!","color":"gray"}]
execute if entity @e[type=player,tag=Noxious1Purchase,tag=Noxious2] run tellraw @p ["",{"text":"You already own ","color":"gray"},{"text":"Noxious II","color":"white","bold":true},{"text":"!","color":"gray"}]

#Tag Noxious1
execute if entity @e[type=player,tag=Noxious1Purchase,tag=!Noxious1] run tag @e[type=player,tag=Noxious1Purchase,tag=!Noxious1] add Noxious1

#Remove Purchase Tag
execute if entity @e[type=player,tag=Noxious1] run tag @e[type=player,tag=Noxious1] remove Noxious1Purchase