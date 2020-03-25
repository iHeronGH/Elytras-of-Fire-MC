#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Add CheckTags
execute if entity @s[scores={Inferno1=1..},tag=Inferno1] run tag @s add Inferno_T1AO
execute if score @s[scores={Inferno1=1..},tag=!Inferno_T1AO] xp < t3 xp run tag @s add Inferno_NEXp
execute if entity @s[scores={Inferno1=1..},tag=!Inferno1,tag=!Inferno_T1AO,tag=!Inferno_NEXp] if score @s xp >= t3 xp run tag @s add Inferno_temp

#Announce Tier Already Owned
execute if entity @s[tag=Inferno_T1AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"Inferno I","color":"red","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=Inferno_NEXp] run tellraw @s ["",{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase Inferno 1
execute if entity @s[tag=Inferno_temp] run tellraw @s ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Inferno I","color":"red","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=Inferno_temp] run tag @s add Inferno1
execute if entity @s[tag=Inferno_temp,tag=Inferno1] run xp add @s -900

#Remove CheckTags
tag @s[tag=Inferno_T1AO] remove Inferno_T1AO
tag @s[tag=Inferno_NEXp] remove Inferno_NEXp
tag @s[tag=Inferno_temp] remove Inferno_temp
scoreboard players set @s Inferno1 0