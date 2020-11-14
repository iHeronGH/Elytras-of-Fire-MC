#Ready Flame Breath
execute if entity @s[predicate=eof:detect-sneak,nbt=!{Inventory:[{Slot:-106b}]},nbt={SelectedItem:{tag:{flamebreath:1}}}] run replaceitem entity @s weapon.offhand carrot_on_a_stick{CustomModelData:1,flameactivate:1,activator:1}
execute if entity @s[nbt=!{SelectedItem:{tag:{flamebreath:1}}},nbt={Inventory:[{tag:{flameactivate:1}}]}] run clear @s carrot_on_a_stick{flameactivate:1}
execute if entity @s[predicate=!eof:detect-sneak,nbt={Inventory:[{tag:{flameactivate:1}}]}] run clear @s carrot_on_a_stick{flameactivate:1}

#Tag FlameActive
execute if entity @s[tag=!FlameActive,tag=!CoolDown1,scores={RCFlame=1..},predicate=eof:detect-sneak,nbt={SelectedItem:{tag:{flamebreath:1}}}] run tag @s add FlameActive
execute if entity @s[team=MudWings,tag=FlameActive] run function eof:loop-required/primaries/grant-buffs/mudwing-buffs
execute if entity @s[team=NightWings,tag=FlameActive] run function eof:loop-required/primaries/grant-buffs/nightwing-buffs
execute if entity @s[team=SandWings,tag=FlameActive] run function eof:loop-required/primaries/grant-buffs/sandwing-buffs
execute if entity @s[team=SkyWings,tag=FlameActive] run function eof:loop-required/primaries/grant-buffs/skywing-buffs
execute if entity @s[scores={RCFlame=1..}] run scoreboard players set @s RCFlame 0