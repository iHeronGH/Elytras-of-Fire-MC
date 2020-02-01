#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Ready Venom Shot
execute if entity @e[type=player,nbt={SelectedItem:{tag:{venomshot:1}}},nbt=!{Inventory:[{Slot:-106b,tag:{venomactivate:1}}]}] run replaceitem entity @e[type=player,tag=Potent,nbt={SelectedItem:{tag:{venomshot:1}}},nbt=!{Inventory:[{Slot:-106b,tag:{venomactivate:1}}]}] weapon.offhand minecraft:carrot_on_a_stick{venomactivate:1}
execute if entity @e[type=player,nbt=!{SelectedItem:{tag:{venomshot:1}}}] run clear @e[type=player,nbt=!{SelectedItem:{tag:{venomshot:1}}}] minecraft:carrot_on_a_stick{venomactivate:1}

#Tag VenomActive
tag @e[type=player,tag=Potent,scores={RCVenom=1..},predicate=ids-wings-of-fire:detect-sneak,tag=!VenomActive,tag=!CoolDown1,nbt={Inventory:[{Slot:-106b,tag:{venomactivate:1}}]}] add VenomActive
execute if entity @e[type=player,tag=Potent,scores={RCVenom=1..}] run scoreboard players set @e[type=player,tag=Potent,scores={RCVenom=1..}] RCVenom 0