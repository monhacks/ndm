db DEX_SANDSHREW ; pokedex id
db 50 ; base hp
db 75 ; base attack
db 85 ; base defense
db 40 ; base speed
db 30 ; base special
db GROUND ; species type 1
db NORMAL ; species type 2
db CAP_EASY ; catch rate
db 93 ; base exp yield
INCBIN "pic/bmon/sandshrew.pic",0,1 ; 55, sprite dimensions
dw SandshrewPicFront
dw SandshrewPicBack
; attacks known at lvl 0
db SCRATCH
db SHARPEN
db DEFENSE_CURL
db 0
db 0 ; growth rate
; learnset
	tmlearn 3,6,8
	tmlearn 9,10
	tmlearn 17,19,20
	tmlearn 26,27,28,31,32
	tmlearn 34,39,40
	tmlearn 44,48
	tmlearn 50,51,54
db 0 ; padding
