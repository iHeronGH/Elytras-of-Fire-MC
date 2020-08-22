#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Clear Primary Abilities
execute if entity @p[team=!IceWings,nbt={Inventory:[{tag:{frostbreath:1}}]}] run clear @p prismarine_shard{frostbreath:1}
execute if entity @p[team=!MudWings,nbt={Inventory:[{tag:{mwflame:1}}]}] run clear @p blaze_powder{mwflame:1}
execute if entity @p[team=!NightWings,nbt={Inventory:[{tag:{nwflame:1}}]}] run clear @p blaze_powder{nwflame:1}
execute if entity @p[team=!RainWings,nbt={Inventory:[{tag:{venomshot:1}}]}] run clear @p black_dye{venomshot:1}
execute if entity @p[team=!SandWings,nbt={Inventory:[{tag:{snwflame:1}}]}] run clear @p blaze_powder{snwflame:1}
execute if entity @p[team=!SeaWings,nbt={Inventory:[{tag:{waterwave:1}}]}] run clear @p prismarine_crystals{waterwave:1}
execute if entity @p[team=!SkyWings,nbt={Inventory:[{tag:{skwflame:1}}]}] run clear @p blaze_powder{skwflame:1}

	#Clear Primary Ability Activators
execute if entity @p[tag=!Pyre,nbt={Inventory:[{tag:{flameactivate:1}}]}] run clear @p carrot_on_a_stick{flameactivate:1}
execute if entity @p[team=!IceWings,nbt={Inventory:[{tag:{frostactivate:1}}]}] run clear @p carrot_on_a_stick{frostactivate:1}
execute if entity @p[team=!LeafWings,nbt={Inventory:[{tag:{furyactivate:1}}]}] run clear @p carrot_on_a_stick{furyactivate:1}
execute if entity @p[team=!RainWings,nbt={Inventory:[{tag:{venomactivate:1}}]}] run clear @p carrot_on_a_stick{venomactivate:1}
execute if entity @p[team=!SeaWings,nbt={Inventory:[{tag:{wateractivate:1}}]}] run clear @p carrot_on_a_stick{wateractivate:1}