	#None
execute as @p[distance=0,tag=!Photosynthesis1,tag=!Photosynthesis2,tag=!NaturesWrath1,tag=!NaturesWrath2] run function ids-wings-of-fire:loop-required/generate-hotbars/rainwings/fertilize

	#Photosynthesis
execute if entity @p[tag=Photosynthesis1] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/rainwings/rain-secondary/ps/ps1
execute if entity @p[tag=Photosynthesis2] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/rainwings/rain-secondary/ps/ps2

	#Nature's Wrath
execute if entity @p[tag=NaturesWrath1] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/rainwings/rain-secondary/nw/nw1
execute if entity @p[tag=NaturesWrath2] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/rainwings/rain-secondary/nw/nw2