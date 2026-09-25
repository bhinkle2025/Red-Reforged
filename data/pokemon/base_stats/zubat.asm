	db DEX_ZUBAT ; pokedex id

	db  40,  45,  35,  55,  40
	;   hp  atk  def  spd  spc

	db POISON, FLYING ; type
	db 255 ; catch rate
	db 54 ; base exp

	INCBIN "gfx/pokemon/front/zubat.pic", 0, 1 ; sprite dimensions
	dw ZubatPicFront, ZubatPicBack

	db ABSORB, QUICK_ATTACK, GUST, SUPERSONIC ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DOUBLE_EDGE,  VENOSHOCK,    LEECH_LIFE,   \
	     MEGA_DRAIN,   MIMIC,        CALM_MIND,    \
	     SWIFT,        REST,         HEX,          \
		 STEEL_WING,   ROOST,        FLY
	; end

	db 0 ; padding
