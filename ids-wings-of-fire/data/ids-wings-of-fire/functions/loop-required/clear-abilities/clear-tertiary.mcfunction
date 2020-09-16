#Clear Tertiary Abilities
execute if entity @p[team=!IceWings,nbt={Inventory:[{tag:{incisionactive:1}}]}] run clear @p[distance=0] white_dye{incisionactive:1}
execute if entity @p[team=!MudWings,nbt={Inventory:[{tag:{swipeactive:1}}]}] run clear @p[distance=0] orange_dye{swipeactive:1}
execute if entity @p[team=!NightWings,nbt={Inventory:[{tag:{sightactive:1}}]}] run clear @p[distance=0] gray_dye{sightactive:1}
execute if entity @p[team=!RainWings,nbt={Inventory:[{tag:{sapactive:1}}]}] run clear @p[distance=0] lime_dye{sapactive:1}
execute if entity @p[team=!SandWings,nbt={Inventory:[{tag:{toxinactive:1}}]}] run clear @p[distance=0] slime_ball{toxinactive:1}
execute if entity @p[team=!SeaWings,nbt={Inventory:[{tag:{flailactive:1}}]}] run clear @p[distance=0] light_blue_dye{flailactive:1}
execute if entity @p[team=!SkyWings,nbt={Inventory:[{tag:{emberstrike:1}}]}] run clear @p[distance=0] red_dye{emberstrike:1}

	#Clear Tertiary Ability Activators
execute if entity @p[team=!SkyWings,nbt={Inventory:[{tag:{sparkactivate:1}}]}] run clear @p[distance=0] carrot_on_a_stick{sparkactivate:1}