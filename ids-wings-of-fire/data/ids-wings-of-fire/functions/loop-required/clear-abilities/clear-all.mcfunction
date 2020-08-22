#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Clear Incorrect Abilities
execute at @a[nbt={Inventory:[{tag:{primary:1}}]}] run function ids-wings-of-fire:loop-required/clear-abilities/clear-primary
execute at @a[nbt={Inventory:[{tag:{secondary:1}}]}] run function ids-wings-of-fire:loop-required/clear-abilities/clear-secondary
execute at @a[nbt={Inventory:[{tag:{tertiary:1}}]}] run function ids-wings-of-fire:loop-required/clear-abilities/clear-tertiary