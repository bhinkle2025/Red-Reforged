	db DEX_BUTTERFREE ; pokedex id

	db  70,  55,  55,  75,  90
	;   hp  atk  def  spd  spc

	db BUG, FLYING ; type
	db 45 ; catch rate
	db 160 ; base exp

	INCBIN "gfx/pokemon/front/butterfree.pic", 0, 1 ; sprite dimensions
	dw ButterfreePicFront, ButterfreePicBack

	db CONFUSION, GUST, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm GIGA_IMPACT,  DOUBLE_EDGE,  DREAM_EATER,  HEX,          ROOST,        \
	     HYPER_BEAM,   MEGA_DRAIN,   SOLARBEAM,    PSYCHIC_M,    IRON_DEFENSE, \
	     CALM_MIND,    MIMIC,        REFLECT,      \
	     SWIFT,        REST,         AMNESIA
	; end

	db 0 ; padding
