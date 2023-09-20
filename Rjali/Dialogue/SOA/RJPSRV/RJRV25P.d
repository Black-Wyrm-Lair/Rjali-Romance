
BEGIN RJRV25P

// Kicking Ravel out

IF ~G("RJAddRV",4)~ rv25out1
SAY @1
IF ~~ THEN REPLY @8 GOTO rv25out1.0
IF ~G("KeepPlot",0)~ THEN REPLY @2 GOTO rv25out1.1
IF ~!G("KeepPlot",0)~ THEN REPLY @5 GOTO rv25out1.2
IF ~~ THEN REPLY @10 GOTO rv25out1.9
END

IF ~~ rv25out1.0
SAY @0 = @9
IF ~~ THEN REPLY @13 DO ~JoinParty()~ EXIT
END

IF ~~ rv25out1.1
SAY @3
IF ~~ THEN REPLY @4 DO ~SetGlobal("RJAddRV","GLOBAL",2)
                        IncrementGlobal("RJCntParked","GLOBAL",1)
                        MoveGlobal("RJ0602","RJRavel",[2013.469])~ EXIT
END

IF ~~ rv25out1.2
SAY @6
IF ~~ THEN REPLY @7 DO ~SetGlobal("RJAddRV","GLOBAL",2)
                        SetGlobal("RJParkRV","GLOBAL",1)
                        IncrementGlobal("RJCntParked","GLOBAL",1)
                        MoveGlobal("AR1307","RJRavel",[1227.578])~ EXIT
END

IF ~~ rv25out1.9
SAY @11
IF ~~ THEN REPLY @12 DO ~JoinParty()~ EXIT
END

// Picking Ravel up - RomanceActive=2

IF ~G("RJAddRV",2) G("RJRavelRomanceActive",2)~ rv25in
SAY @31
+ ~G("RJiniiJIDDK",2)~ + @33 + rv25in00
+ ~!G("RJiniiJIDDK",2)~ + @32 + rv25in0
END

IF ~~ rv25in00
SAY @34 = @35
++ @36 DO ~SetGlobal("RJiniiJIDDK","GLOBAL",3)~ + rv25in0
END

IF ~~ rv25in0
SAY @20
+ ~G("RJFinalVisit",1) G("RJRVFV",0)~ + @15 + rv25in9
+ ~!G("RJPort",0)~ + @21 + rv25in0.1
+ ~G("RJPort",0)~ + @21 + rv25in0.2
++ @22 + rv25in0.3
+ ~RandomNum(3,1)~ + @26 + rv25in1
+ ~RandomNum(3,2)~ + @26 + rv25in2
+ ~RandomNum(3,3)~ + @26 + rv25in3
++ @27 + rv25in4
++ @28 + rv25in5
++ @29 + rv25in6
END

IF ~~ rv25in0.1
SAY @23
IF ~~ THEN DO ~SetGlobal("RJAddRV","GLOBAL",3)
               ActionOverride(Player1,AddSpecialAbility("SPIN649"))
               StartCutSceneMode()
               StartCutScene("RJPCUTRT")~ EXIT
END

IF ~~ rv25in0.2
SAY @23
IF ~~ THEN DO ~SetGlobal("RJAddRV","GLOBAL",4)
               SetGlobal("RJParkRV","GLOBAL",0)
               IncrementGlobal("RJCntParked","GLOBAL",-1)
               JoinParty()~ EXIT
END

IF ~~ rv25in0.3
SAY @24
IF ~~ THEN REPLY @25 EXIT
END

IF ~~ THEN BEGIN rv25in1
  SAY @40 = @41
  IF ~~ THEN REPLY @42 EXIT
END

IF ~~ THEN BEGIN rv25in2
  SAY @43 = @44
  IF ~~ THEN REPLY @45 EXIT
END

IF ~~ THEN BEGIN rv25in3
  SAY @46 = @47
  IF ~~ THEN REPLY @48 EXIT
END

IF ~~ THEN BEGIN rv25in4
  SAY @49 = @50
  IF ~~ THEN REPLY @51 EXIT
END

IF ~~ THEN BEGIN rv25in5
  SAY @52 = @53 = @54
  IF ~~ THEN REPLY @55 EXIT
END

IF ~~ THEN BEGIN rv25in6
  SAY @56 = @57 = @58
  IF ~~ THEN REPLY @59 EXIT
END

IF ~~ THEN BEGIN rv25in9
  SAY @80 = @81 = @82 = @83 = @84
  IF ~~ THEN REPLY @85 GOTO rv25in9.1
END

IF ~~ THEN BEGIN rv25in9.1
  SAY @86
  IF ~~ THEN REPLY @87 GOTO rv25in9.2
END

IF ~~ THEN BEGIN rv25in9.2
  SAY @88
  IF ~~ THEN REPLY @89 DO ~SetGlobal("RJRVFV","GLOBAL",1)~ EXIT
END

// Picking Ravel up - !RomanceActive=2

IF ~!G("RJRavelRomanceActive",2)~ rv25in99
SAY @14
IF ~~ THEN DO ~SetGlobal("RJRavelRomanceActive","GLOBAL",0)
               SetGlobal("RJAddRV","GLOBAL",0)
               IncrementGlobal("RJAddCnt","GLOBAL",-1)
               SetGlobal("RJWaitRV","GLOBAL",1)
               ChangeAIScript("",OVERRIDE)
               SetDialog("RJPSTRV")
               MoveBetweenAreas("RJ0602",[3069.974],8)~ EXIT
END
