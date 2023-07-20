SetLastBlackoutMap:
; Set the map to return to when
; blacking out or using Teleport or Dig.
; Safari rest houses don't count.

	push hl
	ld hl, MapsWithHealsThatDontResetBlackout
	ld a, [wCurMap]
	ld b, a
.loop
	ld a, [hli]
	cp -1
	jr z, .notresthouse
	cp b
	jr nz, .loop
	jr .done

.notresthouse
	ld a, [wLastMap]
	ld [wLastBlackoutMap], a
.done
	pop hl
	ret

MapsWithHealsThatDontResetBlackout:
	db ROUTE_2
	db SAFARI_ZONE_EAST_REST_HOUSE
	db SAFARI_ZONE_NORTH_REST_HOUSE
	db -1
