execute as @a[team=MudWings,tag=!abilToggOff] run function ids-wings-of-fire:loop-required/generate-tags/flameactive
execute as @a[team=MudWings,tag=!abilToggOff] run function ids-wings-of-fire:loop-required/generate-tags/shockactive
execute if entity @a[team=MudWings,nbt=!{Inventory:[{tag:{mudarmor:1}}]}] run function ids-wings-of-fire:launch-add-ons/apply-armours/mudwing-scales
execute at @a[team=MudWings,tag=!abilToggOff] run function ids-wings-of-fire:loop-required/upgrades/mudwing-upgrades
function ids-wings-of-fire:launch-add-ons/team-effects/effect-mudwings
function ids-wings-of-fire:loop-required/generate-armour/elytra-check