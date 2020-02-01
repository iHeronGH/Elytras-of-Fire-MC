#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Ready Terrashock
execute if entity @e[type=player,nbt={SelectedItem:{tag:{crumble:1}}},nbt=!{Inventory:[{Slot:-106b,tag:{shockactivate:1}}]}] run replaceitem entity @e[type=player,team=MudWings,nbt={SelectedItem:{tag:{crumble:1}}},nbt=!{Inventory:[{Slot:-106b,tag:{shockactivate:1}}]}] weapon.offhand minecraft:carrot_on_a_stick{shockactivate:1}
execute if entity @e[type=player,nbt=!{SelectedItem:{tag:{crumble:1}}}] run clear @e[type=player,nbt=!{SelectedItem:{tag:{crumble:1}}}] minecraft:carrot_on_a_stick{shockactivate:1}

#Tag ShockActive
tag @e[type=player,team=MudWings,scores={RCShock=1..},tag=!ShockActive,tag=!CoolDown2,nbt={Inventory:[{Slot:-106b,tag:{shockactivate:1}}]}] add ShockActive
execute if entity @e[type=player,team=MudWings,scores={RCShock=1..}] run scoreboard players set @e[type=player,team=MudWings,scores={RCShock=1..}] RCShock 0