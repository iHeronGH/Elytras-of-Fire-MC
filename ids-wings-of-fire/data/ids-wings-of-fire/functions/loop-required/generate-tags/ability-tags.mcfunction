#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Tag Pri, Sec, Ter, Act
execute if entity @s[scores={Primary=6},tag=!Primary] run tag @s add Primary
execute if entity @s[scores={Secondary=7},tag=!Secondary] run tag @s add Secondary
execute if entity @s[scores={Tertiary=8},tag=!Tertiary] run tag @s add Tertiary
execute if entity @s[scores={Activator=-106},tag=!Activator] run tag @s add Activator

execute if entity @s[scores={Primary=0},tag=Primary] run tag @s remove Primary
execute if entity @s[scores={Secondary=0},tag=Secondary] run tag @s remove Secondary
execute if entity @s[scores={Tertiary=0},tag=Tertiary] run tag @s remove Tertiary
execute if entity @s[scores={Activator=0},tag=Activator] run tag @s remove Activator