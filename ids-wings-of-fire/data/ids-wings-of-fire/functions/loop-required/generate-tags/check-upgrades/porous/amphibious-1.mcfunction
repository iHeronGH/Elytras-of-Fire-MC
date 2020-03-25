#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Add CheckTags
execute if entity @s[scores={Amphibious1=1..},tag=Amphibious1] run tag @s add Amphibious1_T1AO
execute if entity @s[scores={Amphibious1=1..},tag=Amphibious2] run tag @s add Amphibious1_T2AO
execute if score @s[scores={Amphibious1=1..},tag=!Amphibious1_T1AO,tag=!Amphibious1_T2AO] xp < t4 xp run tag @s add Amphibious1_NEXp
execute if entity @s[scores={Amphibious1=1..},tag=!Amphibious1,tag=!Amphibious2,tag=!Amphibious1_T1AO,tag=!Amphibious1_T2AO,tag=!Amphibious1_NEXp] if score @s xp >= t4 xp run tag @s add Amphibious1_temp

#Announce Tier Already Owned
execute if entity @s[tag=Amphibious1_T1AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"Amphibious I","color":"dark_aqua","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Amphibious1_T2AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"Amphibious II","color":"dark_aqua","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Amphibious1_NEXp] run tellraw @s ["",{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Amphibious 1
execute if entity @s[tag=Amphibious1_temp] if score @s xp >= t4 xp run tellraw @s ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Amphibious I","color":"dark_aqua","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Amphibious1_temp] if score @s xp >= t4 xp run tag @s add Amphibious1
execute if entity @s[tag=Amphibious1_temp,tag=Amphibious1] if score @s xp >= t4 xp run xp add @s -400

#Remove CheckTags
tag @s[tag=Amphibious1_T1AO] remove Amphibious1_T1AO
tag @s[tag=Amphibious1_T2AO] remove Amphibious1_T2AO
tag @s[tag=Amphibious1_NEXp] remove Amphibious1_NEXp
tag @s[tag=Amphibious1_temp] remove Amphibious1_temp
scoreboard players set @s Amphibious1 0