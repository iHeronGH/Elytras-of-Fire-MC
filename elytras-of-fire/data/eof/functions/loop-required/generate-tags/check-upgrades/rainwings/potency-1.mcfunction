#Add CheckTags
tag @s[tag=Potency1] add po1_T1AO
execute if score @s[tag=!po1_T1AO] xp < t3 xp run tag @s add po1_NEXp
tag @s[tag=!po1_T1AO,tag=!po1_NEXp] add po1_temp

#Announce Tier Already Owned
tellraw @s[tag=po1_T1AO] [{"text":"You already own ","color":"gray"},{"text":"Potency I","color":"white","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=po1_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Potency 1
tellraw @s[tag=po1_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Potency I","color":"white","bold":true},{"text":"!"}]
tag @s[tag=po1_temp] add Potency1
xp add @s[tag=po1_temp,tag=Potency1] -900

#Remove CheckTags
tag @s[tag=po1_T1AO] remove po1_T1AO
tag @s[tag=po1_NEXp] remove po1_NEXp
tag @s[tag=po1_temp] remove po1_temp
scoreboard players set @s Potency1 0