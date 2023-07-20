PokemonTower1F_Object:
	db $3 ; border block

	db 6 ; warps
	warp  3,  0, 6, ROUTE_2 ; north
	warp  2,  0, 6, ROUTE_2 ; north
	warp  2, 29, 7, VIRIDIAN_CITY ; south
	warp  3, 29, 7, VIRIDIAN_CITY ; south
	warp 21, 17, 3, POKEMON_TOWER_2F ; right exit
	warp 21, 16, 3, POKEMON_TOWER_2F ; right exit

	db 0 ; signs

	db 1 ; objects
	object SPRITE_CABLE_CLUB_WOMAN,  8, 24, STAY, NONE, 1 ; person

	; warp-to
	warp_to  3,  1, POKEMON_TOWER_1F_WIDTH ; RT 2
	warp_to  3, 28, POKEMON_TOWER_1F_WIDTH ; VIRIDIAN
	warp_to 20, 16, POKEMON_TOWER_1F_WIDTH ; side forest 2
