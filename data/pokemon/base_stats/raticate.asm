	db DEX_RATICATE ; pokedex id

	db  55,  81,  60,  97,  50
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 90 ; catch rate
	db 116 ; base exp

	INCBIN "gfx/pokemon/front/raticate.pic", 0, 1 ; sprite dimensions
	dw RaticatePicFront, RaticatePicBack

	db TACKLE, TAIL_WHIP, SHARPEN, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  BUBBLEBEAM,   THUNDER_WAVE, \
	     ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   SWORDS_DANCE, SHADOW_CLAW,  \
	     THUNDERBOLT,  THUNDER,      DIG,          MIMIC,        DOUBLE_TEAM,  \
	     SWIFT,        SKULL_BASH,   REST,         SUBSTITUTE,   \
		 NIGHT_SHADE,  CUT,          STRENGTH
	; end

	db 0 ; padding
