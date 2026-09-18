	db DEX_DROWZEE ; pokedex id

	db  60,  48,  45,  42,  90
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 190 ; catch rate
	db 102 ; base exp

	INCBIN "gfx/pokemon/front/drowzee.pic", 0, 1 ; sprite dimensions
	dw DrowzeePicFront, DrowzeePicBack

	db POUND, HYPNOSIS, CONFUSION, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    BODY_SLAM,    SWIFT,      \
	     DOUBLE_EDGE,  SUBMISSION,   SEISMIC_TOSS, FIRE_PUNCH,   LIGHT_SCREEN, \
	     PSYCHIC_M,    CALM_MIND,    MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     METRONOME,    SKULL_BASH,   DREAM_EATER,  REST,         DAZZLE,       \
	     THUNDER_WAVE, TRI_ATTACK,   SUBSTITUTE,   THUNDERPUNCH, HEX,          \   
		 ICE_PUNCH,    FLASH
	; end

	db 0 ; padding
