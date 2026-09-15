	db DEX_MEOWTH ; pokedex id

	db  40,  45,  35,  90,  40
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 255 ; catch rate
	db 69 ; base exp

	INCBIN "gfx/pokemon/front/meowth.pic", 0, 1 ; sprite dimensions
	dw MeowthPicFront, MeowthPicBack

	db SCRATCH, GROWL, SHARPEN, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm BODY_SLAM,    DOUBLE_EDGE,  BUBBLEBEAM,   THUNDER_WAVE, \
	     THUNDERBOLT,  THUNDER,      DREAM_EATER,  DIG,          CALM_MIND,   \
	     MIMIC,        DOUBLE_TEAM,  SWIFT,        SKULL_BASH,   SHADOW_CLAW, \
	     REST,         SUBSTITUTE,   NIGHT_SHADE,  CUT,          FLASH
	; end

	db 0 ; padding
