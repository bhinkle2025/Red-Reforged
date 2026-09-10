; Evos+moves data structure:
; - Evolution methods:
;    * db EVOLVE_LEVEL, level, species
;    * db EVOLVE_ITEM, used item, min level (1), species
;    * db EVOLVE_TRADE, min level (1), species
; - db 0 ; no more evolutions
; - Learnset (in increasing level order):
;    * db level, move
; - db 0 ; no more level-up moves

EvosMovesPointerTable:
	table_width 2, EvosMovesPointerTable
	dw RhydonEvosMoves
	dw KangaskhanEvosMoves
	dw NidoranMEvosMoves
	dw ClefairyEvosMoves
	dw SpearowEvosMoves
	dw VoltorbEvosMoves
	dw NidokingEvosMoves
	dw SlowbroEvosMoves
	dw IvysaurEvosMoves
	dw ExeggutorEvosMoves
	dw LickitungEvosMoves
	dw ExeggcuteEvosMoves
	dw GrimerEvosMoves
	dw GengarEvosMoves
	dw NidoranFEvosMoves
	dw NidoqueenEvosMoves
	dw CuboneEvosMoves
	dw RhyhornEvosMoves
	dw LaprasEvosMoves
	dw ArcanineEvosMoves
	dw MewEvosMoves
	dw GyaradosEvosMoves
	dw ShellderEvosMoves
	dw TentacoolEvosMoves
	dw GastlyEvosMoves
	dw ScytherEvosMoves
	dw StaryuEvosMoves
	dw BlastoiseEvosMoves
	dw PinsirEvosMoves
	dw TangelaEvosMoves
	dw MissingNo1FEvosMoves
	dw MissingNo20EvosMoves
	dw GrowlitheEvosMoves
	dw OnixEvosMoves
	dw FearowEvosMoves
	dw PidgeyEvosMoves
	dw SlowpokeEvosMoves
	dw KadabraEvosMoves
	dw GravelerEvosMoves
	dw ChanseyEvosMoves
	dw MachokeEvosMoves
	dw MrMimeEvosMoves
	dw HitmonleeEvosMoves
	dw HitmonchanEvosMoves
	dw ArbokEvosMoves
	dw ParasectEvosMoves
	dw PsyduckEvosMoves
	dw DrowzeeEvosMoves
	dw GolemEvosMoves
	dw MissingNo32EvosMoves
	dw MagmarEvosMoves
	dw MissingNo34EvosMoves
	dw ElectabuzzEvosMoves
	dw MagnetonEvosMoves
	dw KoffingEvosMoves
	dw MissingNo38EvosMoves
	dw MankeyEvosMoves
	dw SeelEvosMoves
	dw DiglettEvosMoves
	dw TaurosEvosMoves
	dw MissingNo3DEvosMoves
	dw MissingNo3EEvosMoves
	dw MissingNo3FEvosMoves
	dw FarfetchdEvosMoves
	dw VenonatEvosMoves
	dw DragoniteEvosMoves
	dw MissingNo43EvosMoves
	dw MissingNo44EvosMoves
	dw MissingNo45EvosMoves
	dw DoduoEvosMoves
	dw PoliwagEvosMoves
	dw JynxEvosMoves
	dw MoltresEvosMoves
	dw ArticunoEvosMoves
	dw ZapdosEvosMoves
	dw DittoEvosMoves
	dw MeowthEvosMoves
	dw KrabbyEvosMoves
	dw MissingNo4FEvosMoves
	dw MissingNo50EvosMoves
	dw MissingNo51EvosMoves
	dw VulpixEvosMoves
	dw NinetalesEvosMoves
	dw PikachuEvosMoves
	dw RaichuEvosMoves
	dw MissingNo56EvosMoves
	dw MissingNo57EvosMoves
	dw DratiniEvosMoves
	dw DragonairEvosMoves
	dw KabutoEvosMoves
	dw KabutopsEvosMoves
	dw HorseaEvosMoves
	dw SeadraEvosMoves
	dw MissingNo5EEvosMoves
	dw MissingNo5FEvosMoves
	dw SandshrewEvosMoves
	dw SandslashEvosMoves
	dw OmanyteEvosMoves
	dw OmastarEvosMoves
	dw JigglypuffEvosMoves
	dw WigglytuffEvosMoves
	dw EeveeEvosMoves
	dw FlareonEvosMoves
	dw JolteonEvosMoves
	dw VaporeonEvosMoves
	dw MachopEvosMoves
	dw ZubatEvosMoves
	dw EkansEvosMoves
	dw ParasEvosMoves
	dw PoliwhirlEvosMoves
	dw PoliwrathEvosMoves
	dw WeedleEvosMoves
	dw KakunaEvosMoves
	dw BeedrillEvosMoves
	dw MissingNo73EvosMoves
	dw DodrioEvosMoves
	dw PrimeapeEvosMoves
	dw DugtrioEvosMoves
	dw VenomothEvosMoves
	dw DewgongEvosMoves
	dw MissingNo79EvosMoves
	dw MissingNo7AEvosMoves
	dw CaterpieEvosMoves
	dw MetapodEvosMoves
	dw ButterfreeEvosMoves
	dw MachampEvosMoves
	dw MissingNo7FEvosMoves
	dw GolduckEvosMoves
	dw HypnoEvosMoves
	dw GolbatEvosMoves
	dw MewtwoEvosMoves
	dw SnorlaxEvosMoves
	dw MagikarpEvosMoves
	dw MissingNo86EvosMoves
	dw MissingNo87EvosMoves
	dw MukEvosMoves
	dw MissingNo8AEvosMoves
	dw KinglerEvosMoves
	dw CloysterEvosMoves
	dw MissingNo8CEvosMoves
	dw ElectrodeEvosMoves
	dw ClefableEvosMoves
	dw WeezingEvosMoves
	dw PersianEvosMoves
	dw MarowakEvosMoves
	dw MissingNo92EvosMoves
	dw HaunterEvosMoves
	dw AbraEvosMoves
	dw AlakazamEvosMoves
	dw PidgeottoEvosMoves
	dw PidgeotEvosMoves
	dw StarmieEvosMoves
	dw BulbasaurEvosMoves
	dw VenusaurEvosMoves
	dw TentacruelEvosMoves
	dw MissingNo9CEvosMoves
	dw GoldeenEvosMoves
	dw SeakingEvosMoves
	dw MissingNo9FEvosMoves
	dw MissingNoA0EvosMoves
	dw MissingNoA1EvosMoves
	dw MissingNoA2EvosMoves
	dw PonytaEvosMoves
	dw RapidashEvosMoves
	dw RattataEvosMoves
	dw RaticateEvosMoves
	dw NidorinoEvosMoves
	dw NidorinaEvosMoves
	dw GeodudeEvosMoves
	dw PorygonEvosMoves
	dw AerodactylEvosMoves
	dw MissingNoACEvosMoves
	dw MagnemiteEvosMoves
	dw MissingNoAEEvosMoves
	dw MissingNoAFEvosMoves
	dw CharmanderEvosMoves
	dw SquirtleEvosMoves
	dw CharmeleonEvosMoves
	dw WartortleEvosMoves
	dw CharizardEvosMoves
	dw MissingNoB5EvosMoves
	dw FossilKabutopsEvosMoves
	dw FossilAerodactylEvosMoves
	dw MonGhostEvosMoves
	dw OddishEvosMoves
	dw GloomEvosMoves
	dw VileplumeEvosMoves
	dw BellsproutEvosMoves
	dw WeepinbellEvosMoves
	dw VictreebelEvosMoves
	assert_table_length NUM_POKEMON_INDEXES

RhydonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 24, DIG
	db 30, STOMP
	db 36, FURY_ATTACK
	db 42, HAMMER_ARM
	db 48, ROCK_SLIDE
	db 54, EARTHQUAKE
	db 60, DOUBLE_EDGE
	db 0

KangaskhanEvosMoves:
; Evolutions
	db 0
; Learnset
	db 11, TAIL_WHIP
	db 17, BITE
	db 28, MEGA_PUNCH
	db 33, DIZZY_PUNCH
	db 41, OUTRAGE
	db 0

NidoranMEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, NIDORINO
	db 0
; Learnset
	db 9, DOUBLE_KICK
	db 12, HORN_ATTACK
	db 18, TOXIC
	db 21, FURY_ATTACK
	db 24, ACID
	db 27, DIG
	db 31, ROCK_SLIDE
	db 0

ClefairyEvosMoves:
; Evolutions
	db EVOLVE_ITEM, MOON_STONE, 1, CLEFABLE
	db 0
; Learnset
	db 13, SING
	db 18, DOUBLESLAP
	db 24, MINIMIZE
	db 31, METRONOME
	db 40, BODY_SLAM
	db 44, MOONBLAST
	db 0

SpearowEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 20, FEAROW
	db 0
; Learnset
	db 9, LEER
	db 15, FURY_ATTACK
	db 18, WING_ATTACK
	db 22, MIRROR_MOVE
	db 25, AGILITY
	db 29, DRILL_PECK
	db 0

VoltorbEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, ELECTRODE
	db 0
; Learnset
	db 19, SELFDESTRUCT
	db 29, LIGHT_SCREEN
	db 31, THUNDERBOLT
	db 36, SWIFT
	db 43, EXPLOSION
	db 0

NidokingEvosMoves:
; Evolutions
	db 0
; Learnset
	db 45, SUBMISSION
	db 50, SLUDGE
	db 55, EARTHQUAKE
	db 0

SlowbroEvosMoves:
; Evolutions
	db 0
; Learnset
	db 9, WATER_GUN
	db 21, HEADBUTT
	db 27, GROWL
	db 30, REST
	db 36, PSYCHIC_M
	db 48, AMNESIA
	db 0

IvysaurEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 32, VENUSAUR
	db 0
; Learnset
	db 9, VINE_WHIP
	db 12, LEECH_SEED
	db 15, POISONPOWDER
	db 15, SLEEP_POWDER
	db 18, ACID
	db 21, RAZOR_LEAF
	db 25, CALM_MIND
	db 27, TOXIC
	db 30, SLUDGE
	db 32, POWER_WHIP
	db 0

ExeggutorEvosMoves:
; Evolutions
	db 0
; Learnset
	db 30, STOMP
	db 0

LickitungEvosMoves:
; Evolutions
	db 0
; Learnset
	db 7, STOMP
	db 15, SCREECH
	db 23, DEFENSE_CURL
	db 29, REST
	db 31, BODY_SLAM
	db 39, POWER_WHIP
	db 47, THRASH
	db 0

ExeggcuteEvosMoves:
; Evolutions
	db EVOLVE_ITEM, LEAF_STONE, 1, EXEGGUTOR
	db 0
; Learnset
	db 25, REFLECT
	db 27, PSYBEAM
	db 32, STUN_SPORE
	db 34, LEECH_SEED
	db 40, EXTRASENSORY
	db 42, SOLARBEAM
	db 48, SLEEP_POWDER
	db 0

GrimerEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 38, MUK
	db 0
; Learnset
	db 6, HARDEN
	db 12, MINIMIZE
	db 24, ACID
	db 30, SCREECH
	db 35, TOXIC
	db 38, SHADOW_PUNCH
	db 42, ACID_ARMOR
	db 48, SLUDGE
	db 0

GengarEvosMoves:
; Evolutions
	db 0
; Learnset
	db 19, POISON_GAS
	db 21, NIGHT_SHADE
	db 30, TOXIC
	db 36, SLUDGE
	db 39, SHADOW_PUNCH
	db 45, DREAM_EATER
	db 0

NidoranFEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, NIDORINA
	db 0
; Learnset
	db 9, DOUBLE_KICK
	db 12, FURY_SWIPES
	db 18, TOXIC
	db 21, DIG
	db 24, ACID
	db 27, BITE
	db 31, SUPER_FANG
	db 0

NidoqueenEvosMoves:
; Evolutions
	db 0
; Learnset
	db 45, SUBMISSION
	db 50, SLUDGE
	db 55, EARTHQUAKE
	db 0

CuboneEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, MAROWAK
	db 0
; Learnset
	db 11, HEADBUTT
	db 18, RAGE
	db 26, BONEMERANG
	db 30, THRASH
	db 36, DOUBLE_EDGE
	db 0

RhyhornEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 42, RHYDON
	db 0
; Learnset
	db 24, DIG
	db 30, STOMP
	db 36, FURY_ATTACK
	db 43, ROCK_SLIDE
	db 48, EARTHQUAKE
	db 55, DOUBLE_EDGE
	db 0

LaprasEvosMoves:
; Evolutions
	db 0
