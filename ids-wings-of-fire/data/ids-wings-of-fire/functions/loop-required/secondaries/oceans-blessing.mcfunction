#Ocean's Blessing Effect
execute if entity @s[nbt={SelectedItem:{tag:{oceanicbless:1,stock:1}}}] at @s if block ~ ~ ~ #ids-wings-of-fire:families/water run effect give @s speed 1 1 true
execute if entity @s[nbt={ActiveEffects:[{Id:1b}]}] at @s unless block ~ ~ ~ #ids-wings-of-fire:families/water run effect clear @s speed
execute at @s[nbt=!{Health:20f}] if block ~ ~ ~ #ids-wings-of-fire:families/water run effect give @s[nbt=!{ActiveEffects:[{Id:10b}]}] regeneration 4 0 true