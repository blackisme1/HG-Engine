.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_312", 0

// Meteor Beam

a030_312:
    ifmonstat IF_MASK, BATTLER_ATTACKER, MON_DATA_STATUS_2, 0x1000, damageCalc
    checkitemeffect 0x0, BATTLER_ATTACKER, 0x63, PowerHerb
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x4000000C
    changevar VAR_OP_SET, VAR_ADD_STATUS2, ADD_STATUS_ATTACKER | SPATK_UP
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x23
    endscript
PowerHerb:
    gotosubscript 292
    if IF_EQUAL, VAR_DEFENDER, 0xFF, clearStuffIguess
damageCalc:
    critcalc
    damagecalc
clearStuffIguess:
    gotosubscript 259
    endscript

.close
