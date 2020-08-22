execute as @a[team=SandWings,tag=!abilToggOff] run function ids-wings-of-fire:loop-required/generate-tags/flameactive
execute as @a[team=SandWings,tag=!abilToggOff] run function ids-wings-of-fire:loop-required/generate-tags/stormactive
function ids-wings-of-fire:launch-add-ons/team-effects/effect-sandwings
#execute as @a[team=SandWings,tag=!abilToggOff] if entity @s[tag=StormActive] run function ids-wings-of-fire:loop-required/secondaries/desert-storm