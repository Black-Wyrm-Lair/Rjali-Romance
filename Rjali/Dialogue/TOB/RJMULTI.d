
// Dump a woman

CHAIN
IF ~G("RjaliDump",1) GGT("Chapter",%bg2_chapter_7%)~ THEN PLAYER1 RJDumpToB
@905 DO ~SetGlobal("RjaliDump","GLOBAL",0)
         IncrementGlobal("RJCntLoved","GLOBAL",-1)~
== RJALI25J @900
BRANCH ~G("RJCntLoved",4)~ BEGIN
== RJALI25J @901
== PLAYER1 @906
END
BRANCH ~G("RJCntLoved",3)~ BEGIN
== RJALI25J @902
== PLAYER1 @907
END
BRANCH ~G("RJCntLoved",2)~ BEGIN
== RJALI25J @903
== PLAYER1 @908
END
BRANCH ~G("RJCntLoved",1)~ BEGIN
== RJALI25J @904
== PLAYER1 @909
END
== RJALI25J @910
== PLAYER1 @911
END
IF ~~ THEN EXIT

// UnDump a woman

CHAIN
IF ~G("RjaliUnDump",1) GGT("Chapter",%bg2_chapter_7%)~ THEN PLAYER1 RJUnDumpToB
@905 DO ~SetGlobal("RjaliUnDump","GLOBAL",0)
         IncrementGlobal("RJCntLoved","GLOBAL",1)~
== RJALIJ @916 = @917
== PLAYER1 @918 = @911
END
IF ~~ THEN EXIT

// Dump a man

CHAIN
IF ~G("RjaliDumpMan",1) GGT("Chapter",%bg2_chapter_7%)~ THEN PLAYER1 RJDumpManToB
@905 DO ~SetGlobal("RjaliDumpMan","GLOBAL",0)~
== RJALI25J @912 = @913
== PLAYER1 @914
== RJALI25J @915
END
IF ~~ THEN EXIT

// ToB Group Banter #1 - Orgy

