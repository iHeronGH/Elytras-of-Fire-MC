	#None
execute as @p[distance=0,tag=!GaleForce1,tag=!GaleForce2,tag=!Cyclone1,tag=!Cyclone2] run function eof:loop-required/generate-hotbars/skywings/second-wind

	#Gale Force
execute if entity @p[tag=GaleForce1] run function eof:loop-required/generate-tags/check-upgrades/skywings/sky-secondary/gf/gf1
execute if entity @p[tag=GaleForce2] run function eof:loop-required/generate-tags/check-upgrades/skywings/sky-secondary/gf/gf2

	#Cyclone
execute if entity @p[tag=Cyclone1] run function eof:loop-required/generate-tags/check-upgrades/skywings/sky-secondary/cy/cy1
execute if entity @p[tag=Cyclone2] run function eof:loop-required/generate-tags/check-upgrades/skywings/sky-secondary/cy/cy2