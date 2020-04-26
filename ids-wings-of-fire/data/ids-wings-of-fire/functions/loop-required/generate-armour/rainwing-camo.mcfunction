#Wings of Fire Datapack for Minecraft Java 1.15.1
#Created by iDinoSoul
#My YouTube: https://www.youtube.com/channel/UCsABLqAUwZ2WzULSkKvSU5w?view_as=subscriber

#Detect Block/Family & Change Armour

	#Families

execute unless block ~ ~ ~ #ids-wings-of-fire:families/flat if block ~ ~-0.5 ~ #ids-wings-of-fire:families/graystone run replaceitem entity @s armor.feet leather_boots{display:{Name:'{"text":"RainWing Scales","color":"green","italic":false}',color:8289402},HideFlags:63,Enchantments:[{id:"feather_falling",lvl:2},{id:"binding_curse",lvl:1},{id:"vanishing_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"armour",Slot:"feet",Amount:5,Operation:0,UUIDMost:44802,UUIDLeast:180793},{AttributeName:"generic.armorToughness",Name:"toughness",Slot:"feet",Amount:4,Operation:0,UUIDMost:88329,UUIDLeast:161735}],rainarmor:1,tribearmor:1} 1
execute unless block ~ ~ ~ #ids-wings-of-fire:families/flat if block ~ ~-0.5 ~ #ids-wings-of-fire:families/leaves run replaceitem entity @s armor.feet leather_boots{display:{Name:'{"text":"RainWing Scales","color":"green","italic":false}',color:3500829},HideFlags:63,Enchantments:[{id:"feather_falling",lvl:2},{id:"binding_curse",lvl:1},{id:"vanishing_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"armour",Slot:"feet",Amount:5,Operation:0,UUIDMost:22360,UUIDLeast:148696},{AttributeName:"generic.armorToughness",Name:"toughness",Slot:"feet",Amount:4,Operation:0,UUIDMost:23844,UUIDLeast:181933}],rainarmor:1,tribearmor:1} 1
execute unless block ~ ~ ~ #ids-wings-of-fire:families/flat if block ~ ~-0.5 ~ #ids-wings-of-fire:families/dirt run replaceitem entity @s armor.feet leather_boots{display:{Name:'{"text":"RainWing Scales","color":"green","italic":false}',color:8806467},HideFlags:63,Enchantments:[{id:"feather_falling",lvl:2},{id:"binding_curse",lvl:1},{id:"vanishing_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"armour",Slot:"feet",Amount:5,Operation:0,UUIDMost:72808,UUIDLeast:117780},{AttributeName:"generic.armorToughness",Name:"toughness",Slot:"feet",Amount:4,Operation:0,UUIDMost:98247,UUIDLeast:181738}],rainarmor:1,tribearmor:1} 1
execute unless block ~ ~ ~ #ids-wings-of-fire:families/flat if block ~ ~-0.5 ~ #ids-wings-of-fire:families/wood/oak run replaceitem entity @s armor.feet leather_boots{display:{Name:'{"text":"RainWing Scales","color":"green","italic":false}',color:10256206},HideFlags:63,Enchantments:[{id:"feather_falling",lvl:2},{id:"binding_curse",lvl:1},{id:"vanishing_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"armour",Slot:"feet",Amount:5,Operation:0,UUIDMost:88299,UUIDLeast:163324},{AttributeName:"generic.armorToughness",Name:"toughness",Slot:"feet",Amount:4,Operation:0,UUIDMost:51778,UUIDLeast:125000}],rainarmor:1,tribearmor:1} 1
execute unless block ~ ~ ~ #ids-wings-of-fire:families/flat if block ~ ~-0.5 ~ #ids-wings-of-fire:families/wood/spruce run replaceitem entity @s armor.feet leather_boots{display:{Name:'{"text":"RainWing Scales","color":"green","italic":false}',color:6769966},HideFlags:63,Enchantments:[{id:"feather_falling",lvl:2},{id:"binding_curse",lvl:1},{id:"vanishing_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"armour",Slot:"feet",Amount:5,Operation:0,UUIDMost:69342,UUIDLeast:182973},{AttributeName:"generic.armorToughness",Name:"toughness",Slot:"feet",Amount:4,Operation:0,UUIDMost:24275,UUIDLeast:137541}],rainarmor:1,tribearmor:1} 1
execute unless block ~ ~ ~ #ids-wings-of-fire:families/flat if block ~ ~-0.5 ~ #ids-wings-of-fire:families/wood/birch run replaceitem entity @s armor.feet leather_boots{display:{Name:'{"text":"RainWing Scales","color":"green","italic":false}',color:12825467},HideFlags:63,Enchantments:[{id:"feather_falling",lvl:2},{id:"binding_curse",lvl:1},{id:"vanishing_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"armour",Slot:"feet",Amount:5,Operation:0,UUIDMost:12393,UUIDLeast:100217},{AttributeName:"generic.armorToughness",Name:"toughness",Slot:"feet",Amount:4,Operation:0,UUIDMost:68034,UUIDLeast:109695}],rainarmor:1,tribearmor:1} 1
execute unless block ~ ~ ~ #ids-wings-of-fire:families/flat if block ~ ~-0.5 ~ #ids-wings-of-fire:families/wood/jungle run replaceitem entity @s armor.feet leather_boots{display:{Name:'{"text":"RainWing Scales","color":"green","italic":false}',color:10120781},HideFlags:63,Enchantments:[{id:"feather_falling",lvl:2},{id:"binding_curse",lvl:1},{id:"vanishing_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"armour",Slot:"feet",Amount:5,Operation:0,UUIDMost:57591,UUIDLeast:168646},{AttributeName:"generic.armorToughness",Name:"toughness",Slot:"feet",Amount:4,Operation:0,UUIDMost:35842,UUIDLeast:165915}],rainarmor:1,tribearmor:1} 1
execute unless block ~ ~ ~ #ids-wings-of-fire:families/flat if block ~ ~-0.5 ~ #ids-wings-of-fire:families/wood/acacia run replaceitem entity @s armor.feet leather_boots{display:{Name:'{"text":"RainWing Scales","color":"green","italic":false}',color:11098931},HideFlags:63,Enchantments:[{id:"feather_falling",lvl:2},{id:"binding_curse",lvl:1},{id:"vanishing_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"armour",Slot:"feet",Amount:5,Operation:0,UUIDMost:90358,UUIDLeast:123565},{AttributeName:"generic.armorToughness",Name:"toughness",Slot:"feet",Amount:4,Operation:0,UUIDMost:79810,UUIDLeast:120201}],rainarmor:1,tribearmor:1} 1
execute unless block ~ ~ ~ #ids-wings-of-fire:families/flat if block ~ ~-0.5 ~ #ids-wings-of-fire:families/wood/dark-oak run replaceitem entity @s armor.feet leather_boots{display:{Name:'{"text":"RainWing Scales","color":"green","italic":false}',color:4007698},HideFlags:63,Enchantments:[{id:"feather_falling",lvl:2},{id:"binding_curse",lvl:1},{id:"vanishing_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"armour",Slot:"feet",Amount:5,Operation:0,UUIDMost:38341,UUIDLeast:189389},{AttributeName:"generic.armorToughness",Name:"toughness",Slot:"feet",Amount:4,Operation:0,UUIDMost:56483,UUIDLeast:105691}],rainarmor:1,tribearmor:1} 1
execute unless block ~ ~ ~ #ids-wings-of-fire:families/flat if block ~ ~-0.5 ~ #ids-wings-of-fire:families/desert/desert run replaceitem entity @s armor.feet leather_boots{display:{Name:'{"text":"RainWing Scales","color":"green","italic":false}',color:14405539},HideFlags:63,Enchantments:[{id:"feather_falling",lvl:2},{id:"binding_curse",lvl:1},{id:"vanishing_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"armour",Slot:"feet",Amount:5,Operation:0,UUIDMost:91857,UUIDLeast:169788},{AttributeName:"generic.armorToughness",Name:"toughness",Slot:"feet",Amount:4,Operation:0,UUIDMost:37980,UUIDLeast:179250}],rainarmor:1,tribearmor:1} 1
execute unless block ~ ~ ~ #ids-wings-of-fire:families/flat if block ~ ~-0.5 ~ #ids-wings-of-fire:families/desert/red-desert run replaceitem entity @s armor.feet leather_boots{display:{Name:'{"text":"RainWing Scales","color":"green","italic":false}',color:11886879},HideFlags:63,Enchantments:[{id:"feather_falling",lvl:2},{id:"binding_curse",lvl:1},{id:"vanishing_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"armour",Slot:"feet",Amount:5,Operation:0,UUIDMost:14134,UUIDLeast:108522},{AttributeName:"generic.armorToughness",Name:"toughness",Slot:"feet",Amount:4,Operation:0,UUIDMost:74884,UUIDLeast:163454}],rainarmor:1,tribearmor:1} 1
execute unless block ~ ~ ~ #ids-wings-of-fire:families/flat if block ~ ~-0.5 ~ #ids-wings-of-fire:families/colours/white run replaceitem entity @s armor.feet leather_boots{display:{Name:'{"text":"RainWing Scales","color":"green","italic":false}',color:16250871},HideFlags:63,Enchantments:[{id:"feather_falling",lvl:2},{id:"binding_curse",lvl:1},{id:"vanishing_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"armour",Slot:"feet",Amount:5,Operation:0,UUIDMost:76905,UUIDLeast:153468},{AttributeName:"generic.armorToughness",Name:"toughness",Slot:"feet",Amount:4,Operation:0,UUIDMost:82465,UUIDLeast:160816}],rainarmor:1,tribearmor:1} 1
execute unless block ~ ~ ~ #ids-wings-of-fire:families/flat if block ~ ~-0.5 ~ #ids-wings-of-fire:families/colours/orange run replaceitem entity @s armor.feet leather_boots{display:{Name:'{"text":"RainWing Scales","color":"green","italic":false}',color:15758867},HideFlags:63,Enchantments:[{id:"feather_falling",lvl:2},{id:"binding_curse",lvl:1},{id:"vanishing_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"armour",Slot:"feet",Amount:5,Operation:0,UUIDMost:96522,UUIDLeast:186181},{AttributeName:"generic.armorToughness",Name:"toughness",Slot:"feet",Amount:4,Operation:0,UUIDMost:21203,UUIDLeast:105406}],rainarmor:1,tribearmor:1} 1
execute unless block ~ ~ ~ #ids-wings-of-fire:families/flat if block ~ ~-0.5 ~ #ids-wings-of-fire:families/colours/magenta run replaceitem entity @s armor.feet leather_boots{display:{Name:'{"text":"RainWing Scales","color":"green","italic":false}',color:12403891},HideFlags:63,Enchantments:[{id:"feather_falling",lvl:2},{id:"binding_curse",lvl:1},{id:"vanishing_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"armour",Slot:"feet",Amount:5,Operation:0,UUIDMost:76342,UUIDLeast:170798},{AttributeName:"generic.armorToughness",Name:"toughness",Slot:"feet",Amount:4,Operation:0,UUIDMost:65347,UUIDLeast:130721}],rainarmor:1,tribearmor:1} 1
execute unless block ~ ~ ~ #ids-wings-of-fire:families/flat if block ~ ~-0.5 ~ #ids-wings-of-fire:families/colours/light_blue run replaceitem entity @s armor.feet leather_boots{display:{Name:'{"text":"RainWing Scales","color":"green","italic":false}',color:3846105},HideFlags:63,Enchantments:[{id:"feather_falling",lvl:2},{id:"binding_curse",lvl:1},{id:"vanishing_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"armour",Slot:"feet",Amount:5,Operation:0,UUIDMost:70789,UUIDLeast:136463},{AttributeName:"generic.armorToughness",Name:"toughness",Slot:"feet",Amount:4,Operation:0,UUIDMost:63388,UUIDLeast:182537}],rainarmor:1,tribearmor:1} 1
execute unless block ~ ~ ~ #ids-wings-of-fire:families/flat if block ~ ~-0.5 ~ #ids-wings-of-fire:families/colours/yellow run replaceitem entity @s armor.feet leather_boots{display:{Name:'{"text":"RainWing Scales","color":"green","italic":false}',color:16303399},HideFlags:63,Enchantments:[{id:"feather_falling",lvl:2},{id:"binding_curse",lvl:1},{id:"vanishing_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"armour",Slot:"feet",Amount:5,Operation:0,UUIDMost:30568,UUIDLeast:135922},{AttributeName:"generic.armorToughness",Name:"toughness",Slot:"feet",Amount:4,Operation:0,UUIDMost:15681,UUIDLeast:109043}],rainarmor:1,tribearmor:1} 1
execute unless block ~ ~ ~ #ids-wings-of-fire:families/flat if block ~ ~-0.5 ~ #ids-wings-of-fire:families/colours/lime run replaceitem entity @s armor.feet leather_boots{display:{Name:'{"text":"RainWing Scales","color":"green","italic":false}',color:7387417},HideFlags:63,Enchantments:[{id:"feather_falling",lvl:2},{id:"binding_curse",lvl:1},{id:"vanishing_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"armour",Slot:"feet",Amount:5,Operation:0,UUIDMost:76891,UUIDLeast:147479},{AttributeName:"generic.armorToughness",Name:"toughness",Slot:"feet",Amount:4,Operation:0,UUIDMost:22151,UUIDLeast:151408}],rainarmor:1,tribearmor:1} 1
execute unless block ~ ~ ~ #ids-wings-of-fire:families/flat if block ~ ~-0.5 ~ #ids-wings-of-fire:families/colours/pink run replaceitem entity @s armor.feet leather_boots{display:{Name:'{"text":"RainWing Scales","color":"green","italic":false}',color:15568300},HideFlags:63,Enchantments:[{id:"feather_falling",lvl:2},{id:"binding_curse",lvl:1},{id:"vanishing_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"armour",Slot:"feet",Amount:5,Operation:0,UUIDMost:34528,UUIDLeast:133906},{AttributeName:"generic.armorToughness",Name:"toughness",Slot:"feet",Amount:4,Operation:0,UUIDMost:93695,UUIDLeast:116690}],rainarmor:1,tribearmor:1} 1
execute unless block ~ ~ ~ #ids-wings-of-fire:families/flat if block ~ ~-0.5 ~ #ids-wings-of-fire:families/colours/gray run replaceitem entity @s armor.feet leather_boots{display:{Name:'{"text":"RainWing Scales","color":"green","italic":false}',color:4080711},HideFlags:63,Enchantments:[{id:"feather_falling",lvl:2},{id:"binding_curse",lvl:1},{id:"vanishing_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"armour",Slot:"feet",Amount:5,Operation:0,UUIDMost:90835,UUIDLeast:160576},{AttributeName:"generic.armorToughness",Name:"toughness",Slot:"feet",Amount:4,Operation:0,UUIDMost:45224,UUIDLeast:108062}],rainarmor:1,tribearmor:1} 1
execute unless block ~ ~ ~ #ids-wings-of-fire:families/flat if block ~ ~-0.5 ~ #ids-wings-of-fire:families/colours/light_gray run replaceitem entity @s armor.feet leather_boots{display:{Name:'{"text":"RainWing Scales","color":"green","italic":false}',color:9342598},HideFlags:63,Enchantments:[{id:"feather_falling",lvl:2},{id:"binding_curse",lvl:1},{id:"vanishing_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"armour",Slot:"feet",Amount:5,Operation:0,UUIDMost:46893,UUIDLeast:132967},{AttributeName:"generic.armorToughness",Name:"toughness",Slot:"feet",Amount:4,Operation:0,UUIDMost:75648,UUIDLeast:181515}],rainarmor:1,tribearmor:1} 1
execute unless block ~ ~ ~ #ids-wings-of-fire:families/flat if block ~ ~-0.5 ~ #ids-wings-of-fire:families/colours/cyan run replaceitem entity @s armor.feet leather_boots{display:{Name:'{"text":"RainWing Scales","color":"green","italic":false}',color:1411473},HideFlags:63,Enchantments:[{id:"feather_falling",lvl:2},{id:"binding_curse",lvl:1},{id:"vanishing_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"armour",Slot:"feet",Amount:5,Operation:0,UUIDMost:35894,UUIDLeast:107135},{AttributeName:"generic.armorToughness",Name:"toughness",Slot:"feet",Amount:4,Operation:0,UUIDMost:86277,UUIDLeast:177547}],rainarmor:1,tribearmor:1} 1
execute unless block ~ ~ ~ #ids-wings-of-fire:families/flat if block ~ ~-0.5 ~ #ids-wings-of-fire:families/colours/purple run replaceitem entity @s armor.feet leather_boots{display:{Name:'{"text":"RainWing Scales","color":"green","italic":false}',color:7940780},HideFlags:63,Enchantments:[{id:"feather_falling",lvl:2},{id:"binding_curse",lvl:1},{id:"vanishing_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"armour",Slot:"feet",Amount:5,Operation:0,UUIDMost:56835,UUIDLeast:160977},{AttributeName:"generic.armorToughness",Name:"toughness",Slot:"feet",Amount:4,Operation:0,UUIDMost:46375,UUIDLeast:101302}],rainarmor:1,tribearmor:1} 1
execute unless block ~ ~ ~ #ids-wings-of-fire:families/flat if block ~ ~-0.5 ~ #ids-wings-of-fire:families/colours/blue run replaceitem entity @s armor.feet leather_boots{display:{Name:'{"text":"RainWing Scales","color":"green","italic":false}',color:3488157},HideFlags:63,Enchantments:[{id:"feather_falling",lvl:2},{id:"binding_curse",lvl:1},{id:"vanishing_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"armour",Slot:"feet",Amount:5,Operation:0,UUIDMost:57893,UUIDLeast:134745},{AttributeName:"generic.armorToughness",Name:"toughness",Slot:"feet",Amount:4,Operation:0,UUIDMost:32866,UUIDLeast:150587}],rainarmor:1,tribearmor:1} 1
execute unless block ~ ~ ~ #ids-wings-of-fire:families/flat if block ~ ~-0.5 ~ #ids-wings-of-fire:families/colours/brown run replaceitem entity @s armor.feet leather_boots{display:{Name:'{"text":"RainWing Scales","color":"green","italic":false}',color:7489320},HideFlags:63,Enchantments:[{id:"feather_falling",lvl:2},{id:"binding_curse",lvl:1},{id:"vanishing_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"armour",Slot:"feet",Amount:5,Operation:0,UUIDMost:23563,UUIDLeast:124377},{AttributeName:"generic.armorToughness",Name:"toughness",Slot:"feet",Amount:4,Operation:0,UUIDMost:72913,UUIDLeast:131336}],rainarmor:1,tribearmor:1} 1
execute unless block ~ ~ ~ #ids-wings-of-fire:families/flat if block ~ ~-0.5 ~ #ids-wings-of-fire:families/colours/green run replaceitem entity @s armor.feet leather_boots{display:{Name:'{"text":"RainWing Scales","color":"green","italic":false}',color:5532955},HideFlags:63,Enchantments:[{id:"feather_falling",lvl:2},{id:"binding_curse",lvl:1},{id:"vanishing_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"armour",Slot:"feet",Amount:5,Operation:0,UUIDMost:35689,UUIDLeast:124614},{AttributeName:"generic.armorToughness",Name:"toughness",Slot:"feet",Amount:4,Operation:0,UUIDMost:86537,UUIDLeast:177186}],rainarmor:1,tribearmor:1} 1
execute unless block ~ ~ ~ #ids-wings-of-fire:families/flat if block ~ ~-0.5 ~ #ids-wings-of-fire:families/colours/red run replaceitem entity @s armor.feet leather_boots{display:{Name:'{"text":"RainWing Scales","color":"green","italic":false}',color:10495778},HideFlags:63,Enchantments:[{id:"feather_falling",lvl:2},{id:"binding_curse",lvl:1},{id:"vanishing_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"armour",Slot:"feet",Amount:5,Operation:0,UUIDMost:86059,UUIDLeast:181423},{AttributeName:"generic.armorToughness",Name:"toughness",Slot:"feet",Amount:4,Operation:0,UUIDMost:16152,UUIDLeast:142220}],rainarmor:1,tribearmor:1} 1
execute unless block ~ ~ ~ #ids-wings-of-fire:families/flat if block ~ ~-0.5 ~ #ids-wings-of-fire:families/colours/black run replaceitem entity @s armor.feet leather_boots{display:{Name:'{"text":"RainWing Scales","color":"green","italic":false}',color:1316121},HideFlags:63,Enchantments:[{id:"feather_falling",lvl:2},{id:"binding_curse",lvl:1},{id:"vanishing_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"armour",Slot:"feet",Amount:5,Operation:0,UUIDMost:13768,UUIDLeast:162845},{AttributeName:"generic.armorToughness",Name:"toughness",Slot:"feet",Amount:4,Operation:0,UUIDMost:76797,UUIDLeast:107081}],rainarmor:1,tribearmor:1} 1

	#Blocks
execute unless block ~ ~ ~ #ids-wings-of-fire:families/flat if block ~ ~-0.5 ~ grass_block run replaceitem entity @s armor.feet leather_boots{display:{Name:'{"text":"RainWing Scales","color":"green","italic":false}',color:6990400},HideFlags:63,Enchantments:[{id:"feather_falling",lvl:2},{id:"binding_curse",lvl:1},{id:"vanishing_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"armour",Slot:"feet",Amount:5,Operation:0,UUIDMost:76959,UUIDLeast:152955},{AttributeName:"generic.armorToughness",Name:"toughness",Slot:"feet",Amount:4,Operation:0,UUIDMost:37047,UUIDLeast:143229}],rainarmor:1,tribearmor:1} 1

	#Edit Armour
function ids-wings-of-fire:loop-required/generate-armour/match-rainwing-scales