#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Add CheckTags
execute if entity @s[scores={HighWinds2=1..},tag=HighWinds1] run tag @s add HighWinds2_T1AO
execute if entity @s[scores={HighWinds2=1..},tag=HighWinds2] run tag @s add HighWinds2_T2AO
execute if score @s[scores={HighWinds2=1..},tag=HighWinds2_T1AO,tag=!HighWinds2_T2AO] xp < t4 xp run tag @s add HighWinds2_NEXp
execute if entity @s[scores={HighWinds2=1..},tag=HighWinds1,tag=!HighWinds2,tag=HighWinds2_T1AO,tag=!HighWinds2_T2AO,tag=!HighWinds2_NEXp] if score @s xp >= t4 xp run tag @s add HighWinds2_temp

#Announce Tier Already Owned
execute if entity @s[tag=HighWinds2_T2AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"High Winds II","color":"yellow","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=HighWinds2_NEXp] run tellraw @s ["",{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
execute if entity @s[scores={HighWinds2=1..},tag=!HighWinds2_T1AO,tag=!HighWinds2_T2AO] run tellraw @s ["",{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase HighWinds 2
execute if entity @s[tag=HighWinds2_temp] if score @s xp >= t4 xp run tellraw @s ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"High Winds II","color":"yellow","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=HighWinds2_temp] if score @s xp >= t4 xp run tag @s add HighWinds2
execute if entity @s[tag=HighWinds2_temp,tag=HighWinds2] if score @s xp >= t4 xp run xp add @s -400
execute if entity @s[tag=HighWinds2_temp,tag=HighWinds2] if score @s xp >= t4 xp run tag @s remove HighWinds1

#Remove CheckTags
tag @s[tag=HighWinds2_T1AO] remove HighWinds2_T1AO
tag @s[tag=HighWinds2_T2AO] remove HighWinds2_T2AO
tag @s[tag=HighWinds2_NEXp] remove HighWinds2_NEXp
tag @s[tag=HighWinds2_temp] remove HighWinds2_temp
scoreboard players set @s HighWinds2 0