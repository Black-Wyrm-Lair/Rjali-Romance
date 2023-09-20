
BEGIN RJGR25P

// Kicking Grace out

IF ~G("RJAddGR",4)~ gr25out1
SAY @1
IF ~~ THEN REPLY @8 GOTO gr25out1.0
IF ~G("KeepPlot",0)~ THEN REPLY @2 GOTO gr25out1.1
IF ~!G("KeepPlot",0)~ THEN REPLY @5 GOTO gr25out1.2
IF ~~ THEN REPLY @10 GOTO gr25out1.9
END

IF ~~ gr25out1.0
SAY @0 = @9
IF ~~ THEN REPLY @13 DO ~JoinParty()~ EXIT
END

IF ~~ gr25out1.1
SAY @3
IF ~~ THEN REPLY @4 DO ~SetGlobal("RJAddGR","GLOBAL",2)
                        IncrementGlobal("RJCntParked","GLOBAL",1)
                        MoveGlobal("RJ0605","RJGrace",[728.547])~ EXIT
END

IF ~~ gr25out1.2
SAY @6
IF ~~ THEN REPLY @7 DO ~SetGlobal("RJAddGR","GLOBAL",2)
                        SetGlobal("RJParkGR","GLOBAL",1)
                        IncrementGlobal("RJCntParked","GLOBAL",1)
                        MoveGlobal("AR1307","RJGrace",[1458.1584])~ EXIT
END

IF ~~ gr25out1.9
SAY @11
IF ~~ THEN REPLY @12 DO ~JoinParty()~ EXIT
END

// Picking Grace up - RomanceActive=2

IF ~G("RJAddGR",2) G("RJGraceRomanceActive",2)~ gr25in0
SAY @20
+ ~G("RJFinalVisit",1) G("RJGRFV",0)~ + @15 + gr25in9
+ ~!G("RJPort",0)~ + @21 + gr25in0.1
+ ~G("RJPort",0)~ + @21 + gr25in0.2
++ @22 + gr25in0.3
+ ~RandomNum(3,1)~ + @26 + gr25in1
+ ~RandomNum(3,2)~ + @26 + gr25in2
+ ~RandomNum(3,3)~ + @26 + gr25in3
++ @27 + gr25in4
+ ~G("RJCHAP01",1)~ + @28 + gr25in5.1
+ ~G("RJCHAP01",0)~ + @28 + gr25in5.2
++ @29 + gr25in6
END

IF ~~ gr25in0.1
SAY @23
IF ~~ THEN DO ~SetGlobal("RJAddGR","GLOBAL",3)
               IncrementGlobal("RJCntParked","GLOBAL",-1)
               ActionOverride(Player1,AddSpecialAbility("SPIN649"))
               StartCutSceneMode()
               StartCutScene("RJPCUTRT")~ EXIT
END

IF ~~ gr25in0.2
SAY @23
IF ~~ THEN DO ~SetGlobal("RJAddGR","GLOBAL",4)
               SetGlobal("RJParkGR","GLOBAL",0)
               IncrementGlobal("RJCntParked","GLOBAL",-1)
               JoinParty()~ EXIT
END

IF ~~ gr25in0.3
SAY @24
IF ~~ THEN REPLY @25 EXIT
END

IF ~~ THEN BEGIN gr25in1
  SAY @30 = @31 = @32
  IF ~~ THEN REPLY @33 EXIT
END

IF ~~ THEN BEGIN gr25in2
  SAY @34 = @35
  IF ~~ THEN REPLY @36 EXIT
END

IF ~~ THEN BEGIN gr25in3
  SAY @37 = @38
  IF ~~ THEN REPLY @39 EXIT
END

IF ~~ THEN BEGIN gr25in4
  SAY @40 = @41
  IF ~~ THEN REPLY @42 EXIT
END

IF ~~ THEN BEGIN gr25in5.1
  SAY @43 = @44
  IF ~~ THEN REPLY @45 EXIT
END

IF ~~ THEN BEGIN gr25in5.2
  SAY @43 = @49
  IF ~~ THEN REPLY @50 EXIT
END

IF ~~ THEN BEGIN gr25in6
  SAY @46 = @47
  IF ~~ THEN REPLY @48 EXIT
END

IF ~~ THEN BEGIN gr25in9
  SAY @80 = @81 = @82 = @83
  IF ~~ THEN REPLY @84 GOTO gr25in9.1
END

IF ~~ THEN BEGIN gr25in9.1
  SAY @85 = @86 = @87
  IF ~~ THEN REPLY @88 DO ~SetGlobal("RJGRFV","GLOBAL",1)~ EXIT
END

// Picking Grace up - !RomanceActive=2

IF ~!G("RJGraceRomanceActive",2)~ gr25in99
SAY @14
IF ~~ THEN DO ~SetGlobal("RJAddGR","GLOBAL",0)
               SetGlobal("RJWaitGR","GLOBAL",1)
               ChangeAIScript("",OVERRIDE)
               SetDialog("RJPSTGR")
               SetGlobal("RJGraceRomanceActive","GLOBAL",0)
               IncrementGlobal("RJAddCnt","GLOBAL",-1)
               MoveBetweenAreas("RJ0602",[2965.915],12)~ EXIT
END
