.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_308", 0

// Hurricane

a030_308:
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x80000007
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x4
    critcalc
    damagecalc
    endscript

.close
