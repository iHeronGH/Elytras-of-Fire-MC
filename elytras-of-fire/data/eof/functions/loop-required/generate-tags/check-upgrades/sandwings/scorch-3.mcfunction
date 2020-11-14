#Add CheckTags
tag @s[tag=Scorch1] add sc3_T1AO
tag @s[tag=Scorch2] add sc3_T2AO
tag @s[tag=Scorch3] add sc3_T3AO
execute if score @s[tag=sc3_T2AO,tag=!sc3_T3AO] xp < t1 xp run tag @s add sc3_NEXp
tag @s[tag=!sc3_T1AO,tag=sc3_T2AO,tag=!sc3_T3AO,tag=!sc3_NEXp] add sc3_temp

#Announce Tier Already Owned
tellraw @s[tag=sc3_T3AO] [{"text":"You already own ","color":"gray"},{"text":"Scorch III","color":"red","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=sc3_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
tellraw @s[tag=!sc3_T2AO,tag=!sc3_T3AO] [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Scorch 3
tellraw @s[tag=sc3_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Scorch III","color":"red","bold":true},{"text":"!"}]
tag @s[tag=sc3_temp] add Scorch3
xp add @s[tag=sc3_temp,tag=Scorch3] -300
tag @s[tag=sc3_temp,tag=Scorch3] remove Scorch2

#Remove CheckTags
tag @s[tag=sc3_T1AO] remove sc3_T1AO
tag @s[tag=sc3_T2AO] remove sc3_T2AO
tag @s[tag=sc3_T3AO] remove sc3_T3AO
tag @s[tag=sc3_NEXp] remove sc3_NEXp
tag @s[tag=sc3_temp] remove sc3_temp
scoreboard players set @s Scorch3 0