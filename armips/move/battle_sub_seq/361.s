.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_361", 0

// Toxic Thread

a001_361:
    gotosubscript 47
	changevar VAR_OP_SET, VAR_ADD_EFFECT_ATTRIBUTE, SPEED_DOWN
    gotosubscript 12
	endscript
.close