.nds
.thumb

.include "armips/include/battlescriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/battle_eff_seq/0_319", 0

a030_319:
	setstatus2effect BATTLER_DEFENDER, 0xA
    psychup
	critcalc
	damagecalc
    endscript
.close
