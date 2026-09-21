	db DEX_PONYTA ; pokedex id

	db  50,  85,  55,  90,  65
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 190 ; catch rate
	db 152 ; base exp

	INCBIN "gfx/pokemon/front/ponyta.pic", 0, 1 ; sprite dimensions
	dw PonytaPicFront, PonytaPicBack

	db GROWL, TACKLE, TAIL_WHIP, EMBER ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm BODY_SLAM,    DOUBLE_EDGE,  CALM_MIND,    \
	     MIMIC,        REFLECT,      SOLARBEAM,    \
	     FIRE_BLAST,   SWIFT,        SKULL_BASH,   REST,    \
		 FLAMETHROWER, STRENGTH
	; end

	db 0 ; padding
