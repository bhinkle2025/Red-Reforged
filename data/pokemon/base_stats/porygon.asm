	db DEX_PORYGON ; pokedex id

	db  75,  75,  70,  40,  95
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 130 ; base exp

	INCBIN "gfx/pokemon/front/porygon.pic", 0, 1 ; sprite dimensions
	dw PorygonPicFront, PorygonPicBack

	db TACKLE, SHARPEN, CONVERSION, TELEPORT ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm GIGA_IMPACT,  DOUBLE_EDGE,  ICE_BEAM,     BLIZZARD,     SELFDESTRUCT, \
	     HYPER_BEAM,   DREAM_EATER,  THUNDERBOLT,  THUNDER,      PSYCHIC_M,    \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     SWIFT,        SKULL_BASH,   REST,         THUNDER_WAVE, NIGHT_SHADE,  \
	     TRI_ATTACK,   SUBSTITUTE,   SOLARBEAM,    FLASH
	; end

	db 0 ; padding
