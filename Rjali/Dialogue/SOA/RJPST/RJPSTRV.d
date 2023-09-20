
BEGIN BRJRAVEL

BEGIN RJRAVELJ

BEGIN BRJRV25

BEGIN RJRV25J

BEGIN RJPSTRV

// Intro

IF ~IsGabber(Player1) G("RJiniiJIDAD",10)~ THEN BEGIN RV0
SAY @0
++ @1 + RV0.1
END

IF ~~ THEN BEGIN RV0.1
SAY @2 = @3 = @4 = @5
++ @6 + RV0.2
END

IF ~~ THEN BEGIN RV0.2
SAY @7 = @8
++ @9 + RV0.3
END

IF ~~ THEN BEGIN RV0.3
SAY @10 = @11
++ @12 DO ~SetGlobal("RJFhjullOP","GLOBAL",1)~ + RV0.4
END

IF ~~ THEN BEGIN RV0.4
SAY @13 = @14 = @15
++ @18 + RV0.5
END

IF ~~ THEN BEGIN RV0.5
SAY @19 = @16
++ @17 DO ~SetGlobal("RJiniiJIDAD","GLOBAL",11) MoveBetweenAreas("RJ0605",[1507.1563],4)~ EXIT
END

// Dakkon

IF ~IsGabber(Player1) G("RJiniiJIDDK",2)~ THEN BEGIN RV1
SAY @20
++ @21 DO ~SetGlobal("RJiniiJIDDK","GLOBAL",3)~ + RV1.1
END

IF ~~ THEN BEGIN RV1.1
SAY @22 = @23
++ @24 EXIT
END

// Ad Hoc

IF ~IsGabber(Player1) !G("RjiniiJIDAD",99)~ THEN BEGIN RV9
SAY @30
++ @31 EXIT
END

// Ravel PIDs when she is with Adahn

IF ~IsGabber(Player1) G("RjiniiJIDAD",99) G("RJAddRV",0)~ THEN BEGIN RVPID
SAY @40
IF ~G("RJFinalVisit",1) G("RJRVFV",0)~ THEN REPLY @60 GOTO RVPID9
IF ~~ THEN REPLY @41 EXIT
END

// Ravel PIDs when she is waiting for CHARNAME

IF ~IsGabber(Player1) G("RjiniiJIDAD",99) G("RJAddRV",1)~ THEN BEGIN RVPID0
SAY @42
IF ~~ THEN REPLY @43 GOTO RVPID1
IF ~!G("RJAddLim",0) GLT("Chapter",%bg2_chapter_4%)~ THEN REPLY @44 DO ~IncrementGlobal("RJAddLim","GLOBAL",-1)~ GOTO RVPID2
IF ~GGT("Chapter",%bg2_chapter_3%)~ THEN REPLY @44 GOTO RVPID3
END

IF ~~ THEN BEGIN RVPID1
SAY @45
IF ~~ THEN REPLY @46 EXIT
END

IF ~~ THEN BEGIN RVPID2
SAY @47
IF ~~ THEN REPLY @48 DO ~SetGlobal("RJAddRV","GLOBAL",3)
                         SetGlobal("RJRavelRomanceActive","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN RVPID3
SAY @49
IF ~~ THEN REPLY @50 DO ~SetGlobal("RJAddRV","GLOBAL",0)
                         SetGlobal("RJWaitRV","GLOBAL",1)
                         SetGlobal("RJRavelRomanceActive","GLOBAL",0)
                         IncrementGlobal("RJAddCnt","GLOBAL",-1)
                         ChangeAIScript("",OVERRIDE)
                         SetDialog("RJPSTRV")
                         MoveBetweenAreas("RJ0602",[3069.974],8)~ EXIT
END

IF ~~ THEN BEGIN RVPID9
SAY @61 = @62
IF ~~ THEN REPLY @63 DO ~SetGlobal("RJRVFV","GLOBAL",1)~ EXIT
END
