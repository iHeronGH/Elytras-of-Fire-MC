#Clear Secondary Abilities
execute if entity @p[team=!IceWings,nbt={Inventory:[{tag:{sharpedge:1}}]}] run clear @p[distance=0] light_gray_dye{sharpedge:1}
execute if entity @p[team=!MudWings,nbt={Inventory:[{tag:{crumble:1}}]}] run clear @p[distance=0] brown_dye{crumble:1}
execute if entity @p[team=!NightWings,nbt={Inventory:[{tag:{shadowbind:1}}]}] run clear @p[distance=0] purple_dye{shadowbind:1}
execute if entity @p[team=!RainWings,nbt={Inventory:[{tag:{fertilize:1}}]}] run clear @p[distance=0] green_dye{fertilize:1}
execute if entity @p[team=!SandWings,nbt={Inventory:[{tag:{sandstrike:1}}]}] run clear @p[distance=0] yellow_dye{sandstrike:1}
execute if entity @p[team=!SeaWings,nbt={Inventory:[{tag:{oceanicbless:1}}]}] run clear @p[distance=0] heart_of_the_sea{oceanicbless:1}
execute if entity @p[team=!SkyWings,nbt={Inventory:[{tag:{adrenaline:1}}]}] run clear @p[distance=0] magma_cream{adrenaline:1}

	#Clear Secondary Ability Activators
execute if entity @p[team=!IceWings,nbt={Inventory:[{tag:{strikeactivate:1}}]}] run clear @p[distance=0] carrot_on_a_stick{strikeactivate:1}
execute if entity @p[team=!MudWings,nbt={Inventory:[{tag:{shockactivate:1}}]}] run clear @p[distance=0] carrot_on_a_stick{shockactivate:1}
execute if entity @p[team=!RainWings,nbt={Inventory:[{tag:{growthactivate:1}}]}] run clear @p[distance=0] carrot_on_a_stick{growthactivate:1}
execute if entity @p[team=!SandWings,nbt={Inventory:[{tag:{stormactivate:1}}]}] run clear @p[distance=0] carrot_on_a_stick{stormactivate:1}
execute if entity @p[team=!SkyWings,nbt={Inventory:[{tag:{surgeactivate:1}}]}] run clear @p[distance=0] carrot_on_a_stick{surgeactivate:1}