
//  Park Amber Non-EET ToB

APPEND M#AMB25P

IF WEIGHT #-95 ~G("RJParkAM",0)
                !G("M#AmberRomanceActive",2)~ RJDropAmberTOB
SAY @19
++ @20 DO ~EscapeAreaDestroy(5)~ EXIT
END

IF WEIGHT #-95 ~G("RJParkAM",0)
                G("M#AmberRomanceActive",2)~ RJParkAmberTOB
SAY @600
++ @601 DO ~SetGlobal("RJParkAM","GLOBAL",1)
            SetGlobal("RJJoin","LOCALS",1)
            IncrementGlobal("RJCntParked","GLOBAL",1)
            EscapeAreaMove("AR1305",1063,365,6)~ EXIT
END

END
