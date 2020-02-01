#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Grants Buffs

	#No Upgrades
execute if entity @e[type=player,team=SkyWings,tag=!Oxygenate1,tag=!Oxygenate2,tag=!Oxygenate3,tag=!Wildfire1,tag=!Wildfire2,tag=!Blaze1] run function ids-wings-of-fire:loop-required/primaries/flame-breath

	#Trio
		#Oxygenate 1, 2, 3
		#Wildfire 1, 2
		#Blaze 1
execute if entity @e[type=player,team=SkyWings,tag=Oxygenate1,tag=Wildfire1,tag=Blaze1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/skywings/flame-breath/trio/cd1lf1ri1
execute if entity @e[type=player,team=SkyWings,tag=Oxygenate1,tag=Wildfire2,tag=Blaze1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/skywings/flame-breath/trio/cd1lf2ri1
execute if entity @e[type=player,team=SkyWings,tag=Oxygenate2,tag=Wildfire1,tag=Blaze1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/skywings/flame-breath/trio/cd2lf1ri1
execute if entity @e[type=player,team=SkyWings,tag=Oxygenate2,tag=Wildfire2,tag=Blaze1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/skywings/flame-breath/trio/cd2lf2ri1
execute if entity @e[type=player,team=SkyWings,tag=Oxygenate3,tag=Wildfire1,tag=Blaze1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/skywings/flame-breath/trio/cd3lf1ri1
execute if entity @e[type=player,team=SkyWings,tag=Oxygenate3,tag=Wildfire2,tag=Blaze1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/skywings/flame-breath/trio/cd3lf2ri1

	#Duo
		#Oxygenate 1, 2, 3
		#Wildfire 1, 2
execute if entity @e[type=player,team=SkyWings,tag=Oxygenate1,tag=Wildfire1,tag=!Blaze1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/skywings/flame-breath/duo/cd1lf1
execute if entity @e[type=player,team=SkyWings,tag=Oxygenate1,tag=Wildfire2,tag=!Blaze1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/skywings/flame-breath/duo/cd1lf2
execute if entity @e[type=player,team=SkyWings,tag=Oxygenate2,tag=Wildfire1,tag=!Blaze1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/skywings/flame-breath/duo/cd2lf1
execute if entity @e[type=player,team=SkyWings,tag=Oxygenate2,tag=Wildfire2,tag=!Blaze1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/skywings/flame-breath/duo/cd2lf2
execute if entity @e[type=player,team=SkyWings,tag=Oxygenate3,tag=Wildfire1,tag=!Blaze1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/skywings/flame-breath/duo/cd3lf1
execute if entity @e[type=player,team=SkyWings,tag=Oxygenate3,tag=Wildfire2,tag=!Blaze1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/skywings/flame-breath/duo/cd3lf2

		#Oxygenate 1, 2, 3
		#Blaze 1
execute if entity @e[type=player,team=SkyWings,tag=Oxygenate1,tag=!Wildfire1,tag=Blaze1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/skywings/flame-breath/duo/cd1ri1
execute if entity @e[type=player,team=SkyWings,tag=Oxygenate2,tag=!Wildfire1,tag=Blaze1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/skywings/flame-breath/duo/cd2ri1
execute if entity @e[type=player,team=SkyWings,tag=Oxygenate3,tag=!Wildfire1,tag=Blaze1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/skywings/flame-breath/duo/cd3ri1

		#Wildfire 1, 2
		#Blaze 1
execute if entity @e[type=player,team=SkyWings,tag=!Oxygenate1,tag=Wildfire1,tag=Blaze1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/skywings/flame-breath/duo/lf1ri1
execute if entity @e[type=player,team=SkyWings,tag=!Oxygenate1,tag=Wildfire2,tag=Blaze1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/skywings/flame-breath/duo/lf2ri1

	#Mono
		#Oxygenate 1, 2, 3
execute if entity @e[type=player,team=SkyWings,tag=Oxygenate1,tag=!Wildfire1,tag=!Blaze1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/skywings/flame-breath/mono/cd1
execute if entity @e[type=player,team=SkyWings,tag=Oxygenate2,tag=!Wildfire1,tag=!Blaze1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/skywings/flame-breath/mono/cd2
execute if entity @e[type=player,team=SkyWings,tag=Oxygenate3,tag=!Wildfire1,tag=!Blaze1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/skywings/flame-breath/mono/cd3

		#Wildfire 1, 2
execute if entity @e[type=player,team=SkyWings,tag=!Oxygenate1,tag=Wildfire1,tag=!Blaze1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/skywings/flame-breath/mono/lf1
execute if entity @e[type=player,team=SkyWings,tag=!Oxygenate1,tag=Wildfire2,tag=!Blaze1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/skywings/flame-breath/mono/lf2

		#Blaze 1
execute if entity @e[type=player,team=SkyWings,tag=!Oxygenate1,tag=!Wildfire1,tag=Blaze1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/skywings/flame-breath/mono/ri1
