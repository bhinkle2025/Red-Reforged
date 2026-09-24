; =========================================================
; WONDER TRADE
; =========================================================

WonderTrade::
	ld hl, WonderTradeIntroText
	call PrintText

	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	ret nz

	ld hl, WonderTradeChooseMonText
	call PrintText
	call WaitForTextScrollButtonPress

	; Select Pokemon
	call SaveScreenTilesToBuffer2

	xor a
	ld [wListScrollOffset], a
	ld [wPartyMenuTypeOrMessageID], a
	ld [wMenuItemToSwap], a

	dec a
	ld [wUpdateSpritesEnabled], a ; $ff

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

	ret c

	; Remember which Pokemon is being traded.
	ld a, [wWhichPokemon]
	ld [wWonderTradeSelectedMon], a

	; Generate the random Wonder Trade Pokemon.
	call WonderTrade_GeneratePokemon

	; Announce the trade.
	ld hl, WonderTradeSelectedText
	call PrintText

	; Play the link cable trade animation.
	call WonderTrade_PlayTradeAnimation

	; Complete the trade.
	call WonderTrade_CompleteTrade

	; Restore the normal map after the trade cutscene.
	call ClearScreen
	call WonderTrade_RestoreScreen
	farcall RedrawMapView

	; Immediately restore player/NPC sprites.
	call UpdateSprites
	call DelayFrame
	ret

WonderTrade_CompleteTrade:
	; Remove the Pokemon being offered.
	ld a, [wWonderTradeSelectedMon]
	ld [wWhichPokemon], a

	xor a
	ld [wRemoveMonFromBox], a
	call RemovePokemon

	; Set up the generated Pokemon.
	ld a, [wWonderTradeSpecies]
	ld [wCurPartySpecies], a

	ld a, [wWonderTradeLevel]
	ld [wCurEnemyLevel], a

	; Add to player party, but skip nickname prompt.
	ld a, $80
	ld [wMonDataLocation], a
	call AddPartyMon

	; Apply Wonder Trade OT name and randomized Trainer ID.
	call WonderTrade_CopyOTDataToReceivedMon

	; Trigger trade evolutions.
	callfar EvolveTradeMon

	; Wonder Trade Pokemon always arrives at full HP.
	ld hl, wPartyMons
	ld a, [wPartyCount]
	dec a
	ld bc, wPartyMon2 - wPartyMon1
	call AddNTimes

	push hl
	ld bc, MON_MAXHP
	add hl, bc
	ld a, [hli]
	ld d, a
	ld a, [hl]
	ld e, a
	pop hl

	ld bc, MON_HP
	add hl, bc
	ld [hl], d
	inc hl
	ld [hl], e

	; Give it its actual final species name.
	ld hl, wPartySpecies
	ld a, [wPartyCount]
	dec a
	ld c, a
	ld b, 0
	add hl, bc
	ld a, [hl]

	ld [wNamedObjectIndex], a
	call GetMonName

	ld hl, wPartyMonNicks
	ld a, [wPartyCount]
	dec a
	call SkipFixedLengthTextEntries

	ld d, h
	ld e, l
	ld hl, wNameBuffer
	ld bc, NAME_LENGTH
	call CopyData

	xor a
	ld [wMonDataLocation], a
	ret

WonderTrade_GeneratePokemon:
.generateLevel
	call WonderTrade_RandomByte
	and $3f
	cp 56
	jr nc, .generateLevel
	add 5
	ld [wWonderTradeLevel], a

.generateSpecies
	call WonderTrade_RandomByte
	cp 147
	jr nc, .generateSpecies

	; Convert entry index to 16-bit offset × 2.
	ld c, a
	ld b, 0
	sla c
	rl b

	ld hl, WonderTradeSpeciesTable
	add hl, bc

	ld a, [hli]
	ld b, a ; B = species

	ld a, [hl]
	ld c, a ; C = minimum legal level

	ld a, [wWonderTradeLevel]
	cp c
	jr c, .generateSpecies ; generated level is too low

	ld a, b
	ld [wWonderTradeSpecies], a
	ret

WonderTrade_RandomByte:
	call Random
	ld b, a

	ld a, [wPlayTimeFrames]
	xor b
	ld b, a

	ld a, [wPlayTimeSeconds]
	add b
	ret

WonderTrade_PlayTradeAnimation:
	call LoadHpBarAndStatusTilePatterns
	call WonderTrade_PrepareTradeData
	predef InternalClockTradeAnim
	ret

