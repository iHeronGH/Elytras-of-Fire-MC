#Add CheckTags
tag @s[tag=Noxious1] add no2_T1AO
tag @s[tag=Noxious2] add no2_T2AO
execute if score @s[tag=no2_T1AO,tag=!no2_T2AO] xp < t2 xp run tag @s add no2_NEXp
tag @s[tag=no2_T1AO,tag=!no2_T2AO,tag=!no2_NEXp] add no2_temp

#Announce Tier Already Owned
tellraw @s[tag=no2_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Noxious II","color":"white","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=no2_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
tellraw @s[tag=!no2_T1AO,tag=!no2_T2AO] [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Noxious 2
tellraw @s[tag=no2_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Noxious II","color":"white","bold":true},{"text":"!"}]
tag @s[tag=no2_temp] add Noxious2
xp add @s[tag=no2_temp,tag=Noxious2] -450
tag @s[tag=no2_temp,tag=Noxious2] remove Noxious1

#Remove CheckTags
tag @s[tag=no2_T1AO] remove no2_T1AO
tag @s[tag=no2_T2AO] remove no2_T2AO
tag @s[tag=no2_NEXp] remove no2_NEXp
tag @s[tag=no2_temp] remove no2_temp
scoreboard players set @s Noxious2 0