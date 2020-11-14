#Add CheckTags
tag @s[tag=HighWinds1] add hw2_T1AO
tag @s[tag=HighWinds2] add hw2_T2AO
execute if score @s[tag=hw2_T1AO,tag=!hw2_T2AO] xp < t1 xp run tag @s add hw2_NEXp
tag @s[tag=hw2_T1AO,tag=!hw2_T2AO,tag=!hw2_NEXp] add hw2_temp

#Announce Tier Already Owned
tellraw @s[tag=hw2_T2AO] [{"text":"You already own ","color":"gray"},{"text":"High Winds II","color":"yellow","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=hw2_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
tellraw @s[tag=!hw2_T1AO,tag=!hw2_T2AO] [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase HighWinds 2
tellraw @s[tag=hw2_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"High Winds II","color":"yellow","bold":true},{"text":"!"}]
tag @s[tag=hw2_temp] add HighWinds2
xp add @s[tag=hw2_temp,tag=HighWinds2] -300
tag @s[tag=hw2_temp,tag=HighWinds2] remove HighWinds1

#Remove CheckTags
tag @s[tag=hw2_T1AO] remove hw2_T1AO
tag @s[tag=hw2_T2AO] remove hw2_T2AO
tag @s[tag=hw2_NEXp] remove hw2_NEXp
tag @s[tag=hw2_temp] remove hw2_temp
scoreboard players set @s HighWinds2 0