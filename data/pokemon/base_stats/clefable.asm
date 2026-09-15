	db DEX_CLEFABLE ; pokedex id

	db  95,  70,  75,  60,  95
	;   hp  atk  def  spd  spc

	db FAIRY, FAIRY ; type
	db 25 ; catch rate
	db 129 ; base exp

	INCBIN "gfx/pokemon/front/clefable.pic", 0, 1 ; sprite dimensions
	dw ClefablePicFront, ClefablePicBack

	db SING, DOUBLESLAP, MINIMIZE, MOONBLAST ; level 1 learnset
	db GROWTH_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    BODY_SLAM,    GIGA_IMPACT,  \
	     DOUBLE_EDGE,  BUBBLEBEAM,   ICE_BEAM,     BLIZZARD,     SWIFT,        \
	     HYPER_BEAM,   SUBMISSION,   SEISMIC_TOSS, FIRE_PUNCH,   LIGHT_SCREEN, \
	     SOLARBEAM,    THUNDERBOLT,  THUNDER,      PSYCHIC_M,    CALM_MIND,    \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      METRONOME,    DAZZLE,       \
	     FIRE_BLAST,   SKULL_BASH,   REST,         THUNDER_WAVE, AMNESIA,      \
	     TRI_ATTACK,   SUBSTITUTE,   THUNDERPUNCH, ICE_PUNCH,    DREAM_EATER,  \ 
		 DIG,          FLAMETHROWER, STRENGTH,     FLASH,        NIGHT_SHADE
	; end

	db 0 ; padding
