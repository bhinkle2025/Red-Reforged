	db DEX_GOLBAT ; pokedex id

	db  75,  80,  70,  90,  75
	;   hp  atk  def  spd  spc

	db POISON, FLYING ; type
	db 90 ; catch rate
	db 171 ; base exp

	INCBIN "gfx/pokemon/front/golbat.pic", 0, 1 ; sprite dimensions
	dw GolbatPicFront, GolbatPicBack

	db ABSORB, SCREECH, BITE, CONFUSE_RAY ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm GIGA_IMPACT,  DOUBLE_EDGE,  VENOSHOCK,    SKY_ATTACK,   \
	     HYPER_BEAM,   MEGA_DRAIN,   MIMIC,        LEECH_LIFE,   \
	     SWIFT,        REST,         CALM_MIND,    ROOST,        \
		 HEX,          STEEL_WING,   FLY
	; end

	db 0 ; padding
