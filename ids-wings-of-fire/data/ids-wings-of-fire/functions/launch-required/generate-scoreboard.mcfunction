#Wings of Fire Datapack for Minecraft Java 1.15.X
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w

#Generate Scoreboard

	#Essential Scoreboard
scoreboard objectives add Upgrades trigger
scoreboard objectives add help trigger
scoreboard objectives add help-server trigger

scoreboard objectives add Health health
scoreboard objectives add Attack minecraft.custom:minecraft.damage_dealt
scoreboard objectives add feetCol dummy
scoreboard objectives add legsCol dummy
scoreboard objectives add chestCol dummy
scoreboard objectives add headCol dummy
scoreboard objectives add FollowRange dummy
scoreboard objectives add players dummy
scoreboard objectives add abilities trigger

	#Ability Usage Scoreboard
scoreboard objectives add RCFlame minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add RCFrost minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add hasFrost dummy
scoreboard objectives add RCVenom minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add RCOcean minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add RCSurge minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add RCSpark minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add RCStrike minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add RCGrowth minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add RCShock minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add RCStorm minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add premonActive dummy
scoreboard objectives add shootArrow minecraft.used:minecraft.bow
scoreboard objectives add throwEgg minecraft.used:minecraft.egg
scoreboard objectives add throwSnow minecraft.used:minecraft.snowball
scoreboard objectives add mudSwipe dummy

	#Ability Slot Scoreboard
scoreboard objectives add Primary dummy
scoreboard objectives add Secondary dummy
scoreboard objectives add Tertiary dummy
scoreboard objectives add Activator dummy

	#XP Scoreboard
scoreboard objectives add xp dummy
scoreboard players set t1 xp 300
scoreboard players set t2 xp 450
scoreboard players set t3 xp 900
scoreboard players set t4 xp 400
scoreboard players set t5 xp 800

	#Timer Scoreboard
scoreboard objectives add timer dummy
scoreboard players set t_sec timer 0
scoreboard players set sec timer 0
scoreboard players set min timer 0
scoreboard players set hour timer 0

	#Upgrade Scoreboard
scoreboard objectives add ArcticCore1 trigger
scoreboard objectives add ArcticCore2 trigger
scoreboard objectives add ArcticCore3 trigger
scoreboard objectives add Permafrost1 trigger
scoreboard objectives add Permafrost2 trigger
scoreboard objectives add Icefall1 trigger
scoreboard objectives add FreezingPoint1 trigger
scoreboard objectives add FreezingPoint2 trigger
scoreboard objectives add Chill1 trigger
scoreboard objectives add Chill2 trigger

scoreboard objectives add Furnace1 trigger
scoreboard objectives add Furnace2 trigger
scoreboard objectives add Furnace3 trigger
scoreboard objectives add Everburn1 trigger
scoreboard objectives add Everburn2 trigger
scoreboard objectives add Inferno1 trigger
scoreboard objectives add Tremors1 trigger
scoreboard objectives add Tremors2 trigger
scoreboard objectives add Aftershock1 trigger
scoreboard objectives add Aftershock2 trigger

scoreboard objectives add Superheat1 trigger
scoreboard objectives add Superheat2 trigger
scoreboard objectives add Superheat3 trigger
scoreboard objectives add EternalFlame1 trigger
scoreboard objectives add EternalFlame2 trigger
scoreboard objectives add Fission1 trigger
scoreboard objectives add Corruption1 trigger
scoreboard objectives add Corruption2 trigger
scoreboard objectives add Blackout1 trigger
scoreboard objectives add Blackout2 trigger

scoreboard objectives add Reaction1 trigger
scoreboard objectives add Reaction2 trigger
scoreboard objectives add Reaction3 trigger
scoreboard objectives add Noxious1 trigger
scoreboard objectives add Noxious2 trigger
scoreboard objectives add Potency1 trigger
scoreboard objectives add Photosynthesis1 trigger
scoreboard objectives add Photosynthesis2 trigger
scoreboard objectives add NaturesWrath1 trigger
scoreboard objectives add NaturesWrath2 trigger

scoreboard objectives add Scorch1 trigger
scoreboard objectives add Scorch2 trigger
scoreboard objectives add Scorch3 trigger
scoreboard objectives add Dehydrate1 trigger
scoreboard objectives add Dehydrate2 trigger
scoreboard objectives add Desolation1 trigger
scoreboard objectives add HighWinds1 trigger
scoreboard objectives add HighWinds2 trigger
scoreboard objectives add Drought1 trigger
scoreboard objectives add Drought2 trigger

scoreboard objectives add HighTide1 trigger
scoreboard objectives add HighTide2 trigger
scoreboard objectives add HighTide3 trigger
scoreboard objectives add Waterlogged1 trigger
scoreboard objectives add Waterlogged2 trigger
scoreboard objectives add Torrent1 trigger
scoreboard objectives add Streamline1 trigger
scoreboard objectives add Streamline2 trigger
scoreboard objectives add Amphibious1 trigger
scoreboard objectives add Amphibious2 trigger

scoreboard objectives add Oxygenate1 trigger
scoreboard objectives add Oxygenate2 trigger
scoreboard objectives add Oxygenate3 trigger
scoreboard objectives add Wildfire1 trigger
scoreboard objectives add Wildfire2 trigger
scoreboard objectives add Blaze1 trigger
scoreboard objectives add GaleForce1 trigger
scoreboard objectives add GaleForce2 trigger
scoreboard objectives add Cyclone1 trigger
scoreboard objectives add Cyclone2 trigger