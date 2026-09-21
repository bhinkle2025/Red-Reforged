	db DEX_MACHOKE ; pokedex id

	db  80, 100,  70,  45,  50
	;   hp  atk  def  spd  spc

	db FIGHTING, FIGHTING ; type
	db 90 ; catch rate
	db 146 ; base exp

	INCBIN "gfx/pokemon/front/machoke.pic", 0, 1 ; sprite dimensions
	dw MachokePicFront, MachokePicBack

	db KARATE_CHOP, LOW_KICK, LEER, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    BODY_SLAM,    LIGHT_SCREEN, \
	     DOUBLE_EDGE,  SUBMISSION,   SEISMIC_TOSS, FIRE_PUNCH,   \
	     EARTHQUAKE,   DIG,          MIMIC,        \
	     FIRE_BLAST,   SKULL_BASH,   REST,         \
	     ROCK_SLIDE,   THUNDERPUNCH, ICE_PUNCH,    FLAMETHROWER, \
		 STRENGTH
	; end

	db 0 ; padding
