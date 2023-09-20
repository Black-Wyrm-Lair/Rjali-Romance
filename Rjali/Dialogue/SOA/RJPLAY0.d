
// Stubs

BEGIN RJDRYAD

BEGIN RJPLAY1

BEGIN RJPLAY2

BEGIN RJPLAY3

BEGIN RJPLAY4

BEGIN RJPLAY0

IF ~False()~ THEN BEGIN 0 // Used for SoA group chat NPC mod addenda (RJMULTI.d)
SAY @0
IF ~~ THEN EXIT
END

IF ~False()~ THEN BEGIN 1 // Used for SoA group chat termination
SAY @0
IF ~~ THEN EXIT
END

IF ~False()~ THEN BEGIN 2 // Used for ToB group chat NPC mod addenda (RJMULTI.d)
SAY @0
IF ~~ THEN EXIT
END

IF ~False()~ THEN BEGIN 3 // Used for ToB group chat termination
SAY @0
IF ~~ THEN EXIT
END

IF ~False()~ THEN BEGIN 4
SAY @0
IF ~~ THEN EXIT
END

// Getting the PC's attention

CHAIN IF ~G("RJPlay",1)~ THEN RJPLAY0 Intro
@150 = @151 = @152 = @153 = @154
== IMOENJ IF ~InParty("Imoen")~ THEN @156
== IMOEN2J IF ~InParty("Imoen2")~ THEN @156
== RJPLAY0 @155
END
IF ~~ THEN REPLY @157 DO ~SetGlobal("RJPlay","GLOBAL",2) DestroySelf()~ EXIT
