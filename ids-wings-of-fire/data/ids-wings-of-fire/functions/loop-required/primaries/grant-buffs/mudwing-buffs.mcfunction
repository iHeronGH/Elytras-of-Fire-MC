#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Grants Buffs

	#No Upgrades
execute if entity @s[tag=!Furnace1,tag=!Furnace2,tag=!Furnace3,tag=!Everburn1,tag=!Everburn2,tag=!Inferno1] run function ids-wings-of-fire:loop-required/primaries/flame-breath

	#Trio
		#Furnace 1, 2, 3
		#Everburn 1, 2
		#Inferno 1
execute if entity @s[tag=Furnace1,tag=Everburn1,tag=Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/trio/cd1lf1ai1
execute if entity @s[tag=Furnace1,tag=Everburn2,tag=Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/trio/cd1lf2ai1
execute if entity @s[tag=Furnace2,tag=Everburn1,tag=Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/trio/cd2lf1ai1
execute if entity @s[tag=Furnace2,tag=Everburn2,tag=Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/trio/cd2lf2ai1
execute if entity @s[tag=Furnace3,tag=Everburn1,tag=Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/trio/cd3lf1ai1
execute if entity @s[tag=Furnace3,tag=Everburn2,tag=Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/trio/cd3lf2ai1

	#Duo
		#Furnace 1, 2, 3
		#Everburn 1, 2
execute if entity @s[tag=Furnace1,tag=Everburn1,tag=!Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/duo/cd1lf1
execute if entity @s[tag=Furnace1,tag=Everburn2,tag=!Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/duo/cd1lf2
execute if entity @s[tag=Furnace2,tag=Everburn1,tag=!Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/duo/cd2lf1
execute if entity @s[tag=Furnace2,tag=Everburn2,tag=!Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/duo/cd2lf2
execute if entity @s[tag=Furnace3,tag=Everburn1,tag=!Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/duo/cd3lf1
execute if entity @s[tag=Furnace3,tag=Everburn2,tag=!Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/duo/cd3lf2
		#Furnace 1, 2, 3
		#Inferno 1
execute if entity @s[tag=Furnace1,tag=!Everburn1,tag=Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/duo/cd1ai1
execute if entity @s[tag=Furnace2,tag=!Everburn1,tag=Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/duo/cd2ai1
execute if entity @s[tag=Furnace3,tag=!Everburn1,tag=Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/duo/cd3ai1
		#Everburn 1, 2
		#Inferno 1
execute if entity @s[tag=!Furnace1,tag=Everburn1,tag=Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/duo/lf1ai1
execute if entity @s[tag=!Furnace1,tag=Everburn2,tag=Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/duo/lf2ai1

	#Mono
		#Furnace 1, 2, 3
execute if entity @s[tag=Furnace1,tag=!Everburn1,tag=!Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/mono/cd1
execute if entity @s[tag=Furnace2,tag=!Everburn1,tag=!Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/mono/cd2
execute if entity @s[tag=Furnace3,tag=!Everburn1,tag=!Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/mono/cd3
		#Everburn 1, 2
execute if entity @s[tag=!Furnace1,tag=Everburn1,tag=!Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/mono/lf1
execute if entity @s[tag=!Furnace1,tag=Everburn2,tag=!Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/mono/lf2
		#Inferno 1
execute if entity @s[tag=!Furnace1,tag=!Everburn1,tag=Inferno1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/mudwings/mono/ai1