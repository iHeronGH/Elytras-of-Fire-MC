#Add CheckTags
tag @s[tag=Blackout1] add bo1_T1AO
tag @s[tag=Blackout2] add bo1_T2AO
execute if score @s[tag=!bo1_T1AO,tag=!bo1_T2AO] xp < t4 xp run tag @s add bo1_NEXp
tag @s[tag=!bo1_T1AO,tag=!bo1_T2AO,tag=!bo1_NEXp] add bo1_temp

#Announce Tier Already Owned
tellraw @s[tag=bo1_T1AO] [{"text":"You already own ","color":"gray"},{"text":"Blackout I","color":"dark_gray","bold":true},{"text":"!"}]
tellraw @s[tag=bo1_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Blackout II","color":"dark_gray","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=bo1_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Blackout 1
tellraw @s[tag=bo1_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Blackout I","color":"dark_gray","bold":true},{"text":"!"}]
tag @s[tag=bo1_temp] add Blackout1
xp add @s[tag=bo1_temp,tag=Blackout1] -500

#Remove CheckTags
tag @s[tag=bo1_T1AO] remove bo1_T1AO
tag @s[tag=bo1_T2AO] remove bo1_T2AO
tag @s[tag=bo1_NEXp] remove bo1_NEXp
tag @s[tag=bo1_temp] remove bo1_temp
scoreboard players set @s Blackout1 0