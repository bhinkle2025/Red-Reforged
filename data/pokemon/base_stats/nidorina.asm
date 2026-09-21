	db DEX_NIDORINA ; pokedex id

	db  70,  62,  67,  56,  55
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 120 ; catch rate
	db 117 ; base exp

	INCBIN "gfx/pokemon/front/nidorina.pic", 0, 1 ; sprite dimensions
	dw NidorinaPicFront, NidorinaPicBack

	db GROWL, TACKLE, SCRATCH, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm BODY_SLAM,    DOUBLE_EDGE,  VENOSHOCK,    SHADOW_CLAW,  \
	     BUBBLEBEAM,   ICE_BEAM,     BLIZZARD,     DIG,          \
	     THUNDERBOLT,  THUNDER,      MIMIC,        REFLECT,      \
	     SKULL_BASH,   REST,         CUT,          \
		 STRENGTH
	; end

	db 0 ; padding
