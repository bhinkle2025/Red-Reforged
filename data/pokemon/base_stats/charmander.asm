	db DEX_CHARMANDER ; pokedex id

	db  39,  52,  43,  65,  50
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 65 ; base exp

	INCBIN "gfx/pokemon/front/charmander.pic", 0, 1 ; sprite dimensions
	dw CharmanderPicFront, CharmanderPicBack

	db SCRATCH, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   SWORDS_DANCE, MEGA_KICK,    BODY_SLAM,    \
	     DOUBLE_EDGE,  SUBMISSION,   SEISMIC_TOSS, OUTRAGE,      \
	     FIRE_PUNCH,   DRAGON_RAGE,  DIG,          MIMIC,        \
	     REFLECT,      FIRE_BLAST,   SWIFT,        SKULL_BASH,   SHADOW_CLAW,  \
	     REST,         THUNDERPUNCH, ROCK_SLIDE,   FLAMETHROWER, \
		 CUT,          STRENGTH
	; end

	db 0 ; padding
