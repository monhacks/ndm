CeladonCity_Script:
	call EnableAutoTextBoxDrawing
	ResetEvents EVENT_1B8, EVENT_1BF
	ResetEvent EVENT_67F
	ret

CeladonCity_TextPointers:
	dw CeladonCityText1
	dw CeladonCityText2
	dw CeladonCityText3
	dw CeladonCityText4
	dw CeladonCityText5
	dw CeladonCityText6
	dw CeladonCityText7
	dw CeladonCityText8
	dw CeladonCityText9
	dw CeladonCityText10
	dw CeladonCityText11
	dw PokeCenterSignText
	dw CeladonCityText13
	dw CeladonCityText14
	dw CeladonCityText15
	dw CeladonCityText16
	dw CeladonCityText17
	dw CeladonCityText18

CeladonCityText1:
	TX_FAR _CeladonCityText1
	db "@"

CeladonCityText2:
	TX_FAR _CeladonCityText2
	db "@"

CeladonCityText3:
	TX_FAR _CeladonCityText3
	db "@"

CeladonCityText4:
	TX_FAR _CeladonCityText4
	db "@"

CeladonCityText5:
	TX_FAR _CeladonCityText5
	db "@"

CeladonCityText6:
	TX_FAR _CeladonCityText6
	db "@"

CeladonCityText7:
	TX_FAR _CeladonCityText7
	db "@"
	;TX_ASM
	;ld a, POLIWRATH
	;call PlayCry
	;jp TextScriptEnd

CeladonCityText8:
	TX_FAR _CeladonCityText8
	db "@"

CeladonCityText9:
	TX_FAR _CeladonCityText9
	db "@"

CeladonCityText10:
	TX_FAR _CeladonCityText10
	db "@"

CeladonCityText11:
	TX_FAR _CeladonCityText11
	db "@"

CeladonCityText13:
	TX_FAR _CeladonCityText13
	db "@"

CeladonCityText14:
	TX_FAR _CeladonCityText14
	db "@"

CeladonCityText15:
	TX_FAR _CeladonCityText15
	db "@"

CeladonCityText16:
	TX_FAR _CeladonCityText16
	db "@"

CeladonCityText17:
	TX_FAR _CeladonCityText17
	db "@"

CeladonCityText18:
	TX_FAR _CeladonCityText18
	db "@"
