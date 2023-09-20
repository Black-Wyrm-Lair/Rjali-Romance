
CHAIN
IF ~InParty("Rjali")
G("RJiniiJIDND",99)
See("Rjali")
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
Global("RjaliAerieToB1","GLOBAL",0)~ THEN BAERIE25 RjaliAerieToB1
@0
DO ~SetGlobal("RjaliAerieToB1","GLOBAL",1)~
== BRJALI25 @1
== BAERIE25 @2
== BRJALI25 @3
== BAERIE25 @4
== BRJALI25 @5
== BAERIE25 @6
== BRJALI25 @7
== BAERIE25 @8
== BRJALI25 @9
EXIT

CHAIN
IF ~InParty("Rjali")
See("Rjali")
!StateCheck("Anomen",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
Global("RjaliAnomenToB1","GLOBAL",0)~ THEN BANOME25 RjaliAnomenToB1
@10
DO ~SetGlobal("RjaliAnomenToB1","GLOBAL",1)~
== BRJALI25 @11
== BANOME25 @12
== BRJALI25 @13
== BANOME25 @14
== BRJALI25 @15
== BANOME25 @16
== BANOME25 @17
== BRJALI25 @18
== BRJALI25 @19
EXIT

CHAIN
IF ~InParty("Rjali")
See("Rjali")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
Global("RjaliCerndToB1","GLOBAL",0)~ THEN BCERND25 RjaliCerndToB1
@20
DO ~SetGlobal("RjaliCerndToB1","GLOBAL",1)~
== BRJALI25 @21
== BCERND25 @22
== BRJALI25 @23
EXIT

CHAIN 
IF ~InParty("Rjali")
See("Rjali")
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
Global("RjaliEdwinToB1","GLOBAL",0)~ THEN BEDWIN25 RjaliEdwinToB1
@24
DO ~SetGlobal("RjaliEdwinToB1","GLOBAL",1)~
== BRJALI25 @25
== BEDWIN25 @26
== BRJALI25 @27
== BEDWIN25 @28
== BRJALI25 @29
== BEDWIN25 @30
== BRJALI25 @31
== BEDWIN25 @32
== BRJALI25 @33
EXIT

CHAIN
IF ~InParty("Rjali")
See("Rjali")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
Global("RjaliHaerDalisToB1","GLOBAL",0)~ THEN BHAERD25 RjaliHaerDalis1
@34
DO ~SetGlobal("RjaliHaerDalisToB1","GLOBAL",1)~
== BRJALI25 @35
== BHAERD25 @36
== BRJALI25 @37
== BHAERD25 @38
== BRJALI25 @39
EXIT

CHAIN 
IF ~InParty("Rjali")
See("Rjali")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
Global("RjaliImoenToB1","GLOBAL",0)~ THEN BIMOEN25 RjaliImoenToB1
@40
DO ~SetGlobal("RjaliImoenToB1","GLOBAL",1)~
== BRJALI25 @41
== BIMOEN25 @42
== BRJALI25 @43
== BIMOEN25 @44
== BRJALI25 @45
== BIMOEN25 @46
== BRJALI25 @47
== BIMOEN25 @48
== BRJALI25 @49
== BIMOEN25 @50
== BRJALI25 @51
== BIMOEN25 @52
EXIT

CHAIN 
IF ~InParty("Rjali")
See("Rjali")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
Global("RjaliImoenToB1","GLOBAL",0)~ THEN BIMOEN25 RjaliImoenToB1
@53
DO ~SetGlobal("RjaliImoenToB1","GLOBAL",1)~
== BRJALI25 @54
== BIMOEN25 @55
== BRJALI25 @56
== BIMOEN25 @57
== BRJALI25 @58
== BIMOEN25 @59
== BRJALI25 @60
== BIMOEN25 @61
== BRJALI25 @62
== BIMOEN25 @63
EXIT


CHAIN 
IF ~InParty("Rjali")
See("Rjali")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
Global("RjaliJaheiraToB1","GLOBAL",0)~ THEN BJAHEI25 RjaliJaheiraToB1
@64
DO ~SetGlobal("RjaliJaheiraToB1","GLOBAL",1)~
== BRJALI25 @65
== BJAHEI25 @66
== BRJALI25 @67
== BJAHEI25 @68
== BRJALI25 @69
== BJAHEI25 @70
== BRJALI25 @71
EXIT

CHAIN 
IF ~InParty("Rjali")
See("Rjali")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
Global("RjaliJanToB1","GLOBAL",0)~ THEN BJAN25 RjaliJanToB1
@72
DO ~SetGlobal("RjaliJanToB1","GLOBAL",1)~
== BRJALI25 @73
== BJAN25 @74
== BRJALI25 @75
== BJAN25 @76
== BJAN25 @77
== BJAN25 @78
== BRJALI25 @79
== BJAN25 @80
== BRJALI25 @81
== BJAN25 @82
== BRJALI25 @83
== BJAN25 @84
== BRJALI25 @85
EXIT

CHAIN
IF ~InParty("Keldorn")
See("Keldorn")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
Global("RjaliKeldornToB1","GLOBAL",0)~ THEN BRJALI25 RjaliKeldornToB1
@86
DO ~SetGlobal("RjaliKeldornToB1","GLOBAL",1)~
== BKELDO25 @87
== BRJALI25 @88
== BKELDO25 @89
== BRJALI25 @90
== BKELDO25 @91
== BRJALI25 @92
== BKELDO25 @93
== BRJALI25 @94
== BKELDO25 @95
EXIT

CHAIN 
IF ~InParty("Rjali")
See("Rjali")
!StateCheck("Rjali",CD_STATE_NOTVALID)
Global("RjaliKorganToB1","GLOBAL",0)~ THEN BKORGA25 RjaliKorganToB1
@96
DO ~SetGlobal("RjaliKorganToB1","GLOBAL",1)~
== BRJALI25 @97
== BKORGA25 @98
== BRJALI25 @99
== BKORGA25 @100
== BRJALI25 @101
EXIT

CHAIN
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
Global("RjaliMazzyToB1","GLOBAL",0)~ THEN BRJALI25 RjaliMazzyToB1
@102
DO ~SetGlobal("RjaliMazzyToB1","GLOBAL",1)~
== BMAZZY25 @103
== BRJALI25 @104
== BMAZZY25 @105
== BRJALI25 @106
== BMAZZY25 @107
EXIT

CHAIN 
IF ~InParty("Rjali")
See("Rjali")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
Global("RjaliMinscToB1","GLOBAL",0)~ THEN BMINSC25 RjaliMinscToB1
@108
DO ~SetGlobal("RjaliMinscToB1","GLOBAL",1)~
== BRJALI25 @109
== BMINSC25 @110
== BRJALI25 @111
== BMINSC25 @112
== BMINSC25 @113
== BMINSC25 @114
== BRJALI25 @115
== BMINSC25 @116
== BRJALI25 @117
EXIT

CHAIN
IF ~InParty("Nalia")
See("Nalia")
!StateCheck("Nalia",CD_STATE_NOTVALID)
Global("RjaliNaliaToB1","GLOBAL",0)
Global("PGNaliaRomanceActive","GLOBAL",2)~ THEN BRJALI25 RjaliNaliaToB1
@118
DO ~SetGlobal("RjaliNaliaToB1","GLOBAL",1)~
== BNALIA25 @119
== BRJALI25 @120
== BNALIA25 @121
== BRJALI25 @122
== BNALIA25 @123
== BRJALI25 @124
== BNALIA25 @125
== BRJALI25 @126
EXIT

CHAIN 
IF ~InParty("Rjali")
See("Rjali")
!StateCheck("Rjali",CD_STATE_NOTVALID)
!StateCheck("Valygar",CD_STATE_NOTVALID)
Global("RjaliValygarToB2","GLOBAL",0)~ THEN BVALYG25 RjaliValygarToB2
@127
DO ~SetGlobal("RjaliValygarToB2","GLOBAL",1)~
== BRJALI25 @128
== BVALYG25 @129
== BRJALI25 @130
== BVALYG25 @131
== BRJALI25 @132
== BVALYG25 @133
EXIT

CHAIN 
IF ~InParty("Rjali")
See("Rjali")
!StateCheck("Rjali",CD_STATE_NOTVALID)
!StateCheck("Viconia",CD_STATE_NOTVALID)
Global("RjaliViconiaToB1","GLOBAL",0)~ THEN BVICON25 RjaliViconiaToB1
@134
DO ~SetGlobal("RjaliViconiaToB1","GLOBAL",1)~
== BRJALI25 @135
== BVICON25 @136
== BRJALI25 @137
== BVICON25 @138
== BRJALI25 @139
== BVICON25 @140
EXIT
