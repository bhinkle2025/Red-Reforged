	db DEX_BELLSPROUT ; pokedex id

	db  50,  75,  35,  40,  70
	;   hp  atk  def  spd  spc

	db GRASS, POISON ; type
	db 255 ; catch rate
	db 84 ; base exp

	INCBIN "gfx/pokemon/front/bellsprout.pic", 0, 1 ; sprite dimensions
	dw BellsproutPicFront, BellsproutPicBack

	db VINE_WHIP, CALM_MIND, WRAP, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, DOUBLE_EDGE,  VENOSHOCK,    CALM_MIND,    \
	     MEGA_DRAIN,   SOLARBEAM,    MIMIC,        REFLECT,      \
	     REST,         LEECH_LIFE,   CUT,          FLASH
	; end

	db 0 ; padding
