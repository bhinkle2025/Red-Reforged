	db DEX_ELECTABUZZ ; pokedex id

	db  65,  83,  57, 105,  85
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 45 ; catch rate
	db 156 ; base exp

	INCBIN "gfx/pokemon/front/electabuzz.pic", 0, 1 ; sprite dimensions
	dw ElectabuzzPicFront, ElectabuzzPicBack

	db QUICK_ATTACK, LEER, THUNDERSHOCK, THUNDER_WAVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    BODY_SLAM,    GIGA_IMPACT,  \
	     DOUBLE_EDGE,  HYPER_BEAM,   SUBMISSION,   SEISMIC_TOSS, \
	     FIRE_PUNCH,   THUNDERBOLT,  THUNDER,      PSYCHIC_M,    \
	     MIMIC,        REFLECT,      \
	     SWIFT,        SKULL_BASH,   REST,         THUNDER_WAVE, \
		 LIGHT_SCREEN, \
	     THUNDERPUNCH, ICE_PUNCH,    STRENGTH,     FLASH
	; end

	db 0 ; padding
