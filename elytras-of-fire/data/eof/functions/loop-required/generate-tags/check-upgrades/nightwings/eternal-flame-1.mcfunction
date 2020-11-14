#Add CheckTags
tag @s[tag=EternalFlame1] add ef1_T1AO
tag @s[tag=EternalFlame2] add ef1_T2AO
execute if score @s[tag=!ef1_T1AO,tag=!ef1_T2AO] xp < t2 xp run tag @s add ef1_NEXp
tag @s[tag=!ef1_T1AO,tag=!ef1_T2AO,tag=!ef1_NEXp] add ef1_temp

#Announce Tier Already Owned
tellraw @s[tag=ef1_T1AO] [{"text":"You already own ","color":"gray"},{"text":"EternalFlame I","color":"red","bold":true},{"text":"!"}]
tellraw @s[tag=ef1_T2AO] [{"text":"You already own ","color":"gray"},{"text":"EternalFlame II","color":"red","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=ef1_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase EternalFlame 1
tellraw @s[tag=ef1_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"EternalFlame I","color":"red","bold":true},{"text":"!"}]
tag @s[tag=ef1_temp] add EternalFlame1
xp add @s[tag=ef1_temp,tag=EternalFlame1] -450

#Remove CheckTags
tag @s[tag=ef1_T1AO] remove ef1_T1AO
tag @s[tag=ef1_T2AO] remove ef1_T2AO
tag @s[tag=ef1_NEXp] remove ef1_NEXp
tag @s[tag=ef1_temp] remove ef1_temp
scoreboard players set @s EternalFlame1 0