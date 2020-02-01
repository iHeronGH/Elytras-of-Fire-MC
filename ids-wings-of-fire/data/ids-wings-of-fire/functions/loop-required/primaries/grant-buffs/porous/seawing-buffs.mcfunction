#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Grants Buffs

	#No Upgrades
execute if entity @e[type=player,team=SeaWings,tag=!HighTide1,tag=!HighTide2,tag=!HighTide3,tag=!Waterlogged1,tag=!Waterlogged2,tag=!Torrent1] run function ids-wings-of-fire:loop-required/primaries/tidal-wave

	#Trio
		#HighTide 1, 2, 3
		#Waterlogged 1, 2
		#Torrent 1
execute if entity @e[type=player,team=SeaWings,tag=HighTide1,tag=Waterlogged1,tag=Torrent1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/seawings/tidal-wave/trio/cd1le1ri1
execute if entity @e[type=player,team=SeaWings,tag=HighTide1,tag=Waterlogged2,tag=Torrent1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/seawings/tidal-wave/trio/cd1le2ri1
execute if entity @e[type=player,team=SeaWings,tag=HighTide2,tag=Waterlogged1,tag=Torrent1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/seawings/tidal-wave/trio/cd2le1ri1
execute if entity @e[type=player,team=SeaWings,tag=HighTide2,tag=Waterlogged2,tag=Torrent1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/seawings/tidal-wave/trio/cd2le2ri1
execute if entity @e[type=player,team=SeaWings,tag=HighTide3,tag=Waterlogged1,tag=Torrent1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/seawings/tidal-wave/trio/cd3le1ri1
execute if entity @e[type=player,team=SeaWings,tag=HighTide3,tag=Waterlogged2,tag=Torrent1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/seawings/tidal-wave/trio/cd3le2ri1

	#Duo
		#HighTide 1, 2, 3
		#Waterlogged 1, 2
execute if entity @e[type=player,team=SeaWings,tag=HighTide1,tag=Waterlogged1,tag=!Torrent1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/seawings/tidal-wave/duo/cd1le1
execute if entity @e[type=player,team=SeaWings,tag=HighTide1,tag=Waterlogged2,tag=!Torrent1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/seawings/tidal-wave/duo/cd1le2
execute if entity @e[type=player,team=SeaWings,tag=HighTide2,tag=Waterlogged1,tag=!Torrent1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/seawings/tidal-wave/duo/cd2le1
execute if entity @e[type=player,team=SeaWings,tag=HighTide2,tag=Waterlogged2,tag=!Torrent1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/seawings/tidal-wave/duo/cd2le2
execute if entity @e[type=player,team=SeaWings,tag=HighTide3,tag=Waterlogged1,tag=!Torrent1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/seawings/tidal-wave/duo/cd3le1
execute if entity @e[type=player,team=SeaWings,tag=HighTide3,tag=Waterlogged2,tag=!Torrent1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/seawings/tidal-wave/duo/cd3le2

		#HighTide 1, 2, 3
		#Torrent 1
execute if entity @e[type=player,team=SeaWings,tag=HighTide1,tag=!Waterlogged1,tag=Torrent1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/seawings/tidal-wave/duo/cd1ri1
execute if entity @e[type=player,team=SeaWings,tag=HighTide2,tag=!Waterlogged1,tag=Torrent1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/seawings/tidal-wave/duo/cd2ri1
execute if entity @e[type=player,team=SeaWings,tag=HighTide3,tag=!Waterlogged1,tag=Torrent1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/seawings/tidal-wave/duo/cd3ri1

		#Waterlogged 1, 2
		#Torrent 1
execute if entity @e[type=player,team=SeaWings,tag=!HighTide1,tag=Waterlogged1,tag=Torrent1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/seawings/tidal-wave/duo/le1ri1
execute if entity @e[type=player,team=SeaWings,tag=!HighTide1,tag=Waterlogged2,tag=Torrent1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/seawings/tidal-wave/duo/le2ri1

	#Mono
		#HighTide 1, 2, 3
execute if entity @e[type=player,team=SeaWings,tag=HighTide1,tag=!Waterlogged1,tag=!Torrent1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/seawings/tidal-wave/mono/cd1
execute if entity @e[type=player,team=SeaWings,tag=HighTide2,tag=!Waterlogged1,tag=!Torrent1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/seawings/tidal-wave/mono/cd2
execute if entity @e[type=player,team=SeaWings,tag=HighTide3,tag=!Waterlogged1,tag=!Torrent1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/seawings/tidal-wave/mono/cd3

		#Waterlogged 1, 2
execute if entity @e[type=player,team=SeaWings,tag=!HighTide1,tag=Waterlogged1,tag=!Torrent1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/seawings/tidal-wave/mono/le1
execute if entity @e[type=player,team=SeaWings,tag=!HighTide1,tag=Waterlogged2,tag=!Torrent1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/seawings/tidal-wave/mono/le2

		#Torrent 1
execute if entity @e[type=player,team=SeaWings,tag=!HighTide1,tag=!Waterlogged1,tag=Torrent1] run function ids-wings-of-fire:loop-required/primaries/upgraded-abilities/seawings/tidal-wave/mono/ri1