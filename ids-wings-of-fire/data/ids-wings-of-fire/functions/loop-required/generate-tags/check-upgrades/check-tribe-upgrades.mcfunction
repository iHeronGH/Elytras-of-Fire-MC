#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Check Upgrades

	#Primary Upgrades
execute as @s[team=IceWings] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/perma/ice-primary
execute as @s[team=MudWings] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/mud-primary
execute as @s[team=NightWings] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/night-primary
execute as @s[team=RainWings] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/potent/rain-primary
execute as @s[team=SandWings] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/sand-primary
execute as @s[team=SeaWings] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/porous/sea-primary
execute as @s[team=SkyWings] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/sky-primary

	#Secondary Upgrades
execute as @s[team=IceWings] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/perma/ice-secondary
execute as @s[team=MudWings] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/mud-secondary
execute as @s[team=NightWings] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/night-secondary
execute as @s[team=RainWings] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/potent/rain-secondary
execute as @s[team=SandWings] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/sand-secondary
execute as @s[team=SeaWings] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/porous/sea-secondary
execute as @s[team=SkyWings] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/sky-secondary

	#Tertiary Abilities
execute as @s[team=IceWings] run function ids-wings-of-fire:loop-required/generate-hotbars/icewings/icicle-incision
execute as @s[team=MudWings] run function ids-wings-of-fire:loop-required/generate-hotbars/mudwings/mud-swipe
execute as @s[team=NightWings] run function ids-wings-of-fire:loop-required/generate-hotbars/nightwings/premonition
execute as @s[team=RainWings] run function ids-wings-of-fire:loop-required/generate-hotbars/rainwings/soul-sap
execute as @s[team=SandWings] run function ids-wings-of-fire:loop-required/generate-hotbars/sandwings/toxin-slash
execute as @s[team=SeaWings] run function ids-wings-of-fire:loop-required/generate-hotbars/seawings/tail-flail
execute as @s[team=SkyWings] run function ids-wings-of-fire:loop-required/generate-hotbars/skywings/spark-punch