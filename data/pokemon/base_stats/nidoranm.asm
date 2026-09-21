	db DEX_NIDORAN_M ; pokedex id

	db  46,  57,  40,  50,  40
	;   hp  atk  def  spd  spc

	db POISON, POISON ; type
	db 235 ; catch rate
	db 60 ; base exp

	INCBIN "gfx/pokemon/front/nidoranm.pic", 0, 1 ; sprite dimensions
	dw NidoranMPicFront, NidoranMPicBack

	db LEER, PECK, POISON_STING, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm BODY_SLAM,    DOUBLE_EDGE,  VENOSHOCK,    SHADOW_CLAW,  ICE_BEAM,     \
	     BLIZZARD,     THUNDERBOLT,  THUNDER,      MIMIC,        DIG,          \
	     REFLECT,      SKULL_BASH,   REST,         \
	     CUT,          STRENGTH
	; end

	db 0 ; padding
