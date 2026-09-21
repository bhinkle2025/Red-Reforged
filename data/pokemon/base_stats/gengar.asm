	db DEX_GENGAR ; pokedex id

	db  60,  65,  60, 110, 130
	;   hp  atk  def  spd  spc

	db GHOST, POISON ; type
	db 45 ; catch rate
	db 190 ; base exp

	INCBIN "gfx/pokemon/front/gengar.pic", 0, 1 ; sprite dimensions
	dw GengarPicFront, GengarPicBack

	db HYPNOSIS, LICK, SMOG, CONFUSE_RAY ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    BODY_SLAM,    GIGA_IMPACT,  THUNDER_WAVE, \
	     DOUBLE_EDGE,  HYPER_BEAM,   SUBMISSION,   SEISMIC_TOSS, DAZZLE,       \
	     FIRE_PUNCH,   MEGA_DRAIN,   THUNDERBOLT,  THUNDER,      PSYCHIC_M,    \
	     MIMIC,        SELFDESTRUCT, SHADOW_CLAW,  \
	     SKULL_BASH,   DREAM_EATER,  REST,         EXPLOSION,    HEX,          \
	     THUNDERPUNCH, ICE_PUNCH,    VENOSHOCK,    CALM_MIND,    \  
		 STRENGTH
	; end

	db 0 ; padding
