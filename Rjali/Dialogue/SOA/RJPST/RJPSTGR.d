
BEGIN BRJGRACE

BEGIN RJGRACEJ

BEGIN BRJGR25

BEGIN RJGR25J

BEGIN RJPSTGR

// Grace intro

CHAIN IF ~IsGabber(Player1) G("RJGraceMet",0) !G("RJPort",0)~ THEN RJPSTGR MeetGrace
@5 = @6 DO ~SetGlobal("RJGraceMet","GLOBAL",2)~
== RJINI @7 = @8
== RJPSTGR @0
== RJINI @13 = @14 = @15
== RJPSTGR @9 = @16 = @17 = @18 = @19
END
++ @1 EXTERN RJPSTGR MG1

CHAIN IF ~~ THEN RJPSTGR MG1
@2 = @20 = @21
== RJFAY @22 = @23 = @24
== RJPSTGR @25 = @10
== RJINI @11
END
++ @12 EXIT

APPEND RJPSTGR

IF ~IsGabber(Player1) !G("RjiniiJIDAD",99)~ THEN BEGIN MG2
SAY @4
++ @3 EXIT
END

// Grace PIDs when she is with Adahn

IF ~IsGabber(Player1) G("RjiniiJIDAD",99) G("RJAddGR",0)~ THEN BEGIN GRPID
SAY @30
IF ~G("RJFinalVisit",1) G("RJGRFV",0)~ THEN REPLY @50 GOTO GRPID9
IF ~~ THEN REPLY @31 EXIT
END

// Grace PIDs when she is waiting for CHARNAME

IF ~IsGabber(Player1) G("RjiniiJIDAD",99) G("RJAddGR",1)~ THEN BEGIN GRPID0
SAY @4
IF ~~ THEN REPLY @32 GOTO GRPID1
IF ~!G("RJAddLim",0) GLT("Chapter",%bg2_chapter_4%)~ THEN REPLY @33 DO ~IncrementGlobal("RJAddLim","GLOBAL",-1)~ GOTO GRPID2
IF ~GGT("Chapter",%bg2_chapter_3%)~ THEN REPLY @33 GOTO GRPID3
END

IF ~~ THEN BEGIN GRPID1
SAY @34
IF ~~ THEN REPLY @35 EXIT
END

IF ~~ THEN BEGIN GRPID2
SAY @2
IF ~~ THEN REPLY @36 DO ~SetGlobal("RJAddGR","GLOBAL",3)
                         SetGlobal("RJGraceRomanceActive","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN GRPID3
SAY @37
IF ~~ THEN REPLY @38 DO ~SetGlobal("RJAddGR","GLOBAL",0)
                         SetGlobal("RJWaitGR","GLOBAL",1)
                         ChangeAIScript("",OVERRIDE)
                         SetDialog("RJPSTGR")
                         SetGlobal("RJGraceRomanceActive","GLOBAL",0)
                         IncrementGlobal("RJAddCnt","GLOBAL",-1) 
                         MoveBetweenAreas("RJ0602",[2965.915],12)~ EXIT
END

IF ~~ THEN BEGIN GRPID9
SAY @51 = @52
IF ~~ THEN REPLY @53 DO ~SetGlobal("RJGRFV","GLOBAL",1)~ EXIT
END

END
