
BEGIN RJAN25P

// Kicking Annah out

IF ~G("RJAddAN",4)~ an25out1
SAY @1
IF ~~ THEN REPLY @8 GOTO an25out1.0
IF ~G("KeepPlot",0)~ THEN REPLY @2 GOTO an25out1.1
IF ~!G("KeepPlot",0)~ THEN REPLY @5 GOTO an25out1.2
IF ~~ THEN REPLY @10 GOTO an25out1.9
END

IF ~~ an25out1.0
SAY @0 = @9
IF ~~ THEN REPLY @13 DO ~JoinParty()~ EXIT
END

IF ~~ an25out1.1
SAY @3
IF ~~ THEN REPLY @4 DO ~SetGlobal("RJAddAN","GLOBAL",2)
                        IncrementGlobal("RJCntParked","GLOBAL",1)
                        MoveGlobal("RJ0605","RJAnnah",[1448.1292])~ EXIT
END

IF ~~ an25out1.2
SAY @6
IF ~~ THEN REPLY @7 DO ~SetGlobal("RJAddAN","GLOBAL",2)
                        SetGlobal("RJParkAN","GLOBAL",1)
                        IncrementGlobal("RJCntParked","GLOBAL",1)
                        MoveGlobal("AR1307","RJAnnah",[2003.1172])~ EXIT
END

IF ~~ an25out1.9
SAY @11
IF ~~ THEN REPLY @12 DO ~JoinParty()~ EXIT
END

// Picking Annah up - RomanceActive=2

IF ~G("RJAddAN",2) G("RJAnnahRomanceActive",2)~ an25in0
SAY @20
+ ~G("RJFinalVisit",1) G("RJANFV",0)~ + @15 + an25in9
+ ~!G("RJPort",0)~ + @21 + an25in0.1
+ ~G("RJPort",0)~ + @21 + an25in0.2
++ @22 + an25in0.3
+ ~RandomNum(3,1)~ + @26 + an25in1
+ ~RandomNum(3,2)~ + @26 + an25in2
+ ~RandomNum(3,3)~ + @26 + an25in3
++ @27 + an25in4
++ @28 + an25in5
++ @29 + an25in6
END

IF ~~ an25in0.1
SAY @23
IF ~~ THEN DO ~SetGlobal("RJAddAN","GLOBAL",3)
               ActionOverride(Player1,AddSpecialAbility("SPIN649"))
               StartCutSceneMode()
               StartCutScene("RJPCUTRT")~ EXIT
END

IF ~~ an25in0.2
SAY @23
IF ~~ THEN DO ~SetGlobal("RJAddAN","GLOBAL",4)
               SetGlobal("RJParkAN","GLOBAL",0)
               IncrementGlobal("RJCntParked","GLOBAL",-1)
               JoinParty()~ EXIT
END

IF ~~ an25in0.3
SAY @24
IF ~~ THEN REPLY @25 EXIT
END

IF ~~ THEN BEGIN an25in1
  SAY @30 = @31 = @32
  IF ~~ THEN REPLY @33 EXIT
END

IF ~~ THEN BEGIN an25in2
  SAY @34 = @35 = @36
  IF ~~ THEN REPLY @37 EXIT
END

IF ~~ THEN BEGIN an25in3
  SAY @38 = @39
  IF ~~ THEN REPLY @40 EXIT
END

IF ~~ THEN BEGIN an25in4
  SAY @41 = @42 = @43
  IF ~~ THEN REPLY @44 EXIT
END

IF ~~ THEN BEGIN an25in5
  SAY @45
  IF ~~ THEN REPLY @46 EXIT
END

IF ~~ THEN BEGIN an25in6
  SAY @47 = @48
  IF ~~ THEN REPLY @49 EXIT
END

IF ~~ THEN BEGIN an25in9
  SAY @80
  IF ~~ THEN REPLY @81 GOTO an25in9.1
END

IF ~~ THEN BEGIN an25in9.1
  SAY @82 = @83 = @84 = @85
  IF ~~ THEN REPLY @86 DO ~SetGlobal("RJANFV","GLOBAL",1)~ EXIT
END

// Picking Annah up - !RomanceActive=2

IF ~!G("RJAnnahRomanceActive",2)~ an25in99
SAY @14
IF ~~ THEN DO ~SetGlobal("RJAddAN","GLOBAL",0)
               SetGlobal("RJWaitAN","GLOBAL",1)
               ChangeAIScript("",OVERRIDE)
               SetDialog("RJPSTAN")
               SetGlobal("RJAnnahRomanceActive","GLOBAL",0)
               IncrementGlobal("RJAddCnt","GLOBAL",-1)
               MoveBetweenAreas("RJ0602",[3010.809],0)~ EXIT
END
