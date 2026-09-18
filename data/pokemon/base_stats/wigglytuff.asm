	db DEX_WIGGLYTUFF ; pokedex id

	db 140,  95,  65,  45,  50
	;   hp  atk  def  spd  spc

	db NORMAL, FAIRY ; type
	db 50 ; catch rate
	db 109 ; base exp

	INCBIN "gfx/pokemon/front/wigglytuff.pic", 0, 1 ; sprite dimensions
	dw WigglytuffPicFront, WigglytuffPicBack

	db SING, PLAY_ROUGH, DEFENSE_CURL, DOUBLESLAP ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    BODY_SLAM,    GIGA_IMPACT,  SELFDESTRUCT, \
	     DOUBLE_EDGE,  BUBBLEBEAM,   ICE_BEAM,     BLIZZARD,     SWIFT,        \
	     HYPER_BEAM,   SUBMISSION,   SEISMIC_TOSS, FIRE_PUNCH,   LIGHT_SCREEN, \
	     SOLARBEAM,    THUNDERBOLT,  THUNDER,      PSYCHIC_M,    CALM_MIND,    \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      FIRE_BLAST,   DAZZLE,       \
	     SKULL_BASH,   REST,         THUNDER_WAVE, AMNESIA,      TRI_ATTACK,   \
	     SUBSTITUTE,   THUNDERPUNCH, ICE_PUNCH,    DREAM_EATER,  DIG,          \
		 FLAMETHROWER, STRENGTH,     FLASH,        HEX
	; end

	db 0 ; padding
