#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Add CheckTags
execute if entity @s[tag=NaturesWrath1] run tag @s add NaturesWrath2_T1AO
execute if entity @s[tag=NaturesWrath2] run tag @s add NaturesWrath2_T2AO
execute if score @s[tag=NaturesWrath2_T1AO,tag=!NaturesWrath2_T2AO] xp < t2 xp run tag @s add NaturesWrath2_NEXp
execute if entity @s[tag=NaturesWrath2_T1AO,tag=!NaturesWrath2_T2AO,tag=!NaturesWrath2_NEXp] run tag @s add NaturesWrath2_temp

#Announce Tier Already Owned
execute if entity @s[tag=NaturesWrath2_T2AO] run tellraw @s [{"text":"You already own ","color":"gray"},{"text":"Nature's Wrath II","color":"dark_green","bold":true},{"text":"!","color":"gray"}]

#Announce Not Enough XP
execute if entity @s[tag=NaturesWrath2_NEXp] run tellraw @s [{"text":"You don't have enough XP to purchase this upgrade!","color":"gray"}]

#Announce Buy Previous Tier
execute if entity @s[tag=!NaturesWrath2_T1AO,tag=!NaturesWrath2_T2AO] run tellraw @s [{"text":"You must buy the previous upgrade in order to purchase this!","color":"gray"}]

#Purchase NaturesWrath 2
execute if entity @s[tag=NaturesWrath2_temp] run tellraw @s [{"text":"You have successfully purchased ","color":"gray"},{"text":"Nature's Wrath II","color":"dark_green","bold":true},{"text":"!","color":"gray"}]
execute if entity @s[tag=NaturesWrath2_temp] run tag @s add NaturesWrath2
execute if entity @s[tag=NaturesWrath2_temp,tag=NaturesWrath2] run xp add @s -450
execute if entity @s[tag=NaturesWrath2_temp,tag=NaturesWrath2] run tag @s remove NaturesWrath1

#Remove CheckTags
tag @s[tag=NaturesWrath2_T1AO] remove NaturesWrath2_T1AO
tag @s[tag=NaturesWrath2_T2AO] remove NaturesWrath2_T2AO
tag @s[tag=NaturesWrath2_NEXp] remove NaturesWrath2_NEXp
tag @s[tag=NaturesWrath2_temp] remove NaturesWrath2_temp
scoreboard players set @s NaturesWrath2 0