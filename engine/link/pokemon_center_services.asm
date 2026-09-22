; =========================================================
; POKEMON CENTER SERVICES
; =========================================================

PokemonCenterServicesNPC::
	ld hl, PokemonCenterServicesGreetingText
	call PrintText

.menu
	call PokemonCenterServices_DrawMenu
	call PokemonCenterServices_HandleMenu

	cp 0
	jr z, .deleteMove
	cp 1
	jr z, .rememberMove
	cp 2
	jr z, .wonderTrade
	ret ; CANCEL

.deleteMove
	jp PokemonCenterServices_DeleteMove

.rememberMove
	jp PokemonCenterServices_RememberMove

.wonderTrade
	jp PokemonCenterServices_WonderTrade

PokemonCenterServices_WonderTrade:
	farcall WonderTrade
	ret

; ---------------------------------------------------------
; Service menu
; ---------------------------------------------------------

PokemonCenterServices_DrawMenu:
	ld a, POKECENTER_SERVICES_MENU_TEMPLATE
	ld [wTextBoxID], a
	call DisplayTextBoxID
	ret


PokemonCenterServices_HandleMenu:
	xor a
	ld [wCurrentMenuItem], a
	ld [wLastMenuItem], a
	ld [wMenuJoypadPollCount], a

	ld a, 3
	ld [wMaxMenuItem], a

	ld a, 1
	ld [wTopMenuItemY], a

	ld a, 1
	ld [wTopMenuItemX], a

	ld a, A_BUTTON | B_BUTTON
	ld [wMenuWatchedKeys], a

.loop
	call HandleMenuInput
	and a
	jr z, .loop

	bit BIT_B_BUTTON, a
	jr nz, .cancel

	ld a, [wCurrentMenuItem]
	ret

.cancel
	ld a, 3
	ret


; =========================================================
; MOVE DELETER
; Based on pret/pokered Move Relearner / Deleter tutorial
; =========================================================

PokemonCenterServices_DeleteMove:
	ld hl, MoveDeleterGreetingText
	call PrintText

.jumpback
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jp nz, .exit

	ld hl, MoveDeleterSaidYesText
	call PrintText
	call WaitForTextScrollButtonPress

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

	; Push the cleared tilemap to VRAM while screen is still white.
	ld b, $9c
	call CopyScreenTileBufferToVRAM

	call LoadGBPal
	pop af

	jp c, .exit

	ld a, [wWhichPokemon]
	ld b, a
	push bc
	call PrepareDeletableMoveList
	pop bc

	ld a, [wMoveBuffer]
	cp 2
	jr nc, .chooseMove

	ld hl, MoveDeleterOneMoveText
	call PrintText
	call WaitForTextScrollButtonPress
	jp .exit

.chooseMove
	push bc

	xor a
	ld [wListScrollOffset], a
	ld [wCurrentMenuItem], a

	ld hl, MoveDeleterWhichMoveText
	call PrintText

	ld a, MOVESLISTMENU
	ld [wListMenuID], a

	ld de, wMoveBuffer
	ld hl, wListPointer
	ld [hl], e
	inc hl
	ld [hl], d

	xor a
	ld [wPrintItemPrices], a

	call DisplayListMenuID
	pop bc

	jr nc, .moveSelected

	; Cancelled move selection — restore overworld screen
	call GBPalWhiteOutWithDelay3
	call RestoreScreenTilesAndReloadTilePatterns
	call LoadGBPal
	jp .exit

.moveSelected

	; Selected move
	ld a, [wCurListMenuItem]
	ld d, a

	push de
	push bc

	ld [wMoveNum], a
	ld [wNamedObjectIndex], a
	call GetMoveName
	call CopyToStringBuffer

	ld hl, MoveDeleterConfirmText
	call PrintText
	call YesNoChoice

	pop bc
	pop de

	ld a, [wCurrentMenuItem]
	and a
	jr nz, .chooseMove

	push de

	ld a, b
	ld hl, wPartyMon1Moves
	ld bc, wPartyMon2 - wPartyMon1
	call AddNTimes

	pop de
	call PokemonCenterServices_DeleteMoveFromMon

	ld a, SFX_SWAP
	call PlaySoundWaitForCurrent

	ld hl, MoveDeleterForgotText
	call PrintText
	call WaitForTextScrollButtonPress

