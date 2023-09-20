
BEGIN RJANNAHP

// Kicking Annah out

IF ~G("RJAddAN",4)
    G("RJAnnahRomanceActive",0)~ anout0
SAY @9
IF ~~ THEN GOTO anout0.9
END

IF ~~ anout0.9
SAY @0
IF ~~ THEN DO ~SetGlobal("RJAddAN","GLOBAL",0)
               SetGlobal("RJWaitAN","GLOBAL",2)
               ChangeAIScript("",OVERRIDE)
               SetDialog("RJPSTAN")
               SetGlobal("RJAnnahRomanceActive","GLOBAL",0)
               IncrementGlobal("RJAddCnt","GLOBAL",-1)
               MoveBetweenAreas("RJ0602",[3010.809],0)~ EXIT
END

IF ~G("RJAddAN",4)
    !G("RJAnnahRomanceActive",0)
    G("KeepPlot",0)~ anout1
SAY @1
IF ~G("RJAnnahRomanceActive",1)~ THEN REPLY @8 GOTO anout0.9
IF ~~ THEN REPLY @2 GOTO anout1.1
IF ~~ THEN REPLY @10 GOTO anout1.9
END

IF ~~ anout1.1
SAY @3
IF ~~ THEN REPLY @4 DO ~SetGlobal("RJAddAN","GLOBAL",2)
                        IncrementGlobal("RJCntParked","GLOBAL",1)
                        MoveGlobal("RJ0605","RJAnnah",[1448.1292])~ EXIT
END

IF ~~ anout1.9
SAY @11
IF ~~ THEN REPLY @12 DO ~JoinParty()~ EXIT
END

IF ~G("RJAddAN",4)
    !G("RJAnnahRomanceActive",0)
    !G("KeepPlot",0)~ anout2
SAY @1
IF ~G("RjaliAnnahScout",2)~ THEN REPLY @5 GOTO anout2.1
IF ~~ THEN REPLY @10 GOTO anout1.9
IF ~G("RJAnnahRomanceActive",1)~ THEN REPLY @8 GOTO anout0.9
END

IF ~~ anout2.1
SAY @6
IF ~~ THEN REPLY @7 DO ~SetGlobal("RJAddAN","GLOBAL",2)
                        SetGlobal("RJParkAN","GLOBAL",1)
                        IncrementGlobal("RJCntParked","GLOBAL",1)
                        MoveGlobal("AR1307","RJAnnah",[2003.1172])~ EXIT
END

// Picking Annah up

IF ~G("RJAddAN",2)~ anin0
SAY @20
+ ~!G("RJPort",0) !G("RJAddLim",0)~ + @21 DO ~IncrementGlobal("RJAddLim","GLOBAL",-1)~ + anin0.1
+ ~G("RJPort",0)~ + @21 + anin0.2
+ ~G("RJAnnahRomanceActive",1)~ + @22 + anin0.3
+ ~RandomNum(3,1) G("RJAnnahRomanceActive",2)~ + @26 + anin1
+ ~RandomNum(3,2) G("RJAnnahRomanceActive",2)~ + @26 + anin2
+ ~RandomNum(3,3) G("RJAnnahRomanceActive",2)~ + @26 + anin3
+ ~G("RJAnnahRomanceActive",2)~ + @27 + anin4
+ ~G("RJAnnahRomanceActive",2)~ + @28 + anin5
+ ~G("RJAnnahRomanceActive",2)~ + @29 + anin6
END

IF ~~ anin0.1
SAY @23
IF ~~ THEN DO ~SetGlobal("RJAddAN","GLOBAL",3)
               IncrementGlobal("RJCntParked","GLOBAL",-1)~ EXIT
END

IF ~~ anin0.2
SAY @23
IF ~~ THEN DO ~SetGlobal("RJAddAN","GLOBAL",4)
               SetGlobal("RJParkAN","GLOBAL",0)
               IncrementGlobal("RJCntParked","GLOBAL",-1)
               JoinParty()~ EXIT
END

IF ~~ anin0.3
SAY @24
IF ~~ THEN REPLY @25 EXIT
END

IF ~~ THEN BEGIN anin1
  SAY @30 = @31
  IF ~~ THEN REPLY @32 EXIT
END

IF ~~ THEN BEGIN anin2
  SAY @33 = @34
  IF ~~ THEN REPLY @35 EXIT
END

IF ~~ THEN BEGIN anin3
  SAY @36 = @37 = @38
  IF ~~ THEN REPLY @39 EXIT
END

IF ~~ THEN BEGIN anin4
  SAY @40 = @41
  IF ~~ THEN REPLY @42 EXIT
END

IF ~~ THEN BEGIN anin5
  SAY @43 = @44
  IF ~~ THEN REPLY @45 EXIT
END

IF ~~ THEN BEGIN anin6
  SAY @46
  IF ~~ THEN REPLY @47 EXIT
END
