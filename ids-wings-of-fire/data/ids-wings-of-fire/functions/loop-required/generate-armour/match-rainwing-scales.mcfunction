#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Edit Leggings Colour
execute if entity @s[tag=matchLegs] run data modify block 29999977 1 19832 Items[0].id set value "minecraft:leather_leggings"
execute if entity @s[tag=matchLegs] run data modify block 29999977 1 19832 Items[0].tag set from entity @s Inventory[{Slot:100b}].tag
execute if entity @s[tag=matchLegs] run data modify block 29999977 1 19832 Items[0].tag.AttributeModifiers[{Name:"armour"}] merge value {Slot:"legs",Amount:7,UUIDMost:123151,UUIDLeast:561738}
execute if entity @s[tag=matchLegs] run data modify block 29999977 1 19832 Items[0].tag.AttributeModifiers[{Name:"toughness"}] merge value {Slot:"legs",Amount:5,UUIDMost:34239,UUIDLeast:76923}
execute if entity @s[tag=matchLegs] run loot replace entity @s armor.legs 1 mine 29999977 1 19832 diamond_axe{drop_contents:true}
execute if score @s legsCol = @s feetCol run tag @s remove matchLegs

#Edit Chest Colour
execute if entity @s[tag=matchChest,tag=!isFlying] run data modify block 29999977 1 19832 Items[0].id set value "minecraft:leather_chestplate"
execute if entity @s[tag=matchChest,tag=isFlying] run data modify block 29999977 1 19832 Items[0].id set value "minecraft:elytra"
execute if entity @s[tag=matchChest] run data modify block 29999977 1 19832 Items[0].tag set from entity @s Inventory[{Slot:100b}].tag
execute if entity @s[tag=matchChest] run data modify block 29999977 1 19832 Items[0].tag.AttributeModifiers[{Name:"armour"}] merge value {Slot:"chest",Amount:7,UUIDMost:24892,UUIDLeast:196432}
execute if entity @s[tag=matchChest] run data modify block 29999977 1 19832 Items[0].tag.AttributeModifiers[{Name:"toughness"}] merge value {Slot:"chest",Amount:5,UUIDMost:16179,UUIDLeast:86162}
execute if entity @s[tag=matchChest] run loot replace entity @s armor.chest 1 mine 29999977 1 19832 diamond_axe{drop_contents:true}
execute if score @s chestCol = @s feetCol run tag @s remove matchChest

#Edit Helmet Colour
execute if entity @s[tag=matchHead] run data modify block 29999977 1 19832 Items[0].id set value "minecraft:leather_helmet"
execute if entity @s[tag=matchHead] run data modify block 29999977 1 19832 Items[0].tag set from entity @s Inventory[{Slot:100b}].tag
execute if entity @s[tag=matchHead] run data modify block 29999977 1 19832 Items[0].tag.AttributeModifiers[{Name:"armour"}] merge value {Slot:"head",Amount:5,UUIDMost:34922,UUIDLeast:205734}
execute if entity @s[tag=matchHead] run data modify block 29999977 1 19832 Items[0].tag.AttributeModifiers[{Name:"toughness"}] merge value {Slot:"head",Amount:5,UUIDMost:15249,UUIDLeast:91562}
execute if entity @s[tag=matchHead] run loot replace entity @s armor.head 1 mine 29999977 1 19832 diamond_axe{drop_contents:true}
execute if score @s headCol = @s feetCol run tag @s remove matchHead

#Revert Storage
execute if entity @s[tag=!matchHead,tag=!matchChest,tag=!matchLegs] unless data block 29999977 1 19832 Items[{id:"minecraft:oak_boat"}] run data modify block 29999977 1 19832 Items[0].id set value "minecraft:oak_boat"