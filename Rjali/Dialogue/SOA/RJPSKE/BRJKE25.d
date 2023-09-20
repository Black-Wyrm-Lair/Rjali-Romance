
// Banters

CHAIN
IF ~InParty("RJRavel")
See("RJRavel")
Global("RJRavelT1","LOCALS",0)
!StateCheck("RJRavel",CD_STATE_NOTVALID)
!StateCheck("RJKesai",CD_STATE_NOTVALID)~ THEN BRJKE25 KeRvT1
@0 = @1 DO ~SetGlobal("RJRavelT1","LOCALS",1)~
== BRJRV25 @2 = @3 = @4
== BRJKE25 @5 = @6 = @7
== BRJRV25 @8 = @9
== BRJKE25 @10 = @11
== BRJRV25 @12 = @13
EXIT

CHAIN
IF ~InParty("Rjali")
See("Rjali")
Global("RJRjaliT1","LOCALS",0)
!StateCheck("Rjali",CD_STATE_NOTVALID)
!StateCheck("RJKesai",CD_STATE_NOTVALID)~ THEN BRJKE25 KeRjT1
@50 DO ~SetGlobal("RJRjaliT1","LOCALS",1)~
== BRJALI25 @51
== BRJKE25 @52 = @53
== BRJALI25 @54 = @55 = @56
== BRJKE25 @57
== BRJALI25 @58
EXIT
