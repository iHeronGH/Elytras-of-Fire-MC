#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Ready Frost Breath
execute if entity @s[predicate=ids-wings-of-fire:detect-sneak,nbt={SelectedItem:{tag:{frostbreath:1}}},nbt=!{Inventory:[{Slot:-106b}]}] run replaceitem entity @s weapon.offhand carrot_on_a_stick{frostactivate:1,activator:1}
execute if entity @s[nbt=!{SelectedItem:{tag:{frostbreath:1}}},nbt={Inventory:[{tag:{frostactivate:1}}]}] run clear @s carrot_on_a_stick{frostactivate:1}
execute if entity @s[predicate=!ids-wings-of-fire:detect-sneak,nbt={Inventory:[{tag:{frostactivate:1}}]}] run clear @s carrot_on_a_stick{frostactivate:1}

#Tag FrostActive
execute if entity @s[tag=!FrostActive,tag=!CoolDown1,scores={RCFrost=1..},predicate=ids-wings-of-fire:detect-sneak,nbt={SelectedItem:{tag:{frostbreath:1}}}] run tag @s add FrostActive
execute if entity @s[scores={RCFrost=1..}] run scoreboard players set @s RCFrost 0