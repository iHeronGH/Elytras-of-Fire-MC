#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Effect All MudWings
effect give @e[type=player,team=MudWings] minecraft:strength 1 1 true
effect give @e[type=player,team=MudWings] minecraft:slowness 1 0 true

#When in Water, Apply Resp. 3
execute as @e[type=player,team=MudWings,nbt=!{Inventory:[{Slot:103b,id:"minecraft:leather_helmet",tag:{display:{Name:"{\"text\":\"§6MudWing Scales\"}"},Enchantments:[{id:"minecraft:respiration",lvl:3}]}}]}] at @s if block ~ ~ ~ water run replaceitem entity @s armor.head minecraft:leather_helmet{display:{Name:"{\"text\":\"§6MudWing Scales\"}",color:"10378552"},Unbreakable:1,HideFlags:63,Enchantments:[{id:"minecraft:respiration",lvl:3},{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:vanishing_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"MudWing Scales",Slot:"head",Amount:4,Operation:0,UUIDMost:73983,UUIDLeast:136154},{AttributeName:"generic.armorToughness",Name:"MudWing Scales",Slot:"head",Amount:3,Operation:0,UUIDMost:88314,UUIDLeast:187476}]} 1
execute as @e[type=player,team=MudWings,nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet",tag:{display:{Name:"{\"text\":\"§6MudWing Scales\"}"},Enchantments:[{id:"minecraft:respiration",lvl:3}]}}]}] at @s unless block ~ ~ ~ water run replaceitem entity @s armor.head minecraft:leather_helmet{display:{Name:"{\"text\":\"§6MudWing Scales\"}",color:"10378552"},Unbreakable:1,HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:vanishing_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"MudWing Scales",Slot:"head",Amount:4,Operation:0,UUIDMost:66736,UUIDLeast:119463},{AttributeName:"generic.armorToughness",Name:"MudWing Scales",Slot:"head",Amount:3,Operation:0,UUIDMost:70806,UUIDLeast:175301}]} 1