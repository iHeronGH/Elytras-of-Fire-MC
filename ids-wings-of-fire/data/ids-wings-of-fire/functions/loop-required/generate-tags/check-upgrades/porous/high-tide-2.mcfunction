#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Add CheckTags
execute if entity @s[scores={HighTide2=1..},tag=HighTide1] run tag @s add HighTide2_T1AO
execute if entity @s[scores={HighTide2=1..},tag=HighTide2] run tag @s add HighTide2_T2AO
execute if entity @s[scores={HighTide2=1..},tag=HighTide3] run tag @s add HighTide2_T3AO
execute if score @s[scores={HighTide2=1..},tag=HighTide2_T1AO,tag=!HighTide2_T2AO,tag=!HighTide2_T3AO] xp < t1 xp run tag @s add HighTide2_NEXp
execute if entity @s[scores={HighTide2=1..},tag=HighTide1,tag=!HighTide2,tag=!HighTide3,tag=HighTide2_T1AO,tag=!HighTide2_T2AO,tag=!HighTide2_T3AO,tag=!HighTide2_NEXp] if score @s xp >= t1 xp run tag @s add HighTide2_temp

#Announce Tier Already Owned
execute if entity @s[tag=HighTide2_T2AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"High Tide II","color":"aqua","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=HighTide2_T3AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"High Tide III","color":"aqua","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=HighTide2_NEXp] run tellraw @s ["",{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
execute if entity @s[scores={HighTide2=1..},tag=!HighTide2_T1AO,tag=!HighTide2_T2AO,tag=!HighTide2_T3AO] run tellraw @s ["",{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase High Tide 2
execute if entity @s[tag=HighTide2_temp] run tellraw @s ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"High Tide II","color":"aqua","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=HighTide2_temp] run tag @s add HighTide2
execute if entity @s[tag=HighTide2_temp,tag=HighTide2] run xp add @s -300
execute if entity @s[tag=HighTide2_temp,tag=HighTide2] run tag @s remove HighTide1

#Remove CheckTags
tag @s[tag=HighTide2_T1AO] remove HighTide2_T1AO
tag @s[tag=HighTide2_T2AO] remove HighTide2_T2AO
tag @s[tag=HighTide2_T3AO] remove HighTide2_T3AO
tag @s[tag=HighTide2_NEXp] remove HighTide2_NEXp
tag @s[tag=HighTide2_temp] remove HighTide2_temp
scoreboard players set @s HighTide2 0