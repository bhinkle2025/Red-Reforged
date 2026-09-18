	db DEX_JYNX ; pokedex id

	db  70,  60,  35,  95, 115
	;   hp  atk  def  spd  spc

	db ICE, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 137 ; base exp

	INCBIN "gfx/pokemon/front/jynx.pic", 0, 1 ; sprite dimensions
	dw JynxPicFront, JynxPicBack

	db POUND, LOVELY_KISS, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    BODY_SLAM,    GIGA_IMPACT,  \
	     DOUBLE_EDGE,  BUBBLEBEAM,   ICE_BEAM,     BLIZZARD,     \
	     HYPER_BEAM,   SUBMISSION,   SEISMIC_TOSS, ICE_PUNCH,    \
	     PSYCHIC_M,    CALM_MIND,    MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     METRONOME,    SKULL_BASH,   REST,         HEX,          \
	     SUBSTITUTE,   DREAM_EATER,  LIGHT_SCREEN, FLASH
	; end

	db 0 ; padding
