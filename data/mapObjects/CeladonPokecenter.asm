CeladonPokecenter_Object:
	db $0 ; border block

	db 4 ; warps
	warp 7, 7, 3, -1
	warp 8, 7, 3, -1
	warp  2,  0, 0, CELADON_DINER
	warp 14,  0, 1, CELADON_DINER

	db 0 ; signs

	db 3 ; objects
	object SPRITE_NURSE, 7, 1, STAY, DOWN, 1 ; person
	object SPRITE_GENTLEMAN,  4,  5, WALK, 2, 2 ; person
	object SPRITE_FOULARD_WOMAN, 12,  1, STAY, LEFT, 3 ; person

	; warp-to
	warp_to  7,  7, CELADON_POKECENTER_WIDTH
	warp_to 8, 7, CELADON_POKECENTER_WIDTH
	warp_to  2,  0, CELADON_POKECENTER_WIDTH
	warp_to 14,  0, CELADON_POKECENTER_WIDTH
