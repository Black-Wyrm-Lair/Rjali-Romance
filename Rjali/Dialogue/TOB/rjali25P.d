
// This is the dialogue file for Rjali's kickout in ToB.

BEGIN RJALI25P

IF ~Global("RjaliToBKickedOut","GLOBAL",0)~ b1
SAY @0
++ @1 DO ~JoinParty()
          SetGlobal("RJJoin","LOCALS",1)~ EXIT
++ @2 DO ~JoinParty()
          SetGlobal("RJJoin","LOCALS",1)~ EXIT
END