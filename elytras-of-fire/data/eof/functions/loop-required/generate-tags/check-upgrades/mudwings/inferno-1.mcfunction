#Add CheckTags
tag @s[tag=Inferno1] add in1_T1AO
execute if score @s[tag=!in1_T1AO] xp < t3 xp run tag @s add in1_NEXp
tag @s[tag=!in1_T1AO,tag=!in1_NEXp] add in1_temp

#Announce Tier Already Owned
tellraw @s[tag=in1_T1AO] [{"text":"You already own ","color":"gray"},{"text":"Inferno I","color":"red","bold":true},{"text":"!"}]

#Announce Not Enough XP
tellraw @s[tag=in1_NEXp] [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Inferno 1
tellraw @s[tag=in1_temp] [{"text":"You have successfully purchased ","color":"gray"},{"text":"Inferno I","color":"red","bold":true},{"text":"!"}]
tag @s[tag=in1_temp] add Inferno1
xp add @s[tag=in1_temp,tag=Inferno1] -900

#Remove CheckTags
tag @s[tag=in1_T1AO] remove in1_T1AO
tag @s[tag=in1_NEXp] remove in1_NEXp
tag @s[tag=in1_temp] remove in1_temp
scoreboard players set @s Inferno1 0