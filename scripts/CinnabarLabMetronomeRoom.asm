CinnabarLabMetronomeRoom_Script:
	jp EnableAutoTextBoxDrawing

CinnabarLabMetronomeRoom_TextPointers:
	def_text_pointers
	dw_const CinnabarLabMetronomeRoomScientist1Text, TEXT_CINNABARLABMETRONOMEROOM_SCIENTIST1
	dw_const CinnabarLabMetronomeRoomScientist2Text, TEXT_CINNABARLABMETRONOMEROOM_SCIENTIST2
	dw_const CinnabarLabMetronomeRoomPCText,         TEXT_CINNABARLABMETRONOMEROOM_PC_KEYBOARD
	dw_const CinnabarLabMetronomeRoomPCText,         TEXT_CINNABARLABMETRONOMEROOM_PC_MONITOR
	dw_const CinnabarLabMetronomeRoomAmberPipeText,  TEXT_CINNABARLABMETRONOMEROOM_AMBER_PIPE

CinnabarLabMetronomeRoomScientist1Text:
	text_asm
	CheckEvent EVENT_GOT_TM35
	jr nz, .got_item
	ld hl, .Text
	call PrintText
	lb bc, TM_METRONOME, 1
	call GiveItem
	jr nc, .bag_full
	ld hl, .ReceivedTM35Text
	call PrintText
	SetEvent EVENT_GOT_TM35
	jr .done
.bag_full
	ld hl, .TM35NoRoomText
	call PrintText
	jr .done
.got_item
	ld hl, .TM35ExplanationText
	call PrintText
.done
	jp TextScriptEnd

.Text:
	text_far _CinnabarLabMetronomeRoomScientist1Text
	text_end

.ReceivedTM35Text:
	text_far _CinnabarLabMetronomeRoomScientist1ReceivedTM35Text
	sound_get_item_1
	text_end

.TM35ExplanationText:
	text_far _CinnabarLabMetronomeRoomScientist1TM35ExplanationText
	text_end

.TM35NoRoomText:
	text_far _CinnabarLabMetronomeRoomScientist1TM35NoRoomText
	text_end

CinnabarLabMetronomeRoomScientist2Text:
	text_asm

	ld hl, CinnabarMoveTutorIntroText
	call PrintText

	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jp nz, .NoThanks

	; Open Cinnabar Move Tutor menu.
	ld a, MOVE_TUTOR2_MENU_TEMPLATE
	ld [wTextBoxID], a
	call DisplayTextBoxID

	xor a
	ld [wCurrentMenuItem], a
	ld [wLastMenuItem], a
	ld [wMenuJoypadPollCount], a
	ld [wMenuWatchMovingOutOfBounds], a

	ld a, 3 ; METRONOME / DOUBLE TEAM / SUBSTITUTE / CANCEL
	ld [wMaxMenuItem], a

	ld a, 1
	ld [wTopMenuItemY], a
	ld [wTopMenuItemX], a

	ld a, A_BUTTON | B_BUTTON
	ld [wMenuWatchedKeys], a

	call HandleMenuInput

	and B_BUTTON
	jr nz, .NoThanks

	ld a, [wCurrentMenuItem]
	and a
	jr z, .Metronome

	cp 1
	jr z, .DoubleTeam

	cp 2
	jr z, .Substitute

	; CANCEL
	jr .NoThanks

.Metronome
	ld a, METRONOME
	jr .SelectedMove

.DoubleTeam
	ld a, DOUBLE_TEAM
	jr .SelectedMove

.Substitute
	ld a, SUBSTITUTE

.SelectedMove
	ld [wMoveNum], a
	push af

	; Select Pokémon.
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

	hlcoord 1, 13
	lb bc, 4, 18
	call ClearScreenArea

	ld b, $9c
	call CopyScreenTileBufferToVRAM

	call LoadGBPal
	pop af

	jr c, .CancelPokemon

	; Restore selected tutor move.
	pop af
	ld [wMoveNum], a

	; Next step: compatibility check.
	jp CinnabarMoveTutorCheckCompatibility

.CancelPokemon
	pop af
	jr .NoThanks

.NoThanks
	ld hl, CinnabarMoveTutorNoText
	call PrintText
	jp TextScriptEnd

