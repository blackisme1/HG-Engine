.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_362", 0

// Mind Blown

a001_362:
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_ATTACKER
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x30, VAR_HP_TEMP
    changevar VAR_OP_MUL, VAR_HP_TEMP, 0xFFFFFFFF
    damagediv 32, 2
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x40
    gotosubscript 2
    printmessage 0x117, 0x2, 0x1, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript
.close