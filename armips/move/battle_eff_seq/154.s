.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_154", 0

a030_154:
	changevar VAR_OP_ADD, VAR_ABILITY_TEMP, 10
    beatupdamagecalc
    critcalc
    damagecalc
    endscript

.close
