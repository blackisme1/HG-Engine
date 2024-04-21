.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_309", 0

a030_309:
    if IF_MASK, VAR_SIDE_EFFECT_OPPONENT, 0x80, a045_309
    changevar VAR_OP_SETMASK, VAR_SIDE_EFFECT_OPPONENT, 0x80
    preparemessage 0x435, 0x1, 0x13, "NaN", "NaN", "NaN", "NaN", "NaN"
    changevar VAR_OP_SET, VAR_ADD_STATUS2, 0x2000005A
    critcalc
    damagecalc
    endscript
a045_309:
    critcalc
    damagecalc
    endscript
.close