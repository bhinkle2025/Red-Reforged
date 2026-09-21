	db DEX_GRAVELER ; pokedex id

	db  55,  95, 115,  35,  45
	;   hp  atk  def  spd  spc

	db ROCK, GROUND ; type
	db 120 ; catch rate
	db 134 ; base exp

	INCBIN "gfx/pokemon/front/graveler.pic", 0, 1 ; sprite dimensions
	dw GravelerPicFront, GravelerPicBack

	db TACKLE, ROCK_THROW, DEFENSE_CURL, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   BODY_SLAM,    DOUBLE_EDGE,  IRON_DEFENSE, \
	     SUBMISSION,   SEISMIC_TOSS, FIRE_PUNCH,   EARTHQUAKE,   \
	     DIG,          MIMIC,        BODY_PRESS,   \
	     SELFDESTRUCT, FIRE_BLAST,   REST,         EXPLOSION,    \
	     ROCK_SLIDE,   THUNDERPUNCH, FLAMETHROWER, STRENGTH
	; end

	db 0 ; padding
