	db DEX_NIDOKING ; pokedex id

	db  81, 102,  77,  85,  75
	;   hp  atk  def  spd  spc

	db POISON, GROUND ; type
	db 45 ; catch rate
	db 195 ; base exp

	INCBIN "gfx/pokemon/front/nidoking.pic", 0, 1 ; sprite dimensions
	dw NidokingPicFront, NidokingPicBack

	db TOXIC, DIG, ACID, THRASH ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    BODY_SLAM,    VENOSHOCK,    DRAGON_RAGE,  \
	     GIGA_IMPACT,  DOUBLE_EDGE,  BUBBLEBEAM,   ICE_BEAM,     OUTRAGE,      \
	     BLIZZARD,     HYPER_BEAM,   SUBMISSION,   THUNDERPUNCH, BODY_PRESS,   \
	     SEISMIC_TOSS, FIRE_PUNCH,   THUNDERBOLT,  THUNDER,      EARTHQUAKE,   \
	     MIMIC,        REFLECT,      SHADOW_CLAW, \
	     FIRE_BLAST,   SKULL_BASH,   REST,         ROCK_SLIDE,  \
	     ICE_PUNCH,    DIG,          FLAMETHROWER, SURF,         STRENGTH,     \
		 CUT,          HEX
	; end

	db 0 ; padding
