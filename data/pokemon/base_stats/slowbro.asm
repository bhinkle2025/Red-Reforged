	db DEX_SLOWBRO ; pokedex id

	db  95,  75, 110,  30,  80
	;   hp  atk  def  spd  spc

	db WATER, PSYCHIC_TYPE ; type
	db 75 ; catch rate
	db 164 ; base exp

	INCBIN "gfx/pokemon/front/slowbro.pic", 0, 1 ; sprite dimensions
	dw SlowbroPicFront, SlowbroPicBack

	db CONFUSION, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    BODY_SLAM,    GIGA_IMPACT,  LIGHT_SCREEN, \
	     DOUBLE_EDGE,  BUBBLEBEAM,   ICE_BEAM,     BLIZZARD,     IRON_DEFENSE, \
	     HYPER_BEAM,   SUBMISSION,   SEISMIC_TOSS, ICE_PUNCH,    \
	     EARTHQUAKE,   DIG,          PSYCHIC_M,    DREAM_EATER,  \
	     CALM_MIND,    MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     FIRE_BLAST,   SWIFT,        SKULL_BASH,   REST,         THUNDER_WAVE, \
	     AMNESIA,      TRI_ATTACK,   SUBSTITUTE,   SURF,         STRENGTH,     \
	     FLAMETHROWER, HEX,          FLASH
	; end

	db 0 ; padding
