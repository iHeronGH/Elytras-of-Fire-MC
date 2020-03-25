#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Add CheckTags
execute if entity @s[scores={Cyclone1=1..},tag=Cyclone1] run tag @s add Cyclone1_T1AO
execute if entity @s[scores={Cyclone1=1..},tag=Cyclone2] run tag @s add Cyclone1_T2AO
execute if score @s[scores={Cyclone1=1..},tag=!Cyclone1_T1AO,tag=!Cyclone1_T2AO] xp < t4 xp run tag @s add Cyclone1_NEXp
execute if entity @s[scores={Cyclone1=1..},tag=!Cyclone1,tag=!Cyclone2,tag=!Cyclone1_T1AO,tag=!Cyclone1_T2AO,tag=!Cyclone1_NEXp] if score @s xp >= t4 xp run tag @s add Cyclone1_temp

#Announce Tier Already Owned
execute if entity @s[tag=Cyclone1_T1AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"Cyclone I","color":"dark_red","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Cyclone1_T2AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"Cyclone II","color":"dark_red","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Cyclone1_NEXp] run tellraw @s ["",{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Cyclone 1
execute if entity @s[tag=Cyclone1_temp] if score @s xp >= t4 xp run tellraw @s ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Cyclone I","color":"dark_red","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Cyclone1_temp] if score @s xp >= t4 xp run tag @s add Cyclone1
execute if entity @s[tag=Cyclone1_temp,tag=Cyclone1] if score @s xp >= t4 xp run xp add @s -400

#Remove CheckTags
tag @s[tag=Cyclone1_T1AO] remove Cyclone1_T1AO
tag @s[tag=Cyclone1_T2AO] remove Cyclone1_T2AO
tag @s[tag=Cyclone1_NEXp] remove Cyclone1_NEXp
tag @s[tag=Cyclone1_temp] remove Cyclone1_temp
scoreboard players set @s Cyclone1 0