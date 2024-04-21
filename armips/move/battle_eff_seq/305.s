.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

// Knock Off

.create "build/move/battle_eff_seq/0_305", 0

a030_305:
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x20000076
SkipEffect:
    critcalc
    damagecalc
    endscript

.close
