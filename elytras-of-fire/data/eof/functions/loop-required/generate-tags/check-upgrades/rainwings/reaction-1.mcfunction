#Add CheckTags
tag @s[tag=Reaction1] add re1_T1AO
tag @s[tag=Reaction2] add re1_T2AO
tag @s[tag=Reaction3] add re1_T3AO
execute if score @s[tag=!re1_T1AO,tag=!re1_T2AO,tag=!re1_T3AO] xp < t1 xp run tag @s add re1_NEXp
tag @s[tag=!re1_T1AO,tag=!re1_T2AO,tag=!re1_T3AO,tag=!re1_NEXp] add re1_temp

#Announce Tier Already Owned
tellraw @s[tag=re1_T1AO] [{"text":"You already own ","color":"gray"},{"text":"Reaction I","color":"white","bold":true},{"text":"!"}]
tellraw @s[tag=re1_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Reaction II","color":"white","bold":true},{"text":"!"}]
tellraw @s[tag=re1_T3AO] [{"text":"You already own ","color":"gray"},{"text":"Reaction III","color":"white","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=re1_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Reaction 1
tellraw @s[tag=re1_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Reaction I","color":"white","bold":true},{"text":"!"}]
tag @s[tag=re1_temp] add Reaction1
xp add @s[tag=re1_temp,tag=Reaction1] -300

#Remove CheckTags
tag @s[tag=re1_T1AO] remove re1_T1AO
tag @s[tag=re1_T2AO] remove re1_T2AO
tag @s[tag=re1_T3AO] remove re1_T3AO
tag @s[tag=re1_NEXp] remove re1_NEXp
tag @s[tag=re1_temp] remove re1_temp
scoreboard players set @s Reaction1 0