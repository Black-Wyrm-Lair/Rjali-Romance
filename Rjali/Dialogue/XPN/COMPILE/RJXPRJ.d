
// This is Rjali's expansion dialogue file.

APPEND RJALI25P

// Rjali leaves at start of XPN

IF WEIGHT #-99 ~G("RJXPN",1)
                G("RJXPRJ01",1)~ xprj0
SAY @0 = @1 = @4 = @2 = @3
IF ~~ THEN DO ~SetGlobal("RJXPRJ01","GLOBAL",2)
               SetGlobal("RJParkRJ","GLOBAL",1)
               SetGlobal("RJJoin","LOCALS",1)
               IncrementGlobal("RJCntParked","GLOBAL",1)
               MoveToPointNoInterrupt([4300.2718])~ EXIT
END

// End expansion and go to EOG

IF WEIGHT #-99 ~G("RJXPN",1)
                IsGabber(Player1)
                G("RJParkRJ",1)~ xprj1
SAY @10 = @12
++ @13 + xprj2
+ ~G("RJXPLL",1)~ + @50 + xprj6
++ @11 DO ~SetGlobal("RJXPPCWD","GLOBAL",1)~ EXIT
END

IF ~~ xprj2
SAY @14
++ @15 EXIT
++ @30 + xprj4
++ @20 + xprj3
+ ~G("RJXPNE02",1)~ + @40 + xprj5
END

IF ~~ xprj3
SAY @21
++ @22 + xprj3.1
END

IF ~~ xprj3.1
SAY @23
IF ~~ THEN EXIT
END

IF ~~ xprj4
SAY @31
IF ~G("RJXPDL1",0)~ THEN REPLY @32 GOTO xprj4.1
IF ~G("RJXPDL1",1) G("RJXPEXT",0)~ THEN REPLY @33 GOTO xprj4.1
END

IF ~~ xprj4.1
SAY @34 = @35
IF ~~ THEN REPLY @36 DO ~SetGlobal("RJXPEXT","GLOBAL",1)~ EXIT
END

IF ~~ xprj5
SAY @41
++ @42 + xprj5.1
END

IF ~~ xprj5.1
SAY @43 = @44 = @45
IF ~~ THEN REPLY @46 EXIT
END

IF ~~ xprj6
SAY @51 = @52 = @53 = @54
IF ~~ THEN REPLY @55 EXIT
END

END
