.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_020", 0

a001_020:
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_WORK, 0x30, VAR_HP_TEMP
    damagediv VAR_HP_TEMP, 8 // sleep heals 1/8th health
    printmessage 0x12B, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    setstatus2effect BATTLER_ATTACKER, 0x1
    waitmessage
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x40
    jumptosubseq 2
    endscript

.close
