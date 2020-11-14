#Add CheckTags
tag @s[tag=Oxygenate1] add ox1_T1AO
tag @s[tag=Oxygenate2] add ox1_T2AO
tag @s[tag=Oxygenate3] add ox1_T3AO
execute if score @s[tag=!ox1_T1AO,tag=!ox1_T2AO,tag=!ox1_T3AO] xp < t1 xp run tag @s add ox1_NEXp
tag @s[tag=!ox1_T1AO,tag=!ox1_T2AO,tag=!ox1_T3AO,tag=!ox1_NEXp] add ox1_temp

#Announce Tier Already Owned
tellraw @s[tag=ox1_T1AO] [{"text":"You already own ","color":"gray"},{"text":"Oxygenate I","color":"red","bold":true},{"text":"!"}]
tellraw @s[tag=ox1_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Oxygenate II","color":"red","bold":true},{"text":"!"}]
tellraw @s[tag=ox1_T3AO] [{"text":"You already own ","color":"gray"},{"text":"Oxygenate III","color":"red","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=ox1_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Oxygenate 1
tellraw @s[tag=ox1_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Oxygenate I","color":"red","bold":true},{"text":"!"}]
tag @s[tag=ox1_temp] add Oxygenate1
xp add @s[tag=ox1_temp,tag=Oxygenate1] -300

#Remove CheckTags
tag @s[tag=ox1_T1AO] remove ox1_T1AO
tag @s[tag=ox1_T2AO] remove ox1_T2AO
tag @s[tag=ox1_T3AO] remove ox1_T3AO
tag @s[tag=ox1_NEXp] remove ox1_NEXp
tag @s[tag=ox1_temp] remove ox1_temp
scoreboard players set @s Oxygenate1 0