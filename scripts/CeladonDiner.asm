CeladonDiner_Script:
	call EnableAutoTextBoxDrawing
	ret

CeladonDiner_TextPointers:
	dw CeladonDinerText1
	dw CeladonDinerText2
	dw CeladonDinerText3
	dw CeladonDinerText4
	dw CeladonDinerText5

CeladonDinerText1:
	TX_FAR _CeladonDinerText1
	db "@"

CeladonDinerText2:
	TX_FAR _CeladonDinerText2
	db "@"

CeladonDinerText3:
	TX_FAR _CeladonDinerText3
	db "@"

CeladonDinerText4:
	TX_FAR _CeladonDinerText4
	db "@"

CeladonDinerText5:
	TX_FAR _CeladonDinerText5
	db "@"	
