#Add CheckTags
tag @s[tag=Streamline1] add sl1_T1AO
tag @s[tag=Streamline2] add sl1_T2AO
execute if score @s[tag=!sl1_T1AO,tag=!sl1_T2AO] xp < t1 xp run tag @s add sl1_NEXp
tag @s[tag=!Streamline1,tag=!Streamline2,tag=!sl1_T1AO,tag=!sl1_T2AO,tag=!sl1_NEXp] add sl1_temp

#Announce Tier Already Owned
tellraw @s[tag=sl1_T1AO] [{"text":"You already own ","color":"gray"},{"text":"Streamline I","color":"dark_aqua","bold":true},{"text":"!"}]
tellraw @s[tag=sl1_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Streamline II","color":"dark_aqua","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=sl1_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Streamline 1
tellraw @s[tag=sl1_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Streamline I","color":"dark_aqua","bold":true},{"text":"!"}]
tag @s[tag=sl1_temp] add Streamline1
xp add @s[tag=sl1_temp,tag=Streamline1] -300

#Remove CheckTags
tag @s[tag=sl1_T1AO] remove sl1_T1AO
tag @s[tag=sl1_T2AO] remove sl1_T2AO
tag @s[tag=sl1_NEXp] remove sl1_NEXp
tag @s[tag=sl1_temp] remove sl1_temp
scoreboard players set @s Streamline1 0