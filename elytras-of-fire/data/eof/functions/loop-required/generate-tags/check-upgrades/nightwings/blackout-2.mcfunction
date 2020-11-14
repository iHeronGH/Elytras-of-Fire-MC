#Add CheckTags
tag @s[tag=Blackout1] add bo2_T1AO
tag @s[tag=Blackout2] add bo2_T2AO
execute if score @s[tag=bo2_T1AO,tag=!bo2_T2AO] xp < t4 xp run tag @s add bo2_NEXp
tag @s[tag=bo2_T1AO,tag=!bo2_T2AO,tag=!bo2_NEXp] add bo2_temp

#Announce Tier Already Owned
tellraw @s[tag=bo2_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Blackout II","color":"dark_gray","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=bo2_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
tellraw @s[tag=!bo2_T1AO,tag=!bo2_T2AO] [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Blackout 2
tellraw @s[tag=bo2_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Blackout II","color":"dark_gray","bold":true},{"text":"!"}]
tag @s[tag=bo2_temp] add Blackout2
xp add @s[tag=bo2_temp,tag=Blackout2] -500
tag @s[tag=bo2_temp,tag=Blackout2] remove Blackout1

#Remove CheckTags
tag @s[tag=bo2_T1AO] remove bo2_T1AO
tag @s[tag=bo2_T2AO] remove bo2_T2AO
tag @s[tag=bo2_NEXp] remove bo2_NEXp
tag @s[tag=bo2_temp] remove bo2_temp
scoreboard players set @s Blackout2 0