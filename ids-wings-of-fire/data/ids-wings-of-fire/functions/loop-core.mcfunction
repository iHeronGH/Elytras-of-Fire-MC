#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Run Datapack
	#SP vs MP
execute store result score playerCount players if entity @a

	#Runs Help
execute if score playerCount players matches 1 run function ids-wings-of-fire:loop-required/help
execute if score playerCount players matches 2.. run function ids-wings-of-fire:loop-required/help-server

	#Generate Armours
execute as @a[tag=Dragon] run function ids-wings-of-fire:loop-required/generate-armour/give-armour
execute as @a[tag=!Dragon] run function ids-wings-of-fire:loop-required/generate-armour/remove-armour
execute as @a[team=RainWings,predicate=ids-wings-of-fire:detect-sneak] at @s run function ids-wings-of-fire:loop-required/generate-armour/rainwing-camo

	#Start Timer
function ids-wings-of-fire:loop-required/start-timer

	#Track XP
execute as @a[tag=Dragon] store result score @s xp run data get entity @s XpTotal

	#Enable Abilities SB
scoreboard players enable @a abilities

	#Activate Primary/Secondary Abilities
execute as @a[team=IceWings,tag=FrostActive] run function ids-wings-of-fire:loop-required/primaries/grant-buffs/icewing-buffs
execute as @a[team=MudWings,tag=FlameActive] run function ids-wings-of-fire:loop-required/primaries/grant-buffs/mudwing-buffs
execute as @a[team=NightWings,tag=FlameActive] run function ids-wings-of-fire:loop-required/primaries/grant-buffs/nightwing-buffs
execute as @a[team=RainWings,tag=VenomActive] run function ids-wings-of-fire:loop-required/primaries/grant-buffs/rainwing-buffs
execute as @a[team=SandWings,tag=FlameActive] run function ids-wings-of-fire:loop-required/primaries/grant-buffs/sandwing-buffs
execute as @a[team=SeaWings,tag=WaterActive] run function ids-wings-of-fire:loop-required/primaries/grant-buffs/seawing-buffs
execute as @a[team=SkyWings,tag=FlameActive] run function ids-wings-of-fire:loop-required/primaries/grant-buffs/skywing-buffs
execute as @a[team=IceWings,tag=StrikeActive] run function ids-wings-of-fire:loop-required/secondaries/grant-buffs/icewing-buffs
execute as @a[team=MudWings,tag=ShockActive] run function ids-wings-of-fire:loop-required/secondaries/grant-buffs/mudwing-buffs
execute as @a[team=NightWings,nbt={SelectedItem:{tag:{shadowbind:1}}}] run function ids-wings-of-fire:loop-required/secondaries/grant-buffs/nightwing-buffs
execute as @a[team=RainWings,tag=GrowthActive] run function ids-wings-of-fire:loop-required/secondaries/grant-buffs/rainwing-buffs
execute as @a[team=SandWings,tag=StormActive] run function ids-wings-of-fire:loop-required/secondaries/grant-buffs/sandwing-buffs
execute as @a[team=SeaWings,nbt={SelectedItem:{tag:{oceanicbless:1}}}] run function ids-wings-of-fire:loop-required/secondaries/grant-buffs/seawing-buffs
execute as @a[team=SkyWings,tag=SurgeActive] run function ids-wings-of-fire:loop-required/secondaries/grant-buffs/skywing-buffs

	#Tag Tribe Members
execute as @a run function ids-wings-of-fire:loop-required/generate-tags/team-tags
execute as @a run function ids-wings-of-fire:loop-required/generate-tags/ability-tags
execute as @a run function ids-wings-of-fire:loop-required/generate-tags/is-flying
execute as @a[tag=Pyre] run function ids-wings-of-fire:loop-required/generate-tags/flameactive
execute as @a[team=IceWings] run function ids-wings-of-fire:loop-required/generate-tags/frostactive
execute as @a[team=RainWings] run function ids-wings-of-fire:loop-required/generate-tags/venomactive
execute as @a[team=SeaWings] run function ids-wings-of-fire:loop-required/generate-tags/wateractive
execute as @a[team=IceWings] run function ids-wings-of-fire:loop-required/generate-tags/strikeactive
execute as @a[team=MudWings] run function ids-wings-of-fire:loop-required/generate-tags/shockactive
execute as @a[team=RainWings] run function ids-wings-of-fire:loop-required/generate-tags/growthactive
execute as @a[team=SandWings] run function ids-wings-of-fire:loop-required/generate-tags/stormactive
execute as @a[team=SkyWings] run function ids-wings-of-fire:loop-required/generate-tags/surgeactive
execute as @a[team=SkyWings] run function ids-wings-of-fire:loop-required/generate-tags/sparkactive

	#Afflict Passive Effects
execute as @a[team=IceWings] run function ids-wings-of-fire:launch-add-ons/team-effects/effect-icewings
execute as @a[team=MudWings] run function ids-wings-of-fire:launch-add-ons/team-effects/effect-mudwings
execute as @a[team=NightWings] run function ids-wings-of-fire:launch-add-ons/team-effects/effect-nightwings
execute as @a[team=RainWings] run function ids-wings-of-fire:launch-add-ons/team-effects/effect-rainwings
execute as @a[team=SandWings] run function ids-wings-of-fire:launch-add-ons/team-effects/effect-sandwings
execute as @a[team=SeaWings] run function ids-wings-of-fire:launch-add-ons/team-effects/effect-seawings
execute as @a[team=SkyWings] run function ids-wings-of-fire:launch-add-ons/team-effects/effect-skywings

	#Execute Ability Toggle
execute as @a run function ids-wings-of-fire:loop-required/ability-toggle

	#Discourage Ability Dispersion
execute if score t_sec timer matches 19 as @e[type=item,tag=] run function ids-wings-of-fire:loop-required/kill-abilities
execute as @a run function ids-wings-of-fire:loop-required/clear-abilities
execute as @a[tag=!abilToggOff] run function ids-wings-of-fire:loop-required/check-extras

	#Trigger Upgrade Launch
execute as @a[tag=Dragon] run function ids-wings-of-fire:loop-required/run-upgrades

	#Generate Hotbars
execute as @a[tag=Dragon,tag=!abilToggOff] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/check-tribe-upgrades

	#Execute Synergies
execute as @a[team=IceWings,tag=!abilToggOff] run function ids-wings-of-fire:loop-required/synergies/frostbite