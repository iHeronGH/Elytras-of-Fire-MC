execute as @a[team=SandWings,tag=!abilToggOff] run function eof:loop-required/generate-tags/flameactive
execute as @a[team=SandWings,tag=!abilToggOff] run function eof:loop-required/generate-tags/stormactive
execute if entity @a[team=SandWings,nbt=!{Inventory:[{tag:{sandarmor:1}}]}] run function eof:launch-add-ons/apply-armours/sandwing-scales
execute at @a[team=SandWings,tag=!abilToggOff] run function eof:loop-required/upgrades/sandwing-upgrades
function eof:launch-add-ons/team-effects/effect-sandwings
function eof:loop-required/generate-armour/elytra-check
#execute as @a[team=SandWings,tag=!abilToggOff] if entity @s[tag=StormActive] run function eof:loop-required/secondaries/desert-storm