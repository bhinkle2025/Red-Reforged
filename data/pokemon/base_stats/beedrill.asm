	db DEX_BEEDRILL ; pokedex id

	db  70,  80,  50,  80,  60
	;   hp  atk  def  spd  spc

	db BUG, POISON ; type
	db 45 ; catch rate
	db 159 ; base exp

	INCBIN "gfx/pokemon/front/beedrill.pic", 0, 1 ; sprite dimensions
	dw BeedrillPicFront, BeedrillPicBack

	db FURY_ATTACK, TWINEEDLE, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm SWORDS_DANCE, GIGA_IMPACT,  DOUBLE_EDGE,  HYPER_BEAM,   \
	     MEGA_DRAIN,   MIMIC,        DOUBLE_TEAM,  REFLECT,      SOLARBEAM,    \
	     SWIFT,        SKULL_BASH,   REST,         SUBSTITUTE,   \
	     VENOSHOCK,    OUTRAGE,      CUT,          FLASH
	; end

	db 0 ; padding
