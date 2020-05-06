#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Run Ability Toggle
scoreboard players enable @s[team=!] abilities
execute if entity @s[tag=!abilTogg1,tag=!abilTogg2,nbt=!{Inventory:[{Slot:6b},{Slot:7b},{Slot:8b}]}] run tag @s add abilTogg1

#Clear Abilities on Toggle
execute as @s[scores={abilities=2},nbt={Inventory:[{tag:{primary:1}}]}] run clear @s #ids-wings-of-fire:abilities{primary:1}
execute as @s[scores={abilities=2},nbt={Inventory:[{tag:{secondary:1}}]}] run clear @s #ids-wings-of-fire:abilities{secondary:1}
execute as @s[scores={abilities=2},nbt={Inventory:[{tag:{tertiary:1}}]}] run clear @s #ids-wings-of-fire:abilities{tertiary:1}

#Check for Item Removal
execute as @s[scores={abilities=3..},nbt={Inventory:[{Slot:6b}]}] run tag @s add S6
execute as @s[scores={abilities=3..},nbt={Inventory:[{Slot:7b}]}] run tag @s add S7
execute as @s[scores={abilities=3..},nbt={Inventory:[{Slot:8b}]}] run tag @s add S8

execute as @s[tag=S6] run tellraw @s [{"text":"Remove the item in the seventh slot of your hotbar to toggle abilities!","color":"red","bold":true}]
execute as @s[tag=S7] run tellraw @s [{"text":"Remove the item in the eighth slot of your hotbar to toggle abilities!","color":"red","bold":true}]
execute as @s[tag=S8] run tellraw @s [{"text":"Remove the item in the ninth slot of your hotbar to toggle abilities!","color":"red","bold":true}]

#Prepare for Next Toggle

	#Swap abilTogg1 / abilTogg2 Tags
execute as @s[scores={abilities=2},tag=!abilTogg2,tag=!S6,tag=!S7,tag=!S8] run tag @s add abilTogg2
execute as @s[scores={abilities=2},tag=abilTogg1] run tag @s remove abilTogg1

execute as @s[scores={abilities=1},tag=!abilTogg1,tag=!S6,tag=!S7,tag=!S8] run tag @s add abilTogg1
execute as @s[scores={abilities=1},tag=abilTogg2] run tag @s remove abilTogg2

	#Failsafe
execute as @s[scores={abilities=3..},tag=S6] run scoreboard players set @s abilities 2
execute as @s[scores={abilities=3..},tag=S7] run scoreboard players set @s abilities 2
execute as @s[scores={abilities=3..},tag=S8] run scoreboard players set @s abilities 2

	#Reset to 1
execute as @s[scores={abilities=3..}] run scoreboard players set @s abilities 1

	#Remove Tags
execute as @s[tag=S6] run tag @s remove S6
execute as @s[tag=S7] run tag @s remove S7
execute as @s[tag=S8] run tag @s remove S8