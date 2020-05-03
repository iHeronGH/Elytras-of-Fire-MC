#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Check Extras
execute store result score @s Primary run data get entity @s Inventory[{tag:{primary:1}}].Slot
execute store result score @s Secondary run data get entity @s Inventory[{tag:{secondary:1}}].Slot
execute unless entity @s[team=MudWings] store result score @s Tertiary run data get entity @s Inventory[{tag:{tertiary:1}}].Slot
execute store result score @s Activator run data get entity @s Inventory[{tag:{activator:1}}].Slot

#Erase Extras
execute unless entity @s[scores={Primary=6}] run function ids-wings-of-fire:launch-add-ons/erase-items/erase-primaries
execute unless entity @s[scores={Secondary=7}] run function ids-wings-of-fire:launch-add-ons/erase-items/erase-secondaries
execute as @s[team=!MudWings] unless entity @s[scores={Tertiary=8}] run function ids-wings-of-fire:launch-add-ons/erase-items/erase-tertiaries
execute if entity @s[team=MudWings] run scoreboard players set @s Tertiary 0