	db DEX_POLIWRATH ; pokedex id

	db  90,  95,  95,  70,  70
	;   hp  atk  def  spd  spc

	db WATER, FIGHTING ; type
	db 45 ; catch rate
	db 185 ; base exp

	INCBIN "gfx/pokemon/front/poliwrath.pic", 0, 1 ; sprite dimensions
	dw PoliwrathPicFront, PoliwrathPicBack

	db HYPNOSIS, WATERFALL, ICE_PUNCH, BODY_SLAM ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    BODY_SLAM,    GIGA_IMPACT,  \
	     DOUBLE_EDGE,  BUBBLEBEAM,   ICE_BEAM,     BLIZZARD,     \
	     HYPER_BEAM,   SUBMISSION,   SEISMIC_TOSS, ICE_PUNCH,    \
	     EARTHQUAKE,   PSYCHIC_M,    MIMIC,         \
	     SKULL_BASH,   REST,         AMNESIA,      SWIFT,   \
	     ROCK_SLIDE,   DIG,          SURF,         STRENGTH
	; end

	db 0 ; padding
