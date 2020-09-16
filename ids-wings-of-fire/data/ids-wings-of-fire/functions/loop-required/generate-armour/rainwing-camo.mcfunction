#Detect Block/Family & Change Armour

	#Families
execute if block ~ ~ ~ #ids-wings-of-fire:families/flat run function ids-wings-of-fire:loop-required/generate-armour/camo-flat
execute unless block ~ ~ ~ #ids-wings-of-fire:families/flat run function ids-wings-of-fire:loop-required/generate-armour/camo-full

	#Blocks
execute unless block ~ ~ ~ #ids-wings-of-fire:families/flat if block ~ ~-0.45 ~ grass_block run replaceitem entity @s armor.feet leather_boots{display:{Name:'{"text":"RainWing Scales","color":"green","italic":false}',color:6990400},Unbreakable:1,HideFlags:63,Enchantments:[{id:"feather_falling",lvl:2},{id:"binding_curse",lvl:1},{id:"vanishing_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"armour",Slot:"feet",Amount:5,Operation:0,UUIDMost:76959,UUIDLeast:152955},{AttributeName:"generic.armorToughness",Name:"toughness",Slot:"feet",Amount:4,Operation:0,UUIDMost:37047,UUIDLeast:143229}],rainarmor:1,tribearmor:1} 1

	#RW Armour
execute store result score @s feetCol run data get entity @s Inventory[{Slot:100b}].tag.display.color
execute store result score @s legsCol run data get entity @s Inventory[{Slot:101b}].tag.display.color
execute store result score @s chestCol run data get entity @s Inventory[{Slot:102b}].tag.display.color
execute store result score @s headCol run data get entity @s Inventory[{Slot:103b}].tag.display.color
execute unless score @s legsCol = @s feetCol run tag @s add matchLegs
execute unless score @s chestCol = @s feetCol run tag @s add matchChest
execute unless score @s headCol = @s feetCol run tag @s add matchHead
execute unless entity @s[tag=!matchLegs,tag=!matchChest,tag=!matchHead] run function ids-wings-of-fire:loop-required/generate-armour/match-rainwing-scales