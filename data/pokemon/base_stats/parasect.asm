	db DEX_PARASECT ; pokedex id

	db  60,  95,  80,  30,  80
	;   hp  atk  def  spd  spc

	db BUG, GRASS ; type
	db 75 ; catch rate
	db 128 ; base exp

	INCBIN "gfx/pokemon/front/parasect.pic", 0, 1 ; sprite dimensions
	dw ParasectPicFront, ParasectPicBack

	db SCRATCH, SLEEP_POWDER, STUN_SPORE, POISONPOWDER ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  LIGHT_SCREEN, \
	     HYPER_BEAM,   MEGA_DRAIN,   SOLARBEAM,    DIG,          VENOSHOCK,    \
	     MIMIC,        DOUBLE_TEAM,  REFLECT,      SKULL_BASH,   CALM_MIND,    \
	     REST,         SUBSTITUTE,   CUT,          FLASH
	; end

	db 0 ; padding
