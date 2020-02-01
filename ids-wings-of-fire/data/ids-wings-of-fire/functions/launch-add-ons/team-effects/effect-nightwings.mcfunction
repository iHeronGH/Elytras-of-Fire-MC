#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Effect All NightWings
effect give @e[type=player,team=NightWings] minecraft:strength 1 0 true
effect give @e[type=player,team=NightWings] minecraft:night_vision 1000000 0 true
effect give @e[type=player,team=NightWings,predicate=ids-wings-of-fire:check-sunrise-to-sunset] minecraft:speed 1 1 true

#Effect Shade Shackle
tag @e[type=player,team=NightWings,tag=!ShadowBindActive,nbt={SelectedItem:{tag:{shadowbind:1}}}] add ShadowBindActive
execute at @e[type=player,tag=ShadowBindActive] run tag @e[distance=..12] add ShadowBindEffect
execute at @e[type=player,tag=ShadowBindActive] run effect give @e[tag=ShadowBindEffect] minecraft:slowness 1 2 true
execute at @e[type=player,tag=ShadowBindActive] run effect give @e[distance=0.1..12,tag=ShadowBindEffect] minecraft:blindness 2 0 true

#Clear Shade Shackle Effect
execute as @e[type=player,team=NightWings,nbt=!{SelectedItem:{tag:{shadowbind:1}}}] run function ids-wings-of-fire:launch-add-ons/disable-shade-shackle
tag @e[type=player,team=NightWings,tag=ShadowBindActive,nbt=!{SelectedItem:{tag:{shadowbind:1}}}] remove ShadowBindActive