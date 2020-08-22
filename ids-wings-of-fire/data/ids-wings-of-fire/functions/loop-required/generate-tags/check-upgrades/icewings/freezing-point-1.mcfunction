#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Add CheckTags
execute if entity @s[tag=FreezingPoint1] run tag @s add FreezingPoint1_T1AO
execute if entity @s[tag=FreezingPoint2] run tag @s add FreezingPoint1_T2AO
execute if score @s[tag=!FreezingPoint1_T1AO,tag=!FreezingPoint1_T2AO] xp < t4 xp run tag @s add FreezingPoint1_NEXp
execute if entity @s[tag=!FreezingPoint1_T1AO,tag=!FreezingPoint1_T2AO,tag=!FreezingPoint1_NEXp] run tag @s add FreezingPoint1_temp

#Announce Tier Already Owned
execute if entity @s[tag=FreezingPoint1_T1AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Freezing Point I","color":"gray","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=FreezingPoint1_T2AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Freezing Point II","color":"gray","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=FreezingPoint1_NEXp] run tellraw @s [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase FreezingPoint 1
execute if entity @s[tag=FreezingPoint1_temp] run tellraw @s [{"text":"You have successfully purchased ","color":"gray"},{"text":"Freezing Point I","color":"gray","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=FreezingPoint1_temp] run tag @s add FreezingPoint1
execute if entity @s[tag=FreezingPoint1_temp,tag=FreezingPoint1] run xp add @s -400

#Remove CheckTags
tag @s[tag=FreezingPoint1_T1AO] remove FreezingPoint1_T1AO
tag @s[tag=FreezingPoint1_T2AO] remove FreezingPoint1_T2AO
tag @s[tag=FreezingPoint1_NEXp] remove FreezingPoint1_NEXp
tag @s[tag=FreezingPoint1_temp] remove FreezingPoint1_temp
scoreboard players set @s FreezingPoint1 0