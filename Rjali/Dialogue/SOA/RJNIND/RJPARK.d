
//  Park NPCs in deArnise Keep

//   Ninde ToB

EXTEND_BOTTOM LK#NI25P 0
IF ~G("LK#NindeRomanceActive",2)~ THEN REPLY @0 GOTO RJParkNindeTOB
END

APPEND LK#NI25P

IF ~~ THEN BEGIN RJParkNindeTOB
  SAY @800
  IF ~~ THEN DO ~SetGlobal("RJParkNI","GLOBAL",1)
                 IncrementGlobal("RJCntParked","GLOBAL",1)
                 EscapeAreaMove("AR1307",1366,1078,0)~ EXIT
END

IF WEIGHT #-1 ~G("RJParkNI",1)~ THEN BEGIN RJVisitNindeTOB
  SAY @801
  IF ~G("RJFinalVisit",1) G("RJNIFV",0)~ THEN REPLY @14 GOTO RJVNITOB9
  IF ~~ THEN REPLY @13 EXIT
  IF ~~ THEN REPLY @802 DO ~
                 SetGlobal("RJParkNI","GLOBAL",0)
                 IncrementGlobal("RJCntParked","GLOBAL",-1)
                 JoinParty()~ EXIT
  IF ~RandomNum(3,1)~ THEN REPLY @9 GOTO RJVNITOB1
  IF ~RandomNum(3,2)~ THEN REPLY @9 GOTO RJVNITOB2
  IF ~RandomNum(3,3)~ THEN REPLY @9 GOTO RJVNITOB3
  IF ~~ THEN REPLY @11 GOTO RJVNITOB4
  IF ~~ THEN REPLY @803 GOTO RJVNITOB5
  IF ~~ THEN REPLY @8 GOTO RJVNITOB6
END

IF ~~ THEN BEGIN RJVNITOB1
  SAY @804 = @805 = @806
  IF ~~ THEN REPLY @807 EXIT
END

IF ~~ THEN BEGIN RJVNITOB2
  SAY @808 = @809 = @810
  IF ~~ THEN REPLY @811 EXIT
END

IF ~~ THEN BEGIN RJVNITOB3
  SAY @812
  IF ~~ THEN REPLY @813 GOTO RJVNITOB3.1
END

IF ~~ THEN BEGIN RJVNITOB3.1
  SAY @814 = @815
  IF ~~ THEN REPLY @816 EXIT
END

IF ~~ THEN BEGIN RJVNITOB4
  SAY @817 = @818 = @819
  IF ~~ THEN REPLY @820 EXIT
END

IF ~~ THEN BEGIN RJVNITOB5
  SAY @821 = @822
  IF ~~ THEN REPLY @823 EXIT
END

IF ~~ THEN BEGIN RJVNITOB6
  SAY @824 = @825 = @826 = @827
  IF ~~ THEN REPLY @828 GOTO RJVNITOB6.1
END

IF ~~ THEN BEGIN RJVNITOB6.1
  SAY @829 = @830
  IF ~~ THEN REPLY @831 EXIT
END

IF ~~ THEN BEGIN RJVNITOB9
  SAY @832 = @833
  IF ~~ THEN REPLY @834 DO ~SetGlobal("RJNIFV","GLOBAL",1)~ EXIT
END

END
