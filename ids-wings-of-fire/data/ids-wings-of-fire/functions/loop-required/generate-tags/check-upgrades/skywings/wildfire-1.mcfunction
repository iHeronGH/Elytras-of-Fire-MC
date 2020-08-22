#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Add CheckTags
execute if entity @s[tag=Wildfire1] run tag @s add Wildfire1_T1AO
execute if entity @s[tag=Wildfire2] run tag @s add Wildfire1_T2AO
execute if score @s[tag=!Wildfire1_T1AO,tag=!Wildfire1_T2AO] xp < t2 xp run tag @s add Wildfire1_NEXp
execute if entity @s[tag=!Wildfire1_T1AO,tag=!Wildfire1_T2AO,tag=!Wildfire1_NEXp] run tag @s add Wildfire1_temp

#Announce Tier Already Owned
execute if entity @s[tag=Wildfire1_T1AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Wildfire I","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Wildfire1_T2AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Wildfire II","color":"red","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Wildfire1_NEXp] run tellraw @s [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Wildfire 1
execute if entity @s[tag=Wildfire1_temp] run tellraw @s [{"text":"You have successfully purchased ","color":"gray"},{"text":"Wildfire I","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Wildfire1_temp] run tag @s add Wildfire1
execute if entity @s[tag=Wildfire1_temp,tag=Wildfire1] run xp add @s -450

#Remove CheckTags
tag @s[tag=Wildfire1_T1AO] remove Wildfire1_T1AO
tag @s[tag=Wildfire1_T2AO] remove Wildfire1_T2AO
tag @s[tag=Wildfire1_NEXp] remove Wildfire1_NEXp
tag @s[tag=Wildfire1_temp] remove Wildfire1_temp
scoreboard players set @s Wildfire1 0