#Ready Terrashock
execute if entity @s[nbt=!{Inventory:[{Slot:-106b}]},nbt={SelectedItem:{tag:{crumble:1}}}] run replaceitem entity @s weapon.offhand carrot_on_a_stick{CustomModelData:1,shockactivate:1,activator:1}
execute if entity @s[nbt=!{SelectedItem:{tag:{crumble:1}}},nbt={Inventory:[{tag:{shockactivate:1}}]}] run clear @s carrot_on_a_stick{shockactivate:1}

#Tag ShockActive
execute if entity @s[tag=!ShockActive,tag=!CoolDown2,scores={RCShock=1..},nbt={SelectedItem:{tag:{crumble:1}}}] run tag @s add ShockActive
execute if entity @s[tag=ShockActive] run function ids-wings-of-fire:loop-required/secondaries/grant-buffs/mudwing-buffs
execute if entity @s[scores={RCShock=1..}] run scoreboard players set @s RCShock 0