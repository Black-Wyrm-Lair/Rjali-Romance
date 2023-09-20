
// Banters
    
CHAIN
IF ~InParty("M#AMBER")
See("M#AMBER")
Global("RJAmberT1","LOCALS",0)
Global("M#AmberRomanceActive","GLOBAL",2)
!StateCheck("M#AMBER",CD_STATE_NOTVALID)
!StateCheck("RJGrace",CD_STATE_NOTVALID)~ THEN BRJGR25 GrAmT1
@100 DO ~SetGlobal("RJAmberT1","LOCALS",1)~
== BM#AMBER @101
== BRJGR25 @102 = @103
== BM#AMBER @104 = @105 = @106 = @107
== BRJGR25 @108 = @109 = @110
== BM#AMBER @111 = @112 = @113
== BRJGR25 @114 = @115 = @116
== BM#AMBER @117 = @118 = @119
== BRJGR25 @120
EXIT

CHAIN
IF ~InParty("RJAnnah")
See("RJAnnah")
Global("RJAnnahT1","LOCALS",0)
!StateCheck("RJAnnah",CD_STATE_NOTVALID)
!StateCheck("RJGrace",CD_STATE_NOTVALID)~ THEN BRJGR25 GrAnT1
@0 DO ~SetGlobal("RJAnnahT1","LOCALS",1)~
== BRJAN25 @1
== BRJGR25 @2
== BRJAN25 @3
== BRJGR25 @4
== BRJAN25 @5
== BRJGR25 @6
== BRJAN25 @7
== BRJGR25 @8 = @9
== BRJAN25 @10 = @11
== BRJGR25 @12
== BRJAN25 @13
== BRJGR25 @14 = @15 = @16 = @17
== BRJAN25 @18
== BRJGR25 @19
== BRJAN25 @20 = @21 = @22 = @23
== BRJGR25 @24
== BRJAN25 @25
== BRJGR25 @26 = @27
EXIT

CHAIN
IF ~InParty("Rjali")
See("Rjali")
Global("RJRjaliT1","LOCALS",0)
!StateCheck("Rjali",CD_STATE_NOTVALID)
!StateCheck("RJGrace",CD_STATE_NOTVALID)~ THEN BRJGR25 GrRjT1
@50 DO ~SetGlobal("RJRjaliT1","LOCALS",1)~
== BRJALI25 @51
== BRJGR25 @52
== BRJALI25 @53
== BRJGR25 @54 = @55 = @56
== BRJALI25 @57 = @58 = @59 = @60 = @61 = @62
== BRJGR25 @63 = @64
== BRJALI25 @65 = @66 = @67
== BRJGR25 @68
EXIT
