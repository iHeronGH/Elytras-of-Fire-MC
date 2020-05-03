#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Ready Spark Punch
execute if entity @s[nbt={SelectedItem:{tag:{emberstrike:1}}},nbt=!{Inventory:[{Slot:-106b}]}] run replaceitem entity @s weapon.offhand carrot_on_a_stick{sparkactivate:1,activator:1}
execute if entity @s[nbt=!{SelectedItem:{tag:{emberstrike:1}}},nbt={Inventory:[{tag:{sparkactivate:1}}]}] run clear @s carrot_on_a_stick{sparkactivate:1}

#Tag toggleSpark
execute if entity @s[tag=!toggleSpark,scores={RCSpark=1..},nbt={SelectedItem:{tag:{emberstrike:1}}}] run tag @s add toggleSpark
execute if entity @s[tag=toggleSpark,nbt={SelectedItem:{tag:{sparkmode:1}}}] run tag @s add sparkMode
execute if entity @s[tag=toggleSpark,nbt={SelectedItem:{tag:{smitemode:1}}}] run tag @s add smiteMode
execute if entity @s[scores={RCSpark=1..},nbt={SelectedItem:{tag:{emberstrike:1}}}] run function ids-wings-of-fire:loop-required/tertiaries/spark-punch-toggle
execute if entity @s[scores={RCSpark=1..}] run scoreboard players set @s RCSpark 0