; Learnset
	db 25, BODY_SLAM
	db 31, CONFUSE_RAY
	db 38, ICE_BEAM
	db 46, HYDRO_PUMP
	db 52, DRAGON_RAGE
	db 58, BLIZZARD
	db 0

ArcanineEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MewEvosMoves:
; Evolutions
	db 0
; Learnset
	db 10, TRANSFORM
	db 20, MEGA_PUNCH
	db 30, METRONOME
	db 40, PSYCHIC_M
	db 0

GyaradosEvosMoves:
; Evolutions
	db 0
; Learnset
	db 20, GUST
	db 23, WATERFALL
	db 25, DRAGON_RAGE
	db 32, BITE
	db 40, HYDRO_PUMP
	db 41, OUTRAGE
	db 44, HURRICANE
	db 48, THRASH
	db 52, GIGA_IMPACT
	db 0

ShellderEvosMoves:
; Evolutions
	db EVOLVE_ITEM, WATER_STONE, 1, CLOYSTER
	db 0
; Learnset
	db 22, CLAMP
	db 27, AURORA_BEAM
	db 36, ICE_BEAM
	db 40, IRON_DEFENSE
	db 45, HYDRO_PUMP
	db 0

TentacoolEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, TENTACRUEL
	db 0
; Learnset
	db 22, SCREECH
	db 27, ACID_ARMOR
	db 31, ACID
	db 36, TOXIC
	db 40, SLUDGE
	db 45, HYDRO_PUMP
	db 0

GastlyEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 25, HAUNTER
	db 0
; Learnset
	db 19, POISON_GAS
	db 21, NIGHT_SHADE
	db 26, TOXIC
	db 28, SLUDGE
	db 33, DREAM_EATER
	db 0

ScytherEvosMoves:
; Evolutions
	db 0
; Learnset
	db  8, DOUBLE_TEAM
	db 16, WING_ATTACK
	db 20, AGILITY
	db 26, SLASH
	db 35, SWORDS_DANCE
	db 0

StaryuEvosMoves:
; Evolutions
	db EVOLVE_ITEM, WATER_STONE, 1, STARMIE
	db 0
; Learnset
	db 18, MINIMIZE
	db 22, CONFUSE_RAY
	db 27, BUBBLEBEAM
	db 31, LIGHT_SCREEN
	db 36, PSYCHIC_M
	db 40, RECOVER
	db 45, HYDRO_PUMP
	db 0

BlastoiseEvosMoves:
; Evolutions
	db 0
; Learnset
	db 8, WATER_GUN
	db 10, WITHDRAW
	db 14, MEDITATE
	db 17, BITE
	db 22, HEADBUTT
	db 24, ICE_PUNCH
	db 26, WATERFALL
	db 31, IRON_DEFENSE
	db 33, SKULL_BASH
	db 36, HYDRO_PUMP
	db 0

PinsirEvosMoves:
; Evolutions
	db 0
; Learnset
	db 16, SEISMIC_TOSS
	db 19, HARDEN
	db 26, SUBMISSION
	db 32, SWORDS_DANCE
	db 43, THRASH
	db 49, SLASH
	db 0

TangelaEvosMoves:
; Evolutions
	db 0
; Learnset
	db 24, PRIMORDIAL
	db 29, STUN_SPORE
	db 29, SLEEP_POWDER
	db 34, MEGA_DRAIN
	db 39, LEECH_SEED
	db 49, AMNESIA
	db 54, POWER_WHIP
	db 0

MissingNo1FEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo20EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

GrowlitheEvosMoves:
; Evolutions
	db EVOLVE_ITEM, FIRE_STONE, 1, ARCANINE
	db 0
; Learnset
	db 17, FIRE_FANG
	db 21, AGILITY
	db 24, FLAMETHROWER
	db 31, OUTRAGE
	db 35, PLAY_ROUGH
	db 38, FLARE_BLITZ
	db 0

OnixEvosMoves:
; Evolutions
	db 0
; Learnset
	db 10, RAGE
	db 15, HARDEN
	db 20, SHARPEN
	db 25, SKULL_BASH
	db 30, ROCK_SLIDE
	db 35, EARTHQUAKE
	db 0

FearowEvosMoves:
; Evolutions
	db 0
; Learnset
	db 9, LEER
	db 15, FURY_ATTACK
	db 18, WING_ATTACK
	db 22, MIRROR_MOVE
	db 25, AGILITY
	db 29, DRILL_PECK
	db 0

PidgeyEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 9, PIDGEOTTO
	db 0
; Learnset
	db 5, SAND_ATTACK
	db 9, QUICK_ATTACK
	db 11, MIRROR_MOVE
	db 15, WING_ATTACK
	db 19, WHIRLWIND
	db 23, AGILITY
	db 44, HURRICANE
	db 0

SlowpokeEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 37, SLOWBRO
	db 0
; Learnset
	db 9, WATER_GUN
	db 21, HEADBUTT
	db 27, GROWL
	db 30, REST
	db 36, PSYCHIC_M
	db 48, AMNESIA
	db 0

KadabraEvosMoves:
; Evolutions
	db EVOLVE_ITEM, LINKING_CABLE,1, ALAKAZAM
	db EVOLVE_LEVEL, 42, ALAKAZAM
	db 0
; Learnset
	db 16, CONFUSION
	db 20, REFLECT
	db 27, PSYBEAM
	db 31, RECOVER
	db 38, PSYCHIC_M
	db 42, FOCUS_BLAST
	db 0

GravelerEvosMoves:
; Evolutions
	db EVOLVE_ITEM, LINKING_CABLE,1, GOLEM
	db EVOLVE_LEVEL, 38, GOLEM
	db 0
; Learnset
	db 11, DEFENSE_CURL
	db 16, ROCK_THROW
	db 21, SELFDESTRUCT
	db 26, DIG
	db 31, EARTHQUAKE
	db 36, EXPLOSION
	db 0

ChanseyEvosMoves:
; Evolutions
	db 0
; Learnset
	db 16, SOFTBOILED
	db 20, MINIMIZE
	db 30, SING
	db 35, EGG_BOMB
	db 40, LIGHT_SCREEN
	db 45, DOUBLE_EDGE
	db 0

MachokeEvosMoves:
; Evolutions
	db EVOLVE_ITEM, LINKING_CABLE,1, MACHAMP
	db EVOLVE_LEVEL, 38, MACHAMP
	db 0
