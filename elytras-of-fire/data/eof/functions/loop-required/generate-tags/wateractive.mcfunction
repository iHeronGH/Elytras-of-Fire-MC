#Ready Tidal Wave
execute if entity @s[predicate=eof:detect-sneak,nbt=!{Inventory:[{Slot:-106b}]},nbt={SelectedItem:{tag:{waterwave:1}}}] run replaceitem entity @s weapon.offhand carrot_on_a_stick{CustomModelData:1,wateractivate:1,activator:1}
execute if entity @s[nbt=!{SelectedItem:{tag:{waterwave:1}}},nbt={Inventory:[{tag:{wateractivate:1}}]}] run clear @s carrot_on_a_stick{wateractivate:1}
execute if entity @s[predicate=!eof:detect-sneak,nbt={Inventory:[{tag:{wateractivate:1}}]}] run clear @s carrot_on_a_stick{wateractivate:1}

#Tag WaterActive
execute if entity @s[tag=!WaterActive,tag=!CoolDown1,scores={RCOcean=1..},predicate=eof:detect-sneak,nbt={SelectedItem:{tag:{waterwave:1}}}] run tag @s add WaterActive
execute if entity @s[tag=WaterActive] run function eof:loop-required/primaries/grant-buffs/seawing-buffs
execute if entity @s[scores={RCOcean=1..}] run scoreboard players set @s RCOcean 0