.exit
	ld hl, MoveDeleterByeText
	call PrintText
	jp TextScriptEnd

PokemonCenterServices_DeleteMoveFromMon:
	; d = move ID
	ld b, 0

.searchLoop
	ld a, [hli]
	cp d
	jr z, .foundMoveLoop
	inc b
	jr .searchLoop

.foundMoveLoop
	ld a, b
	cp 3
	jr z, .zeroLastMove

	ld a, [hl]
	dec hl
	ld [hli], a

	push hl
	ld de, wPartyMon1PP - wPartyMon1Moves
	add hl, de
	ld a, [hld]
	ld [hl], a
	pop hl

	inc hl
	inc b
	jr .foundMoveLoop

.zeroLastMove
	dec hl
	xor a
	ld [hl], a

	ld de, wPartyMon1PP - wPartyMon1Moves
	add hl, de
	ld [hl], a
	ret


PrepareDeletableMoveList:
	ld a, [wWhichPokemon]
	ld hl, wPartyMon1Moves
	ld bc, wPartyMon2 - wPartyMon1
	call AddNTimes

	ld b, 0
	ld c, 5
	ld de, wMoveBuffer + 1

.loop
	dec c
	jr z, .done

	ld a, [hli]
	and a
	jr z, .loop

	ld [de], a
	inc de
	inc b
	jr .loop

.done
	ld a, $ff
	ld [de], a

	ld a, b
	ld [wMoveBuffer], a
	ret

PokemonCenterServices_RememberMove:
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
	call LoadGBPal
	pop af

	ret c

	farcall PrepareRelearnableMoveList

	ld a, [wMoveBuffer]
	and a
	jr z, .noMoves
.chooseMove
	ld hl, MoveReminderWhichMoveText
	call PrintText

	xor a
	ld [wCurrentMenuItem], a
	ld [wLastMenuItem], a

	ld a, MOVESLISTMENU
	ld [wListMenuID], a

	ld de, wMoveBuffer
	ld hl, wListPointer
	ld [hl], e
	inc hl
	ld [hl], d

	xor a
	ld [wPrintItemPrices], a

	call DisplayListMenuID
	ret c

	; Get selected move from wMoveBuffer.
	ld a, [wCurrentMenuItem]
	ld b, a
	ld a, [wListScrollOffset]
	add b
	ld c, a
	ld b, 0

	ld hl, wMoveBuffer + 1
	add hl, bc
	ld a, [hl]

	; Set selected move for LearnMove / GetMoveName.
	ld [wMoveNum], a
	ld [wNamedObjectIndex], a

	call GetMoveName
	call CopyToStringBuffer

	predef LearnMove
	ret

.noMoves
	ld hl, MoveReminderNoMovesText
	call PrintText
	ret

PokemonCenterServicesGreetingText:
	text_far _PokemonCenterServicesGreetingText
	text_end

WonderTradeComingSoonText:
	text_far _WonderTradeComingSoonText
	text_end

MoveDeleterGreetingText:
	text_far _MoveDeleterGreetingText
	text_end

MoveDeleterSaidYesText:
	text_far _MoveDeleterSaidYesText
	text_end

MoveDeleterOneMoveText:
	text_far _MoveDeleterOneMoveText
	text_end

MoveDeleterWhichMoveText:
	text_far _MoveDeleterWhichMoveText
	text_end

MoveDeleterConfirmText:
	text_far _MoveDeleterConfirmText
	text_end

MoveDeleterForgotText:
	text_far _MoveDeleterForgotText
	text_end

MoveDeleterByeText:
	text_far _MoveDeleterByeText
	text_end

MoveReminderNoMovesText:
	text_far _MoveReminderNoMovesText
	text_end

MoveReminderWhichMoveText:
	text_far _MoveReminderWhichMoveText
	text_end
