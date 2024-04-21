.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_sub_seq/1_358", 0

// Skulk Out

a001_358:
    tryswitchinmon BATTLER_ATTACKER, 0x1, _end // If 1 mon left, fail the move entirely

    // prints attack message/play moveanim 
    gotosubscript 76

_NaturalCureCheck:
    gotosubscript 76
    trynaturalcure BATTLER_ATTACKER, _Switch 

_Switch:
    deletepokemon BATTLER_ATTACKER
    waitmessage
    preparehpgaugeslide BATTLER_ATTACKER
    waitmessage

a001_010:
    showmonlist
    waitformonselection

_0008:
    switchindataupdate BATTLER_REPLACE
    loadballgfx
    initballgauge BATTLER_REPLACE
    waitmessage
    sentoutmessage BATTLER_REPLACE
    waitmessage
    deleteballgauge BATTLER_REPLACE
    waitmessage
    deleteballgfx
    pokemonappear BATTLER_REPLACE
    waitwithoutbuttonpress 0x48
    hpgaugeslidein BATTLER_REPLACE
    waitmessage

    gotosubscript 99
    if IF_NOTMASK, VAR_SERVER_STATUS1, 0xF000000, _007C
    gotosubscript 6

_007C:
    playanimation BATTLER_REPLACE
	critcalc
	damagecalc
	
    jumpifcantswitch _0008
    endscript

_end:
	gotosubscript 122
    changevar VAR_OP_SETMASK, VAR_MOVE_STATUS, 0x40
    endscript

.close