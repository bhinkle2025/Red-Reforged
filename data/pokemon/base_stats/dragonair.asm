	db DEX_DRAGONAIR ; pokedex id

	db  61,  84,  65,  70,  70
	;   hp  atk  def  spd  spc

	db DRAGON, DRAGON ; type
	db 45 ; catch rate
	db 144 ; base exp

	INCBIN "gfx/pokemon/front/dragonair.pic", 0, 1 ; sprite dimensions
	dw DragonairPicFront, DragonairPicBack

	db WRAP, LEER, WATERFALL, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm BODY_SLAM,    DOUBLE_EDGE,  OUTRAGE,      HYPER_BEAM,   \
	     BUBBLEBEAM,   ICE_BEAM,     BLIZZARD,     FLAMETHROWER, \
	     DRAGON_RAGE,  THUNDERBOLT,  THUNDER,      MIMIC,        \
	     REFLECT,      LIGHT_SCREEN, FIRE_BLAST,   SWIFT,        SKULL_BASH,   \
	     REST,         THUNDER_WAVE, SURF
	; end

	db 0 ; padding
