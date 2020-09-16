#Add CheckTags
tag @s[tag=Superheat1] add sh2_T1AO
tag @s[tag=Superheat2] add sh2_T2AO
tag @s[tag=Superheat3] add sh2_T3AO
execute if score @s[tag=sh2_T1AO,tag=!sh2_T2AO,tag=!sh2_T3AO] xp < t1 xp run tag @s add sh2_NEXp
tag @s[tag=sh2_T1AO,tag=!sh2_T2AO,tag=!sh2_T3AO,tag=!sh2_NEXp] add sh2_temp

#Announce Tier Already Owned
tellraw @s[tag=sh2_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Superheat II","color":"red","bold":true},{"text":"!"}]
tellraw @s[tag=sh2_T3AO] [{"text":"You already own ","color":"gray"},{"text":"Superheat III","color":"red","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=sh2_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
tellraw @s[tag=!sh2_T1AO,tag=!sh2_T2AO,tag=!sh2_T3AO] [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Superheat 2
tellraw @s[tag=sh2_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Superheat II","color":"red","bold":true},{"text":"!"}]
tag @s[tag=sh2_temp] add Superheat2
xp add @s[tag=sh2_temp,tag=Superheat2] -300
tag @s[tag=sh2_temp,tag=Superheat2] remove Superheat1

#Remove CheckTags
tag @s[tag=sh2_T1AO] remove sh2_T1AO
tag @s[tag=sh2_T2AO] remove sh2_T2AO
tag @s[tag=sh2_T3AO] remove sh2_T3AO
tag @s[tag=sh2_NEXp] remove sh2_NEXp
tag @s[tag=sh2_temp] remove sh2_temp
scoreboard players set @s Superheat2 0