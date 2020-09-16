#Add CheckTags
tag @s[tag=Aftershock1] add as2_T1AO
tag @s[tag=Aftershock2] add as2_T2AO
execute if score @s[tag=as2_T1AO,tag=!as2_T2AO] xp < t4 xp run tag @s add as2_NEXp
tag @s[tag=as2_T1AO,tag=!as2_T2AO,tag=!as2_NEXp] add as2_temp

#Announce Tier Already Owned
tellraw @s[tag=as2_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Aftershock II","color":"gold","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=as2_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
tellraw @s[tag=!as2_T1AO,tag=!as2_T2AO] [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Aftershock 2
tellraw @s[tag=as2_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Aftershock II","color":"gold","bold":true},{"text":"!"}]
tag @s[tag=as2_temp] add Aftershock2
xp add @s[tag=as2_temp,tag=Aftershock2] -500
tag @s[tag=as2_temp,tag=Aftershock2] remove Aftershock1

#Remove CheckTags
tag @s[tag=as2_T1AO] remove as2_T1AO
tag @s[tag=as2_T2AO] remove as2_T2AO
tag @s[tag=as2_NEXp] remove as2_NEXp
tag @s[tag=as2_temp] remove as2_temp
scoreboard players set @s Aftershock2 0