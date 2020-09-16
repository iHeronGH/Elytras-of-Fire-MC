	#None
execute as @p[distance=0,tag=!Reaction1,tag=!Reaction2,tag=!Reaction3,tag=!Noxious1,tag=!Noxious2,tag=!Potency1] run function ids-wings-of-fire:loop-required/generate-hotbars/rainwings/eject-venom

	#Reaction
execute if entity @p[tag=Reaction1] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/rainwings/rain-primary/re/re1
execute if entity @p[tag=Reaction2] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/rainwings/rain-primary/re/re2
execute if entity @p[tag=Reaction3] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/rainwings/rain-primary/re/re3
	
	#Noxious
execute if entity @p[tag=Noxious1] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/rainwings/rain-primary/no/no1
execute if entity @p[tag=Noxious2] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/rainwings/rain-primary/no/no2
	
	#Potency
execute if entity @p[tag=Potency1] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/rainwings/rain-primary/po/po1