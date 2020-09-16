#Add CheckTags
tag @s[tag=Reaction1] add re2_T1AO
tag @s[tag=Reaction2] add re2_T2AO
tag @s[tag=Reaction3] add re2_T3AO
execute if score @s[tag=re2_T1AO,tag=!re2_T2AO,tag=!re2_T3AO] xp < t1 xp run tag @s add re2_NEXp
tag @s[tag=re2_T1AO,tag=!re2_T2AO,tag=!re2_T3AO,tag=!re2_NEXp] add re2_temp

#Announce Tier Already Owned
tellraw @s[tag=re2_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Reaction II","color":"white","bold":true},{"text":"!"}]
tellraw @s[tag=re2_T3AO] [{"text":"You already own ","color":"gray"},{"text":"Reaction III","color":"white","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=re2_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
tellraw @s[tag=!re2_T1AO,tag=!re2_T2AO,tag=!re2_T3AO] [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Reaction 2
tellraw @s[tag=re2_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Reaction II","color":"white","bold":true},{"text":"!"}]
tag @s[tag=re2_temp] add Reaction2
xp add @s[tag=re2_temp,tag=Reaction2] -300
tag @s[tag=re2_temp,tag=Reaction2] remove Reaction1

#Remove CheckTags
tag @s[tag=re2_T1AO] remove re2_T1AO
tag @s[tag=re2_T2AO] remove re2_T2AO
tag @s[tag=re2_T3AO] remove re2_T3AO
tag @s[tag=re2_NEXp] remove re2_NEXp
tag @s[tag=re2_temp] remove re2_temp
scoreboard players set @s Reaction2 0