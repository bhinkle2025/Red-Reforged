	db DEX_AERODACTYL ; pokedex id

	db  80, 105,  65, 130,  60
	;   hp  atk  def  spd  spc

	db ROCK, FLYING ; type
	db 45 ; catch rate
	db 202 ; base exp

	INCBIN "gfx/pokemon/front/aerodactyl.pic", 0, 1 ; sprite dimensions
	dw AerodactylPicFront, AerodactylPicBack

	db WING_ATTACK, AGILITY, DRAGON_CLAW, PRIMORDIAL ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm GIGA_IMPACT,  DOUBLE_EDGE,  ROCK_SLIDE,   EARTHQUAKE,   \
	     HYPER_BEAM,   DRAGON_RAGE,  MIMIC,        FLAMETHROWER, \
	     REFLECT,      FIRE_BLAST,   SWIFT,        SKY_ATTACK,   \
	     REST,         STEEL_WING,   ROOST,                      \
		 FLY,          STRENGTH
	; end

	db 0 ; padding
