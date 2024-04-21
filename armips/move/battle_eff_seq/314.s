.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_314", 0

// Life Dew
a030_314:
    changevar VAR_OP_SET, VAR_ADD_STATUS1, ADD_STATUS_LIFE_DEW | ADD_STATUS_ATTACKER
    endscript

.close