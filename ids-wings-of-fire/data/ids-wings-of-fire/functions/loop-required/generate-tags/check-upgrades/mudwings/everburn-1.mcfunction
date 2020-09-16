#Add CheckTags
tag @s[tag=Everburn1] add eb1_T1AO
tag @s[tag=Everburn2] add eb1_T2AO
execute if score @s[tag=!eb1_T1AO,tag=!eb1_T2AO] xp < t2 xp run tag @s add eb1_NEXp
tag @s[tag=!eb1_T1AO,tag=!eb1_T2AO,tag=!eb1_NEXp] add eb1_temp

#Announce Tier Already Owned
tellraw @s[tag=eb1_T1AO] [{"text":"You already own ","color":"gray"},{"text":"Everburn I","color":"red","bold":true},{"text":"!"}]
tellraw @s[tag=eb1_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Everburn II","color":"red","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=eb1_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Everburn 1
tellraw @s[tag=eb1_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Everburn I","color":"red","bold":true},{"text":"!"}]
tag @s[tag=eb1_temp] add Everburn1
xp add @s[tag=eb1_temp,tag=Everburn1] -450

#Remove CheckTags
tag @s[tag=eb1_T1AO] remove eb1_T1AO
tag @s[tag=eb1_T2AO] remove eb1_T2AO
tag @s[tag=eb1_NEXp] remove eb1_NEXp
tag @s[tag=eb1_temp] remove eb1_temp
scoreboard players set @s Everburn1 0