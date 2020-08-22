#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Runs Upgrades
scoreboard players enable @a[tag=Pyrrhian] upgrades

#Generate Upgrades
execute at @a[team=IceWings,tag=!abilToggOff] run function ids-wings-of-fire:loop-required/upgrades/icewing-upgrades
execute at @a[team=MudWings,tag=!abilToggOff] run function ids-wings-of-fire:loop-required/upgrades/mudwing-upgrades
execute at @a[team=NightWings,tag=!abilToggOff] run function ids-wings-of-fire:loop-required/upgrades/nightwing-upgrades
execute at @a[team=RainWings,tag=!abilToggOff] run function ids-wings-of-fire:loop-required/upgrades/rainwing-upgrades
execute at @a[team=SandWings,tag=!abilToggOff] run function ids-wings-of-fire:loop-required/upgrades/sandwing-upgrades
execute at @a[team=SeaWings,tag=!abilToggOff] run function ids-wings-of-fire:loop-required/upgrades/seawing-upgrades
execute at @a[team=SkyWings,tag=!abilToggOff] run function ids-wings-of-fire:loop-required/upgrades/skywing-upgrades

#Display Upgrade GUIs
execute as @a[tag=Pyrrhian,tag=!abilToggOff,scores={upgrades=1..},nbt={SelectedItem:{tag:{primary:1}}}] run function ids-wings-of-fire:loop-required/upgrades/display-primary-upgrade-gui
execute as @a[tag=Pyrrhian,tag=!abilToggOff,scores={upgrades=1..},nbt={SelectedItem:{tag:{secondary:1}}}] run function ids-wings-of-fire:loop-required/upgrades/display-secondary-upgrade-gui

#Warns
tellraw @a[tag=!Pyrrhian,scores={upgrades=1..}] [{"text":"You are currently not a part of any tribes with upgrades! Join a\ntribe with upgradable abilities before attempting again.","color":"red","bold":true}]
tellraw @a[tag=Pyrrhian,scores={upgrades=1..},nbt=!{SelectedItem:{tag:{primary:1}}},nbt=!{SelectedItem:{tag:{secondary:1}}}] [{"text":"Not an upgradable item/ability! Please try again with\na different ability.","color":"red","bold":true}]

#Reset
scoreboard players set @a[scores={upgrades=1..}] upgrades 0