db DEX_RHYDON ; pokedex id
db 105 ; base hp
db 130 ; base attack
db 120 ; base defense
db 40 ; base speed
db 45 ; base special
db ROCK ; species type 1
db NORMAL ; species type 2
db CAP_HARD ; catch rate
db 204 ; base exp yield
INCBIN "pic/bmon/rhydon.pic",0,1 ; 77, sprite dimensions
dw RhydonPicFront
dw RhydonPicBack
; attacks known at lvl 0
db TACKLE
db HORN_ATTACK
db STOMP
db FURY_ATTACK
db 5 ; growth rate
; learnset
	tmlearn 1,5,6,7,8
	tmlearn 9,10,11,12,13,14,15,16
	tmlearn 17,18,19,20,24
	tmlearn 25,26,27,28,31,32
	tmlearn 34,38,40
	tmlearn 44,48
	tmlearn 50,53,54
db 0 ; padding
