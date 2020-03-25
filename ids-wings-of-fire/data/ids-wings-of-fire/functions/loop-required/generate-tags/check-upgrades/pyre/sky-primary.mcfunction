#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Check Upgrades

	#No Upgrades
execute if entity @s[tag=!Oxygenate1,tag=!Oxygenate2,tag=!Oxygenate3,tag=!Wildfire1,tag=!Wildfire2,tag=!Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/skywings/breath-skywing-fire

	#Mono
		#Oxygenate 1, 2, 3
execute if entity @s[tag=Oxygenate1,tag=!Wildfire1,tag=!Wildfire2,tag=!Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/skywings/upgraded-abilities/flame-breath/mono/cooldown1
execute if entity @s[tag=Oxygenate2,tag=!Wildfire1,tag=!Wildfire2,tag=!Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/skywings/upgraded-abilities/flame-breath/mono/cooldown2
execute if entity @s[tag=Oxygenate3,tag=!Wildfire1,tag=!Wildfire2,tag=!Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/skywings/upgraded-abilities/flame-breath/mono/cooldown3
		#Wildfire 1, 2
execute if entity @s[tag=!Oxygenate1,tag=!Oxygenate2,tag=!Oxygenate3,tag=Wildfire1,tag=!Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/skywings/upgraded-abilities/flame-breath/mono/emberlinger1
execute if entity @s[tag=!Oxygenate1,tag=!Oxygenate2,tag=!Oxygenate3,tag=Wildfire2,tag=!Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/skywings/upgraded-abilities/flame-breath/mono/emberlinger2
		#Blaze 1
execute if entity @s[tag=!Oxygenate1,tag=!Oxygenate2,tag=!Oxygenate3,tag=!Wildfire1,tag=!Wildfire2,tag=Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/skywings/upgraded-abilities/flame-breath/mono/rangeinc1

	#Duo
		#Oxygenate 1, 2, 3
		#Wildfire 1, 2
execute if entity @s[tag=Oxygenate1,tag=Wildfire1,tag=!Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/skywings/upgraded-abilities/flame-breath/duo/cooldown1-emberlinger1
execute if entity @s[tag=Oxygenate1,tag=Wildfire2,tag=!Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/skywings/upgraded-abilities/flame-breath/duo/cooldown1-emberlinger2
execute if entity @s[tag=Oxygenate2,tag=Wildfire1,tag=!Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/skywings/upgraded-abilities/flame-breath/duo/cooldown2-emberlinger1
execute if entity @s[tag=Oxygenate2,tag=Wildfire2,tag=!Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/skywings/upgraded-abilities/flame-breath/duo/cooldown2-emberlinger2
execute if entity @s[tag=Oxygenate3,tag=Wildfire1,tag=!Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/skywings/upgraded-abilities/flame-breath/duo/cooldown3-emberlinger1
execute if entity @s[tag=Oxygenate3,tag=Wildfire2,tag=!Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/skywings/upgraded-abilities/flame-breath/duo/cooldown3-emberlinger2
		#Oxygenate 1, 2, 3
		#Blaze 1
execute if entity @s[tag=Oxygenate1,tag=!Wildfire1,tag=!Wildfire2,tag=Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/skywings/upgraded-abilities/flame-breath/duo/cooldown1-rangeinc1
execute if entity @s[tag=Oxygenate2,tag=!Wildfire1,tag=!Wildfire2,tag=Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/skywings/upgraded-abilities/flame-breath/duo/cooldown2-rangeinc1
execute if entity @s[tag=Oxygenate3,tag=!Wildfire1,tag=!Wildfire2,tag=Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/skywings/upgraded-abilities/flame-breath/duo/cooldown3-rangeinc1
		#Wildfire 1, 2
		#Blaze 1
execute if entity @s[tag=!Oxygenate1,tag=!Oxygenate2,tag=!Oxygenate3,tag=Wildfire1,tag=Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/skywings/upgraded-abilities/flame-breath/duo/emberlinger1-rangeinc1
execute if entity @s[tag=!Oxygenate1,tag=!Oxygenate2,tag=!Oxygenate3,tag=Wildfire2,tag=Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/skywings/upgraded-abilities/flame-breath/duo/emberlinger2-rangeinc1

	#Trio
		#Oxygenate 1, 2, 3
		#Wildfire 1, 2
		#Blaze 1
execute if entity @s[tag=Oxygenate1,tag=Wildfire1,tag=Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/skywings/upgraded-abilities/flame-breath/trio/cooldown1-emberlinger1-rangeinc1
execute if entity @s[tag=Oxygenate1,tag=Wildfire2,tag=Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/skywings/upgraded-abilities/flame-breath/trio/cooldown1-emberlinger2-rangeinc1
execute if entity @s[tag=Oxygenate2,tag=Wildfire1,tag=Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/skywings/upgraded-abilities/flame-breath/trio/cooldown2-emberlinger1-rangeinc1
execute if entity @s[tag=Oxygenate2,tag=Wildfire2,tag=Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/skywings/upgraded-abilities/flame-breath/trio/cooldown2-emberlinger2-rangeinc1
execute if entity @s[tag=Oxygenate3,tag=Wildfire1,tag=Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/skywings/upgraded-abilities/flame-breath/trio/cooldown3-emberlinger1-rangeinc1
execute if entity @s[tag=Oxygenate3,tag=Wildfire2,tag=Blaze1] run function ids-wings-of-fire:loop-required/generate-hotbars/skywings/upgraded-abilities/flame-breath/trio/cooldown3-emberlinger2-rangeinc1