; Learnset
	db 12, LEER
	db 16, LOW_KICK
	db 21, SEISMIC_TOSS
	db 26, FIRE_PUNCH
	db 31, MEDITATE
	db 36, SUBMISSION
	db 0

MrMimeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 22, REFLECT
	db 22, LIGHT_SCREEN
	db 25, PSYBEAM
	db 29, SUBSTITUTE
	db 39, PSYCHIC_M
	db 44, DAZZLE
	
	db 0

HitmonleeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 20, SEISMIC_TOSS
	db 33, ROLLING_KICK
	db 35, JUMP_KICK
	db 40, MEGA_KICK
	db 45, HI_JUMP_KICK
	db 0

HitmonchanEvosMoves:
; Evolutions
	db 0
; Learnset
	db 31, FIRE_PUNCH
	db 31, ICE_PUNCH
	db 31, THUNDERPUNCH
	db 35, SEISMIC_TOSS
	db 40, MEGA_PUNCH
	db 0

ArbokEvosMoves:
; Evolutions
	db 0
; Learnset
	db 8, MEDITATE
	db 10, BITE
	db 17, GLARE
	db 20, ACID
	db 28, SCREECH
	db 31, ACID_ARMOR
	db 36, TOXIC
	db 0

ParasectEvosMoves:
; Evolutions
	db 0
; Learnset
	db 9, ABSORB
	db 12, CALM_MIND
	db 15, FURY_SWIPES
	db 19, SLASH
	db 23, LEECH_LIFE
	db 27, SPORE
	db 0

PsyduckEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, GOLDUCK
	db 0
; Learnset
	db 6, CONFUSION
	db 9, FURY_SWIPES
	db 10, HYPNOSIS
	db 18, PSYBEAM
	db 34, AMNESIA
	db 0

DrowzeeEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 26, HYPNO
	db 0
; Learnset
	db 13, POISON_GAS
	db 18, MEDITATE
	db 22, PSYBEAM
	db 27, HEADBUTT
	db 31, PSYCHIC_M
	db 37, NIGHT_SHADE
	db 40, DREAM_EATER
	db 0

GolemEvosMoves:
; Evolutions
	db 0
; Learnset
	db 11, DEFENSE_CURL
	db 16, ROCK_THROW
	db 21, SELFDESTRUCT
	db 26, DIG
	db 31, EARTHQUAKE
	db 36, EXPLOSION
	db 0

MissingNo32EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MagmarEvosMoves:
; Evolutions
	db 0
; Learnset
	db 6, SMOG
	db 11, SMOKESCREEN
	db 22, LOW_KICK
	db 33, FIRE_PUNCH
	db 39, CONFUSE_RAY
	db 44, FLAMETHROWER
	db 50, FIRE_BLAST
	db 0

MissingNo34EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

ElectabuzzEvosMoves:
; Evolutions
	db 0
; Learnset
	db 22, LOW_KICK
	db 28, LIGHT_SCREEN
	db 33, THUNDERPUNCH
	db 37, SCREECH
	db 42, THUNDERBOLT
	db 50, THUNDER
	db 0

MagnetonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 10, THUNDER_WAVE
	db 15, SONICBOOM
	db 20, LIGHT_SCREEN
	db 26, THUNDERBOLT
	db 36, SCREECH
	db 38, TRI_ATTACK
	db 44, THUNDER
	db 0

KoffingEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 35, WEEZING
	db 0
; Learnset
	db 32, ACID
	db 37, SMOKESCREEN
	db 40, TOXIC
	db 42, SLUDGE
	db 45, HAZE
	db 48, EXPLOSION
	db 0

MissingNo38EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MankeyEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, PRIMEAPE
	db 0
; Learnset
	db 13, KARATE_CHOP
	db 16, FURY_SWIPES
	db 24, SEISMIC_TOSS
	db 29, THUNDERPUNCH
	db 34, SHADOW_PUNCH
	db 37, MEDITATE
	db 40, THRASH
	db 43, OUTRAGE
	db 0

SeelEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 34, DEWGONG
	db 0
; Learnset
	db 20, REST
	db 26, AURORA_BEAM
	db 32, WATERFALL
	db 38, DOUBLE_EDGE
	db 44, ICE_BEAM
	db 0

DiglettEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 26, DUGTRIO
	db 0
; Learnset
	db 8, GROWL
	db 15, FURY_SWIPES
	db 18, DIG
	db 21, SLASH
	db 29, EARTHQUAKE
	db 0

TaurosEvosMoves:
; Evolutions
	db 0
; Learnset
	db 30, REST
	db 35, LEER
	db 42, THRASH
	db 46, DOUBLE_EDGE
	db 50, OUTRAGE
	db 60, GIGA_IMPACT
	db 0

MissingNo3DEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo3EEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo3FEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

FarfetchdEvosMoves:
; Evolutions
	db 0
; Learnset
	db 13, RAZOR_LEAF
	db 15, FURY_ATTACK
	db 22, AGILITY
	db 23, SWORDS_DANCE
	db 27, SLASH
	db 31, SKY_ATTACK
	db 0

VenonatEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 31, VENOMOTH
	db 0
; Learnset
	db 16, STUN_SPORE
	db 20, PSYBEAM
	db 24, SLEEP_POWDER
	db 27, LEECH_LIFE
	db 30, TOXIC
	db 32, PSYCHIC_M
	db 35, BUG_BUZZ
	db 0

DragoniteEvosMoves:
; Evolutions
	db 0
; Learnset
	db 10, THUNDER_WAVE
	db 20, AGILITY
	db 30, OUTRAGE
	db 40, DRAGON_RAGE
	db 50, HYPER_BEAM
	db 60, HURRICANE
	db 0

MissingNo43EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo44EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo45EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

DoduoEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 31, DODRIO
	db 0
; Learnset
	db 16, FURY_ATTACK
	db 22, AGILITY
	db 27, DRILL_PECK
	db 32, SWORDS_DANCE
	db 38, JUMP_KICK
	db 40, TRI_ATTACK
	db 44, THRASH
	db 0

PoliwagEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 18, POLIWHIRL
	db 0
; Learnset
	db 16, DOUBLESLAP
	db 21, BUBBLEBEAM
	db 26, LOW_KICK
	db 31, BODY_SLAM
	db 36, HYDRO_PUMP
	db 38, AMNESIA
	db 0

