#Edit Leggings Colour
execute if entity @s[tag=matchLegs] run data modify block 29999977 1 19832 Items[0].id set value "minecraft:leather_leggings"
execute if entity @s[tag=matchLegs] run data modify block 29999977 1 19832 Items[0].tag set from entity @s Inventory[{Slot:100b}].tag
execute if entity @s[tag=matchLegs] run data modify block 29999977 1 19832 Items[0].tag.AttributeModifiers[{Name:"armour"}] merge value {Slot:"legs",Amount:7,UUID:[I;135931536,1058033439,-1723345286,1810734050]}
execute if entity @s[tag=matchLegs] run data modify block 29999977 1 19832 Items[0].tag.AttributeModifiers[{Name:"toughness"}] merge value {Slot:"legs",Amount:5,UUID:[I;2084450252,-531215861,-1375027832,1017482123]}
execute if entity @s[tag=matchLegs] run loot replace entity @s armor.legs 1 mine 29999977 1 19832 iron_axe{drop_contents:true}
execute if score @s legsCol = @s feetCol run tag @s remove matchLegs

#Edit Chest Colour
execute if entity @s[tag=matchChest,tag=!isFlying] run data modify block 29999977 1 19832 Items[0].id set value "minecraft:leather_chestplate"
execute if entity @s[tag=matchChest,tag=isFlying] run data modify block 29999977 1 19832 Items[0].id set value "minecraft:elytra"
execute if entity @s[tag=matchChest] run data modify block 29999977 1 19832 Items[0].tag set from entity @s Inventory[{Slot:100b}].tag
execute if entity @s[tag=matchChest] run data modify block 29999977 1 19832 Items[0].tag.AttributeModifiers[{Name:"armour"}] merge value {Slot:"chest",Amount:7,UUID:[I;2075268614,-1243984267,-1941498337,-1682385524]}
execute if entity @s[tag=matchChest] run data modify block 29999977 1 19832 Items[0].tag.AttributeModifiers[{Name:"toughness"}] merge value {Slot:"chest",Amount:5,UUID:[I;216113767,579816930,-1611373366,-94643860]}
execute if entity @s[tag=matchChest] run loot replace entity @s armor.chest 1 mine 29999977 1 19832 iron_axe{drop_contents:true}
execute if score @s chestCol = @s feetCol run tag @s remove matchChest

#Edit Helmet Colour
execute if entity @s[tag=matchHead] run data modify block 29999977 1 19832 Items[0].id set value "minecraft:leather_helmet"
execute if entity @s[tag=matchHead] run data modify block 29999977 1 19832 Items[0].tag set from entity @s Inventory[{Slot:100b}].tag
execute if entity @s[tag=matchHead] run data modify block 29999977 1 19832 Items[0].tag.AttributeModifiers[{Name:"armour"}] merge value {Slot:"head",Amount:5,UUID:[I;-1921962271,235946855,-2047713820,-1791671516]}
execute if entity @s[tag=matchHead] run data modify block 29999977 1 19832 Items[0].tag.AttributeModifiers[{Name:"toughness"}] merge value {Slot:"head",Amount:5,UUID:[I;-1665775108,-46446814,-1366766591,989196738]}
execute if entity @s[tag=matchHead] run loot replace entity @s armor.head 1 mine 29999977 1 19832 iron_axe{drop_contents:true}
execute if score @s headCol = @s feetCol run tag @s remove matchHead

#Revert Storage
execute if entity @s[tag=!matchHead,tag=!matchChest,tag=!matchLegs] unless data block 29999977 1 19832 Items[{id:"minecraft:oak_boat"}] run data modify block 29999977 1 19832 Items[0].id set value "minecraft:oak_boat"