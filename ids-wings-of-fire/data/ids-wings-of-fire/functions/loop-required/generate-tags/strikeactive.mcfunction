#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Ready Serrated Strike
execute if entity @s[nbt=!{Inventory:[{Slot:-106b}]},nbt={SelectedItem:{tag:{sharpedge:1}}}] run replaceitem entity @s weapon.offhand carrot_on_a_stick{CustomModelData:1,strikeactivate:1,activator:1}
execute if entity @s[nbt=!{SelectedItem:{tag:{sharpedge:1}}},nbt={Inventory:[{tag:{strikeactivate:1}}]}] run clear @s carrot_on_a_stick{strikeactivate:1}

#Tag StrikeActive
execute if entity @s[tag=!StrikeActive,tag=!CoolDown2,scores={RCStrike=1..},nbt={SelectedItem:{tag:{sharpedge:1}}}] run tag @s add StrikeActive
execute if entity @s[scores={RCStrike=1..}] run scoreboard players set @s RCStrike 0