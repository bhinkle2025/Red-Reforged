	db DEX_RATTATA ; pokedex id

	db  30,  56,  35,  72,  25
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 255 ; catch rate
	db 57 ; base exp

	INCBIN "gfx/pokemon/front/rattata.pic", 0, 1 ; sprite dimensions
	dw RattataPicFront, RattataPicBack

	db TACKLE, TAIL_WHIP, SHARPEN, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm BODY_SLAM,    DOUBLE_EDGE,  BUBBLEBEAM,   ICE_BEAM,     \
	     BLIZZARD,     THUNDERBOLT,  THUNDER,      HEX,          \
	     DIG,          MIMIC,        DOUBLE_TEAM,  SWIFT,        \
	     SKULL_BASH,   REST,         SUBSTITUTE,   SHADOW_CLAW,  \
		 THUNDER_WAVE, CUT
	; end

	db 0 ; padding
