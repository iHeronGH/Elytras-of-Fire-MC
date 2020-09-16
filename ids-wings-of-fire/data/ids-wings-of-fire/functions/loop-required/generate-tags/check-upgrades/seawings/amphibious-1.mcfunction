#Add CheckTags
tag @s[tag=Amphibious1] add am1_T1AO
tag @s[tag=Amphibious2] add am1_T2AO
execute if score @s[tag=!am1_T1AO,tag=!am1_T2AO] xp < t4 xp run tag @s add am1_NEXp
tag @s[tag=!am1_T1AO,tag=!am1_T2AO,tag=!am1_NEXp] add am1_temp

#Announce Tier Already Owned
tellraw @s[tag=am1_T1AO] [{"text":"You already own ","color":"gray"},{"text":"Amphibious I","color":"dark_aqua","bold":true},{"text":"!"}]
tellraw @s[tag=am1_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Amphibious II","color":"dark_aqua","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=am1_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Amphibious 1
tellraw @s[tag=am1_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Amphibious I","color":"dark_aqua","bold":true},{"text":"!"}]
tag @s[tag=am1_temp] add Amphibious1
xp add @s[tag=am1_temp,tag=Amphibious1] -500

#Remove CheckTags
tag @s[tag=am1_T1AO] remove am1_T1AO
tag @s[tag=am1_T2AO] remove am1_T2AO
tag @s[tag=am1_NEXp] remove am1_NEXp
tag @s[tag=am1_temp] remove am1_temp
scoreboard players set @s Amphibious1 0