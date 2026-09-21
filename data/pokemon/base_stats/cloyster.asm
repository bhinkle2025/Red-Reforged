	db DEX_CLOYSTER ; pokedex id

	db  50,  95, 180,  70,  85
	;   hp  atk  def  spd  spc

	db WATER, ICE ; type
	db 60 ; catch rate
	db 203 ; base exp

	INCBIN "gfx/pokemon/front/cloyster.pic", 0, 1 ; sprite dimensions
	dw CloysterPicFront, CloysterPicBack

	db IRON_DEFENSE, SUPERSONIC, CLAMP, ICE_BEAM ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm GIGA_IMPACT,  DOUBLE_EDGE,  BUBBLEBEAM,   IRON_DEFENSE, \
	     ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   LIGHT_SCREEN, \
	     MIMIC,        REFLECT,      SELFDESTRUCT, \
	     SWIFT,        REST,         EXPLOSION,    TRI_ATTACK,   \
	     SURF
	; end

	db 0 ; padding
