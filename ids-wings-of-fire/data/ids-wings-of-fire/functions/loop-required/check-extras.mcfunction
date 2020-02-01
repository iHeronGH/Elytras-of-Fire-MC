#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Check Extras
execute as @e[type=player] store result score @e[type=player] Primary run data get entity @s Inventory[{tag:{primary:1}}].Slot
execute unless entity @e[type=player,scores={Primary=3}] run function ids-wings-of-fire:launch-add-ons/erase-items/erase-primaries

execute as @e[type=player] store result score @e[type=player] Secondary run data get entity @s Inventory[{tag:{secondary:1}}].Slot
execute unless entity @e[type=player,scores={Secondary=4}] run function ids-wings-of-fire:launch-add-ons/erase-items/erase-secondaries

#execute as @e[type=player] store result score @e[type=player] Tertiary run data get entity @s Inventory[{tag:{tertiary:1}}].Slot
#execute unless entity @e[type=player,scores={Tertiary=5}] run function ids-wings-of-fire:launch-add-ons/erase-items/erase-tertiaries