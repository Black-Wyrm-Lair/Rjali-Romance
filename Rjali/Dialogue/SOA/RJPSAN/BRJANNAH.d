
// Banters

CHAIN
IF ~InParty("RJRavel")
See("RJRavel")
Global("RJRavelS1","LOCALS",0)
!StateCheck("RJRavel",CD_STATE_NOTVALID)
!StateCheck("RJAnnah",CD_STATE_NOTVALID)~ THEN BRJANNAH AnRvS1
@0 DO ~SetGlobal("RJRavelS1","LOCALS",1)~
== BRJRAVEL @1
== BRJANNAH @2 = @3
== BRJRAVEL @4 = @5 = @6
== BRJANNAH @8
== BRJRAVEL @9
== BRJANNAH @10
== BRJRAVEL @11
== BRJANNAH @12
EXIT

CHAIN
IF ~InParty("Rjali")
See("Rjali")
Global("RJRjaliS1","LOCALS",0)
G("RJAnnahRomanceActive",2)
!StateCheck("Rjali",CD_STATE_NOTVALID)
!StateCheck("RJAnnah",CD_STATE_NOTVALID)~ THEN BRJANNAH AnRjS1
@50 = @51 DO ~SetGlobal("RJRjaliS1","LOCALS",1)~
== BRJALI @52 = @53 = @54 = @55 = @56 = @57
== BRJANNAH @58 = @59 = @60
== BRJALI @61 = @62
== BRJANNAH @63 = @64
EXIT
