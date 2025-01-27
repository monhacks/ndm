Moves:
; Characteristics of each move.

move: macro
	db \1 ; animation (interchangeable with move id)
	db \2 ; effect
	db \3 ; power
	db \4 ; type
	db \5 percent ; accuracy
	db \6 ; pp
endm

	move POUND,        NO_ADDITIONAL_EFFECT,        40, NORMAL,   100, 5
MoveEnd:
	move KARATE_CHOP,  NO_ADDITIONAL_EFFECT,        50, FIGHTING, 100, 4 ;high crit chance
	move DOUBLESLAP,   TWO_TO_FIVE_ATTACKS_EFFECT,  15, NORMAL,   100, 3
	move COMET_PUNCH,  TWO_TO_FIVE_ATTACKS_EFFECT,  25, NORMAL,   100, 3
	move MEGA_PUNCH,   NO_ADDITIONAL_EFFECT,        80, FIGHTING, 100, 3
	move PAY_DAY,      PAY_DAY_EFFECT,              40, NORMAL,   100, 4
	move FIRE_PUNCH,   BURN_SIDE_EFFECT2,           75, FIRE,     100, 3
	move ICE_PUNCH,    FREEZE_SIDE_EFFECT,          75, ICE,      100, 3
	move THUNDERPUNCH, PARALYZE_SIDE_EFFECT1,       75, ELECTRIC, 100, 3
	move SCRATCH,      NO_ADDITIONAL_EFFECT,        40, NORMAL,   100, 5
	move VICEGRIP,     NO_ADDITIONAL_EFFECT,        55, BUG, 	  100, 5 ; above average PP for its power!!!
	move GUILLOTINE,   OHKO_EFFECT,                  1, NORMAL,    30, 1
	move RAZOR_WIND,   CHARGE_EFFECT,               80, NORMAL,   100, 5
	move SWORDS_DANCE, ATTACK_UP2_EFFECT,            0, BIRD,	  100, 2
	move CUT,          NO_ADDITIONAL_EFFECT,        70, NORMAL,    50, 5
	move GUST,         NO_ADDITIONAL_EFFECT,        40, FLYING,   100, 5 ; 10
	move WING_ATTACK,  NO_ADDITIONAL_EFFECT,        60, FLYING,   100, 4
	move WHIRLWIND,    SWITCH_AND_TELEPORT_EFFECT,   0, NORMAL,   100, 4
	move FLY,          FLY_EFFECT,                  70, FLYING,   100, 2
	move BIND,         TRAPPING_EFFECT,             25, NORMAL,    75, 3
	move SLAM,         NO_ADDITIONAL_EFFECT,        80, NORMAL,   100, 2
	move VINE_WHIP,    NO_ADDITIONAL_EFFECT,        40, GRASS,    100, 4
	move STOMP,        FLINCH_SIDE_EFFECT2,         65, NORMAL,   100, 3
	move DOUBLE_KICK,  ATTACK_TWICE_EFFECT,         30, FIGHTING, 100, 4
	move MEGA_KICK,    NO_ADDITIONAL_EFFECT,       120, FIGHTING,  75, 2
	move JUMP_KICK,    JUMP_KICK_EFFECT,            85, FIGHTING,  75, 4
	move ROLLING_KICK, FLINCH_SIDE_EFFECT2,         60, FIGHTING, 100, 3
	move SAND_ATTACK,  ACCURACY_DOWN1_EFFECT,        0, GROUND,   100, 3
	move HEADBUTT,     FLINCH_SIDE_EFFECT2,         70, NORMAL,   100, 3
	move HORN_ATTACK,  NO_ADDITIONAL_EFFECT,        65, NORMAL,   100, 4 ; very good PP/power ratio
	move FURY_ATTACK,  TWO_TO_FIVE_ATTACKS_EFFECT,  15, NORMAL,   100, 3
	move HORN_DRILL,   OHKO_EFFECT,                  1, NORMAL,    30, 1 ; 20
	move TACKLE,       NO_ADDITIONAL_EFFECT,        35, NORMAL,   100, 5
	move BODY_SLAM,    PARALYZE_SIDE_EFFECT2,       85, NORMAL,   100, 2
	move WRAP,         TRAPPING_EFFECT,             15, NORMAL,    75, 4
	move TAKE_DOWN,    RECOIL_EFFECT,               80, NORMAL,   100, 3
	move THRASH,       THRASH_PETAL_DANCE_EFFECT,   90, NORMAL,   100, 1
	move DOUBLE_EDGE,  RECOIL_EFFECT,              110, NORMAL,   100, 2
	move TAIL_WHIP,    DEFENSE_DOWN1_EFFECT,         0, BIRD,     100, 4
	move POISON_STING, POISON_SIDE_EFFECT1,         30, POISON,   100, 5
	move TWINEEDLE,    TWINEEDLE_EFFECT,            25, BUG,      100, 4
	move PIN_MISSILE,  TWO_TO_FIVE_ATTACKS_EFFECT,  15, BUG,      100, 3
	move LEER,         DEFENSE_DOWN1_EFFECT,         0, BIRD,   100, 5
	move BITE,         FLINCH_SIDE_EFFECT1,         60, NORMAL,   100, 4
	move GROWL,        ATTACK_DOWN1_EFFECT,          0, BIRD,   100, 4
	move ROAR,         SWITCH_AND_TELEPORT_EFFECT,   0, BIRD,   100, 2
	move SING,         SLEEP_EFFECT,                 0, BIRD,    80, 2
	move SUPERSONIC,   CONFUSION_EFFECT,             0, BIRD,   100, 2 ; 30
	move SONICBOOM,    SPECIAL_DAMAGE_EFFECT,        1, ELECTRIC,   100, 5 ; dmg = lv, + type
	move DISABLE,      DISABLE_EFFECT,               0, PSYCHIC,   100, 2
	move ACID,         DEFENSE_DOWN_SIDE_EFFECT,    60, POISON,   100, 3
	move EMBER,        BURN_SIDE_EFFECT2,           40, FIRE,     100, 5
	move FLAMETHROWER, BURN_SIDE_EFFECT2,           95, FIRE,     100, 2
	move MIST,         MIST_EFFECT,                  0, ICE,      100, 2
	move WATER_GUN,    NO_ADDITIONAL_EFFECT,        40, WATER,    100, 4
	move HYDRO_PUMP,   NO_ADDITIONAL_EFFECT,       150, WATER,    100, 1
	move SURF,         NO_ADDITIONAL_EFFECT,        95, WATER,    100, 2
	move ICE_BEAM,     FREEZE_SIDE_EFFECT,          95, ICE,      100, 2
	move BLIZZARD,     FREEZE_SIDE_EFFECT,         140, ICE,      100, 1
	move PSYBEAM,      CONFUSION_SIDE_EFFECT,       65, PSYCHIC,  100, 3
	move BUBBLEBEAM,   SPEED_DOWN_SIDE_EFFECT,      65, WATER,    100, 3
	move AURORA_BEAM,  ATTACK_DOWN_SIDE_EFFECT,     65, ICE,      100, 3
	move HYPER_BEAM,   HYPER_BEAM_EFFECT,          150, NORMAL,   100, 2
	move PECK,         FLINCH_SIDE_EFFECT1,         35, FLYING,   100, 4 ;40
	move DRILL_PECK,   NO_ADDITIONAL_EFFECT,        80, FLYING,   100, 2
	move SUBMISSION,   RECOIL_EFFECT,              100, FIGHTING, 100, 2
	move LOW_KICK,     FLINCH_SIDE_EFFECT2,         50, FIGHTING, 100, 3
	move COUNTER,      NO_ADDITIONAL_EFFECT,         1, FIGHTING, 100, 4
	move SEISMIC_TOSS, SPECIAL_DAMAGE_EFFECT,        1, FIGHTING, 100, 5 ; dmg = lv, + type
	move STRENGTH,     NO_ADDITIONAL_EFFECT,        80, NORMAL,   100, 2
	move ABSORB,       DRAIN_HP_EFFECT,             30, GRASS,    100, 5
	move MEGA_DRAIN,   DRAIN_HP_EFFECT,             70, GRASS,    100, 2
	move LEECH_SEED,   LEECH_SEED_EFFECT,            0, GRASS,    100, 2
	move GROWTH,       SPECIAL_UP1_EFFECT,           0, BIRD,	  100, 4
	move RAZOR_LEAF,   NO_ADDITIONAL_EFFECT,        55, GRASS,    100, 3 ; high crit chance
	move SOLARBEAM,    CHARGE_EFFECT,              150, GRASS,    100, 4
	move POISONPOWDER, POISON_EFFECT,                0, POISON,   100, 2
	move STUN_SPORE,   PARALYZE_EFFECT,              0, GRASS,     75, 2
	move SLEEP_POWDER, SLEEP_EFFECT,                 0, GRASS,     75, 2
	move PETAL_DANCE,  THRASH_PETAL_DANCE_EFFECT,   70, GRASS,    100, 1 ; 50
	move STRING_SHOT,  SPEED_DOWN1_EFFECT,           0, BUG,      100, 5
	move DRAGON_RAGE,  SPECIAL_DAMAGE_EFFECT,        1, DRAGON,   100, 5 ; dmg = lv, + type
	move FIRE_SPIN,    TRAPPING_EFFECT,             15, FIRE,      75, 3
	move THUNDERSHOCK, PARALYZE_SIDE_EFFECT1,       40, ELECTRIC, 100, 5
	move THUNDERBOLT,  PARALYZE_SIDE_EFFECT1,       95, ELECTRIC, 100, 2
	move THUNDER_WAVE, PARALYZE_EFFECT,              0, ELECTRIC,  75, 2
	move THUNDER,      PARALYZE_SIDE_EFFECT1,      150, ELECTRIC, 100, 1
	move ROCK_THROW,   NO_ADDITIONAL_EFFECT,        50, ROCK,     100, 4
	move EARTHQUAKE,   NO_ADDITIONAL_EFFECT,       100, GROUND,   100, 2
	move FISSURE,      OHKO_EFFECT,                  1, GROUND,    30, 1
	move DIG,          CHARGE_EFFECT,              100, GROUND,   100, 2
	move TOXIC,        POISON_EFFECT,                0, POISON,   100, 2
	move CONFUSION,    CONFUSION_SIDE_EFFECT,       50, PSYCHIC,  100, 4
	move PSYCHIC_M,    SPECIAL_DOWN_SIDE_EFFECT,    90, PSYCHIC,  100, 2
	move HYPNOSIS,     SLEEP_EFFECT,                 0, PSYCHIC,   75, 2
	move MEDITATE,     ATTACK_UP1_EFFECT,            0, BIRD,	  100, 5 ; 60
	move MACH_STRIKE,  NO_ADDITIONAL_EFFECT,        80, NORMAL,   100, 2
	move QUICK_ATTACK, NO_ADDITIONAL_EFFECT,        40, NORMAL,   100, 3
	move RAGE,         RAGE_EFFECT,                 20, NORMAL,   100, 2
	move TELEPORT,     SWITCH_AND_TELEPORT_EFFECT,   0, PSYCHIC,  100, 1
	move NIGHT_SHADE,  SPECIAL_DAMAGE_EFFECT,        0, GHOST,    100, 5 ; dmg = lv, + type
	move MIMIC,        MIMIC_EFFECT,                 0, NORMAL,   100, 1
	move SCREECH,      DEFENSE_DOWN2_EFFECT,         0, NORMAL,   100, 2
	move DOUBLE_TEAM,  EVASION_UP1_EFFECT,           0, BIRD,	  100, 2
	move RECOVER,      HEAL_EFFECT,                  0, NORMAL,   100, 2
	move HARDEN,       DEFENSE_UP1_EFFECT,           0, BIRD,	  100, 5
	move MINIMIZE,     EVASION_UP1_EFFECT,           0, BIRD,	  100, 2
	move SMOKESCREEN,  ACCURACY_DOWN1_EFFECT,        0, NORMAL,   100, 3
	move CONFUSE_RAY,  CONFUSION_EFFECT,             0, GHOST,    100, 2
	move WITHDRAW,     DEFENSE_UP1_EFFECT,           0, BIRD,	  100, 5
	move DEFENSE_CURL, DEFENSE_UP1_EFFECT,           0, BIRD,	  100, 5
	move BARRIER,      DEFENSE_UP2_EFFECT,           0, BIRD,	  100, 2
	move LIGHT_SCREEN, LIGHT_SCREEN_EFFECT,          0, NORMAL,   100, 1
	move HAZE,         HAZE_EFFECT,                  0, ICE,      100, 2
	move REFLECT,      REFLECT_EFFECT,               0, NORMAL,   100, 1
	move FOCUS_ENERGY, FOCUS_ENERGY_EFFECT,          0, NORMAL,   100, 1
	move BIDE,         BIDE_EFFECT,                  0, NORMAL,   100, 3
	move METRONOME,    METRONOME_EFFECT,             0, NORMAL,   100, 5
	move MIRROR_MOVE,  MIRROR_MOVE_EFFECT,           0, BIRD,     100, 4
	move SELFDESTRUCT, EXPLODE_EFFECT,             170, NORMAL,   100, 1
	move EGG_BOMB,     NO_ADDITIONAL_EFFECT,       100, FLYING,   100, 2
	move LICK,         PARALYZE_SIDE_EFFECT2,       20, GHOST,    100, 5
	move SMOG,         POISON_SIDE_EFFECT2,         20, POISON,   100, 5
	move SLUDGE,       POISON_SIDE_EFFECT2,         70, POISON,   100, 3
	move CUDGEL,   	   FLINCH_SIDE_EFFECT1,         65, ROCK,     100, 3
	move FIRE_BLAST,   BURN_SIDE_EFFECT2,          150, FIRE,     100, 1
	move WATERFALL,    NO_ADDITIONAL_EFFECT,        80, WATER,    100, 3
	move CLAMP,        TRAPPING_EFFECT,             35, WATER,     75, 2
	move SWIFT,        SWIFT_EFFECT,                60, BIRD,     100, 3
	move SKULL_BASH,   CHARGE_EFFECT,              150, NORMAL,   100, 4
	move SPIKE_CANNON, TWO_TO_FIVE_ATTACKS_EFFECT,  20, NORMAL,   100, 3
	move CONSTRICT,    SPEED_DOWN_SIDE_EFFECT,      30, NORMAL,   100, 5
	move AMNESIA,      SPECIAL_UP2_EFFECT,           0, BIRD,	   50, 2
	move KINESIS,      ACCURACY_DOWN1_EFFECT,        0, BIRD,  	  100, 3
	move SOFTBOILED,   HEAL_EFFECT,                  0, NORMAL,   100, 2 ; renamed to nurture
	move HI_JUMP_KICK, JUMP_KICK_EFFECT,           120, FIGHTING,  75, 3
	move GLARE,        PARALYZE_EFFECT,              0, NORMAL,    80, 2
	move DREAM_EATER,  DREAM_EATER_EFFECT,         100, PSYCHIC,  100, 2
	move POISON_GAS,   POISON_EFFECT,                0, POISON,   100, 3
	move BARRAGE,      TWO_TO_FIVE_ATTACKS_EFFECT,  15, NORMAL,   100, 3
	move LEECH_LIFE,   DRAIN_HP_EFFECT,             60, BUG,      100, 3
	move LOVELY_KISS,  SLEEP_EFFECT,                 0, NORMAL,    80, 2
	move SKY_ATTACK,   CHARGE_EFFECT,              150, FLYING,   100, 4
	move TRANSFORM,    TRANSFORM_EFFECT,             0, NORMAL,   100, 1
	move BUBBLE,       SPEED_DOWN_SIDE_EFFECT,      20, WATER,    100, 5
	move DIZZY_PUNCH,  CONFUSION_SIDE_EFFECT,       70, FIGHTING, 100, 3
	move SPORE,        SLEEP_EFFECT,                 0, GRASS,    100, 1
	move FLASH,        ACCURACY_DOWN1_EFFECT,        0, NORMAL,   100, 3
	move PSYWAVE,      SPECIAL_DAMAGE_EFFECT,        1, PSYCHIC,  100, 5 ; MOD: now just a dmg = lvl, + type
	move SPLASH,       SPLASH_EFFECT,                0, NORMAL,   100, 1 ; get magikarp to struggling asap
	move LIQUID_FORM,  DEFENSE_UP2_EFFECT,           0, BIRD,	  100, 2
	move CRABHAMMER,   NO_ADDITIONAL_EFFECT,        90, WATER,    100, 2 ; high crit chance
	move EXPLOSION,    EXPLODE_EFFECT,             170, FIRE,     100, 1
	move FURY_SWIPES,  TWO_TO_FIVE_ATTACKS_EFFECT,  18, NORMAL,   100, 3
	move BOOMERANG,    ATTACK_TWICE_EFFECT,         50, ROCK,     100, 2
	move REST,         HEAL_EFFECT,                  0, BIRD,  	  100, 1
	move ROCK_SLIDE,   FLINCH_SIDE_EFFECT1,			85, ROCK,     100, 2
	move HYPER_FANG,   FLINCH_SIDE_EFFECT1,         80, NORMAL,   100, 2
	move SHARPEN,      ATTACK_UP1_EFFECT,            0, BIRD,	  100, 5
	move CONVERSION,   CONVERSION_EFFECT,            0, NORMAL,   100, 2
	move TRI_ATTACK,   NO_ADDITIONAL_EFFECT,        90, NORMAL,   100, 3
	move SUPER_FANG,   SUPER_FANG_EFFECT,            1, NORMAL,   100, 2
	move SLASH,        NO_ADDITIONAL_EFFECT,        70, NORMAL,   100, 2 ; high crit chance
	move SUBSTITUTE,   SUBSTITUTE_EFFECT,            0, NORMAL,   100, 2
	;MODS
	;move, 			   anim,  						pow, type,   acc, pp
	move PHANTASM,	   TWO_TO_FIVE_ATTACKS_EFFECT,  20, GHOST,	  100, 3
	move DRAGONFIRE,   BURN_SIDE_EFFECT2,  			75, DRAGON,	  100, 3
	move DIRE_STING,   BURN_SIDE_EFFECT2,  			60, BUG,	  100, 3
	move VAMPIRE_BITE, DRAIN_HP_EFFECT,  		   150, BUG,	  100, 1
	move CHILLY_GUST,  SPEED_DOWN_SIDE_EFFECT,      40, ICE,	  100, 5
	move FIREBALL,     BURN_SIDE_EFFECT2,           70, FIRE,	  100, 3
	move CORRODE,      DEFENSE_DOWN_SIDE_EFFECT,   100, POISON,	  100, 2
	move QUICKSAND,    SPEED_DOWN_SIDE_EFFECT,      40, GROUND,	  100, 5
	move SKIP_STONE,   TWO_TO_FIVE_ATTACKS_EFFECT,  20, ROCK,	  100, 3
	move NIGHT_TERROR, CHARGE_EFFECT,		 	   100, GHOST,	  100, 2
	move NIGHT_TERROR_START_ANIM, NO_ADDITIONAL_EFFECT,	   100, GHOST,	  100, 2 ; this is required for jank I'm very sorry
	move BUG_OUT, 	   FLINCH_SIDE_EFFECT2,	   		40, BUG,	  100, 4
	move SECOND_WIND,  SECOND_WIND_EFFECT,			 0,	FIGHTING, 100, 1 ; restores all other PP on this mon
	move MIND_SPARK,   FLINCH_SIDE_EFFECT2,			30,	PSYCHIC,  100, 4 ; 
	move STAMPEDE, 	   JUMP_KICK_EFFECT,		   120,	NORMAL,   75, 3 ; 
	move FORKING_BOLT, ATTACK_TWICE_EFFECT,       	30, ELECTRIC, 100, 4
	move SUMMON_SWARM, PARALYZE_SIDE_EFFECT1,       90, BUG, 	  100, 2
	move SHATTER, 	   RECOIL_EFFECT,       		80, ROCK, 	  100, 3,
	move VENOM_SKEWER, POISON_SIDE_EFFECT2,       	80, POISON,   100, 3,
	;END MODS	
	move STRUGGLE,     RECOIL_EFFECT,               50, BIRD,     100, 40 ; STRUGGLE MUST GO LAST
