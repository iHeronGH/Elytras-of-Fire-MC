#Add CheckTags
tag @s[tag=HighTide1] add ht3_T1AO
tag @s[tag=HighTide2] add ht3_T2AO
tag @s[tag=HighTide3] add ht3_T3AO
execute if score @s[tag=ht3_T2AO,tag=!ht3_T3AO] xp < t1 xp run tag @s add ht3_NEXp
tag @s[tag=!ht3_T1AO,tag=ht3_T2AO,tag=!ht3_T3AO,tag=!ht3_NEXp] add ht3_temp

#Announce Tier Already Owned
tellraw @s[tag=ht3_T3AO] [{"text":"You already own ","color":"gray"},{"text":"High Tide III","color":"aqua","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=ht3_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
tellraw @s[tag=!ht3_T2AO,tag=!ht3_T3AO] [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase High Tide 3
tellraw @s[tag=ht3_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"High Tide III","color":"aqua","bold":true},{"text":"!"}]
tag @s[tag=ht3_temp] add HighTide3
xp add @s[tag=ht3_temp,tag=HighTide3] -300
tag @s[tag=ht3_temp,tag=HighTide3] remove HighTide2

#Remove CheckTags
tag @s[tag=ht3_T1AO] remove ht3_T1AO
tag @s[tag=ht3_T2AO] remove ht3_T2AO
tag @s[tag=ht3_T3AO] remove ht3_T3AO
tag @s[tag=ht3_NEXp] remove ht3_NEXp
tag @s[tag=ht3_temp] remove ht3_temp
scoreboard players set @s HighTide3 0