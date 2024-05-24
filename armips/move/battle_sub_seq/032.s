.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_032", 0

a001_026:
    abilitycheck 0x0, BATTLER_WORK, ABILITY_MAGIC_GUARD, _00A8
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_WORK, 0x30, VAR_HP_TEMP
    damagediv VAR_HP_TEMP, 8
_0054:
    changevar VAR_OP_MUL, VAR_HP_TEMP, -1
    printmessage 0x82, 0x2, 0xFF, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    setstatus2effect BATTLER_WORK, 0x5
    waitmessage
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x40
    jumptosubseq 2 // deal damage + update hp bar sub seq
_00A8:
    endscript

.close
