#Add CheckTags
tag @s[tag=Superheat1] add sh1_T1AO
tag @s[tag=Superheat2] add sh1_T2AO
tag @s[tag=Superheat3] add sh1_T3AO
execute if score @s[tag=!sh1_T1AO,tag=!sh1_T2AO,tag=!sh1_T3AO] xp < t1 xp run tag @s add sh1_NEXp
tag @s[tag=!sh1_T1AO,tag=!sh1_T2AO,tag=!sh1_T3AO,tag=!sh1_NEXp] add sh1_temp

#Announce Tier Already Owned
tellraw @s[tag=sh1_T1AO] [{"text":"You already own ","color":"gray"},{"text":"Superheat I","color":"red","bold":true},{"text":"!"}]
tellraw @s[tag=sh1_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Superheat II","color":"red","bold":true},{"text":"!"}]
tellraw @s[tag=sh1_T3AO] [{"text":"You already own ","color":"gray"},{"text":"Superheat III","color":"red","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=sh1_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Superheat 1
tellraw @s[tag=sh1_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Superheat I","color":"red","bold":true},{"text":"!"}]
tag @s[tag=sh1_temp] add Superheat1
xp add @s[tag=sh1_temp,tag=Superheat1] -300

#Remove CheckTags
tag @s[tag=sh1_T1AO] remove sh1_T1AO
tag @s[tag=sh1_T2AO] remove sh1_T2AO
tag @s[tag=sh1_T3AO] remove sh1_T3AO
tag @s[tag=sh1_NEXp] remove sh1_NEXp
tag @s[tag=sh1_temp] remove sh1_temp
scoreboard players set @s Superheat1 0