#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w
execute if entity @s[tag=!SON6,nbt={Inventory:[{Slot:6b}]}] unless entity @s[nbt={Inventory:[{Slot:6b,tag:{primary:1}}]}] run tag @s add SON6
execute if entity @s[tag=!SON7,nbt={Inventory:[{Slot:7b}]}] unless entity @s[nbt={Inventory:[{Slot:7b,tag:{secondary:1}}]}] run tag @s add SON7
execute if entity @s[tag=!SON8,nbt={Inventory:[{Slot:8b}]}] unless entity @s[nbt={Inventory:[{Slot:8b,tag:{tertiary:1}}]}] run tag @s add SON8

execute if entity @s[tag=SON6] run tellraw @s [{"text":"Remove the item in your 7th slot to activate abilities!","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/trigger abilities"}}]
execute if entity @s[tag=SON7] run tellraw @s [{"text":"Remove the item in your 8th slot to activate abilities!","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/trigger abilities"}}]
execute if entity @s[tag=SON8] run tellraw @s [{"text":"Remove the item in your 9th slot to activate abilities!","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/trigger abilities"}}]

execute if entity @s[tag=!SON6,tag=!SON7,tag=!SON8] run tag @s remove abilToggOff
execute if entity @s[tag=!SON6,tag=!SON7,tag=!SON8] run tellraw @s [{"text":"Abilities toggled on!","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/trigger abilities"}}]

execute if entity @s[tag=SON6] run tag @s remove SON6
execute if entity @s[tag=SON7] run tag @s remove SON7
execute if entity @s[tag=SON8] run tag @s remove SON8
tag @s remove toggSwitch