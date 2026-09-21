	db DEX_NIDOQUEEN ; pokedex id

	db  90,  92,  87,  76,  75
	;   hp  atk  def  spd  spc

	db POISON, GROUND ; type
	db 45 ; catch rate
	db 194 ; base exp

	INCBIN "gfx/pokemon/front/nidoqueen.pic", 0, 1 ; sprite dimensions
	dw NidoqueenPicFront, NidoqueenPicBack

	db TOXIC, DIG, ACID, BODY_SLAM ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    BODY_SLAM,    VENOSHOCK,    DRAGON_RAGE,  \
	     GIGA_IMPACT,  DOUBLE_EDGE,  BUBBLEBEAM,   ICE_BEAM,     OUTRAGE,      \
	     BLIZZARD,     HYPER_BEAM,   SUBMISSION,   THUNDERPUNCH, SHADOW_CLAW,  \
	     SEISMIC_TOSS, FIRE_PUNCH,   THUNDERBOLT,  THUNDER,      EARTHQUAKE,   \
	     MIMIC,        REFLECT,      BODY_PRESS,  \
	     FIRE_BLAST,   SKULL_BASH,   REST,         ROCK_SLIDE,  \
	     ICE_PUNCH,    DIG,          FLAMETHROWER, SURF,         STRENGTH,     \
		 CUT,          HEX
	; end

	db 0 ; padding
