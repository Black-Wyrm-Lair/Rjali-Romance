
BEGIN RJKE25P

// Kicking Kesai out

IF ~G("RJParkKE",0)~ ke25out1
SAY @1
IF ~~ THEN REPLY @5 GOTO ke25out1.2
IF ~~ THEN REPLY @10 GOTO ke25out1.9
END

IF ~~ ke25out1.2
SAY @6
IF ~~ THEN REPLY @7 DO ~SetGlobal("RJParkKE","GLOBAL",1)
                        IncrementGlobal("RJCntParked","GLOBAL",1)
                        ReallyForceSpellRES("RJPLYKS",Myself)
                        SetGlobal("RJPRTKS","GLOBAL",1)
                        MoveBetweenAreas("AR1307",[1458.627],20)~ EXIT
END

IF ~~ ke25out1.9
SAY @11
IF ~~ THEN REPLY @12 DO ~JoinParty()~ EXIT
END

// Picking Kesai up

IF ~G("RJParkKE",1)~ ke25in0
SAY @20
+ ~G("RJFinalVisit",1) G("RJKEFV",0)~ + @15 + ke25in9
++ @21 + ke25in0.2
++ @22 + ke25in0.3
+ ~RandomNum(3,1)~ + @26 + ke25in1
+ ~RandomNum(3,2)~ + @26 + ke25in2
+ ~RandomNum(3,3)~ + @26 + ke25in3
++ @27 + ke25in4
++ @28 + ke25in5
++ @29 + ke25in6
END

IF ~~ ke25in0.2
SAY @23
IF ~~ THEN DO ~SetGlobal("RJParkKE","GLOBAL",0)
               IncrementGlobal("RJCntParked","GLOBAL",-1)
               JoinParty()~ EXIT
END

IF ~~ ke25in0.3
SAY @24
IF ~~ THEN REPLY @25 EXIT
END

IF ~~ THEN BEGIN ke25in1
  SAY @40 = @41
  IF ~~ THEN REPLY @42 EXIT
END

IF ~~ THEN BEGIN ke25in2
  SAY @43 = @44
  IF ~~ THEN REPLY @45 EXIT
END

IF ~~ THEN BEGIN ke25in3
  SAY @46 = @47
  IF ~~ THEN REPLY @48 EXIT
END

IF ~~ THEN BEGIN ke25in4
  SAY @49 = @50
  IF ~~ THEN REPLY @51 EXIT
END

IF ~~ THEN BEGIN ke25in5
  SAY @52 = @53
  IF ~~ THEN REPLY @54 EXIT
END

IF ~~ THEN BEGIN ke25in6
  SAY @55 = @56
  IF ~~ THEN REPLY @57 EXIT
END

IF ~~ THEN BEGIN ke25in9
  SAY @80 = @81 = @82 = @83
  IF ~~ THEN REPLY @84 GOTO ke25in9.1
END

IF ~~ THEN BEGIN ke25in9.1
  SAY @85 = @86
  IF ~~ THEN REPLY @87 DO ~SetGlobal("RJKEFV","GLOBAL",1)~ EXIT
END
