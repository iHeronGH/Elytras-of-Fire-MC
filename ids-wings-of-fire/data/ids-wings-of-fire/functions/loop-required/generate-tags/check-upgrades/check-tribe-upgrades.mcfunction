#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Check Upgrades
execute if entity @a[tag=Pyrrhian,tag=!abilToggOff] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/check-primary
execute if entity @a[tag=Pyrrhian,tag=!abilToggOff] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/check-secondary
execute if entity @a[tag=Pyrrhian,tag=!abilToggOff] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/check-tertiary