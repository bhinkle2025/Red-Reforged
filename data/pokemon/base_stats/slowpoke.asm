	db DEX_SLOWPOKE ; pokedex id

	db  90,  65,  65,  15,  40
	;   hp  atk  def  spd  spc

	db WATER, PSYCHIC_TYPE ; type
	db 190 ; catch rate
	db 99 ; base exp

	INCBIN "gfx/pokemon/front/slowpoke.pic", 0, 1 ; sprite dimensions
	dw SlowpokePicFront, SlowpokePicBack

	db CONFUSION, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm BODY_SLAM,    DOUBLE_EDGE,  BUBBLEBEAM,   LIGHT_SCREEN, \
	     ICE_BEAM,     BLIZZARD,     DREAM_EATER,  FLAMETHROWER, \
	     EARTHQUAKE,   DIG,          PSYCHIC_M,    CALM_MIND,    \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      FIRE_BLAST,   \
	     SWIFT,        SKULL_BASH,   REST,         THUNDER_WAVE, AMNESIA,      \
	     TRI_ATTACK,   SUBSTITUTE,   HEX,                                      \
		 SURF,         STRENGTH,     FLASH
	; end

	db 0 ; padding
