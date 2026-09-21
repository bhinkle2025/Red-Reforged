	db DEX_STARYU ; pokedex id

	db  30,  45,  55,  85,  70
	;   hp  atk  def  spd  spc

	db WATER, WATER ; type
	db 225 ; catch rate
	db 106 ; base exp

	INCBIN "gfx/pokemon/front/staryu.pic", 0, 1 ; sprite dimensions
	dw StaryuPicFront, StaryuPicBack

	db TACKLE, HARDEN, WATER_GUN, SWIFT ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm DOUBLE_EDGE,  BUBBLEBEAM,   DAZZLE,       LIGHT_SCREEN, \
	     ICE_BEAM,     BLIZZARD,     THUNDERBOLT,  THUNDER,      \
	     PSYCHIC_M,    MIMIC,        REFLECT,      \
	     SWIFT,        SKULL_BASH,   REST,         THUNDER_WAVE, \
	     TRI_ATTACK,   SELFDESTRUCT,  \
		 SURF,         FLASH
	; end

	db 0 ; padding
