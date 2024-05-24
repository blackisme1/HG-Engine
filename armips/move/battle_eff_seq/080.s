.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_080", 0

a030_080:
    critcalc
    damagecalc
	ifmonstat IF_EQUAL, BATTLER_DEFENDER, MON_DATA_HP, 0, knockedOut
	changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x2000001D
knockedOut:
    endscript

.close