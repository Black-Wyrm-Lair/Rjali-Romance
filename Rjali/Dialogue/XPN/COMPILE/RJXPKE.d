
// This is Kesai's expansion dialogue file. (romanced)

APPEND RJKE25P

IF WEIGHT #-99 ~G("RJParkKE",0)
                G("RJXPN",1)~ prv9
SAY @2
++ @3 DO ~SetGlobal("RJParkKE","GLOBAL",1)
          SetGlobal("RJXPKE01","GLOBAL",2)
          SetGlobal("RJJoin","LOCALS",1)
          IncrementGlobal("RJCntParked","GLOBAL",1)
          EscapeAreaMove("AR1307",1458,627,0)~ EXIT
END

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)
                G("RJParkKE",1)~ prv
SAY @0
++ @1 EXIT
++ @30 + prv1
++ @50 + prv2
END

IF ~~ prv1
SAY @31 = @32
++ @33 + prv1.1
END

IF ~~ prv1.1
SAY @34 = @35 = @36 = @37
++ @38 EXIT
END

IF ~~ prv2
SAY @51 = @52 = @53 = @54 = @55
++ @56 EXIT
END

END

// This is Kesai's expansion dialogue file. (unromanced)

APPEND RJPSTKS

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)~ prvu
SAY @10
++ @11 EXIT
++ @12 + prvu1
END

IF ~~ prvu1
SAY @13 = @14 = @15 = @16 = @17 = @18
++ @19 + prvu1.1
END

IF ~~ prvu1.1
SAY @20 = @21
++ @22 EXIT
END

END
