
BEGIN BRJANNAH

BEGIN RJANNAHJ

BEGIN BRJAN25

BEGIN RJAN25J

BEGIN RJPSTAN

// Annah intro

IF ~IsGabber(Player1) G("RJAnnahMet",0)~ THEN BEGIN MeetAnnah
SAY @0
++ @1 DO ~SetGlobal("RJAnnahMet","GLOBAL",2)~ + MAN1
END

IF ~~ THEN BEGIN MAN1
SAY @2
IF ~~ THEN REPLY @3 EXIT
END

IF ~IsGabber(Player1) !G("RjiniiJIDAD",99)~ THEN BEGIN MAN2
SAY @2
IF ~~ THEN EXIT
END

// Annah PIDs when she is with Adahn

IF ~IsGabber(Player1) G("RjiniiJIDAD",99) G("RJAddAN",0)~ THEN BEGIN ANPID
SAY @4
IF ~G("RJFinalVisit",1) G("RJANFV",0)~ THEN REPLY @50 GOTO ANPID9
IF ~~ THEN REPLY @5 EXIT
END

// Annah PIDs when she is waiting for CHARNAME

IF ~IsGabber(Player1) G("RjiniiJIDAD",99) G("RJAddAN",1)~ THEN BEGIN ANPID0
SAY @10
IF ~~ THEN REPLY @11 GOTO ANPID1
IF ~!G("RJAddLim",0) GLT("Chapter",%bg2_chapter_4%)~ THEN REPLY @13 DO ~IncrementGlobal("RJAddLim","GLOBAL",-1)~ GOTO ANPID2
IF ~GGT("Chapter",%bg2_chapter_3%)~ THEN REPLY @13 GOTO ANPID3
END

IF ~~ THEN BEGIN ANPID1
SAY @2
IF ~~ THEN REPLY @12 EXIT
END

IF ~~ THEN BEGIN ANPID2
SAY @14
IF ~~ THEN REPLY @15 DO ~SetGlobal("RJAddAN","GLOBAL",3)
                         SetGlobal("RJAnnahRomanceActive","GLOBAL",0)~ EXIT
END

IF ~~ THEN BEGIN ANPID3
SAY @16 = @17
IF ~~ THEN REPLY @18 DO ~SetGlobal("RJAddAN","GLOBAL",0)
                         SetGlobal("RJWaitAN","GLOBAL",1)
                         ChangeAIScript("",OVERRIDE)
                         SetDialog("RJPSTAN")
                         SetGlobal("RJAnnahRomanceActive","GLOBAL",0)
                         IncrementGlobal("RJAddCnt","GLOBAL",-1)
                         MoveBetweenAreas("RJ0602",[3010.809],0)~ EXIT
END

IF ~~ THEN BEGIN ANPID9
SAY @51 = @2
IF ~~ THEN REPLY @52 DO ~SetGlobal("RJANFV","GLOBAL",1)~ EXIT
END
