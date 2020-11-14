	#None
execute as @p[distance=0,tag=!ArcticCore1,tag=!ArcticCore2,tag=!ArcticCore3,tag=!Permafrost1,tag=!Permafrost2,tag=!Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/icewings/breath-frost

	#Arctic Core
execute if entity @p[tag=ArcticCore1] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/icewings/ice-primary/ac/ac1
execute if entity @p[tag=ArcticCore2] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/icewings/ice-primary/ac/ac2
execute if entity @p[tag=ArcticCore3] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/icewings/ice-primary/ac/ac3

	#Permafrost
execute if entity @p[tag=Permafrost1] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/icewings/ice-primary/pf/pf1
execute if entity @p[tag=Permafrost2] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/icewings/ice-primary/pf/pf2

	#Icefall
execute if entity @p[tag=Icefall1] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/icewings/ice-primary/if/if1