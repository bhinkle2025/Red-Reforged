	db DEX_GLOOM ; pokedex id

	db  60,  65,  70,  40,  85
	;   hp  atk  def  spd  spc

	db GRASS, POISON ; type
	db 120 ; catch rate
	db 132 ; base exp

	INCBIN "gfx/pokemon/front/gloom.pic", 0, 1 ; sprite dimensions
	dw GloomPicFront, GloomPicBack

	db ABSORB, CALM_MIND, POISONPOWDER, STUN_SPORE ; level 1 learnset
	db GROWTH_MEDIUM_SLOW ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, DOUBLE_EDGE,  VENOSHOCK,    DAZZLE,       \
	     MEGA_DRAIN,   SOLARBEAM,    MIMIC,        REFLECT,      \
	     REST,         CALM_MIND,    CUT,          FLASH
	; end

	db 0 ; padding
