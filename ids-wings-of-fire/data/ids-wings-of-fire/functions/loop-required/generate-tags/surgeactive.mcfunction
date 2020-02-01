#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Ready Sky Surge
execute if entity @e[type=player,nbt={SelectedItem:{tag:{adrenaline:1}}},nbt=!{Inventory:[{Slot:-106b,tag:{surgeactivate:1}}]}] run replaceitem entity @e[type=player,team=SkyWings,nbt={SelectedItem:{tag:{adrenaline:1}}},nbt=!{Inventory:[{Slot:-106b,tag:{surgeactivate:1}}]}] weapon.offhand minecraft:carrot_on_a_stick{surgeactivate:1}
execute if entity @e[type=player,nbt=!{SelectedItem:{tag:{adrenaline:1}}}] run clear @e[type=player,nbt=!{SelectedItem:{tag:{adrenaline:1}}}] minecraft:carrot_on_a_stick{surgeactivate:1}

#Tag SurgeActive
tag @e[type=player,team=SkyWings,scores={RCSurge=1..},tag=!SurgeActive,tag=!CoolDown2,nbt={Inventory:[{Slot:-106b,tag:{surgeactivate:1}}]}] add SurgeActive
execute if entity @e[type=player,team=SkyWings,scores={RCSurge=1..}] run scoreboard players set @e[type=player,team=SkyWings,scores={RCSurge=1..}] RCSurge 0