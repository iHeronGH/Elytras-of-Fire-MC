#Add CheckTags
tag @s[tag=Aftershock1] add as1_T1AO
tag @s[tag=Aftershock2] add as1_T2AO
execute if score @s[tag=!as1_T1AO,tag=!as1_T2AO] xp < t4 xp run tag @s add as1_NEXp
tag @s[tag=!as1_T1AO,tag=!as1_T2AO,tag=!as1_NEXp] add as1_temp

#Announce Tier Already Owned
tellraw @s[tag=as1_T1AO] [{"text":"You already own ","color":"gray"},{"text":"Aftershock I","color":"gold","bold":true},{"text":"!"}]
tellraw @s[tag=as1_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Aftershock II","color":"gold","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=as1_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Aftershock 1
tellraw @s[tag=as1_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Aftershock I","color":"gold","bold":true},{"text":"!"}]
tag @s[tag=as1_temp] add Aftershock1
xp add @s[tag=as1_temp,tag=Aftershock1] -500

#Remove CheckTags
tag @s[tag=as1_T1AO] remove as1_T1AO
tag @s[tag=as1_T2AO] remove as1_T2AO
tag @s[tag=as1_NEXp] remove as1_NEXp
tag @s[tag=as1_temp] remove as1_temp
scoreboard players set @s Aftershock1 0