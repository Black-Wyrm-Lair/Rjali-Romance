BEGIN RJRJALI

// Rjali dialogue #1

IF ~
IsGabber(Player1)
~ THEN BEGIN RJRjali0
SAY @500
++ @501 DO ~SetGlobal("RjaliOrphanSean","GLOBAL",3)~ EXIT
END

BEGIN RJMOISH

// Moishe dialogue #1

IF ~
IsGabber(Player1)
G("RjaliOrphanMoishe",0)
~ THEN BEGIN RJMoishe0
SAY @502
++ @503 + RJMoishe0.1
++ @504 + RJMoishe0.2
END

IF ~~ THEN BEGIN RJMoishe0.1
SAY @505
++ @507 + RJMoishe0.3
END

IF ~~ THEN BEGIN RJMoishe0.2
SAY @506
++ @507 + RJMoishe0.3
END

CHAIN IF ~~ THEN RJMOISH RJMoishe0.3
@508 = @509
== RJRJALI @510
== RJMOISH @511
== RJRJALI @512
END
++ @513 EXTERN RJALI25J RJMoishe0.4

CHAIN IF ~~ THEN RJALI25J RJMoishe0.4
@514 = @515 = @516 = @517
== RJRJALI @518
== RJALI25J @519
== RJMOISH @520
END
++ @521 EXTERN RJALI25J RJMoishe0.5

CHAIN IF ~~ THEN RJALI25J RJMoishe0.5
@522 DO ~ActionOverride("RJMOISH",EscapeAreaDestroy(3)) ActionOverride("RJRJALI",EscapeAreaDestroy(3))~
END
++ @523 EXTERN RJALI25J RJMoishe0.6

CHAIN IF ~~ THEN RJALI25J RJMoishe0.6
@524 = @525 = @526
== IMOEN25J IF ~InParty("Imoen2")~ THEN @527
== NALIA25J IF ~InParty("Nalia")~ THEN @528
== AERIE25J IF ~InParty("Aerie")~ THEN @529
== NEERA25J IF ~InParty("Neera")~ THEN @530
== RJFAY IF ~G("RJParkFY",0)~ THEN @547
== VICON25J IF ~InParty("Viconia")~ THEN @531
== JAHEI25J IF ~InParty("Jaheira")~ THEN @532
== SAERI25J IF ~InParty("Saerileth")~ THEN @533
== O#BRA25J IF ~InParty("O#Bran")~ THEN @534
== TASHI25J IF ~InParty("Tashia")~ THEN @535
== E3FAD25J IF ~InParty("E3Fade")~ THEN @539
== SAERI25J IF ~InParty("Saerileth")~ THEN @536
== G#TRS25J IF ~InParty("G#Tyris")~ THEN @537
== 1XSKI25J IF ~InParty("SkieDV")~ THEN @540
== L3PET25J IF ~InParty("L3Petsy")~ THEN @541
== C0SIR25J IF ~InParty("C0Sirene")~ THEN @548
== YXYV25J IF ~InParty("Yxyve")~ THEN @538
== RJGR25J IF ~InParty("RJGrace")~ THEN @542
== RJAN25J IF ~InParty("RJAnnah")~ THEN @543
== RJRV25J IF ~InParty("RJRavel")~ THEN @544
== SHEEN25J IF ~InParty("K#Sheena")~ THEN @549
== LK#NI25J IF ~InParty("Ninde")~ THEN @597
== T#DAC25J IF ~InParty("T#Dace")~ THEN @598
== RH#IS25J IF ~InParty("rh#Isra2")~ THEN @599
== M#AMB25J IF ~InParty("M#AMBER")~ THEN @499
END
++ @545 DO ~AddJournalEntry(@9007,INFO) SetGlobal("RjaliOrphanMoishe","GLOBAL",1)~ EXIT

// Moishe dialogue #2

APPEND RJMOISH

IF ~
IsGabber(Player1)
G("RjaliOrphanMoishe",1)
~ THEN BEGIN RJMoishe1
SAY @546
++ @700 EXIT
END

END

// Daleson dialogue #4

APPEND KPDOMO01

IF WEIGHT #0 ~
IsGabber(Player1)
G("RjaliChallenge5",3)
~ THEN BEGIN RJDaleson3
SAY @550
+ ~InMyArea("RJMOISH")~ + @551 + RJDaleson3.1
+ ~!InMyArea("RJMOISH")~ + @552 DO ~CreateCreature("RJMOISH",[1063.906],6)~ + RJDaleson3.2
END

