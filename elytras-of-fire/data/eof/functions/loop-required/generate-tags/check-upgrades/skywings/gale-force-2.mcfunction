#Add CheckTags
tag @s[tag=GaleForce1] add gf2_T1AO
tag @s[tag=GaleForce2] add gf2_T2AO
execute if score @s[tag=gf2_T1AO,tag=!gf2_T2AO] xp < t1 xp run tag @s add gf2_NEXp
tag @s[tag=gf2_T1AO,tag=!gf2_T2AO,tag=!gf2_NEXp] add gf2_temp

#Announce Tier Already Owned
tellraw @s[tag=gf2_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Gale Force II","color":"dark_red","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=gf2_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
tellraw @s[tag=!gf2_T1AO,tag=!gf2_T2AO] [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase GaleForce 2
tellraw @s[tag=gf2_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Gale Force II","color":"dark_red","bold":true},{"text":"!"}]
tag @s[tag=gf2_temp] add GaleForce2
xp add @s[tag=gf2_temp,tag=GaleForce2] -300
tag @s[tag=gf2_temp,tag=GaleForce2] remove GaleForce1

#Remove CheckTags
tag @s[tag=gf2_T1AO] remove gf2_T1AO
tag @s[tag=gf2_T2AO] remove gf2_T2AO
tag @s[tag=gf2_NEXp] remove gf2_NEXp
tag @s[tag=gf2_temp] remove gf2_temp
scoreboard players set @s GaleForce2 0