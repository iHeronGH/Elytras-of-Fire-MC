#Add CheckTags
tag @s[tag=Waterlogged1] add wl1_T1AO
tag @s[tag=Waterlogged2] add wl1_T2AO
execute if score @s[tag=!wl1_T1AO,tag=!wl1_T2AO] xp < t2 xp run tag @s add wl1_NEXp
tag @s[tag=!Waterlogged1,tag=!Waterlogged2,tag=!wl1_T1AO,tag=!wl1_T2AO,tag=!wl1_NEXp] add wl1_temp

#Announce Tier Already Owned
tellraw @s[tag=wl1_T1AO] [{"text":"You already own ","color":"gray"},{"text":"Waterlogged I","color":"aqua","bold":true},{"text":"!"}]
tellraw @s[tag=wl1_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Waterlogged II","color":"aqua","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=wl1_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Waterlogged 1
tellraw @s[tag=wl1_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Waterlogged I","color":"aqua","bold":true},{"text":"!"}]
tag @s[tag=wl1_temp] add Waterlogged1
xp add @s[tag=wl1_temp,tag=Waterlogged1] -450

#Remove CheckTags
tag @s[tag=wl1_T1AO] remove wl1_T1AO
tag @s[tag=wl1_T2AO] remove wl1_T2AO
tag @s[tag=wl1_NEXp] remove wl1_NEXp
tag @s[tag=wl1_temp] remove wl1_temp
scoreboard players set @s Waterlogged1 0