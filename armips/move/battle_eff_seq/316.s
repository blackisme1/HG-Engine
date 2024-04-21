.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_316", 0

// Take Heart
a030_316:
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x4000003A
	changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x20000073
    endscript

.close