	db DEX_MOLTRES ; pokedex id

	db  90, 100,  90,  90, 125
	;   hp  atk  def  spd  spc

	db FIRE, FLYING ; type
	db 3 ; catch rate
	db 217 ; base exp

	INCBIN "gfx/pokemon/front/moltres.pic", 0, 1 ; sprite dimensions
	dw MoltresPicFront, MoltresPicBack

	db PECK, FIRE_SPIN, HURRICANE, FLAMETHROWER ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm GIGA_IMPACT,  DOUBLE_EDGE,  SOLARBEAM,    FLAMETHROWER, \
	     HYPER_BEAM,   MIMIC,        REFLECT,      STEEL_WING,   \
	     FIRE_BLAST,   SWIFT,        SKY_ATTACK,   REST,         \
	     ROOST,        FLY
	; end

	db 0 ; padding
