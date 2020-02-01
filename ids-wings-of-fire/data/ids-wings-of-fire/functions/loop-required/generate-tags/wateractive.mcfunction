#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Ready Tidal Waves
execute if entity @e[type=player,nbt={SelectedItem:{tag:{waterwave:1}}},nbt=!{Inventory:[{Slot:-106b,tag:{wateractivate:1}}]}] run replaceitem entity @e[type=player,tag=Porous,nbt={SelectedItem:{tag:{waterwave:1}}},nbt=!{Inventory:[{Slot:-106b,tag:{wateractivate:1}}]}] weapon.offhand minecraft:carrot_on_a_stick{wateractivate:1}
execute if entity @e[type=player,nbt=!{SelectedItem:{tag:{waterwave:1}}}] run clear @e[type=player,nbt=!{SelectedItem:{tag:{waterwave:1}}}] minecraft:carrot_on_a_stick{wateractivate:1}

#Tag WaterActive
tag @e[type=player,tag=Porous,scores={RCOcean=1..},predicate=ids-wings-of-fire:detect-sneak,tag=!WaterActive,tag=!CoolDown1,nbt={Inventory:[{Slot:-106b,tag:{wateractivate:1}}]}] add WaterActive
execute if entity @e[type=player,tag=Porous,scores={RCOcean=1..}] run scoreboard players set @e[type=player,tag=Porous,scores={RCOcean=1..}] RCOcean 0