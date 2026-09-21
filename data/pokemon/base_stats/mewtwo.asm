	db DEX_MEWTWO ; pokedex id

	db 106, 110,  90, 130, 154
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 3 ; catch rate
	db 220 ; base exp

	INCBIN "gfx/pokemon/front/mewtwo.pic", 0, 1 ; sprite dimensions
	dw MewtwoPicFront, MewtwoPicBack

	db CONFUSION, SWIFT, PSYCHIC_M, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    BODY_SLAM,    GIGA_IMPACT,  \
	     DOUBLE_EDGE,  BUBBLEBEAM,   ICE_BEAM,     BLIZZARD,     \
	     HYPER_BEAM,   SUBMISSION,   SEISMIC_TOSS, THUNDERPUNCH, \
	     FIRE_PUNCH,   SOLARBEAM,    THUNDERBOLT,  THUNDER,      PSYCHIC_M,    \
	     CALM_MIND,    MIMIC,        REFLECT,      LIGHT_SCREEN, \
	     SELFDESTRUCT, FIRE_BLAST,   SKULL_BASH,   REST,         \
	     THUNDER_WAVE, AMNESIA,      TRI_ATTACK,   ICE_PUNCH,    \
		 ROCK_SLIDE,   DREAM_EATER,  EARTHQUAKE,   FLAMETHROWER, HEX,          \
		 STRENGTH,     FLASH
	; end

	db 0 ; padding
