#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Add CheckTags
execute if entity @s[tag=Waterlogged1] run tag @s add Waterlogged1_T1AO
execute if entity @s[tag=Waterlogged2] run tag @s add Waterlogged1_T2AO
execute if score @s[tag=!Waterlogged1_T1AO,tag=!Waterlogged1_T2AO] xp < t2 xp run tag @s add Waterlogged1_NEXp
execute if entity @s[tag=!Waterlogged1,tag=!Waterlogged2,tag=!Waterlogged1_T1AO,tag=!Waterlogged1_T2AO,tag=!Waterlogged1_NEXp] run tag @s add Waterlogged1_temp

#Announce Tier Already Owned
execute if entity @s[tag=Waterlogged1_T1AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Waterlogged I","color":"aqua","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Waterlogged1_T2AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Waterlogged II","color":"aqua","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Waterlogged1_NEXp] run tellraw @s [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Waterlogged 1
execute if entity @s[tag=Waterlogged1_temp] run tellraw @s [{"text":"You have successfully purchased ","color":"gray"},{"text":"Waterlogged I","color":"aqua","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Waterlogged1_temp] run tag @s add Waterlogged1
execute if entity @s[tag=Waterlogged1_temp,tag=Waterlogged1] run xp add @s -450

#Remove CheckTags
tag @s[tag=Waterlogged1_T1AO] remove Waterlogged1_T1AO
tag @s[tag=Waterlogged1_T2AO] remove Waterlogged1_T2AO
tag @s[tag=Waterlogged1_NEXp] remove Waterlogged1_NEXp
tag @s[tag=Waterlogged1_temp] remove Waterlogged1_temp
scoreboard players set @s Waterlogged1 0