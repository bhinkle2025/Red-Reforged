RedsHouse2F_Script:
	call EnableAutoTextBoxDrawing
	ld hl, RedsHouse2F_ScriptPointers
	ld a, [wRedsHouse2FCurScript]
	jp CallFunctionInTable

RedsHouse2F_ScriptPointers:
	def_script_pointers
	dw_const RedsHouse2FDefaultScript, SCRIPT_REDSHOUSE2F_DEFAULT
	dw_const RedsHouse2FNoopScript,    SCRIPT_REDSHOUSE2F_NOOP

RedsHouse2FDefaultScript:
	xor a
	ldh [hJoyHeld], a
	ld a, PLAYER_DIR_UP
	ld [wPlayerMovingDirection], a
	ld a, SCRIPT_REDSHOUSE2F_NOOP
	ld [wRedsHouse2FCurScript], a
	ret

RedsHouse2FNoopScript:
	ret

RedsHouse2F_TextPointers:
	def_text_pointers
	dw_const RedsHouse2FBedStashText, TEXT_REDSHOUSE2F_BED_STASH

RedsHouse2FBedStashText:
	text_asm
	call RedsHouse2FBedStashScript
	jp TextScriptEnd

RedsHouse2FBedStashScript:
	; Rare Candy stash is exclusive to Hard Mode.
	ld a, [wDifficulty]
	and a
	jr z, .normalMode

	CheckEvent EVENT_FOUND_BED_CANDY_STASH
	jr nz, .empty

	lb bc, RARE_CANDY, 20
	call GiveItem
	jr nc, .bagFull

	SetEvent EVENT_FOUND_BED_CANDY_STASH
	ld hl, RedsHouse2FFoundCandyStashText
	call PrintText
	ret

.normalMode
	ld hl, RedsHouse2FNormalModeCandyText
	call PrintText
	ret

.bagFull
	ld hl, RedsHouse2FCandyStashNoRoomText
	call PrintText
	ret

.empty
	ld hl, RedsHouse2FNoMoreCandyText
	call PrintText
	ret

RedsHouse2FNormalModeCandyText:
	text_far _RedsHouse2FNormalModeCandyText
	text_end

RedsHouse2FFoundCandyStashText:
	text_far _RedsHouse2FFoundCandyStashText
	text_end

RedsHouse2FCandyStashNoRoomText:
	text_far _RedsHouse2FCandyStashNoRoomText
	text_end

RedsHouse2FNoMoreCandyText:
	text_far _RedsHouse2FNoMoreCandyText
	text_end

