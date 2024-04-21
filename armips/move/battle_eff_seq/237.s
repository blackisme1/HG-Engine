.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_237", 0

a030_237:
    wringoutdamagecalc
	changevar VAR_OP_SET, VAR_DAMAGE_MULT, 25/2
    critcalc
    damagecalc
    endscript
.close
