RockTunnelPokecenter_Object:
	db $0 ; border block

	db 2 ; warps
	warp 3, 7, 0, -1
	warp 4, 7, 0, -1

	db 0 ; signs

	db 3 ; objects
	object SPRITE_NURSE, 3, 1, STAY, DOWN, 1 ; person
	object SPRITE_GENTLEMAN, 6, 5, WALK, 0, 2 ; person
	object SPRITE_FISHER2, 2, 5, STAY, NONE, 3 ; person

	; warp-to
	warp_to 3, 7, ROCK_TUNNEL_POKECENTER_WIDTH
	warp_to 4, 7, ROCK_TUNNEL_POKECENTER_WIDTH
