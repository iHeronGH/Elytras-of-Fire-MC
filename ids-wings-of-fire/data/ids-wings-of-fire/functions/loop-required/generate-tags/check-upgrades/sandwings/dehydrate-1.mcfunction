#Add CheckTags
tag @s[tag=Dehydrate1] add dh1_T1AO
tag @s[tag=Dehydrate2] add dh1_T2AO
execute if score @s[tag=!dh1_T1AO,tag=!dh1_T2AO] xp < t2 xp run tag @s add dh1_NEXp
tag @s[tag=!dh1_T1AO,tag=!dh1_T2AO,tag=!dh1_NEXp] add dh1_temp

#Announce Tier Already Owned
tellraw @s[tag=dh1_T1AO] [{"text":"You already own ","color":"gray"},{"text":"Dehydrate I","color":"red","bold":true},{"text":"!"}]
tellraw @s[tag=dh1_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Dehydrate II","color":"red","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=dh1_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Dehydrate 1
tellraw @s[tag=dh1_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Dehydrate I","color":"red","bold":true},{"text":"!"}]
tag @s[tag=dh1_temp] add Dehydrate1
xp add @s[tag=dh1_temp,tag=Dehydrate1] -450

#Remove CheckTags
tag @s[tag=dh1_T1AO] remove dh1_T1AO
tag @s[tag=dh1_T2AO] remove dh1_T2AO
tag @s[tag=dh1_NEXp] remove dh1_NEXp
tag @s[tag=dh1_temp] remove dh1_temp
scoreboard players set @s Dehydrate1 0