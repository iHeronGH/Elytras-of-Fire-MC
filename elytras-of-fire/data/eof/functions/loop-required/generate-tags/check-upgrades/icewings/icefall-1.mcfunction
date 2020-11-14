#Add CheckTags
tag @s[tag=Icefall1] add if1_T1AO
execute if score @s[tag=!if1_T1AO] xp < t3 xp run tag @s add if1_NEXp
tag @s[tag=!if1_T1AO,tag=!if1_NEXp] add if1_temp

#Announce Tier Already Owned
tellraw @s[tag=if1_T1AO] [{"text":"You already own ","color":"gray"},{"text":"Icefall I","color":"aqua","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=if1_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Icefall 1
tellraw @s[tag=if1_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Icefall I","color":"aqua","bold":true},{"text":"!"}]
tag @s[tag=if1_temp] add Icefall1
xp add @s[tag=if1_temp,tag=Icefall1] -900

#Remove CheckTags
tag @s[tag=if1_T1AO] remove if1_T1AO
tag @s[tag=if1_NEXp] remove if1_NEXp
tag @s[tag=if1_temp] remove if1_temp
scoreboard players set @s Icefall1 0