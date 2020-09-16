#Add CheckTags
tag @s[tag=Cyclone1] add cy2_T1AO
tag @s[tag=Cyclone2] add cy2_T2AO
execute if score @s[tag=cy2_T1AO,tag=!cy2_T2AO] xp < t4 xp run tag @s add cy2_NEXp
tag @s[tag=cy2_T1AO,tag=!cy2_T2AO,tag=!cy2_NEXp] add cy2_temp

#Announce Tier Already Owned
tellraw @s[tag=cy2_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Cyclone II","color":"dark_red","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=cy2_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
tellraw @s[tag=!cy2_T1AO,tag=!cy2_T2AO] [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Cyclone 2
tellraw @s[tag=cy2_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Cyclone II","color":"dark_red","bold":true},{"text":"!"}]
tag @s[tag=cy2_temp] add Cyclone2
xp add @s[tag=cy2_temp,tag=Cyclone2] -500
tag @s[tag=cy2_temp,tag=Cyclone2] remove Cyclone1

#Remove CheckTags
tag @s[tag=cy2_T1AO] remove cy2_T1AO
tag @s[tag=cy2_T2AO] remove cy2_T2AO
tag @s[tag=cy2_NEXp] remove cy2_NEXp
tag @s[tag=cy2_temp] remove cy2_temp
scoreboard players set @s Cyclone2 0