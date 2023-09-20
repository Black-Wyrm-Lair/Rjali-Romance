
//  Fade #1 - SoA - Bling

CHAIN IF ~Global("RJFAFAB1","LOCALS",0)
          InParty("E3Fade")
          See("E3Fade")
          !StateCheck("E3Fade",CD_STATE_NOTVALID)~ THEN BRJFAY RJFAFAB1
@420 DO ~SetGlobal("RJFAFAB1","LOCALS",1)~
== BE3FADE @421 = @422 = @423
== BRJFAY @424 = @425
== BE3FADE @426
== BRJFAY @427 = @428
== BE3FADE @429
== BRJFAY @430 = @431
== BE3FADE @432
END
IF ~~ THEN EXIT

//  Fade #1 - ToB - Kids

CHAIN IF ~Global("RJFAFAB5","LOCALS",0)
          InParty("E3Fade")
          See("E3Fade")
          !StateCheck("E3Fade",CD_STATE_NOTVALID)~ THEN BRJFAY25 RJFAFAB5
@1420 DO ~SetGlobal("RJFAFAB5","LOCALS",1)~
== BE3FAD25 @1421 = @1422
== BRJFAY25 @1423
== BE3FAD25 @1424
== BRJFAY25 @1425
== BE3FAD25 @1426
== BRJFAY25 @1427
== BE3FAD25 @1428
END
IF ~~ THEN EXIT
