#Add CheckTags
tag @s[tag=Fission1] add fi1_T1AO
execute if score @s[tag=!fi1_T1AO] xp < t3 xp run tag @s add fi1_NEXp
tag @s[tag=!Fission1,tag=!fi1_T1AO,tag=!fi1_NEXp] add fi1_temp

#Announce Tier Already Owned
tellraw @s[tag=fi1_T1AO] [{"text":"You already own ","color":"gray"},{"text":"Fission I","color":"red","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=fi1_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Fission 1
tellraw @s[tag=fi1_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Fission I","color":"red","bold":true},{"text":"!"}]
tag @s[tag=fi1_temp] add Fission1
xp add @s[tag=fi1_temp,tag=Fission1] -900

#Remove CheckTags
tag @s[tag=fi1_T1AO] remove fi1_T1AO
tag @s[tag=fi1_NEXp] remove fi1_NEXp
tag @s[tag=fi1_temp] remove fi1_temp
scoreboard players set @s Fission1 0