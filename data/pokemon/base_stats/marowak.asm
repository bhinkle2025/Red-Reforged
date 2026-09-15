	db DEX_MAROWAK ; pokedex id

	db  60,  80, 110,  45,  50
	;   hp  atk  def  spd  spc

	db GROUND, GROUND ; type
	db 75 ; catch rate
	db 124 ; base exp

	INCBIN "gfx/pokemon/front/marowak.pic", 0, 1 ; sprite dimensions
	dw MarowakPicFront, MarowakPicBack

	db BONE_CLUB, GROWL, LEER, SWORDS_DANCE  ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    BODY_SLAM,    GIGA_IMPACT,  SWIFT,        \
	     DOUBLE_EDGE,  BUBBLEBEAM,   ICE_BEAM,     BLIZZARD,     OUTRAGE,      \
	     HYPER_BEAM,   SUBMISSION,   SEISMIC_TOSS, FIRE_PUNCH,   \
	     EARTHQUAKE,   DIG,          MIMIC,        DOUBLE_TEAM,  \
	     FIRE_BLAST,   SKULL_BASH,   REST,         SUBSTITUTE,   IRON_DEFENSE, \
	     THUNDERPUNCH, ROCK_SLIDE,   SWORDS_DANCE, FLAMETHROWER, STRENGTH
	; end

	db 0 ; padding
