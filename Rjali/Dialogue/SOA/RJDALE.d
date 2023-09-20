
// Daleson's dialogues

APPEND RJDALE

//  Daleson rats out Kesai

IF ~G("RJRatoutKE",1)~ THEN BEGIN RJKesaiRat
  SAY @0 = @1 = @2 = @3
  IF ~~ THEN REPLY @4 DO ~SetGlobal("RJRatoutKE","GLOBAL",2)
                          EscapeAreaMove("AR1304",843,3398,6)
                          AddJournalEntry(@9063,INFO)~ EXIT
END

// Daleson's SoA/ToB PIDs

IF ~IsGabber(Player1)
    G("RJXPN",0)~ DalePid0
SAY @10
+ ~G("RJDaleTalk",0)~ + @11 DO ~SetGlobal("RJDaleTalk","GLOBAL",1)~ + DalePid1
+ ~G("RJDaleTalk",1)
   G("RJParkDA",1)
   G("RJDaleDace",0)~ + @18 + DalePid3
+ ~G("RJDaleTalk",1)
   OR(2)
     G("RJParkDA",0)
     G("RJDaleDace",1)~ + @11 + DalePid9
END

IF ~~ DalePid1
SAY @14 = @15
++ @16 + DalePid2
END

IF ~~ DalePid2
SAY @17
+ ~G("RJParkDA",0)~ + @13 EXIT
+ ~G("RJParkDA",1)~ + @18 + DalePid3
END

IF ~~ DalePid3
SAY @19 = @20 = @21
++ @22 DO ~SetGlobal("RJDaleDace","GLOBAL",1)~ EXIT
END

IF ~~ DalePid9
SAY @12
++ @13 EXIT
END

// Daleson's XPN PIDs

IF ~IsGabber(Player1)
    G("RJXPN",1)~ DaleXPN0
SAY @100
+ ~G("RJParkDA",1)
   GLT("RJDaleTalk",2)~ + @101 DO ~SetGlobal("RJDaleTalk","GLOBAL",2)~ + DaleXPN1
+ ~OR(2)
     G("RJParkDA",0)
     G("RJDaleTalk",2)~ + @101 + DalePid9
END

IF ~~ DaleXPN1
SAY @102 = @103 = @104
+ ~G("RJXPDA1",0)~ + @105 EXIT
+ ~G("RJXPDA1",1)~ + @106 + DaleXPN2
END

IF ~~ DaleXPN2
SAY @107
++ @108 EXIT
END

END
