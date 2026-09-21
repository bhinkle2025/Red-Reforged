	db DEX_DODUO ; pokedex id

	db  35,  85,  45,  75,  35
	;   hp  atk  def  spd  spc

	db NORMAL, FLYING ; type
	db 190 ; catch rate
	db 96 ; base exp

	INCBIN "gfx/pokemon/front/doduo.pic", 0, 1 ; sprite dimensions
	dw DoduoPicFront, DoduoPicBack

	db PECK, GROWL, QUICK_ATTACK, RAGE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm BODY_SLAM,    DOUBLE_EDGE,  SWORDS_DANCE, SWIFT,        \
	     MIMIC,        REFLECT,      STEEL_WING,   ROOST,        \
	     SKULL_BASH,   SKY_ATTACK,   REST,         TRI_ATTACK,   \
	     FLY
	; end

	db 0 ; padding
