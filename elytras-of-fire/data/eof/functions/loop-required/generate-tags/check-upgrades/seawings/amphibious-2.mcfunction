#Add CheckTags
tag @s[tag=Amphibious1] add am2_T1AO
tag @s[tag=Amphibious2] add am2_T2AO
execute if score @s[tag=am2_T1AO,tag=!am2_T2AO] xp < t4 xp run tag @s add am2_NEXp
tag @s[tag=am2_T1AO,tag=!am2_T2AO,tag=!am2_NEXp] add am2_temp

#Announce Tier Already Owned
tellraw @s[tag=am2_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Amphibious II","color":"dark_aqua","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=am2_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
tellraw @s[tag=!am2_T1AO,tag=!am2_T2AO] [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Amphibious 2
tellraw @s[tag=am2_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Amphibious II","color":"dark_aqua","bold":true},{"text":"!"}]
tag @s[tag=am2_temp] add Amphibious2
xp add @s[tag=am2_temp,tag=Amphibious2] -500
tag @s[tag=am2_temp,tag=Amphibious2] remove Amphibious1

#Remove CheckTags
tag @s[tag=am2_T1AO] remove am2_T1AO
tag @s[tag=am2_T2AO] remove am2_T2AO
tag @s[tag=am2_NEXp] remove am2_NEXp
tag @s[tag=am2_temp] remove am2_temp
scoreboard players set @s Amphibious2 0