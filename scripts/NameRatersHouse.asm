NameRatersHouse_Script:
	jp EnableAutoTextBoxDrawing

NameRatersHouse_TextPointers:
	def_text_pointers
	dw_const NameRatersHouseNameRaterText, TEXT_NAMERATERSHOUSE_NAME_RATER

NameRatersHouseNameRaterText:
	text_asm
	ld hl, .RetiredNameRaterText
	call PrintText
	jp TextScriptEnd

.RetiredNameRaterText:
	text_far _RetiredNameRaterText
	text_end