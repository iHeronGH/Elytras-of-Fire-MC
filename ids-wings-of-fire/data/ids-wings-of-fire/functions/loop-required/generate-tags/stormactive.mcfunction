#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Ready Desert Storm
execute if entity @e[type=player,nbt={SelectedItem:{tag:{sandstrike:1}}},nbt=!{Inventory:[{Slot:-106b,tag:{stormactivate:1}}]}] run replaceitem entity @e[type=player,team=SandWings,nbt={SelectedItem:{tag:{sandstrike:1}}},nbt=!{Inventory:[{Slot:-106b,tag:{stormactivate:1}}]}] weapon.offhand minecraft:carrot_on_a_stick{stormactivate:1}
execute if entity @e[type=player,nbt=!{SelectedItem:{tag:{sandstrike:1}}}] run clear @e[type=player,nbt=!{SelectedItem:{tag:{sandstrike:1}}}] minecraft:carrot_on_a_stick{stormactivate:1}

#Tag StormActive
tag @e[type=player,team=SandWings,scores={RCStorm=1..},tag=!StormActive,tag=!CoolDown2,nbt={Inventory:[{Slot:-106b,tag:{stormactivate:1}}]}] add StormActive
execute if entity @e[type=player,team=SandWings,scores={RCStorm=1..}] run scoreboard players set @e[type=player,team=SandWings,scores={RCStorm=1..}] RCStorm 0