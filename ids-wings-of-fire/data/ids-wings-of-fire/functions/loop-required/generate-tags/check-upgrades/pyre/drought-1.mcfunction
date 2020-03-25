#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Add CheckTags
execute if entity @s[scores={Drought1=1..},tag=Drought1] run tag @s add Drought1_T1AO
execute if entity @s[scores={Drought1=1..},tag=Drought2] run tag @s add Drought1_T2AO
execute if score @s[scores={Drought1=1..},tag=!Drought1_T1AO,tag=!Drought1_T2AO] xp < t4 xp run tag @s add Drought1_NEXp
execute if entity @s[scores={Drought1=1..},tag=!Drought1,tag=!Drought2,tag=!Drought1_T1AO,tag=!Drought1_T2AO,tag=!Drought1_NEXp] if score @s xp >= t4 xp run tag @s add Drought1_temp

#Announce Tier Already Owned
execute if entity @s[tag=Drought1_T1AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"Drought I","color":"yellow","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Drought1_T2AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"Drought II","color":"yellow","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Drought1_NEXp] run tellraw @s ["",{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Drought 1
execute if entity @s[tag=Drought1_temp] if score @s xp >= t4 xp run tellraw @s ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Drought I","color":"yellow","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Drought1_temp] if score @s xp >= t4 xp run tag @s add Drought1
execute if entity @s[tag=Drought1_temp,tag=Drought1] if score @s xp >= t4 xp run xp add @s -400

#Remove CheckTags
tag @s[tag=Drought1_T1AO] remove Drought1_T1AO
tag @s[tag=Drought1_T2AO] remove Drought1_T2AO
tag @s[tag=Drought1_NEXp] remove Drought1_NEXp
tag @s[tag=Drought1_temp] remove Drought1_temp
scoreboard players set @s Drought1 0