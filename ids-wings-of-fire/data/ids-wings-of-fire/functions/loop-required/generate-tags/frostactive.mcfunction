#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Ready Frost Breath
execute if entity @e[type=player,nbt={SelectedItem:{tag:{frostbreath:1}}},nbt=!{Inventory:[{Slot:-106b,tag:{frostactivate:1}}]}] run replaceitem entity @e[type=player,tag=Perma,nbt={SelectedItem:{tag:{frostbreath:1}}},nbt=!{Inventory:[{Slot:-106b,tag:{frostactivate:1}}]}] weapon.offhand minecraft:carrot_on_a_stick{frostactivate:1}
execute if entity @e[type=player,nbt=!{SelectedItem:{tag:{frostbreath:1}}}] run clear @e[type=player,nbt=!{SelectedItem:{tag:{frostbreath:1}}}] minecraft:carrot_on_a_stick{frostactivate:1}

#Tag FrostActive
tag @e[type=player,tag=Perma,scores={RCFrost=1..},predicate=ids-wings-of-fire:detect-sneak,tag=!FrostActive,tag=!CoolDown1,nbt={Inventory:[{Slot:-106b,tag:{frostactivate:1}}]}] add FrostActive
execute if entity @e[type=player,tag=Perma,scores={RCFrost=1..}] run scoreboard players set @e[type=player,tag=Perma,scores={RCFrost=1..}] RCFrost 0