#Add CheckTags
tag @s[tag=HighTide1] add ht2_T1AO
tag @s[tag=HighTide2] add ht2_T2AO
tag @s[tag=HighTide3] add ht2_T3AO
execute if score @s[tag=ht2_T1AO,tag=!ht2_T2AO,tag=!ht2_T3AO] xp < t1 xp run tag @s add ht2_NEXp
tag @s[tag=ht2_T1AO,tag=!ht2_T2AO,tag=!ht2_T3AO,tag=!ht2_NEXp] add ht2_temp

#Announce Tier Already Owned
tellraw @s[tag=ht2_T2AO] [{"text":"You already own ","color":"gray"},{"text":"High Tide II","color":"aqua","bold":true},{"text":"!"}]
tellraw @s[tag=ht2_T3AO] [{"text":"You already own ","color":"gray"},{"text":"High Tide III","color":"aqua","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=ht2_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
tellraw @s[tag=!ht2_T1AO,tag=!ht2_T2AO,tag=!ht2_T3AO] [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase High Tide 2
tellraw @s[tag=ht2_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"High Tide II","color":"aqua","bold":true},{"text":"!"}]
tag @s[tag=ht2_temp] add HighTide2
xp add @s[tag=ht2_temp,tag=HighTide2] -300
tag @s[tag=ht2_temp,tag=HighTide2] remove HighTide1

#Remove CheckTags
tag @s[tag=ht2_T1AO] remove ht2_T1AO
tag @s[tag=ht2_T2AO] remove ht2_T2AO
tag @s[tag=ht2_T3AO] remove ht2_T3AO
tag @s[tag=ht2_NEXp] remove ht2_NEXp
tag @s[tag=ht2_temp] remove ht2_temp
scoreboard players set @s HighTide2 0