FuchsiaGoodRodHouse_Script:
	jp EnableAutoTextBoxDrawing

FuchsiaGoodRodHouse_TextPointers:
	def_text_pointers
	dw_const FuchsiaMoveTutorText, TEXT_FUCHSIACITY_MOVE_TUTOR

FuchsiaMoveTutorText:
	text_asm

	; Intro dialogue.
	ld hl, FuchsiaMoveTutorIntroText
	call PrintText

	; Ask YES / NO.
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr z, .yes

	ld hl, FuchsiaMoveTutorNoText
	call PrintText
	jp TextScriptEnd

.yes

	; YES -> open Move Tutor menu.
	ld a, MOVE_TUTOR_MENU_TEMPLATE
	ld [wTextBoxID], a
	call DisplayTextBoxID

	xor a
	ld [wCurrentMenuItem], a
	ld [wLastMenuItem], a
	ld [wMenuJoypadPollCount], a
	ld [wMenuWatchMovingOutOfBounds], a

	ld a, 3 ; TELEPORT / WHIRLWIND / ROAR / CANCEL
	ld [wMaxMenuItem], a

	ld a, 1
	ld [wTopMenuItemY], a
	ld [wTopMenuItemX], a

	ld a, A_BUTTON | B_BUTTON
	ld [wMenuWatchedKeys], a

	call HandleMenuInput

	and B_BUTTON
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
	push af

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

	hlcoord 1, 13
	lb bc, 4, 18
	call ClearScreenArea

	ld b, $9c
	call CopyScreenTileBufferToVRAM

	call LoadGBPal
	pop af

	jr c, .cancelPokemon

	; Restore selected tutor move.
	pop af
	ld [wMoveNum], a

	jp MoveTutorCheckCompatibility

.cancelPokemon
	pop af
	ld hl, FuchsiaMoveTutorNoText
	call PrintText
	jp TextScriptEnd

MoveTutorCheckCompatibility:
	; Get selected Pokémon species.
	ld a, [wWhichPokemon]
	ld e, a
	ld d, 0
	ld hl, wPartySpecies
	add hl, de
	ld a, [hl]
	ld b, a ; B = selected species

	; Choose compatibility table based on selected move.
	ld a, [wMoveNum]

	cp TELEPORT
	jr z, .teleport

	cp WHIRLWIND
	jr z, .whirlwind

	cp ROAR
	jr z, .roar

	; Should never happen.
	jp TextScriptEnd

.teleport
	ld hl, MoveTutorTeleportMons
	jr .scan

.whirlwind
	ld hl, MoveTutorWhirlwindMons
	jr .scan

.roar
	ld hl, MoveTutorRoarMons

.scan
	ld a, [hli]

	; $00 terminates each compatibility list.
	and a
	jr z, .cantLearn

	cp b
	jr z, .canLearn

	jr .scan

.canLearn
	ld a, [wMoveNum]
	ld [wNamedObjectIndex], a
	call GetMoveName
	call CopyToStringBuffer

	predef LearnMove
	jp TextScriptEnd

.cantLearn
	ld hl, MoveTutorCantLearnText
	call PrintText
	jp TextScriptEnd

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

MoveTutorWhirlwindMons:
	db BUTTERFREE
	db PIDGEY, PIDGEOTTO, PIDGEOT
	db SPEAROW, FEAROW
	db ZUBAT, GOLBAT
	db VENOMOTH
	db FARFETCHD
	db DODUO, DODRIO
	db AERODACTYL
	db ARTICUNO
	db ZAPDOS
	db MOLTRES
	db DRAGONITE
	db MEW
	db $00

MoveTutorRoarMons:
	db IVYSAUR, VENUSAUR
	db CHARMANDER, CHARMELEON, CHARIZARD
	db BLASTOISE
	db RATICATE
	db NIDOQUEEN
	db NIDOKING
	db VULPIX, NINETALES
	db PERSIAN
	db MANKEY, PRIMEAPE
	db GROWLITHE, ARCANINE
	db GOLEM
	db ONIX
	db RHYHORN, RHYDON
	db KANGASKHAN
	db MAGMAR
	db GYARADOS
	db LAPRAS
	db EEVEE
	db VAPOREON
	db JOLTEON
	db FLAREON
	db AERODACTYL
	db ARTICUNO
	db ZAPDOS
	db MOLTRES
	db DRAGONITE
	db MEW
	db $00

FuchsiaMoveTutorIntroText:
	text_far _FuchsiaMoveTutorText
	text_end

FuchsiaMoveTutorNoText:
	text_far _FuchsiaMoveTutorNoText
	text_end

MoveTutorCanLearnText:
	text_far _MoveTutorCanLearnText
	text_end

MoveTutorCantLearnText:
	text_far _MoveTutorCantLearnText
	text_end