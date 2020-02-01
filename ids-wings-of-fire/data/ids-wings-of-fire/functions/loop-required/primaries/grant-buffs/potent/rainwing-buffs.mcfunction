#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Grants Buffs

	#No Upgrades
execute if entity @e[type=player,team=RainWings,tag=!Reaction1,tag=!Reaction2,tag=!Reaction3,tag=!Noxious1,tag=!Noxious2,tag=!Potency1] run function ids-wings-of-fire:loop-required/primaries/venom-shot

	#Trio
		#Reaction 1, 2, 3
		#Noxious 1, 2
		#Potency 1
execute if entity @e[type=player,team=RainWings,tag=Reaction1,tag=Noxious1,tag=Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/venom-shot/trio/cd1le1ri1
execute if entity @e[type=player,team=RainWings,tag=Reaction1,tag=Noxious2,tag=Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/venom-shot/trio/cd1le2ri1
execute if entity @e[type=player,team=RainWings,tag=Reaction2,tag=Noxious1,tag=Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/venom-shot/trio/cd2le1ri1
execute if entity @e[type=player,team=RainWings,tag=Reaction2,tag=Noxious2,tag=Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/venom-shot/trio/cd2le2ri1
execute if entity @e[type=player,team=RainWings,tag=Reaction3,tag=Noxious1,tag=Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/venom-shot/trio/cd3le1ri1
execute if entity @e[type=player,team=RainWings,tag=Reaction3,tag=Noxious2,tag=Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/venom-shot/trio/cd3le2ri1

	#Duo
		#Reaction 1, 2, 3
		#Noxious 1, 2
execute if entity @e[type=player,team=RainWings,tag=Reaction1,tag=Noxious1,tag=!Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/venom-shot/duo/cd1le1
execute if entity @e[type=player,team=RainWings,tag=Reaction1,tag=Noxious2,tag=!Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/venom-shot/duo/cd1le2
execute if entity @e[type=player,team=RainWings,tag=Reaction2,tag=Noxious1,tag=!Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/venom-shot/duo/cd2le1
execute if entity @e[type=player,team=RainWings,tag=Reaction2,tag=Noxious2,tag=!Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/venom-shot/duo/cd2le2
execute if entity @e[type=player,team=RainWings,tag=Reaction3,tag=Noxious1,tag=!Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/venom-shot/duo/cd3le1
execute if entity @e[type=player,team=RainWings,tag=Reaction3,tag=Noxious2,tag=!Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/venom-shot/duo/cd3le2

		#Reaction 1, 2, 3
		#Potency 1
execute if entity @e[type=player,team=RainWings,tag=Reaction1,tag=!Noxious1,tag=Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/venom-shot/duo/cd1ri1
execute if entity @e[type=player,team=RainWings,tag=Reaction2,tag=!Noxious1,tag=Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/venom-shot/duo/cd2ri1
execute if entity @e[type=player,team=RainWings,tag=Reaction3,tag=!Noxious1,tag=Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/venom-shot/duo/cd3ri1

		#Noxious 1, 2
		#Potency 1
execute if entity @e[type=player,team=RainWings,tag=!Reaction1,tag=Noxious1,tag=Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/venom-shot/duo/le1ri1
execute if entity @e[type=player,team=RainWings,tag=!Reaction1,tag=Noxious2,tag=Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/venom-shot/duo/le2ri1

	#Mono
		#Reaction 1, 2, 3
execute if entity @e[type=player,team=RainWings,tag=Reaction1,tag=!Noxious1,tag=!Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/venom-shot/mono/cd1
execute if entity @e[type=player,team=RainWings,tag=Reaction2,tag=!Noxious1,tag=!Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/venom-shot/mono/cd2
execute if entity @e[type=player,team=RainWings,tag=Reaction3,tag=!Noxious1,tag=!Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/venom-shot/mono/cd3

		#Noxious 1, 2
execute if entity @e[type=player,team=RainWings,tag=!Reaction1,tag=Noxious1,tag=!Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/venom-shot/mono/le1
execute if entity @e[type=player,team=RainWings,tag=!Reaction1,tag=Noxious2,tag=!Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/venom-shot/mono/le2

		#Potency 1
execute if entity @e[type=player,team=RainWings,tag=!Reaction1,tag=!Noxious1,tag=Potency1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/rainwings/venom-shot/mono/ri1