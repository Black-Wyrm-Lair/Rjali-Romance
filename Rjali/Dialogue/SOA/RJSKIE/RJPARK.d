
//  Park NPCs in deArnise Keep

//  Skie SoA

EXTEND_BOTTOM 1XSKIEP 15
IF ~G("RjaliSkieScout",2)
    G("SkieRomanceActive",2)
    !G("KeepPlot",0)~ THEN REPLY @0 GOTO RJParkSkieSOA
END

APPEND 1XSKIEP

IF ~~ THEN BEGIN RJParkSkieSOA
  SAY @15
  IF ~~ THEN DO ~SetGlobal("RJParkSK","GLOBAL",1)
                 IncrementGlobal("RJCntParked","GLOBAL",1)
                 EscapeAreaMove("AR1307",305,919,12)~ EXIT
END

IF WEIGHT #-1 ~G("RJParkSK",1)~ THEN BEGIN RJVisitSkieSOA
  SAY @16
  IF ~~ THEN REPLY @13 EXIT
  IF ~~ THEN REPLY @17 DO ~
                 SetGlobal("RJParkSK","GLOBAL",0)
                 IncrementGlobal("RJCntParked","GLOBAL",-1)
                 JoinParty()~ EXIT
  IF ~RandomNum(3,1)~ THEN REPLY @9 GOTO RJVSKSOA1
  IF ~RandomNum(3,2)~ THEN REPLY @9 GOTO RJVSKSOA2
  IF ~RandomNum(3,3)~ THEN REPLY @9 GOTO RJVSKSOA3
  IF ~~ THEN REPLY @11 GOTO RJVSKSOA4
  IF ~~ THEN REPLY @18 GOTO RJVSKSOA5
  IF ~~ THEN REPLY @8 GOTO RJVSKSOA6
END

IF ~~ THEN BEGIN RJVSKSOA1
  SAY @460 = @461 = @462
  IF ~~ THEN REPLY @463 EXIT
END

IF ~~ THEN BEGIN RJVSKSOA2
  SAY @464 = @465
  IF ~~ THEN REPLY @466 EXIT
END

IF ~~ THEN BEGIN RJVSKSOA3
  SAY @467 = @468 = @469
  IF ~~ THEN REPLY @470 EXIT
END

IF ~~ THEN BEGIN RJVSKSOA4
  SAY @471 = @472 = @473
  IF ~~ THEN REPLY @474 EXIT
END

IF ~~ THEN BEGIN RJVSKSOA5
  SAY @475 = @476
  IF ~~ THEN REPLY @477 EXIT
END

IF ~~ THEN BEGIN RJVSKSOA6
  SAY @478 = @479 = @480
  IF ~~ THEN REPLY @481 EXIT
END

END

//   Skie ToB

EXTEND_BOTTOM 1XSKI25P 7
IF ~G("SkieRomanceActive",2)~ THEN REPLY @0 GOTO RJParkSkieTOB
END

APPEND 1XSKI25P

IF ~~ THEN BEGIN RJParkSkieTOB
  SAY @15
  IF ~~ THEN DO ~SetGlobal("RJParkSK","GLOBAL",1)
                 IncrementGlobal("RJCntParked","GLOBAL",1)
                 EscapeAreaMove("AR1307",305,919,12)~ EXIT
END

IF WEIGHT #-1 ~G("RJParkSK",1)~ THEN BEGIN RJVisitSkieTOB
  SAY @16
  IF ~G("RJFinalVisit",1) G("RJSKFV",0)~ THEN REPLY @14 GOTO RJVSKTOB9
  IF ~~ THEN REPLY @13 EXIT
  IF ~~ THEN REPLY @17 DO ~
                 SetGlobal("RJParkSK","GLOBAL",0)
                 IncrementGlobal("RJCntParked","GLOBAL",-1)
                 JoinParty()~ EXIT
  IF ~RandomNum(3,1)~ THEN REPLY @9 GOTO RJVSKTOB1
  IF ~RandomNum(3,2)~ THEN REPLY @9 GOTO RJVSKTOB2
  IF ~RandomNum(3,3)~ THEN REPLY @9 GOTO RJVSKTOB3
  IF ~~ THEN REPLY @11 GOTO RJVSKTOB4
  IF ~~ THEN REPLY @18 GOTO RJVSKTOB5
  IF ~~ THEN REPLY @8 GOTO RJVSKTOB6
END

IF ~~ THEN BEGIN RJVSKTOB1
  SAY @490 = @491 = @492
  IF ~~ THEN REPLY @493 EXIT
END

IF ~~ THEN BEGIN RJVSKTOB2
  SAY @494 = @495
  IF ~~ THEN REPLY @496 EXIT
END

IF ~~ THEN BEGIN RJVSKTOB3
  SAY @497 = @498
  IF ~~ THEN REPLY @499 EXIT
END

IF ~~ THEN BEGIN RJVSKTOB4
  SAY @500 = @501
  IF ~~ THEN REPLY @502 EXIT
END

IF ~~ THEN BEGIN RJVSKTOB5
  SAY @503
  IF ~~ THEN REPLY @504 EXIT
END

IF ~~ THEN BEGIN RJVSKTOB6
  SAY @505 = @506
  IF ~~ THEN REPLY @507 EXIT
END

IF ~~ THEN BEGIN RJVSKTOB9
  SAY @508 = @509 = @510
  IF ~~ THEN REPLY @511 DO ~SetGlobal("RJSKFV","GLOBAL",1)~ EXIT
END

END