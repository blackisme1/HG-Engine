.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_329", 0

// Beak Blast

a030_329:
    if IF_NOTEQUAL, VAR_PHYSICAL_DAMAGE, 0x0, _0044
    if IF_NOTEQUAL, VAR_SPECIAL_DAMAGE, 0x0, _0044
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x80000003
	critcalc
	damagecalc
	endscript
_0044:
	critcalc
	damagecalc
	endscript
.close