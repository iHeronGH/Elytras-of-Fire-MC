#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Ready Venom Shot
execute if entity @s[predicate=ids-wings-of-fire:detect-sneak,scores={Activator=0},nbt={SelectedItem:{tag:{venomshot:1}}}] run replaceitem entity @s weapon.offhand carrot_on_a_stick{venomactivate:1,activator:1}
execute if entity @s[nbt=!{SelectedItem:{tag:{venomshot:1}}},nbt={Inventory:[{tag:{venomactivate:1}}]}] run clear @s carrot_on_a_stick{venomactivate:1}
execute if entity @s[predicate=!ids-wings-of-fire:detect-sneak,nbt={Inventory:[{tag:{venomactivate:1}}]}] run clear @s carrot_on_a_stick{venomactivate:1}

#Tag VenomActive
execute if entity @s[tag=!VenomActive,tag=!CoolDown1,scores={RCVenom=1..},predicate=ids-wings-of-fire:detect-sneak,nbt={SelectedItem:{tag:{venomshot:1}}}] run tag @s add VenomActive
execute if entity @s[scores={RCVenom=1..}] run scoreboard players set @s RCVenom 0