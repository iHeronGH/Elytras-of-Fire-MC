#Add CheckTags
tag @s[tag=HighTide1] add ht1_T1AO
tag @s[tag=HighTide2] add ht1_T2AO
tag @s[tag=HighTide3] add ht1_T3AO
execute if score @s[tag=!ht1_T1AO,tag=!ht1_T2AO,tag=!ht1_T3AO] xp < t1 xp run tag @s add ht1_NEXp
tag @s[tag=!ht1_T1AO,tag=!ht1_T2AO,tag=!ht1_T3AO,tag=!ht1_NEXp] add ht1_temp

#Announce Tier Already Owned
tellraw @s[tag=ht1_T1AO] [{"text":"You already own ","color":"gray"},{"text":"High Tide I","color":"aqua","bold":true},{"text":"!"}]
tellraw @s[tag=ht1_T2AO] [{"text":"You already own ","color":"gray"},{"text":"High Tide II","color":"aqua","bold":true},{"text":"!"}]
tellraw @s[tag=ht1_T3AO] [{"text":"You already own ","color":"gray"},{"text":"High Tide III","color":"aqua","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=ht1_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase High Tide 1
tellraw @s[tag=ht1_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"High Tide I","color":"aqua","bold":true},{"text":"!"}]
tag @s[tag=ht1_temp] add HighTide1
xp add @s[tag=ht1_temp,tag=HighTide1] -300

#Remove CheckTags
tag @s[tag=ht1_T1AO] remove ht1_T1AO
tag @s[tag=ht1_T2AO] remove ht1_T2AO
tag @s[tag=ht1_T3AO] remove ht1_T3AO
tag @s[tag=ht1_NEXp] remove ht1_NEXp
tag @s[tag=ht1_temp] remove ht1_temp
scoreboard players set @s HighTide1 0