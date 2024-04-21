.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_324", 0

// Electro Ball

a030_324:
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_ATTACKER, MON_DATA_ATTACK, VAR_MOVE_TEMP
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_DEFENDER, MON_DATA_ATTACK, VAR_TEMP_WORK
    changevar VAR_OP_MUL, VAR_MOVE_TEMP, 4096
    changevar VAR_OP_DIV, VAR_MOVE_TEMP, VAR_TEMP_WORK
    if IF_GREATER, VAR_MOVE_TEMP, 4096/4, _150bp
    if IF_GREATER, VAR_MOVE_TEMP, 4096/3, _120bp
    if IF_GREATER, VAR_MOVE_TEMP, 4096/2, _80bp
    if IF_GREATER, VAR_MOVE_TEMP, 4096, _60bp
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