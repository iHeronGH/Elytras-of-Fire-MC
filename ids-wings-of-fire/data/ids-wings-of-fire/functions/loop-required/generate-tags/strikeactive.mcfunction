#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Ready Serrated Strike
execute if entity @e[type=player,nbt={SelectedItem:{tag:{sharpedge:1}}},nbt=!{Inventory:[{Slot:-106b,tag:{strikeactivate:1}}]}] run replaceitem entity @e[type=player,team=IceWings,nbt={SelectedItem:{tag:{sharpedge:1}}},nbt=!{Inventory:[{Slot:-106b,tag:{strikeactivate:1}}]}] weapon.offhand minecraft:carrot_on_a_stick{strikeactivate:1}
execute if entity @e[type=player,nbt=!{SelectedItem:{tag:{sharpedge:1}}}] run clear @e[type=player,nbt=!{SelectedItem:{tag:{sharpedge:1}}}] minecraft:carrot_on_a_stick{strikeactivate:1}

#Tag StrikeActive
tag @e[type=player,team=IceWings,scores={RCStrike=1..},tag=!StrikeActive,tag=!CoolDown2,nbt={Inventory:[{Slot:-106b,tag:{strikeactivate:1}}]}] add StrikeActive
execute if entity @e[type=player,team=IceWings,scores={RCStrike=1..}] run scoreboard players set @e[type=player,team=IceWings,scores={RCStrike=1..}] RCStrike 0