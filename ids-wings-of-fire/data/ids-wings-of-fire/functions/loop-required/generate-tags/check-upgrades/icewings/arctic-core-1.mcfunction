#Add CheckTags
tag @s[tag=ArcticCore1] add ac1_T1AO
tag @s[tag=ArcticCore2] add ac1_T2AO
tag @s[tag=ArcticCore3] add ac1_T3AO
execute if score @s[tag=!ac1_T1AO,tag=!ac1_T2AO,tag=!ac1_T3AO] xp < t1 xp run tag @s add ac1_NEXp
tag @s[tag=!ac1_T1AO,tag=!ac1_T2AO,tag=!ac1_T3AO,tag=!ac1_NEXp] add ac1_temp

#Announce Tier Already Owned
tellraw @s[tag=ac1_T1AO] [{"text":"You already own ","color":"gray"},{"text":"Arctic Core I","color":"aqua","bold":true},{"text":"!"}]
tellraw @s[tag=ac1_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Arctic Core II","color":"aqua","bold":true},{"text":"!"}]
tellraw @s[tag=ac1_T3AO] [{"text":"You already own ","color":"gray"},{"text":"Arctic Core III","color":"aqua","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=ac1_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Arctic Core 1
tellraw @s[tag=ac1_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Arctic Core I","color":"aqua","bold":true},{"text":"!"}]
tag @s[tag=ac1_temp] add ArcticCore1
xp add @s[tag=ac1_temp,tag=ArcticCore1] -300

#Remove CheckTags
tag @s[tag=ac1_T1AO] remove ac1_T1AO
tag @s[tag=ac1_T2AO] remove ac1_T2AO
tag @s[tag=ac1_T3AO] remove ac1_T3AO
tag @s[tag=ac1_NEXp] remove ac1_NEXp
tag @s[tag=ac1_temp] remove ac1_temp
scoreboard players set @s ArcticCore1 0