IF ~~ THEN BEGIN RJDaleson3.1
SAY @553
++ @554 + RJDaleson3.3
END

IF ~~ THEN BEGIN RJDaleson3.2
SAY @555
++ @556 + RJDaleson3.3
END

IF ~~ THEN BEGIN RJDaleson3.3
SAY @557 = @558
++ @559 EXTERN RJMOISH RJDaleson3.4
END

IF ~~ THEN BEGIN RJDaleson3.9
SAY @579
++ @580 DO ~SetGlobal("RjaliChallenge5","GLOBAL",4)~ EXIT
END

END

CHAIN RJMOISH RJDaleson3.4
@582
END
IF ~~ THEN REPLY @560 EXTERN RJALI25J RJDaleson3.5

CHAIN RJALI25J RJDaleson3.5
@561
== RJRJALI @562
== RJALI25J @563
== RJMOISH @564
END
++ @565 EXTERN RJMOISH RJDaleson3.6

CHAIN IF ~~ THEN RJMOISH RJDaleson3.6
@566
== KPDOMO01 @567
BRANCH ~G("RjaliMR",1)~ BEGIN
== KPDOMO01 @568
== AERIE25J IF ~InParty("Aerie")~ THEN @569
== RJALI25J IF ~!InParty("Aerie")~ THEN @569
== NALIA25J IF ~InParty("Nalia")~ THEN @571
== NEERA25J IF ~InParty("Neera")~ THEN @574
== IMOEN25J IF ~InParty("Imoen2")~ THEN @570
== RJFAY IF ~G("RJParkFY",0)~ THEN @596
END
END
+ ~G("RjaliMR",1)~ + @572 EXTERN KPDOMO01 RJDaleson3.7
+ ~G("RjaliMR",0)~ + @583 EXTERN KPDOMO01 RJDaleson3.7

CHAIN IF ~~ THEN KPDOMO01 RJDaleson3.7
@575
== VICON25J IF ~InParty("Viconia")~ THEN @576
== JAHEI25J IF ~InParty("Jaheira")~ THEN @577
== RJMOISH @573 DO ~ActionOverride("RJMOISH",EscapeAreaDestroy(3)) ActionOverride("RJRJALI",EscapeAreaDestroy(3)) ActionOverride("RJHAMAD",EscapeAreaDestroy(3)) ActionOverride("RJARI",EscapeAreaDestroy(3))~
== KPDOMO01 @584 = @585 = @586 = @587 = @589 = @590 = @591 = @592
END
+ ~PartyGoldGT(1000000)~ + @593 DO ~TakePartyGold(1000000)~ EXTERN KPDOMO01 RJDaleson3.8
+ ~PartyGoldGT(100000) !PartyGoldGT(1000000)~ + @593 DO ~TakePartyGold(100000)~ EXTERN KPDOMO01 RJDaleson3.8
+ ~!PartyGoldGT(100000)~ + @593 EXTERN KPDOMO01 RJDaleson3.8

CHAIN IF ~~ THEN KPDOMO01 RJDaleson3.8
@594 = @595
END
++ @578 DO ~AddJournalEntry(@9019,INFO)
            AddexperienceParty(1200) 
            SetGlobal("RjaliOrphanDaleson","GLOBAL",4)~ EXTERN KPDOMO01 RJDaleson3.9

// Daleson dialogue #5

APPEND KPDOMO01

IF WEIGHT #0 ~
IsGabber(Player1)
G("RJFinalVisit",1)
G("RJDOMFV",0)
~ THEN BEGIN RJDaleson4
SAY @750
++ @751 + RJDaleson4.1
END

IF ~~ THEN BEGIN RJDaleson4.1
SAY @752
++ @753 DO ~TakePartyGold(2147483647)~ + RJDaleson4.2
END

IF ~~ THEN BEGIN RJDaleson4.2
SAY @754 = @755
++ @756 + RJDaleson4.3
END

IF ~~ THEN BEGIN RJDaleson4.3
SAY @757 = @758
++ @759 DO ~SetGlobal("RJDOMFV","GLOBAL",1) SetGlobal("RjaliOrphanDaleson","GLOBAL",5)~ EXIT
END

END
