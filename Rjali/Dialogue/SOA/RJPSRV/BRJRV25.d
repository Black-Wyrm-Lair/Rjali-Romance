
// Banters

CHAIN
IF ~InParty("RJGrace")
See("RJGrace")
Global("RJGraceT1","LOCALS",0)
!StateCheck("RJGrace",CD_STATE_NOTVALID)
!StateCheck("RJRavel",CD_STATE_NOTVALID)~ THEN BRJRV25 RvGrT1
@0 = @1 DO ~SetGlobal("RJGraceT1","LOCALS",1)~
== BRJGR25 @2
== BRJRV25 @3 = @4 = @5 = @6
== BRJGR25 @7
== BRJRV25 @8 = @9
== BRJGR25 @10
EXIT

CHAIN
IF ~InParty("Rjali")
See("Rjali")
Global("RJRjaliT1","LOCALS",0)
!StateCheck("Rjali",CD_STATE_NOTVALID)
!StateCheck("RJRavel",CD_STATE_NOTVALID)~ THEN BRJRV25 RvRjT1
@50 DO ~SetGlobal("RJRjaliT1","LOCALS",1)~
== BRJALI25 @51 = @52 = @53
== BRJRV25 @54 = @55
== BRJALI25 @56 = @57
EXIT
