.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_360", 0

// Strength Sap

a001_358:
    gotosubscript 76
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_DEFENDER, MON_DATA_ATTACK, VAR_HP_TEMP
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_ATTACKER
    gotosubscript 111
	endscript
.close