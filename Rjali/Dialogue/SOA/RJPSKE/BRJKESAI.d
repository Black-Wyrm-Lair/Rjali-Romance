
// Banters

CHAIN
IF ~InParty("RJRavel")
See("RJRavel")
Global("RJRavelS1","LOCALS",0)
!StateCheck("RJRavel",CD_STATE_NOTVALID)
!StateCheck("RJKesai",CD_STATE_NOTVALID)~ THEN BRJKESAI KeRvS1
@0 = @1 DO ~SetGlobal("RJRavelS1","LOCALS",1)~
== BRJRAVEL @2 = @3 = @4
== BRJKESAI @5 = @6
== BRJRAVEL @7 = @8
== BRJKESAI @9
== BRJRAVEL @10
EXIT

CHAIN
IF ~InParty("Rjali")
See("Rjali")
Global("RJRjaliS1","LOCALS",0)
G("RJKesaiRomanceActive",2)
!StateCheck("Rjali",CD_STATE_NOTVALID)
!StateCheck("RJKesai",CD_STATE_NOTVALID)~ THEN BRJKESAI KeRjS1
@50 DO ~SetGlobal("RJRjaliS1","LOCALS",1)~
== BRJALI @51
== BRJKESAI @52
== BRJALI @53 = @54 = @55 = @56
== BRJKESAI @57
== BRJALI @58 = @59 = @60
== BRJKESAI @61
== BRJALI @62
== BRJKESAI @63
== BRJALI @64
== BRJKESAI @65 = @66
EXIT
