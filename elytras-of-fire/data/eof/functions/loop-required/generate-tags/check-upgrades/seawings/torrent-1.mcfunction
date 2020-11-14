#Add CheckTags
tag @s[tag=Torrent1] add to1_T1AO
execute if score @s[tag=!to1_T1AO] xp < t3 xp run tag @s add to1_NEXp
tag @s[tag=!to1_T1AO,tag=!to1_NEXp] add to1_temp

#Announce Tier Already Owned
tellraw @s[tag=to1_T1AO] [{"text":"You already own ","color":"gray"},{"text":"Torrent I","color":"aqua","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=to1_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Torrent 1
tellraw @s[tag=to1_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Torrent I","color":"aqua","bold":true},{"text":"!"}]
tag @s[tag=to1_temp] add Torrent1
xp add @s[tag=to1_temp,tag=Torrent1] -900

#Remove CheckTags
tag @s[tag=to1_T1AO] remove to1_T1AO
tag @s[tag=to1_NEXp] remove to1_NEXp
tag @s[tag=to1_temp] remove to1_temp
scoreboard players set @s Torrent1 0