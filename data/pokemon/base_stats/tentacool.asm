	db DEX_TENTACOOL ; pokedex id

	db  40,  40,  35,  70, 100
	;   hp  atk  def  spd  spc

	db WATER, POISON ; type
	db 190 ; catch rate
	db 105 ; base exp

	INCBIN "gfx/pokemon/front/tentacool.pic", 0, 1 ; sprite dimensions
	dw TentacoolPicFront, TentacoolPicBack

	db POISON_STING, SUPERSONIC, WRAP, BUBBLEBEAM ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, DOUBLE_EDGE,  BUBBLEBEAM,   SWIFT,        \
	     ICE_BEAM,     BLIZZARD,     MEGA_DRAIN,   VENOSHOCK,    \
	     MIMIC,        REFLECT,      SKULL_BASH,   \
	     REST,         DAZZLE,                     \
		 CUT,          SURF
	; end

	db 0 ; padding
