
BEGIN RJPSTDO

// Intro

IF ~IsGabber(Player1)~ THEN BEGIN MDO
SAY @0
++ @1 EXIT
IF ~G("RJFinalVisit",1) G("RJDOFV",0)~ THEN REPLY @30 GOTO MDO9
+ ~G("RJDOTalk",0)~ + @2 DO ~SetGlobal("RJDOTalk","GLOBAL",1)~ + MDO1
+ ~G("RJiniiJIDND",3)~ + @10 DO ~SetGlobal("RJiniiJIDND","GLOBAL",4)~ + MDO2
+ ~G("RJiniiJIDND",99)~ + @20 + MDO3
END

IF ~~ THEN BEGIN MDO1
SAY @3
++ @4 EXIT
END

IF ~~ THEN BEGIN MDO2
SAY @11
++ @12 + MDO2.1
END

IF ~~ THEN BEGIN MDO2.1
SAY @13 = @14 = @15 = @16 = @17
++ @18 DO ~SetGlobal("RJNordomOP","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN MDO3
SAY @21 = @22 = @23 = @24
++ @25 EXIT
END

IF ~~ THEN BEGIN MDO9
SAY @31 = @32
++ @33 DO ~SetGlobal("RJDOFV","GLOBAL",1)~ EXIT
END
