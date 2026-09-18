	db DEX_KANGASKHAN ; pokedex id

	db 105,  95,  80,  90,  40
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 175 ; base exp

	INCBIN "gfx/pokemon/front/kangaskhan.pic", 0, 1 ; sprite dimensions
	dw KangaskhanPicFront, KangaskhanPicBack

	db COMET_PUNCH, RAGE, LEER, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    BODY_SLAM,    GIGA_IMPACT,  \
	     DOUBLE_EDGE,  BUBBLEBEAM,   ICE_BEAM,     BLIZZARD,     OUTRAGE,      \
	     HYPER_BEAM,   SUBMISSION,   SEISMIC_TOSS, FIRE_PUNCH,   \
	     THUNDERBOLT,  THUNDER,      EARTHQUAKE,   MIMIC,        SHADOW_CLAW,  \
	     DOUBLE_TEAM,  FIRE_BLAST,   SKULL_BASH,   REST,         \
	     ROCK_SLIDE,   SUBSTITUTE,   THUNDERPUNCH, ICE_PUNCH,    DIG,          \
		 SOLARBEAM,    FLAMETHROWER, HEX,          SURF,         STRENGTH,     \
		 CUT
	; end

	db 0 ; padding
