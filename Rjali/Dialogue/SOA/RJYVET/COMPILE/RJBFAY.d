
//  Yvette #1 - SoA - Nature

CHAIN IF ~Global("RJFAYVB1","LOCALS",0)
          InParty("Yxyve")
          See("Yxyve")
          !StateCheck("Yxyve",CD_STATE_NOTVALID)~ THEN BRJFAY RJFAYVB1
@400 DO ~SetGlobal("RJFAYVB1","LOCALS",1)~
== YXYVEB @401 = @402
== BRJFAY @403
== BRJFAY IF ~G("RJFayBig",0)~ THEN @404
== BRJFAY IF ~!G("RJFayBig",0)~ THEN @405
== BRJFAY @406
== YXYVEB @407 = @408
== YXYVEB IF ~!G("RJFayBig",0)~ THEN @409
== YXYVEB IF ~G("RJFayBig",0)~ THEN @410
== BRJFAY @411 = @412
END
IF ~~ THEN EXIT

//  Yvette #1 - ToB - Bawdy

CHAIN IF ~Global("RJFAYVB5","LOCALS",0)
          InParty("Yxyve")
          See("Yxyve")
          !StateCheck("Yxyve",CD_STATE_NOTVALID)~ THEN BRJFAY25 RJFAYVB5
@1400 DO ~SetGlobal("RJFAYVB5","LOCALS",1)~
== YXYV25B @1401 = @1402 = @1403
== BRJFAY25 @1404 = @1405
== YXYV25B @1406 = @1407
== BRJFAY25 @1408
END
IF ~~ THEN EXIT
