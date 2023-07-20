CeladonDiner_Object:
	db $f ; border block

	db 2 ; warps
	warp  2,  1, 2, CELADON_POKECENTER
	warp 12,  1, 3, CELADON_POKECENTER

	db 0 ; signs

	db 5 ; objects
	object SPRITE_COOK, 10,  8, WALK, 2, 1 ; person
	object SPRITE_MOM_GEISHA,  2,  5, STAY, NONE, 2 ; person
	object SPRITE_FAT_BALD_GUY,  2,  7, STAY, DOWN, 3 ; person
	object SPRITE_FISHER2,  7,  4, STAY, RIGHT, 4 ; person
	object SPRITE_GYM_HELPER,  7,  8, STAY, DOWN, 5 ; person

	; warp-to
	warp_to  2,  1, CELADON_DINER_WIDTH
	warp_to 12,  1, CELADON_DINER_WIDTH
