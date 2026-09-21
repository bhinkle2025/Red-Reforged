	db DEX_RAICHU ; pokedex id

	db  60,  90,  55, 110,  90
	;   hp  atk  def  spd  spc

	db ELECTRIC, ELECTRIC ; type
	db 75 ; catch rate
	db 122 ; base exp

	INCBIN "gfx/pokemon/front/raichu.pic", 0, 1 ; sprite dimensions
	dw RaichuPicFront, RaichuPicBack

	db DOUBLE_KICK, MEGA_KICK, THUNDER_WAVE, THUNDERBOLT ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    BODY_SLAM,    GIGA_IMPACT,  DAZZLE,       \
	     DOUBLE_EDGE,  HYPER_BEAM,   SUBMISSION,   SEISMIC_TOSS, THUNDERPUNCH, \
	     THUNDERBOLT,  THUNDER,      MIMIC,        CALM_MIND,    \
	     REFLECT,      SWIFT,        SKULL_BASH,   REST,         LIGHT_SCREEN, \
	     THUNDER_WAVE, DIG,     \
		 FLASH,        SURF,         STRENGTH \
	; end

	db 0 ; padding
