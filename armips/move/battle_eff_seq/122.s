.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_122", 0

a030_324:
    random 4, 0
    if IF_GREATER, VAR_CALCULATION_WORK, 4, _150bp
    if IF_GREATER, VAR_CALCULATION_WORK, 3, _120bp
    if IF_GREATER, VAR_CALCULATION_WORK, 2, _80bp
    if IF_GREATER, VAR_CALCULATION_WORK, 1, _60bp
_40bp:
    changevar VAR_OP_ADD, VAR_ABILITY_TEMP, 40
    goto _end
_60bp:
    changevar VAR_OP_ADD, VAR_ABILITY_TEMP, 60
    goto _end
_80bp:
    changevar VAR_OP_ADD, VAR_ABILITY_TEMP, 80
    goto _end
_120bp:
    changevar VAR_OP_ADD, VAR_ABILITY_TEMP, 120
    goto _end
_150bp:
    changevar VAR_OP_ADD, VAR_ABILITY_TEMP, 150
    goto _end
_end:
    critcalc
    damagecalc
    endscript
.close
