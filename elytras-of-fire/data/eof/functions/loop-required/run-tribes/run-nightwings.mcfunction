execute as @a[team=NightWings,tag=!abilToggOff] run function eof:loop-required/generate-tags/flameactive
execute as @a[team=NightWings,tag=!abilToggOff,nbt={SelectedItem:{tag:{shadowbind:1}}}] at @s run function eof:loop-required/secondaries/grant-buffs/nightwing-buffs
execute if entity @a[team=NightWings,nbt=!{Inventory:[{tag:{nightarmor:1}}]}] run function eof:launch-add-ons/apply-armours/nightwing-scales
execute at @a[team=NightWings,tag=!abilToggOff] run function eof:loop-required/upgrades/nightwing-upgrades
function eof:launch-add-ons/team-effects/effect-nightwings
function eof:loop-required/generate-armour/elytra-check