JynxEvosMoves:
; Evolutions
	db 0
; Learnset
	db 18, LICK
	db 22, DOUBLESLAP
	db 26, ICE_PUNCH
	db 30, BODY_SLAM
	db 40, PSYCHIC_M
	db 45, BLIZZARD
	db 0

MoltresEvosMoves:
; Evolutions
	db 0
; Learnset
	db 51, LEER
	db 55, AGILITY
	db 60, SKY_ATTACK
	db 0

ArticunoEvosMoves:
; Evolutions
	db 0
; Learnset
	db 51, BLIZZARD
	db 55, AGILITY
	db 60, MIST
	db 0

ZapdosEvosMoves:
; Evolutions
	db 0
; Learnset
	db 51, THUNDER
	db 55, AGILITY
	db 60, LIGHT_SCREEN
	db 0

DittoEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MeowthEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, PERSIAN
	db 0
; Learnset
	db 12, BITE
	db 17, PAY_DAY
	db 19, FURY_SWIPES
	db 24, SCREECH
	db 27, SLASH
	db 31, AGILITY
	db 35, PLAY_ROUGH
	db 0

KrabbyEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, KINGLER
	db 0
; Learnset
	db 5, VICEGRIP
	db 14, HARDEN
	db 18, BUBBLEBEAM
	db 23, STOMP
	db 28, HAMMER_ARM
	db 31, SWORDS_DANCE
	db 36, CRABHAMMER
	db 0

MissingNo4FEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo50EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo51EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

VulpixEvosMoves:
; Evolutions
	db EVOLVE_ITEM, FIRE_STONE, 1, NINETALES
	db 0
; Learnset
	db 10, QUICK_ATTACK
	db 14, CONFUSE_RAY
	db 21, FIRE_SPIN
	db 24, FLAMETHROWER
	db 28, EXTRASENSORY
	db 31, FIRE_BLAST
	db 0

NinetalesEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

PikachuEvosMoves:
; Evolutions
	db EVOLVE_ITEM, THUNDER_STONE, 1, RAICHU
	db 0
; Learnset
	db 6, QUICK_ATTACK
	db 9, DOUBLE_KICK
	db 15, THUNDER_WAVE
	db 21, THUNDERBOLT
	db 27, AGILITY
	db 30, THUNDER
	db 0

RaichuEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo56EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo57EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

DratiniEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, DRAGONAIR
	db 0
; Learnset
	db 10, THUNDER_WAVE
	db 20, AGILITY
	db 30, OUTRAGE
	db 40, DRAGON_RAGE
	db 50, HYPER_BEAM
	db 0

DragonairEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 55, DRAGONITE
	db 0
; Learnset
	db 10, THUNDER_WAVE
	db 20, AGILITY
	db 30, OUTRAGE
	db 40, DRAGON_RAGE
	db 50, HYPER_BEAM
	db 0

KabutoEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 40, KABUTOPS
	db 0
; Learnset
	db 34, SLASH
	db 39, WATERFALL
	db 40, ROCK_SLIDE
	db 44, SWORDS_DANCE
	db 0

KabutopsEvosMoves:
; Evolutions
	db 0
; Learnset
	db 34, SLASH
	db 39, WATERFALL
	db 40, ROCK_SLIDE
	db 44, SWORDS_DANCE
	db 0

HorseaEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, SEADRA
	db 0
; Learnset
	db 18, BUBBLEBEAM
	db 27, WATERFALL
	db 33, AGILITY
	db 36, DRAGON_RAGE
	db 42, HYDRO_PUMP
	db 0

SeadraEvosMoves:
; Evolutions
	db 0
; Learnset
	db 18, BUBBLEBEAM
	db 27, WATERFALL
	db 36, AGILITY
	db 36, DRAGON_RAGE
	db 42, HYDRO_PUMP
	db 0

MissingNo5EEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo5FEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

SandshrewEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 22, SANDSLASH
	db 0
; Learnset
	db 16, FURY_SWIPES
	db 20, DIG
	db 24, SLASH
	db 28, SWORDS_DANCE
	db 36, EARTHQUAKE
	db 0

SandslashEvosMoves:
; Evolutions
	db 0
; Learnset
	db 16, FURY_SWIPES
	db 20, DIG
	db 26, SLASH
	db 28, SWORDS_DANCE
	db 36, EARTHQUAKE
	db 0

OmanyteEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 40, OMASTAR
	db 0
; Learnset
	db 34, HORN_ATTACK
	db 37, SURF
	db 40, ROCK_SLIDE
	db 44, SPIKE_CANNON
	db 50, HYDRO_PUMP
	db 0

OmastarEvosMoves:
; Evolutions
	db 0
; Learnset
	db 34, HORN_ATTACK
	db 37, SURF
	db 40, ROCK_SLIDE
	db 44, SPIKE_CANNON
	db 50, HYDRO_PUMP
	db 0

JigglypuffEvosMoves:
; Evolutions
	db EVOLVE_ITEM, MOON_STONE, 1, WIGGLYTUFF
	db 0
; Learnset
	db 4, POUND
	db 6, DEFENSE_CURL
	db 12, DOUBLESLAP
	db 18, REST
	db 22, BODY_SLAM
	db 28, PLAY_ROUGH
	db 0

WigglytuffEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

EeveeEvosMoves:
; Evolutions
	db EVOLVE_ITEM, FIRE_STONE, 1, FLAREON
	db EVOLVE_ITEM, THUNDER_STONE, 1, JOLTEON
	db EVOLVE_ITEM, WATER_STONE, 1, VAPOREON
	db 0
; Learnset
	db 27, QUICK_ATTACK
	db 31, SWIFT
	db 37, BITE
	db 45, DOUBLE_EDGE
	db 0

FlareonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 27, QUICK_ATTACK
	db 31, EMBER
	db 35, RAGE
	db 37, FIRE_FANG
	db 40, BITE
	db 42, FLARE_BLITZ
	db 45, FIRE_SPIN
	db 50, FLAMETHROWER
	db 0

JolteonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 27, QUICK_ATTACK
	db 31, THUNDERSHOCK
	db 35, PIN_MISSILE
	db 37, THUNDER_WAVE
	db 40, THUNDERBOLT
	db 42, DOUBLE_KICK
	db 45, AGILITY
	db 50, THUNDER
	db 0

VaporeonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 27, QUICK_ATTACK
	db 31, WATER_GUN
	db 33, AURORA_BEAM
	db 37, BITE
	db 40, BUBBLEBEAM
	db 42, HAZE
	db 45, ACID_ARMOR
	db 50, HYDRO_PUMP
	db 0

MachopEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 28, MACHOKE
	db 0
; Learnset
	db 12, LEER
	db 16, LOW_KICK
	db 21, SEISMIC_TOSS
	db 26, FIRE_PUNCH
	db 31, MEDITATE
	db 36, SUBMISSION
	db 0

ZubatEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 22, GOLBAT
	db 0
; Learnset
	db 10, CONFUSE_RAY
	db 15, BITE
	db 21, WING_ATTACK
	db 25, LEECH_LIFE
	db 28, ACID
	db 31, AGILITY
	db 33, HAZE
	db 37, TOXIC
	db 0

EkansEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 22, ARBOK
	db 0
; Learnset
	db 8, MEDITATE
	db 10, BITE
	db 17, GLARE
	db 20, ACID
	db 28, SCREECH
	db 31, ACID_ARMOR
	db 36, TOXIC
	db 0

ParasEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 24, PARASECT
	db 0
; Learnset
	db 9, ABSORB
	db 12, CALM_MIND
	db 15, FURY_SWIPES
	db 19, SLASH
	db 23, LEECH_LIFE
	db 27, SPORE
	db 0

PoliwhirlEvosMoves:
; Evolutions
	db EVOLVE_ITEM, WATER_STONE, 1, POLIWRATH
	db 0
; Learnset
	db 16, DOUBLESLAP
	db 21, BUBBLEBEAM
	db 26, LOW_KICK
	db 31, BODY_SLAM
	db 36, HYDRO_PUMP
	db 38, AMNESIA
	db 0

PoliwrathEvosMoves:
; Evolutions
	db 0
; Learnset
	db 28, WATERFALL
	db 30, LOW_KICK
	db 43, FOCUS_BLAST
	db 0

WeedleEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 7, KAKUNA
	db 0
; Learnset
	db 0

KakunaEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 10, BEEDRILL
	db 0
; Learnset
	db 0

BeedrillEvosMoves:
; Evolutions
	db 0
; Learnset
	db 10, FURY_ATTACK
	db 16, TWINEEDLE
	db 19, TOXIC
	db 21, ACID
	db 25, AGILITY
	db 28, PIN_MISSILE
	db 31, OUTRAGE
	db 0

MissingNo73EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

DodrioEvosMoves:
; Evolutions
	db 0
; Learnset
	db 16, FURY_ATTACK
	db 22, AGILITY
	db 27, DRILL_PECK
	db 32, SWORDS_DANCE
	db 38, JUMP_KICK
	db 40, TRI_ATTACK
	db 44, THRASH
	db 0

PrimeapeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 13, KARATE_CHOP
	db 16, FURY_SWIPES
	db 24, SEISMIC_TOSS
	db 29, THUNDERPUNCH
	db 34, SHADOW_PUNCH
	db 37, MEDITATE
	db 40, THRASH
	db 43, OUTRAGE
	db 0

DugtrioEvosMoves:
; Evolutions
	db 0
; Learnset
	db 8, GROWL
	db 15, FURY_SWIPES
	db 18, DIG
	db 21, SLASH
	db 29, EARTHQUAKE
	db 0

VenomothEvosMoves:
; Evolutions
	db 0
; Learnset
	db 16, STUN_SPORE
	db 20, PSYBEAM
	db 24, SLEEP_POWDER
	db 27, LEECH_LIFE
	db 30, TOXIC
	db 32, PSYCHIC_M
	db 35, BUG_BUZZ
	db 0

DewgongEvosMoves:
; Evolutions
	db 0
; Learnset
	db 20, REST
	db 26, AURORA_BEAM
	db 32, WATERFALL
	db 38, DOUBLE_EDGE
	db 44, ICE_BEAM
	db 0

MissingNo79EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo7AEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

CaterpieEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 7, METAPOD
	db 0
; Learnset
	db 0

MetapodEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 10, BUTTERFREE
	db 0
; Learnset
	db 0

ButterfreeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 10, CONFUSION
	db 13, POISONPOWDER
	db 13, STUN_SPORE
	db 13, SLEEP_POWDER
	db 16, GUST
	db 21, PSYBEAM
	db 25, WHIRLWIND
	db 32, BUG_BUZZ
	db 38, HURRICANE
	db 0

MachampEvosMoves:
; Evolutions
	db 0
; Learnset
	db 12, LEER
	db 16, LOW_KICK
	db 21, SEISMIC_TOSS
	db 26, FIRE_PUNCH
	db 31, MEDITATE
	db 36, SUBMISSION
	db 0

MissingNo7FEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

GolduckEvosMoves:
; Evolutions
	db 0
; Learnset
	db 6, CONFUSION
	db 9, FURY_SWIPES
	db 10, HYPNOSIS
	db 18, PSYBEAM
	db 34, AMNESIA
	db 0

HypnoEvosMoves:
; Evolutions
	db 0
; Learnset
	db 13, POISON_GAS
	db 22, PSYBEAM
	db 27, HEADBUTT
	db 31, PSYCHIC_M
	db 37, NIGHT_SHADE
	db 40, DREAM_EATER
	db 0

GolbatEvosMoves:
; Evolutions
	db 0
; Learnset
	db 10, CONFUSE_RAY
	db 15, BITE
	db 21, WING_ATTACK
	db 25, LEECH_LIFE
	db 28, ACID
	db 31, AGILITY
	db 33, HAZE
	db 37, TOXIC
	db 0

MewtwoEvosMoves:
; Evolutions
	db 0
; Learnset
	db 63, BARRIER
	db 66, FOCUS_BLAST
	db 70, RECOVER
	db 75, MIST
	db 81, AMNESIA
	db 0

SnorlaxEvosMoves:
; Evolutions
	db 0
; Learnset
	db 33, BODY_SLAM
	db 35, DEFENSE_CURL
	db 36, MEDITATE
	db 41, BITE
	db 44, HAMMER_ARM
	db 48, DOUBLE_EDGE
	db 56, GIGA_IMPACT
	db 0

MagikarpEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 20, GYARADOS
	db 0
; Learnset
	db 15, TACKLE
	db 0

MissingNo86EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNo87EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MukEvosMoves:
; Evolutions
	db 0
