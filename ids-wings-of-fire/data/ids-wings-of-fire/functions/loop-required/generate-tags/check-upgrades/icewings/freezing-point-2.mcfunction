#Add CheckTags
tag @s[tag=FreezingPoint1] add fp2_T1AO
tag @s[tag=FreezingPoint2] add fp2_T2AO
execute if score @s[tag=fp2_T1AO,tag=!fp2_T2AO] xp < t1 xp run tag @s add fp2_NEXp
tag @s[tag=fp2_T1AO,tag=!fp2_T2AO,tag=!fp2_NEXp] add fp2_temp

#Announce Tier Already Owned
tellraw @s[tag=fp2_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Freezing Point II","color":"gray","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=fp2_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
tellraw @s[tag=!fp2_T1AO,tag=!fp2_T2AO] [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase FreezingPoint 2
tellraw @s[tag=fp2_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Freezing Point II","color":"gray","bold":true},{"text":"!"}]
tag @s[tag=fp2_temp] add FreezingPoint2
xp add @s[tag=fp2_temp,tag=FreezingPoint2] -300
tag @s[tag=fp2_temp,tag=FreezingPoint2] remove FreezingPoint1

#Remove CheckTags
tag @s[tag=fp2_T1AO] remove fp2_T1AO
tag @s[tag=fp2_T2AO] remove fp2_T2AO
tag @s[tag=fp2_NEXp] remove fp2_NEXp
tag @s[tag=fp2_temp] remove fp2_temp
scoreboard players set @s FreezingPoint2 0