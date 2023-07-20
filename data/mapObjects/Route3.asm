Route3_Object:
	db $2c ; border block

	db 3 ; warps
	warp 64, 7, 0, CERULEAN_TRADE_HOUSE
	warp 36, 12, 2, POKEMON_TOWER_2F
	warp 37, 12, 2, POKEMON_TOWER_2F

	db 2 ; signs
	sign 59, 9, 10 ; Route3Text10
	sign 35, 11, 10 ; Route3Text10

	db 9 ; objects
	object SPRITE_BLACK_HAIR_BOY_2, 57, 11, WALK, NONE, 1 ; person
	object SPRITE_TRAINER, 13, 7, STAY, UP, 2, OPP_PUNK, 1
	object SPRITE_BUG_CATCHER, 13, 13, STAY, UP, 3, OPP_YOUNGSTER, 1
	object SPRITE_LASS, 19, 14, STAY, NONE, 4, OPP_LASS, 1
	object SPRITE_TRAINER, 19, 6, STAY, UP, 5, OPP_PUNK, 1
	object SPRITE_LASS, 27,  6, STAY, LEFT, 6, OPP_LASS, 1
	object SPRITE_BUG_CATCHER, 36,  5, STAY, RIGHT, 7, OPP_YOUNGSTER, 1
	object SPRITE_TRAINER, 34,  8, STAY, NONE, 8, OPP_PUNK, 1
	object SPRITE_LASS, 44, 4, STAY, NONE, 9, OPP_LASS, 1
	
	;PUNK 1, 2, 3
	;LASS 1, 2, 3
	;YOUNGSTER 1, 2

	warp_to 64, 7, ROUTE_3_WIDTH
	warp_to 36, 11, ROUTE_3_WIDTH
	