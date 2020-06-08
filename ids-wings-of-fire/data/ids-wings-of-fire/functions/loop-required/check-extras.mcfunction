#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Check Extras
execute store result score @s Primary run data get entity @s Inventory[{tag:{primary:1}}].Slot
execute store result score @s Secondary run data get entity @s Inventory[{tag:{secondary:1}}].Slot
execute store result score @s Tertiary run data get entity @s Inventory[{tag:{tertiary:1}}].Slot
execute store result score @s Activator run data get entity @s Inventory[{tag:{activator:1}}].Slot

#Erase Extras
execute unless entity @s[scores={Primary=6}] run clear @s #ids-wings-of-fire:abilities{primary:1}
execute unless entity @s[scores={Secondary=7}] run clear @s #ids-wings-of-fire:abilities{secondary:1}
execute unless entity @s[scores={Tertiary=8}] run clear @s #ids-wings-of-fire:abilities{tertiary:1}