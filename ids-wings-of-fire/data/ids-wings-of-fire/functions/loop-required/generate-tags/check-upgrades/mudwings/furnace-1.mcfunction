#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Add CheckTags
execute if entity @s[tag=Furnace1] run tag @s add Furnace1_T1AO
execute if entity @s[tag=Furnace2] run tag @s add Furnace1_T2AO
execute if entity @s[tag=Furnace3] run tag @s add Furnace1_T3AO
execute if score @s[tag=!Furnace1_T1AO,tag=!Furnace1_T2AO,tag=!Furnace1_T3AO] xp < t1 xp run tag @s add Furnace1_NEXp
execute if entity @s[tag=!Furnace1_T1AO,tag=!Furnace1_T2AO,tag=!Furnace1_T3AO,tag=!Furnace1_NEXp] run tag @s add Furnace1_temp

#Announce Tier Already Owned
execute if entity @s[tag=Furnace1_T1AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Furnace I","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Furnace1_T2AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Furnace II","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Furnace1_T3AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Furnace III","color":"red","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Furnace1_NEXp] run tellraw @s [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Furnace 1
execute if entity @s[tag=Furnace1_temp] run tellraw @s [{"text":"You have successfully purchased ","color":"gray"},{"text":"Furnace I","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Furnace1_temp] run tag @s add Furnace1
execute if entity @s[tag=Furnace1_temp,tag=Furnace1] run xp add @s -300

#Remove CheckTags
tag @s[tag=Furnace1_T1AO] remove Furnace1_T1AO
tag @s[tag=Furnace1_T2AO] remove Furnace1_T2AO
tag @s[tag=Furnace1_T3AO] remove Furnace1_T3AO
tag @s[tag=Furnace1_NEXp] remove Furnace1_NEXp
tag @s[tag=Furnace1_temp] remove Furnace1_temp
scoreboard players set @s Furnace1 0