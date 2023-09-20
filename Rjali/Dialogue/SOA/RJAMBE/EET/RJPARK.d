
//  Park Amber EET ToB

EXTEND_BOTTOM M#AMB25P 0
IF ~G("RJParkAM",0)
    G("M#AmberRomanceActive",2)~ THEN REPLY @0 GOTO RJParkAmberTOB
END

APPEND M#AMB25P

IF ~~ THEN BEGIN RJParkAmberTOB
SAY @600
++ @601 DO ~SetGlobal("RJParkAM","GLOBAL",1)
            SetGlobal("RJJoin","LOCALS",1)
            IncrementGlobal("RJCntParked","GLOBAL",1)
            EscapeAreaMove("AR1305",1063,365,6)~ EXIT
END

END
