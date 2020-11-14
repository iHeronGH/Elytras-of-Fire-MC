#Add CheckTags
tag @s[tag=Furnace1] add fu2_T1AO
tag @s[tag=Furnace2] add fu2_T2AO
tag @s[tag=Furnace3] add fu2_T3AO
execute if score @s[tag=fu2_T1AO,tag=!fu2_T2AO,tag=!fu2_T3AO] xp < t1 xp run tag @s add fu2_NEXp
tag @s[tag=fu2_T1AO,tag=!fu2_T2AO,tag=!fu2_T3AO,tag=!fu2_NEXp] add fu2_temp

#Announce Tier Already Owned
tellraw @s[tag=fu2_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Furnace II","color":"red","bold":true},{"text":"!"}]
tellraw @s[tag=fu2_T3AO] [{"text":"You already own ","color":"gray"},{"text":"Furnace III","color":"red","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=fu2_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
tellraw @s[tag=!fu2_T1AO,tag=!fu2_T2AO,tag=!fu2_T3AO] [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Furnace 2
tellraw @s[tag=fu2_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Furnace II","color":"red","bold":true},{"text":"!"}]
tag @s[tag=fu2_temp] add Furnace2
xp add @s[tag=fu2_temp,tag=Furnace2] -300
tag @s[tag=fu2_temp,tag=Furnace2] remove Furnace1

#Remove CheckTags
tag @s[tag=fu2_T1AO] remove fu2_T1AO
tag @s[tag=fu2_T2AO] remove fu2_T2AO
tag @s[tag=fu2_T3AO] remove fu2_T3AO
tag @s[tag=fu2_NEXp] remove fu2_NEXp
tag @s[tag=fu2_temp] remove fu2_temp
scoreboard players set @s Furnace2 0