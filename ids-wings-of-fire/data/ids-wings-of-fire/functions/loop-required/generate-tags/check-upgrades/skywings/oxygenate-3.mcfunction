#Add CheckTags
tag @s[tag=Oxygenate1] add ox3_T1AO
tag @s[tag=Oxygenate2] add ox3_T2AO
tag @s[tag=Oxygenate3] add ox3_T3AO
execute if score @s[tag=ox3_T2AO,tag=!ox3_T3AO] xp < t1 xp run tag @s add ox3_NEXp
tag @s[tag=!ox3_T1AO,tag=ox3_T2AO,tag=!ox3_T3AO,tag=!ox3_NEXp] add ox3_temp

#Announce Tier Already Owned
tellraw @s[tag=ox3_T3AO] [{"text":"You already own ","color":"gray"},{"text":"Oxygenate III","color":"red","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=ox3_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
tellraw @s[tag=!ox3_T2AO,tag=!ox3_T3AO] [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Oxygenate 3
tellraw @s[tag=ox3_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Oxygenate III","color":"red","bold":true},{"text":"!"}]
tag @s[tag=ox3_temp] add Oxygenate3
xp add @s[tag=ox3_temp,tag=Oxygenate3] -300
tag @s[tag=ox3_temp,tag=Oxygenate3] remove Oxygenate2

#Remove CheckTags
tag @s[tag=ox3_T1AO] remove ox3_T1AO
tag @s[tag=ox3_T2AO] remove ox3_T2AO
tag @s[tag=ox3_T3AO] remove ox3_T3AO
tag @s[tag=ox3_NEXp] remove ox3_NEXp
tag @s[tag=ox3_temp] remove ox3_temp
scoreboard players set @s Oxygenate3 0