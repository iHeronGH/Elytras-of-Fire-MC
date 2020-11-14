#Add CheckTags
tag @s[tag=Permafrost1] add pf1_T1AO
tag @s[tag=Permafrost2] add pf1_T2AO
execute if score @s[tag=!pf1_T1AO,tag=!pf1_T2AO] xp < t2 xp run tag @s add pf1_NEXp
tag @s[tag=!pf1_T1AO,tag=!pf1_T2AO,tag=!pf1_NEXp] add pf1_temp

#Announce Tier Already Owned
tellraw @s[tag=pf1_T1AO] [{"text":"You already own ","color":"gray"},{"text":"Permafrost I","color":"aqua","bold":true},{"text":"!"}]
tellraw @s[tag=pf1_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Permafrost II","color":"aqua","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=pf1_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase pf 1
tellraw @s[tag=pf1_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Permafrost I","color":"aqua","bold":true},{"text":"!"}]
tag @s[tag=pf1_temp] add Permafrost1
xp add @s[tag=pf1_temp,tag=Permafrost1] -450

#Remove CheckTags
tag @s[tag=pf1_T1AO] remove pf1_T1AO
tag @s[tag=pf1_T2AO] remove pf1_T2AO
tag @s[tag=pf1_NEXp] remove pf1_NEXp
tag @s[tag=pf1_temp] remove pf1_temp
scoreboard players set @s Permafrost1 0