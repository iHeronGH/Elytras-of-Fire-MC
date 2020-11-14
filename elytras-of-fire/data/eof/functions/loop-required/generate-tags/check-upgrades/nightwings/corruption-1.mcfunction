#Add CheckTags
tag @s[tag=Corruption1] add co1_T1AO
tag @s[tag=Corruption2] add co1_T2AO
execute if score @s[tag=!co1_T1AO,tag=!co1_T2AO] xp < t1 xp run tag @s add co1_NEXp
tag @s[tag=!co1_T1AO,tag=!co1_T2AO,tag=!co1_NEXp] add co1_temp

#Announce Tier Already Owned
tellraw @s[tag=co1_T1AO] [{"text":"You already own ","color":"gray"},{"text":"Corruption I","color":"dark_gray","bold":true},{"text":"!"}]
tellraw @s[tag=co1_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Corruption II","color":"dark_gray","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=co1_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Corruption 1
tellraw @s[tag=co1_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Corruption I","color":"dark_gray","bold":true},{"text":"!"}]
tag @s[tag=co1_temp] add Corruption1
xp add @s[tag=co1_temp,tag=Corruption1] -300

#Remove CheckTags
tag @s[tag=co1_T1AO] remove co1_T1AO
tag @s[tag=co1_T2AO] remove co1_T2AO
tag @s[tag=co1_NEXp] remove co1_NEXp
tag @s[tag=co1_temp] remove co1_temp
scoreboard players set @s Corruption1 0