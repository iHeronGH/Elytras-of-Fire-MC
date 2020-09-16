	#None
execute as @p[distance=0,tag=!HighTide1,tag=!HighTide2,tag=!HighTide3,tag=!Waterlogged1,tag=!Waterlogged2,tag=!Torrent1] run function ids-wings-of-fire:loop-required/generate-hotbars/seawings/aquatic-blast

	#High Tide
execute if entity @p[tag=HighTide1] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/seawings/sea-primary/ht/ht1
execute if entity @p[tag=HighTide2] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/seawings/sea-primary/ht/ht2
execute if entity @p[tag=HighTide3] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/seawings/sea-primary/ht/ht3

	#Waterlogged
execute if entity @p[tag=Waterlogged1] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/seawings/sea-primary/wl/wl1
execute if entity @p[tag=Waterlogged2] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/seawings/sea-primary/wl/wl2

	#Torrent
execute if entity @p[tag=Torrent1] run function ids-wings-of-fire:loop-required/generate-tags/check-upgrades/seawings/sea-primary/to/to1