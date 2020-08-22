#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Clear Tertiary Abilities
execute if entity @p[team=!IceWings,nbt={Inventory:[{tag:{incisionactive:1}}]}] run clear @p white_dye{incisionactive:1}
execute if entity @p[team=!MudWings,nbt={Inventory:[{tag:{swipeactive:1}}]}] run clear @p orange_dye{swipeactive:1}
execute if entity @p[team=!NightWings,nbt={Inventory:[{tag:{sightactive:1}}]}] run clear @p gray_dye{sightactive:1}
execute if entity @p[team=!RainWings,nbt={Inventory:[{tag:{sapactive:1}}]}] run clear @p lime_dye{sapactive:1}
execute if entity @p[team=!SandWings,nbt={Inventory:[{tag:{toxinactive:1}}]}] run clear @p slime_ball{toxinactive:1}
execute if entity @p[team=!SeaWings,nbt={Inventory:[{tag:{flailactive:1}}]}] run clear @p light_blue_dye{flailactive:1}
execute if entity @p[team=!SkyWings,nbt={Inventory:[{tag:{emberstrike:1}}]}] run clear @p red_dye{emberstrike:1}

	#Clear Tertiary Ability Activators
execute if entity @p[team=!SkyWings,nbt={Inventory:[{tag:{sparkactivate:1}}]}] run clear @p carrot_on_a_stick{sparkactivate:1}