CHAIN
IF WEIGHT #-2 ~G("RjaliGroupToB1",1) G("RjaliGroup",1) G("RJXPN",0)~ THEN PLAYER1 RjaliGroupToB1
@1419 DO ~SetGlobal("RjaliGroupToB1","GLOBAL",3) SetGlobal("RjaliGroup","GLOBAL",0)~
== RJPLAY0 @1400
== RJPLAY1 @600
== RJPLAY0 @1402
== RJPLAY1 @1403
== RJPLAY4 IF ~G("RJRosCnt",5)~ THEN @1404
== RJPLAY3 IF ~G("RJRosCnt",4)~ THEN @1404
== RJPLAY3 IF ~G("RJRosCnt",5)~ THEN @1405
== RJPLAY2 IF ~!G("RJRosCnt",5)~ THEN @1405
== PLAYER1 @1407
== RJPLAY0 @1408
== RJPLAY1 @1406
== RJPLAY4 IF ~G("RJRosCnt",5)~ THEN @1418
== RJPLAY3 IF ~G("RJRosCnt",4)~ THEN @1418
== RJPLAY2 IF ~G("RJRosCnt",3)~ THEN @1418
== RJPLAY1 @1409
== RJPLAY2 @1410
== RJPLAY0 @1411
== RJPLAY1 @1412
== RJPLAY2 @1413
== RJPLAY3 IF ~GGT("RJRosCnt",3)~ THEN @1414
== RJPLAY1 IF ~GLT("RJRosCnt",4)~ THEN @1414
== RJFAY IF ~G("RJParkFY",0)~ THEN @1481
== PLAYER1 @1415
== RJPLAY0 @1420
== RJPLAY2 @1421
== RJPLAY0 @1422
== RJPLAY2 @1423
== RJPLAY0 @1424 = @1425
== RJPLAY2 @1426
== RJPLAY0 @1427
== RJFAY IF ~G("RJParkFY",0)~ THEN @1482
== RJPLAY0 IF ~G("RJParkFY",0)~ THEN @1483
BRANCH ~OR(2) G("RJPLAY3",313) G("RJPLAY4",313)~ BEGIN
== RJPLAY1 @1428
== RJPLAY2 @1429
== RJPLAY1 @1430
== VICON25J @1431
== RJPLAY2 @1432
== VICON25J @1433
== RJPLAY1 @1434
== VICON25J @1435
== RJPLAY1 @1436
== RJPLAY2 @1437
== RJPLAY1 @1438
END
== RJPLAY0 @1439
== RJPLAY2 @1440
== RJPLAY0 IF ~GGT("RJRosCnt",3)~ THEN @1441
== RJPLAY3 IF ~GGT("RJRosCnt",3)~ THEN @1442
BRANCH ~InParty("Mazzy")~ BEGIN
== RJPLAY0 @1443
== RJPLAY2 @1444
== RJPLAY0 @1445
== MAZZY25J @1446
END
== RJPLAY3 IF ~GGT("RJRosCnt",3)~ THEN @1447
== RJPLAY1 IF ~GLT("RJRosCnt",4)~ THEN @1447
== RJPLAY0 @1448
== RJPLAY2 @1449
== RJPLAY0 @1450
== RJPLAY2 @1451
== RJPLAY0 @1452
== RJPLAY4 IF ~G("RJRosCnt",5)~ THEN @1453
== RJPLAY3 IF ~G("RJRosCnt",4)~ THEN @1453
== RJPLAY2 IF ~G("RJRosCnt",3)~ THEN @1453
== RJPLAY1 @1454
== NEERA25J IF ~InParty("Neera")~ THEN @1455
== VICON25J IF ~InParty("Viconia")~ THEN @1456
== RJFAY IF ~G("RJParkFY",0)~ THEN @1484 = @1485
== E3FAD25J IF ~InParty("E3Fade")~ THEN @1478
== L3PET25J IF ~InParty("L3Petsy")~ THEN @1480
== 1XSKI25J IF ~InParty("SkieDV")~ THEN @1479
== RJPLAY0 @1457
== RJPLAY1 @1458
== RJPLAY3 IF ~GGT("RJRosCnt",3)~ THEN @1459
== RJPLAY2 IF ~G("RJRosCnt",3)~ THEN @1459
== RJPLAY4 IF ~G("RJRosCnt",5)~ THEN @1460
== RJPLAY3 IF ~G("RJRosCnt",4)~ THEN @1460
== RJPLAY2 IF ~G("RJRosCnt",3)~ THEN @1460
== PLAYER1 @1461 DO ~AddJournalEntry(@9018,INFO)
                     ActionOverride("RJPLAY0",DestroySelf())
                     ActionOverride("RJPLAY1",DestroySelf())
                     ActionOverride("RJPLAY2",DestroySelf())
                     ActionOverride("RJPLAY3",DestroySelf())
                     ActionOverride("RJPLAY4",DestroySelf())
                     SetGlobal("RJRoster","GLOBAL",1)
                     StartCutSceneMode()
                     StartCutScene("Cut34a")~
END
IF ~~ THEN EXIT

// ToB Group Banter #2 - Aerie announces - Rjali twigs

