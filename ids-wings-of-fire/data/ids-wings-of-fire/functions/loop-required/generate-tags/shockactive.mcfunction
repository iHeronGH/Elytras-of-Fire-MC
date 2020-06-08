#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Ready Terrashock
execute if entity @s[nbt={SelectedItem:{tag:{crumble:1}}},nbt=!{Inventory:[{Slot:-106b}]}] run replaceitem entity @s weapon.offhand carrot_on_a_stick{CustomModelData:1,shockactivate:1,activator:1}
execute if entity @s[nbt=!{SelectedItem:{tag:{crumble:1}}},nbt={Inventory:[{tag:{shockactivate:1}}]}] run clear @s carrot_on_a_stick{shockactivate:1}

#Tag ShockActive
execute if entity @s[tag=!ShockActive,tag=!CoolDown2,scores={RCShock=1..},nbt={SelectedItem:{tag:{crumble:1}}}] run tag @s add ShockActive
execute if entity @s[scores={RCShock=1..}] run scoreboard players set @s RCShock 0