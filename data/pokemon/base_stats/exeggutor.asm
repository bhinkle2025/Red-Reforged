	db DEX_EXEGGUTOR ; pokedex id

	db  95,  95,  85,  55, 125
	;   hp  atk  def  spd  spc

	db GRASS, PSYCHIC_TYPE ; type
	db 45 ; catch rate
	db 212 ; base exp

	INCBIN "gfx/pokemon/front/exeggutor.pic", 0, 1 ; sprite dimensions
	dw ExeggutorPicFront, ExeggutorPicBack

	db LEECH_SEED, STUN_SPORE, EGG_BOMB, EXTRASENSORY ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm GIGA_IMPACT,  DOUBLE_EDGE,  HYPER_BEAM,   EARTHQUAKE,   \
	     MEGA_DRAIN,   SOLARBEAM,    PSYCHIC_M,    CALM_MIND,     MIMIC,       \
	     REFLECT,      SELFDESTRUCT, LIGHT_SCREEN, \
	     REST,         EXPLOSION,    SWORDS_DANCE, \
		 DREAM_EATER,  VENOSHOCK,    STRENGTH,     FLASH
	; end

	db 0 ; padding
