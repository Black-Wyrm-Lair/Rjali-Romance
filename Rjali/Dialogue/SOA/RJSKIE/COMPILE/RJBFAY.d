
//  Skie #1 - SoA - Soultaker Dagger

CHAIN IF ~Global("RJFASKB1","LOCALS",0)
          InParty("SkieDV")
          See("SkieDV")
          !StateCheck("SkieDV",CD_STATE_NOTVALID)~ THEN BRJFAY RJFASKB1
@80 DO ~SetGlobal("RJFASKB1","LOCALS",1)~
== BRJFAY @81
== 1XSKIEB @82 = @83 = @84 = @85
== BRJFAY @86
== 1XSKIEB @87
== BRJFAY @88
== 1XSKIEB @89
== BRJFAY @90 = @91
== 1XSKIEB @92
== BRJFAY @93
END
IF ~~ THEN EXIT

//  Skie #1 - ToB - Baby Talk

CHAIN IF ~Global("RJFASKB5","LOCALS",0)
          InParty("SkieDV")
          See("SkieDV")
          !StateCheck("SkieDV",CD_STATE_NOTVALID)~ THEN BRJFAY25 RJFASKB5
@1080 DO ~SetGlobal("RJFASKB5","LOCALS",1)~
== 1XSKI25B @1081 = @1082 = @1083
== BRJFAY25 @1084 = @1085 = @1086
== 1XSKI25B @1087 = @1088 = @1089
== BRJFAY25 @1090 = @1091 = @1092 = @1093
== 1XSKI25B @1094
== BRJFAY25 @1095
END
IF ~~ THEN EXIT
