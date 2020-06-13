#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Ready Desert Storm
execute if entity @s[tag=!Activator,nbt={SelectedItem:{tag:{sandstrike:1}}}] run replaceitem entity @s weapon.offhand carrot_on_a_stick{CustomModelData:1,stormactivate:1,activator:1}
execute if entity @s[nbt=!{SelectedItem:{tag:{sandstrike:1}}},nbt={Inventory:[{tag:{stormactivate:1}}]}] run clear @s carrot_on_a_stick{stormactivate:1}

#Tag StormActive
execute if entity @s[tag=!StormActive,tag=!CoolDown2,scores={RCStorm=1..},nbt={SelectedItem:{tag:{sandstrike:1}}}] run tag @s add StormActive
execute if entity @s[scores={RCStorm=1..}] run scoreboard players set @s RCStorm 0