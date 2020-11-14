execute as @a[team=SeaWings,tag=!abilToggOff] run function eof:loop-required/generate-tags/wateractive
execute as @a[team=SeaWings,tag=!abilToggOff,nbt={SelectedItem:{tag:{oceanicbless:1}}}] at @s run function eof:loop-required/secondaries/grant-buffs/seawing-buffs
execute if entity @a[team=SeaWings,nbt=!{Inventory:[{tag:{seaarmor:1}}]}] run function eof:launch-add-ons/apply-armours/seawing-scales
execute at @a[team=SeaWings,tag=!abilToggOff] run function eof:loop-required/upgrades/seawing-upgrades
function eof:launch-add-ons/team-effects/effect-seawings
function eof:loop-required/generate-armour/elytra-check