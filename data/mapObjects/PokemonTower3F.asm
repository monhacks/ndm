PokemonTower3F_Object:
	db $3 ; border block

	db 4 ; warps
	warp  4,  8, 0, POKEMON_TOWER_2F
	warp  4,  9, 0, POKEMON_TOWER_2F
	warp  9,  8, 3, ROUTE_5
	warp  9,  9, 3, ROUTE_5

	db 0 ; signs

	db 4 ; objects
	object SPRITE_MEDIUM, 16,  2, STAY, LEFT, 1, OPP_CHANNELER, 5
	object SPRITE_MEDIUM, 17,  2, STAY, DOWN, 2, OPP_CHANNELER, 6
	object SPRITE_MEDIUM, 17,  1, STAY, DOWN, 3, OPP_CHANNELER, 8
	object SPRITE_BALL, 16,  1, STAY, NONE, 4, ESCAPE_ROPE

	; warp-to
	warp_to  5,  8, POKEMON_TOWER_3F_WIDTH ; POKEMON_TOWER_2F
	warp_to  8,  8, POKEMON_TOWER_3F_WIDTH ; POKEMON_TOWER_4F
