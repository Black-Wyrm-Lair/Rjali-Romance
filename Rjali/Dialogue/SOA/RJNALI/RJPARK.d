
//  Park NPCs in deArnise Keep

APPEND NALIAP

// Nalia SoA

IF WEIGHT #-50 ~Global("KickedOut","LOCALS",0)
                Global("PGNaliaRomanceActive","GLOBAL",2)
                G("RjaliNaliaScout",2)~ THEN BEGIN RJParkNaliaSOA
  SAY @295
  IF ~~ THEN REPLY @296 DO ~JoinParty()~ EXIT
  IF ~G("RjaliNaliaScout",2)
      G("PGNaliaRomanceActive",2)
      !G("KeepPlot",0)~ THEN REPLY @0 GOTO RJParkNaliaSOA1
END

IF ~~ THEN BEGIN RJParkNaliaSOA1
  SAY @6
  IF ~~ THEN DO ~SetGlobal("RJParkNA","GLOBAL",1)
                 IncrementGlobal("RJCntParked","GLOBAL",1)
                 SetGlobal("KickedOut","LOCALS",1)
                 EscapeAreaMove("AR1306",1276,798,2)~ EXIT
END

IF WEIGHT #-50 ~G("RJParkNA",1)~ THEN BEGIN RJVisitNaliaSOA
  SAY @12
  IF ~~ THEN REPLY @13 EXIT
  IF ~~ THEN REPLY @7 DO ~
                 SetGlobal("RJParkNA","GLOBAL",0)
                 IncrementGlobal("RJCntParked","GLOBAL",-1)
                 SetGlobal("KickedOut","LOCALS",0)
                 JoinParty()~ EXIT
  IF ~RandomNum(3,1)~ THEN REPLY @9 GOTO RJVNASOA1
  IF ~RandomNum(3,2)~ THEN REPLY @9 GOTO RJVNASOA2
  IF ~RandomNum(3,3)~ THEN REPLY @9 GOTO RJVNASOA3
  IF ~~ THEN REPLY @11 GOTO RJVNASOA4
  IF ~~ THEN REPLY @270 GOTO RJVNASOA5
  IF ~~ THEN REPLY @8 GOTO RJVNASOA6
END

IF ~~ THEN BEGIN RJVNASOA1
  SAY @271 = @272 = @273
  IF ~~ THEN REPLY @274 EXIT
END

IF ~~ THEN BEGIN RJVNASOA2
  SAY @275 = @276
  IF ~~ THEN REPLY @277 EXIT
END

IF ~~ THEN BEGIN RJVNASOA3
  SAY @278 = @279 = @280
  IF ~~ THEN REPLY @281 EXIT
END

IF ~~ THEN BEGIN RJVNASOA4
  SAY @282 = @283
  IF ~~ THEN REPLY @284 EXIT
END

IF ~~ THEN BEGIN RJVNASOA5
  SAY @285 = @286 = @287
  IF ~~ THEN REPLY @288 EXIT
END

IF ~~ THEN BEGIN RJVNASOA6
  SAY @289 = @290
  IF ~~ THEN REPLY @291 EXIT
END

END

// Nalia ToB

EXTEND_BOTTOM NALIA25P 0
IF ~G("PGNaliaRomanceActive",2)~ THEN REPLY @0 GOTO RJParkNaliaTOB
END

APPEND NALIA25P

IF ~~ THEN BEGIN RJParkNaliaTOB
  SAY @6
  IF ~~ THEN DO ~SetGlobal("RJParkNA","GLOBAL",1)
                 IncrementGlobal("RJCntParked","GLOBAL",1)
                 SetGlobal("KickedOut","LOCALS",1)
                 EscapeAreaMove("AR1306",1276,798,2)~ EXIT
END

IF WEIGHT #-1 ~G("RJParkNA",1)~ THEN BEGIN RJVisitNaliaTOB
  SAY @12
  IF ~G("RJFinalVisit",1) G("RJNAFV",0)~ THEN REPLY @14 GOTO RJVNATOB9
  IF ~~ THEN REPLY @13 EXIT
  IF ~~ THEN REPLY @7 DO ~
                 SetGlobal("RJParkNA","GLOBAL",0)
                 IncrementGlobal("RJCntParked","GLOBAL",-1)
                 SetGlobal("KickedOut","LOCALS",0)
                 JoinParty()~ EXIT
  IF ~RandomNum(3,1)~ THEN REPLY @9 GOTO RJVNATOB1
  IF ~RandomNum(3,2)~ THEN REPLY @9 GOTO RJVNATOB2
  IF ~RandomNum(3,3)~ THEN REPLY @9 GOTO RJVNATOB3
  IF ~~ THEN REPLY @11 GOTO RJVNATOB4
  IF ~~ THEN REPLY @300 GOTO RJVNATOB5
  IF ~~ THEN REPLY @8 GOTO RJVNATOB6
END

IF ~~ THEN BEGIN RJVNATOB1
  SAY @301
  IF ~~ THEN REPLY @302 EXIT
END

IF ~~ THEN BEGIN RJVNATOB2
  SAY @303 = @304 = @305
  IF ~~ THEN REPLY @306 EXIT
END

IF ~~ THEN BEGIN RJVNATOB3
  SAY @307 = @308
  IF ~~ THEN REPLY @309 EXIT
END

IF ~~ THEN BEGIN RJVNATOB4
  SAY @310 = @311
  IF ~~ THEN REPLY @312 EXIT
END

IF ~~ THEN BEGIN RJVNATOB5
  SAY @313
  IF ~~ THEN REPLY @314 EXIT
END

IF ~~ THEN BEGIN RJVNATOB6
  SAY @315 = @316 = @317
  IF ~~ THEN REPLY @318 EXIT
END

IF ~~ THEN BEGIN RJVNATOB9
  SAY @319 = @320
  IF ~~ THEN REPLY @321 GOTO RJVNATOB9.1
END

IF ~~ THEN BEGIN RJVNATOB9.1
  SAY @322 = @323
  IF ~~ THEN REPLY @324 DO ~SetGlobal("RJNAFV","GLOBAL",1)~ EXIT
END

END
