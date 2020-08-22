#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

	#None
execute as @p[distance=0,tag=!Furnace1,tag=!Furnace2,tag=!Furnace3,tag=!Everburn1,tag=!Everburn2,tag=!Inferno1] run function ids-wings-of-fire:loop-required/generate-hotbars/mudwings/breath-mudwing-fire

	#Furnace
execute if entity @p[tag=Furnace1] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/mudwings/mud-primary/fu/fu1
execute if entity @p[tag=Furnace2] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/mudwings/mud-primary/fu/fu2
execute if entity @p[tag=Furnace3] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/mudwings/mud-primary/fu/fu3

	#Everburn
execute if entity @p[tag=Everburn1] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/mudwings/mud-primary/eb/eb1
execute if entity @p[tag=Everburn2] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/mudwings/mud-primary/eb/eb2

	#Inferno
execute if entity @p[tag=Inferno1] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/mudwings/mud-primary/in/in1