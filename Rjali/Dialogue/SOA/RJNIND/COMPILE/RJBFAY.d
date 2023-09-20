
//  Ninde #1 - SoA - On Happiness

CHAIN IF ~Global("RJFANIB1","LOCALS",0)
          InParty("Ninde")
          See("Ninde")
          !StateCheck("Ninde",CD_STATE_NOTVALID)~ THEN BRJFAY RJFANIB1
@340 DO ~SetGlobal("RJFANIB1","LOCALS",1)~
== BLK#NIND @341 = @342
== BRJFAY @343
== BLK#NIND @344
== BRJFAY @345
== BLK#NIND @346 = @347
== BRJFAY @348 = @349
== BLK#NIND @350
END
IF ~~ THEN EXIT

//  Ninde #1 - ToB - Follow-up

CHAIN IF ~Global("RJFANIB5","LOCALS",0)
          InParty("Ninde")
          See("Ninde")
          !StateCheck("Ninde",CD_STATE_NOTVALID)~ THEN BRJFAY25 RJFANIB5
@1340 DO ~SetGlobal("RJFANIB5","LOCALS",1)~
== BLK#NI25 @1341
== BRJFAY25 @1342
== BLK#NI25 @1343 = @1344 = @1345
== BRJFAY25 @1346 = @1347 = @1348
== BLK#NI25 @1349
END
IF ~~ THEN EXIT
