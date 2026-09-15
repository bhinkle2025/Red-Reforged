	db DEX_CLEFAIRY ; pokedex id

	db  70,  45,  48,  35,  60
	;   hp  atk  def  spd  spc

	db FAIRY, FAIRY ; type
	db 150 ; catch rate
	db 68 ; base exp

	INCBIN "gfx/pokemon/front/clefairy.pic", 0, 1 ; sprite dimensions
	dw ClefairyPicFront, ClefairyPicBack

	db POUND, GROWL, DEFENSE_CURL, NO_MOVE ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    BODY_SLAM,    SWIFT,        \
	     DOUBLE_EDGE,  BUBBLEBEAM,   ICE_BEAM,     BLIZZARD,     \
	     SUBMISSION,   SEISMIC_TOSS, FIRE_PUNCH,   SOLARBEAM,    DAZZLE,       \
	     THUNDERBOLT,  THUNDER,      PSYCHIC_M,    CALM_MIND,    MIMIC,        \
	     DOUBLE_TEAM,  REFLECT,      METRONOME,    FIRE_BLAST,   LIGHT_SCREEN, \
	     SKULL_BASH,   REST,         THUNDER_WAVE, AMNESIA,      TRI_ATTACK,   \
	     SUBSTITUTE,   THUNDERPUNCH, ICE_PUNCH,    DREAM_EATER,  DIG,          \    
		 FLAMETHROWER, STRENGTH,     FLASH,        NIGHT_SHADE
	; end

	db 0 ; padding
