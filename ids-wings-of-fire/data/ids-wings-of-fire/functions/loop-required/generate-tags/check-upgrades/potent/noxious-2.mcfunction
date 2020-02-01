#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Purchase Noxious 2
execute if entity @e[type=player,tag=Noxious2Purchase,tag=!Noxious2] run tellraw @e[type=player,tag=Noxious2Purchase,tag=!Noxious2] ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Noxious II","color":"white","bold":true},{"text":"!","color":"gray"}]

#Announce Tier Already Owned
execute if entity @e[type=player,tag=Noxious2Purchase,tag=Noxious2] run tellraw @p ["",{"text":"You already own ","color":"gray"},{"text":"Noxious II","color":"white","bold":true},{"text":"!","color":"gray"}]

#Tag Noxious2
execute if entity @e[type=player,tag=Noxious2Purchase,tag=!Noxious2] run tag @e[type=player,tag=Noxious2Purchase,tag=!Noxious2] add Noxious2

#Remove Purchase Tag
execute if entity @e[type=player,tag=Noxious2] run tag @e[type=player,tag=Noxious2] remove Noxious2Purchase
execute if entity @e[type=player,tag=Noxious2,tag=Noxious1] run tag @e[type=player,tag=Noxious2,tag=Noxious1] remove Noxious1