#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Ready Sky Surge
execute if entity @s[nbt={SelectedItem:{tag:{adrenaline:1}}},nbt=!{Inventory:[{Slot:-106b}]}] run replaceitem entity @s weapon.offhand carrot_on_a_stick{CustomModelData:1,surgeactivate:1,activator:1}
execute if entity @s[nbt=!{SelectedItem:{tag:{adrenaline:1}}},nbt={Inventory:[{tag:{surgeactivate:1}}]}] run clear @s carrot_on_a_stick{surgeactivate:1}

#Tag SurgeActive
execute if entity @s[tag=!SurgeActive,tag=!CoolDown2,scores={RCSurge=1..},nbt={SelectedItem:{tag:{adrenaline:1}}}] run tag @s add SurgeActive
execute if entity @s[scores={RCSurge=1..}] run scoreboard players set @s RCSurge 0