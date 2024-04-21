.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_326", 0

// Mind Blown

a030_326:
    changevar VAR_OP_SET, VAR_ADD_STATUS2, ADD_STATUS_MIND_BLOWN | ADD_STATUS_ATTACKER
	critcalc
	damagecalc
	endscript
.close