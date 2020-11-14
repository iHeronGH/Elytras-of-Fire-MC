#Add CheckTags
tag @s[tag=Waterlogged1] add wl2_T1AO
tag @s[tag=Waterlogged2] add wl2_T2AO
execute if score @s[tag=wl2_T1AO,tag=!wl2_T2AO] xp < t2 xp run tag @s add wl2_NEXp
tag @s[tag=Waterlogged1,tag=!Waterlogged2,tag=wl2_T1AO,tag=!wl2_T2AO,tag=!wl2_NEXp] add wl2_temp

#Announce Tier Already Owned
tellraw @s[tag=wl2_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Waterlogged II","color":"aqua","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=wl2_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
tellraw @s[tag=!wl2_T1AO,tag=!wl2_T2AO] [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Waterlogged 2
tellraw @s[tag=wl2_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Waterlogged II","color":"aqua","bold":true},{"text":"!"}]
tag @s[tag=wl2_temp] add Waterlogged2
xp add @s[tag=wl2_temp,tag=Waterlogged2] -450
tag @s[tag=wl2_temp,tag=Waterlogged2] remove Waterlogged1

#Remove CheckTags
tag @s[tag=wl2_T1AO] remove wl2_T1AO
tag @s[tag=wl2_T2AO] remove wl2_T2AO
tag @s[tag=wl2_NEXp] remove wl2_NEXp
tag @s[tag=wl2_temp] remove wl2_temp
scoreboard players set @s Waterlogged2 0