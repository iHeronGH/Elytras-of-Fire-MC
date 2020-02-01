#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Effect Entities
effect give @e[type=player,tag=!CoolDown2,tag=ShockActive,nbt={SelectedItem:{tag:{crumble:1}}}] minecraft:absorption 8 0 true
effect give @e[type=player,tag=!CoolDown2,tag=ShockActive,nbt={SelectedItem:{tag:{crumble:1}}}] minecraft:resistance 8 0 true
effect give @e[type=player,tag=!CoolDown2,tag=ShockActive,nbt={SelectedItem:{tag:{crumble:1}}}] minecraft:strength 8 2 true

#Remove Tag
tag @e[type=player,tag=ShockActive] add CoolDown2
function ids-wings-of-fire:launch-add-ons/announce-cooldown-two
tag @e[type=player,tag=ShockActive] add CoolDownActive2