	db DEX_DUGTRIO ; pokedex id

	db  35, 100,  50, 120,  70
	;   hp  atk  def  spd  spc

	db GROUND, GROUND ; type
	db 50 ; catch rate
	db 153 ; base exp

	INCBIN "gfx/pokemon/front/dugtrio.pic", 0, 1 ; sprite dimensions
	dw DugtrioPicFront, DugtrioPicBack

	db SCRATCH, SAND_ATTACK, AGILITY, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm BODY_SLAM,    GIGA_IMPACT,  DOUBLE_EDGE,  HYPER_BEAM,   TRI_ATTACK,   \
	     EARTHQUAKE,   DIG,          MIMIC,        SWORDS_DANCE, SHADOW_CLAW,  \
	     DOUBLE_TEAM,  REST,         ROCK_SLIDE,   VENOSHOCK,       \
		 SUBSTITUTE, CUT
	; end

	db 0 ; padding
