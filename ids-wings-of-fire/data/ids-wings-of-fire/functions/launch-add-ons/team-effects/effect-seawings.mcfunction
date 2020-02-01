#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Effect All SeaWings
effect give @e[type=player,team=SeaWings] minecraft:night_vision 1000000 0 true
execute as @e[type=player,team=SeaWings] at @s if block ~ ~ ~ minecraft:water run effect give @s minecraft:conduit_power 1000000 1 true
execute as @e[type=player,team=SeaWings] at @s unless block ~ ~ ~ minecraft:water run effect clear @s minecraft:conduit_power

#When in Water, Apply DS 3
execute as @e[type=player,team=SeaWings,nbt=!{Inventory:[{Slot:100b,id:"minecraft:leather_boots",tag:{display:{Name:"{\"text\":\"§3SeaWing Scales\"}"},Enchantments:[{id:"minecraft:depth_strider",lvl:3}]}}]}] at @s if block ~ ~ ~ water run replaceitem entity @s armor.feet minecraft:leather_boots{display:{Name:"{\"text\":\"§3SeaWing Scales\"}",color:4159204},Unbreakable:1,HideFlags:63,Enchantments:[{id:"minecraft:depth_strider",lvl:3},{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:vanishing_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"SeaWing Scales",Slot:"feet",Amount:4,Operation:0,UUIDMost:54384,UUIDLeast:117669},{AttributeName:"generic.armorToughness",Name:"SeaWing Scales",Slot:"feet",Amount:3,Operation:0,UUIDMost:91828,UUIDLeast:147886}]} 1
execute as @e[type=player,team=SeaWings,nbt={Inventory:[{Slot:100b,id:"minecraft:leather_boots",tag:{display:{Name:"{\"text\":\"§3SeaWing Scales\"}"},Enchantments:[{id:"minecraft:depth_strider",lvl:3}]}}]}] at @s unless block ~ ~ ~ water run replaceitem entity @s armor.feet minecraft:leather_boots{display:{Name:"{\"text\":\"§3SeaWing Scales\"}",color:4159204},Unbreakable:1,HideFlags:63,Enchantments:[{id:"minecraft:binding_curse",lvl:1},{id:"minecraft:vanishing_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"SeaWing Scales",Slot:"feet",Amount:2,Operation:0,UUIDMost:69596,UUIDLeast:166896},{AttributeName:"generic.armorToughness",Name:"SeaWing Scales",Slot:"feet",Amount:3,Operation:0,UUIDMost:29126,UUIDLeast:121305}]} 1

#Ocean's Blessing Effect
execute as @e[type=player,tag=Porous,nbt={SelectedItem:{tag:{oceanicbless:1}}}] at @s if block ~ ~ ~ minecraft:water run effect give @s minecraft:speed 1 3 true
execute as @e[type=player,tag=Porous,nbt=!{SelectedItem:{tag:{oceanicbless:1}}}] at @s if block ~ ~ ~ minecraft:water run effect clear @s minecraft:speed