#Add CheckTags
tag @s[tag=ArcticCore1] add ac3_T1AO
tag @s[tag=ArcticCore2] add ac3_T2AO
tag @s[tag=ArcticCore3] add ac3_T3AO
execute if score @s[tag=ac3_T2AO,tag=!ac3_T3AO] xp < t1 xp run tag @s add ac3_NEXp
tag @s[tag=!ac3_T1AO,tag=ac3_T2AO,tag=!ac3_T3AO,tag=!ac3_NEXp] add ac3_temp

#Announce Tier Already Owned
tellraw @s[tag=ac3_T3AO] [{"text":"You already own ","color":"gray"},{"text":"Arctic Core III","color":"aqua","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=ac3_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
tellraw @s[tag=!ac3_T2AO,tag=!ac3_T3AO] [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Arctic Core 3
tellraw @s[tag=ac3_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Arctic Core III","color":"aqua","bold":true},{"text":"!"}]
tag @s[tag=ac3_temp] add ArcticCore3
xp add @s[tag=ac3_temp,tag=ArcticCore3] -300
tag @s[tag=ac3_temp,tag=ArcticCore3] remove ArcticCore2

#Remove CheckTags
tag @s[tag=ac3_T1AO] remove ac3_T1AO
tag @s[tag=ac3_T2AO] remove ac3_T2AO
tag @s[tag=ac3_T3AO] remove ac3_T3AO
tag @s[tag=ac3_NEXp] remove ac3_NEXp
tag @s[tag=ac3_temp] remove ac3_temp
scoreboard players set @s ArcticCore3 0