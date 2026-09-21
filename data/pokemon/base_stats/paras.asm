	db DEX_PARAS ; pokedex id

	db  35,  70,  55,  25,  55
	;   hp  atk  def  spd  spc

	db BUG, GRASS ; type
	db 190 ; catch rate
	db 70 ; base exp

	INCBIN "gfx/pokemon/front/paras.pic", 0, 1 ; sprite dimensions
	dw ParasPicFront, ParasPicBack

	db SCRATCH, SLEEP_POWDER, STUN_SPORE, POISONPOWDER ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, BODY_SLAM,    DOUBLE_EDGE,  CALM_MIND,    LEECH_LIFE,   \
	     MEGA_DRAIN,   SOLARBEAM,    DIG,          MIMIC,        VENOSHOCK,    \
	     REFLECT,      SKULL_BASH,   REST,         LIGHT_SCREEN, \
	     CUT,          FLASH
	; end

	db 0 ; padding
