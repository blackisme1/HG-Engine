.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_306", 0

// Venom Drench

a030_306:
    ifmonstat IF_MASK, BATTLER_DEFENDER, MON_DATA_STATUS_1, 0x88, poison
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
    endscript

poison:
    changevar VAR_OP_SET, VAR_ADD_STATUS1,  ADD_STATUS_V_CREATE | ADD_STATUS_DEFENDER
	endscript

.close