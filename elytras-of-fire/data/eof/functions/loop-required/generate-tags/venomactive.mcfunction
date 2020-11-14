#Ready Venom Shot
execute if entity @s[predicate=eof:detect-sneak,nbt=!{Inventory:[{Slot:-106b}]},nbt={SelectedItem:{tag:{venomshot:1}}}] run replaceitem entity @s weapon.offhand carrot_on_a_stick{CustomModelData:1,venomactivate:1,activator:1}
execute if entity @s[nbt=!{SelectedItem:{tag:{venomshot:1}}},nbt={Inventory:[{tag:{venomactivate:1}}]}] run clear @s carrot_on_a_stick{venomactivate:1}
execute if entity @s[predicate=!eof:detect-sneak,nbt={Inventory:[{tag:{venomactivate:1}}]}] run clear @s carrot_on_a_stick{venomactivate:1}

#Tag VenomActive
execute if entity @s[tag=!VenomActive,tag=!CoolDown1,scores={RCVenom=1..},predicate=eof:detect-sneak,nbt={SelectedItem:{tag:{venomshot:1}}}] run tag @s add VenomActive
execute if entity @s[tag=VenomActive] run function eof:loop-required/primaries/grant-buffs/rainwing-buffs
execute if entity @s[scores={RCVenom=1..}] run scoreboard players set @s RCVenom 0