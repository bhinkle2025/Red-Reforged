	db DEX_MANKEY ; pokedex id

	db  40,  80,  35,  70,  35
	;   hp  atk  def  spd  spc

	db FIGHTING, FIGHTING ; type
	db 190 ; catch rate
	db 74 ; base exp

	INCBIN "gfx/pokemon/front/mankey.pic", 0, 1 ; sprite dimensions
	dw MankeyPicFront, MankeyPicBack

	db SCRATCH, LEER, LOW_KICK, RAGE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    BODY_SLAM,    OUTRAGE,      \
	     DOUBLE_EDGE,  SUBMISSION,   SEISMIC_TOSS, THUNDERPUNCH, \
	     FIRE_PUNCH,   THUNDERBOLT,  THUNDER,      DIG,          MIMIC,        \
	     SWIFT,        SKULL_BASH,   SHADOW_CLAW,  \
	     REST,         ROCK_SLIDE,   ICE_PUNCH,    EARTHQUAKE,   \
		 STRENGTH
	; end

	db 0 ; padding
