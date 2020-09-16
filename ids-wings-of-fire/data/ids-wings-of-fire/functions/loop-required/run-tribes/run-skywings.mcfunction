execute as @a[team=SkyWings,tag=!abilToggOff] run function ids-wings-of-fire:loop-required/generate-tags/flameactive
execute as @a[team=SkyWings,tag=!abilToggOff] run function ids-wings-of-fire:loop-required/generate-tags/surgeactive
execute as @a[team=SkyWings,tag=!abilToggOff] run function ids-wings-of-fire:loop-required/generate-tags/sparkactive
execute if entity @a[team=SkyWings,nbt=!{Inventory:[{tag:{skyarmor:1}}]}] run function ids-wings-of-fire:launch-add-ons/apply-armours/skywing-scales
execute at @a[team=SkyWings,tag=!abilToggOff] run function ids-wings-of-fire:loop-required/upgrades/skywing-upgrades
function ids-wings-of-fire:launch-add-ons/team-effects/effect-skywings
function ids-wings-of-fire:loop-required/generate-armour/elytra-check