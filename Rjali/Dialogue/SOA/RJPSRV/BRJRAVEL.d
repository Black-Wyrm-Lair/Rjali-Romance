
// Banters

CHAIN
IF ~InParty("RJGrace")
See("RJGrace")
Global("RJGraceS1","LOCALS",0)
!StateCheck("RJGrace",CD_STATE_NOTVALID)
!StateCheck("RJRavel",CD_STATE_NOTVALID)~ THEN BRJRAVEL RvGrS1
@0 DO ~SetGlobal("RJGraceS1","LOCALS",1)~
== BRJGRACE @1
== BRJRAVEL @2
== BRJGRACE @3 = @4 = @5 = @6
== BRJRAVEL @7 = @8 = @9 = @10 = @11
== BRJGRACE @12
== BRJRAVEL @13
EXIT

CHAIN
IF ~InParty("Rjali")
See("Rjali")
Global("RJRjaliS1","LOCALS",0)
G("RJRavelRomanceActive",2)
!StateCheck("Rjali",CD_STATE_NOTVALID)
!StateCheck("RJRavel",CD_STATE_NOTVALID)~ THEN BRJRAVEL RvRjS1
@50 DO ~SetGlobal("RJRjaliS1","LOCALS",1)~
== BRJALI @51
== BRJRAVEL @52
== BRJALI @53 = @54 = @55 = @56 = @57 = @58 = @59 = @60
== BRJRAVEL @61 = @62 = @63 = @64 = @65
== BRJALI @66
EXIT
