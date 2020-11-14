#Add CheckTags
tag @s[tag=NaturesWrath1] add nw1_T1AO
tag @s[tag=NaturesWrath2] add nw1_T2AO
execute if score @s[tag=!nw1_T1AO,tag=!nw1_T2AO] xp < t4 xp run tag @s add nw1_NEXp
tag @s[tag=!nw1_T1AO,tag=!nw1_T2AO,tag=!nw1_NEXp] add nw1_temp

#Announce Tier Already Owned
tellraw @s[tag=nw1_T1AO] [{"text":"You already own ","color":"gray"},{"text":"Nature's Wrath I","color":"dark_green","bold":true},{"text":"!"}]
tellraw @s[tag=nw1_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Nature's Wrath II","color":"dark_green","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=nw1_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase NaturesWrath 1
tellraw @s[tag=nw1_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Nature's Wrath I","color":"dark_green","bold":true},{"text":"!"}]
tag @s[tag=nw1_temp] add NaturesWrath1
xp add @s[tag=nw1_temp,tag=NaturesWrath1] -500

#Remove CheckTags
tag @s[tag=nw1_T1AO] remove nw1_T1AO
tag @s[tag=nw1_T2AO] remove nw1_T2AO
tag @s[tag=nw1_NEXp] remove nw1_NEXp
tag @s[tag=nw1_temp] remove nw1_temp
scoreboard players set @s NaturesWrath1 0