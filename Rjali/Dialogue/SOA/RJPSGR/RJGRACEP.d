
BEGIN RJGRACEP

// Kicking Grace out

IF ~G("RJAddGR",4)
    G("RJGraceRomanceActive",0)~ grout0
SAY @9
IF ~~ THEN GOTO grout0.9
END

IF ~~ grout0.9
SAY @0
IF ~~ THEN DO ~SetGlobal("RJAddGR","GLOBAL",0)
               SetGlobal("RJWaitGR","GLOBAL",2)
               SetGlobal("RJGraceRomanceActive","GLOBAL",0)
               ChangeAIScript("",OVERRIDE)
               SetDialog("RJPSTGR")
               IncrementGlobal("RJAddCnt","GLOBAL",-1)
               MoveBetweenAreas("RJ0602",[2965.915],12)~ EXIT
END

IF ~G("RJAddGR",4)
    !G("RJGraceRomanceActive",0)
    G("KeepPlot",0)~ grout1
SAY @1
IF ~G("RJGraceRomanceActive",1)~ THEN REPLY @8 GOTO grout0.9
IF ~~ THEN REPLY @2 GOTO grout1.1
IF ~~ THEN REPLY @10 GOTO grout1.9
END

IF ~~ grout1.1
SAY @3
IF ~~ THEN REPLY @4 DO ~SetGlobal("RJAddGR","GLOBAL",2)
                        IncrementGlobal("RJCntParked","GLOBAL",1)
                        MoveGlobal("RJ0605","RJGrace",[728.547])~ EXIT
END

IF ~~ grout1.9
SAY @11
IF ~~ THEN REPLY @12 DO ~JoinParty()~ EXIT
END

IF ~G("RJAddGR",4)
    !G("RJGraceRomanceActive",0)
    !G("KeepPlot",0)~ grout2
SAY @1
IF ~G("RjaliGraceScout",2)~ THEN REPLY @5 GOTO grout2.1
IF ~~ THEN REPLY @10 GOTO grout1.9
IF ~G("RJGraceRomanceActive",1)~ THEN REPLY @8 GOTO grout0.9
END

IF ~~ grout2.1
SAY @6
IF ~~ THEN REPLY @7 DO ~SetGlobal("RJAddGR","GLOBAL",2)
                        SetGlobal("RJParkGR","GLOBAL",1)
                        IncrementGlobal("RJCntParked","GLOBAL",1)
                        MoveGlobal("AR1307","RJGrace",[1458.1584])~ EXIT
END

// Picking Grace up

IF ~G("RJAddGR",2)~ grin0
SAY @20
+ ~!G("RJPort",0) !G("RJAddLim",0)~ + @21 DO ~IncrementGlobal("RJAddLim","GLOBAL",-1)~ + grin0.1
+ ~G("RJPort",0)~ + @21 + grin0.2
+ ~G("RJGraceRomanceActive",1)~ + @22 + grin0.3
+ ~RandomNum(3,1) G("RJGraceRomanceActive",2)~ + @26 + grin1
+ ~RandomNum(3,2) G("RJGraceRomanceActive",2)~ + @26 + grin2
+ ~RandomNum(3,3) G("RJGraceRomanceActive",2)~ + @26 + grin3
+ ~G("RJGraceRomanceActive",2)~ + @27 + grin4
+ ~G("RJGraceRomanceActive",2)~ + @28 + grin5
+ ~G("RJGraceRomanceActive",2)~ + @29 + grin6
END

IF ~~ grin0.1
SAY @23
IF ~~ THEN DO ~SetGlobal("RJAddGR","GLOBAL",3)
               IncrementGlobal("RJCntParked","GLOBAL",-1)~ EXIT
END

IF ~~ grin0.2
SAY @23
IF ~~ THEN DO ~SetGlobal("RJAddGR","GLOBAL",4)
               SetGlobal("RJParkGR","GLOBAL",0)
               IncrementGlobal("RJCntParked","GLOBAL",-1)
               JoinParty()~ EXIT
END

IF ~~ grin0.3
SAY @24
IF ~~ THEN REPLY @25 EXIT
END

IF ~~ THEN BEGIN grin1
  SAY @30 = @31
  IF ~~ THEN REPLY @32 EXIT
END

IF ~~ THEN BEGIN grin2
  SAY @33 = @34
  IF ~~ THEN REPLY @35 EXIT
END

IF ~~ THEN BEGIN grin3
  SAY @36
  IF ~~ THEN REPLY @37 EXIT
END

IF ~~ THEN BEGIN grin4
  SAY @38 = @39
  IF ~~ THEN REPLY @40 EXIT
END

IF ~~ THEN BEGIN grin5
  SAY @41 = @42 = @43
  IF ~~ THEN REPLY @44 EXIT
END

IF ~~ THEN BEGIN grin6
  SAY @45 = @46
  IF ~~ THEN REPLY @47 EXIT
END
