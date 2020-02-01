#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Grants Buffs

	#No Upgrades
execute if entity @e[type=player,team=NightWings,tag=!Superheat1,tag=!Superheat2,tag=!Superheat3,tag=!EternalFlame1,tag=!EternalFlame2,tag=!Fission1] run function ids-wings-of-fire:loop-required/primaries/flame-breath

	#Trio
		#Superheat 1, 2, 3
		#EternalFlame 1, 2
		#Fission 1
execute if entity @e[type=player,team=NightWings,tag=Superheat1,tag=EternalFlame1,tag=Fission1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/nightwings/flame-breath/trio/cd1lf1ai1
execute if entity @e[type=player,team=NightWings,tag=Superheat1,tag=EternalFlame2,tag=Fission1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/nightwings/flame-breath/trio/cd1lf2ai1
execute if entity @e[type=player,team=NightWings,tag=Superheat2,tag=EternalFlame1,tag=Fission1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/nightwings/flame-breath/trio/cd2lf1ai1
execute if entity @e[type=player,team=NightWings,tag=Superheat2,tag=EternalFlame2,tag=Fission1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/nightwings/flame-breath/trio/cd2lf2ai1
execute if entity @e[type=player,team=NightWings,tag=Superheat3,tag=EternalFlame1,tag=Fission1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/nightwings/flame-breath/trio/cd3lf1ai1
execute if entity @e[type=player,team=NightWings,tag=Superheat3,tag=EternalFlame2,tag=Fission1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/nightwings/flame-breath/trio/cd3lf2ai1

	#Duo
		#Superheat 1, 2, 3
		#EternalFlame 1, 2
execute if entity @e[type=player,team=NightWings,tag=Superheat1,tag=EternalFlame1,tag=!Fission1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/nightwings/flame-breath/duo/cd1lf1
execute if entity @e[type=player,team=NightWings,tag=Superheat1,tag=EternalFlame2,tag=!Fission1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/nightwings/flame-breath/duo/cd1lf2
execute if entity @e[type=player,team=NightWings,tag=Superheat2,tag=EternalFlame1,tag=!Fission1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/nightwings/flame-breath/duo/cd2lf1
execute if entity @e[type=player,team=NightWings,tag=Superheat2,tag=EternalFlame2,tag=!Fission1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/nightwings/flame-breath/duo/cd2lf2
execute if entity @e[type=player,team=NightWings,tag=Superheat3,tag=EternalFlame1,tag=!Fission1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/nightwings/flame-breath/duo/cd3lf1
execute if entity @e[type=player,team=NightWings,tag=Superheat3,tag=EternalFlame2,tag=!Fission1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/nightwings/flame-breath/duo/cd3lf2

		#Superheat 1, 2, 3
		#Fission 1
execute if entity @e[type=player,team=NightWings,tag=Superheat1,tag=!EternalFlame1,tag=Fission1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/nightwings/flame-breath/duo/cd1ai1
execute if entity @e[type=player,team=NightWings,tag=Superheat2,tag=!EternalFlame1,tag=Fission1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/nightwings/flame-breath/duo/cd2ai1
execute if entity @e[type=player,team=NightWings,tag=Superheat3,tag=!EternalFlame1,tag=Fission1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/nightwings/flame-breath/duo/cd3ai1

		#EternalFlame 1, 2
		#Fission 1
execute if entity @e[type=player,team=NightWings,tag=!Superheat1,tag=EternalFlame1,tag=Fission1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/nightwings/flame-breath/duo/lf1ai1
execute if entity @e[type=player,team=NightWings,tag=!Superheat1,tag=EternalFlame2,tag=Fission1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/nightwings/flame-breath/duo/lf2ai1

	#Mono
		#Superheat 1, 2, 3
execute if entity @e[type=player,team=NightWings,tag=Superheat1,tag=!EternalFlame1,tag=!Fission1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/nightwings/flame-breath/mono/cd1
execute if entity @e[type=player,team=NightWings,tag=Superheat2,tag=!EternalFlame1,tag=!Fission1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/nightwings/flame-breath/mono/cd2
execute if entity @e[type=player,team=NightWings,tag=Superheat3,tag=!EternalFlame1,tag=!Fission1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/nightwings/flame-breath/mono/cd3

		#EternalFlame 1, 2
execute if entity @e[type=player,team=NightWings,tag=!Superheat1,tag=EternalFlame1,tag=!Fission1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/nightwings/flame-breath/mono/lf1
execute if entity @e[type=player,team=NightWings,tag=!Superheat1,tag=EternalFlame2,tag=!Fission1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/nightwings/flame-breath/mono/lf2

		#Fission 1
execute if entity @e[type=player,team=NightWings,tag=!Superheat1,tag=!EternalFlame1,tag=Fission1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/nightwings/flame-breath/mono/ai1