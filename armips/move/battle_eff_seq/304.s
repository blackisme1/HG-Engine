.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// Knock Off

.create "build/move/battle_eff_seq/0_304", 0

a030_304:
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x20000036
SkipEffect:
    critcalc
    damagecalc
    endscript

.close
