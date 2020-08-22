execute as @a[team=SeaWings,tag=!abilToggOff] run function ids-wings-of-fire:loop-required/generate-tags/wateractive
execute as @a[team=SeaWings,tag=!abilToggOff,nbt={SelectedItem:{tag:{oceanicbless:1}}}] at @s run function ids-wings-of-fire:loop-required/secondaries/grant-buffs/seawing-buffs
function ids-wings-of-fire:launch-add-ons/team-effects/effect-seawings