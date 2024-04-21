.nds
.thumb

.include "armips/include/animscriptcmd.s"
.include "armips/include/abilities.s"
.include "armips/include/itemnums.s"
.include "armips/include/monnums.s"
.include "armips/include/movenums.s"

.create "build/move/move_anim/0_928", 0

a010_928:
    callfunction 33, 5, 0, 1, 0, 12, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    initresources 0, 1, 1, 1, 1, 1, 0, 0
    loadresources 0, 8
    loadpalette 0, 8, 1
    loadcell 0, 8
    loadcellanm 0, 8
    addsomething 0, 7, 8, 8, 8, 8, 0, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN", "NaN"
	playcry 7, -117, 100
	waitcry 0
    playcry 8, -117, 127
    wait 8
    waitstate
    freeresources 0
    callfunction 33, 5, 0, 1, 12, 0, 0, "NaN", "NaN", "NaN", "NaN", "NaN"
    waitstate
    end

.close