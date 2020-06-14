#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Add CheckTags
execute if entity @s[tag=Amphibious1] run tag @s add Amphibious1_T1AO
execute if entity @s[tag=Amphibious2] run tag @s add Amphibious1_T2AO
execute if score @s[tag=!Amphibious1_T1AO,tag=!Amphibious1_T2AO] xp < t5 xp run tag @s add Amphibious1_NEXp
execute if entity @s[tag=!Amphibious1_T1AO,tag=!Amphibious1_T2AO,tag=!Amphibious1_NEXp] run tag @s add Amphibious1_temp

#Announce Tier Already Owned
execute if entity @s[tag=Amphibious1_T1AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Amphibious I","color":"dark_aqua","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Amphibious1_T2AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Amphibious II","color":"dark_aqua","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Amphibious1_NEXp] run tellraw @s [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Amphibious 1
execute if entity @s[tag=Amphibious1_temp] run tellraw @s [{"text":"You have successfully purchased ","color":"gray"},{"text":"Amphibious I","color":"dark_aqua","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Amphibious1_temp] run tag @s add Amphibious1
execute if entity @s[tag=Amphibious1_temp,tag=Amphibious1] run xp add @s -400

#Remove CheckTags
tag @s[tag=Amphibious1_T1AO] remove Amphibious1_T1AO
tag @s[tag=Amphibious1_T2AO] remove Amphibious1_T2AO
tag @s[tag=Amphibious1_NEXp] remove Amphibious1_NEXp
tag @s[tag=Amphibious1_temp] remove Amphibious1_temp
scoreboard players set @s Amphibious1 0