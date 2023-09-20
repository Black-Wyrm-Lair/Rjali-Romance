// Read this dialogue file second, after Rjali.d.

BEGIN RJALIP

// This is the file we use when you try to kick Rjali out of the party. As you can see, she is having none of it. She simply will NOT leave. Live with it!

// The player kicks Rjali out. Rjali refuses to go!

IF ~G("RjaliKickedOut",0) G("RjaliRefuses",0)~ r1
SAY @0
++ @1 DO ~SetGlobal("RjaliRefuses","GLOBAL",1) JoinParty()~ EXIT
++ @2 DO ~SetGlobal("RjaliRefuses","GLOBAL",1) JoinParty()~ EXIT
END

IF ~G("RjaliKickedOut",0) G("RjaliRefuses",1)~ r2
SAY @3
++ @4 DO ~SetGlobal("RjaliRefuses","GLOBAL",2) JoinParty()~ EXIT
++ @2 DO ~SetGlobal("RjaliRefuses","GLOBAL",2) JoinParty()~ EXIT
END

IF ~G("RjaliKickedOut",0) G("RjaliRefuses",2)~ r3
SAY @5
++ @6 DO ~SetGlobal("RjaliRefuses","GLOBAL",1) JoinParty()~ EXIT
++ @2 DO ~SetGlobal("RjaliRefuses","GLOBAL",1) JoinParty()~ EXIT
END