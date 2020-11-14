execute as @a[team=RainWings,tag=!abilToggOff] run function eof:loop-required/generate-tags/venomactive
execute as @a[team=RainWings,tag=!abilToggOff] run function eof:loop-required/generate-tags/growthactive
execute if entity @a[team=RainWings,nbt=!{Inventory:[{tag:{rainarmor:1}}]}] run function eof:launch-add-ons/apply-armours/rainwing-scales
execute as @a[team=RainWings,predicate=eof:detect-sneak] at @s run function eof:loop-required/generate-armour/rainwing-camo
execute as @a[team=RainWings] at @s run function eof:loop-required/camo-effect
execute at @a[team=RainWings,tag=!abilToggOff] run function eof:loop-required/upgrades/rainwing-upgrades
function eof:launch-add-ons/team-effects/effect-rainwings
function eof:loop-required/generate-armour/elytra-check