.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_029", 0

a030_029:
    setmultihit 5, 0xDD
    changevar VAR_OP_SET, VAR_SUCCESSIVE_HIT, 0x1
    critcalc
    damagecalc
    endscript

.close
