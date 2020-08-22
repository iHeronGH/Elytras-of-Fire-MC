#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

	#None
execute as @p[distance=0,tag=!Scorch1,tag=!Scorch2,tag=!Scorch3,tag=!Dehydrate1,tag=!Dehydrate2,tag=!Desolation1] run function ids-wings-of-fire:loop-required/generate-hotbars/sandwings/breath-sandwing-fire

	#Scorch
execute if entity @p[tag=Scorch1] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/sandwings/sand-primary/sc/sc1
execute if entity @p[tag=Scorch2] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/sandwings/sand-primary/sc/sc2
execute if entity @p[tag=Scorch3] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/sandwings/sand-primary/sc/sc3

	#Dehydrate
execute if entity @p[tag=Dehydrate1] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/sandwings/sand-primary/dh/dh1
execute if entity @p[tag=Dehydrate2] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/sandwings/sand-primary/dh/dh2

	#Desolation
execute if entity @p[tag=Desolation1] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/sandwings/sand-primary/de/de1