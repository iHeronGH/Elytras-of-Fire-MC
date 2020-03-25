#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Add CheckTags
execute if entity @s[scores={NaturesWrath1=1..},tag=NaturesWrath1] run tag @s add NaturesWrath1_T1AO
execute if entity @s[scores={NaturesWrath1=1..},tag=NaturesWrath2] run tag @s add NaturesWrath1_T2AO
execute if score @s[scores={NaturesWrath1=1..},tag=!NaturesWrath1_T1AO,tag=!NaturesWrath1_T2AO] xp < t2 xp run tag @s add NaturesWrath1_NEXp
execute if entity @s[scores={NaturesWrath1=1..},tag=!NaturesWrath1,tag=!NaturesWrath2,tag=!NaturesWrath1_T1AO,tag=!NaturesWrath1_T2AO,tag=!NaturesWrath1_NEXp] if score @s xp >= t2 xp run tag @s add NaturesWrath1_temp

#Announce Tier Already Owned
execute if entity @s[tag=NaturesWrath1_T1AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"Nature's Wrath I","color":"dark_green","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=NaturesWrath1_T2AO] run tellraw @s ["",{"text":"You already own ","color":"gray"},{"text":"Nature's Wrath II","color":"dark_green","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=NaturesWrath1_NEXp] run tellraw @s ["",{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Purchase NaturesWrath 1
execute if entity @s[tag=NaturesWrath1_temp] if score @s xp >= t2 xp run tellraw @s ["",{"text":"You have successfully purchased ","color":"gray"},{"text":"Nature's Wrath I","color":"dark_green","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=NaturesWrath1_temp] if score @s xp >= t2 xp run tag @s add NaturesWrath1
execute if entity @s[tag=NaturesWrath1_temp,tag=NaturesWrath1] if score @s xp >= t2 xp run xp add @s -450

#Remove CheckTags
tag @s[tag=NaturesWrath1_T1AO] remove NaturesWrath1_T1AO
tag @s[tag=NaturesWrath1_T2AO] remove NaturesWrath1_T2AO
tag @s[tag=NaturesWrath1_NEXp] remove NaturesWrath1_NEXp
tag @s[tag=NaturesWrath1_temp] remove NaturesWrath1_temp
scoreboard players set @s NaturesWrath1 0