ReflectLightScreenEffect_:
	ld de, wPlayerMoveEffect
	ldh a, [hWhoseTurn]
	and a
	jr z, .checkEffect
	ld de, wEnemyMoveEffect

.checkEffect
	ld a, [de]
	cp LIGHT_SCREEN_EFFECT
	jr nz, .reflect

; ----------------
; Light Screen
; ----------------
	ldh a, [hWhoseTurn]
	and a
	jr nz, .enemyLightScreen

	ld a, [wPlayerLightScreenTurns]
	and a
	jr nz, .moveFailed
	ld a, 5
	ld [wPlayerLightScreenTurns], a
	jr .lightScreenSet

.enemyLightScreen
	ld a, [wEnemyLightScreenTurns]
	and a
	jr nz, .moveFailed
	ld a, 5
	ld [wEnemyLightScreenTurns], a

.lightScreenSet
	ld hl, LightScreenProtectedText
	jr .playAnim

; ----------------
; Reflect
; ----------------
.reflect
	ldh a, [hWhoseTurn]
	and a
	jr nz, .enemyReflect

	ld a, [wPlayerReflectTurns]
	and a
	jr nz, .moveFailed
	ld a, 5
	ld [wPlayerReflectTurns], a
	jr .reflectSet

.enemyReflect
	ld a, [wEnemyReflectTurns]
	and a
	jr nz, .moveFailed
	ld a, 5
	ld [wEnemyReflectTurns], a

.reflectSet
	ld hl, ReflectGainedArmorText

.playAnim
	push hl
	ld hl, PlayCurrentMoveAnimation
	call EffectCallBattleCore
	pop hl
	jp PrintText

.moveFailed
	ld c, 50
	call DelayFrames
	ld hl, PrintButItFailedText_
	jp EffectCallBattleCore

DecrementScreenTurns:
	ld hl, wPlayerReflectTurns
	call .reflect

	ld hl, wEnemyReflectTurns
	call .reflect

	ld hl, wPlayerLightScreenTurns
	call .lightScreen

	ld hl, wEnemyLightScreenTurns
	call .lightScreen
	ret

.reflect
	ld a, [hl]
	and a
	ret z
	dec [hl]
	ret nz
	ld hl, ReflectWoreOffText
	call PrintText
	ret

.lightScreen
	ld a, [hl]
	and a
	ret z
	dec [hl]
	ret nz
	ld hl, LightScreenWoreOffText
	call PrintText
	ret

LightScreenProtectedText:
	text_far _LightScreenProtectedText
	text_end

ReflectGainedArmorText:
	text_far _ReflectGainedArmorText
	text_end

LightScreenWoreOffText:
	text_far _LightScreenWoreOffText
	text_end

ReflectWoreOffText:
	text_far _ReflectWoreOffText
	text_end

EffectCallBattleCore:
	ld b, BANK(BattleCore)
	jp Bankswitch
