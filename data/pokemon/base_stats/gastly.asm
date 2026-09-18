	db DEX_GASTLY ; pokedex id

	db  30,  35,  30,  80, 100
	;   hp  atk  def  spd  spc

	db GHOST, POISON ; type
	db 190 ; catch rate
	db 95 ; base exp

	INCBIN "gfx/pokemon/front/gastly.pic", 0, 1 ; sprite dimensions
	dw GastlyPicFront, GastlyPicBack

	db HYPNOSIS, LICK, SMOG, CONFUSE_RAY ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm FIRE_PUNCH,   MEGA_DRAIN,   THUNDERBOLT,  THUNDER,      \
	     PSYCHIC_M,    MIMIC,        DOUBLE_TEAM,  SELFDESTRUCT, DAZZLE,       \
	     DREAM_EATER,  REST,         EXPLOSION,    SUBSTITUTE,   HEX,          \
		 THUNDERPUNCH, ICE_PUNCH,    VENOSHOCK,    CALM_MIND
	; end

	db 0 ; padding
