	db DEX_SANDSLASH ; pokedex id

	db  75, 100, 110,  65,  55
	;   hp  atk  def  spd  spc

	db GROUND, GROUND ; type
	db 90 ; catch rate
	db 163 ; base exp

	INCBIN "gfx/pokemon/front/sandslash.pic", 0, 1 ; sprite dimensions
	dw SandslashPicFront, SandslashPicBack

	db SCRATCH, POISON_STING, SAND_ATTACK, SWIFT ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  \
	     HYPER_BEAM,   SUBMISSION,   SEISMIC_TOSS, EARTHQUAKE,   \
	     DIG,          MIMIC,        SHADOW_CLAW,  LEECH_LIFE,   \
	     SWIFT,        SKULL_BASH,   REST,         ROCK_SLIDE,   \
	     CUT,          STRENGTH
	; end

	db 0 ; padding
