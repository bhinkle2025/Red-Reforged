	db DEX_MAGNETON ; pokedex id

	db  50,  60,  95,  70, 120
	;   hp  atk  def  spd  spc

	db STEEL, ELECTRIC ; type
	db 60 ; catch rate
	db 161 ; base exp

	INCBIN "gfx/pokemon/front/magneton.pic", 0, 1 ; sprite dimensions
	dw MagnetonPicFront, MagnetonPicBack

	db TACKLE, SUPERSONIC, THUNDERSHOCK, TELEPORT ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm GIGA_IMPACT,  DOUBLE_EDGE,  HYPER_BEAM,   IRON_DEFENSE, \
	     THUNDERBOLT,  THUNDER,      MIMIC,        DOUBLE_TEAM,  \
	     REFLECT,      SWIFT,        REST,         THUNDER_WAVE, \
	     SUBSTITUTE,   LIGHT_SCREEN, EXPLOSION,    TRI_ATTACK,   \
		 FLASH
	; end

	db 0 ; padding
