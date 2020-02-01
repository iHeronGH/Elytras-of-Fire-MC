#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Ready Flame Breath
execute if entity @e[type=player,nbt={SelectedItem:{tag:{flamebreath:1}}},nbt=!{Inventory:[{Slot:-106b,tag:{flameactivate:1}}]}] run replaceitem entity @e[type=player,tag=Pyre,nbt={SelectedItem:{tag:{flamebreath:1}}},nbt=!{Inventory:[{Slot:-106b,tag:{flameactivate:1}}]}] weapon.offhand minecraft:carrot_on_a_stick{flameactivate:1}
execute if entity @e[type=player,nbt=!{SelectedItem:{tag:{flamebreath:1}}}] run clear @e[type=player,nbt=!{SelectedItem:{tag:{flamebreath:1}}}] minecraft:carrot_on_a_stick{flameactivate:1}

#Tag FlameActive
tag @e[type=player,tag=Pyre,scores={RCFlame=1..},predicate=ids-wings-of-fire:detect-sneak,tag=!FlameActive,tag=!CoolDown1] add FlameActive
execute if entity @e[type=player,tag=Pyre,scores={RCFlame=1..}] run scoreboard players set @e[type=player,tag=Pyre,scores={RCFlame=1..}] RCFlame 0