CHAIN
IF WEIGHT #-1 ~G("RjaliGroupToB2",1) G("RjaliGroup",1) G("RJXPN",0)~ THEN PLAYER1 RjaliGroupToB2
@1419 DO ~SetGlobal("RjaliGroupToB2","GLOBAL",2) SetGlobal("RjaliGroup","GLOBAL",0)~
== RJPLAY0 @1500
== RJPLAY2 @1501
== RJPLAY0 @1502
== RJPLAY1 @1503
== RJFAY IF ~G("RJParkFY",0)~ THEN @1504
== RJPLAY4 IF ~G("RJRosCnt",5)~ THEN @1537
== RJPLAY3 IF ~GGT("RJRosCnt",3)~ THEN @1538 = @1539
== RJPLAY0 IF ~GGT("RJRosCnt",3)~ THEN @1540
== E3FAD25J IF ~InParty("E3Fade")~ THEN @1541
== RJPLAY1 @1510
== RJPLAY0 @1511
== RJPLAY4 IF ~G("RJRosCnt",5)~ THEN @1512
== RJPLAY3 IF ~G("RJRosCnt",4)~ THEN @1512
== RJPLAY1 IF ~G("RJRosCnt",3)~ THEN @1512
== RJPLAY0 @1513
== RJPLAY0 IF ~InParty("Rjali")~ THEN @1536
== RJPLAY1 @1514
== RJPLAY2 @1515 = @1516
== RJPLAY3 IF ~GGT("RJRosCnt",3)~ THEN @1518
== RJFAY IF ~G("RJParkFY",0)~ THEN @1505
== RJPLAY4 IF ~G("RJRosCnt",5)~ THEN @1517
== RJPLAY1 @1519
== RJPLAY0 @1520
== RJPLAY4 IF ~G("RJRosCnt",5)~ THEN @1521 = @1523
== RJPLAY3 IF ~G("RJRosCnt",4)~ THEN @1522
== RJPLAY1 @1524
== RJPLAY2 @1525
BRANCH ~InParty("E3Fade") !G("E3FADEISPREGNANT",0)~ BEGIN
== E3FAD25J @1542
== RJPLAY2 @1543
== E3FAD25J @1544
== RJPLAY2 @1545
END
== 1XSKI25J IF ~InParty("SkieDV") !G("SkieRomanceBaby",0)~ THEN @1534
== RJPLAY2 @1526 = @1527 = @1528
== RJPLAY0 @1529
== RJPLAY1 @1531
== RJPLAY0 @1532
== RJFAY IF ~G("RJParkFY",0)~ THEN @1506
== RJPLAY1 @1533
== PLAYER1 @1530 DO ~RealSetGlobalTimer("RjaliDjinnTimer","GLOBAL",RJ_TALK)
                     SetGlobal("RjaliGroupToB2","GLOBAL",3)
                     ActionOverride("RJPLAY0",DestroySelf())
                     ActionOverride("RJPLAY1",DestroySelf())
                     ActionOverride("RJPLAY2",DestroySelf())
                     ActionOverride("RJPLAY3",DestroySelf())
                     ActionOverride("RJPLAY4",DestroySelf())
                     SetGlobal("RJRoster","GLOBAL",1)
                     StartCutSceneMode()
                     StartCutScene("Cut34a")~
END
IF ~~ THEN EXIT

// ToB Group Banter #3 - Rjali twigs

CHAIN
IF WEIGHT #-1 ~G("RjaliGroupToB3",1) G("RjaliGroup",1) G("RJXPN",0)~ THEN PLAYER1 RjaliGroupToB3
@1419 DO ~SetGlobal("RjaliGroupToB3","GLOBAL",2) SetGlobal("RjaliGroup","GLOBAL",0)~
== RJPLAY0 @1550
== RJPLAY1 @1503
== RJPLAY4 IF ~G("RJRosCnt",5)~ THEN @1537
== RJPLAY3 IF ~GGT("RJRosCnt",3)~ THEN @1503
== RJFAY IF ~G("RJParkFY",0)~ THEN @1507
== RJPLAY2 @1504
== E3FAD25J IF ~InParty("E3Fade")~ THEN @1541
== RJPLAY1 @1510
== RJPLAY0 @1511
== RJPLAY4 IF ~G("RJRosCnt",5)~ THEN @1512
== RJPLAY3 IF ~G("RJRosCnt",4)~ THEN @1512
== RJPLAY2 IF ~G("RJRosCnt",3)~ THEN @1512
== RJPLAY0 @1513 = @1536
== RJPLAY1 @1551
== RJPLAY0 @1552
== PLAYER1 @1553 DO ~RealSetGlobalTimer("RjaliDjinnTimer","GLOBAL",RJ_TALK)
                     SetGlobal("RjaliGroupToB3","GLOBAL",3)
                     ActionOverride("RJPLAY0",DestroySelf())
                     ActionOverride("RJPLAY1",DestroySelf())
                     ActionOverride("RJPLAY2",DestroySelf())
                     ActionOverride("RJPLAY3",DestroySelf())
                     ActionOverride("RJPLAY4",DestroySelf())
                     SetGlobal("RJRoster","GLOBAL",1)
                     StartCutSceneMode()
                     StartCutScene("Cut34a")~
END
IF ~~ THEN EXIT

// Final ToB visit to deArnise Keep

EXTEND_BOTTOM PPGUY01 4
  IF ~  OR(2)
GlobalLT("OHN_TOB_PLOT","GLOBAL",7)
GlobalGT("OHN_TOB_PLOT","GLOBAL",14)
Global("ChallengesDone","GLOBAL",1)
G("RJFinalVisit",0)
~ THEN REPLY @2000 DO ~
StartCutSceneMode()
StartCutScene("RJFCUT01")
~ EXIT
END
