#Add CheckTags
tag @s[tag=Drought1] add dr1_T1AO
tag @s[tag=Drought2] add dr1_T2AO
execute if score @s[tag=!dr1_T1AO,tag=!dr1_T2AO] xp < t4 xp run tag @s add dr1_NEXp
tag @s[tag=!dr1_T1AO,tag=!dr1_T2AO,tag=!dr1_NEXp] add dr1_temp

#Announce Tier Already Owned
tellraw @s[tag=dr1_T1AO] [{"text":"You already own ","color":"gray"},{"text":"Drought I","color":"yellow","bold":true},{"text":"!"}]
tellraw @s[tag=dr1_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Drought II","color":"yellow","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=dr1_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Drought 1
tellraw @s[tag=dr1_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Drought I","color":"yellow","bold":true},{"text":"!"}]
tag @s[tag=dr1_temp] add Drought1
xp add @s[tag=dr1_temp,tag=Drought1] -500

#Remove CheckTags
tag @s[tag=dr1_T1AO] remove dr1_T1AO
tag @s[tag=dr1_T2AO] remove dr1_T2AO
tag @s[tag=dr1_NEXp] remove dr1_NEXp
tag @s[tag=dr1_temp] remove dr1_temp
scoreboard players set @s Drought1 0