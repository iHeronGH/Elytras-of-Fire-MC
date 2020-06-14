#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Add CheckTags
execute if entity @s[tag=Amphibious1] run tag @s add Amphibious2_T1AO
execute if entity @s[tag=Amphibious2] run tag @s add Amphibious2_T2AO
execute if score @s[tag=Amphibious2_T1AO,tag=!Amphibious2_T2AO] xp < t5 xp run tag @s add Amphibious2_NEXp
execute if entity @s[tag=Amphibious2_T1AO,tag=!Amphibious2_T2AO,tag=!Amphibious2_NEXp] run tag @s add Amphibious2_temp

#Announce Tier Already Owned
execute if entity @s[tag=Amphibious2_T2AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Amphibious II","color":"dark_aqua","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Amphibious2_NEXp] run tellraw @s [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
execute if entity @s[tag=!Amphibious2_T1AO,tag=!Amphibious2_T2AO] run tellraw @s [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Amphibious 2
execute if entity @s[tag=Amphibious2_temp] run tellraw @s [{"text":"You have successfully purchased ","color":"gray"},{"text":"Amphibious II","color":"dark_aqua","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Amphibious2_temp] run tag @s add Amphibious2
execute if entity @s[tag=Amphibious2_temp,tag=Amphibious2] run xp add @s -400
execute if entity @s[tag=Amphibious2_temp,tag=Amphibious2] run tag @s remove Amphibious1

#Remove CheckTags
tag @s[tag=Amphibious2_T1AO] remove Amphibious2_T1AO
tag @s[tag=Amphibious2_T2AO] remove Amphibious2_T2AO
tag @s[tag=Amphibious2_NEXp] remove Amphibious2_NEXp
tag @s[tag=Amphibious2_temp] remove Amphibious2_temp
scoreboard players set @s Amphibious2 0