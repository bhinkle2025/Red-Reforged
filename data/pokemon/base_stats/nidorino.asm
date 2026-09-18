	db DEX_NIDORINO ; pokedex id

	db  61,  72,  57,  65,  55
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 120 ; catch rate
	db 118 ; base exp

	INCBIN "gfx/pokemon/front/nidorino.pic", 0, 1 ; sprite dimensions
	dw NidorinoPicFront, NidorinoPicBack

	db LEER, PECK, POISON_STING, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  VENOSHOCK,    \
	     BUBBLEBEAM,   ICE_BEAM,     BLIZZARD,     DIG,          SHADOW_CLAW,  \
	     THUNDERBOLT,  THUNDER,      MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     SKULL_BASH,   REST,         SUBSTITUTE,   CUT,          \
		 STRENGTH
	; end

	db 0 ; padding
