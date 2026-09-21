	db DEX_NIDORAN_F ; pokedex id

	db  55,  47,  52,  41,  40
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 235 ; catch rate
	db 59 ; base exp

	INCBIN "gfx/pokemon/front/nidoranf.pic", 0, 1 ; sprite dimensions
	dw NidoranFPicFront, NidoranFPicBack

	db GROWL, SCRATCH, POISON_STING, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm BODY_SLAM,    DOUBLE_EDGE,  BLIZZARD,     SHADOW_CLAW,  ICE_BEAM,     \
	     THUNDERBOLT,  THUNDER,      MIMIC,        DIG,          \
	     REFLECT,      SKULL_BASH,   REST,        \
		 VENOSHOCK,    CUT,          STRENGTH
	; end

	db 0 ; padding
