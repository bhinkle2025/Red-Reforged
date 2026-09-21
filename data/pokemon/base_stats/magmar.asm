	db DEX_MAGMAR ; pokedex id

	db  65,  95,  57,  93,  95
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 167 ; base exp

	INCBIN "gfx/pokemon/front/magmar.pic", 0, 1 ; sprite dimensions
	dw MagmarPicFront, MagmarPicBack

	db EMBER, LEER, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    BODY_SLAM,    GIGA_IMPACT,  \
	     DOUBLE_EDGE,  HYPER_BEAM,   SUBMISSION,   SEISMIC_TOSS, \
	     FIRE_PUNCH,   PSYCHIC_M,    MIMIC,        FIRE_BLAST,   \
		 SKULL_BASH,   REST,         THUNDERPUNCH, FLAMETHROWER, \
		 STRENGTH
	; end

	db 0 ; padding
