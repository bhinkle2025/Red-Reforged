	db DEX_MAGNEMITE ; pokedex id

	db  25,  35,  70,  45,  95
	;   hp  atk  def  spd  spc

	db STEEL, ELECTRIC ; type
	db 190 ; catch rate
	db 89 ; base exp

	INCBIN "gfx/pokemon/front/magnemite.pic", 0, 1 ; sprite dimensions
	dw MagnemitePicFront, MagnemitePicBack

	db TACKLE, SUPERSONIC, THUNDERSHOCK, TELEPORT ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm DOUBLE_EDGE,  THUNDERBOLT,  IRON_DEFENSE, LIGHT_SCREEN, \
	     THUNDER,      MIMIC,        DOUBLE_TEAM,  REFLECT,      \
	     SWIFT,        REST,         THUNDER_WAVE, SUBSTITUTE,   \
	     EXPLOSION,    FLASH	
	; end

	db 0 ; padding
