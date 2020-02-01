#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Purchase Torrent 1
execute if entity @e[type=player,tag=Torrent1Purchase,tag=!Torrent1] run tellraw @e[type=player,tag=Torrent1Purchase,tag=!Torrent1] ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Torrent I","color":"aqua","bold":true},{"text":"!","color":"gray"}]

#Announce Tier Already Owned
execute if entity @e[type=player,tag=Torrent1Purchase,tag=Torrent1] run tellraw @p ["",{"text":"You already own ","color":"gray"},{"text":"Torrent I","color":"aqua","bold":true},{"text":"!","color":"gray"}]

#Tag Torrent1
execute if entity @e[type=player,tag=Torrent1Purchase,tag=!Torrent1] run tag @e[type=player,tag=Torrent1Purchase,tag=!Torrent1] add Torrent1

#Remove Purchase Tag
execute if entity @e[type=player,tag=Torrent1] run tag @e[type=player,tag=Torrent1] remove Torrent1Purchase