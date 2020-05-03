#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Ready Flame Breath
execute if entity @s[predicate=ids-wings-of-fire:detect-sneak,nbt={SelectedItem:{tag:{flamebreath:1}}},nbt=!{Inventory:[{Slot:-106b}]}] run replaceitem entity @s weapon.offhand carrot_on_a_stick{flameactivate:1,activator:1}
execute if entity @s[nbt=!{SelectedItem:{tag:{flamebreath:1}}},nbt={Inventory:[{tag:{flameactivate:1}}]}] run clear @s carrot_on_a_stick{flameactivate:1}
execute if entity @s[predicate=!ids-wings-of-fire:detect-sneak,nbt={Inventory:[{tag:{flameactivate:1}}]}] run clear @s carrot_on_a_stick{flameactivate:1}

#Tag FlameActive
execute if entity @s[tag=!FlameActive,tag=!CoolDown1,scores={RCFlame=1..},predicate=ids-wings-of-fire:detect-sneak,nbt={SelectedItem:{tag:{flamebreath:1}}}] run tag @s add FlameActive
execute if entity @s[scores={RCFlame=1..}] run scoreboard players set @s RCFlame 0