TextScriptEndingText::
	text_end

TextScriptEnd::
	ld hl, TextScriptEndingText
	ret

ExclamationText::
	text_far _ExclamationText
	text_end

GroundRoseText::
	text_far _GroundRoseText
	text_end

BoulderText::
	text_asm
	ld a, [wStatusFlags1]
	bit BIT_STRENGTH_ACTIVE, a		; check if Strength is already active
	jr nz, .BouldersCanBeMovedText	; if so, display alternate boulder text
	ld hl, RequiresStrengthText
	call PrintText
	ld a, [wObtainedBadges]
	bit BIT_RAINBOWBADGE, a			; check for Erika's badge
	jr z, .done						; if no RainbowBadge, text ends here
	ld a, [wObtainedBadges]
	bit BIT_RAINBOWBADGE, a
	jr z, .done

	ld b, HM_STRENGTH
	call IsItemInBag
	jr z, .done

	ld d, STRENGTH
	call CheckPartyCanLearnMove
	jr c, .done

	ld a, [wWhichPokemon]
	ld hl, wPartyMonNicks
	call GetPartyMonName
	jr .useStrengthYesNo
	; Otherwise require HM04.
	ld b, HM_STRENGTH
	call IsItemInBag
	jr z, .done
	; Find first Pokémon capable of using HM04.
	ld d, STRENGTH
	call CheckPartyCanLearnMove
	jr c, .done
	ld a, [wWhichPokemon]
	ld hl, wPartyMonNicks
	call GetPartyMonName
.useStrengthYesNo
	call WaitForTextScrollButtonPress
	ld hl, LikeToUseStrengthText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .closeTextBox
	farcall PrintStrengthText
.closeTextBox ; prevents certain situations requiring an extra button press to close text box
	ld a, 1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	jr .done
.BouldersCanBeMovedText
	ld hl, BouldersCanBeMovedText
	call PrintText
.done
	jp TextScriptEnd

RequiresStrengthText:
	text_far _RequiresStrengthText
	text_end

LikeToUseStrengthText:
	text_far _LikeToUseStrengthText
	text_end

BouldersCanBeMovedText:
	text_far _BouldersCanBeMovedText
	text_end

CheckPartyCanLearnMove::
	ld e, 0

.loop
	ld a, e
	ld [wWhichPokemon], a

	ld hl, wPartySpecies
	ld c, e
	ld b, 0
	add hl, bc
	ld a, [hl]

	cp $ff
	jr z, .notFound

	ld [wCurPartySpecies], a

	ld a, d
	ld [wMoveNum], a

	push de
	predef CanLearnTM
	pop de

	ld a, c
	and a
	jr nz, .found

	inc e
	jr .loop

.found
	ld a, e
	ld [wWhichPokemon], a
	and a
	ret

.notFound
	scf
	ret

CalmWaterText::
	text_asm
	farcall IsSurfingAllowed ; checks for Cycling Road and Seafoam Islands B4F
	ld hl, wStatusFlags1
	bit BIT_SURF_ALLOWED, [hl]
	res BIT_SURF_ALLOWED, [hl]
	jp z, .closeTextBox		 ; exit routine if surfing is disallowed
	ld hl, WaterIsCalmText
	call PrintText
	ld a, [wObtainedBadges]
	bit BIT_SOULBADGE, a	; check for Koga's badge
	jr z, .done				; if no SoulBadge, text ends here
	ld b, HM_SURF
	call IsItemInBag
	jr z, .done
	ld d, SURF
	call CheckPartyCanLearnMove
	jr c, .done
.useSurfYesNo
	call WaitForTextScrollButtonPress
	ld hl, LikeToUseSurfText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .closeTextBox
.MonUsingSurf
	ld a, SURFBOARD ; using SURF from the Party Menu works the exact same way
	ld [wCurItem], a
	ld [wPseudoItemID], a
	call UseItem
.closeTextBox
	ld a, 1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
.done
	jp TextScriptEnd

WaterIsCalmText:
	text_far _WaterIsCalmText
	text_end

LikeToUseSurfText:
	text_far _LikeToUseSurfText
	text_end

CutTreeText::
	text_asm
	ld hl, TreeCanBeCutText
	call PrintText

	ld a, [wObtainedBadges]
	bit BIT_CASCADEBADGE, a
	jr z, .done

	; Check for Shears first
	ld b, SHEARS
	call IsItemInBag
	jr nz, .useShears
	; Set Cut as the move we're checking
	ld a, CUT
	ld [wSearchedMove], a
	; First check whether a party Pokémon already knows Cut.
	; If so, HM01 is not required.
	call CheckPartyForMove
	jr nc, .useCutYesNo
	; Otherwise, HM01 must be in the player's bag.
	ld b, HM01
	call IsItemInBag
	jr z, .done
	; HM01 is owned, so check whether a party Pokémon can learn Cut.
	ld d, CUT
	call CheckPartyCanLearnMove
	jr c, .done
	; CheckPartyCanLearnMove sets wWhichPokemon,
	; so load that Pokémon's nickname.
	ld a, [wWhichPokemon]
	ld hl, wPartyMonNicks
	call GetPartyMonName
.useCutYesNo
	call WaitForTextScrollButtonPress
	ld hl, LikeToUseCutText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .closeTextBox

.MonUsingCut
	ld hl, UsedCutAltText
	call PrintText
	predef UsedCut
	jr .closeTextBox

.useShears
	call WaitForTextScrollButtonPress
	ld hl, LikeToUseShearsText
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .closeTextBox

	; Set CUT so UsedCut uses the existing safe overworld path
	ld a, CUT
	ld [wSearchedMove], a

	ld hl, UsedShearsText
	call PrintText
	predef UsedCut

.closeTextBox
	xor a
	ld [wSearchedMove], a
	ld a, 1
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a

.done
	jp TextScriptEnd

; Note: The above instance of .closeTextBox is different because we've inserted a conditional jump in 'predef UsedCut'. This jump determines 
; whether to execute the routine as normal, when the player uses Cut from the Party Menu. If using Cut from the overworld, the routine skips
; the screen white-out back to the overworld. It also skips loading the Cut user's name, since we already got it from CheckPartyForMove. The
; short version of the routine gets executed ONLY when wSearchedMove = CUT. We MUST therefore ensure that we change that value just in case
; we need the full routine should Cut ever get used from the menu. Trying to execute Cut from the menu while using the abridged routine has
; some fairly disastrous graphical consequences... and for what it's worth, the text will be wrong, too.

TreeCanBeCutText:
	text_far _TreeCanBeCutText
	text_end

LikeToUseCutText:
	text_far _LikeToUseCutText
	text_end

UsedCutAltText:
	text_far _UsedCutText
	text_end

LikeToUseShearsText:
	text_far _LikeToUseShearsText
	text_end

UsedShearsText:
	text_far _UsedShearsText
	text_end

MartSignText::
	text_far _MartSignText
	text_end

PokeCenterSignText::
	text_far _PokeCenterSignText
	text_end

PickUpItemText::
	text_asm
	predef PickUpItem
	jp TextScriptEnd
