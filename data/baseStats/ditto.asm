db DEX_DITTO ; pokedex id
db 100 ; base hp
db 48 ; base attack
db 48 ; base defense
db 150 ; base speed
db 48 ; base special
db NORMAL ; species type 1
db NORMAL ; species type 2
db CAP_MID ; catch rate
db 61 ; base exp yield
INCBIN "pic/bmon/ditto.pic",0,1 ; 55, sprite dimensions
dw DittoPicFront
dw DittoPicBack
; attacks known at lvl 0
db TRANSFORM
db 0
db 0
db 0
db 0 ; growth rate
; learnset
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
	tmlearn 0
db 0 ; padding
