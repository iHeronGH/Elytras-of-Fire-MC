#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Grants Buffs

	#No Upgrades
execute if entity @e[type=player,team=IceWings,tag=!ArcticCore1,tag=!ArcticCore2,tag=!ArcticCore3,tag=!Permafrost1,tag=!Permafrost2,tag=!Icefall1] run function ids-wings-of-fire:loop-required/primaries/frost-breath

	#Trio
		#ArcticCore 1, 2, 3
		#Permafrost 1, 2
		#Icefall 1
execute if entity @e[type=player,team=IceWings,tag=ArcticCore1,tag=Permafrost1,tag=Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/frost-breath/trio/cd1le1ri1
execute if entity @e[type=player,team=IceWings,tag=ArcticCore1,tag=Permafrost2,tag=Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/frost-breath/trio/cd1le2ri1
execute if entity @e[type=player,team=IceWings,tag=ArcticCore2,tag=Permafrost1,tag=Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/frost-breath/trio/cd2le1ri1
execute if entity @e[type=player,team=IceWings,tag=ArcticCore2,tag=Permafrost2,tag=Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/frost-breath/trio/cd2le2ri1
execute if entity @e[type=player,team=IceWings,tag=ArcticCore3,tag=Permafrost1,tag=Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/frost-breath/trio/cd3le1ri1
execute if entity @e[type=player,team=IceWings,tag=ArcticCore3,tag=Permafrost2,tag=Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/frost-breath/trio/cd3le2ri1

	#Duo
		#ArcticCore 1, 2, 3
		#Permafrost 1, 2
execute if entity @e[type=player,team=IceWings,tag=ArcticCore1,tag=Permafrost1,tag=!Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/frost-breath/duo/cd1le1
execute if entity @e[type=player,team=IceWings,tag=ArcticCore1,tag=Permafrost2,tag=!Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/frost-breath/duo/cd1le2
execute if entity @e[type=player,team=IceWings,tag=ArcticCore2,tag=Permafrost1,tag=!Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/frost-breath/duo/cd2le1
execute if entity @e[type=player,team=IceWings,tag=ArcticCore2,tag=Permafrost2,tag=!Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/frost-breath/duo/cd2le2
execute if entity @e[type=player,team=IceWings,tag=ArcticCore3,tag=Permafrost1,tag=!Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/frost-breath/duo/cd3le1
execute if entity @e[type=player,team=IceWings,tag=ArcticCore3,tag=Permafrost2,tag=!Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/frost-breath/duo/cd3le2

		#ArcticCore 1, 2, 3
		#Icefall 1
execute if entity @e[type=player,team=IceWings,tag=ArcticCore1,tag=!Permafrost1,tag=Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/frost-breath/duo/cd1ri1
execute if entity @e[type=player,team=IceWings,tag=ArcticCore2,tag=!Permafrost1,tag=Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/frost-breath/duo/cd2ri1
execute if entity @e[type=player,team=IceWings,tag=ArcticCore3,tag=!Permafrost1,tag=Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/frost-breath/duo/cd3ri1

		#Permafrost 1, 2
		#Icefall 1
execute if entity @e[type=player,team=IceWings,tag=!ArcticCore1,tag=Permafrost1,tag=Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/frost-breath/duo/le1ri1
execute if entity @e[type=player,team=IceWings,tag=!ArcticCore1,tag=Permafrost2,tag=Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/frost-breath/duo/le2ri1

	#Mono
		#ArcticCore 1, 2, 3
execute if entity @e[type=player,team=IceWings,tag=ArcticCore1,tag=!Permafrost1,tag=!Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/frost-breath/mono/cd1
execute if entity @e[type=player,team=IceWings,tag=ArcticCore2,tag=!Permafrost1,tag=!Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/frost-breath/mono/cd2
execute if entity @e[type=player,team=IceWings,tag=ArcticCore3,tag=!Permafrost1,tag=!Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/frost-breath/mono/cd3

		#Permafrost 1, 2
execute if entity @e[type=player,team=IceWings,tag=!ArcticCore1,tag=Permafrost1,tag=!Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/frost-breath/mono/le1
execute if entity @e[type=player,team=IceWings,tag=!ArcticCore1,tag=Permafrost2,tag=!Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/frost-breath/mono/le2

		#Icefall 1
execute if entity @e[type=player,team=IceWings,tag=!ArcticCore1,tag=!Permafrost1,tag=Icefall1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/icewings/frost-breath/mono/ri1