; Learnset
	db 6, HARDEN
	db 12, MINIMIZE
	db 24, ACID
	db 30, SCREECH
	db 35, TOXIC
	db 38, SHADOW_PUNCH
	db 42, ACID_ARMOR
	db 48, SLUDGE
	db 0

MissingNo8AEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

KinglerEvosMoves:
; Evolutions
	db 0
; Learnset
	db 5, VICEGRIP
	db 14, HARDEN
	db 18, BUBBLEBEAM
	db 23, STOMP
	db 28, HAMMER_ARM
	db 31, SWORDS_DANCE
	db 36, CRABHAMMER
	
	db 0

CloysterEvosMoves:
; Evolutions
	db 0
; Learnset
	db 50, SPIKE_CANNON
	db 0

MissingNo8CEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

ElectrodeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 19, SELFDESTRUCT
	db 29, LIGHT_SCREEN
	db 31, THUNDERBOLT
	db 36, SWIFT
	db 43, EXPLOSION
	db 0

ClefableEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

WeezingEvosMoves:
; Evolutions
	db 0
; Learnset
	db 32, ACID
	db 37, SMOKESCREEN
	db 40, TOXIC
	db 42, SLUDGE
	db 45, HAZE
	db 48, EXPLOSION
	db 0

PersianEvosMoves:
; Evolutions
	db 0
; Learnset
	db 12, BITE
	db 17, PAY_DAY
	db 19, FURY_SWIPES
	db 24, SCREECH
	db 27, SLASH
	db 31, AGILITY
	db 35, PLAY_ROUGH
	db 0

MarowakEvosMoves:
; Evolutions
	db 0
; Learnset
	db 11, HEADBUTT
	db 18, RAGE
	db 26, BONEMERANG
	db 30, THRASH
	db 36, DOUBLE_EDGE
	db 0

MissingNo92EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

HaunterEvosMoves:
; Evolutions
	db EVOLVE_ITEM, LINKING_CABLE,1, GENGAR
	db EVOLVE_LEVEL, 42, GENGAR
	db 0
; Learnset
	db 19, POISON_GAS
	db 21, NIGHT_SHADE
	db 30, TOXIC
	db 36, SLUDGE
	db 39, SHADOW_PUNCH
	db 45, DREAM_EATER
	db 0

AbraEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, KADABRA
	db 0
; Learnset
	db 0

AlakazamEvosMoves:
; Evolutions
	db 0
; Learnset
	db 16, CONFUSION
	db 20, REFLECT
	db 27, PSYBEAM
	db 31, RECOVER
	db 38, PSYCHIC_M
	db 42, FOCUS_BLAST
	db 0

PidgeottoEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 20, PIDGEOT
	db 0
; Learnset
	db 5, SAND_ATTACK
	db 9, QUICK_ATTACK
	db 11, MIRROR_MOVE
	db 15, WING_ATTACK
	db 25, WHIRLWIND
	db 31, AGILITY
	db 44, HURRICANE
	db 0

PidgeotEvosMoves:
; Evolutions
	db 0
; Learnset
	db 5, SAND_ATTACK
	db 9, QUICK_ATTACK
	db 11, MIRROR_MOVE
	db 15, WING_ATTACK
	db 25, WHIRLWIND
	db 31, AGILITY
	db 44, HURRICANE
	db 0

StarmieEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

BulbasaurEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, IVYSAUR
	db 0
; Learnset
	db 9, VINE_WHIP
	db 12, LEECH_SEED
	db 15, POISONPOWDER
	db 15, SLEEP_POWDER
	db 18, ACID
	db 21, RAZOR_LEAF
	db 25, CALM_MIND
	db 27, TOXIC
	db 30, SLUDGE
	db 32, POWER_WHIP
	db 0

VenusaurEvosMoves:
; Evolutions
	db 0
; Learnset
	db 9, VINE_WHIP
	db 12, LEECH_SEED
	db 15, POISONPOWDER
	db 15, SLEEP_POWDER
	db 18, ACID
	db 21, RAZOR_LEAF
	db 25, CALM_MIND
	db 27, TOXIC
	db 30, SLUDGE
	db 32, POWER_WHIP
	db 0

TentacruelEvosMoves:
; Evolutions
	db 0
; Learnset
	db 22, SCREECH
	db 27, ACID_ARMOR
	db 31, ACID
	db 36, TOXIC
	db 40, SLUDGE
	db 45, HYDRO_PUMP
	db 0

MissingNo9CEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

GoldeenEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, SEAKING
	db 0
; Learnset
	db  4, SUPERSONIC
	db 10, WATER_GUN
	db 14, HORN_ATTACK
	db 20, FURY_ATTACK
	db 24, WATERFALL
	db 30, AGILITY
	db 0

SeakingEvosMoves:
; Evolutions
	db 0
; Learnset
	db  4, SUPERSONIC
	db 10, WATER_GUN
	db 14, HORN_ATTACK
	db 20, FURY_ATTACK
	db 24, WATERFALL
	db 30, AGILITY
	db 0

MissingNo9FEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNoA0EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNoA1EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNoA2EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

PonytaEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 38, RAPIDASH
	db 0
; Learnset
	db 10, QUICK_ATTACK
	db 14, DOUBLE_KICK
	db 17, STOMP
	db 26, FIRE_SPIN
	db 32, AGILITY
	db 38, FIRE_BLAST
	db 43, DOUBLE_EDGE
	db 48, FLARE_BLITZ
	db 0

RapidashEvosMoves:
; Evolutions
	db 0
; Learnset
	db 10, QUICK_ATTACK
	db 14, DOUBLE_KICK
	db 17, STOMP
	db 26, FIRE_SPIN
	db 32, AGILITY
	db 38, FIRE_BLAST
	db 43, DOUBLE_EDGE
	db 48, FLARE_BLITZ
	db 0

RattataEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 20, RATICATE
	db 0
; Learnset
	db 6, QUICK_ATTACK
	db 12, BITE
	db 15, SUPER_FANG
	db 21, HYPER_FANG
	db 24, EXTREMESPEED
	db 27, SWORDS_DANCE
	db 0

RaticateEvosMoves:
; Evolutions
	db 0
; Learnset
	db 6, QUICK_ATTACK
	db 12, BITE
	db 14, SUPER_FANG
	db 26, HYPER_FANG
	db 24, EXTREMESPEED
	db 27, SWORDS_DANCE
	db 0

