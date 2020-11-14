#Add CheckTags
tag @s[tag=FreezingPoint1] add fp1_T1AO
tag @s[tag=FreezingPoint2] add fp1_T2AO
execute if score @s[tag=!fp1_T1AO,tag=!fp1_T2AO] xp < t1 xp run tag @s add fp1_NEXp
tag @s[tag=!fp1_T1AO,tag=!fp1_T2AO,tag=!fp1_NEXp] add fp1_temp

#Announce Tier Already Owned
tellraw @s[tag=fp1_T1AO] [{"text":"You already own ","color":"gray"},{"text":"Freezing Point I","color":"gray","bold":true},{"text":"!"}]
tellraw @s[tag=fp1_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Freezing Point II","color":"gray","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=fp1_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase FreezingPoint 1
tellraw @s[tag=fp1_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Freezing Point I","color":"gray","bold":true},{"text":"!"}]
tag @s[tag=fp1_temp] add FreezingPoint1
xp add @s[tag=fp1_temp,tag=FreezingPoint1] -300

#Remove CheckTags
tag @s[tag=fp1_T1AO] remove fp1_T1AO
tag @s[tag=fp1_T2AO] remove fp1_T2AO
tag @s[tag=fp1_NEXp] remove fp1_NEXp
tag @s[tag=fp1_temp] remove fp1_temp
scoreboard players set @s FreezingPoint1 0