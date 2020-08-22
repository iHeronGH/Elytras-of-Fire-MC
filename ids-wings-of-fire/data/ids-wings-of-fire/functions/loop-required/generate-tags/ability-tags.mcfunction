#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Tag Pri, Sec, Ter, Act
tag @a[tag=Dragon,scores={Primary=6},tag=!Primary] add Primary
tag @a[tag=Dragon,scores={Secondary=7},tag=!Secondary] add Secondary
tag @a[tag=Dragon,scores={Tertiary=8},tag=!Tertiary] add Tertiary
tag @a[tag=Dragon,scores={Activator=-106},tag=!Activator] add Activator

execute at @a[tag=Dragon] unless entity @p[scores={Primary=6},tag=Primary] run tag @p remove Primary
execute at @a[tag=Dragon] unless entity @p[scores={Secondary=7},tag=Secondary] run tag @p remove Secondary
execute at @a[tag=Dragon] unless entity @p[scores={Tertiary=8},tag=Tertiary] run tag @p remove Tertiary
execute at @a[tag=Dragon] unless entity @p[scores={Activator=-106},tag=Activator] run tag @p remove Activator