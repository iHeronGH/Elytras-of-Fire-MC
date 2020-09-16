execute as @a[team=RainWings,tag=!abilToggOff] run function ids-wings-of-fire:loop-required/generate-tags/venomactive
execute as @a[team=RainWings,tag=!abilToggOff] run function ids-wings-of-fire:loop-required/generate-tags/growthactive
execute if entity @a[team=RainWings,nbt=!{Inventory:[{tag:{rainarmor:1}}]}] run function ids-wings-of-fire:launch-add-ons/apply-armours/rainwing-scales
execute as @a[team=RainWings,predicate=ids-wings-of-fire:detect-sneak] at @s run function ids-wings-of-fire:loop-required/generate-armour/rainwing-camo
execute as @a[team=RainWings] at @s run function ids-wings-of-fire:loop-required/camo-effect
execute at @a[team=RainWings,tag=!abilToggOff] run function ids-wings-of-fire:loop-required/upgrades/rainwing-upgrades
function ids-wings-of-fire:launch-add-ons/team-effects/effect-rainwings
function ids-wings-of-fire:loop-required/generate-armour/elytra-check