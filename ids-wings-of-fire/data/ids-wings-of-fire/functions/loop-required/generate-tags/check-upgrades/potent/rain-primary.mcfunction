#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Check Upgrades

	#No Upgrades
execute if entity @s[tag=!Reaction1,tag=!Reaction2,tag=!Reaction3,tag=!Noxious1,tag=!Noxious2,tag=!Potency1] run function ids-wings-of-fire:loop-required/generate-hotbars/rainwings/eject-venom

	#Mono
		#Reaction 1, 2, 3
execute if entity @s[tag=Reaction1,tag=!Noxious1,tag=!Noxious2,tag=!Potency1] run function ids-wings-of-fire:loop-required/generate-hotbars/rainwings/upgraded-abilities/venom-shot/mono/cooldown1
execute if entity @s[tag=Reaction2,tag=!Noxious1,tag=!Noxious2,tag=!Potency1] run function ids-wings-of-fire:loop-required/generate-hotbars/rainwings/upgraded-abilities/venom-shot/mono/cooldown2
execute if entity @s[tag=Reaction3,tag=!Noxious1,tag=!Noxious2,tag=!Potency1] run function ids-wings-of-fire:loop-required/generate-hotbars/rainwings/upgraded-abilities/venom-shot/mono/cooldown3
		#Noxious 1, 2
execute if entity @s[tag=!Reaction1,tag=!Reaction2,tag=!Reaction3,tag=Noxious1,tag=!Potency1] run function ids-wings-of-fire:loop-required/generate-hotbars/rainwings/upgraded-abilities/venom-shot/mono/effectlinger1
execute if entity @s[tag=!Reaction1,tag=!Reaction2,tag=!Reaction3,tag=Noxious2,tag=!Potency1] run function ids-wings-of-fire:loop-required/generate-hotbars/rainwings/upgraded-abilities/venom-shot/mono/effectlinger2
		#Potency 1
execute if entity @s[tag=!Reaction1,tag=!Reaction2,tag=!Reaction3,tag=!Noxious1,tag=!Noxious2,tag=Potency1] run function ids-wings-of-fire:loop-required/generate-hotbars/rainwings/upgraded-abilities/venom-shot/mono/rangeinc1

	#Duo
		#Reaction 1, 2, 3
		#Noxious 1, 2
execute if entity @s[tag=Reaction1,tag=Noxious1,tag=!Potency1] run function ids-wings-of-fire:loop-required/generate-hotbars/rainwings/upgraded-abilities/venom-shot/duo/cooldown1-effectlinger1
execute if entity @s[tag=Reaction1,tag=Noxious2,tag=!Potency1] run function ids-wings-of-fire:loop-required/generate-hotbars/rainwings/upgraded-abilities/venom-shot/duo/cooldown1-effectlinger2
execute if entity @s[tag=Reaction2,tag=Noxious1,tag=!Potency1] run function ids-wings-of-fire:loop-required/generate-hotbars/rainwings/upgraded-abilities/venom-shot/duo/cooldown2-effectlinger1
execute if entity @s[tag=Reaction2,tag=Noxious2,tag=!Potency1] run function ids-wings-of-fire:loop-required/generate-hotbars/rainwings/upgraded-abilities/venom-shot/duo/cooldown2-effectlinger2
execute if entity @s[tag=Reaction3,tag=Noxious1,tag=!Potency1] run function ids-wings-of-fire:loop-required/generate-hotbars/rainwings/upgraded-abilities/venom-shot/duo/cooldown3-effectlinger1
execute if entity @s[tag=Reaction3,tag=Noxious2,tag=!Potency1] run function ids-wings-of-fire:loop-required/generate-hotbars/rainwings/upgraded-abilities/venom-shot/duo/cooldown3-effectlinger2
		#Reaction 1, 2, 3
		#Potency 1
execute if entity @s[tag=Reaction1,tag=!Noxious1,tag=!Noxious2,tag=Potency1] run function ids-wings-of-fire:loop-required/generate-hotbars/rainwings/upgraded-abilities/venom-shot/duo/cooldown1-rangeinc1
execute if entity @s[tag=Reaction2,tag=!Noxious1,tag=!Noxious2,tag=Potency1] run function ids-wings-of-fire:loop-required/generate-hotbars/rainwings/upgraded-abilities/venom-shot/duo/cooldown2-rangeinc1
execute if entity @s[tag=Reaction3,tag=!Noxious1,tag=!Noxious2,tag=Potency1] run function ids-wings-of-fire:loop-required/generate-hotbars/rainwings/upgraded-abilities/venom-shot/duo/cooldown3-rangeinc1
		#Noxious 1, 2
		#Potency 1
execute if entity @s[tag=!Reaction1,tag=!Reaction2,tag=!Reaction3,tag=Noxious1,tag=Potency1] run function ids-wings-of-fire:loop-required/generate-hotbars/rainwings/upgraded-abilities/venom-shot/duo/effectlinger1-rangeinc1
execute if entity @s[tag=!Reaction1,tag=!Reaction2,tag=!Reaction3,tag=Noxious2,tag=Potency1] run function ids-wings-of-fire:loop-required/generate-hotbars/rainwings/upgraded-abilities/venom-shot/duo/effectlinger2-rangeinc1

	#Trio
		#Reaction 1, 2, 3
		#Noxious 1, 2
		#Potency 1
execute if entity @s[tag=Reaction1,tag=Noxious1,tag=Potency1] run function ids-wings-of-fire:loop-required/generate-hotbars/rainwings/upgraded-abilities/venom-shot/trio/cooldown1-effectlinger1-rangeinc1
execute if entity @s[tag=Reaction1,tag=Noxious2,tag=Potency1] run function ids-wings-of-fire:loop-required/generate-hotbars/rainwings/upgraded-abilities/venom-shot/trio/cooldown1-effectlinger2-rangeinc1
execute if entity @s[tag=Reaction2,tag=Noxious1,tag=Potency1] run function ids-wings-of-fire:loop-required/generate-hotbars/rainwings/upgraded-abilities/venom-shot/trio/cooldown2-effectlinger1-rangeinc1
execute if entity @s[tag=Reaction2,tag=Noxious2,tag=Potency1] run function ids-wings-of-fire:loop-required/generate-hotbars/rainwings/upgraded-abilities/venom-shot/trio/cooldown2-effectlinger2-rangeinc1
execute if entity @s[tag=Reaction3,tag=Noxious1,tag=Potency1] run function ids-wings-of-fire:loop-required/generate-hotbars/rainwings/upgraded-abilities/venom-shot/trio/cooldown3-effectlinger1-rangeinc1
execute if entity @s[tag=Reaction3,tag=Noxious2,tag=Potency1] run function ids-wings-of-fire:loop-required/generate-hotbars/rainwings/upgraded-abilities/venom-shot/trio/cooldown3-effectlinger2-rangeinc1