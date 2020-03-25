#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Add CheckTags
execute if entity @s[scores={EternalFlame1=1..},tag=EternalFlame1] run tag @s add EternalFlame1_T1AO
execute if entity @s[scores={EternalFlame1=1..},tag=EternalFlame2] run tag @s add EternalFlame1_T2AO
execute if score @s[scores={EternalFlame1=1..},tag=!EternalFlame1_T1AO,tag=!EternalFlame1_T2AO] xp < t2 xp run tag @s add EternalFlame1_NEXp
execute if entity @s[scores={EternalFlame1=1..},tag=!EternalFlame1,tag=!EternalFlame2,tag=!EternalFlame1_T1AO,tag=!EternalFlame1_T2AO,tag=!EternalFlame1_NEXp] if score @s xp >= t2 xp run tag @s add EternalFlame1_temp

#Announce Tier Already Owned
execute if entity @s[tag=EternalFlame1_T1AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"EternalFlame I","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=EternalFlame1_T2AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"EternalFlame II","color":"red","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=EternalFlame1_NEXp] run tellraw @s ["",{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase EternalFlame 1
execute if entity @s[tag=EternalFlame1_temp] if score @s xp >= t2 xp run tellraw @s ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"EternalFlame I","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=EternalFlame1_temp] if score @s xp >= t2 xp run tag @s add EternalFlame1
execute if entity @s[tag=EternalFlame1_temp,tag=EternalFlame1] if score @s xp >= t2 xp run xp add @s -450

#Remove CheckTags
tag @s[tag=EternalFlame1_T1AO] remove EternalFlame1_T1AO
tag @s[tag=EternalFlame1_T2AO] remove EternalFlame1_T2AO
tag @s[tag=EternalFlame1_NEXp] remove EternalFlame1_NEXp
tag @s[tag=EternalFlame1_temp] remove EternalFlame1_temp
scoreboard players set @s EternalFlame1 0