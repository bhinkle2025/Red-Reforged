	db DEX_TANGELA ; pokedex id

	db  70,  85, 115,  60, 100
	;   hp  atk  def  spd  spc

	db GRASS, GRASS ; type
	db 45 ; catch rate
	db 166 ; base exp

	INCBIN "gfx/pokemon/front/tangela.pic", 0, 1 ; sprite dimensions
	dw TangelaPicFront, TangelaPicBack

	db VINE_WHIP, ABSORB, CALM_MIND, WRAP; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  REFLECT,      \
	     HYPER_BEAM,   MEGA_DRAIN,   SOLARBEAM,    MIMIC,        VENOSHOCK,    \
	     SKULL_BASH,   REST,         CALM_MIND,    \
	     AMNESIA,      CUT,          FLASH
	; end

	db 0 ; padding
