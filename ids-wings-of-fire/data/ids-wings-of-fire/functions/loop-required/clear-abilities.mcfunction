#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Clear Primary Abilities
execute if entity @e[type=player,tag=!Pyre,nbt={Inventory:[{tag:{primary:1}}]}] run clear @e[type=player,tag=!Pyre,nbt={Inventory:[{tag:{primary:1}}]}] minecraft:blaze_powder{primary:1}
execute if entity @e[type=player,tag=!Perma,nbt={Inventory:[{tag:{primary:1}}]}] run clear @e[type=player,tag=!Perma,nbt={Inventory:[{tag:{primary:1}}]}] minecraft:prismarine_shard{primary:1}
execute if entity @e[type=player,tag=!Potent,nbt={Inventory:[{tag:{primary:1}}]}] run clear @e[type=player,tag=!Potent,nbt={Inventory:[{tag:{primary:1}}]}] minecraft:black_dye{primary:1}
execute if entity @e[type=player,tag=!Porous,nbt={Inventory:[{tag:{primary:1}}]}] run clear @e[type=player,tag=!Porous,nbt={Inventory:[{tag:{primary:1}}]}] minecraft:prismarine_crystals{primary:1}

	#Clear Primary Ability Activators
execute if entity @e[type=player,tag=!Pyre,nbt={Inventory:[{tag:{flameactivate:1}}]}] run clear @e[type=player,tag=!Pyre,nbt={Inventory:[{tag:{flameactivate:1}}]}] minecraft:carrot_on_a_stick{flameactivate:1}
execute if entity @e[type=player,tag=!Perma,nbt={Inventory:[{tag:{frostactivate:1}}]}] run clear @e[type=player,tag=!Perma,nbt={Inventory:[{tag:{frostactivate:1}}]}] minecraft:carrot_on_a_stick{frostactivate:1}
execute if entity @e[type=player,tag=!Potent,nbt={Inventory:[{tag:{venomactivate:1}}]}] run clear @e[type=player,tag=!Potent,nbt={Inventory:[{tag:{venomactivate:1}}]}] minecraft:carrot_on_a_stick{venomactivate:1}
execute if entity @e[type=player,tag=!Porous,nbt={Inventory:[{tag:{wateractivate:1}}]}] run clear @e[type=player,tag=!Porous,nbt={Inventory:[{tag:{wateractivate:1}}]}] minecraft:carrot_on_a_stick{wateractivate:1}

#Clear Secondary Abilities
execute if entity @e[type=player,team=!IceWings,nbt={Inventory:[{tag:{secondary:1}}]}] run clear @e[type=player,team=!IceWings,nbt={Inventory:[{tag:{secondary:1}}]}] minecraft:light_gray_dye{secondary:1}
execute if entity @e[type=player,team=!MudWings,nbt={Inventory:[{tag:{secondary:1}}]}] run clear @e[type=player,team=!MudWings,nbt={Inventory:[{tag:{secondary:1}}]}] minecraft:brown_dye{secondary:1}
execute if entity @e[type=player,team=!NightWings,nbt={Inventory:[{tag:{secondary:1}}]}] run clear @e[type=player,team=!NightWings,nbt={Inventory:[{tag:{secondary:1}}]}] minecraft:purple_dye{secondary:1}
execute if entity @e[type=player,team=!RainWings,nbt={Inventory:[{tag:{secondary:1}}]}] run clear @e[type=player,team=!RainWings,nbt={Inventory:[{tag:{secondary:1}}]}] minecraft:green_dye{secondary:1}
execute if entity @e[type=player,team=!SandWings,nbt={Inventory:[{tag:{secondary:1}}]}] run clear @e[type=player,team=!SandWings,nbt={Inventory:[{tag:{secondary:1}}]}] minecraft:yellow_dye{secondary:1}
execute if entity @e[type=player,team=!SeaWings,nbt={Inventory:[{tag:{secondary:1}}]}] run clear @e[type=player,team=!SeaWings,nbt={Inventory:[{tag:{secondary:1}}]}] minecraft:heart_of_the_sea{secondary:1}
execute if entity @e[type=player,team=!SkyWings,nbt={Inventory:[{tag:{secondary:1}}]}] run clear @e[type=player,team=!SkyWings,nbt={Inventory:[{tag:{secondary:1}}]}] minecraft:magma_cream{secondary:1}

	#Clear Secondary Ability Activators
execute if entity @e[type=player,team=!IceWings,nbt={Inventory:[{tag:{strikeactivate:1}}]}] run clear @e[type=player,team=!IceWings,nbt={Inventory:[{tag:{strikeactivate:1}}]}] minecraft:carrot_on_a_stick{strikeactivate:1}
execute if entity @e[type=player,team=!MudWings,nbt={Inventory:[{tag:{shockactivate:1}}]}] run clear @e[type=player,team=!MudWings,nbt={Inventory:[{tag:{shockactivate:1}}]}] minecraft:carrot_on_a_stick{shockactivate:1}
execute if entity @e[type=player,team=!RainWings,nbt={Inventory:[{tag:{growthactivate:1}}]}] run clear @e[type=player,team=!RainWings,nbt={Inventory:[{tag:{growthactivate:1}}]}] minecraft:carrot_on_a_stick{growthactivate:1}
execute if entity @e[type=player,team=!SkyWings,nbt={Inventory:[{tag:{surgeactivate:1}}]}] run clear @e[type=player,team=!SkyWings,nbt={Inventory:[{tag:{surgeactivate:1}}]}] minecraft:carrot_on_a_stick{surgeactivate:1}
execute if entity @e[type=player,team=!SandWings,nbt={Inventory:[{tag:{stormactivate:1}}]}] run clear @e[type=player,team=!SandWings,nbt={Inventory:[{tag:{stormactivate:1}}]}] minecraft:carrot_on_a_stick{stormactivate:1}

#Clear Tertiary Abilities
execute if entity @e[type=player,team=!SandWings,nbt={Inventory:[{tag:{tertiary:1}}]}] run clear @e[type=player,team=!SandWings,nbt={Inventory:[{tag:{tertiary:1}}]}] minecraft:slime_ball{tertiary:1}
execute if entity @e[type=player,team=!SeaWings,nbt={Inventory:[{tag:{tertiary:1}}]}] run clear @e[type=player,team=!SeaWings,nbt={Inventory:[{tag:{tertiary:1}}]}] minecraft:light_blue_dye{tertiary:1}
