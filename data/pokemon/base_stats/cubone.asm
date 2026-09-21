	db DEX_CUBONE ; pokedex id

	db  50,  50,  95,  35,  40
	;   hp  atk  def  spd  spc

	db GROUND, GROUND ; type
	db 190 ; catch rate
	db 87 ; base exp

	INCBIN "gfx/pokemon/front/cubone.pic", 0, 1 ; sprite dimensions
	dw CubonePicFront, CubonePicBack

	db BONE_CLUB, GROWL, NO_MOVE, NO_MOVE ; level 1 learnset
	db GROWTH_MEDIUM_FAST ; growth rate

	; tm/hm learnset
	tmhm MEGA_PUNCH,   MEGA_KICK,    BODY_SLAM,    IRON_DEFENSE, \
	     DOUBLE_EDGE,  BUBBLEBEAM,   ICE_BEAM,     BLIZZARD,     \
	     SUBMISSION,   SEISMIC_TOSS, FIRE_PUNCH,   EARTHQUAKE,   \
	     DIG,          MIMIC,        SWIFT,        \
	     FIRE_BLAST,   SKULL_BASH,   REST,         THUNDERPUNCH, \   
		 ROCK_SLIDE,   SWORDS_DANCE, FLAMETHROWER, STRENGTH
	; end

	db 0 ; padding
