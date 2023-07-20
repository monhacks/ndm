PokemonTower2F_Object:
	db $3 ; border block

	db 9 ; warps
	warp 19, 26, 0, POKEMON_TOWER_3F ; right
	warp 19, 27, 0, POKEMON_TOWER_3F ; right
	warp 10, 45, 2, ROUTE_16_GATE_1F ; south
	warp 11, 45, 2, ROUTE_16_GATE_1F ; south
	warp  6,  0, 1, ROUTE_3 ; north
	warp  7,  0, 1, ROUTE_3 ; north
	warp  0, 22, 2, POKEMON_TOWER_1F ; left
	warp  0, 23, 2, POKEMON_TOWER_1F ; left
	warp 12, 34, 0, POKEMON_TOWER_1F ; - mod underground cave

	db 0 ; signs

	db 2 ; objects
	object SPRITE_BLUE, 10, 16, STAY, NONE, 1 ; person
	object SPRITE_MEDIUM,  6, 26, STAY, RIGHT, 2 ; person

	; warp-to
	warp_to 11, 44, POKEMON_TOWER_2F_WIDTH ; POKEMON_TOWER_3F -- SOUTHEXIT
	warp_to 18, 26, POKEMON_TOWER_2F_WIDTH ; POKEMON_TOWER_1F -- RIGHT EXIT
	warp_to  6,  1, POKEMON_TOWER_2F_WIDTH ; POKEMON_TOWER_3F -- NORTH EXIT
	warp_to  1, 22, POKEMON_TOWER_2F_WIDTH ; POKEMON_TOWER_1F -- LEFT EXIT
	warp_to 12, 34, POKEMON_TOWER_2F_WIDTH ; MOD - forest cave
