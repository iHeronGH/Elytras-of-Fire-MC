#Check Upgrades
execute if entity @a[tag=Pyrrhian,tag=!abilToggOff] run function eof:loop-required/generate-tags/check-upgrades/check-primary
execute if entity @a[tag=Pyrrhian,tag=!abilToggOff] run function eof:loop-required/generate-tags/check-upgrades/check-secondary
execute if entity @a[tag=Pyrrhian,tag=!abilToggOff] run function eof:loop-required/generate-tags/check-upgrades/check-tertiary