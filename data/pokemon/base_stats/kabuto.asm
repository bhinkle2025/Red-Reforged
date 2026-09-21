	db DEX_KABUTO ; pokedex id

	db  30,  80,  90,  55,  45
	;   hp  atk  def  spd  spc

	db ROCK, WATER ; type
	db 45 ; catch rate
	db 119 ; base exp

	INCBIN "gfx/pokemon/front/kabuto.pic", 0, 1 ; sprite dimensions
	dw KabutoPicFront, KabutoPicBack

	db SCRATCH, HARDEN, ROCK_THROW, PRIMORDIAL ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm BODY_SLAM,    DOUBLE_EDGE,  BUBBLEBEAM,   MEGA_DRAIN,   \
	     ICE_BEAM,     BLIZZARD,     MIMIC,        ROCK_SLIDE,   \
	     REFLECT,      REST,         DIG,          IRON_DEFENSE, \
		 LEECH_LIFE,   SURF
	; end

	db 0 ; padding
