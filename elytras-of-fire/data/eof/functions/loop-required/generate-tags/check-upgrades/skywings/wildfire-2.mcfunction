#Add CheckTags
tag @s[tag=Wildfire1] add wf2_T1AO
tag @s[tag=Wildfire2] add wf2_T2AO
execute if score @s[tag=wf2_T1AO,tag=!wf2_T2AO] xp < t2 xp run tag @s add wf2_NEXp
tag @s[tag=wf2_T1AO,tag=!wf2_T2AO,tag=!wf2_NEXp] add wf2_temp

#Announce Tier Already Owned
tellraw @s[tag=wf2_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Wildfire II","color":"red","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=wf2_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
tellraw @s[tag=!wf2_T1AO,tag=!wf2_T2AO] [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Wildfire 2
tellraw @s[tag=wf2_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Wildfire II","color":"red","bold":true},{"text":"!"}]
tag @s[tag=wf2_temp] add Wildfire2
xp add @s[tag=wf2_temp,tag=Wildfire2] -450
tag @s[tag=wf2_temp,tag=Wildfire2] remove Wildfire1

#Remove CheckTags
tag @s[tag=wf2_T1AO] remove wf2_T1AO
tag @s[tag=wf2_T2AO] remove wf2_T2AO
tag @s[tag=wf2_NEXp] remove wf2_NEXp
tag @s[tag=wf2_temp] remove wf2_temp
scoreboard players set @s Wildfire2 0