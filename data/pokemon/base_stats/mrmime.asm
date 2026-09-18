	db DEX_MR_MIME ; pokedex id

	db  40,  45,  65,  90, 100
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, FAIRY ; type
	db 45 ; catch rate
	db 136 ; base exp

	INCBIN "gfx/pokemon/front/mr.mime.pic", 0, 1 ; sprite dimensions
	dw MrMimePicFront, MrMimePicBack

	db CONFUSION, BARRIER, DOUBLESLAP, MIMIC ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    BODY_SLAM,    GIGA_IMPACT,  LIGHT_SCREEN, \
	     DOUBLE_EDGE,  HYPER_BEAM,   SUBMISSION,   SEISMIC_TOSS, DAZZLE,       \
	     FIRE_PUNCH,   SOLARBEAM,    THUNDERBOLT,  THUNDER,      PSYCHIC_M,    \
	     CALM_MIND,    MIMIC,        DOUBLE_TEAM,  REFLECT,      IRON_DEFENSE, \
	     METRONOME,    SKULL_BASH,   REST,         THUNDER_WAVE, AMNESIA,      \
	     SUBSTITUTE,   THUNDERPUNCH, ICE_PUNCH,    DREAM_EATER,  HEX,          \
		 FLASH
	; end

	db 0 ; padding
