#Add CheckTags
tag @s[tag=Wildfire1] add wf1_T1AO
tag @s[tag=Wildfire2] add wf1_T2AO
execute if score @s[tag=!wf1_T1AO,tag=!wf1_T2AO] xp < t2 xp run tag @s add wf1_NEXp
tag @s[tag=!wf1_T1AO,tag=!wf1_T2AO,tag=!wf1_NEXp] add wf1_temp

#Announce Tier Already Owned
tellraw @s[tag=wf1_T1AO] [{"text":"You already own ","color":"gray"},{"text":"Wildfire I","color":"red","bold":true},{"text":"!"}]
tellraw @s[tag=wf1_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Wildfire II","color":"red","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=wf1_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Wildfire 1
tellraw @s[tag=wf1_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Wildfire I","color":"red","bold":true},{"text":"!"}]
tag @s[tag=wf1_temp] add Wildfire1
xp add @s[tag=wf1_temp,tag=Wildfire1] -450

#Remove CheckTags
tag @s[tag=wf1_T1AO] remove wf1_T1AO
tag @s[tag=wf1_T2AO] remove wf1_T2AO
tag @s[tag=wf1_NEXp] remove wf1_NEXp
tag @s[tag=wf1_temp] remove wf1_temp
scoreboard players set @s Wildfire1 0