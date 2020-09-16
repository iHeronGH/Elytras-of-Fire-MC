#Add CheckTags
tag @s[tag=Streamline1] add sl2_T1AO
tag @s[tag=Streamline2] add sl2_T2AO
execute if score @s[tag=sl2_T1AO,tag=!sl2_T2AO] xp < t1 xp run tag @s add sl2_NEXp
tag @s[tag=Streamline1,tag=!Streamline2,tag=sl2_T1AO,tag=!sl2_T2AO,tag=!sl2_NEXp] add sl2_temp

#Announce Tier Already Owned
tellraw @s[tag=sl2_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Streamline II","color":"dark_aqua","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=sl2_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
tellraw @s[tag=!sl2_T1AO,tag=!sl2_T2AO] [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase Streamline 2
tellraw @s[tag=sl2_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Streamline II","color":"dark_aqua","bold":true},{"text":"!"}]
tag @s[tag=sl2_temp] add Streamline2
xp add @s[tag=sl2_temp,tag=Streamline2] -300
tag @s[tag=sl2_temp,tag=Streamline2] remove Streamline1

#Remove CheckTags
tag @s[tag=sl2_T1AO] remove sl2_T1AO
tag @s[tag=sl2_T2AO] remove sl2_T2AO
tag @s[tag=sl2_NEXp] remove sl2_NEXp
tag @s[tag=sl2_temp] remove sl2_temp
scoreboard players set @s Streamline2 0