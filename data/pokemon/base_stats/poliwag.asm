	db DEX_POLIWAG ; pokedex id

	db  40,  50,  40,  90,  40
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 255 ; catch rate
	db 77 ; base exp

	INCBIN "gfx/pokemon/front/poliwag.pic", 0, 1 ; sprite dimensions
	dw PoliwagPicFront, PoliwagPicBack

	db BUBBLE, HYPNOSIS, WATER_GUN, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm BODY_SLAM,    DOUBLE_EDGE,  BUBBLEBEAM,   SWIFT,        \
	     ICE_BEAM,     BLIZZARD,     PSYCHIC_M,    DIG,          \
	     MIMIC,        DOUBLE_TEAM,  SKULL_BASH,   REST,         \
	     AMNESIA,      SUBSTITUTE,   SURF
	; end

	db 0 ; padding
