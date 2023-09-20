
BEGIN RJRAVELP

// Kicking Ravel out

IF ~G("RJAddRV",4)
    G("RJRavelRomanceActive",0)~ rvout0
SAY @9
IF ~~ THEN GOTO rvout0.9
END

IF ~~ rvout0.9
SAY @0
IF ~~ THEN DO ~SetGlobal("RJAddRV","GLOBAL",0)
               SetGlobal("RJWaitRV","GLOBAL",2)
               IncrementGlobal("RJAddCnt","GLOBAL",-1)
               SetGlobal("RJRavelRomanceActive","GLOBAL",0)
               ChangeAIScript("",OVERRIDE)
               SetDialog("RJPSTRV")
               MoveBetweenAreas("RJ0602",[3069.974],8)~ EXIT
END

IF ~G("RJAddRV",4)
    !G("RJRavelRomanceActive",0)
    G("KeepPlot",0)~ rvout1
SAY @1
IF ~G("RJRavelRomanceActive",1)~ THEN REPLY @8 GOTO rvout0.9
IF ~~ THEN REPLY @2 GOTO rvout1.1
IF ~~ THEN REPLY @10 GOTO rvout1.9
END

IF ~~ rvout1.1
SAY @3
IF ~~ THEN REPLY @4 DO ~SetGlobal("RJAddRV","GLOBAL",2)
                        IncrementGlobal("RJCntParked","GLOBAL",1)
                        MoveGlobal("RJ0602","RJRavel",[1058.417])~ EXIT
END

IF ~~ rvout1.9
SAY @11
IF ~~ THEN REPLY @12 DO ~JoinParty()~ EXIT
END

IF ~G("RJAddRV",4)
    !G("RJRavelRomanceActive",0)
    !G("KeepPlot",0)~ rvout2
SAY @1
IF ~G("RjaliRavelScout",2)~ THEN REPLY @5 GOTO rvout2.1
IF ~~ THEN REPLY @10 GOTO rvout1.9
IF ~G("RJRavelRomanceActive",1)~ THEN REPLY @8 GOTO rvout0.9
END

IF ~~ rvout2.1
SAY @6
IF ~~ THEN REPLY @7 DO ~SetGlobal("RJAddRV","GLOBAL",2)
                        SetGlobal("RJParkRV","GLOBAL",1)
                        IncrementGlobal("RJCntParked","GLOBAL",1)
                        MoveGlobal("AR1307","RJRavel",[1227.578])~ EXIT
END

// Picking Ravel up

IF ~G("RJAddRV",2)~ rvin0
SAY @20
+ ~!G("RJPort",0) !G("RJAddLim",0)~ + @21 DO ~IncrementGlobal("RJAddLim","GLOBAL",-1)~ + rvin0.1
+ ~G("RJPort",0)~ + @21 + rvin0.2
+ ~G("RJRavelRomanceActive",1)~ + @22 + rvin0.3
+ ~RandomNum(3,1) G("RJRavelRomanceActive",2)~ + @26 + rvin1
+ ~RandomNum(3,2) G("RJRavelRomanceActive",2)~ + @26 + rvin2
+ ~RandomNum(3,3) G("RJRavelRomanceActive",2)~ + @26 + rvin3
+ ~G("RJRavelRomanceActive",2)~ + @27 + rvin4
+ ~G("RJRavelRomanceActive",2)~ + @28 + rvin5
+ ~G("RJRavelRomanceActive",2)~ + @29 + rvin6
END

IF ~~ rvin0.1
SAY @23
IF ~~ THEN DO ~SetGlobal("RJAddRV","GLOBAL",3)
               IncrementGlobal("RJCntParked","GLOBAL",-1)~ EXIT
END

IF ~~ rvin0.2
SAY @23
IF ~~ THEN DO ~SetGlobal("RJAddRV","GLOBAL",4)
               SetGlobal("RJParkRV","GLOBAL",0)
               IncrementGlobal("RJCntParked","GLOBAL",-1)
               JoinParty()~ EXIT
END

IF ~~ rvin0.3
SAY @24
IF ~~ THEN REPLY @25 DO ~~ EXIT
END

IF ~~ THEN BEGIN rvin1
  SAY @33 = @34
  IF ~~ THEN REPLY @35 EXIT
END

IF ~~ THEN BEGIN rvin2
  SAY @47 = @48
  IF ~~ THEN REPLY @49 EXIT
END

IF ~~ THEN BEGIN rvin3
  SAY @36 = @37
  IF ~~ THEN REPLY @38 EXIT
END

IF ~~ THEN BEGIN rvin4
  SAY @39 = @40
  IF ~~ THEN REPLY @41 EXIT
END

IF ~~ THEN BEGIN rvin5
  SAY @30 = @31
  IF ~~ THEN REPLY @32 EXIT
END

IF ~~ THEN BEGIN rvin6
  SAY @42 = @43 = @44 = @45
  IF ~~ THEN REPLY @46 EXIT
END
