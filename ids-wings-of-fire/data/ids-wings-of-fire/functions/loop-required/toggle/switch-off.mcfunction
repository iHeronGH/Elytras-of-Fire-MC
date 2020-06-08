#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w
tag @s add abilToggOff

execute if entity @s[tag=abilToggOff] run clear @s #ids-wings-of-fire:abilities{primary:1}
execute if entity @s[tag=abilToggOff] run clear @s #ids-wings-of-fire:abilities{secondary:1}
execute if entity @s[tag=abilToggOff] run clear @s #ids-wings-of-fire:abilities{tertiary:1}

tellraw @s [{"text":"Abilities toggled off!","color":"gray","bold":true,"clickEvent":{"action":"run_command","value":"/trigger abilities"}}]

tag @s remove toggSwitch