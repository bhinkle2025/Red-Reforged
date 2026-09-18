	db DEX_WEEZING ; pokedex id

	db  65,  90, 120,  60,  85
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 60 ; catch rate
	db 173 ; base exp

	INCBIN "gfx/pokemon/front/weezing.pic", 0, 1 ; sprite dimensions
	dw WeezingPicFront, WeezingPicBack

	db POISON_GAS, TACKLE, SMOG, SELFDESTRUCT ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm HYPER_BEAM,   THUNDERBOLT,  THUNDER,      FLAMETHROWER, \
	     MIMIC,        DOUBLE_TEAM,  SELFDESTRUCT, FIRE_BLAST,   \
	     REST,         EXPLOSION,    SUBSTITUTE,   VENOSHOCK,    HEX,  \      
		 GIGA_IMPACT,  FLASH
	; end

	db 0 ; padding
