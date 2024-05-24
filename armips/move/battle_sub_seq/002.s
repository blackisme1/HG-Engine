.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_002", 0

a001_002:
    if IF_MASK, VAR_SERVER_STATUS1, 0x40, _0044
    playmovesoundeffect BATTLER_xFF
    monflicker 0xFF
    waitmessage
    if IF_EQUAL, VAR_CLIENT_WORKING_COUNT, 0x0, _0044
    gotosubscript 264
_0044:
    changevar VAR_OP_CLEARMASK, VAR_SERVER_STATUS1, 0x40
    healthbarupdate BATTLER_xFF
    waitmessage
    datahpupdate BATTLER_xFF
    tryfaintmon BATTLER_xFF
    if IF_GREATER, VAR_HP_TEMP, 0x0, _0094
    changevar2 VAR_OP_SET, VAR_ASSURANCE_DAMAGE, VAR_HP_TEMP
a001_063:
	ifmonstat IF_NOTMASK, BATTLER_ATTACKER, MON_DATA_STATUS_2, 0x7, _0094
	printmessage 0x31D, 0x0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
    waitmessage
    wait 0x1E
    clearsomeflag BATTLER_ATTACKER
    checkshouldleavewith1hp BATTLER_ATTACKER
    if IF_EQUAL, VAR_HP_TEMP, 0x0, _0068
    damagediv VAR_HP_TEMP, 2
    abilitycheck 0x0, BATTLER_ATTACKER, ABILITY_ROCK_HEAD, _0094
    abilitycheck 0x0, BATTLER_ATTACKER, ABILITY_MAGIC_GUARD, _0094
    changevar2 VAR_OP_SET, VAR_BATTLER_SOMETHING, VAR_ATTACKER
    changevar2 VAR_OP_SET, VAR_HP_TEMP, VAR_HIT_DAMAGE
_0068:
    changevar VAR_OP_SETMASK, VAR_SERVER_STATUS1, 0x40
a001_202:
    if IF_MASK, VAR_SERVER_STATUS1, 0x40, _2044
    playmovesoundeffect BATTLER_xFF
    monflicker 0xFF
    waitmessage
    if IF_EQUAL, VAR_CLIENT_WORKING_COUNT, 0x0, _2044
    gotosubscript 264
_2044:
    changevar VAR_OP_CLEARMASK, VAR_SERVER_STATUS1, 0x40
    healthbarupdate BATTLER_xFF
    waitmessage
    datahpupdate BATTLER_xFF
    tryfaintmon BATTLER_xFF
    if IF_GREATER, VAR_HP_TEMP, 0x0, _0094
    changevar2 VAR_OP_SET, VAR_ASSURANCE_DAMAGE, VAR_HP_TEMP
_0094:
    endscript

.close
