#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Add CheckTags
execute if entity @s[tag=Everburn1] run tag @s add Everburn1_T1AO
execute if entity @s[tag=Everburn2] run tag @s add Everburn1_T2AO
execute if score @s[tag=!Everburn1_T1AO,tag=!Everburn1_T2AO] xp < t2 xp run tag @s add Everburn1_NEXp
execute if entity @s[tag=!Everburn1_T1AO,tag=!Everburn1_T2AO,tag=!Everburn1_NEXp] run tag @s add Everburn1_temp

#Announce Tier Already Owned
execute if entity @s[tag=Everburn1_T1AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Everburn I","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Everburn1_T2AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Everburn II","color":"red","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Everburn1_NEXp] run tellraw @s [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Everburn 1
execute if entity @s[tag=Everburn1_temp] run tellraw @s [{"text":"You have successfully purchased ","color":"gray"},{"text":"Everburn I","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Everburn1_temp] run tag @s add Everburn1
execute if entity @s[tag=Everburn1_temp,tag=Everburn1] run xp add @s -450

#Remove CheckTags
tag @s[tag=Everburn1_T1AO] remove Everburn1_T1AO
tag @s[tag=Everburn1_T2AO] remove Everburn1_T2AO
tag @s[tag=Everburn1_NEXp] remove Everburn1_NEXp
tag @s[tag=Everburn1_temp] remove Everburn1_temp
scoreboard players set @s Everburn1 0