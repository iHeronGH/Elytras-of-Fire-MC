#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Add CheckTags
execute if entity @s[scores={Waterlogged2=1..},tag=Waterlogged1] run tag @s add Waterlogged2_T1AO
execute if entity @s[scores={Waterlogged2=1..},tag=Waterlogged2] run tag @s add Waterlogged2_T2AO
execute if score @s[scores={Waterlogged2=1..},tag=Waterlogged2_T1AO,tag=!Waterlogged2_T2AO] xp < t2 xp run tag @s add Waterlogged2_NEXp
execute if entity @s[scores={Waterlogged2=1..},tag=Waterlogged1,tag=!Waterlogged2,tag=Waterlogged2_T1AO,tag=!Waterlogged2_T2AO,tag=!Waterlogged2_NEXp] if score @s xp >= t2 xp run tag @s add Waterlogged2_temp

#Announce Tier Already Owned
execute if entity @s[tag=Waterlogged2_T2AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"Waterlogged II","color":"aqua","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Waterlogged2_NEXp] run tellraw @s ["",{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
execute if entity @s[scores={Waterlogged2=1..},tag=!Waterlogged2_T1AO,tag=!Waterlogged2_T2AO] run tellraw @s ["",{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Waterlogged 2
execute if entity @s[tag=Waterlogged2_temp] if score @s xp >= t2 xp run tellraw @s ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Waterlogged II","color":"aqua","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Waterlogged2_temp] if score @s xp >= t2 xp run tag @s add Waterlogged2
execute if entity @s[tag=Waterlogged2_temp,tag=Waterlogged2] if score @s xp >= t2 xp run xp add @s -450
execute if entity @s[tag=Waterlogged2_temp,tag=Waterlogged2] if score @s xp >= t2 xp run tag @s remove Waterlogged1

#Remove CheckTags
tag @s[tag=Waterlogged2_T1AO] remove Waterlogged2_T1AO
tag @s[tag=Waterlogged2_T2AO] remove Waterlogged2_T2AO
tag @s[tag=Waterlogged2_NEXp] remove Waterlogged2_NEXp
tag @s[tag=Waterlogged2_temp] remove Waterlogged2_temp
scoreboard players set @s Waterlogged2 0