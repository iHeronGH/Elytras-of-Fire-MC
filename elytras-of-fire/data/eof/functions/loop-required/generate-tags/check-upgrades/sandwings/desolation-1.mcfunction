#Add CheckTags
tag @s[tag=Desolation1] add de1_T1AO
execute if score @s[tag=!de1_T1AO] xp < t3 xp run tag @s add de1_NEXp
tag @s[tag=!de1_T1AO,tag=!de1_NEXp] add de1_temp

#Announce Tier Already Owned
tellraw @s[tag=de1_T1AO] [{"text":"You already own ","color":"gray"},{"text":"Desolation I","color":"red","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=de1_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Desolation 1
tellraw @s[tag=de1_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Desolation I","color":"red","bold":true},{"text":"!"}]
tag @s[tag=de1_temp] add Desolation1
xp add @s[tag=de1_temp,tag=Desolation1] -900

#Remove CheckTags
tag @s[tag=de1_T1AO] remove de1_T1AO
tag @s[tag=de1_NEXp] remove de1_NEXp
tag @s[tag=de1_temp] remove de1_temp
scoreboard players set @s Desolation1 0