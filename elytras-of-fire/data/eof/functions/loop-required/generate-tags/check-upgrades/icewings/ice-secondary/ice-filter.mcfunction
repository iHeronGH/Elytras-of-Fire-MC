	#None
execute as @p[distance=0,tag=!FreezingPoint1,tag=!FreezingPoint2,tag=!Chill1,tag=!Chill2] run function ids-wings-of-fire:loop-required/generate-hotbars/icewings/honed-slice

	#Freezing Point
execute if entity @p[tag=FreezingPoint1] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/icewings/ice-secondary/fp/fp1
execute if entity @p[tag=FreezingPoint2] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/icewings/ice-secondary/fp/fp2

	#Freezing Point
execute if entity @p[tag=Chill1] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/icewings/ice-secondary/ch/ch1
execute if entity @p[tag=Chill2] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/icewings/ice-secondary/ch/ch2