#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Add CheckTags
execute if entity @s[scores={Permafrost1=1..},tag=Permafrost1] run tag @s add Permafrost1_T1AO
execute if entity @s[scores={Permafrost1=1..},tag=Permafrost2] run tag @s add Permafrost1_T2AO
execute if score @s[scores={Permafrost1=1..},tag=!Permafrost1_T1AO,tag=!Permafrost1_T2AO] xp < t2 xp run tag @s add Permafrost1_NEXp
execute if entity @s[scores={Permafrost1=1..},tag=!Permafrost1,tag=!Permafrost2,tag=!Permafrost1_T1AO,tag=!Permafrost1_T2AO,tag=!Permafrost1_NEXp] if score @s xp >= t2 xp run tag @s add Permafrost1_temp

#Announce Tier Already Owned
execute if entity @s[tag=Permafrost1_T1AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"Permafrost I","color":"aqua","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Permafrost1_T2AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"Permafrost II","color":"aqua","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Permafrost1_NEXp] run tellraw @s ["",{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Permafrost 1
execute if entity @s[tag=Permafrost1_temp] if score @s xp >= t2 xp run tellraw @s ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Permafrost I","color":"aqua","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Permafrost1_temp] if score @s xp >= t2 xp run tag @s add Permafrost1
execute if entity @s[tag=Permafrost1_temp,tag=Permafrost1] if score @s xp >= t2 xp run xp add @s -450

#Remove CheckTags
tag @s[tag=Permafrost1_T1AO] remove Permafrost1_T1AO
tag @s[tag=Permafrost1_T2AO] remove Permafrost1_T2AO
tag @s[tag=Permafrost1_NEXp] remove Permafrost1_NEXp
tag @s[tag=Permafrost1_temp] remove Permafrost1_temp
scoreboard players set @s Permafrost1 0