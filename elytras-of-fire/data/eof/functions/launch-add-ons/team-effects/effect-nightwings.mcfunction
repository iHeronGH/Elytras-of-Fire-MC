#Effect All NightWings
effect give @a[team=NightWings] strength 1 0 true
tag @a[team=NightWings,tag=!nv] add nv
effect give @a[team=NightWinsg,tag=nv] night_vision 1000000 0 true
execute if predicate ids-wings-of-fire:check-sunrise-to-sunset run effect give @a[team=NightWings] speed 1 1 true

#Premonition Effect
execute as @a[team=NightWings,nbt={SelectedItem:{tag:{sightactive:1}}},scores={Attack=1..}] unless entity @s[scores={premonActive=1..}] run scoreboard players set @s premonActive 400
execute as @a[team=NightWings,scores={premonActive=400}] run title @s actionbar {"text":"Premonition is now active!","color":"gray","bold":true}
execute as @a[team=NightWings,scores={premonActive=200..}] run function ids-wings-of-fire:loop-required/entity-ownership
execute as @a[team=NightWings,scores={premonActive=200}] run title @s actionbar {"text":"Premonition has entered a 10s cooldown!","color":"gray","bold":true}
execute as @a[team=NightWings,scores={premonActive=1..}] run scoreboard players remove @s premonActive 1
execute as @a[team=NightWings,scores={premonActive=1}] run title @s actionbar {"text":"Premonition is no longer in cooldown!","color":"gray","bold":true}
execute as @a[team=NightWings,scores={Attack=1..}] run scoreboard players set @s Attack 0