WonderTrade_PrepareTradeData:
	; ---------------------------------------------------------
	; Species
	; ---------------------------------------------------------

	; Get the species of the Pokemon the player is sending.
	ld a, [wWonderTradeSelectedMon]
	ld c, a
	ld b, 0
	ld hl, wPartySpecies
	add hl, bc
	ld a, [hl]
	ld [wTradedPlayerMonSpecies], a

	; Species being received.
	ld a, [wWonderTradeSpecies]
	ld [wTradedEnemyMonSpecies], a

	; ---------------------------------------------------------
	; Player Pokemon OT name
	; ---------------------------------------------------------

	ld hl, wPartyMonOT
	ld bc, NAME_LENGTH
	ld a, [wWonderTradeSelectedMon]
	call AddNTimes

	ld de, wTradedPlayerMonOT
	ld bc, NAME_LENGTH
	call CopyData

	; ---------------------------------------------------------
	; Wonder Trade OT name
	; ---------------------------------------------------------

	ld hl, WonderTrade_TrainerString
	ld de, wTradedEnemyMonOT
	ld bc, NAME_LENGTH
	call CopyData

	; The trade animation also uses the link enemy trainer name.
	ld hl, WonderTrade_TrainerString
	ld de, wLinkEnemyTrainerName
	ld bc, NAME_LENGTH
	call CopyData

	; ---------------------------------------------------------
	; Player Pokemon OT ID
	; ---------------------------------------------------------

	ld hl, wPartyMon1OTID
	ld bc, wPartyMon2 - wPartyMon1
	ld a, [wWonderTradeSelectedMon]
	call AddNTimes

	ld de, wTradedPlayerMonOTID
	ld bc, 2
	call CopyData

	; ---------------------------------------------------------
	; Random Wonder Trade OT ID
	; ---------------------------------------------------------

	call Random
	ld hl, hRandomAdd
	ld de, wTradedEnemyMonOTID
	ld bc, 2
	jp CopyData


WonderTrade_TrainerString:
	db "WONDER@@@@@"

WonderTrade_CopyOTDataToReceivedMon:
	; Received Pokemon is always the last Pokemon in the party.

	; ---------------------------------------------------------
	; OT name
	; ---------------------------------------------------------

	ld hl, wPartyMonOT
	ld bc, NAME_LENGTH
	ld a, [wPartyCount]
	dec a
	call AddNTimes

	ld d, h
	ld e, l
	ld hl, wTradedEnemyMonOT
	ld bc, NAME_LENGTH
	call CopyData

	; ---------------------------------------------------------
	; OT ID
	; ---------------------------------------------------------

	ld hl, wPartyMon1OTID
	ld bc, wPartyMon2 - wPartyMon1
	ld a, [wPartyCount]
	dec a
	call AddNTimes

	ld d, h
	ld e, l
	ld hl, wTradedEnemyMonOTID
	ld bc, 2
	jp CopyData

WonderTrade_RestoreScreen:
	call GBPalWhiteOutWithDelay3
	call RestoreScreenTilesAndReloadTilePatterns
	call ReloadTilesetTilePatterns
	call LoadScreenTilesFromBuffer2
	call Delay3
	call LoadGBPal
	ld c, 10
	call DelayFrames
	farjp LoadWildData

