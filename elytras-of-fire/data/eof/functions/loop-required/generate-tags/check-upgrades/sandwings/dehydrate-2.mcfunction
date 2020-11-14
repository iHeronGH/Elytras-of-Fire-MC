#Add CheckTags
tag @s[tag=Dehydrate1] add dh2_T1AO
tag @s[tag=Dehydrate2] add dh2_T2AO
execute if score @s[tag=dh2_T1AO,tag=!dh2_T2AO] xp < t2 xp run tag @s add dh2_NEXp
tag @s[tag=dh2_T1AO,tag=!dh2_T2AO,tag=!dh2_NEXp] add dh2_temp

#Announce Tier Already Owned
tellraw @s[tag=dh2_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Dehydrate II","color":"red","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=dh2_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
tellraw @s[tag=!dh2_T1AO,tag=!dh2_T2AO] [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Dehydrate 2
tellraw @s[tag=dh2_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Dehydrate II","color":"red","bold":true},{"text":"!"}]
tag @s[tag=dh2_temp] add Dehydrate2
xp add @s[tag=dh2_temp,tag=Dehydrate2] -450
tag @s[tag=dh2_temp,tag=Dehydrate2] remove Dehydrate1

#Remove CheckTags
tag @s[tag=dh2_T1AO] remove dh2_T1AO
tag @s[tag=dh2_T2AO] remove dh2_T2AO
tag @s[tag=dh2_NEXp] remove dh2_NEXp
tag @s[tag=dh2_temp] remove dh2_temp
scoreboard players set @s Dehydrate2 0