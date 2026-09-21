	db DEX_GOLDUCK ; pokedex id

	db  80,  82,  78,  85,  80
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 75 ; catch rate
	db 174 ; base exp

	INCBIN "gfx/pokemon/front/golduck.pic", 0, 1 ; sprite dimensions
	dw GolduckPicFront, GolduckPicBack

	db SCRATCH, TAIL_WHIP, WATER_GUN, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    BODY_SLAM,    GIGA_IMPACT,  TRI_ATTACK,   \
	     DOUBLE_EDGE,  BUBBLEBEAM,   ICE_BEAM,     BLIZZARD,     SHADOW_CLAW,  \
	     HYPER_BEAM,   SUBMISSION,   SEISMIC_TOSS, ICE_PUNCH,    CALM_MIND,    \
	     DIG,          MIMIC,        PSYCHIC_M,    LIGHT_SCREEN, \
	     SWIFT,        SKULL_BASH,   REST,         SURF,         \
	     AMNESIA,      STRENGTH,     FLASH
	; end

	db 0 ; padding
