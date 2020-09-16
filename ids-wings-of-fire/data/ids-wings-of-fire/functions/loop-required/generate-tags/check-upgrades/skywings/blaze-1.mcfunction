#Add CheckTags
tag @s[tag=Blaze1] add bl1_T1AO
execute if score @s[tag=!bl1_T1AO] xp < t3 xp run tag @s add bl1_NEXp
tag @s[tag=!bl1_T1AO,tag=!bl1_NEXp] add bl1_temp

#Announce Tier Already Owned
tellraw @s[tag=bl1_T1AO] [{"text":"You already own ","color":"gray"},{"text":"Blaze I","color":"red","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=bl1_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Blaze 1
tellraw @s[tag=bl1_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Blaze I","color":"red","bold":true},{"text":"!"}]
tag @s[tag=bl1_temp] add Blaze1
xp add @s[tag=bl1_temp,tag=Blaze1] -900

#Remove CheckTags
tag @s[tag=bl1_T1AO] remove bl1_T1AO
tag @s[tag=bl1_NEXp] remove bl1_NEXp
tag @s[tag=bl1_temp] remove bl1_temp
scoreboard players set @s Blaze1 0