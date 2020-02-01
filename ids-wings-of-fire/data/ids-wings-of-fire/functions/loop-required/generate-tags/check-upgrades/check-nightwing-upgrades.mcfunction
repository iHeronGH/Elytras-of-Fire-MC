#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Check Upgrades

	#No Upgrades
execute if entity @e[type=player,team=NightWings,tag=!Superheat1,tag=!Superheat2,tag=!Superheat3,tag=!EternalFlame1,tag=!EternalFlame2,tag=!Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/breath-fire

	#Mono
		#Superheat 1, 2, 3
execute if entity @e[type=player,team=NightWings,tag=Superheat1,tag=!EternalFlame1,tag=!Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/nightwings/mono/cooldown1
execute if entity @e[type=player,team=NightWings,tag=Superheat2,tag=!EternalFlame1,tag=!Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/nightwings/mono/cooldown2
execute if entity @e[type=player,team=NightWings,tag=Superheat3,tag=!EternalFlame1,tag=!Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/nightwings/mono/cooldown3

		#EternalFlame 1, 2
execute if entity @e[type=player,team=NightWings,tag=!Superheat1,tag=EternalFlame1,tag=!Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/nightwings/mono/emberlinger1
execute if entity @e[type=player,team=NightWings,tag=!Superheat1,tag=EternalFlame2,tag=!Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/nightwings/mono/emberlinger2

		#Fission 1
execute if entity @e[type=player,team=NightWings,tag=!Superheat1,tag=!EternalFlame1,tag=Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/nightwings/mono/areainc1

	#Duo
		#Superheat 1, 2, 3
		#EternalFlame 1, 2
execute if entity @e[type=player,team=NightWings,tag=Superheat1,tag=EternalFlame1,tag=!Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/nightwings/duo/cooldown1-emberlinger1
execute if entity @e[type=player,team=NightWings,tag=Superheat1,tag=EternalFlame2,tag=!Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/nightwings/duo/cooldown1-emberlinger2
execute if entity @e[type=player,team=NightWings,tag=Superheat2,tag=EternalFlame1,tag=!Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/nightwings/duo/cooldown2-emberlinger1
execute if entity @e[type=player,team=NightWings,tag=Superheat2,tag=EternalFlame2,tag=!Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/nightwings/duo/cooldown2-emberlinger2
execute if entity @e[type=player,team=NightWings,tag=Superheat3,tag=EternalFlame1,tag=!Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/nightwings/duo/cooldown3-emberlinger1
execute if entity @e[type=player,team=NightWings,tag=Superheat3,tag=EternalFlame2,tag=!Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/nightwings/duo/cooldown3-emberlinger2

		#Superheat 1, 2, 3
		#Fission 1
execute if entity @e[type=player,team=NightWings,tag=Superheat1,tag=!EternalFlame1,tag=Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/nightwings/duo/cooldown1-areainc1
execute if entity @e[type=player,team=NightWings,tag=Superheat2,tag=!EternalFlame1,tag=Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/nightwings/duo/cooldown2-areainc1
execute if entity @e[type=player,team=NightWings,tag=Superheat3,tag=!EternalFlame1,tag=Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/nightwings/duo/cooldown3-areainc1

		#EternalFlame 1, 2
		#Fission 1
execute if entity @e[type=player,team=NightWings,tag=!Superheat1,tag=EternalFlame1,tag=Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/nightwings/duo/emberlinger1-areainc1
execute if entity @e[type=player,team=NightWings,tag=!Superheat1,tag=EternalFlame2,tag=Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/nightwings/duo/emberlinger2-areainc1

	#Trio
		#Superheat 1, 2, 3
		#EternalFlame 1, 2
		#Fission 1
execute if entity @e[type=player,team=NightWings,tag=Superheat1,tag=EternalFlame1,tag=Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/nightwings/trio/cooldown1-emberlinger1-areainc1
execute if entity @e[type=player,team=NightWings,tag=Superheat1,tag=EternalFlame2,tag=Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/nightwings/trio/cooldown1-emberlinger2-areainc1
execute if entity @e[type=player,team=NightWings,tag=Superheat2,tag=EternalFlame1,tag=Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/nightwings/trio/cooldown2-emberlinger1-areainc1
execute if entity @e[type=player,team=NightWings,tag=Superheat2,tag=EternalFlame2,tag=Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/nightwings/trio/cooldown2-emberlinger2-areainc1
execute if entity @e[type=player,team=NightWings,tag=Superheat3,tag=EternalFlame1,tag=Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/nightwings/trio/cooldown3-emberlinger1-areainc1
execute if entity @e[type=player,team=NightWings,tag=Superheat3,tag=EternalFlame2,tag=Fission1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/nightwings/trio/cooldown3-emberlinger2-areainc1