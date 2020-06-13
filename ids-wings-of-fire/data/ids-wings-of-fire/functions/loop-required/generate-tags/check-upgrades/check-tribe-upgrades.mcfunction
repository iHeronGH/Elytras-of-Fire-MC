#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Check Upgrades

	#Primary Upgrades
execute as @a[team=IceWings] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/perma/ice-primary
execute as @a[team=MudWings] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/mud-primary
execute as @a[team=NightWings] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/night-primary
execute as @a[team=RainWings] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/potent/rain-primary
execute as @a[team=SandWings] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/sand-primary
execute as @a[team=SeaWings] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/porous/sea-primary
execute as @a[team=SkyWings] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/sky-primary

	#Secondary Upgrades
execute as @a[team=IceWings] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/perma/ice-secondary
execute as @a[team=MudWings] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/mud-secondary
execute as @a[team=NightWings] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/night-secondary
execute as @a[team=RainWings] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/potent/rain-secondary
execute as @a[team=SandWings] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/sand-secondary
execute as @a[team=SeaWings] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/porous/sea-secondary
execute as @a[team=SkyWings] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/pyre/sky-secondary

	#Tertiary Abilities
execute as @a[team=IceWings] run function ids-wings-of-fire:loop-required/generate-hotbars/icewings/icicle-incision
execute as @a[team=MudWings] run function ids-wings-of-fire:loop-required/generate-hotbars/mudwings/mud-swipe
execute as @a[team=NightWings] run function ids-wings-of-fire:loop-required/generate-hotbars/nightwings/premonition
execute as @a[team=RainWings] run function ids-wings-of-fire:loop-required/generate-hotbars/rainwings/soul-sap
execute as @a[team=SandWings] run function ids-wings-of-fire:loop-required/generate-hotbars/sandwings/toxin-slash
execute as @a[team=SeaWings] run function ids-wings-of-fire:loop-required/generate-hotbars/seawings/tail-flail
execute as @a[team=SkyWings] run function ids-wings-of-fire:loop-required/generate-hotbars/skywings/spark-punch