	db DEX_EXEGGCUTE ; pokedex id

	db  60,  40,  80,  40,  60
	;   hp  atk  def  spd  spc

	db GRASS, PSYCHIC_TYPE ; type
	db 90 ; catch rate
	db 98 ; base exp

	INCBIN "gfx/pokemon/front/exeggcute.pic", 0, 1 ; sprite dimensions
	dw ExeggcutePicFront, ExeggcutePicBack

	db BARRAGE, HYPNOSIS, EGG_BOMB, CONFUSION ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm DOUBLE_EDGE,  PSYCHIC_M,    SWORDS_DANCE, LIGHT_SCREEN, \
	     CALM_MIND,    MIMIC,        REFLECT,      \
	     SELFDESTRUCT, REST,         EXPLOSION,    \
	     DREAM_EATER,  SOLARBEAM,    VENOSHOCK,       STRENGTH,     \
		 FLASH
	; end

	db 0 ; padding
