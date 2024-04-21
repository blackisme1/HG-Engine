.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_107", 0

a030_107:
    checksubstitute BATTLER_DEFENDER, _0050
    ifmonstat IF_MASK, BATTLER_DEFENDER, MON_DATA_STATUS_2, 0x8000000, _0050
    changevar VAR_OP_SET, VAR_ADD_STATUS1,  0x08 | ADD_STATUS_DEFENDER
    changevar VAR_OP_SET, VAR_ADD_STATUS1, 0x20000021
    endscript
_0050:
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
    endscript

.close
