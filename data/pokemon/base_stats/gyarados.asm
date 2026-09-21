	db DEX_GYARADOS ; pokedex id

	db  95, 125,  79,  81, 100
	;   hp  atk  def  spd  spc

	db WATER, FLYING ; type
	db 45 ; catch rate
	db 214 ; base exp

	INCBIN "gfx/pokemon/front/gyarados.pic", 0, 1 ; sprite dimensions
	dw GyaradosPicFront, GyaradosPicBack

	db BITE, DRAGON_RAGE, GUST, THRASH ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  BUBBLEBEAM,   THUNDER_WAVE, \
	     ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   EARTHQUAKE,   OUTRAGE,      \
	     DRAGON_RAGE,  THUNDERBOLT,  THUNDER,      MIMIC,        \
	     REFLECT,      FIRE_BLAST,   SKULL_BASH,   REST,         \
	     FLAMETHROWER, SURF,         STRENGTH,     FLY
	; end

	db 0 ; padding
