#Ready Frost Breath
execute if entity @s[predicate=ids-wings-of-fire:detect-sneak,nbt=!{Inventory:[{Slot:-106b}]},nbt={SelectedItem:{tag:{frostbreath:1}}}] run replaceitem entity @s weapon.offhand carrot_on_a_stick{CustomModelData:1,frostactivate:1,activator:1}
execute if entity @s[nbt=!{SelectedItem:{tag:{frostbreath:1}}},nbt={Inventory:[{tag:{frostactivate:1}}]}] run clear @s carrot_on_a_stick{frostactivate:1}
execute if entity @s[predicate=!ids-wings-of-fire:detect-sneak,nbt={Inventory:[{tag:{frostactivate:1}}]}] run clear @s carrot_on_a_stick{frostactivate:1}

#Tag FrostActive
execute if entity @s[tag=!FrostActive,tag=!CoolDown1,scores={RCFrost=1..},predicate=ids-wings-of-fire:detect-sneak,nbt={SelectedItem:{tag:{frostbreath:1}}}] run tag @s add FrostActive
execute if entity @s[tag=FrostActive] run function ids-wings-of-fire:loop-required/primaries/grant-buffs/icewing-buffs
execute if entity @s[scores={RCFrost=1..}] run scoreboard players set @s RCFrost 0