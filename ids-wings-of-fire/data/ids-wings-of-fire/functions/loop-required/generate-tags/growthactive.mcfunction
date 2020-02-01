#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Ready Overgrowth
execute if entity @e[type=player,nbt={SelectedItem:{tag:{fertilize:1}}},nbt=!{Inventory:[{Slot:-106b,tag:{growthactivate:1}}]}] run replaceitem entity @e[type=player,team=RainWings,nbt={SelectedItem:{tag:{fertilize:1}}},nbt=!{Inventory:[{Slot:-106b,tag:{growthactivate:1}}]}] weapon.offhand minecraft:carrot_on_a_stick{growthactivate:1}
execute if entity @e[type=player,nbt=!{SelectedItem:{tag:{fertilize:1}}}] run clear @e[type=player,nbt=!{SelectedItem:{tag:{fertilize:1}}}] minecraft:carrot_on_a_stick{growthactivate:1}

#Tag GrowthActive
tag @e[type=player,team=RainWings,scores={RCGrowth=1..},tag=!GrowthActive,tag=!CoolDown2,nbt={Inventory:[{Slot:-106b,tag:{growthactivate:1}}]}] add GrowthActive
execute if entity @e[type=player,team=RainWings,scores={RCGrowth=1..}] run scoreboard players set @e[type=player,team=RainWings,scores={RCGrowth=1..}] RCGrowth 0