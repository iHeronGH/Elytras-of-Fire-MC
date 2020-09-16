execute as @a[team=SeaWings,tag=!abilToggOff] run function ids-wings-of-fire:loop-required/generate-tags/wateractive
execute as @a[team=SeaWings,tag=!abilToggOff,nbt={SelectedItem:{tag:{oceanicbless:1}}}] at @s run function ids-wings-of-fire:loop-required/secondaries/grant-buffs/seawing-buffs
execute if entity @a[team=SeaWings,nbt=!{Inventory:[{tag:{seaarmor:1}}]}] run function ids-wings-of-fire:launch-add-ons/apply-armours/seawing-scales
execute at @a[team=SeaWings,tag=!abilToggOff] run function ids-wings-of-fire:loop-required/upgrades/seawing-upgrades
function ids-wings-of-fire:launch-add-ons/team-effects/effect-seawings
function ids-wings-of-fire:loop-required/generate-armour/elytra-check