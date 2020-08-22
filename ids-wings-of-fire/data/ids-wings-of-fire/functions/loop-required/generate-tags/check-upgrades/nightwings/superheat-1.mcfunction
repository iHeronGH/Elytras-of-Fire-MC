#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Add CheckTags
execute if entity @s[tag=Superheat1] run tag @s add Superheat1_T1AO
execute if entity @s[tag=Superheat2] run tag @s add Superheat1_T2AO
execute if entity @s[tag=Superheat3] run tag @s add Superheat1_T3AO
execute if score @s[tag=!Superheat1_T1AO,tag=!Superheat1_T2AO,tag=!Superheat1_T3AO] xp < t1 xp run tag @s add Superheat1_NEXp
execute if entity @s[tag=!Superheat1_T1AO,tag=!Superheat1_T2AO,tag=!Superheat1_T3AO,tag=!Superheat1_NEXp] run tag @s add Superheat1_temp

#Announce Tier Already Owned
execute if entity @s[tag=Superheat1_T1AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Superheat I","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Superheat1_T2AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Superheat II","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Superheat1_T3AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Superheat III","color":"red","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Superheat1_NEXp] run tellraw @s [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Superheat 1
execute if entity @s[tag=Superheat1_temp] run tellraw @s [{"text":"You have successfully purchased ","color":"gray"},{"text":"Superheat I","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Superheat1_temp] run tag @s add Superheat1
execute if entity @s[tag=Superheat1_temp,tag=Superheat1] run xp add @s -300

#Remove CheckTags
tag @s[tag=Superheat1_T1AO] remove Superheat1_T1AO
tag @s[tag=Superheat1_T2AO] remove Superheat1_T2AO
tag @s[tag=Superheat1_T3AO] remove Superheat1_T3AO
tag @s[tag=Superheat1_NEXp] remove Superheat1_NEXp
tag @s[tag=Superheat1_temp] remove Superheat1_temp
scoreboard players set @s Superheat1 0