
//  Park NPCs in deArnise Keep

//  Isra SoA

EXTEND_BOTTOM RH#ISRP 0
IF ~G("RjaliIsraScout",2)
    G("rh#IsraRomanceActive",2)
    !G("KeepPlot",0)~ THEN REPLY @0 GOTO RJParkIsraSOA
END

APPEND RH#ISRP

IF ~~ THEN BEGIN RJParkIsraSOA
  SAY @1500
  IF ~~ THEN DO ~SetGlobal("RJParkIS","GLOBAL",1)
                 IncrementGlobal("RJCntParked","GLOBAL",1)
                 EscapeAreaMove("AR1304",1286,2889,0)~ EXIT
END

IF WEIGHT #-1 ~G("RJParkIS",1)~ THEN BEGIN RJVisitIsraSOA
  SAY @1501
  IF ~~ THEN REPLY @13 EXIT
  IF ~~ THEN REPLY @7 DO ~SetGlobal("rh#Isra2KickedOut","GLOBAL",0)
                 SetGlobal("RJParkIS","GLOBAL",0)
                 IncrementGlobal("RJCntParked","GLOBAL",-1)
                 JoinParty()~ EXIT
  IF ~RandomNum(3,1)~ THEN REPLY @9 GOTO RJVISSOA1
  IF ~RandomNum(3,2)~ THEN REPLY @9 GOTO RJVISSOA2
  IF ~RandomNum(3,3)~ THEN REPLY @9 GOTO RJVISSOA3
  IF ~~ THEN REPLY @11 GOTO RJVISSOA4
  IF ~~ THEN REPLY @1502 GOTO RJVISSOA5
  IF ~~ THEN REPLY @8 GOTO RJVISSOA6
END

IF ~~ THEN BEGIN RJVISSOA1
  SAY @1515 = @1516 = @1517
  IF ~~ THEN REPLY @1518 EXIT
END

IF ~~ THEN BEGIN RJVISSOA2
  SAY @1519 = @1520 = @1521 = @1522
  IF ~~ THEN REPLY @1523 EXIT
END

IF ~~ THEN BEGIN RJVISSOA3
  SAY @1524 = @1525 = @1526
  IF ~~ THEN REPLY @1527 EXIT
END

IF ~~ THEN BEGIN RJVISSOA4
  SAY @1507 = @1508
  IF ~~ THEN REPLY @1509 EXIT
END

IF ~~ THEN BEGIN RJVISSOA5
  SAY @1503 = @1504 = @1505
  IF ~~ THEN REPLY @1506 EXIT
END

IF ~~ THEN BEGIN RJVISSOA6
  SAY @1510 = @1511 = @1512 = @1513
  IF ~~ THEN REPLY @1514 EXIT
END

END

//   Isra ToB

EXTEND_BOTTOM RH#IS25P 0
IF ~G("rh#IsraRomanceActive",2)~ THEN REPLY @0 GOTO RJParkIsraTOB
END

APPEND RH#IS25P

IF ~~ THEN BEGIN RJParkIsraTOB
  SAY @1500
  IF ~~ THEN DO ~SetGlobal("RJParkIS","GLOBAL",1)
                 IncrementGlobal("RJCntParked","GLOBAL",1)
                 EscapeAreaMove("AR1304",1286,2889,0)~ EXIT
END

IF WEIGHT #-1 ~G("RJParkIS",1)~ THEN BEGIN RJVisitIsraTOB
  SAY @1501
  IF ~G("RJFinalVisit",1) G("RJISFV",0)~ THEN REPLY @14 GOTO RJVISTOB9
  IF ~~ THEN REPLY @13 EXIT
  IF ~~ THEN REPLY @7 DO ~SetGlobal("RJParkIS","GLOBAL",0)
                          IncrementGlobal("RJCntParked","GLOBAL",-1)
                          JoinParty()~ EXIT
  IF ~RandomNum(3,1)~ THEN REPLY @9 GOTO RJVISTOB1
  IF ~RandomNum(3,2)~ THEN REPLY @9 GOTO RJVISTOB2
  IF ~RandomNum(3,3)~ THEN REPLY @9 GOTO RJVISTOB3
  IF ~~ THEN REPLY @11 GOTO RJVISTOB4
  IF ~~ THEN REPLY @1550 GOTO RJVISTOB5
  IF ~~ THEN REPLY @8 GOTO RJVISTOB6
END

IF ~~ THEN BEGIN RJVISTOB1
  SAY @1562 = @1563
  IF ~~ THEN REPLY @1564 GOTO RJVISTOB1.1
END

IF ~~ THEN BEGIN RJVISTOB1.1
  SAY @1565 = @1566
  IF ~~ THEN REPLY @1567 GOTO RJVISTOB1.2
END

IF ~~ THEN BEGIN RJVISTOB1.2
  SAY @1568
  IF ~~ THEN REPLY @1569 EXIT
END

IF ~~ THEN BEGIN RJVISTOB2
  SAY @1570 = @1571 = @1572
  IF ~~ THEN REPLY @1573 EXIT
END

IF ~~ THEN BEGIN RJVISTOB3
  SAY @1574 = @1575
  IF ~~ THEN REPLY @1576 EXIT
END

IF ~~ THEN BEGIN RJVISTOB4
  SAY @1555 = @1556
  IF ~~ THEN REPLY @1557 EXIT
END

IF ~~ THEN BEGIN RJVISTOB5
  SAY @1551 = @1552 = @1553
  IF ~~ THEN REPLY @1554 EXIT
END

IF ~~ THEN BEGIN RJVISTOB6
  SAY @1558 = @1559 = @1560
  IF ~~ THEN REPLY @1561 EXIT
END

IF ~~ THEN BEGIN RJVISTOB9
  SAY @1577 = @1578 = @1579
  IF ~~ THEN REPLY @1580 DO ~SetGlobal("RJISFV","GLOBAL",1)~ EXIT
END

END