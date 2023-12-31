
//  Park NPCs in deArnise Keep

//  Tashia SoA

EXTEND_BOTTOM TASHIAP 0
IF ~G("RjaliTashiaScout",2)
    G("TashiaRomanceActive",2)
    !G("KeepPlot",0)~ THEN REPLY @0 GOTO RJParkTashiaSOA
END

APPEND TASHIAP

IF ~~ THEN BEGIN RJParkTashiaSOA
  SAY @1400
  IF ~~ THEN DO ~SetGlobal("RJParkTA","GLOBAL",1)
                 IncrementGlobal("RJCntParked","GLOBAL",1)
                 EscapeAreaMove("AR1307",1784,814,12)~ EXIT
END

IF WEIGHT #-1 ~G("RJParkTA",1)~ THEN BEGIN RJVisitTashiaSOA
  SAY @1401
  IF ~~ THEN REPLY @13 EXIT
  IF ~~ THEN REPLY @7 DO ~SetGlobal("RJParkTA","GLOBAL",0)
                          IncrementGlobal("RJCntParked","GLOBAL",-1)
                          JoinParty()~ EXIT
  IF ~RandomNum(3,1)~ THEN REPLY @9 GOTO RJVTASOA1
  IF ~RandomNum(3,2)~ THEN REPLY @9 GOTO RJVTASOA2
  IF ~RandomNum(3,3)~ THEN REPLY @9 GOTO RJVTASOA3
  IF ~~ THEN REPLY @11 GOTO RJVTASOA4
  IF ~~ THEN REPLY @1402 GOTO RJVTASOA5
  IF ~~ THEN REPLY @8 GOTO RJVTASOA6
END

IF ~~ THEN BEGIN RJVTASOA1
  SAY @1412
  IF ~Global("RJTARID1","LOCALS",0)~ THEN REPLY @1413 GOTO RJVTASOA1.1
  IF ~Global("RJTARID1","LOCALS",1)~ THEN REPLY @1421 EXIT
END

IF ~~ THEN BEGIN RJVTASOA1.1
  SAY @1414 = @1415
  IF ~~ THEN REPLY @1416 DO ~SetGlobal("RJTARID1","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN RJVTASOA2
  SAY @1417
  IF ~Global("RJTARID2","LOCALS",0)~ THEN REPLY @1418 GOTO RJVTASOA2.1
  IF ~Global("RJTARID2","LOCALS",1)~ THEN REPLY @1422 EXIT
END

IF ~~ THEN BEGIN RJVTASOA2.1
  SAY @1419
  IF ~~ THEN REPLY @1420 DO ~SetGlobal("RJTARID2","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN RJVTASOA3
  SAY @1423
  IF ~~ THEN REPLY @1424 EXIT
END

IF ~~ THEN BEGIN RJVTASOA4
  SAY @1405 = @1406
  IF ~~ THEN REPLY @1407 EXIT
END

IF ~~ THEN BEGIN RJVTASOA5
  SAY @1403
  IF ~~ THEN REPLY @1404 EXIT
END

IF ~~ THEN BEGIN RJVTASOA6
  SAY @1408 = @1409 = @1410
  IF ~~ THEN REPLY @1411 EXIT
END

END

//   Tashia ToB

EXTEND_BOTTOM TASHI25P 0
IF ~G("TashiaRomanceActive",2)~ THEN REPLY @0 GOTO RJParkTashiaTOB
END

APPEND TASHI25P

IF ~~ THEN BEGIN RJParkTashiaTOB
  SAY @1400
  IF ~~ THEN DO ~SetGlobal("RJParkTA","GLOBAL",1)
                 IncrementGlobal("RJCntParked","GLOBAL",1)
                 EscapeAreaMove("AR1307",1784,814,12)~ EXIT
END

IF WEIGHT #-1 ~G("RJParkTA",1)~ THEN BEGIN RJVisitTashiaTOB
  SAY @1401
  IF ~G("RJFinalVisit",1) G("RJTAFV",0)~ THEN REPLY @14 GOTO RJVTATOB9
  IF ~~ THEN REPLY @13 EXIT
  IF ~~ THEN REPLY @7 DO ~
                 SetGlobal("RJParkTA","GLOBAL",0)
                 IncrementGlobal("RJCntParked","GLOBAL",-1)
                 JoinParty()~ EXIT
  IF ~RandomNum(3,1)~ THEN REPLY @9 GOTO RJVTATOB1
  IF ~RandomNum(3,2)~ THEN REPLY @9 GOTO RJVTATOB2
  IF ~RandomNum(3,3)~ THEN REPLY @9 GOTO RJVTATOB3
  IF ~~ THEN REPLY @11 GOTO RJVTATOB4
  IF ~~ THEN REPLY @1440 GOTO RJVTATOB5
  IF ~~ THEN REPLY @8 GOTO RJVTATOB6
END

IF ~~ THEN BEGIN RJVTATOB1
  SAY @1412
  IF ~Global("RJTARID1","LOCALS",0)~ THEN REPLY @1413 GOTO RJVTATOB1.1
  IF ~Global("RJTARID1","LOCALS",1)~ THEN REPLY @1421 EXIT
END

IF ~~ THEN BEGIN RJVTATOB1.1
  SAY @1414 = @1415
  IF ~~ THEN REPLY @1416 DO ~SetGlobal("RJTARID1","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN RJVTATOB2
  SAY @1417
  IF ~Global("RJTARID2","LOCALS",0)~ THEN REPLY @1418 GOTO RJVTATOB2.1
  IF ~Global("RJTARID2","LOCALS",1)~ THEN REPLY @1422 EXIT
END

IF ~~ THEN BEGIN RJVTATOB2.1
  SAY @1419
  IF ~~ THEN REPLY @1420 DO ~SetGlobal("RJTARID2","LOCALS",1)~ EXIT
END

IF ~~ THEN BEGIN RJVTATOB3
  SAY @1423
  IF ~~ THEN REPLY @1424 EXIT
END

IF ~~ THEN BEGIN RJVTATOB4
  SAY @1443 = @1444
  IF ~~ THEN REPLY @1445 EXIT
END

IF ~~ THEN BEGIN RJVTATOB5
  SAY @1441
  IF ~~ THEN REPLY @1442 EXIT
END

IF ~~ THEN BEGIN RJVTATOB6
  SAY @1446 = @1447
  IF ~~ THEN REPLY @1448 EXIT
END

IF ~~ THEN BEGIN RJVTATOB9
  SAY @1449 = @1450
  IF ~~ THEN REPLY @1451 GOTO RJVTATOB9.1
END

IF ~~ THEN BEGIN RJVTATOB9.1
  SAY @1452 = @1453
  IF ~~ THEN REPLY @1454 DO ~SetGlobal("RJTAFV","GLOBAL",1)~ EXIT
END

END
