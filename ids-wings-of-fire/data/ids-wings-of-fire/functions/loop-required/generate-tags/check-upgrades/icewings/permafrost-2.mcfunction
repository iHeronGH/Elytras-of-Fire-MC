#Add CheckTags
tag @s[tag=Permafrost1] add pf2_T1AO
tag @s[tag=Permafrost2] add pf2_T2AO
execute if score @s[tag=pf2_T1AO,tag=!pf2_T2AO] xp < t2 xp run tag @s add pf2_NEXp
tag @s[tag=pf2_T1AO,tag=!pf2_T2AO,tag=!pf2_NEXp] add pf2_temp

#Announce Tier Already Owned
tellraw @s[tag=pf2_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Permafrost II","color":"aqua","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=pf2_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!"}]

#Announce Buy Previous Tier
tellraw @s[tag=!pf2_T1AO,tag=!pf2_T2AO] [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Permafrost 2
tellraw @s[tag=pf2_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Permafrost II","color":"aqua","bold":true},{"text":"!"}]
tag @s[tag=pf2_temp] add Permafrost2
xp add @s[tag=pf2_temp,tag=Permafrost2] -450
tag @s[tag=pf2_temp,tag=Permafrost2] remove Permafrost1

#Remove CheckTags
tag @s[tag=pf2_T1AO] remove pf2_T1AO
tag @s[tag=pf2_T2AO] remove pf2_T2AO
tag @s[tag=pf2_NEXp] remove pf2_NEXp
tag @s[tag=pf2_temp] remove pf2_temp
scoreboard players set @s Permafrost2 0