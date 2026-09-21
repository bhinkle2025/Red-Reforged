	db DEX_DRATINI ; pokedex id

	db  41,  64,  45,  50,  50
	;   hp  atk  def  spd  spc

	db DRAGON, DRAGON ; type
	db 45 ; catch rate
	db 67 ; base exp

	INCBIN "gfx/pokemon/front/dratini.pic", 0, 1 ; sprite dimensions
	dw DratiniPicFront, DratiniPicBack

	db WRAP, LEER, WATERFALL, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm BODY_SLAM,    DOUBLE_EDGE,  BUBBLEBEAM,   HYPER_BEAM,  \
	     ICE_BEAM,     BLIZZARD,     DRAGON_RAGE,  FLAMETHROWER, OUTRAGE,        \
	     THUNDERBOLT,  THUNDER,      MIMIC,        REFLECT,        \
	     FIRE_BLAST,   SWIFT,        SKULL_BASH,   REST,         LIGHT_SCREEN,   \
	     THUNDER_WAVE, SURF
	; end

	db 0 ; padding
