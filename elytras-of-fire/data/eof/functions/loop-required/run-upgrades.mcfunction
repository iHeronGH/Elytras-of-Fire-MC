#Runs Upgrades

	#Enable Scoreboard
scoreboard players enable @a[tag=Pyrrhian] upgrades

	#Display Upgrade GUIs
execute as @a[tag=Pyrrhian,tag=!abilToggOff,scores={upgrades=1..},nbt={SelectedItem:{tag:{primary:1}}}] run function eof:loop-required/upgrades/display-primary-upgrade-gui
execute as @a[tag=Pyrrhian,tag=!abilToggOff,scores={upgrades=1..},nbt={SelectedItem:{tag:{secondary:1}}}] run function eof:loop-required/upgrades/display-secondary-upgrade-gui

	#Warns
tellraw @a[tag=!Pyrrhian,scores={upgrades=1..}] [{"text":"You are currently not a part of any tribes with upgrades! Join a\ntribe with upgradable abilities before attempting again.","color":"red","bold":true}]
tellraw @a[tag=Pyrrhian,scores={upgrades=1..},nbt=!{SelectedItem:{tag:{primary:1}}},nbt=!{SelectedItem:{tag:{secondary:1}}}] [{"text":"Not an upgradable item/ability! Please try again with\na different ability.","color":"red","bold":true}]

	#Reset
scoreboard players set @a[scores={upgrades=1..}] upgrades 0