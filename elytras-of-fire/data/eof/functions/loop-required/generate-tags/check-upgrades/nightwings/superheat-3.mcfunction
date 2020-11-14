#Add CheckTags
tag @s[tag=Superheat1] add sh3_T1AO
tag @s[tag=Superheat2] add sh3_T2AO
tag @s[tag=Superheat3] add sh3_T3AO
execute if score @s[tag=sh3_T2AO,tag=!sh3_T3AO] xp < t1 xp run tag @s add sh3_NEXp
tag @s[tag=!sh3_T1AO,tag=sh3_T2AO,tag=!sh3_T3AO,tag=!sh3_NEXp] add sh3_temp

#Announce Tier Already Owned
tellraw @s[tag=sh3_T3AO] [{"text":"You already own ","color":"gray"},{"text":"Superheat III","color":"red","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=sh3_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
tellraw @s[tag=!sh3_T2AO,tag=!sh3_T3AO] [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Superheat 3
tellraw @s[tag=sh3_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Superheat III","color":"red","bold":true},{"text":"!"}]
tag @s[tag=sh3_temp] add Superheat3
xp add @s[tag=sh3_temp,tag=Superheat3] -300
tag @s[tag=sh3_temp,tag=Superheat3] remove Superheat2

#Remove CheckTags
tag @s[tag=sh3_T1AO] remove sh3_T1AO
tag @s[tag=sh3_T2AO] remove sh3_T2AO
tag @s[tag=sh3_T3AO] remove sh3_T3AO
tag @s[tag=sh3_NEXp] remove sh3_NEXp
tag @s[tag=sh3_temp] remove sh3_temp
scoreboard players set @s Superheat3 0