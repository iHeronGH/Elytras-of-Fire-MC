#Clear Incorrect Abilities
execute at @a[tag=!Dragon,nbt={Inventory:[{tag:{primary:1}}]}] run function eof:loop-required/clear-abilities/clear-primary
execute at @a[tag=!Dragon,nbt={Inventory:[{tag:{secondary:1}}]}] run function eof:loop-required/clear-abilities/clear-secondary
execute at @a[tag=!Dragon,nbt={Inventory:[{tag:{tertiary:1}}]}] run function eof:loop-required/clear-abilities/clear-tertiary