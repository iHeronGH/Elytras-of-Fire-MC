#Ready Sky Surge
execute if entity @s[nbt=!{Inventory:[{Slot:-106b}]},nbt={SelectedItem:{tag:{adrenaline:1}}}] run replaceitem entity @s weapon.offhand carrot_on_a_stick{CustomModelData:1,surgeactivate:1,activator:1}
execute if entity @s[nbt=!{SelectedItem:{tag:{adrenaline:1}}},nbt={Inventory:[{tag:{surgeactivate:1}}]}] run clear @s carrot_on_a_stick{surgeactivate:1}

#Tag SurgeActive
execute if entity @s[tag=!SurgeActive,tag=!CoolDown2,scores={RCSurge=1..},nbt={SelectedItem:{tag:{adrenaline:1}}}] run tag @s add SurgeActive
execute if entity @s[tag=SurgeActive] run function ids-wings-of-fire:loop-required/secondaries/grant-buffs/skywing-buffs
execute if entity @s[scores={RCSurge=1..}] run scoreboard players set @s RCSurge 0