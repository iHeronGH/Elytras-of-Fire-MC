#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Generate Upgrades
scoreboard objectives add Upgrades trigger
scoreboard players set @e[type=player] Upgrades 0

#Generate help
scoreboard objectives add help trigger
scoreboard players set @e[type=player] help 0

#Generate Health
scoreboard objectives add Health health
scoreboard objectives setdisplay belowName Health

#Generate Attack
scoreboard objectives add Attack minecraft.custom:minecraft.damage_dealt
scoreboard players set @e[type=player] Attack 0

#Generate RCFlame
scoreboard objectives add RCFlame minecraft.used:minecraft.carrot_on_a_stick
scoreboard players set @e[type=player,tag=Pyre] RCFlame 0

#Generate RCFrost
scoreboard objectives add RCFrost minecraft.used:minecraft.carrot_on_a_stick
scoreboard players set @e[type=player,tag=Perma] RCFrost 0

#Generate RCVenom
scoreboard objectives add RCVenom minecraft.used:minecraft.carrot_on_a_stick
scoreboard players set @e[type=player,tag=Potent] RCVenom 0

#Generate RCOcean
scoreboard objectives add RCOcean minecraft.used:minecraft.carrot_on_a_stick
scoreboard players set @e[type=player,tag=Porous] RCOcean 0

#Generate RCSurge
scoreboard objectives add RCSurge minecraft.used:minecraft.carrot_on_a_stick
scoreboard players set @e[type=player,tag=Pyre] RCSurge 0

#Generate RCStrike
scoreboard objectives add RCStrike minecraft.used:minecraft.carrot_on_a_stick
scoreboard players set @e[type=player,tag=Perma] RCStrike 0

#Generate RCGrowth
scoreboard objectives add RCGrowth minecraft.used:minecraft.carrot_on_a_stick
scoreboard players set @e[type=player,tag=Potent] RCGrowth 0

#Generate RCShock
scoreboard objectives add RCShock minecraft.used:minecraft.carrot_on_a_stick
scoreboard players set @e[type=player,tag=Pyre] RCShock 0

#Generate RCStorm
scoreboard objectives add RCStorm minecraft.used:minecraft.carrot_on_a_stick
scoreboard players set @e[type=player,tag=Pyre] RCStorm 0

#Generate Primary
scoreboard objectives add Primary dummy
scoreboard players set @e[type=player] Primary 0

#Generate Secondary
scoreboard objectives add Secondary dummy
scoreboard players set @e[type=player] Secondary 0

#Generate Tertiary
scoreboard objectives add Tertiary dummy
scoreboard players set @e[type=player] Tertiary 0