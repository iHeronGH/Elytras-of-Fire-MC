#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Purchase Waterlogged 2
execute if entity @e[type=player,tag=Waterlogged2Purchase,tag=!Waterlogged2] run tellraw @e[type=player,tag=Waterlogged2Purchase,tag=!Waterlogged2] ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Waterlogged II","color":"aqua","bold":true},{"text":"!","color":"gray"}]

#Announce Tier Already Owned
execute if entity @e[type=player,tag=Waterlogged2Purchase,tag=Waterlogged2] run tellraw @p ["",{"text":"You already own ","color":"gray"},{"text":"Waterlogged II","color":"aqua","bold":true},{"text":"!","color":"gray"}]

#Tag Waterlogged2
execute if entity @e[type=player,tag=Waterlogged2Purchase,tag=!Waterlogged2] run tag @e[type=player,tag=Waterlogged2Purchase,tag=!Waterlogged2] add Waterlogged2

#Remove Purchase Tag
execute if entity @e[type=player,tag=Waterlogged2] run tag @e[type=player,tag=Waterlogged2] remove Waterlogged2Purchase
execute if entity @e[type=player,tag=Waterlogged2,tag=Waterlogged1] run tag @e[type=player,tag=Waterlogged2,tag=Waterlogged1] remove Waterlogged1