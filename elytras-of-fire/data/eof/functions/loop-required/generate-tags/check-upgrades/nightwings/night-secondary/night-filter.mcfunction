	#None
execute as @p[distance=0,tag=!Corruption1,tag=!Corruption2,tag=!Blackout1,tag=!Blackout2] run function eof:loop-required/generate-hotbars/nightwings/dark-aura

	#Corruption
execute if entity @p[tag=Corruption1] run function eof:loop-required/generate-tags/check-upgrades/nightwings/night-secondary/co/co1
execute if entity @p[tag=Corruption2] run function eof:loop-required/generate-tags/check-upgrades/nightwings/night-secondary/co/co2

	#Blackout
execute if entity @p[tag=Blackout1] run function eof:loop-required/generate-tags/check-upgrades/nightwings/night-secondary/bo/bo1
execute if entity @p[tag=Blackout2] run function eof:loop-required/generate-tags/check-upgrades/nightwings/night-secondary/bo/bo2