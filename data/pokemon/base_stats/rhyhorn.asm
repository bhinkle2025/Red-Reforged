	db DEX_RHYHORN ; pokedex id

	db  80,  85,  95,  25,  30
	;   hp  atk  def  spd  spc

	db GROUND, ROCK ; type
	db 120 ; catch rate
	db 135 ; base exp

	INCBIN "gfx/pokemon/front/rhyhorn.pic", 0, 1 ; sprite dimensions
	dw RhyhornPicFront, RhyhornPicBack

	db HORN_ATTACK, ROCK_THROW, TAIL_WHIP, NO_MOVE ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm BODY_SLAM,    DOUBLE_EDGE,  ICE_BEAM,     BLIZZARD,     \
	     THUNDERBOLT,  THUNDER,      EARTHQUAKE,   SWORDS_DANCE, BODY_PRESS,   \
	     DIG,          MIMIC,        FIRE_BLAST,   DRAGON_RAGE,  \
	     SKULL_BASH,   REST,         ROCK_SLIDE,   FLAMETHROWER, \
		 STRENGTH
	; end

	db 0 ; padding
