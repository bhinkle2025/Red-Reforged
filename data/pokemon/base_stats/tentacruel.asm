	db DEX_TENTACRUEL ; pokedex id

	db  80,  70,  65, 100, 120
	;   hp  atk  def  spd  spc

	db WATER, POISON ; type
	db 60 ; catch rate
	db 205 ; base exp

	INCBIN "gfx/pokemon/front/tentacruel.pic", 0, 1 ; sprite dimensions
	dw TentacruelPicFront, TentacruelPicBack

	db POISON_STING, SUPERSONIC, WRAP, BUBBLEBEAM ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, GIGA_IMPACT,  DOUBLE_EDGE,  BUBBLEBEAM,   \
	     ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   DAZZLE,       \
	     MEGA_DRAIN,   MIMIC,        DOUBLE_TEAM,  REFLECT,      SWIFT,  \
	     SKULL_BASH,   REST,         SUBSTITUTE,   CUT,          SURF
	; end

	db 0 ; padding
