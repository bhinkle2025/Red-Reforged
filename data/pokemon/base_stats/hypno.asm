	db DEX_HYPNO ; pokedex id

	db  85,  73,  70,  67, 115
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 75 ; catch rate
	db 165 ; base exp

	INCBIN "gfx/pokemon/front/hypno.pic", 0, 1 ; sprite dimensions
	dw HypnoPicFront, HypnoPicBack

	db POUND, HYPNOSIS, CONFUSION, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    BODY_SLAM,    GIGA_IMPACT,  SWIFT,        \
	     DOUBLE_EDGE,  HYPER_BEAM,   SUBMISSION,   SEISMIC_TOSS, DAZZLE,       \
	     FIRE_PUNCH,   PSYCHIC_M,    CALM_MIND,    MIMIC,        \
	     REFLECT,      SKULL_BASH,   DREAM_EATER,  LIGHT_SCREEN, BODY_PRESS,   \
	     REST,         THUNDER_WAVE, TRI_ATTACK,   HEX,          \
	     THUNDERPUNCH, ICE_PUNCH,    FLASH
	; end

	db 0 ; padding
