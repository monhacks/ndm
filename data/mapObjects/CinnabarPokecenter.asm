CinnabarPokecenter_Object:
	db $0 ; border block

	db 2 ; warps
	warp 3, 7, 3, -1
	warp 4, 7, 3, -1

	db 0 ; signs

	db 3 ; objects
	object SPRITE_NURSE, 3, 1, STAY, DOWN, 1 ; person
	object SPRITE_LASS,  1,  3, STAY, UP, 2 ; person
	object SPRITE_GENTLEMAN,  2,  6, STAY, NONE, 3 ; person


	; warp-to
	warp_to 3, 7, CINNABAR_POKECENTER_WIDTH
	warp_to 4, 7, CINNABAR_POKECENTER_WIDTH
