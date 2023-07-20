Route7_Object:
	db $f ; border block

	db 5 ; warps
	warp 21,  3, 2, ROUTE_7_GATE
	warp 26, 10, 3, ROUTE_7_GATE
	warp 15,  5, 0, ROUTE_7_GATE
	warp 19, 10, 1, ROUTE_7_GATE
	warp  8, 13, 0, UNDERGROUND_PATH_ROUTE_7

	db 1 ; signs
	sign 19, 15, 1 ; Route7Text1

	db 0 ; objects

	; warp-to
	warp_to 21,  3, ROUTE_7_WIDTH ; ROUTE_7_GATE
	warp_to 26, 10, ROUTE_7_WIDTH ; ROUTE_7_GATE
	warp_to 15,  5, ROUTE_7_WIDTH ; ROUTE_7_GATE
	warp_to 19, 10, ROUTE_7_WIDTH ; ROUTE_7_GATE
	warp_to  8, 13, ROUTE_7_WIDTH ; UNDERGROUND_PATH_ROUTE_7
