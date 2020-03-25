#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Add CheckTags
execute if entity @s[scores={HighTide1=1..},tag=HighTide1] run tag @s add HighTide1_T1AO
execute if entity @s[scores={HighTide1=1..},tag=HighTide2] run tag @s add HighTide1_T2AO
execute if entity @s[scores={HighTide1=1..},tag=HighTide3] run tag @s add HighTide1_T3AO
execute if score @s[scores={HighTide1=1..},tag=!HighTide1_T1AO,tag=!HighTide1_T2AO,tag=!HighTide1_T3AO] xp < t1 xp run tag @s add HighTide1_NEXp
execute if entity @s[scores={HighTide1=1..},tag=!HighTide1,tag=!HighTide2,tag=!HighTide3,tag=!HighTide1_T1AO,tag=!HighTide1_T2AO,tag=!HighTide1_T3AO,tag=!HighTide1_NEXp] if score @s xp >= t1 xp run tag @s add HighTide1_temp

#Announce Tier Already Owned
execute if entity @s[tag=HighTide1_T1AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"High Tide I","color":"aqua","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=HighTide1_T2AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"High Tide II","color":"aqua","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=HighTide1_T3AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"High Tide III","color":"aqua","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=HighTide1_NEXp] run tellraw @s ["",{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase High Tide 1
execute if entity @s[tag=HighTide1_temp] run tellraw @s ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"High Tide I","color":"aqua","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=HighTide1_temp] run tag @s add HighTide1
execute if entity @s[tag=HighTide1_temp,tag=HighTide1] run xp add @s -300

#Remove CheckTags
tag @s[tag=HighTide1_T1AO] remove HighTide1_T1AO
tag @s[tag=HighTide1_T2AO] remove HighTide1_T2AO
tag @s[tag=HighTide1_T3AO] remove HighTide1_T3AO
tag @s[tag=HighTide1_NEXp] remove HighTide1_NEXp
tag @s[tag=HighTide1_temp] remove HighTide1_temp
scoreboard players set @s HighTide1 0