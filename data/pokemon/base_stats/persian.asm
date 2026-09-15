	db DEX_PERSIAN ; pokedex id

	db  65,  70,  60, 115,  65
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 90 ; catch rate
	db 148 ; base exp

	INCBIN "gfx/pokemon/front/persian.pic", 0, 1 ; sprite dimensions
	dw PersianPicFront, PersianPicBack

	db SCRATCH, GROWL, SHARPEN, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  BUBBLEBEAM,   AMNESIA,      \
	     HYPER_BEAM,   THUNDERBOLT,  DREAM_EATER,  DIG,          SHADOW_CLAW,  \
	     THUNDER,      MIMIC,        DOUBLE_TEAM,  SWIFT,        CALM_MIND,    \
	     SKULL_BASH,   REST,         SUBSTITUTE,   NIGHT_SHADE,  THUNDER_WAVE, \
		 CUT,          FLASH
	; end

	db 0 ; padding
