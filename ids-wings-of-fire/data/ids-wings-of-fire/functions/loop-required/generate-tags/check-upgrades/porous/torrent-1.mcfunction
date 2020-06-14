#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Add CheckTags
execute if entity @s[tag=Torrent1] run tag @s add Torrent_T1AO
execute if score @s[tag=!Torrent_T1AO] xp < t3 xp run tag @s add Torrent_NEXp
execute if entity @s[tag=!Torrent1,tag=!Torrent_T1AO,tag=!Torrent_NEXp] xp run tag @s add Torrent_temp

#Announce Tier Already Owned
execute if entity @s[tag=Torrent_T1AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Torrent I","color":"aqua","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Torrent_NEXp] run tellraw @s [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Torrent 1
execute if entity @s[tag=Torrent_temp] run tellraw @s [{"text":"You have successfully purchased ","color":"gray"},{"text":"Torrent I","color":"aqua","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Torrent_temp] run tag @s add Torrent1
execute if entity @s[tag=Torrent_temp,tag=Torrent1] run xp add @s -900

#Remove CheckTags
tag @s[tag=Torrent_T1AO] remove Torrent_T1AO
tag @s[tag=Torrent_NEXp] remove Torrent_NEXp
tag @s[tag=Torrent_temp] remove Torrent_temp
scoreboard players set @s Torrent1 0