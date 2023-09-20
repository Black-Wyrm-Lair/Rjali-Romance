
//  Saerileth #1 - SoA - Discipline

CHAIN IF ~Global("RJFASAB1","LOCALS",0)
          InParty("Saerileth")
          See("Saerileth")
          !StateCheck("Saerileth",CD_STATE_NOTVALID)~ THEN BRJFAY RJFASAB1
@100 DO ~SetGlobal("RJFASAB1","LOCALS",1)~
== BSAERILE @101
== BRJFAY @102
== BSAERILE @103 = @104 = @105 = @106
== BRJFAY @107 = @108
== BSAERILE @110
== BRJFAY @111 = @112
== BSAERILE @113
END
IF ~~ THEN EXIT

//  Saerileth #1 - ToB - Trust

CHAIN IF ~Global("RJFASAB5","LOCALS",0)
          InParty("Saerileth")
          See("Saerileth")
          !StateCheck("Saerileth",CD_STATE_NOTVALID)~ THEN BRJFAY25 RJFASAB5
@1100 DO ~SetGlobal("RJFASAB5","LOCALS",1)~
== BRJFAY25 @1101
== BSAERI25 @1102 = @1103
== BRJFAY25 @1104
== BSAERI25 @1105
== BRJFAY25 @1106
== BSAERI25 @1107
== BRJFAY25 @1108 = @1109 = @1110
END
IF ~~ THEN EXIT
