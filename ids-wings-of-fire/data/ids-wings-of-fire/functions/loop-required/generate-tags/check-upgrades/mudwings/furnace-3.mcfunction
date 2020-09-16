#Add CheckTags
tag @s[tag=Furnace1] add fu3_T1AO
tag @s[tag=Furnace2] add fu3_T2AO
tag @s[tag=Furnace3] add fu3_T3AO
execute if score @s[tag=fu3_T2AO,tag=!fu3_T3AO] xp < t1 xp run tag @s add fu3_NEXp
tag @s[tag=!fu3_T1AO,tag=fu3_T2AO,tag=!fu3_T3AO,tag=!fu3_NEXp] add fu3_temp

#Announce Tier Already Owned
tellraw @s[tag=fu3_T3AO] [{"text":"You already own ","color":"gray"},{"text":"Furnace III","color":"red","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=fu3_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
tellraw @s[tag=!fu3_T2AO,tag=!fu3_T3AO] [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Furnace 3
tellraw @s[tag=fu3_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Furnace III","color":"red","bold":true},{"text":"!"}]
tag @s[tag=fu3_temp] add Furnace3
xp add @s[tag=fu3_temp,tag=Furnace3] -300
tag @s[tag=fu3_temp,tag=Furnace3] remove Furnace2

#Remove CheckTags
tag @s[tag=fu3_T1AO] remove fu3_T1AO
tag @s[tag=fu3_T2AO] remove fu3_T2AO
tag @s[tag=fu3_T3AO] remove fu3_T3AO
tag @s[tag=fu3_NEXp] remove fu3_NEXp
tag @s[tag=fu3_temp] remove fu3_temp
scoreboard players set @s Furnace3 0