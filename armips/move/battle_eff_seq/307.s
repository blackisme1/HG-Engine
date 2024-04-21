.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_307", 0

// Stored Power and Power Trip
a030_307:
	changemondatabyvar VAR_OP_ADD, BATTLER_ATTACKER, MON_DATA_99, MON_DATA_STAT_STAGE_ATTACK
	changemondatabyvar VAR_OP_ADD, BATTLER_ATTACKER, MON_DATA_99, MON_DATA_STAT_STAGE_DEFENSE
	changemondatabyvar VAR_OP_ADD, BATTLER_ATTACKER, MON_DATA_99, MON_DATA_STAT_STAGE_SPEED
	changemondatabyvar VAR_OP_ADD, BATTLER_ATTACKER, MON_DATA_99, MON_DATA_STAT_STAGE_SPATK
	changemondatabyvar VAR_OP_ADD, BATTLER_ATTACKER, MON_DATA_99, MON_DATA_STAT_STAGE_SPDEF
	changemondatabyvar VAR_OP_ADD, BATTLER_ATTACKER, MON_DATA_99, MON_DATA_STAT_STAGE_ACCURACY
	changemondatabyvar VAR_OP_ADD, BATTLER_ATTACKER, MON_DATA_99, MON_DATA_STAT_STAGE_EVASION
	changevar VAR_OP_SUB_TO_ZERO, MON_DATA_99, 42
	changevar VAR_OP_MUL, MON_DATA_99, 20
	changemondatabyvar VAR_OP_GET_RESULT, BATTLER_ATTACKER, MON_DATA_99, VAR_ABILITY_TEMP
	
	critcalc
	damagecalc
	endscript
.close