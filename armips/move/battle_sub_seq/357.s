.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_357", 0

// Jungle Healing

a001_357:
    printattackmessage
    waitmessage
	setstatusicon BATTLER_ATTACKER, 0x0
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_ATTACKER, 0x30, VAR_HP_TEMP
    damagediv 32, 4
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_ATTACKER
    gotosubscript 111
    
    ifmonstat IF_MASK, BATTLER_ATTACKER_PARTNER, MON_DATA_MOVE_STATE, 0x00000040, _endAll
    ifmonstat IF_MASK, BATTLER_ATTACKER_PARTNER, MON_DATA_MOVE_STATE, 0x00000080, _endAll
    ifmonstat IF_MASK, BATTLER_ATTACKER_PARTNER, MON_DATA_MOVE_STATE, 0x00040000, _endAll
    ifmonstat IF_MASK, BATTLER_ATTACKER_PARTNER, MON_DATA_MOVE_STATE, 0x20000000, _endAll
	ifmonstat IF_MASK, BATTLER_ATTACKER_PARTNER, MON_DATA_HP, 0x0, _endAll
    setstatusicon BATTLER_ATTACKER_PARTNER, 0x0
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_ATTACKER_PARTNER, 0x30, VAR_HP_TEMP
    damagediv 32, 4

// subscript 111
a001_111:
    changemondatabyvar VAR_OP_GET_RESULT, BATTLER_ATTACKER_PARTNER, 0x30, VAR_CALCULATION_WORK
    ifmonstat2 IF_EQUAL, BATTLER_ATTACKER_PARTNER, VAR_ATTACKER_STATUS, 0x9, _0094
    playanimation BATTLER_ATTACKER_PARTNER
    waitmessage
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x40
    if IF_NOTMASK, VAR_SERVER_STATUS2, 0x100, _006C
    setstatus2effect BATTLER_ATTACKER_PARTNER, 0xE
    waitmessage
    
// subscript 2
_006C:
    if IF_MASK, VAR_SERVER_STATUS1, 0x40, _0044
    playmovesoundeffect BATTLER_ATTACKER_PARTNER
    monflicker BATTLER_ATTACKER_PARTNER
    waitmessage
    if IF_EQUAL, VAR_CLIENT_WORKING_COUNT, 0x0, _0044
    gotosubscript 264
    
_0044:
    changevar VAR_OP_CLEARMASK, VAR_SERVER_STATUS1, 0x40
    healthbarupdate BATTLER_ATTACKER_PARTNER
    waitmessage
    datahpupdate BATTLER_ATTACKER_PARTNER
    tryfaintmon BATTLER_ATTACKER_PARTNER
    if IF_GREATER, VAR_HP_TEMP, 0x0, _end
    changevar2 VAR_OP_SET, VAR_ASSURANCE_DAMAGE, VAR_HP_TEMP
_end:
    printmessage 0xB8, 0x2, BATTLER_ATTACKER_PARTNER, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    endscript
    
_0094:
    wait 0x1E
    printmessage 0xBB, 0x2, BATTLER_ATTACKER_PARTNER, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x80000000
    endscript
    
_endAll:
    endscript

.close