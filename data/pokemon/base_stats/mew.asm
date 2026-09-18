	db DEX_MEW ; pokedex id

	db 100, 100, 100, 100, 100
	;   hp  atk  def  spd  spc

	db PSYCHIC_TYPE, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 64 ; base exp

	INCBIN "gfx/pokemon/front/mew.pic", 0, 1 ; sprite dimensions
	dw MewPicFront, MewPicBack

	db POUND, NO_MOVE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   SWORDS_DANCE, MEGA_KICK,    THUNDERPUNCH, ICE_PUNCH,    \
	     LIGHT_SCREEN, BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  VENOSHOCK,    \
	     BUBBLEBEAM,   ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   STEEL_WING,   \
	     SUBMISSION,   SEISMIC_TOSS, FIRE_PUNCH,   FLAMETHROWER, DAZZLE,       \
	     MEGA_DRAIN,   SOLARBEAM,    DRAGON_RAGE,  THUNDERBOLT,  THUNDER,      \
	     EARTHQUAKE,   DIG,          PSYCHIC_M,    CALM_MIND,    SHADOW_CLAW,  \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      METRONOME,    IRON_DEFENSE, \
	     SELFDESTRUCT, OUTRAGE,      FIRE_BLAST,   SWIFT,        SKULL_BASH,   \
	     HEX,          DREAM_EATER,  SKY_ATTACK,   REST,         THUNDER_WAVE, \
	     AMNESIA,      EXPLOSION,    ROCK_SLIDE,   TRI_ATTACK,   SUBSTITUTE,   \
	     CUT,          FLY,          SURF,         STRENGTH,     FLASH,        \
	     UNUSED
	; end

	db %11111111 ; padding
