	db DEX_RHYDON ; pokedex id

	db 105, 130, 120,  40,  45
	;   hp  atk  def  spd  spc

	db GROUND, ROCK ; type
	db 60 ; catch rate
	db 204 ; base exp

	INCBIN "gfx/pokemon/front/rhydon.pic", 0, 1 ; sprite dimensions
	dw RhydonPicFront, RhydonPicBack

	db HORN_ATTACK, ROCK_THROW, TAIL_WHIP, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    BODY_SLAM,    BODY_PRESS,  \
	     GIGA_IMPACT,  DOUBLE_EDGE,  BUBBLEBEAM,   ICE_BEAM,     OUTRAGE,      \
	     BLIZZARD,     HYPER_BEAM,   SUBMISSION,   THUNDERPUNCH, DRAGON_RAGE,  \
	     SEISMIC_TOSS, FIRE_PUNCH,   THUNDERBOLT,  THUNDER,      EARTHQUAKE,   \
	     DIG,          MIMIC,        SHADOW_CLAW,  IRON_DEFENSE, \
	     FIRE_BLAST,   SKULL_BASH,   REST,         ROCK_SLIDE,   \
	     ICE_PUNCH,    SWORDS_DANCE, FLAMETHROWER, SURF,         STRENGTH,     \
		 CUT
	; end

	db 0 ; padding
