Route16Gate1F_Object:
	db $a ; border block

	db 5 ; warps
	warp  0,  8, 0, ROUTE_16
	warp  0,  9, 0, ROUTE_16
	warp  7,  8, 1, ROUTE_16
	warp  7,  9, 1, ROUTE_16
	warp  3,  0, 0, POKEMON_TOWER_2F

	db 0 ; signs

	db 2 ; objects
	object SPRITE_GUARD,  6,  4, STAY, LEFT, 1 ; person
	object SPRITE_ROCKER,  5, 12, STAY, UP, 2 ; person

	; warp-to
	warp_to  0,  9, ROUTE_16_GATE_1F_WIDTH
	warp_to  7,  9, ROUTE_16_GATE_1F_WIDTH
	warp_to  3,  0, ROUTE_16_GATE_1F_WIDTH
