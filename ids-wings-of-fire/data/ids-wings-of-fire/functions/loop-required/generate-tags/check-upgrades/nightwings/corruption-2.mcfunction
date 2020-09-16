#Add CheckTags
tag @s[tag=Corruption1] add co2_T1AO
tag @s[tag=Corruption2] add co2_T2AO
execute if score @s[tag=co2_T1AO,tag=!co2_T2AO] xp < t1 xp run tag @s add co2_NEXp
tag @s[tag=co2_T1AO,tag=!co2_T2AO,tag=!co2_NEXp] add co2_temp

#Announce Tier Already Owned
tellraw @s[tag=co2_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Corruption II","color":"dark_gray","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=co2_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
tellraw @s[tag=!co2_T1AO,tag=!co2_T2AO] [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Corruption 2
tellraw @s[tag=co2_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Corruption II","color":"dark_gray","bold":true},{"text":"!"}]
tag @s[tag=co2_temp] add Corruption2
xp add @s[tag=co2_temp,tag=Corruption2] -300
tag @s[tag=co2_temp,tag=Corruption2] remove Corruption1

#Remove CheckTags
tag @s[tag=co2_T1AO] remove co2_T1AO
tag @s[tag=co2_T2AO] remove co2_T2AO
tag @s[tag=co2_NEXp] remove co2_NEXp
tag @s[tag=co2_temp] remove co2_temp
scoreboard players set @s Corruption2 0