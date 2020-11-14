#Add CheckTags
tag @s[tag=Tremors1] add tr1_T1AO
tag @s[tag=Tremors2] add tr1_T2AO
execute if score @s[tag=!tr1_T1AO,tag=!tr1_T2AO] xp < t1 xp run tag @s add tr1_NEXp
tag @s[tag=!tr1_T1AO,tag=!tr1_T2AO,tag=!tr1_NEXp] add tr1_temp

#Announce Tier Already Owned
tellraw @s[tag=tr1_T1AO] [{"text":"You already own ","color":"gray"},{"text":"Tremors I","color":"gold","bold":true},{"text":"!"}]
tellraw @s[tag=tr1_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Tremors II","color":"gold","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=tr1_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Tremors 1
tellraw @s[tag=tr1_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Tremors I","color":"gold","bold":true},{"text":"!"}]
tag @s[tag=tr1_temp] add Tremors1
xp add @s[tag=tr1_temp,tag=Tremors1] -300

#Remove CheckTags
tag @s[tag=tr1_T1AO] remove tr1_T1AO
tag @s[tag=tr1_T2AO] remove tr1_T2AO
tag @s[tag=tr1_NEXp] remove tr1_NEXp
tag @s[tag=tr1_temp] remove tr1_temp
scoreboard players set @s Tremors1 0