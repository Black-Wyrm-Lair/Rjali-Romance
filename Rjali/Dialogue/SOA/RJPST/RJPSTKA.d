
BEGIN RJPSTKA

// Intro

IF ~IsGabber(Player1)~ THEN BEGIN MKA
SAY @0
++ @1 EXIT
IF ~G("RJFinalVisit",1) G("RJKAFV",0)~ THEN REPLY @50 GOTO MKA9
+ ~G("RJKATalk",0)~ + @2 DO ~SetGlobal("RJKATalk","GLOBAL",1)~ + MKA1
+ ~GGT("RJMorteReborn",5)~ + @10 + MKA2
+ ~G("RJiniiJIDND",99)~ + @20 + MKA3
+ ~G("RJiniiJIDDK",99)~ + @30 + MKA4
END

IF ~~ THEN BEGIN MKA1
SAY @3 = @4 = @5 = @6
++ @7 EXIT
END

IF ~~ THEN BEGIN MKA2
SAY @11 = @12 = @13 = @14 = @15
++ @16 EXIT
END

IF ~~ THEN BEGIN MKA3
SAY @21 = @22 = @23 = @24
++ @25 EXIT
END

IF ~~ THEN BEGIN MKA4
SAY @31 = @32 = @33 = @34 = @35 = @36
++ @37 EXIT
END

IF ~~ THEN BEGIN MKA9
SAY @51 = @52
++ @53 DO ~SetGlobal("RJKAFV","GLOBAL",1)~ EXIT
END
