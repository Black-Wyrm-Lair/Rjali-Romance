
// This is Amber's expansion dialogue file.

APPEND M#AMB25P

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)
                G("RJParkAM",1)~ pam
SAY @0
++ @1 EXIT
++ @2 + pam1
++ @10 + pam2
END

IF ~~ pam1
SAY @3 = @4 = @5
++ @6 + pam1.1
END

IF ~~ pam1.1
SAY @7 = @8
++ @9 EXIT
END

IF ~~ pam2
SAY @11 = @12 = @13 = @14
++ @15 EXIT
END

END
