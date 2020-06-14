#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Check Upgrades

	#No Upgrades
execute if entity @s[tag=!ArcticCore1,tag=!ArcticCore2,tag=!ArcticCore3,tag=!Permafrost1,tag=!Permafrost2,tag=!Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/icewings/breath-frost

	#Mono
		#ArcticCore 1, 2, 3
execute if entity @s[tag=ArcticCore1,tag=!Permafrost1,tag=!Permafrost2,tag=!Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/icewings/upgraded-abilities/frost-breath/mono/cooldown1
execute if entity @s[tag=ArcticCore2,tag=!Permafrost1,tag=!Permafrost2,tag=!Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/icewings/upgraded-abilities/frost-breath/mono/cooldown2
execute if entity @s[tag=ArcticCore3,tag=!Permafrost1,tag=!Permafrost2,tag=!Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/icewings/upgraded-abilities/frost-breath/mono/cooldown3
		#Permafrost 1, 2
execute if entity @s[tag=!ArcticCore1,tag=!ArcticCore2,tag=!ArcticCore3,tag=Permafrost1,tag=!Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/icewings/upgraded-abilities/frost-breath/mono/effectlinger1
execute if entity @s[tag=!ArcticCore1,tag=!ArcticCore2,tag=!ArcticCore3,tag=Permafrost2,tag=!Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/icewings/upgraded-abilities/frost-breath/mono/effectlinger2
		#Icefall 1
execute if entity @s[tag=!ArcticCore1,tag=!ArcticCore2,tag=!ArcticCore3,tag=!Permafrost1,tag=!Permafrost2,tag=Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/icewings/upgraded-abilities/frost-breath/mono/rangeinc1

	#Duo
		#ArcticCore 1, 2, 3
		#Permafrost 1, 2
execute if entity @s[tag=ArcticCore1,tag=Permafrost1,tag=!Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/icewings/upgraded-abilities/frost-breath/duo/cooldown1-effectlinger1
execute if entity @s[tag=ArcticCore1,tag=Permafrost2,tag=!Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/icewings/upgraded-abilities/frost-breath/duo/cooldown1-effectlinger2
execute if entity @s[tag=ArcticCore2,tag=Permafrost1,tag=!Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/icewings/upgraded-abilities/frost-breath/duo/cooldown2-effectlinger1
execute if entity @s[tag=ArcticCore2,tag=Permafrost2,tag=!Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/icewings/upgraded-abilities/frost-breath/duo/cooldown2-effectlinger2
execute if entity @s[tag=ArcticCore3,tag=Permafrost1,tag=!Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/icewings/upgraded-abilities/frost-breath/duo/cooldown3-effectlinger1
execute if entity @s[tag=ArcticCore3,tag=Permafrost2,tag=!Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/icewings/upgraded-abilities/frost-breath/duo/cooldown3-effectlinger2
		#ArcticCore 1, 2, 3
		#Icefall 1
execute if entity @s[tag=ArcticCore1,tag=!Permafrost1,tag=!Permafrost2,tag=Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/icewings/upgraded-abilities/frost-breath/duo/cooldown1-rangeinc1
execute if entity @s[tag=ArcticCore2,tag=!Permafrost1,tag=!Permafrost2,tag=Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/icewings/upgraded-abilities/frost-breath/duo/cooldown2-rangeinc1
execute if entity @s[tag=ArcticCore3,tag=!Permafrost1,tag=!Permafrost2,tag=Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/icewings/upgraded-abilities/frost-breath/duo/cooldown3-rangeinc1
		#Permafrost 1, 2
		#Icefall 1
execute if entity @s[tag=!ArcticCore1,tag=!ArcticCore2,tag=!ArcticCore3,tag=Permafrost1,tag=Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/icewings/upgraded-abilities/frost-breath/duo/effectlinger1-rangeinc1
execute if entity @s[tag=!ArcticCore1,tag=!ArcticCore2,tag=!ArcticCore3,tag=Permafrost2,tag=Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/icewings/upgraded-abilities/frost-breath/duo/effectlinger2-rangeinc1

	#Trio
		#ArcticCore 1, 2, 3
		#Permafrost 1, 2
		#Icefall 1
execute if entity @s[tag=ArcticCore1,tag=Permafrost1,tag=Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/icewings/upgraded-abilities/frost-breath/trio/cooldown1-effectlinger1-rangeinc1
execute if entity @s[tag=ArcticCore1,tag=Permafrost2,tag=Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/icewings/upgraded-abilities/frost-breath/trio/cooldown1-effectlinger2-rangeinc1
execute if entity @s[tag=ArcticCore2,tag=Permafrost1,tag=Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/icewings/upgraded-abilities/frost-breath/trio/cooldown2-effectlinger1-rangeinc1
execute if entity @s[tag=ArcticCore2,tag=Permafrost2,tag=Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/icewings/upgraded-abilities/frost-breath/trio/cooldown2-effectlinger2-rangeinc1
execute if entity @s[tag=ArcticCore3,tag=Permafrost1,tag=Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/icewings/upgraded-abilities/frost-breath/trio/cooldown3-effectlinger1-rangeinc1
execute if entity @s[tag=ArcticCore3,tag=Permafrost2,tag=Icefall1] run function ids-wings-of-fire:loop-required/generate-hotbars/icewings/upgraded-abilities/frost-breath/trio/cooldown3-effectlinger2-rangeinc1