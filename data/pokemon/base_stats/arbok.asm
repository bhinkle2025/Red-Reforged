	db DEX_ARBOK ; pokedex id

	db  62,  95,  78,  90,  80
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 90 ; catch rate
	db 147 ; base exp

	INCBIN "gfx/pokemon/front/arbok.pic", 0, 1 ; sprite dimensions
	dw ArbokPicFront, ArbokPicBack

	db WRAP, LEER, POISON_STING, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  HYPER_BEAM,   \
	     MEGA_DRAIN,   EARTHQUAKE,   DIG,          VENOSHOCK,    \
	     MIMIC,        DOUBLE_TEAM,  SKULL_BASH,   REST,         \
	     ROCK_SLIDE,   SUBSTITUTE,   STRENGTH
	; end

	db 0 ; padding
