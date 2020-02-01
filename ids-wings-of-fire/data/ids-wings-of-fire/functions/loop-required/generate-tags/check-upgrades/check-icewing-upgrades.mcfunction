#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Check Upgrades

	#No Upgrades
execute if entity @e[type=player,team=IceWings,tag=!ArcticCore1,tag=!ArcticCore2,tag=!ArcticCore3,tag=!Permafrost1,tag=!Permafrost2,tag=!Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/perma/breath-frost

	#Mono
		#ArcticCore 1, 2, 3
execute if entity @e[type=player,team=IceWings,tag=ArcticCore1,tag=!Permafrost1,tag=!Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/perma/upgraded-abilities/icewings/mono/cooldown1
execute if entity @e[type=player,team=IceWings,tag=ArcticCore2,tag=!Permafrost1,tag=!Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/perma/upgraded-abilities/icewings/mono/cooldown2
execute if entity @e[type=player,team=IceWings,tag=ArcticCore3,tag=!Permafrost1,tag=!Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/perma/upgraded-abilities/icewings/mono/cooldown3

		#Permafrost 1, 2
execute if entity @e[type=player,team=IceWings,tag=!ArcticCore1,tag=Permafrost1,tag=!Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/perma/upgraded-abilities/icewings/mono/effectlinger1
execute if entity @e[type=player,team=IceWings,tag=!ArcticCore1,tag=Permafrost2,tag=!Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/perma/upgraded-abilities/icewings/mono/effectlinger2

		#Icefall 1
execute if entity @e[type=player,team=IceWings,tag=!ArcticCore1,tag=!Permafrost1,tag=Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/perma/upgraded-abilities/icewings/mono/rangeinc1

	#Duo
		#ArcticCore 1, 2, 3
		#Permafrost 1, 2
execute if entity @e[type=player,team=IceWings,tag=ArcticCore1,tag=Permafrost1,tag=!Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/perma/upgraded-abilities/icewings/duo/cooldown1-effectlinger1
execute if entity @e[type=player,team=IceWings,tag=ArcticCore1,tag=Permafrost2,tag=!Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/perma/upgraded-abilities/icewings/duo/cooldown1-effectlinger2
execute if entity @e[type=player,team=IceWings,tag=ArcticCore2,tag=Permafrost1,tag=!Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/perma/upgraded-abilities/icewings/duo/cooldown2-effectlinger1
execute if entity @e[type=player,team=IceWings,tag=ArcticCore2,tag=Permafrost2,tag=!Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/perma/upgraded-abilities/icewings/duo/cooldown2-effectlinger2
execute if entity @e[type=player,team=IceWings,tag=ArcticCore3,tag=Permafrost1,tag=!Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/perma/upgraded-abilities/icewings/duo/cooldown3-effectlinger1
execute if entity @e[type=player,team=IceWings,tag=ArcticCore3,tag=Permafrost2,tag=!Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/perma/upgraded-abilities/icewings/duo/cooldown3-effectlinger2

		#ArcticCore 1, 2, 3
		#Icefall 1
execute if entity @e[type=player,team=IceWings,tag=ArcticCore1,tag=!Permafrost1,tag=Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/perma/upgraded-abilities/icewings/duo/cooldown1-rangeinc1
execute if entity @e[type=player,team=IceWings,tag=ArcticCore2,tag=!Permafrost1,tag=Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/perma/upgraded-abilities/icewings/duo/cooldown2-rangeinc1
execute if entity @e[type=player,team=IceWings,tag=ArcticCore3,tag=!Permafrost1,tag=Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/perma/upgraded-abilities/icewings/duo/cooldown3-rangeinc1

		#Permafrost 1, 2
		#Icefall 1
execute if entity @e[type=player,team=IceWings,tag=!ArcticCore1,tag=Permafrost1,tag=Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/perma/upgraded-abilities/icewings/duo/effectlinger1-rangeinc1
execute if entity @e[type=player,team=IceWings,tag=!ArcticCore1,tag=Permafrost2,tag=Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/perma/upgraded-abilities/icewings/duo/effectlinger2-rangeinc1

	#Trio
		#ArcticCore 1, 2, 3
		#Permafrost 1, 2
		#Icefall 1
execute if entity @e[type=player,team=IceWings,tag=ArcticCore1,tag=Permafrost1,tag=Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/perma/upgraded-abilities/icewings/trio/cooldown1-effectlinger1-rangeinc1
execute if entity @e[type=player,team=IceWings,tag=ArcticCore1,tag=Permafrost2,tag=Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/perma/upgraded-abilities/icewings/trio/cooldown1-effectlinger2-rangeinc1
execute if entity @e[type=player,team=IceWings,tag=ArcticCore2,tag=Permafrost1,tag=Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/perma/upgraded-abilities/icewings/trio/cooldown2-effectlinger1-rangeinc1
execute if entity @e[type=player,team=IceWings,tag=ArcticCore2,tag=Permafrost2,tag=Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/perma/upgraded-abilities/icewings/trio/cooldown2-effectlinger2-rangeinc1
execute if entity @e[type=player,team=IceWings,tag=ArcticCore3,tag=Permafrost1,tag=Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/perma/upgraded-abilities/icewings/trio/cooldown3-effectlinger1-rangeinc1
execute if entity @e[type=player,team=IceWings,tag=ArcticCore3,tag=Permafrost2,tag=Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/perma/upgraded-abilities/icewings/trio/cooldown3-effectlinger2-rangeinc1