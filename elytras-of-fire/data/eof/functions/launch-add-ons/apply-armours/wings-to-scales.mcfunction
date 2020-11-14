#Wings to Scales
execute if entity @a[team=IceWings,tag=!isFlying,nbt={Inventory:[{tag:{tribewings:1}}]}] run function ids-wings-of-fire:launch-add-ons/apply-armours/icewing-scales
execute if entity @a[team=MudWings,tag=!isFlying,nbt={Inventory:[{tag:{tribewings:1}}]}] run function ids-wings-of-fire:launch-add-ons/apply-armours/mudwing-scales
execute if entity @a[team=NightWings,tag=!isFlying,nbt={Inventory:[{tag:{tribewings:1}}]}] run function ids-wings-of-fire:launch-add-ons/apply-armours/nightwing-scales
execute if entity @a[team=RainWings,tag=!isFlying,nbt={Inventory:[{tag:{tribewings:1}}]}] as @a[team=RainWings,tag=!isFlying,nbt={Inventory:[{tag:{tribewings:1}}]}] positioned ~ ~0.45 ~ run function ids-wings-of-fire:loop-required/generate-armour/rainwing-camo
execute if entity @a[team=SandWings,tag=!isFlying,nbt={Inventory:[{tag:{tribewings:1}}]}] run function ids-wings-of-fire:launch-add-ons/apply-armours/sandwing-scales
execute if entity @a[team=SeaWings,tag=!isFlying,nbt={Inventory:[{tag:{tribewings:1}}]}] run function ids-wings-of-fire:launch-add-ons/apply-armours/seawing-scales
execute if entity @a[team=SkyWings,tag=!isFlying,nbt={Inventory:[{tag:{tribewings:1}}]}] run function ids-wings-of-fire:launch-add-ons/apply-armours/skywing-scales