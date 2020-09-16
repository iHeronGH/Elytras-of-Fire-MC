#Add CheckTags
tag @s[tag=Scorch1] add sc2_T1AO
tag @s[tag=Scorch2] add sc2_T2AO
tag @s[tag=Scorch3] add sc2_T3AO
execute if score @s[tag=sc2_T1AO,tag=!sc2_T2AO,tag=!sc2_T3AO] xp < t1 xp run tag @s add sc2_NEXp
tag @s[tag=sc2_T1AO,tag=!sc2_T2AO,tag=!sc2_T3AO,tag=!sc2_NEXp] add sc2_temp

#Announce Tier Already Owned
tellraw @s[tag=sc2_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Scorch II","color":"red","bold":true},{"text":"!"}]
tellraw @s[tag=sc2_T3AO] [{"text":"You already own ","color":"gray"},{"text":"Scorch III","color":"red","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=sc2_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
tellraw @s[tag=!sc2_T1AO,tag=!sc2_T2AO,tag=!sc2_T3AO] [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Scorch 2
tellraw @s[tag=sc2_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Scorch II","color":"red","bold":true},{"text":"!"}]
tag @s[tag=sc2_temp] add Scorch2
xp add @s[tag=sc2_temp,tag=Scorch2] -300
tag @s[tag=sc2_temp,tag=Scorch2] remove Scorch1

#Remove CheckTags
tag @s[tag=sc2_T1AO] remove sc2_T1AO
tag @s[tag=sc2_T2AO] remove sc2_T2AO
tag @s[tag=sc2_T3AO] remove sc2_T3AO
tag @s[tag=sc2_NEXp] remove sc2_NEXp
tag @s[tag=sc2_temp] remove sc2_temp
scoreboard players set @s Scorch2 0