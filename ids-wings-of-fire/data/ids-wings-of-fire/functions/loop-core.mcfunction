#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Runs Datapack


	#Runs Help
execute if entity @e[type=player] run function ids-wings-of-fire:loop-required/help

	#Generate Armours
execute if entity @e[type=player] run function ids-wings-of-fire:loop-required/generate-armour/check-armours
execute if entity @e[type=player,team=RainWings,predicate=ids-wings-of-fire:detect-sneak] run function ids-wings-of-fire:loop-required/generate-armour/rainwing-camo



	#Start Timer
function ids-wings-of-fire:loop-required/start-timer



	#Activate Primary/Secondary Abilities
execute if entity @e[type=player,team=IceWings] run function ids-wings-of-fire:loop-required/primaries/grant-buffs/perma/icewing-buffs
execute if entity @e[type=player,team=MudWings] run function ids-wings-of-fire:loop-required/primaries/grant-buffs/pyre/mudwing-buffs
execute if entity @e[type=player,team=NightWings] run function ids-wings-of-fire:loop-required/primaries/grant-buffs/pyre/nightwing-buffs
execute if entity @e[type=player,team=RainWings] run function ids-wings-of-fire:loop-required/primaries/grant-buffs/potent/rainwing-buffs
execute if entity @e[type=player,team=SandWings] run function ids-wings-of-fire:loop-required/primaries/grant-buffs/pyre/sandwing-buffs
execute if entity @e[type=player,team=SeaWings] run function ids-wings-of-fire:loop-required/primaries/grant-buffs/porous/seawing-buffs
execute if entity @e[type=player,team=SkyWings] run function ids-wings-of-fire:loop-required/primaries/grant-buffs/pyre/skywing-buffs
execute if entity @e[type=player,team=IceWings,nbt={SelectedItem:{tag:{secondary:1}}}] run function ids-wings-of-fire:loop-required/secondaries/serrated-strike
execute if entity @e[type=player,team=MudWings,nbt={SelectedItem:{tag:{secondary:1}}}] run function ids-wings-of-fire:loop-required/secondaries/terrashock
execute if entity @e[type=player,team=RainWings,nbt={SelectedItem:{tag:{secondary:1}}}] run function ids-wings-of-fire:loop-required/secondaries/overgrowth
execute if entity @e[type=player,team=SandWings,nbt={SelectedItem:{tag:{secondary:1}}}] run function ids-wings-of-fire:loop-required/secondaries/desert-storm
execute if entity @e[type=player,team=SkyWings,nbt={SelectedItem:{tag:{secondary:1}}}] run function ids-wings-of-fire:loop-required/secondaries/sky-surge



	#Tag Tribe Members
execute if entity @e[type=player] run function ids-wings-of-fire:loop-required/generate-tags/team-tags
execute if entity @e[type=player,tag=Pyre] run function ids-wings-of-fire:loop-required/generate-tags/flameactive
execute if entity @e[type=player,tag=Perma] run function ids-wings-of-fire:loop-required/generate-tags/frostactive
execute if entity @e[type=player,tag=Potent] run function ids-wings-of-fire:loop-required/generate-tags/venomactive
execute if entity @e[type=player,tag=Porous] run function ids-wings-of-fire:loop-required/generate-tags/wateractive
execute if entity @e[type=player,team=IceWings] run function ids-wings-of-fire:loop-required/generate-tags/strikeactive
execute if entity @e[type=player,team=MudWings] run function ids-wings-of-fire:loop-required/generate-tags/shockactive
execute if entity @e[type=player,team=RainWings] run function ids-wings-of-fire:loop-required/generate-tags/growthactive
execute if entity @e[type=player,team=SandWings] run function ids-wings-of-fire:loop-required/generate-tags/stormactive
execute if entity @e[type=player,team=SkyWings] run function ids-wings-of-fire:loop-required/generate-tags/surgeactive



	#Afflict Passive Effects
execute if entity @e[type=player,team=IceWings] run function ids-wings-of-fire:launch-add-ons/team-effects/effect-icewings
execute if entity @e[type=player,team=MudWings] run function ids-wings-of-fire:launch-add-ons/team-effects/effect-mudwings
execute if entity @e[type=player,team=NightWings] run function ids-wings-of-fire:launch-add-ons/team-effects/effect-nightwings
execute if entity @e[type=player,team=RainWings] run function ids-wings-of-fire:launch-add-ons/team-effects/effect-rainwings
execute if entity @e[type=player,team=SandWings] run function ids-wings-of-fire:launch-add-ons/team-effects/effect-sandwings
execute if entity @e[type=player,team=SeaWings] run function ids-wings-of-fire:launch-add-ons/team-effects/effect-seawings
execute if entity @e[type=player,team=SkyWings] run function ids-wings-of-fire:launch-add-ons/team-effects/effect-skywings



	#Generate Hotbars
execute if entity @e[type=player,team=IceWings] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/check-icewing-upgrades
execute if entity @e[type=player,team=IceWings] run function ids-wings-of-fire:loop-required/generate-hotbars/perma/honed-slice
execute if entity @e[type=player,team=MudWings] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/check-mudwing-upgrades
execute if entity @e[type=player,team=MudWings] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/tremor-tremble
execute if entity @e[type=player,team=NightWings] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/check-nightwing-upgrades
execute if entity @e[type=player,team=NightWings] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/dark-aura
execute if entity @e[type=player,team=RainWings] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/check-rainwing-upgrades
execute if entity @e[type=player,team=RainWings] run function ids-wings-of-fire:loop-required/generate-hotbars/potent/fertilize
execute if entity @e[type=player,team=SandWings] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/check-sandwing-upgrades
execute if entity @e[type=player,team=SandWings] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/toxin-slash
execute if entity @e[type=player,team=SandWings] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/scorched-sands
execute if entity @e[type=player,team=SeaWings] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/check-seawing-upgrades
execute if entity @e[type=player,team=SeaWings] run function ids-wings-of-fire:loop-required/generate-hotbars/porous/tail-flail
execute if entity @e[type=player,team=SeaWings] run function ids-wings-of-fire:loop-required/generate-hotbars/porous/ocean-bless
execute if entity @e[type=player,team=SkyWings] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/check-skywing-upgrades
execute if entity @e[type=player,team=SkyWings] run function ids-wings-of-fire:loop-required/generate-hotbars/pyre/second-wind



	#Discourage Ability Dispersion
execute if entity @e[type=item,tag=] if score t_sec timer matches 19 run function ids-wings-of-fire:loop-required/kill-abilities
execute if entity @e[type=player] run function ids-wings-of-fire:loop-required/clear-abilities
execute if entity @e[type=player,team=!] run function ids-wings-of-fire:loop-required/check-extras



	#Clear NV
execute if entity @e[type=player,nbt={ActiveEffects:[{Id:16b}]},team=!NightWings,team=!SeaWings] run effect clear @e[type=player,team=!NightWings,team=!SeaWings,nbt={ActiveEffects:[{Id:16b}]}] night_vision



	#Trigger Upgrade Launch
execute if entity @e[type=player,team=!] run function ids-wings-of-fire:loop-required/run-upgrades