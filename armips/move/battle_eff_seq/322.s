.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_322", 0

// Heckle
a030_322:
	trysuckerpunch noAttack
	changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x80000007
	endscript
noAttack:
	changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
	endscript
.close