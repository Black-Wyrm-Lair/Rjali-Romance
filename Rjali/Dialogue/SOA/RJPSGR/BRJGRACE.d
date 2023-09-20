
// Banters

CHAIN
IF ~InParty("RJAnnah")
See("RJAnnah")
Global("RJAnnahS1","LOCALS",0)
!StateCheck("RJAnnah",CD_STATE_NOTVALID)
!StateCheck("RJGrace",CD_STATE_NOTVALID)~ THEN BRJGRACE GrAnS1
@0 DO ~SetGlobal("RJAnnahS1","LOCALS",1)~
== BRJANNAH @1
== BRJGRACE @2
== BRJANNAH @3 = @4
== BRJGRACE @5 = @6
== BRJANNAH @7 = @8
== BRJGRACE @9
EXIT

CHAIN
IF ~InParty("Rjali")
See("Rjali")
Global("RJRjaliS1","LOCALS",0)
G("RJGraceRomanceActive",2)
!StateCheck("Rjali",CD_STATE_NOTVALID)
!StateCheck("RJGrace",CD_STATE_NOTVALID)~ THEN BRJGRACE GrRjS1
@50 = @51 = @52 DO ~SetGlobal("RJRjaliS1","LOCALS",1)~
== BRJALI @53
== BRJGRACE @54
== BRJALI @55 = @56 = @57 = @58 = @59 = @60 = @61
== BRJGRACE @62 = @63 = @64 = @65
EXIT
