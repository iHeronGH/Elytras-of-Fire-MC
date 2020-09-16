#Add CheckTags
tag @s[tag=Tremors1] add tr2_T1AO
tag @s[tag=Tremors2] add tr2_T2AO
execute if score @s[tag=tr2_T1AO,tag=!tr2_T2AO] xp < t1 xp run tag @s add tr2_NEXp
tag @s[tag=tr2_T1AO,tag=!tr2_T2AO,tag=!tr2_NEXp] add tr2_temp

#Announce Tier Already Owned
tellraw @s[tag=tr2_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Tremors II","color":"gold","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=tr2_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
tellraw @s[tag=!tr2_T1AO,tag=!tr2_T2AO] [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Tremors 2
tellraw @s[tag=tr2_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Tremors II","color":"gold","bold":true},{"text":"!"}]
tag @s[tag=tr2_temp] add Tremors2
xp add @s[tag=tr2_temp,tag=Tremors2] -300
tag @s[tag=tr2_temp,tag=Tremors2] remove Tremors1

#Remove CheckTags
tag @s[tag=tr2_T1AO] remove tr2_T1AO
tag @s[tag=tr2_T2AO] remove tr2_T2AO
tag @s[tag=tr2_NEXp] remove tr2_NEXp
tag @s[tag=tr2_temp] remove tr2_temp
scoreboard players set @s Tremors2 0