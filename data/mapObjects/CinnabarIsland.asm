CinnabarIsland_Object:
	db $43 ; border block

	db 5 ; warps
	warp  8, 11, 1, POKEMON_MANSION_1F
	warp  5, 18, 0, CINNABAR_GYM
	warp  4, 18, 0, CINNABAR_LAB
	warp 21, 11, 0, CINNABAR_POKECENTER
	warp 25, 11, 0, CINNABAR_MART

	db 5 ; signs
	sign 11, 15, 3 ; CinnabarIslandText3
	sign 26, 11, 4 ; MartSignText
	sign 22, 11, 5 ; PokeCenterSignText
	sign 19, 11, 6 ; CinnabarIslandText6
	sign 12,  9, 7 ; CinnabarIslandText7

	db 2 ; objects
	object SPRITE_GIRL, 24,  3, WALK, 2, 1 ; person
	object SPRITE_GAMBLER, 17, 13, STAY, NONE, 2 ; person

	; warp-to
	warp_to  8, 11, CINNABAR_ISLAND_WIDTH ; POKEMON_MANSION_1F
	warp_to  5, 17, CINNABAR_ISLAND_WIDTH ; CINNABAR_GYM
	warp_to  4, 17, CINNABAR_ISLAND_WIDTH ; CINNABAR_LAB
	warp_to 21, 11, CINNABAR_ISLAND_WIDTH ; CINNABAR_POKECENTER
	warp_to 25, 11, CINNABAR_ISLAND_WIDTH ; CINNABAR_MART
