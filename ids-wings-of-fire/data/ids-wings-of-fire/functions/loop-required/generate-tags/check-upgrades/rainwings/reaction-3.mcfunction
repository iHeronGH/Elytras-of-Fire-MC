#Add CheckTags
tag @s[tag=Reaction1] add re3_T1AO
tag @s[tag=Reaction2] add re3_T2AO
tag @s[tag=Reaction3] add re3_T3AO
execute if score @s[tag=re3_T2AO,tag=!re3_T3AO] xp < t1 xp run tag @s add re3_NEXp
tag @s[tag=!re3_T1AO,tag=re3_T2AO,tag=!re3_T3AO,tag=!re3_NEXp] add re3_temp

#Announce Tier Already Owned
tellraw @s[tag=re3_T3AO] [{"text":"You already own ","color":"gray"},{"text":"Reaction III","color":"white","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=re3_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
tellraw @s[tag=!re3_T2AO,tag=!re3_T3AO] [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Reaction 3
tellraw @s[tag=re3_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Reaction III","color":"white","bold":true},{"text":"!"}]
tag @s[tag=re3_temp] add Reaction3
xp add @s[tag=re3_temp,tag=Reaction3] -300
tag @s[tag=re3_temp,tag=Reaction3] remove Reaction2

#Remove CheckTags
tag @s[tag=re3_T1AO] remove re3_T1AO
tag @s[tag=re3_T2AO] remove re3_T2AO
tag @s[tag=re3_T3AO] remove re3_T3AO
tag @s[tag=re3_NEXp] remove re3_NEXp
tag @s[tag=re3_temp] remove re3_temp
scoreboard players set @s Reaction3 0