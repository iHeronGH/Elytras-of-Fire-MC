#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Give Armour
execute if entity @e[type=player,team=SandWings,nbt=!{Inventory:[{Slot:103b,tag:{sandarmor:1}}]}] run replaceitem entity @e[type=player,team=SandWings,nbt=!{Inventory:[{Slot:103b,id:"minecraft:leather_helmet",tag:{display:{Name:"{\"text\":\"§eSandWing Scales\"}"}}}]}] armor.head minecraft:leather_helmet{display:{Name:"{\"text\":\"§eSandWing Scales\"}",color:14406560},Unbreakable:1,HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:vanishing_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"SandWing Scales",Slot:"head",Amount:3,Operation:0,UUIDMost:14535,UUIDLeast:167294},{AttributeName:"generic.armorToughness",Name:"SandWing Scales",Slot:"head",Amount:3,Operation:0,UUIDMost:87328,UUIDLeast:137279}],sandarmor:1} 1
execute if entity @e[type=player,team=SandWings,nbt=!{Inventory:[{Slot:102b,tag:{sandarmor:1}}]}] run replaceitem entity @e[type=player,team=SandWings,nbt=!{Inventory:[{Slot:102b,id:"minecraft:leather_chestplate",tag:{display:{Name:"{\"text\":\"§eSandWing Scales\"}"}}}]}] armor.chest minecraft:leather_chestplate{display:{Name:"{\"text\":\"§eSandWing Scales\"}",color:14406560},Unbreakable:1,HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:vanishing_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"SandWing Scales",Slot:"chest",Amount:6,Operation:0,UUIDMost:16285,UUIDLeast:132982},{AttributeName:"generic.armorToughness",Name:"SandWing Scales",Slot:"chest",Amount:3,Operation:0,UUIDMost:25299,UUIDLeast:166433}],sandarmor:1} 1
execute if entity @e[type=player,team=SandWings,nbt=!{Inventory:[{Slot:101b,tag:{sandarmor:1}}]}] run replaceitem entity @e[type=player,team=SandWings,nbt=!{Inventory:[{Slot:101b,id:"minecraft:leather_leggings",tag:{display:{Name:"{\"text\":\"§eSandWing Scales\"}"}}}]}] armor.legs minecraft:leather_leggings{display:{Name:"{\"text\":\"§eSandWing Scales\"}",color:14406560},Unbreakable:1,HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:vanishing_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"SandWing Scales",Slot:"legs",Amount:5,Operation:0,UUIDMost:65176,UUIDLeast:187188},{AttributeName:"generic.armorToughness",Name:"SandWing Scales",Slot:"legs",Amount:3,Operation:0,UUIDMost:16320,UUIDLeast:158283}],sandarmor:1} 1
execute if entity @e[type=player,team=SandWings,nbt=!{Inventory:[{Slot:100b,tag:{sandarmor:1}}]}] run replaceitem entity @e[type=player,team=SandWings,nbt=!{Inventory:[{Slot:100b,id:"minecraft:leather_boots",tag:{display:{Name:"{\"text\":\"§eSandWing Scales\"}"}}}]}] armor.feet minecraft:leather_boots{display:{Name:"{\"text\":\"§eSandWing Scales\"}",color:14406560},Unbreakable:1,HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:vanishing_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"SandWing Scales",Slot:"feet",Amount:3,Operation:0,UUIDMost:69596,UUIDLeast:166896},{AttributeName:"generic.armorToughness",Name:"SandWing Scales",Slot:"feet",Amount:3,Operation:0,UUIDMost:51997,UUIDLeast:102194}],sandarmor:1} 1

#Take Armour
clear @e[type=player,team=!SandWings,nbt={Inventory:[{tag:{sandarmor:1}}]}] #ids-wings-of-fire:leather-armour{sandarmor:1}