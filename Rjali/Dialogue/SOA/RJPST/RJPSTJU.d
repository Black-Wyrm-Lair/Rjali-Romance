
BEGIN RJPSTJU

// Intro

IF ~IsGabber(Player1) G("RJJUTalk",0)~ THEN BEGIN MeetJU
SAY @3
++ @2 DO ~SetGlobal("RJJUTalk","GLOBAL",1)~ + MJU0
END

IF ~~ THEN BEGIN MJU0
SAY @5 = @6
++ @4 + MJU0.1
END

IF ~~ THEN BEGIN MJU0.1
SAY @7 = @8
++ @9 EXIT
END

IF ~IsGabber(Player1) !G("RJJUTalk",0)~ THEN BEGIN MJU
SAY @0
++ @1 EXIT
IF ~G("RJFinalVisit",1) G("RJJUFV",0)~ THEN REPLY @50 GOTO MJU9
+ ~G("RJJUTalk",1)~ + @10 + MJU1
+ ~G("RJJUTalk",2)~ + @20 DO ~SetGlobal("RJJUTalk","GLOBAL",3)~ + MJU2
END

IF ~~ THEN BEGIN MJU1
SAY @11 = @12
++ @13 EXIT
++ @14 DO ~SetGlobal("RJJUTalk","GLOBAL",2)~ + MJU1.1
END

IF ~~ THEN BEGIN MJU1.1
SAY @15 = @16
++ @17 EXIT
END

IF ~~ THEN BEGIN MJU2
SAY @21 = @22
++ @23 + MJU2.1
END

IF ~~ THEN BEGIN MJU2.1
SAY @24 = @25 = @26
++ @27 EXIT
END

IF ~~ THEN BEGIN MJU9
SAY @51 = @52
++ @53 DO ~SetGlobal("RJJUFV","GLOBAL",1)~ EXIT
END
