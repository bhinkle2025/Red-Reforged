	db DEX_PSYDUCK ; pokedex id

	db  50,  52,  48,  55,  50
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 190 ; catch rate
	db 80 ; base exp

	INCBIN "gfx/pokemon/front/psyduck.pic", 0, 1 ; sprite dimensions
	dw PsyduckPicFront, PsyduckPicBack

	db SCRATCH, WATER_GUN, TAIL_WHIP, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    BODY_SLAM,    CALM_MIND,    PSYCHIC_M,    \
	     DOUBLE_EDGE,  BUBBLEBEAM,   ICE_BEAM,     BLIZZARD,     SHADOW_CLAW,  \
	     SUBMISSION,   SEISMIC_TOSS, ICE_PUNCH,    AMNESIA,      TRI_ATTACK,   \
	     DIG,          MIMIC,        SWIFT,        LIGHT_SCREEN, \
	     SKULL_BASH,   REST,         SURF,         STRENGTH,     \
		 FLASH
	; end

	db 0 ; padding
