.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_315", 0

// Jungle Healing
a030_315:
    changevar VAR_OP_SET, VAR_ADD_STATUS1, ADD_STATUS_JUNGLE_HEALING | ADD_STATUS_ATTACKER
    endscript
.close