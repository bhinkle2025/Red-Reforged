	db DEX_STARMIE ; pokedex id

	db  60,  75,  85, 115, 100
	;   hp  atk  def  spd  spc

	db WATER, PSYCHIC_TYPE ; type
	db 60 ; catch rate
	db 207 ; base exp

	INCBIN "gfx/pokemon/front/starmie.pic", 0, 1 ; sprite dimensions
	dw StarmiePicFront, StarmiePicBack

	db ICE_BEAM, PSYBEAM, RECOVER, BUBBLEBEAM ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm GIGA_IMPACT,  DOUBLE_EDGE,  BUBBLEBEAM,   DAZZLE,       LIGHT_SCREEN, \
	     ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   THUNDERBOLT,  DREAM_EATER,  \
	     THUNDER,      PSYCHIC_M,    MIMIC,        SELFDESTRUCT, \
	     REFLECT,      SWIFT,        SKULL_BASH,   REST,         \
	     THUNDER_WAVE, TRI_ATTACK,   SURF,         \
	     FLASH
	; end

	db 0 ; padding
