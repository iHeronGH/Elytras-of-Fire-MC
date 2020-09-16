execute as @a[team=IceWings,tag=!abilToggOff] run function ids-wings-of-fire:loop-required/generate-tags/frostactive
execute as @a[team=IceWings,tag=!abilToggOff] run function ids-wings-of-fire:loop-required/generate-tags/strikeactive
execute at @a[team=IceWings,tag=!abilToggOff] run function ids-wings-of-fire:loop-required/upgrades/icewing-upgrades
execute if entity @a[team=IceWings,nbt=!{Inventory:[{tag:{icearmor:1}}]}] run function ids-wings-of-fire:launch-add-ons/apply-armours/icewing-scales
function ids-wings-of-fire:launch-add-ons/team-effects/effect-icewings
function ids-wings-of-fire:loop-required/generate-armour/elytra-check