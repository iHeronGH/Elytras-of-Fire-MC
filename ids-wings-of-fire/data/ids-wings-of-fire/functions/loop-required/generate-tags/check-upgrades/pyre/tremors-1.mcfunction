#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Add CheckTags
execute if entity @s[scores={Tremors1=1..},tag=Tremors1] run tag @s add Tremors1_T1AO
execute if entity @s[scores={Tremors1=1..},tag=Tremors2] run tag @s add Tremors1_T2AO
execute if score @s[scores={Tremors1=1..},tag=!Tremors1_T1AO,tag=!Tremors1_T2AO] xp < t4 xp run tag @s add Tremors1_NEXp
execute if entity @s[scores={Tremors1=1..},tag=!Tremors1,tag=!Tremors2,tag=!Tremors1_T1AO,tag=!Tremors1_T2AO,tag=!Tremors1_NEXp] if score @s xp >= t4 xp run tag @s add Tremors1_temp

#Announce Tier Already Owned
execute if entity @s[tag=Tremors1_T1AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"Tremors I","color":"gold","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Tremors1_T2AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"Tremors II","color":"gold","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Tremors1_NEXp] run tellraw @s ["",{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Tremors 1
execute if entity @s[tag=Tremors1_temp] if score @s xp >= t4 xp run tellraw @s ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Tremors I","color":"gold","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Tremors1_temp] if score @s xp >= t4 xp run tag @s add Tremors1
execute if entity @s[tag=Tremors1_temp,tag=Tremors1] if score @s xp >= t4 xp run xp add @s -400

#Remove CheckTags
tag @s[tag=Tremors1_T1AO] remove Tremors1_T1AO
tag @s[tag=Tremors1_T2AO] remove Tremors1_T2AO
tag @s[tag=Tremors1_NEXp] remove Tremors1_NEXp
tag @s[tag=Tremors1_temp] remove Tremors1_temp
scoreboard players set @s Tremors1 0