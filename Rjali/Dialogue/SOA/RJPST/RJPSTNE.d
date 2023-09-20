
BEGIN RJPSTNE

// Intro

IF ~IsGabber(Player1)~ THEN BEGIN MNN
SAY @0
++ @1 EXIT
IF ~G("RJFinalVisit",1) G("RJNNFV",0)~ THEN REPLY @50 GOTO MNN9
+ ~G("RJNETalk",0)~ + @2 DO ~SetGlobal("RJNETalk","GLOBAL",1)~ + MNN1
+ ~G("RJiniiJIDMR",99)~ + @10 + MNN2
+ ~G("RJiniiJIDND",99)~ + @20 + MNN3
+ ~G("RJiniiJIDDK",99)~ + @30 + MNN4
END

IF ~~ THEN BEGIN MNN1
SAY @3 = @5 = @6 = @7
++ @4 EXIT
END

IF ~~ THEN BEGIN MNN2
SAY @11 = @12 = @13 = @14 = @15
++ @16 EXIT
END

IF ~~ THEN BEGIN MNN3
SAY @21 = @22 = @23 = @24
++ @25 EXIT
END

IF ~~ THEN BEGIN MNN4
SAY @31 = @32 = @33 = @34 = @35 = @36
++ @37 EXIT
END

IF ~~ THEN BEGIN MNN9
SAY @51 = @52
++ @53 DO ~SetGlobal("RJNNFV","GLOBAL",1)~ EXIT
END
