FuchsiaMoveTutor_Script:
	jp EnableAutoTextBoxDrawing

FuchsiaMoveTutor_TextPointers:
	def_text_pointers
	dw_const FuchsiaMoveTutorText, TEXT_FUCHSIACITY_MOVE_TUTOR

FuchsiaMoveTutorText:
	text_asm

	; Intro dialogue.
	ld hl, .IntroText
	call PrintText

	; Ask YES / NO.
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jp nz, TextScriptEnd ; NO

	; YES -> open Move Tutor menu.
	ld a, MOVE_TUTOR_MENU_TEMPLATE
	ld [wTextBoxID], a
	call DisplayTextBoxID

	xor a
	ld [wCurrentMenuItem], a
	ld [wTopMenuItemY], a
	ld [wTopMenuItemX], a
	ld [wMenuJoypadPollCount], a

	ld a, 3 ; TELEPORT / WHIRLWIND / ROAR / CANCEL
	ld [wMaxMenuItem], a
	ld [wLastMenuItem], a

	ld a, A_BUTTON | B_BUTTON
	ld [wMenuWatchedKeys], a

	call HandleMenuInput

	bit B_BUTTON_F, a
	jp nz, TextScriptEnd

	ld a, [wCurrentMenuItem]
	and a
	jr z, .Teleport

	cp 1
	jr z, .Whirlwind

	cp 2
	jr z, .Roar

	jp TextScriptEnd

.Teleport
	ld a, TELEPORT
	jr .SelectedMove

.Whirlwind
	ld a, WHIRLWIND
	jr .SelectedMove

.Roar
	ld a, ROAR

.SelectedMove
	ld [wMoveNum], a

	; Select Pokemon
	call SaveScreenTilesToBuffer2
	xor a
	ld [wListScrollOffset], a
	ld [wPartyMenuTypeOrMessageID], a
	ld [wUpdateSpritesEnabled], a
	ld [wMenuItemToSwap], a
	call DisplayPartyMenu

	push af
	call GBPalWhiteOutWithDelay3
	call RestoreScreenTilesAndReloadTilePatterns

	; Clear old "Which #MON?" text.
	hlcoord 1, 13
	lb bc, 4, 18
	call ClearScreenArea

	ld b, $9c
	call CopyScreenTileBufferToVRAM

	call LoadGBPal
	pop af

	jp c, TextScriptEnd

	; wWhichPokemon now contains the selected party slot.
	; Next step: check whether that Pokémon can learn [wMoveNum].
	jp MoveTutorCheckCompatibility

MoveTutorTeleportMons:
	db BUTTERFREE
	db CLEFAIRY, CLEFABLE
	db JIGGLYPUFF, WIGGLYTUFF
	db VENOMOTH
	db ARCANINE
	db ABRA, KADABRA, ALAKAZAM
	db SLOWPOKE, SLOWBRO
	db MAGNEMITE, MAGNETON
	db SHELLDER, CLOYSTER
	db DROWZEE, HYPNO
	db VOLTORB, ELECTRODE
	db EXEGGCUTE, EXEGGUTOR
	db CHANSEY
	db STARYU, STARMIE
	db MR_MIME
	db JYNX
	db ELECTABUZZ
	db MAGMAR
	db PORYGON
	db MEWTWO
	db MEW
	db $00

.IntroText:
	text_far _FuchsiaMoveTutorText
	text_end
