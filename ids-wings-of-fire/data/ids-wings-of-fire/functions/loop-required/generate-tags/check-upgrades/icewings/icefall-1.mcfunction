#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Add CheckTags
execute if entity @s[tag=Icefall1] run tag @s add Icefall_T1AO
execute if score @s[tag=!Icefall_T1AO] xp < t3 xp run tag @s add Icefall_NEXp
execute if entity @s[tag=!Icefall_T1AO,tag=!Icefall_NEXp] run tag @s add Icefall_temp

#Announce Tier Already Owned
execute if entity @s[tag=Icefall_T1AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Icefall I","color":"aqua","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Icefall_NEXp] run tellraw @s [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Icefall 1
execute if entity @s[tag=Icefall_temp] run tellraw @s [{"text":"You have successfully purchased ","color":"gray"},{"text":"Icefall I","color":"aqua","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Icefall_temp] run tag @s add Icefall1
execute if entity @s[tag=Icefall_temp,tag=Icefall1] run xp add @s -900

#Remove CheckTags
tag @s[tag=Icefall_T1AO] remove Icefall_T1AO
tag @s[tag=Icefall_NEXp] remove Icefall_NEXp
tag @s[tag=Icefall_temp] remove Icefall_temp
scoreboard players set @s Icefall1 0