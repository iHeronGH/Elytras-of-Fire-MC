#Add CheckTags
tag @s[tag=Photosynthesis1] add ps1_T1AO
tag @s[tag=Photosynthesis2] add ps1_T2AO
execute if score @s[tag=!ps1_T1AO,tag=!ps1_T2AO] xp < t1 xp run tag @s add ps1_NEXp
tag @s[tag=!ps1_T1AO,tag=!ps1_T2AO,tag=!ps1_NEXp] add ps1_temp

#Announce Tier Already Owned
tellraw @s[tag=ps1_T1AO] [{"text":"You already own ","color":"gray"},{"text":"Photosynthesis I","color":"dark_green","bold":true},{"text":"!"}]
tellraw @s[tag=ps1_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Photosynthesis II","color":"dark_green","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=ps1_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Photosynthesis 1
tellraw @s[tag=ps1_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Photosynthesis I","color":"dark_green","bold":true},{"text":"!"}]
tag @s[tag=ps1_temp] add Photosynthesis1
xp add @s[tag=ps1_temp,tag=Photosynthesis1] -300

#Remove CheckTags
tag @s[tag=ps1_T1AO] remove ps1_T1AO
tag @s[tag=ps1_T2AO] remove ps1_T2AO
tag @s[tag=ps1_NEXp] remove ps1_NEXp
tag @s[tag=ps1_temp] remove ps1_temp
scoreboard players set @s Photosynthesis1 0