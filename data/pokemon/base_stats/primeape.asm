	db DEX_PRIMEAPE ; pokedex id

	db  75, 105,  70,  95,  60
	;   hp  atk  def  spd  spc

	db FIGHTING, FIGHTING ; type
	db 75 ; catch rate
	db 149 ; base exp

	INCBIN "gfx/pokemon/front/primeape.pic", 0, 1 ; sprite dimensions
	dw PrimeapePicFront, PrimeapePicBack

	db SCRATCH, LEER, LOW_KICK, RAGE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    BODY_SLAM,    GIGA_IMPACT,  \
	     DOUBLE_EDGE,  HYPER_BEAM,   SUBMISSION,   THUNDERPUNCH, \
	     SEISMIC_TOSS, FIRE_PUNCH,   THUNDERBOLT,  THUNDER,      DIG,          \
	     MIMIC,        SWIFT,        SHADOW_CLAW,  \
	     SKULL_BASH,   REST,         ROCK_SLIDE,   ICE_PUNCH,    \
		 EARTHQUAKE,   OUTRAGE,      STRENGTH
	; end

	db 0 ; padding
