	db DEX_CHANSEY ; pokedex id

	db 250,   5,   5,  50, 105
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 30 ; catch rate
	db 255 ; base exp

	INCBIN "gfx/pokemon/front/chansey.pic", 0, 1 ; sprite dimensions
	dw ChanseyPicFront, ChanseyPicBack

	db GROWL, POUND, DEFENSE_CURL, DOUBLESLAP ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    BODY_SLAM,    GIGA_IMPACT,  \
	     DOUBLE_EDGE,  BUBBLEBEAM,   ICE_BEAM,     BLIZZARD,     SWIFT,        \
	     HYPER_BEAM,   SUBMISSION,   SEISMIC_TOSS, FIRE_PUNCH,   DAZZLE,       \
	     SOLARBEAM,    THUNDERBOLT,  THUNDER,      PSYCHIC_M,    CALM_MIND,    \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      METRONOME,    LIGHT_SCREEN, \
	     FIRE_BLAST,   SKULL_BASH,   REST,         HEX,          \
	     THUNDER_WAVE, TRI_ATTACK,   SUBSTITUTE,   STRENGTH,     \
	     THUNDERPUNCH, ICE_PUNCH,    ROCK_SLIDE,   EARTHQUAKE,   DREAM_EATER,  \
		 FLAMETHROWER, FLASH
	; end

	db 0 ; padding
