
ReadTrainer:
; don't change any moves in a link battle
	ld a, [wLinkState]
	and a
	ret nz

; set [wEnemyPartyCount] to 0, [wEnemyPartyMons] to FF
	ld hl, wEnemyPartyCount
	xor a
	ld [hli], a
	dec a
	ld [hl], a

; get the pointer to trainer data for this class
	push hl ; hold on to grassmons
	call CountNumBadgesOwned ; update badge count to determine high range
	pop hl ; grassmons again
	
	ld a, [wCurOpponent]
	sub $C9 ; convert value from pokemon to trainer
	add a
	ld hl, TrainerDataPointers
	ld c, a
	ld b, 0
	add hl, bc ; hl points to trainer class
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wTrainerNo]
	ld b, a
; At this point b contains the trainer number,
; and hl points to the trainer class.
; Our next task is to iterate through the trainers,
; decrementing b each time, until we get to the right one.
.outer
	dec b
	jr z, .IterateTrainer
.inner
	ld a, [hli]
	and a
	jr nz, .inner
	jr .outer

; if the first byte of trainer data is FF,
; - each pokemon has a specific level
;      (as opposed to the whole team being of the same level)
; - if [wLoneAttackNo] != 0, one pokemon on the team has a special move
; else the first byte is the level of every pokemon on the team

.IterateTrainer
	ld a, [hli] ; HL is at level, incremented to first mon.
	cp $FF ; is the trainer special?
	jr z, .SpecialTrainer ; if so, check for special moves
	
	; MOD: evaluate what level they should be at.	
	;let's make A the level they should be.
		
	ld a, [wEffectiveNumBadgesOwned]
	and a  ; =0?
	jr z, .minLevelTrainers ; manually set to 8
	
	inc a ; base starts at 0-7
	cp 5
	jr nc, .maxLevelTrainers ; if we have 4 badges, we've hit the cap that trainers can be (30)

	ld [H_MULTIPLICAND], a 
	ld a, 7 ; 7 x badges+1 
	ld [H_MULTIPLIER], a
	call Multiply
	ld a, [hRandomAdd]
	and 7 ; bit mask, this sets the value to 0-7 (instead of 0-255)
	ld b, a
	ld a, [H_PRODUCT+1] ; a = Max possible level, (B+1)*7
	inc a; +1
	sub b
	jr .SetTrainerLevel
.minLevelTrainers
	ld a, 8
	jr .SetTrainerLevel
.maxLevelTrainers
	ld a, MAX_LEVEL
.SetTrainerLevel	
	ld [wCurEnemyLVL], a
	
	ld a, [wGameDifficulty]
	cp $1
	jr z, .diffHard
	jr nc, .diffMaster	

	ld b, 3 ;standard difficulty: 3 mons
	jr .DecideTrainerMonsLoop
.diffHard 
	ld b, 4 ;hard difficulty: 4 mons
	jr .DecideTrainerMonsLoop
.diffMaster ;
	ld b, 5 ;expert difficulty: 5 mons
.DecideTrainerMonsLoop
	ld a, b 
	cp 0
	jp z, .FinishUp ;if we're done getting mons, then finish up.
	
	call Random ; ROLL 
	ld a, [hRandomAdd] ;A is part of that roll
	and %00000111 ; rightmost 3 bits (0-7)

	ld c, a ; C tracks what index we want
	xor a ; a=0
	push hl
.AdvancePartyDataLoop
	cp c ; is a = c?
	jr z, .setMon ; we got it. we're at the index 	
	inc hl  ;push up pointer in list
	inc a ;advance what slot we're testing
	jr .AdvancePartyDataLoop
.setMon
	ld a, [hl]
	ld [wcf91], a ; write species somewhere (XXX why?)
	ld a, ENEMY_PARTY_DATA
	ld [wMonDataLocation], a
	push hl
	call AddPartyMon
	pop hl
	pop hl  ; hl is now back to the start of the mon list.
	dec b ; mons selected -1
	jr .DecideTrainerMonsLoop
.SpecialTrainer
; if this code is being run:
; - each pokemon has a specific level
;      (as opposed to the whole team being of the same level)
; - if [wLoneAttackNo] != 0, one pokemon on the team has a special move
	ld a, [hli]
	and a ; have we reached the end of the trainer data?
	jr z, .FinishUp
	ld [wCurEnemyLVL], a
	ld a, [hli]
	ld [wcf91], a
	ld a, ENEMY_PARTY_DATA
	ld [wMonDataLocation], a
	push hl
	call AddPartyMon
	pop hl
	jr .SpecialTrainer
.FinishUp
; clear wAmountMoneyWon addresses
	xor a
	ld de, wAmountMoneyWon
	ld [de], a
	inc de
	ld [de], a
	inc de
	ld [de], a
	ld a, [wCurEnemyLVL]
	ld b, a
.LastLoop
; update wAmountMoneyWon addresses (money to win) based on enemy's level
	ld hl, wTrainerBaseMoney + 1
	ld c, 2 ; wAmountMoneyWon is a 3-byte number
	push bc
	predef AddBCDPredef
	pop bc
	inc de
	inc de
	dec b
	jr nz, .LastLoop ; repeat wCurEnemyLVL times
	ret
