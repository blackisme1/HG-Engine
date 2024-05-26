.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_236", 0

a030_236:
	getmoveparameter, MOVE_DATA_BASE_POWER
	if IF_EQUAL, VAR_CALCULATION_WORK, 0, noDamage
	critcalc
	damagecalc
noDamage:
	changevar VAR_OP_SET, VAR_ADD_STATUS1, 0xA0000084
    endscript

.close
