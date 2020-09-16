#Add CheckTags
tag @s[tag=Drought1] add dr2_T1AO
tag @s[tag=Drought2] add dr2_T2AO
execute if score @s[tag=dr2_T1AO,tag=!dr2_T2AO] xp < t4 xp run tag @s add dr2_NEXp
tag @s[tag=dr2_T1AO,tag=!dr2_T2AO,tag=!dr2_NEXp] add dr2_temp

#Announce Tier Already Owned
tellraw @s[tag=dr2_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Drought II","color":"yellow","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=dr2_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
tellraw @s[tag=!dr2_T1AO,tag=!dr2_T2AO] [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Drought 2
tellraw @s[tag=dr2_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Drought II","color":"yellow","bold":true},{"text":"!"}]
tag @s[tag=dr2_temp] add Drought2
xp add @s[tag=dr2_temp,tag=Drought2] -500
tag @s[tag=dr2_temp,tag=Drought2] remove Drought1

#Remove CheckTags
tag @s[tag=dr2_T1AO] remove dr2_T1AO
tag @s[tag=dr2_T2AO] remove dr2_T2AO
tag @s[tag=dr2_NEXp] remove dr2_NEXp
tag @s[tag=dr2_temp] remove dr2_temp
scoreboard players set @s Drought2 0