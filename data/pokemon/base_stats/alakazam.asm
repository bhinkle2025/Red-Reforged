	db DEX_ALAKAZAM ; pokedex id

	db  55,  50,  45, 120, 135
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 50 ; catch rate
	db 186 ; base exp

	INCBIN "gfx/pokemon/front/alakazam.pic", 0, 1 ; sprite dimensions
	dw AlakazamPicFront, AlakazamPicBack

	db TELEPORT, CALM_MIND, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    BODY_SLAM,    GIGA_IMPACT,  SWIFT,        \
	     DOUBLE_EDGE,  HYPER_BEAM,   SUBMISSION,   SEISMIC_TOSS, LIGHT_SCREEN, \
	     FIRE_PUNCH,   DIG,          PSYCHIC_M,    CALM_MIND,    MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,      METRONOME,    SKULL_BASH,   DAZZLE,       \
	     REST,         THUNDER_WAVE, TRI_ATTACK,   SUBSTITUTE,   HEX,          \
	     THUNDERPUNCH, ICE_PUNCH,    DREAM_EATER,  FLASH
	; end

	db 0 ; padding
