	db DEX_DODRIO ; pokedex id

	db  60, 110,  70, 110,  60
	;   hp  atk  def  spd  spc

	db NORMAL, FLYING ; type
	db 45 ; catch rate
	db 158 ; base exp

	INCBIN "gfx/pokemon/front/dodrio.pic", 0, 1 ; sprite dimensions
	dw DodrioPicFront, DodrioPicBack

	db PECK, GROWL, QUICK_ATTACK, RAGE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  SWORDS_DANCE, SWIFT,        \
	     HYPER_BEAM,   MIMIC,        DOUBLE_TEAM,  REFLECT,      STEEL_WING,   \
	     SKULL_BASH,   SKY_ATTACK,   REST,         TRI_ATTACK,   \
	     SUBSTITUTE,   FLY
	; end

	db 0 ; padding
