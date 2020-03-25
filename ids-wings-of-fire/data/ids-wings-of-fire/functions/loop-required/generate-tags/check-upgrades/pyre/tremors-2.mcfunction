#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Add CheckTags
execute if entity @s[scores={Tremors2=1..},tag=Tremors1] run tag @s add Tremors2_T1AO
execute if entity @s[scores={Tremors2=1..},tag=Tremors2] run tag @s add Tremors2_T2AO
execute if score @s[scores={Tremors2=1..},tag=Tremors2_T1AO,tag=!Tremors2_T2AO] xp < t4 xp run tag @s add Tremors2_NEXp
execute if entity @s[scores={Tremors2=1..},tag=Tremors1,tag=!Tremors2,tag=Tremors2_T1AO,tag=!Tremors2_T2AO,tag=!Tremors2_NEXp] if score @s xp >= t4 xp run tag @s add Tremors2_temp

#Announce Tier Already Owned
execute if entity @s[tag=Tremors2_T2AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"Tremors II","color":"gold","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Tremors2_NEXp] run tellraw @s ["",{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
execute if entity @s[scores={Tremors2=1..},tag=!Tremors2_T1AO,tag=!Tremors2_T2AO] run tellraw @s ["",{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Tremors 2
execute if entity @s[tag=Tremors2_temp] if score @s xp >= t4 xp run tellraw @s ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Tremors II","color":"gold","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Tremors2_temp] if score @s xp >= t4 xp run tag @s add Tremors2
execute if entity @s[tag=Tremors2_temp,tag=Tremors2] if score @s xp >= t4 xp run xp add @s -400
execute if entity @s[tag=Tremors2_temp,tag=Tremors2] if score @s xp >= t4 xp run tag @s remove Tremors1

#Remove CheckTags
tag @s[tag=Tremors2_T1AO] remove Tremors2_T1AO
tag @s[tag=Tremors2_T2AO] remove Tremors2_T2AO
tag @s[tag=Tremors2_NEXp] remove Tremors2_NEXp
tag @s[tag=Tremors2_temp] remove Tremors2_temp
scoreboard players set @s Tremors2 0