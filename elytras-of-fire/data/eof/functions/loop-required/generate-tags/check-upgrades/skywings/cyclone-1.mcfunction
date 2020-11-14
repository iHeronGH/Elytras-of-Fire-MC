#Add CheckTags
tag @s[tag=Cyclone1] add cy1_T1AO
tag @s[tag=Cyclone2] add cy1_T2AO
execute if score @s[tag=!cy1_T1AO,tag=!cy1_T2AO] xp < t4 xp run tag @s add cy1_NEXp
tag @s[tag=!cy1_T1AO,tag=!cy1_T2AO,tag=!cy1_NEXp] add cy1_temp

#Announce Tier Already Owned
tellraw @s[tag=cy1_T1AO] [{"text":"You already own ","color":"gray"},{"text":"Cyclone I","color":"dark_red","bold":true},{"text":"!"}]
tellraw @s[tag=cy1_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Cyclone II","color":"dark_red","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=cy1_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Cyclone 1
tellraw @s[tag=cy1_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Cyclone I","color":"dark_red","bold":true},{"text":"!"}]
tag @s[tag=cy1_temp] add Cyclone1
xp add @s[tag=cy1_temp,tag=Cyclone1] -500

#Remove CheckTags
tag @s[tag=cy1_T1AO] remove cy1_T1AO
tag @s[tag=cy1_T2AO] remove cy1_T2AO
tag @s[tag=cy1_NEXp] remove cy1_NEXp
tag @s[tag=cy1_temp] remove cy1_temp
scoreboard players set @s Cyclone1 0