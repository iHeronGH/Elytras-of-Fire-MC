#Add CheckTags
tag @s[tag=Furnace1] add fu1_T1AO
tag @s[tag=Furnace2] add fu1_T2AO
tag @s[tag=Furnace3] add fu1_T3AO
execute if score @s[tag=!fu1_T1AO,tag=!fu1_T2AO,tag=!fu1_T3AO] xp < t1 xp run tag @s add fu1_NEXp
tag @s[tag=!fu1_T1AO,tag=!fu1_T2AO,tag=!fu1_T3AO,tag=!fu1_NEXp] add fu1_temp

#Announce Tier Already Owned
tellraw @s[tag=fu1_T1AO] [{"text":"You already own ","color":"gray"},{"text":"Furnace I","color":"red","bold":true},{"text":"!"}]
tellraw @s[tag=fu1_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Furnace II","color":"red","bold":true},{"text":"!"}]
tellraw @s[tag=fu1_T3AO] [{"text":"You already own ","color":"gray"},{"text":"Furnace III","color":"red","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=fu1_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Furnace 1
tellraw @s[tag=fu1_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Furnace I","color":"red","bold":true},{"text":"!"}]
tag @s[tag=fu1_temp] add Furnace1
xp add @s[tag=fu1_temp,tag=Furnace1] -300

#Remove CheckTags
tag @s[tag=fu1_T1AO] remove fu1_T1AO
tag @s[tag=fu1_T2AO] remove fu1_T2AO
tag @s[tag=fu1_T3AO] remove fu1_T3AO
tag @s[tag=fu1_NEXp] remove fu1_NEXp
tag @s[tag=fu1_temp] remove fu1_temp
scoreboard players set @s Furnace1 0