	db DEX_DRAGONITE ; pokedex id

	db  91, 134,  95,  80, 100
	;   hp  atk  def  spd  spc

	db DRAGON, FLYING ; type
	db 45 ; catch rate
	db 218 ; base exp

	INCBIN "gfx/pokemon/front/dragonite.pic", 0, 1 ; sprite dimensions
	dw DragonitePicFront, DragonitePicBack

	db WRAP, LEER, WATERFALL, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm BODY_SLAM,    GIGA_IMPACT,  ICE_PUNCH,    OUTRAGE,      BODY_PRESS,   \
	     DOUBLE_EDGE,  BUBBLEBEAM,   ICE_BEAM,     BLIZZARD,     STEEL_WING,   \
	     HYPER_BEAM,   FIRE_PUNCH,   DRAGON_RAGE,  THUNDERBOLT,  THUNDER,      \
	     MIMIC,        REFLECT,      LIGHT_SCREEN, FIRE_BLAST,   ROOST,        \
	     SWIFT,        SKULL_BASH,   REST,         THUNDER_WAVE, \
	     THUNDERPUNCH, ROCK_SLIDE,   EARTHQUAKE,   FLAMETHROWER, SURF,         \
		 STRENGTH,     CUT,          FLY
	; end

	db 0 ; padding
