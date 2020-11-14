#Add CheckTags
tag @s[tag=NaturesWrath1] add nw2_T1AO
tag @s[tag=NaturesWrath2] add nw2_T2AO
execute if score @s[tag=nw2_T1AO,tag=!nw2_T2AO] xp < t4 xp run tag @s add nw2_NEXp
tag @s[tag=nw2_T1AO,tag=!nw2_T2AO,tag=!nw2_NEXp] add nw2_temp

#Announce Tier Already Owned
tellraw @s[tag=nw2_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Nature's Wrath II","color":"dark_green","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=nw2_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
tellraw @s[tag=!nw2_T1AO,tag=!nw2_T2AO] [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase NaturesWrath 2
tellraw @s[tag=nw2_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Nature's Wrath II","color":"dark_green","bold":true},{"text":"!"}]
tag @s[tag=nw2_temp] add NaturesWrath2
xp add @s[tag=nw2_temp,tag=NaturesWrath2] -500
tag @s[tag=nw2_temp,tag=NaturesWrath2] remove NaturesWrath1

#Remove CheckTags
tag @s[tag=nw2_T1AO] remove nw2_T1AO
tag @s[tag=nw2_T2AO] remove nw2_T2AO
tag @s[tag=nw2_NEXp] remove nw2_NEXp
tag @s[tag=nw2_temp] remove nw2_temp
scoreboard players set @s NaturesWrath2 0