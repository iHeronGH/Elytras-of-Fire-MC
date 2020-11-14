#Add CheckTags
tag @s[tag=Oxygenate1] add ox2_T1AO
tag @s[tag=Oxygenate2] add ox2_T2AO
tag @s[tag=Oxygenate3] add ox2_T3AO
execute if score @s[tag=ox2_T1AO,tag=!ox2_T2AO,tag=!ox2_T3AO] xp < t1 xp run tag @s add ox2_NEXp
tag @s[tag=ox2_T1AO,tag=!ox2_T2AO,tag=!ox2_T3AO,tag=!ox2_NEXp] add ox2_temp

#Announce Tier Already Owned
tellraw @s[tag=ox2_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Oxygenate II","color":"red","bold":true},{"text":"!"}]
tellraw @s[tag=ox2_T3AO] [{"text":"You already own ","color":"gray"},{"text":"Oxygenate III","color":"red","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=ox2_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
tellraw @s[tag=!ox2_T1AO,tag=!ox2_T2AO,tag=!ox2_T3AO] [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Oxygenate 2
tellraw @s[tag=ox2_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Oxygenate II","color":"red","bold":true},{"text":"!"}]
tag @s[tag=ox2_temp] add Oxygenate2
xp add @s[tag=ox2_temp,tag=Oxygenate2] -300
tag @s[tag=ox2_temp,tag=Oxygenate2] remove Oxygenate1

#Remove CheckTags
tag @s[tag=ox2_T1AO] remove ox2_T1AO
tag @s[tag=ox2_T2AO] remove ox2_T2AO
tag @s[tag=ox2_T3AO] remove ox2_T3AO
tag @s[tag=ox2_NEXp] remove ox2_NEXp
tag @s[tag=ox2_temp] remove ox2_temp
scoreboard players set @s Oxygenate2 0