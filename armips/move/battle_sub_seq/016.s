.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_016", 0

a001_016:
    if IF_EQUAL, VAR_WAS_MOVE_CRITICAL, 0x1, _00D0
    printmessage 0x306, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
_00D0:
    endscript

.close