NidorinoEvosMoves:
; Evolutions
	db EVOLVE_ITEM, MOON_STONE, 1, NIDOKING
	db 0
; Learnset
	db 9, DOUBLE_KICK
	db 12, HORN_ATTACK
	db 18, TOXIC
	db 21, FURY_ATTACK
	db 24, ACID
	db 27, DIG
	db 31, ROCK_SLIDE
	db 0

NidorinaEvosMoves:
; Evolutions
	db EVOLVE_ITEM, MOON_STONE, 1, NIDOQUEEN
	db 0
; Learnset
	db 12, DOUBLE_KICK
	db 15, FURY_SWIPES
	db 18, TOXIC
	db 21, DIG
	db 24, ACID
	db 27, BITE
	db 31, SUPER_FANG
	
	db 0

GeodudeEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 25, GRAVELER
	db 0
; Learnset
	db 11, DEFENSE_CURL
	db 16, ROCK_THROW
	db 21, SELFDESTRUCT
	db 26, DIG
	db 31, EARTHQUAKE
	db 36, EXPLOSION
	db 0

PorygonEvosMoves:
; Evolutions
	db 0
; Learnset
	db 23, PSYBEAM
	db 25, THUNDER_WAVE
	db 28, RECOVER
	db 30, TRI_ATTACK
	db 35, AGILITY
	db 38, BARRIER
	db 40, HYPER_BEAM
	db 0

AerodactylEvosMoves:
; Evolutions
	db 0
; Learnset
	db 35, BITE
	db 42, ROCK_SLIDE
	db 54, GIGA_IMPACT
	db 0

MissingNoACEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MagnemiteEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 30, MAGNETON
	db 0
; Learnset
	db 10, THUNDER_WAVE
	db 15, SONICBOOM
	db 20, LIGHT_SCREEN
	db 26, THUNDERBOLT
	db 32, SCREECH
	db 38, TRI_ATTACK
	db 44, THUNDER
	db 0

MissingNoAEEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MissingNoAFEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

CharmanderEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, CHARMELEON
	db 0
; Learnset
	db 7, EMBER
	db 10, SMOKESCREEN
	db 12, DRAGON_RAGE
	db 17, FIRE_FANG
	db 20, SLASH
	db 24, FLAMETHROWER
	db 28, DRAGON_CLAW
	db 32, FIRE_SPIN
	db 36, FLARE_BLITZ
	db 0

SquirtleEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 16, WARTORTLE
	db 0
; Learnset
	db 8, WATER_GUN
	db 10, WITHDRAW
	db 14, MEDITATE
	db 17, BITE
	db 22, HEADBUTT
	db 24, ICE_PUNCH
	db 26, WATERFALL
	db 31, IRON_DEFENSE
	db 33, SKULL_BASH
	db 36, HYDRO_PUMP
	db 0

CharmeleonEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 36, CHARIZARD
	db 0
; Learnset
	db 7, EMBER
	db 8, SMOKESCREEN
	db 12, DRAGON_RAGE
	db 17, FIRE_FANG
	db 20, SLASH
	db 24, FLAMETHROWER
	db 28, DRAGON_CLAW
	db 32, FIRE_SPIN
	db 36, FLARE_BLITZ
	db 0

WartortleEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 36, BLASTOISE
	db 0
; Learnset
	db 8, WATER_GUN
	db 10, WITHDRAW
	db 14, MEDITATE
	db 17, BITE
	db 22, HEADBUTT
	db 24, ICE_PUNCH
	db 26, WATERFALL
	db 31, IRON_DEFENSE
	db 33, SKULL_BASH
	db 36, HYDRO_PUMP
	db 0

CharizardEvosMoves:
; Evolutions
	db 0
; Learnset
	db 7, EMBER
	db 8, SMOKESCREEN
	db 12, DRAGON_RAGE
	db 17, FIRE_FANG
	db 20, SLASH
	db 24, FLAMETHROWER
	db 28, DRAGON_CLAW
	db 32, FIRE_SPIN
	db 36, FLARE_BLITZ
	db 36, WING_ATTACK
	db 0

MissingNoB5EvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

FossilKabutopsEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

FossilAerodactylEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

MonGhostEvosMoves:
; Evolutions
	db 0
; Learnset
	db 0

OddishEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 21, GLOOM
	db 0
; Learnset
	db 12, POISONPOWDER
	db 13, STUN_SPORE
	db 14, SLEEP_POWDER
	db 18, RAZOR_LEAF
	db 21, ACID
	db 26, TOXIC
	db 30, MOONBLAST
	db 33, PETAL_DANCE
	db 42, SOLARBEAM
	db 0

GloomEvosMoves:
; Evolutions
	db EVOLVE_ITEM, LEAF_STONE, 1, VILEPLUME
	db 0
; Learnset
	db 12, POISONPOWDER
	db 13, STUN_SPORE
	db 14, SLEEP_POWDER
	db 18, RAZOR_LEAF
	db 21, ACID
	db 26, TOXIC
	db 30, MOONBLAST
	db 33, PETAL_DANCE
	db 42, SOLARBEAM
	db 0

VileplumeEvosMoves:
; Evolutions
	db 0
; Learnset
	db 50, TOXIC
	db 54, MOONBLAST
	db 60, SOLARBEAM
	db 0

BellsproutEvosMoves:
; Evolutions
	db EVOLVE_LEVEL, 21, WEEPINBELL
	db 0
; Learnset
	db 12, POISONPOWDER
	db 13, SLEEP_POWDER
	db 14, STUN_SPORE
	db 18, RAZOR_LEAF
	db 21, ACID
	db 26, TOXIC
	db 30, SWORDS_DANCE
	db 33, LEECH_LIFE
	db 42, POWER_WHIP
	db 0

WeepinbellEvosMoves:
; Evolutions
	db EVOLVE_ITEM, LEAF_STONE, 1, VICTREEBEL
	db 0
; Learnset
	db 12, POISONPOWDER
	db 13, SLEEP_POWDER
	db 14, STUN_SPORE
	db 18, RAZOR_LEAF
	db 21, ACID
	db 26, TOXIC
	db 30, SWORDS_DANCE
	db 33, LEECH_LIFE
	db 42, POWER_WHIP
	db 0

VictreebelEvosMoves:
; Evolutions
	db 0
; Learnset
	db 13, ACID
	db 15, LEECH_LIFE
	db 18, SLEEP_POWDER
	db 0
