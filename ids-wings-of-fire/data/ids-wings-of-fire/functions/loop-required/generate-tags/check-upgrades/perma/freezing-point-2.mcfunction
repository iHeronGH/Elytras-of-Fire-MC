#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Add CheckTags
execute if entity @s[scores={FreezingPoint2=1..},tag=FreezingPoint1] run tag @s add FreezingPoint2_T1AO
execute if entity @s[scores={FreezingPoint2=1..},tag=FreezingPoint2] run tag @s add FreezingPoint2_T2AO
execute if score @s[scores={FreezingPoint2=1..},tag=FreezingPoint2_T1AO,tag=!FreezingPoint2_T2AO] xp < t4 xp run tag @s add FreezingPoint2_NEXp
execute if entity @s[scores={FreezingPoint2=1..},tag=FreezingPoint1,tag=!FreezingPoint2,tag=FreezingPoint2_T1AO,tag=!FreezingPoint2_T2AO,tag=!FreezingPoint2_NEXp] if score @s xp >= t4 xp run tag @s add FreezingPoint2_temp

#Announce Tier Already Owned
execute if entity @s[tag=FreezingPoint2_T2AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"Freezing Point II","color":"gray","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=FreezingPoint2_NEXp] run tellraw @s ["",{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
execute if entity @s[scores={FreezingPoint2=1..},tag=!FreezingPoint2_T1AO,tag=!FreezingPoint2_T2AO] run tellraw @s ["",{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase FreezingPoint 2
execute if entity @s[tag=FreezingPoint2_temp] if score @s xp >= t4 xp run tellraw @s ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Freezing Point II","color":"gray","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=FreezingPoint2_temp] if score @s xp >= t4 xp run tag @s add FreezingPoint2
execute if entity @s[tag=FreezingPoint2_temp,tag=FreezingPoint2] if score @s xp >= t4 xp run xp add @s -400
execute if entity @s[tag=FreezingPoint2_temp,tag=FreezingPoint2] if score @s xp >= t4 xp run tag @s remove FreezingPoint1

#Remove CheckTags
tag @s[tag=FreezingPoint2_T1AO] remove FreezingPoint2_T1AO
tag @s[tag=FreezingPoint2_T2AO] remove FreezingPoint2_T2AO
tag @s[tag=FreezingPoint2_NEXp] remove FreezingPoint2_NEXp
tag @s[tag=FreezingPoint2_temp] remove FreezingPoint2_temp
scoreboard players set @s FreezingPoint2 0