CinnabarMoveTutorIntroText:
	text_far _CinnabarMoveTutorIntroText
	text_end

CinnabarMoveTutorNoText:
	text_far _CinnabarMoveTutorNoText
	text_end

CinnabarMoveTutorCheckCompatibility:
	; Get selected Pokémon species.
	ld a, [wWhichPokemon]
	ld e, a
	ld d, 0
	ld hl, wPartySpecies
	add hl, de
	ld a, [hl]
	ld b, a ; B = selected species

	; Choose compatibility logic based on selected move.
	ld a, [wMoveNum]

	cp METRONOME
	jr z, .metronome

	cp DOUBLE_TEAM
	jr z, .commonExceptions

	cp SUBSTITUTE
	jr z, .commonExceptions

	; Should never happen.
	jp TextScriptEnd

.metronome
	ld hl, CinnabarMoveTutorMetronomeMons

.scanWhitelist
	ld a, [hli]
	and a
	jr z, .cantLearn

	cp b
	jr z, .canLearn

	jr .scanWhitelist

.commonExceptions
	ld hl, CinnabarMoveTutorCommonExceptions

.scanBlacklist
	ld a, [hli]
	and a
	jr z, .canLearn

	cp b
	jr z, .cantLearn

	jr .scanBlacklist

.canLearn
	call CinnabarMoveTutorCheckAlreadyKnows
	jr c, .alreadyKnows

	; Prepare move name for LearnMove.
	ld a, [wMoveNum]
	ld [wNamedObjectIndex], a
	call GetMoveName
	call CopyToStringBuffer

	predef LearnMove
	jp TextScriptEnd

.alreadyKnows
	ld hl, CinnabarMoveTutorAlreadyKnowsText
	call PrintText
	jp TextScriptEnd

.cantLearn
	ld hl, CinnabarMoveTutorCantLearnText
	call PrintText
	jp TextScriptEnd

CinnabarMoveTutorMetronomeMons:
	db CLEFAIRY, CLEFABLE
	db JIGGLYPUFF, WIGGLYTUFF
	db MEOWTH, PERSIAN
	db PSYDUCK, GOLDUCK
	db MANKEY, PRIMEAPE
	db POLIWHIRL, POLIWRATH
	db ABRA, KADABRA, ALAKAZAM
	db MACHOP, MACHOKE, MACHAMP
	db GEODUDE, GRAVELER, GOLEM
	db SLOWBRO
	db GRIMER, MUK
	db HAUNTER, GENGAR
	db DROWZEE, HYPNO
	db HITMONLEE
	db HITMONCHAN
	db CHANSEY
	db MR_MIME
	db JYNX
	db ELECTABUZZ
	db MAGMAR
	db SNORLAX
	db DRAGONITE
	db MEWTWO
	db MEW
	db $00

CinnabarMoveTutorCommonExceptions:
	db CATERPIE, METAPOD
	db WEEDLE, KAKUNA
	db MAGIKARP
	db DITTO
	db $00

CinnabarMoveTutorCheckAlreadyKnows:
	; C = tutor move being checked.
	ld a, [wMoveNum]
	ld c, a

	; HL = first move slot of selected party Pokémon.
	ld hl, wPartyMon1Moves
	ld a, [wWhichPokemon]
	and a
	jr z, .checkMoves

	ld de, PARTYMON_STRUCT_LENGTH

.findMon
	add hl, de
	dec a
	jr nz, .findMon

.checkMoves
	ld b, 4

.loop
	ld a, [hli]
	cp c
	jr z, .found

	dec b
	jr nz, .loop

	; Carry clear = doesn't know it.
	and a
	ret

.found
	; Carry set = already knows it.
	scf
	ret

CinnabarMoveTutorAlreadyKnowsText:
	text_far _CinnabarMoveTutorAlreadyKnowsText
	text_end

CinnabarMoveTutorCantLearnText:
	text_far _CinnabarMoveTutorCantLearnText
	text_end

CinnabarLabMetronomeRoomPCText:
	text_far _CinnabarLabMetronomeRoomPCText
	text_end

CinnabarLabMetronomeRoomAmberPipeText:
	text_far _CinnabarLabMetronomeRoomAmberPipeText
	text_end
