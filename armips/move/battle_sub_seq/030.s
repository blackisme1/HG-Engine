.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_030", 0

// attacker was defrosted by a move it used

a001_030:
    changemondatabyvalue VAR_OP_CLEARMASK, BATTLER_ATTACKER, MON_DATA_STATUS_1, 0x20 // frozen bitmask
    printmessage 117, TAG_NICK_MOVE, BATTLER_ATTACKER, BATTLER_ATTACKER, "NaN", "NaN", "NaN", "NaN"
    waitmessage
    setstatusicon BATTLER_ATTACKER, 0x0
    wait 0x1E
    endscript

.close
