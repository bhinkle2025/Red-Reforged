	db DEX_SANDSHREW ; pokedex id

	db  50,  75,  85,  40,  30
	;   hp  atk  def  spd  spc

	db GROUND, GROUND ; type
	db 255 ; catch rate
	db 93 ; base exp

	INCBIN "gfx/pokemon/front/sandshrew.pic", 0, 1 ; sprite dimensions
	dw SandshrewPicFront, SandshrewPicBack

	db SCRATCH, POISON_STING, SAND_ATTACK, SWIFT ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, BODY_SLAM,    DOUBLE_EDGE,  LEECH_LIFE,   \
	     SUBMISSION,   SEISMIC_TOSS, EARTHQUAKE,   SHADOW_CLAW,  \
	     DIG,          MIMIC,        SWIFT,        \
	     SKULL_BASH,   REST,         ROCK_SLIDE,   CUT,          \
	     STRENGTH
	; end

	db 0 ; padding
