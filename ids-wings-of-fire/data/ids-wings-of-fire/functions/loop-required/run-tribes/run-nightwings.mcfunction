execute as @a[team=NightWings,tag=!abilToggOff] run function ids-wings-of-fire:loop-required/generate-tags/flameactive
execute as @a[team=NightWings,tag=!abilToggOff,nbt={SelectedItem:{tag:{shadowbind:1}}}] at @s run function ids-wings-of-fire:loop-required/secondaries/grant-buffs/nightwing-buffs
function ids-wings-of-fire:launch-add-ons/team-effects/effect-nightwings