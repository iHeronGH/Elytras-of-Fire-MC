#Add CheckTags
tag @s[tag=Noxious1] add no1_T1AO
tag @s[tag=Noxious2] add no1_T2AO
execute if score @s[tag=!no1_T1AO,tag=!no1_T2AO] xp < t2 xp run tag @s add no1_NEXp
tag @s[tag=!no1_T1AO,tag=!no1_T2AO,tag=!no1_NEXp] add no1_temp

#Announce Tier Already Owned
tellraw @s[tag=no1_T1AO] [{"text":"You already own ","color":"gray"},{"text":"Noxious I","color":"white","bold":true},{"text":"!"}]
tellraw @s[tag=no1_T2AO] [{"text":"You already own ","color":"gray"},{"text":"Noxious II","color":"white","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=no1_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Noxious 1
tellraw @s[tag=no1_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Noxious I","color":"white","bold":true},{"text":"!"}]
tag @s[tag=no1_temp] add Noxious1
xp add @s[tag=no1_temp,tag=Noxious1] -450

#Remove CheckTags
tag @s[tag=no1_T1AO] remove no1_T1AO
tag @s[tag=no1_T2AO] remove no1_T2AO
tag @s[tag=no1_NEXp] remove no1_NEXp
tag @s[tag=no1_temp] remove no1_temp
scoreboard players set @s Noxious1 0