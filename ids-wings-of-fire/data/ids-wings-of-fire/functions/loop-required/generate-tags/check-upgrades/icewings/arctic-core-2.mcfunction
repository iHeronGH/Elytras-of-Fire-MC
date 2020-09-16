#Add CheckTags
tag @s[tag=ArcticCore1] add ac2_T1AO
tag @s[tag=ArcticCore2] add ac2_T2AO
tag @s[tag=ArcticCore3] add ac2_T3AO
execute if score @s[tag=ac2_T1AO,tag=!ac2_T2AO,tag=!ac2_T3AO] xp < t1 xp run tag @s add ac2_NEXp
tag @s[tag=ac2_T1AO,tag=!ac2_T2AO,tag=!ac2_T3AO,tag=!ac2_NEXp] add ac2_temp

#Announce Tier Already Owned
tellraw @s[tag=ac2_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Arctic Core II","color":"aqua","bold":true},{"text":"!"}]
tellraw @s[tag=ac2_T3AO] [{"text":"You already own ","color":"gray"},{"text":"Arctic Core III","color":"aqua","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=ac2_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
execute if entity @s[tag=!ac2_T1AO,tag=!ac2_T2AO,tag=!ac2_T3AO] run tellraw @s [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Arctic Core 2
tellraw @s[tag=ac2_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Arctic Core II","color":"aqua","bold":true},{"text":"!"}]
tag @s[tag=ac2_temp] add ArcticCore2
xp add @s[tag=ac2_temp,tag=ArcticCore2] -300
tag @s[tag=ac2_temp,tag=ArcticCore2] remove ArcticCore1

#Remove CheckTags
tag @s[tag=ac2_T1AO] remove ac2_T1AO
tag @s[tag=ac2_T2AO] remove ac2_T2AO
tag @s[tag=ac2_T3AO] remove ac2_T3AO
tag @s[tag=ac2_NEXp] remove ac2_NEXp
tag @s[tag=ac2_temp] remove ac2_temp
scoreboard players set @s ArcticCore2 0