	db DEX_MACHOP ; pokedex id

	db  70,  80,  50,  35,  35
	;   hp  atk  def  spd  spc

	db FIGHTING, FIGHTING ; type
	db 180 ; catch rate
	db 88 ; base exp

	INCBIN "gfx/pokemon/front/machop.pic", 0, 1 ; sprite dimensions
	dw MachopPicFront, MachopPicBack

	db KARATE_CHOP, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
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
