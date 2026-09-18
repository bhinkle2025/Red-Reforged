	db DEX_TAUROS ; pokedex id

	db  75, 100,  95, 110,  70
	;   hp  atk  def  spd  spc

	db NORMAL, NORMAL ; type
	db 45 ; catch rate
	db 211 ; base exp

	INCBIN "gfx/pokemon/front/tauros.pic", 0, 1 ; sprite dimensions
	dw TaurosPicFront, TaurosPicBack

	db TACKLE, RAGE, TAIL_WHIP, HORN_ATTACK ; level 1 learnset
	db GROWTH_SLOW ; growth rate

	; tm/hm learnset
	tmhm BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  HEX,          \
	     ICE_BEAM,     BLIZZARD,     HYPER_BEAM,   THUNDERBOLT,  ROCK_SLIDE,   \
	     THUNDER,      EARTHQUAKE,   MIMIC,        DOUBLE_TEAM,  \
	     FIRE_BLAST,   SKULL_BASH,   REST,         SUBSTITUTE,   \
	     DIG,          SOLARBEAM,    FLAMETHROWER, OUTRAGE,                    \
		 STRENGTH,     SURF
	; end

	db 0 ; padding
