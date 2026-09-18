	db DEX_FLAREON ; pokedex id

	db  65, 130,  60,  65, 110
	;   hp  atk  def  spd  spc

	db FIRE, FIRE ; type
	db 45 ; catch rate
	db 198 ; base exp

	INCBIN "gfx/pokemon/front/flareon.pic", 0, 1 ; sprite dimensions
	dw FlareonPicFront, FlareonPicBack

	db FIRE_FANG, BITE, QUICK_ATTACK, EMBER ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  HYPER_BEAM,   \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      DIG,          CALM_MIND,    \
	     FIRE_BLAST,   SWIFT,        SKULL_BASH,   REST,         SUBSTITUTE,   \
		 FLAMETHROWER, HEX,          STRENGTH
	; end

	db 0 ; padding
