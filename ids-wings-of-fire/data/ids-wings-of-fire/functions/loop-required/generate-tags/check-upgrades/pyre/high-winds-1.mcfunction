#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Add CheckTags
execute if entity @s[scores={HighWinds1=1..},tag=HighWinds1] run tag @s add HighWinds1_T1AO
execute if entity @s[scores={HighWinds1=1..},tag=HighWinds2] run tag @s add HighWinds1_T2AO
execute if score @s[scores={HighWinds1=1..},tag=!HighWinds1_T1AO,tag=!HighWinds1_T2AO] xp < t4 xp run tag @s add HighWinds1_NEXp
execute if entity @s[scores={HighWinds1=1..},tag=!HighWinds1,tag=!HighWinds2,tag=!HighWinds1_T1AO,tag=!HighWinds1_T2AO,tag=!HighWinds1_NEXp] if score @s xp >= t4 xp run tag @s add HighWinds1_temp

#Announce Tier Already Owned
execute if entity @s[tag=HighWinds1_T1AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"High Winds I","color":"yellow","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=HighWinds1_T2AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"High Winds II","color":"yellow","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=HighWinds1_NEXp] run tellraw @s ["",{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase HighWinds 1
execute if entity @s[tag=HighWinds1_temp] if score @s xp >= t4 xp run tellraw @s ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"High Winds I","color":"yellow","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=HighWinds1_temp] if score @s xp >= t4 xp run tag @s add HighWinds1
execute if entity @s[tag=HighWinds1_temp,tag=HighWinds1] if score @s xp >= t4 xp run xp add @s -400

#Remove CheckTags
tag @s[tag=HighWinds1_T1AO] remove HighWinds1_T1AO
tag @s[tag=HighWinds1_T2AO] remove HighWinds1_T2AO
tag @s[tag=HighWinds1_NEXp] remove HighWinds1_NEXp
tag @s[tag=HighWinds1_temp] remove HighWinds1_temp
scoreboard players set @s HighWinds1 0