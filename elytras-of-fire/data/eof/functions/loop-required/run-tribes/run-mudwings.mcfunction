execute as @a[team=MudWings,tag=!abilToggOff] run function eof:loop-required/generate-tags/flameactive
execute as @a[team=MudWings,tag=!abilToggOff] run function eof:loop-required/generate-tags/shockactive
execute if entity @a[team=MudWings,nbt=!{Inventory:[{tag:{mudarmor:1}}]}] run function eof:launch-add-ons/apply-armours/mudwing-scales
execute at @a[team=MudWings,tag=!abilToggOff] run function eof:loop-required/upgrades/mudwing-upgrades
function eof:launch-add-ons/team-effects/effect-mudwings
function eof:loop-required/generate-armour/elytra-check