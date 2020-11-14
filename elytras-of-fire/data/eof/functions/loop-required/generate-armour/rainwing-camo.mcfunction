#Detect Block/Family & Change Armour

	#Families
execute if block ~ ~ ~ #eof:families/flat run function eof:loop-required/generate-armour/camo-flat
execute unless block ~ ~ ~ #eof:families/flat run function eof:loop-required/generate-armour/camo-full

	#Blocks
execute unless block ~ ~ ~ #eof:families/flat if block ~ ~-0.45 ~ grass_block run replaceitem entity @s armor.feet leather_boots{display:{Name:'{"text":"RainWing Scales","color":"green","italic":false}',color:6990400},HideFlags:63,Unbreakable:1b,rainarmor:1,tribearmor:1,Enchantments:[{id:"minecraft:feather_falling",lvl:2s},{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"armour",Amount:5,Operation:0,UUID:[I;-1544192295,1443512999,-1245704497,-1923544039],Slot:"feet"},{AttributeName:"generic.armor_toughness",Name:"toughness",Amount:4,Operation:0,UUID:[I;1492345086,625558052,-2088986731,1387130906],Slot:"feet"}]} 1

	#RW Armour
execute store result score @s feetCol run data get entity @s Inventory[{Slot:100b}].tag.display.color
execute store result score @s legsCol run data get entity @s Inventory[{Slot:101b}].tag.display.color
execute store result score @s chestCol run data get entity @s Inventory[{Slot:102b}].tag.display.color
execute store result score @s headCol run data get entity @s Inventory[{Slot:103b}].tag.display.color
execute unless score @s legsCol = @s feetCol run tag @s add matchLegs
execute unless score @s chestCol = @s feetCol run tag @s add matchChest
execute unless score @s headCol = @s feetCol run tag @s add matchHead
execute unless entity @s[tag=!matchLegs,tag=!matchChest,tag=!matchHead] run function eof:loop-required/generate-armour/match-rainwing-scales