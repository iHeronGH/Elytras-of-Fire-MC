#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Check Upgrades

	#No Upgrades
execute if entity @s[tag=!HighTide1,tag=!HighTide2,tag=!HighTide3,tag=!Waterlogged1,tag=!Waterlogged2,tag=!Torrent1] run function ids-wings-of-fire:loop-required/generate-hotbars/seawings/aquatic-blast

	#Mono
		#HighTide 1, 2, 3
execute if entity @s[tag=HighTide1,tag=!Waterlogged1,tag=!Waterlogged2,tag=!Torrent1] run function ids-wings-of-fire:loop-required/generate-hotbars/seawings/upgraded-abilities/tidal-wave/mono/cooldown1
execute if entity @s[tag=HighTide2,tag=!Waterlogged1,tag=!Waterlogged2,tag=!Torrent1] run function ids-wings-of-fire:loop-required/generate-hotbars/seawings/upgraded-abilities/tidal-wave/mono/cooldown2
execute if entity @s[tag=HighTide3,tag=!Waterlogged1,tag=!Waterlogged2,tag=!Torrent1] run function ids-wings-of-fire:loop-required/generate-hotbars/seawings/upgraded-abilities/tidal-wave/mono/cooldown3
		#Waterlogged 1, 2
execute if entity @s[tag=!HighTide1,tag=!HighTide2,tag=!HighTide3,tag=Waterlogged1,tag=!Torrent1] run function ids-wings-of-fire:loop-required/generate-hotbars/seawings/upgraded-abilities/tidal-wave/mono/effectlinger1
execute if entity @s[tag=!HighTide1,tag=!HighTide2,tag=!HighTide3,tag=Waterlogged2,tag=!Torrent1] run function ids-wings-of-fire:loop-required/generate-hotbars/seawings/upgraded-abilities/tidal-wave/mono/effectlinger2
		#Torrent 1
execute if entity @s[tag=!HighTide1,tag=!HighTide2,tag=!HighTide3,tag=!Waterlogged1,tag=!Waterlogged2,tag=Torrent1] run function ids-wings-of-fire:loop-required/generate-hotbars/seawings/upgraded-abilities/tidal-wave/mono/rangeinc1

	#Duo
		#HighTide 1, 2, 3
		#Waterlogged 1, 2
execute if entity @s[tag=HighTide1,tag=Waterlogged1,tag=!Torrent1] run function ids-wings-of-fire:loop-required/generate-hotbars/seawings/upgraded-abilities/tidal-wave/duo/cooldown1-effectlinger1
execute if entity @s[tag=HighTide1,tag=Waterlogged2,tag=!Torrent1] run function ids-wings-of-fire:loop-required/generate-hotbars/seawings/upgraded-abilities/tidal-wave/duo/cooldown1-effectlinger2
execute if entity @s[tag=HighTide2,tag=Waterlogged1,tag=!Torrent1] run function ids-wings-of-fire:loop-required/generate-hotbars/seawings/upgraded-abilities/tidal-wave/duo/cooldown2-effectlinger1
execute if entity @s[tag=HighTide2,tag=Waterlogged2,tag=!Torrent1] run function ids-wings-of-fire:loop-required/generate-hotbars/seawings/upgraded-abilities/tidal-wave/duo/cooldown2-effectlinger2
execute if entity @s[tag=HighTide3,tag=Waterlogged1,tag=!Torrent1] run function ids-wings-of-fire:loop-required/generate-hotbars/seawings/upgraded-abilities/tidal-wave/duo/cooldown3-effectlinger1
execute if entity @s[tag=HighTide3,tag=Waterlogged2,tag=!Torrent1] run function ids-wings-of-fire:loop-required/generate-hotbars/seawings/upgraded-abilities/tidal-wave/duo/cooldown3-effectlinger2
		#HighTide 1, 2, 3
		#Torrent 1
execute if entity @s[tag=HighTide1,tag=!Waterlogged1,tag=!Waterlogged2,tag=Torrent1] run function ids-wings-of-fire:loop-required/generate-hotbars/seawings/upgraded-abilities/tidal-wave/duo/cooldown1-rangeinc1
execute if entity @s[tag=HighTide2,tag=!Waterlogged1,tag=!Waterlogged2,tag=Torrent1] run function ids-wings-of-fire:loop-required/generate-hotbars/seawings/upgraded-abilities/tidal-wave/duo/cooldown2-rangeinc1
execute if entity @s[tag=HighTide3,tag=!Waterlogged1,tag=!Waterlogged2,tag=Torrent1] run function ids-wings-of-fire:loop-required/generate-hotbars/seawings/upgraded-abilities/tidal-wave/duo/cooldown3-rangeinc1
		#Waterlogged 1, 2
		#Torrent 1
execute if entity @s[tag=!HighTide1,tag=!HighTide2,tag=!HighTide3,tag=Waterlogged1,tag=Torrent1] run function ids-wings-of-fire:loop-required/generate-hotbars/seawings/upgraded-abilities/tidal-wave/duo/effectlinger1-rangeinc1
execute if entity @s[tag=!HighTide1,tag=!HighTide2,tag=!HighTide3,tag=Waterlogged2,tag=Torrent1] run function ids-wings-of-fire:loop-required/generate-hotbars/seawings/upgraded-abilities/tidal-wave/duo/effectlinger2-rangeinc1

	#Trio
		#HighTide 1, 2, 3
		#Waterlogged 1, 2
		#Torrent 1
execute if entity @s[tag=HighTide1,tag=Waterlogged1,tag=Torrent1] run function ids-wings-of-fire:loop-required/generate-hotbars/seawings/upgraded-abilities/tidal-wave/trio/cooldown1-effectlinger1-rangeinc1
execute if entity @s[tag=HighTide1,tag=Waterlogged2,tag=Torrent1] run function ids-wings-of-fire:loop-required/generate-hotbars/seawings/upgraded-abilities/tidal-wave/trio/cooldown1-effectlinger2-rangeinc1
execute if entity @s[tag=HighTide2,tag=Waterlogged1,tag=Torrent1] run function ids-wings-of-fire:loop-required/generate-hotbars/seawings/upgraded-abilities/tidal-wave/trio/cooldown2-effectlinger1-rangeinc1
execute if entity @s[tag=HighTide2,tag=Waterlogged2,tag=Torrent1] run function ids-wings-of-fire:loop-required/generate-hotbars/seawings/upgraded-abilities/tidal-wave/trio/cooldown2-effectlinger2-rangeinc1
execute if entity @s[tag=HighTide3,tag=Waterlogged1,tag=Torrent1] run function ids-wings-of-fire:loop-required/generate-hotbars/seawings/upgraded-abilities/tidal-wave/trio/cooldown3-effectlinger1-rangeinc1
execute if entity @s[tag=HighTide3,tag=Waterlogged2,tag=Torrent1] run function ids-wings-of-fire:loop-required/generate-hotbars/seawings/upgraded-abilities/tidal-wave/trio/cooldown3-effectlinger2-rangeinc1