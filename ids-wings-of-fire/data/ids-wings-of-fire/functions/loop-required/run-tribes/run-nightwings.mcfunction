execute as @a[team=NightWings,tag=!abilToggOff] run function ids-wings-of-fire:loop-required/generate-tags/flameactive
execute as @a[team=NightWings,tag=!abilToggOff,nbt={SelectedItem:{tag:{shadowbind:1}}}] at @s run function ids-wings-of-fire:loop-required/secondaries/grant-buffs/nightwing-buffs
execute if entity @a[team=NightWings,nbt=!{Inventory:[{tag:{nightarmor:1}}]}] run function ids-wings-of-fire:launch-add-ons/apply-armours/nightwing-scales
execute at @a[team=NightWings,tag=!abilToggOff] run function ids-wings-of-fire:loop-required/upgrades/nightwing-upgrades
function ids-wings-of-fire:launch-add-ons/team-effects/effect-nightwings
function ids-wings-of-fire:loop-required/generate-armour/elytra-check