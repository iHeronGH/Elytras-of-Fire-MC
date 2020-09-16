#Effect All IceWings
effect give @a[team=IceWings] strength 1 1 true
effect clear @a[team=IceWings,tag=nv] night_vision
tag @a[team=IceWings,tag=nv] remove nv

#Speed 3 / 2 on Snow / Ice
execute as @a[team=IceWings] at @s if block ~ ~-0.51 ~ snow_block run effect give @s speed 1 2 true
execute as @a[team=IceWings] at @s if block ~ ~ ~ snow run effect give @s speed 1 2 true
execute as @a[team=IceWings] at @s if block ~ ~-0.51 ~ #ice run effect give @s speed 1 1 true

#Icicle Incision Effect
execute as @a[team=IceWings,tag=!abilToggOff] run function ids-wings-of-fire:loop-required/synergies/frostbite
execute as @a[team=IceWings,nbt={SelectedItem:{tag:{incisionactive:1}}},scores={Attack=1..}] at @s run effect give @e[tag=!hasFrost1,tag=!hasFrost2,tag=!hasFrost3,nbt=!{HurtTime:0s},nbt=!{ActiveEffects:[{Id:19b}]},distance=0.1..4] poison 2 0 true
execute as @a[team=IceWings,nbt={SelectedItem:{tag:{incisionactive:1}}},scores={Attack=1..}] at @s run effect give @e[tag=hasFrost1,nbt=!{HurtTime:0s},nbt=!{ActiveEffects:[{Id:20b}]},distance=0.1..4] wither 2 1 true
execute as @a[team=IceWings,nbt={SelectedItem:{tag:{incisionactive:1}}},scores={Attack=1..}] at @s run effect give @e[tag=hasFrost2,nbt=!{HurtTime:0s},nbt=!{ActiveEffects:[{Id:20b}]},distance=0.1..4] wither 3 1 true
execute as @a[team=IceWings,nbt={SelectedItem:{tag:{incisionactive:1}}},scores={Attack=1..}] at @s run effect give @e[tag=hasFrost3,nbt=!{HurtTime:0s},nbt=!{ActiveEffects:[{Id:20b}]},distance=0.1..4] wither 2 2 true
execute as @a[team=IceWings,scores={Attack=1..}] run scoreboard players set @s Attack 0