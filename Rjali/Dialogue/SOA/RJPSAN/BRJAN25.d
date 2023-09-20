
// Banters

CHAIN
IF ~InParty("RJRavel")
See("RJRavel")
Global("RJRavelT1","LOCALS",0)
!StateCheck("RJRavel",CD_STATE_NOTVALID)
!StateCheck("RJAnnah",CD_STATE_NOTVALID)~ THEN BRJAN25 AnRvT1
@0 DO ~SetGlobal("RJRavelT1","LOCALS",1)~
== BRJRV25 @1
== BRJAN25 @2
== BRJRV25 @3
== BRJAN25 @4 = @5
== BRJRV25 @6 = @7 = @8
== BRJAN25 @9
== BRJRV25 @10
== BRJAN25 @11
== BRJRV25 @12
== BRJAN25 @13
EXIT

CHAIN
IF ~InParty("Rjali")
See("Rjali")
Global("RJRjaliT1","LOCALS",0)
!StateCheck("Rjali",CD_STATE_NOTVALID)
!StateCheck("RJAnnah",CD_STATE_NOTVALID)~ THEN BRJAN25 AnRjT1
@50 = @51 DO ~SetGlobal("RJRjaliT1","LOCALS",1)~
== BRJALI25 @52 = @53 = @54 = @55 = @56 = @57
== BRJAN25 @58
EXIT
