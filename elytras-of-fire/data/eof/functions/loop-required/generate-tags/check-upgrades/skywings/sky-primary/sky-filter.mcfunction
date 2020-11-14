	#None
execute as @p[distance=0,tag=!Oxygenate1,tag=!Oxygenate2,tag=!Oxygenate3,tag=!Wildfire1,tag=!Wildfire2,tag=!Blaze1] run function eof:loop-required/generate-hotbars/skywings/breath-skywing-fire

	#Oxygenate
execute if entity @p[tag=Oxygenate1] run function eof:loop-required/generate-tags/check-upgrades/skywings/sky-primary/ox/ox1
execute if entity @p[tag=Oxygenate2] run function eof:loop-required/generate-tags/check-upgrades/skywings/sky-primary/ox/ox2
execute if entity @p[tag=Oxygenate3] run function eof:loop-required/generate-tags/check-upgrades/skywings/sky-primary/ox/ox3

	#Wildfire
execute if entity @p[tag=Wildfire1] run function eof:loop-required/generate-tags/check-upgrades/skywings/sky-primary/wf/wf1
execute if entity @p[tag=Wildfire2] run function eof:loop-required/generate-tags/check-upgrades/skywings/sky-primary/wf/wf2

	#Blaze
execute if entity @p[tag=Blaze1] run function eof:loop-required/generate-tags/check-upgrades/skywings/sky-primary/bl/bl1