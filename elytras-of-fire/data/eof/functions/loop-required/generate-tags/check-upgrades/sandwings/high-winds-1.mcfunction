#Add CheckTags
tag @s[tag=HighWinds1] add hw1_T1AO
tag @s[tag=HighWinds2] add hw1_T2AO
execute if score @s[tag=!hw1_T1AO,tag=!hw1_T2AO] xp < t1 xp run tag @s add hw1_NEXp
tag @s[tag=!hw1_T1AO,tag=!hw1_T2AO,tag=!hw1_NEXp] add hw1_temp

#Announce Tier Already Owned
tellraw @s[tag=hw1_T1AO] [{"text":"You already own ","color":"gray"},{"text":"High Winds I","color":"yellow","bold":true},{"text":"!"}]
tellraw @s[tag=hw1_T2AO] [{"text":"You already own ","color":"gray"},{"text":"High Winds II","color":"yellow","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=hw1_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase HighWinds 1
tellraw @s[tag=hw1_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"High Winds I","color":"yellow","bold":true},{"text":"!"}]
tag @s[tag=hw1_temp] add HighWinds1
xp add @s[tag=hw1_temp,tag=HighWinds1] -300

#Remove CheckTags
tag @s[tag=hw1_T1AO] remove hw1_T1AO
tag @s[tag=hw1_T2AO] remove hw1_T2AO
tag @s[tag=hw1_NEXp] remove hw1_NEXp
tag @s[tag=hw1_temp] remove hw1_temp
scoreboard players set @s HighWinds1 0