#Add CheckTags
tag @s[tag=GaleForce1] add gf1_T1AO
tag @s[tag=GaleForce2] add gf1_T2AO
execute if score @s[tag=!gf1_T1AO,tag=!gf1_T2AO] xp < t1 xp run tag @s add gf1_NEXp
tag @s[tag=!gf1_T1AO,tag=!gf1_T2AO,tag=!gf1_NEXp] add gf1_temp

#Announce Tier Already Owned
tellraw @s[tag=gf1_T1AO] [{"text":"You already own ","color":"gray"},{"text":"Gale Force I","color":"dark_red","bold":true},{"text":"!"}]
tellraw @s[tag=gf1_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Gale Force II","color":"dark_red","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=gf1_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase GaleForce 1
tellraw @s[tag=gf1_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Gale Force I","color":"dark_red","bold":true},{"text":"!"}]
tag @s[tag=gf1_temp] add GaleForce1
xp add @s[tag=gf1_temp,tag=GaleForce1] -300

#Remove CheckTags
tag @s[tag=gf1_T1AO] remove gf1_T1AO
tag @s[tag=gf1_T2AO] remove gf1_T2AO
tag @s[tag=gf1_NEXp] remove gf1_NEXp
tag @s[tag=gf1_temp] remove gf1_temp
scoreboard players set @s GaleForce1 0