WonderTradeSpeciesTable:
	; Bulbasaur line
	db BULBASAUR, 5
	db IVYSAUR, 16
	db VENUSAUR, 32

	; Charmander line
	db CHARMANDER, 5
	db CHARMELEON, 16
	db CHARIZARD, 36

	; Squirtle line
	db SQUIRTLE, 5
	db WARTORTLE, 16
	db BLASTOISE, 36

	; Caterpie line
	db CATERPIE, 5
	db METAPOD, 7
	db BUTTERFREE, 10

	; Weedle line
	db WEEDLE, 5
	db KAKUNA, 7
	db BEEDRILL, 10

	; Pidgey line
	db PIDGEY, 5
	db PIDGEOTTO, 9
	db PIDGEOT, 20

	; Rattata line
	db RATTATA, 5
	db RATICATE, 20

	; Spearow line
	db SPEAROW, 5
	db FEAROW, 20

	; Ekans line
	db EKANS, 5
	db ARBOK, 22

	; Pikachu line - Thunder Stone has no level requirement
	db PIKACHU, 5
	db RAICHU, 5

	; Sandshrew line
	db SANDSHREW, 5
	db SANDSLASH, 22

	; Nidoran F line
	db NIDORAN_F, 5
	db NIDORINA, 16
	db NIDOQUEEN, 16 ; Moon Stone after Nidorina

	; Nidoran M line
	db NIDORAN_M, 5
	db NIDORINO, 16
	db NIDOKING, 16 ; Moon Stone after Nidorino

	; Clefairy line
	db CLEFAIRY, 5
	db CLEFABLE, 5

	; Vulpix line
	db VULPIX, 5
	db NINETALES, 5

	; Jigglypuff line
	db JIGGLYPUFF, 5
	db WIGGLYTUFF, 5

	; Zubat line
	db ZUBAT, 5
	db GOLBAT, 22

	; Oddish line
	db ODDISH, 5
	db GLOOM, 21
	db VILEPLUME, 21

	; Paras line
	db PARAS, 5
	db PARASECT, 24

	; Venonat line
	db VENONAT, 5
	db VENOMOTH, 31

	; Diglett line
	db DIGLETT, 5
	db DUGTRIO, 26

	; Meowth line
	db MEOWTH, 5
	db PERSIAN, 28

	; Psyduck line
	db PSYDUCK, 5
	db GOLDUCK, 28

	; Mankey line
	db MANKEY, 5
	db PRIMEAPE, 28

	; Growlithe line
	db GROWLITHE, 5
	db ARCANINE, 5

	; Poliwag line
	db POLIWAG, 5
	db POLIWHIRL, 18
	db POLIWRATH, 18

	; Abra line - Alakazam is trade evolution
	db ABRA, 5
	db KADABRA, 16
	db ALAKAZAM, 16

	; Machop line
	db MACHOP, 5
	db MACHOKE, 28
	db MACHAMP, 28

	; Bellsprout line
	db BELLSPROUT, 5
	db WEEPINBELL, 21
	db VICTREEBEL, 21

	; Tentacool line
	db TENTACOOL, 5
	db TENTACRUEL, 30

	; Geodude line
	db GEODUDE, 5
	db GRAVELER, 25
	db GOLEM, 25

	; Ponyta line
	db PONYTA, 5
	db RAPIDASH, 38

	; Slowpoke line
	db SLOWPOKE, 5
	db SLOWBRO, 37

	; Magnemite line
	db MAGNEMITE, 5
	db MAGNETON, 30

	; Single-stage
	db FARFETCHD, 5

	; Doduo line
	db DODUO, 5
	db DODRIO, 31

	; Seel line
	db SEEL, 5
	db DEWGONG, 34

	; Grimer line
	db GRIMER, 5
	db MUK, 38

	; Shellder line
	db SHELLDER, 5
	db CLOYSTER, 5

	; Gastly line
	db GASTLY, 5
	db HAUNTER, 25
	db GENGAR, 25

	; Single-stage
	db ONIX, 5

	; Drowzee line
	db DROWZEE, 5
	db HYPNO, 26

	; Krabby line
	db KRABBY, 5
	db KINGLER, 28

	; Voltorb line
	db VOLTORB, 5
	db ELECTRODE, 30

	; Exeggcute line
	db EXEGGCUTE, 5
	db EXEGGUTOR, 5

	; Cubone line
	db CUBONE, 5
	db MAROWAK, 28

	; Hitmonlee / Hitmonchan
	db HITMONLEE, 5
	db HITMONCHAN, 5

	; Lickitung
	db LICKITUNG, 5

	; Koffing line
	db KOFFING, 5
	db WEEZING, 35

	; Rhyhorn line
	db RHYHORN, 5
	db RHYDON, 42

	; Chansey
	db CHANSEY, 5

	; Tangela
	db TANGELA, 5

	; Kangaskhan
	db KANGASKHAN, 5

	; Horsea line
	db HORSEA, 5
	db SEADRA, 30

	; Goldeen line
	db GOLDEEN, 5
	db SEAKING, 30

	; Staryu line
	db STARYU, 5
	db STARMIE, 5

	; Mr. Mime
	db MR_MIME, 5

	; Scyther
	db SCYTHER, 5

	; Jynx
	db JYNX, 5

	; Electabuzz
	db ELECTABUZZ, 5

	; Magmar
	db MAGMAR, 5

	; Pinsir
	db PINSIR, 5

	; Tauros
	db TAUROS, 5

	; Magikarp line
	db MAGIKARP, 5
	db GYARADOS, 20

	; Single-stage
	db LAPRAS, 5
	db DITTO, 5

	; Eevee line
	db EEVEE, 5
	db VAPOREON, 5
	db JOLTEON, 5
	db FLAREON, 5

	; Porygon
	db PORYGON, 5

	; Fossils
	db OMANYTE, 5
	db OMASTAR, 40
	db KABUTO, 5
	db KABUTOPS, 40
	db AERODACTYL, 5

	; Snorlax
	db SNORLAX, 5

	; Legendary birds intentionally excluded:
	; ARTICUNO
	; ZAPDOS
	; MOLTRES

	; Dratini line
	db DRATINI, 5
	db DRAGONAIR, 30
	db DRAGONITE, 55

	; MEWTWO intentionally excluded

	; Mew
	db MEW, 5

	db $ff

WonderTradeIntroText:
	text_far _WonderTradeIntroText
	text_end

WonderTradeChooseMonText:
	text_far _WonderTradeChooseMonText
	text_end

WonderTradeSelectedText:
	text_far _WonderTradeSelectedText
	text_end
