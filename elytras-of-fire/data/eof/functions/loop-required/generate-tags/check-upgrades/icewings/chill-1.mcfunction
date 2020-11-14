#Add CheckTags
tag @s[tag=Chill1] add ch1_T1AO
tag @s[tag=Chill2] add ch1_T2AO
execute if score @s[tag=!ch1_T1AO,tag=!ch1_T2AO] xp < t4 xp run tag @s add ch1_NEXp
tag @s[tag=!ch1_T1AO,tag=!ch1_T2AO,tag=!ch1_NEXp] add ch1_temp

#Announce Tier Already Owned
tellraw @s[tag=ch1_T1AO] [{"text":"You already own ","color":"gray"},{"text":"Chill I","color":"gray","bold":true},{"text":"!"}]
tellraw @s[tag=ch1_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Chill II","color":"gray","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=ch1_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Chill 1
tellraw @s[tag=ch1_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Chill I","color":"gray","bold":true},{"text":"!"}]
tag @s[tag=ch1_temp] add Chill1
xp add @s[tag=ch1_temp,tag=Chill1] -500

#Remove CheckTags
tag @s[tag=ch1_T1AO] remove ch1_T1AO
tag @s[tag=ch1_T2AO] remove ch1_T2AO
tag @s[tag=ch1_NEXp] remove ch1_NEXp
tag @s[tag=ch1_temp] remove ch1_temp
scoreboard players set @s Chill1 0