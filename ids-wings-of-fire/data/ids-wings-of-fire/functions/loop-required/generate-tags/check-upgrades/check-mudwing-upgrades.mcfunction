#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Check Upgrades

	#No Upgrades
execute if entity @e[type=player,team=MudWings,tag=!Furnace1,tag=!Furnace2,tag=!Furnace3,tag=!Everburn1,tag=!Everburn2,tag=!Inferno1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/breath-fire

	#Mono
		#Furnace 1, 2, 3
execute if entity @e[type=player,team=MudWings,tag=Furnace1,tag=!Everburn1,tag=!Inferno1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/mudwings/mono/cooldown1
execute if entity @e[type=player,team=MudWings,tag=Furnace2,tag=!Everburn1,tag=!Inferno1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/mudwings/mono/cooldown2
execute if entity @e[type=player,team=MudWings,tag=Furnace3,tag=!Everburn1,tag=!Inferno1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/mudwings/mono/cooldown3

		#Everburn 1, 2
execute if entity @e[type=player,team=MudWings,tag=!Furnace1,tag=Everburn1,tag=!Inferno1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/mudwings/mono/emberlinger1
execute if entity @e[type=player,team=MudWings,tag=!Furnace1,tag=Everburn2,tag=!Inferno1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/mudwings/mono/emberlinger2

		#Inferno 1
execute if entity @e[type=player,team=MudWings,tag=!Furnace1,tag=!Everburn1,tag=Inferno1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/mudwings/mono/areainc1

	#Duo
		#Furnace 1, 2, 3
		#Everburn 1, 2
execute if entity @e[type=player,team=MudWings,tag=Furnace1,tag=Everburn1,tag=!Inferno1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/mudwings/duo/cooldown1-emberlinger1
execute if entity @e[type=player,team=MudWings,tag=Furnace1,tag=Everburn2,tag=!Inferno1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/mudwings/duo/cooldown1-emberlinger2
execute if entity @e[type=player,team=MudWings,tag=Furnace2,tag=Everburn1,tag=!Inferno1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/mudwings/duo/cooldown2-emberlinger1
execute if entity @e[type=player,team=MudWings,tag=Furnace2,tag=Everburn2,tag=!Inferno1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/mudwings/duo/cooldown2-emberlinger2
execute if entity @e[type=player,team=MudWings,tag=Furnace3,tag=Everburn1,tag=!Inferno1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/mudwings/duo/cooldown3-emberlinger1
execute if entity @e[type=player,team=MudWings,tag=Furnace3,tag=Everburn2,tag=!Inferno1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/mudwings/duo/cooldown3-emberlinger2

		#Furnace 1, 2, 3
		#Inferno 1
execute if entity @e[type=player,team=MudWings,tag=Furnace1,tag=!Everburn1,tag=Inferno1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/mudwings/duo/cooldown1-areainc1
execute if entity @e[type=player,team=MudWings,tag=Furnace2,tag=!Everburn1,tag=Inferno1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/mudwings/duo/cooldown2-areainc1
execute if entity @e[type=player,team=MudWings,tag=Furnace3,tag=!Everburn1,tag=Inferno1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/mudwings/duo/cooldown3-areainc1

		#Everburn 1, 2
		#Inferno 1
execute if entity @e[type=player,team=MudWings,tag=!Furnace1,tag=Everburn1,tag=Inferno1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/mudwings/duo/emberlinger1-areainc1
execute if entity @e[type=player,team=MudWings,tag=!Furnace1,tag=Everburn2,tag=Inferno1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/mudwings/duo/emberlinger2-areainc1

	#Trio
		#Furnace 1, 2, 3
		#Everburn 1, 2
		#Inferno 1
execute if entity @e[type=player,team=MudWings,tag=Furnace1,tag=Everburn1,tag=Inferno1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/mudwings/trio/cooldown1-emberlinger1-areainc1
execute if entity @e[type=player,team=MudWings,tag=Furnace1,tag=Everburn2,tag=Inferno1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/mudwings/trio/cooldown1-emberlinger2-areainc1
execute if entity @e[type=player,team=MudWings,tag=Furnace2,tag=Everburn1,tag=Inferno1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/mudwings/trio/cooldown2-emberlinger1-areainc1
execute if entity @e[type=player,team=MudWings,tag=Furnace2,tag=Everburn2,tag=Inferno1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/mudwings/trio/cooldown2-emberlinger2-areainc1
execute if entity @e[type=player,team=MudWings,tag=Furnace3,tag=Everburn1,tag=Inferno1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/mudwings/trio/cooldown3-emberlinger1-areainc1
execute if entity @e[type=player,team=MudWings,tag=Furnace3,tag=Everburn2,tag=Inferno1] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/upgraded-abilities/mudwings/trio/cooldown3-emberlinger2-areainc1