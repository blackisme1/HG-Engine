.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_364", 0

// Victory Dance

a001_300:
    //atk
    ifmonstat IF_NOTEQUAL, BATTLER_ADDL_EFFECT, MON_DATA_STAT_STAGE_ATTACK, 12, StatusEffect
    //def
    ifmonstat IF_NOTEQUAL, BATTLER_ADDL_EFFECT, MON_DATA_STAT_STAGE_DEFENSE, 12, StatusEffect
    //spe
    ifmonstat IF_EQUAL, BATTLER_ADDL_EFFECT, MON_DATA_STAT_STAGE_SPEED, 12, NoStatusEffect

StatusEffect:
    gotosubscript 76
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x200000
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x4001
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS2, 0x80
    //atk up
    changevar VAR_OP_SET, VAR_ADD_EFFECT_ATTRIBUTE, ATTACK_UP
    gotosubscript 12
    //def up
    changevar VAR_OP_SET, VAR_ADD_EFFECT_ATTRIBUTE, DEFENSE_UP
    gotosubscript 12
    //spe
    changevar VAR_OP_SET, VAR_ADD_EFFECT_ATTRIBUTE, SPEED_UP
    gotosubscript 12
    changevar VAR_OP_CLEARMASK, VAR_SERVER_STATUS2, 0x2
    changevar VAR_OP_CLEARMASK, VAR_SERVER_STATUS2, 0x80
    endscript

NoStatusEffect:
    printattackmessage
    waitmessage
    wait 0x1E
    printmessage 0x300, 0x2, 0x7, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x80000000
    endscript

.close