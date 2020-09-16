#Add CheckTags
tag @s[tag=Photosynthesis1] add ps2_T1AO
tag @s[tag=Photosynthesis2] add ps2_T2AO
execute if score @s[tag=ps2_T1AO,tag=!ps2_T2AO] xp < t1 xp run tag @s add ps2_NEXp
tag @s[tag=ps2_T1AO,tag=!ps2_T2AO,tag=!ps2_NEXp] add ps2_temp

#Announce Tier Already Owned
tellraw @s[tag=ps2_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Photosynthesis II","color":"dark_green","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=ps2_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
tellraw @s[tag=!ps2_T1AO,tag=!ps2_T2AO] [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Photosynthesis 2
tellraw @s[tag=ps2_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Photosynthesis II","color":"dark_green","bold":true},{"text":"!"}]
tag @s[tag=ps2_temp] add Photosynthesis2
xp add @s[tag=ps2_temp,tag=Photosynthesis2] -300
tag @s[tag=ps2_temp,tag=Photosynthesis2] remove Photosynthesis1

#Remove CheckTags
tag @s[tag=ps2_T1AO] remove ps2_T1AO
tag @s[tag=ps2_T2AO] remove ps2_T2AO
tag @s[tag=ps2_NEXp] remove ps2_NEXp
tag @s[tag=ps2_temp] remove ps2_temp
scoreboard players set @s Photosynthesis2 0