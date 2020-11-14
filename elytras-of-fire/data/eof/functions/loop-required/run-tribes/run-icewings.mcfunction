execute as @a[team=IceWings,tag=!abilToggOff] run function eof:loop-required/generate-tags/frostactive
execute as @a[team=IceWings,tag=!abilToggOff] run function eof:loop-required/generate-tags/strikeactive
execute at @a[team=IceWings,tag=!abilToggOff] run function eof:loop-required/upgrades/icewing-upgrades
execute if entity @a[team=IceWings,nbt=!{Inventory:[{tag:{icearmor:1}}]}] run function eof:launch-add-ons/apply-armours/icewing-scales
function eof:launch-add-ons/team-effects/effect-icewings
function eof:loop-required/generate-armour/elytra-check