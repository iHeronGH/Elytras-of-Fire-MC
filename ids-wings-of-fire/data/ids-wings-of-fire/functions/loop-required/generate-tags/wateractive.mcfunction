#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Ready Tidal Wave
execute if entity @s[predicate=ids-wings-of-fire:detect-sneak,nbt={SelectedItem:{tag:{waterwave:1}}},nbt=!{Inventory:[{Slot:-106b}]}] run replaceitem entity @s weapon.offhand carrot_on_a_stick{wateractivate:1,activator:1}
execute if entity @s[nbt=!{SelectedItem:{tag:{waterwave:1}}},nbt={Inventory:[{tag:{wateractivate:1}}]}] run clear @s carrot_on_a_stick{wateractivate:1}
execute if entity @s[predicate=!ids-wings-of-fire:detect-sneak,nbt={Inventory:[{tag:{wateractivate:1}}]}] run clear @s carrot_on_a_stick{wateractivate:1}

#Tag WaterActive
execute if entity @s[tag=!WaterActive,tag=!CoolDown1,scores={RCOcean=1..},predicate=ids-wings-of-fire:detect-sneak,nbt={SelectedItem:{tag:{waterwave:1}}}] run tag @s add WaterActive
execute if entity @s[scores={RCOcean=1..}] run scoreboard players set @s RCOcean 0