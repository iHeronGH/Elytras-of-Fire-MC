#Add CheckTags
tag @s[tag=Scorch1] add sc1_T1AO
tag @s[tag=Scorch2] add sc1_T2AO
tag @s[tag=Scorch3] add sc1_T3AO
execute if score @s[tag=!sc1_T1AO,tag=!sc1_T2AO,tag=!sc1_T3AO] xp < t1 xp run tag @s add sc1_NEXp
tag @s[tag=!sc1_T1AO,tag=!sc1_T2AO,tag=!sc1_T3AO,tag=!sc1_NEXp] add sc1_temp

#Announce Tier Already Owned
tellraw @s[tag=sc1_T1AO] [{"text":"You already own ","color":"gray"},{"text":"Scorch I","color":"red","bold":true},{"text":"!"}]
tellraw @s[tag=sc1_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Scorch II","color":"red","bold":true},{"text":"!"}]
tellraw @s[tag=sc1_T3AO] [{"text":"You already own ","color":"gray"},{"text":"Scorch III","color":"red","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=sc1_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Scorch 1
tellraw @s[tag=sc1_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Scorch I","color":"red","bold":true},{"text":"!"}]
tag @s[tag=sc1_temp] add Scorch1
xp add @s[tag=sc1_temp,tag=Scorch1] -300

#Remove CheckTags
tag @s[tag=sc1_T1AO] remove sc1_T1AO
tag @s[tag=sc1_T2AO] remove sc1_T2AO
tag @s[tag=sc1_T3AO] remove sc1_T3AO
tag @s[tag=sc1_NEXp] remove sc1_NEXp
tag @s[tag=sc1_temp] remove sc1_temp
scoreboard players set @s Scorch1 0