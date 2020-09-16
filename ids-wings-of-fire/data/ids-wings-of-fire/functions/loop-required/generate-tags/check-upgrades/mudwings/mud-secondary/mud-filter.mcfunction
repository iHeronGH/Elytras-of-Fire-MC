	#None
execute as @p[distance=0,tag=!Tremors1,tag=!Tremors2,tag=!Aftershock1,tag=!Aftershock2] run function ids-wings-of-fire:loop-required/generate-hotbars/mudwings/tremor-tremble

	#Tremors
execute if entity @p[tag=Tremors1] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/mudwings/mud-secondary/tr/tr1
execute if entity @p[tag=Tremors2] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/mudwings/mud-secondary/tr/tr2
	
	#Aftershock
execute if entity @p[tag=Aftershock1] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/mudwings/mud-secondary/as/as1
execute if entity @p[tag=Aftershock2] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/mudwings/mud-secondary/as/as2