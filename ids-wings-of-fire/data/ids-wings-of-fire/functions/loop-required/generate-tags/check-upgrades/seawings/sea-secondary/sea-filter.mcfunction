	#None
execute as @p[distance=0,tag=!Streamline1,tag=!Streamline2,tag=!Amphibious1,tag=!Amphibious2] run function ids-wings-of-fire:loop-required/generate-hotbars/seawings/ocean-bless

	#Streamline
execute if entity @p[tag=Streamline1] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/seawings/sea-secondary/sl/sl1
execute if entity @p[tag=Streamline2] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/seawings/sea-secondary/sl/sl2

	#Amphibious
execute if entity @p[tag=Amphibious1] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/seawings/sea-secondary/am/am1
execute if entity @p[tag=Amphibious2] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/seawings/sea-secondary/am/am2