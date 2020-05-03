#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Clear Primary Abilities
execute if entity @s[tag=!Pyre,nbt={Inventory:[{tag:{flamebreath:1}}]}] run clear @s blaze_powder{flamebreath:1}
execute if entity @s[team=!IceWings,nbt={Inventory:[{tag:{frostbreath:1}}]}] run clear @s prismarine_shard{frostbreath:1}
execute if entity @s[team=!RainWings,nbt={Inventory:[{tag:{venomshot:1}}]}] run clear @s black_dye{venomshot:1}
execute if entity @s[team=!SeaWings,nbt={Inventory:[{tag:{waterwave:1}}]}] run clear @s prismarine_crystals{waterwave:1}

	#Clear Primary Ability Activators
execute if entity @s[tag=!Pyre,nbt={Inventory:[{tag:{flameactivate:1}}]}] run clear @s carrot_on_a_stick{flameactivate:1}
execute if entity @s[team=!IceWings,nbt={Inventory:[{tag:{frostactivate:1}}]}] run clear @s carrot_on_a_stick{frostactivate:1}
execute if entity @s[team=!RainWings,nbt={Inventory:[{tag:{venomactivate:1}}]}] run clear @s carrot_on_a_stick{venomactivate:1}
execute if entity @s[team=!SeaWings,nbt={Inventory:[{tag:{wateractivate:1}}]}] run clear @s carrot_on_a_stick{wateractivate:1}

#Clear Secondary Abilities
execute if entity @s[team=!IceWings,nbt={Inventory:[{tag:{sharpedge:1}}]}] run clear @s light_gray_dye{sharpedge:1}
execute if entity @s[team=!MudWings,nbt={Inventory:[{tag:{crumble:1}}]}] run clear @s brown_dye{crumble:1}
execute if entity @s[team=!NightWings,nbt={Inventory:[{tag:{shadowbind:1}}]}] run clear @s purple_dye{shadowbind:1}
execute if entity @s[team=!RainWings,nbt={Inventory:[{tag:{fertilize:1}}]}] run clear @s green_dye{fertilize:1}
execute if entity @s[team=!SandWings,nbt={Inventory:[{tag:{sandstrike:1}}]}] run clear @s yellow_dye{sandstrike:1}
execute if entity @s[team=!SeaWings,nbt={Inventory:[{tag:{oceanicbless:1}}]}] run clear @s heart_of_the_sea{oceanicbless:1}
execute if entity @s[team=!SkyWings,nbt={Inventory:[{tag:{adrenaline:1}}]}] run clear @s magma_cream{adrenaline:1}

	#Clear Secondary Ability Activators
execute if entity @s[team=!IceWings,nbt={Inventory:[{tag:{strikeactivate:1}}]}] run clear @s carrot_on_a_stick{strikeactivate:1}
execute if entity @s[team=!MudWings,nbt={Inventory:[{tag:{shockactivate:1}}]}] run clear @s carrot_on_a_stick{shockactivate:1}
execute if entity @s[team=!RainWings,nbt={Inventory:[{tag:{growthactivate:1}}]}] run clear @s carrot_on_a_stick{growthactivate:1}
execute if entity @s[team=!SandWings,nbt={Inventory:[{tag:{stormactivate:1}}]}] run clear @s carrot_on_a_stick{stormactivate:1}
execute if entity @s[team=!SkyWings,nbt={Inventory:[{tag:{surgeactivate:1}}]}] run clear @s carrot_on_a_stick{surgeactivate:1}

#Clear Tertiary Abilities
execute if entity @s[team=!IceWings,nbt={Inventory:[{tag:{incisionactive:1}}]}] run clear @s white_dye{incisionactive:1}
execute if entity @s[team=!NightWings,nbt={Inventory:[{tag:{sightactive:1}}]}] run clear @s gray_dye{sightactive:1}
execute if entity @s[team=!RainWings,nbt={Inventory:[{tag:{swipeactive:1}}]}] run clear @s lime_dye{swipeactive:1}
execute if entity @s[team=!SandWings,nbt={Inventory:[{tag:{toxinactive:1}}]}] run clear @s slime_ball{toxinactive:1}
execute if entity @s[team=!SeaWings,nbt={Inventory:[{tag:{flailactive:1}}]}] run clear @s light_blue_dye{flailactive:1}
execute if entity @s[team=!SkyWings,nbt={Inventory:[{tag:{emberstrike:1}}]}] run clear @s red_dye{emberstrike:1}

	#Clear Tertiary Ability Activators
execute if entity @s[team=!SkyWings,nbt={Inventory:[{tag:{sparkactivate:1}}]}] run clear @s carrot_on_a_stick{sparkactivate:1}
	