	db DEX_LICKITUNG ; pokedex id

	db  95,  70,  85,  30,  75
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 127 ; base exp

	INCBIN "gfx/pokemon/front/lickitung.pic", 0, 1 ; sprite dimensions
	dw LickitungPicFront, LickitungPicBack

	db WRAP, ACID, LICK, SWORDS_DANCE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   SWORDS_DANCE, MEGA_KICK,    BODY_SLAM,    \
	     GIGA_IMPACT,  DOUBLE_EDGE,  BUBBLEBEAM,   ICE_BEAM,     \
	     BLIZZARD,     HYPER_BEAM,   SUBMISSION,   SEISMIC_TOSS, \
	     FIRE_PUNCH,   THUNDERBOLT,  THUNDER,      EARTHQUAKE,   \
	     MIMIC,        DOUBLE_TEAM,  FIRE_BLAST,   SKULL_BASH,   \
	     REST,         SUBSTITUTE,   THUNDERPUNCH, ICE_PUNCH,    ROCK_SLIDE,   \   
		 DREAM_EATER,  DIG,          SOLARBEAM,    FLAMETHROWER, HEX,          \
		 CUT,          SURF,         STRENGTH
	; end

	db 0 ; padding
