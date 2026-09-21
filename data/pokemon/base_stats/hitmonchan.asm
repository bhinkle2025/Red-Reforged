	db DEX_HITMONCHAN ; pokedex id

	db  60, 105,  79,  76, 110
	;   hp  atk  def  spd  spc

	db FIGHTING, FIGHTING ; type
	db 45 ; catch rate
	db 140 ; base exp

	INCBIN "gfx/pokemon/front/hitmonchan.pic", 0, 1 ; sprite dimensions
	dw HitmonchanPicFront, HitmonchanPicBack

	db COMET_PUNCH, AGILITY, MACH_PUNCH, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    BODY_SLAM,    GIGA_IMPACT,  \
	     DOUBLE_EDGE,  SUBMISSION,   SEISMIC_TOSS, FIRE_PUNCH,   \
	     MIMIC,        SWIFT,        \
	     SKULL_BASH,   REST,         THUNDERPUNCH, ICE_PUNCH,    \
		 ROCK_SLIDE,   EARTHQUAKE,   SWORDS_DANCE, STRENGTH
	; end

	db 0 ; padding
