	db DEX_SNORLAX ; pokedex id

	db 160, 110,  65,  30,  65
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 25 ; catch rate
	db 154 ; base exp

	INCBIN "gfx/pokemon/front/snorlax.pic", 0, 1 ; sprite dimensions
	dw SnorlaxPicFront, SnorlaxPicBack

	db HEADBUTT, AMNESIA, REST, LICK ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    BODY_SLAM,    GIGA_IMPACT,  \
	     DOUBLE_EDGE,  BUBBLEBEAM,   ICE_BEAM,     BLIZZARD,     OUTRAGE,      \
	     HYPER_BEAM,   SUBMISSION,   SEISMIC_TOSS, THUNDERPUNCH, \
	     FIRE_PUNCH,   SOLARBEAM,    THUNDERBOLT,  THUNDER,      EARTHQUAKE,   \
	     PSYCHIC_M,    MIMIC,        REFLECT,      \
	     SELFDESTRUCT, FIRE_BLAST,   SKULL_BASH,   BODY_PRESS,   \
	     REST,         AMNESIA,      ROCK_SLIDE,   ICE_PUNCH,    \
		 DIG,          FLAMETHROWER, HEX,          SURF,         STRENGTH
	; end

	db 0 ; padding
