#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Add CheckTags
execute if entity @s[tag=EternalFlame1] run tag @s add EternalFlame2_T1AO
execute if entity @s[tag=EternalFlame2] run tag @s add EternalFlame2_T2AO
execute if score @s[tag=EternalFlame2_T1AO,tag=!EternalFlame2_T2AO] xp < t2 xp run tag @s add EternalFlame2_NEXp
execute if entity @s[tag=EternalFlame2_T1AO,tag=!EternalFlame2_T2AO,tag=!EternalFlame2_NEXp] run tag @s add EternalFlame2_temp

#Announce Tier Already Owned
execute if entity @s[tag=EternalFlame2_T2AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"EternalFlame II","color":"red","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=EternalFlame2_NEXp] run tellraw @s [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
execute if entity @s[tag=!EternalFlame2_T1AO,tag=!EternalFlame2_T2AO] run tellraw @s [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase EternalFlame 2
execute if entity @s[tag=EternalFlame2_temp] run tellraw @s [{"text":"You have successfully purchased ","color":"gray"},{"text":"EternalFlame II","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=EternalFlame2_temp] run tag @s add EternalFlame2
execute if entity @s[tag=EternalFlame2_temp,tag=EternalFlame2] run xp add @s -450
execute if entity @s[tag=EternalFlame2_temp,tag=EternalFlame2] run tag @s remove EternalFlame1

#Remove CheckTags
tag @s[tag=EternalFlame2_T1AO] remove EternalFlame2_T1AO
tag @s[tag=EternalFlame2_T2AO] remove EternalFlame2_T2AO
tag @s[tag=EternalFlame2_NEXp] remove EternalFlame2_NEXp
tag @s[tag=EternalFlame2_temp] remove EternalFlame2_temp
scoreboard players set @s EternalFlame2 0