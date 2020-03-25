#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Add CheckTags
execute if entity @s[scores={Cyclone2=1..},tag=Cyclone1] run tag @s add Cyclone2_T1AO
execute if entity @s[scores={Cyclone2=1..},tag=Cyclone2] run tag @s add Cyclone2_T2AO
execute if score @s[scores={Cyclone2=1..},tag=Cyclone2_T1AO,tag=!Cyclone2_T2AO] xp < t4 xp run tag @s add Cyclone2_NEXp
execute if entity @s[scores={Cyclone2=1..},tag=Cyclone1,tag=!Cyclone2,tag=Cyclone2_T1AO,tag=!Cyclone2_T2AO,tag=!Cyclone2_NEXp] if score @s xp >= t4 xp run tag @s add Cyclone2_temp

#Announce Tier Already Owned
execute if entity @s[tag=Cyclone2_T2AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"Cyclone II","color":"dark_red","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Cyclone2_NEXp] run tellraw @s ["",{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
execute if entity @s[scores={Cyclone2=1..},tag=!Cyclone2_T1AO,tag=!Cyclone2_T2AO] run tellraw @s ["",{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Cyclone 2
execute if entity @s[tag=Cyclone2_temp] if score @s xp >= t4 xp run tellraw @s ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Cyclone II","color":"dark_red","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Cyclone2_temp] if score @s xp >= t4 xp run tag @s add Cyclone2
execute if entity @s[tag=Cyclone2_temp,tag=Cyclone2] if score @s xp >= t4 xp run xp add @s -400
execute if entity @s[tag=Cyclone2_temp,tag=Cyclone2] if score @s xp >= t4 xp run tag @s remove Cyclone1

#Remove CheckTags
tag @s[tag=Cyclone2_T1AO] remove Cyclone2_T1AO
tag @s[tag=Cyclone2_T2AO] remove Cyclone2_T2AO
tag @s[tag=Cyclone2_NEXp] remove Cyclone2_NEXp
tag @s[tag=Cyclone2_temp] remove Cyclone2_temp
scoreboard players set @s Cyclone2 0