	db DEX_FARFETCHD ; pokedex id

	db  62,  90,  65,  70,  68
	;   hp  atk  def  spd  spc

	db NORMAL, FLYING ; type
	db 45 ; catch rate
	db 94 ; base exp

	INCBIN "gfx/pokemon/front/farfetchd.pic", 0, 1 ; sprite dimensions
	dw FarfetchdPicFront, FarfetchdPicBack

	db PECK, SAND_ATTACK, LEER, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, BODY_SLAM,    STEEL_WING,   SKY_ATTACK,   \
	     DOUBLE_EDGE,  MIMIC,        SUBMISSION,   ROOST,        \
	     REFLECT,      SWIFT,        SKULL_BASH,   REST,         \
	     CUT,          FLY
	; end

	db 0 ; padding
