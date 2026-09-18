	db DEX_ZUBAT ; pokedex id

	db  40,  45,  35,  55,  40
	;   hp  atk  def  spd  spc

	db POISON, FLYING ; type
	db 255 ; catch rate
	db 54 ; base exp

	INCBIN "gfx/pokemon/front/zubat.pic", 0, 1 ; sprite dimensions
	dw ZubatPicFront, ZubatPicBack

	db ABSORB, QUICK_ATTACK, GUST, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DOUBLE_EDGE,  VENOSHOCK,       \
	     MEGA_DRAIN,   MIMIC,        DOUBLE_TEAM,  CALM_MIND,    \
	     SWIFT,        REST,         SUBSTITUTE,   HEX,          \
		 STEEL_WING,   FLY
	; end

	db 0 ; padding
