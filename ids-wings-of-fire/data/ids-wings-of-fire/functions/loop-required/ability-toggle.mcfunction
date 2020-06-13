#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Run Ability Toggle

	#Teamless Toggle
execute if entity @s[team=] run tag @s add abilToggOff

	#Add Check Tags
execute if entity @s[tag=!abilSwitch,scores={abilities=1..}] run tag @s add abilSwitch
execute if entity @s[tag=abilSwitch,tag=!S6,nbt={Inventory:[{Slot:6b}]}] unless entity @s[nbt={Inventory:[{Slot:6b,tag:{primary:1}}]}] run tag @s add S6
execute if entity @s[tag=abilSwitch,tag=!S7,nbt={Inventory:[{Slot:7b}]}] unless entity @s[nbt={Inventory:[{Slot:7b,tag:{secondary:1}}]}] run tag @s add S7
execute if entity @s[tag=abilSwitch,tag=!S8,nbt={Inventory:[{Slot:8b}]}] unless entity @s[nbt={Inventory:[{Slot:8b,tag:{tertiary:1}}]}] run tag @s add S8

	#Add/Remove Deactivation Tags
execute if entity @s[tag=abilSwitch,tag=abilToggOff,tag=!S6,tag=!S7,tag=!S8] run tag @s remove abilToggOff
execute if entity @s[tag=abilSwitch,tag=!abilToggOff,nbt={Inventory:[{tag:{primary:1},tag:{secondary:1},tag:{tertiary:1}}]}] run tag @s add abilToggOff

	#Warn Players
execute if entity @s[tag=S6] run tellraw @s [{"text":"Remove the item in your 7th slot to activate abilities!","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/trigger abilities"}}]
execute if entity @s[tag=S7] run tellraw @s [{"text":"Remove the item in your 8th slot to activate abilities!","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/trigger abilities"}}]
execute if entity @s[tag=S8] run tellraw @s [{"text":"Remove the item in your 9th slot to activate abilities!","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/trigger abilities"}}]

	#Successful Swap Messages
execute if entity @s[tag=abilSwitch,tag=!abilToggOff,tag=!S6,tag=!S7,tag=!S8] run tellraw @s [{"text":"Abilities toggled on!","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger abilities"}}]
execute if entity @s[tag=abilSwitch,tag=abilToggOff,tag=!S6,tag=!S7,tag=!S8] run tellraw @s [{"text":"Abilities toggled off!","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/trigger abilities"}}]

	#Ability Removal
execute if entity @s[tag=abilSwitch,tag=abilToggOff] run clear @s #ids-wings-of-fire:abilities{primary:1}
execute if entity @s[tag=abilSwitch,tag=abilToggOff] run clear @s #ids-wings-of-fire:abilities{secondary:1}
execute if entity @s[tag=abilSwitch,tag=abilToggOff] run clear @s #ids-wings-of-fire:abilities{tertiary:1}

	#Remove Check Tags
execute if entity @s[tag=S6] run tag @s remove S6
execute if entity @s[tag=S7] run tag @s remove S7
execute if entity @s[tag=S8] run tag @s remove S8
execute if entity @s[tag=abilSwitch] run tag @s remove abilSwitch
execute if entity @s[scores={abilities=1..}] run scoreboard players set @s abilities 0