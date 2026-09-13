	db DEX_CHARIZARD ; pokedex id

	db  78,  84,  78, 100,  85
	;   hp  atk  def  spd  spc

	db FIRE, FLYING ; type
	db 45 ; catch rate
	db 209 ; base exp

	INCBIN "gfx/pokemon/front/charizard.pic", 0, 1 ; sprite dimensions
	dw CharizardPicFront, CharizardPicBack

	db SCRATCH, GROWL, EMBER, LEER ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   SWORDS_DANCE, MEGA_KICK,    BODY_SLAM,    \
	     GIGA_IMPACT,  DOUBLE_EDGE,  HYPER_BEAM,   SUBMISSION,   \
	     SEISMIC_TOSS, FIRE_PUNCH,   DRAGON_RAGE,  EARTHQUAKE,   SHADOW_CLAW, \
	     DIG,          MIMIC,        DOUBLE_TEAM,  REFLECT,      SKY_ATTACK,   \
	     FIRE_BLAST,   SWIFT,        SKULL_BASH,   REST,         SUBSTITUTE,   \
	     THUNDERPUNCH, ROCK_SLIDE,   SOLARBEAM,    FLAMETHROWER, STEEL_WING,   \
		 OUTRAGE,      CUT,          STRENGTH,	   FLY
	; end

	db 0 ; padding
