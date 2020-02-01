#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Check Upgrades

	#No Upgrades
execute if entity @e[type=player,team=SkyWings,tag=!Oxygenate1,tag=!Oxygenate2,tag=!Oxygenate3,tag=!Wildfire1,tag=!Wildfire2,tag=!Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/breath-fire

	#Mono
		#Oxygenate 1, 2, 3
execute if entity @e[type=player,team=SkyWings,tag=Oxygenate1,tag=!Wildfire1,tag=!Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/skywings/mono/cooldown1
execute if entity @e[type=player,team=SkyWings,tag=Oxygenate2,tag=!Wildfire1,tag=!Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/skywings/mono/cooldown2
execute if entity @e[type=player,team=SkyWings,tag=Oxygenate3,tag=!Wildfire1,tag=!Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/skywings/mono/cooldown3

		#Wildfire 1, 2
execute if entity @e[type=player,team=SkyWings,tag=!Oxygenate1,tag=Wildfire1,tag=!Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/skywings/mono/emberlinger1
execute if entity @e[type=player,team=SkyWings,tag=!Oxygenate1,tag=Wildfire2,tag=!Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/skywings/mono/emberlinger2

		#Blaze 1
execute if entity @e[type=player,team=SkyWings,tag=!Oxygenate1,tag=!Wildfire1,tag=Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/skywings/mono/rangeinc1

	#Duo
		#Oxygenate 1, 2, 3
		#Wildfire 1, 2
execute if entity @e[type=player,team=SkyWings,tag=Oxygenate1,tag=Wildfire1,tag=!Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/skywings/duo/cooldown1-emberlinger1
execute if entity @e[type=player,team=SkyWings,tag=Oxygenate1,tag=Wildfire2,tag=!Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/skywings/duo/cooldown1-emberlinger2
execute if entity @e[type=player,team=SkyWings,tag=Oxygenate2,tag=Wildfire1,tag=!Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/skywings/duo/cooldown2-emberlinger1
execute if entity @e[type=player,team=SkyWings,tag=Oxygenate2,tag=Wildfire2,tag=!Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/skywings/duo/cooldown2-emberlinger2
execute if entity @e[type=player,team=SkyWings,tag=Oxygenate3,tag=Wildfire1,tag=!Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/skywings/duo/cooldown3-emberlinger1
execute if entity @e[type=player,team=SkyWings,tag=Oxygenate3,tag=Wildfire2,tag=!Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/skywings/duo/cooldown3-emberlinger2

		#Oxygenate 1, 2, 3
		#Blaze 1
execute if entity @e[type=player,team=SkyWings,tag=Oxygenate1,tag=!Wildfire1,tag=Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/skywings/duo/cooldown1-rangeinc1
execute if entity @e[type=player,team=SkyWings,tag=Oxygenate2,tag=!Wildfire1,tag=Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/skywings/duo/cooldown2-rangeinc1
execute if entity @e[type=player,team=SkyWings,tag=Oxygenate3,tag=!Wildfire1,tag=Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/skywings/duo/cooldown3-rangeinc1

		#Wildfire 1, 2
		#Blaze 1
execute if entity @e[type=player,team=SkyWings,tag=!Oxygenate1,tag=Wildfire1,tag=Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/skywings/duo/emberlinger1-rangeinc1
execute if entity @e[type=player,team=SkyWings,tag=!Oxygenate1,tag=Wildfire2,tag=Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/skywings/duo/emberlinger2-rangeinc1

	#Trio
		#Oxygenate 1, 2, 3
		#Wildfire 1, 2
		#Blaze 1
execute if entity @e[type=player,team=SkyWings,tag=Oxygenate1,tag=Wildfire1,tag=Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/skywings/trio/cooldown1-emberlinger1-rangeinc1
execute if entity @e[type=player,team=SkyWings,tag=Oxygenate1,tag=Wildfire2,tag=Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/skywings/trio/cooldown1-emberlinger2-rangeinc1
execute if entity @e[type=player,team=SkyWings,tag=Oxygenate2,tag=Wildfire1,tag=Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/skywings/trio/cooldown2-emberlinger1-rangeinc1
execute if entity @e[type=player,team=SkyWings,tag=Oxygenate2,tag=Wildfire2,tag=Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/skywings/trio/cooldown2-emberlinger2-rangeinc1
execute if entity @e[type=player,team=SkyWings,tag=Oxygenate3,tag=Wildfire1,tag=Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/skywings/trio/cooldown3-emberlinger1-rangeinc1
execute if entity @e[type=player,team=SkyWings,tag=Oxygenate3,tag=Wildfire2,tag=Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/skywings/trio/cooldown3-emberlinger2-rangeinc1