
BEGIN BRJALI 

// Regular banters

CHAIN
IF ~InParty("Aerie")
See("Aerie")
GGT("Chapter",%bg2_chapter_1%)
!StateCheck("Aerie",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
G("RjaliAerie1",0)~ THEN BRJALI RjaliAerie1
@0
DO ~SetGlobal("RjaliAerie1","GLOBAL",1)~
== BAERIE @1
== BRJALI @2
== BAERIE @3
== BRJALI @4
== BAERIE @5
== BRJALI @6
EXIT

CHAIN 
IF ~InParty("Rjali")
See("Rjali")
!StateCheck("Cernd",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
G("RjaliCernd1",0)~ THEN BCERND RjaliCernd1
@7
DO ~SetGlobal("RjaliCernd1","GLOBAL",1)~
== BRJALI @8
== BCERND @9
== BRJALI @10
== BCERND @11
== BRJALI @12
== BCERND @13
EXIT

CHAIN
IF ~InParty("Edwin")
See("Edwin")
Gender("Edwin",MALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
G("RjaliEdwin1",0)~ THEN BRJALI RjaliEdwin1
@14
DO ~SetGlobal("RjaliEdwin1","GLOBAL",1)~
== BEDWIN @15
== BRJALI @16 = @17
== BEDWIN @18
== BRJALI @19
== BEDWIN @20
EXIT

CHAIN
IF ~InParty("Rjali")
See("Rjali")
!StateCheck("HaerDalis",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
G("RjaliHaerDalis1",0)~ THEN BHAERDA RjaliHaerDalis1
@21
DO ~SetGlobal("RjaliHaerDalis1","GLOBAL",1)~
== BRJALI @22
== BHAERDA @23
== BRJALI @24
== BHAERDA @25
== BRJALI @26
EXIT

CHAIN
IF ~InParty("Imoen2")
See("Imoen2")
GGT("Chapter",%bg2_chapter_1%)
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
G("RjaliImoen1",0)~ THEN BRJALI RjaliImoen1
@27
DO ~SetGlobal("RjaliImoen1","GLOBAL",1)~
== IMOEN2J @28
== BRJALI @29
== IMOEN2J @30
== BRJALI @31
== IMOEN2J @32
EXIT

CHAIN
IF ~InParty("Rjali")
See("Rjali")
GGT("Chapter",%bg2_chapter_1%)
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
G("RjaliJaheira1",0)~ THEN BJAHEIR RjaliJaheira1
@33
DO ~SetGlobal("RjaliJaheira1","GLOBAL",1)~
== BRJALI @34
== BJAHEIR @35
== BRJALI  @36
== BJAHEIR @37
== BRJALI  @38 = @39
== BJAHEIR @40
== BRJALI @41
EXIT

CHAIN 
IF ~InParty("Rjali")
See("Rjali")
!StateCheck("Jan",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
G("RjaliJan1",0)~ THEN BJAN RjaliJan1
@42
DO ~SetGlobal("RjaliJan1","GLOBAL",1)~
== BRJALI @43
== BJAN @44
== BRJALI @45
== BJAN @46
== BRJALI @47
== BJAN @48
EXIT

CHAIN 
IF ~InParty("Rjali")
See("Rjali")
!StateCheck("Keldorn",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
G("RjaliKeldorn1",0)~ THEN BKELDOR RjaliKeldorn1
@49
DO ~SetGlobal("RjaliKeldorn1","GLOBAL",1)~
== BRJALI @50
== BKELDOR @51
== BRJALI @52
== BKELDOR @53
== BRJALI @54
== BKELDOR @55
== BRJALI @56
== BKELDOR @57
EXIT

CHAIN
IF ~InParty("Korgan")
See("Korgan")
!StateCheck("Korgan",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
G("RjaliKorgan1",0)~ THEN BRJALI RjaliKorgan1
@58
DO ~SetGlobal("RjaliKorgan1","GLOBAL",1)~
== BKORGAN @59
== BRJALI @60
== BKORGAN @61
== BRJALI @62
== BKORGAN @63
EXIT

CHAIN 
IF ~InParty("Mazzy")
See("Mazzy")
!StateCheck("Mazzy",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
G("RjaliMazzy1",0)~ THEN BRJALI RjaliMazzy1
@64
DO ~SetGlobal("RjaliMazzy1","GLOBAL",1)~
== BMAZZY @65
== BRJALI @66
== BMAZZY @67
== BRJALI @68
== BMAZZY @69
EXIT

CHAIN
IF ~InParty("Minsc")
See("Minsc")
GGT("Chapter",%bg2_chapter_1%)
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
G("RjaliMinsc1",0)~ THEN BRJALI RjaliMinsc1
@70
DO ~SetGlobal("RjaliMinsc1","GLOBAL",1)~
== BMINSC @71
== BRJALI @72
== BMINSC @73
== BRJALI @74
== BMINSC @75
== BRJALI @76
== BMINSC @77 = @78
== BRJALI @79
EXIT

CHAIN 
IF ~InParty("Rjali")
See("Rjali")
!StateCheck("Nalia",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
G("RjaliNalia1",0)~ THEN BNALIA RjaliNalia1
@80
DO ~SetGlobal("RjaliNalia1","GLOBAL",1)~
== BRJALI @81
== BNALIA @82
== BRJALI @83
== BNALIA @84
== BRJALI @85
EXIT 

CHAIN 
IF ~InParty("Rjali")
See("Rjali")
!StateCheck("Valygar",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
G("RjaliValygar1",0)~ THEN BVALYGA RjaliValygar1
@86
DO ~SetGlobal("RjaliValygar1","GLOBAL",1)~
== BRJALI @87
== BVALYGA @88
== BRJALI @89
== BVALYGA @90
== BRJALI @91
== BVALYGA @92
== BRJALI @93
EXIT

CHAIN
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
G("RjaliViconia1",0)~ THEN BRJALI RjaliViconia1
@94
DO ~SetGlobal("RjaliViconia1","GLOBAL",1)~
== BVICONI @95
== BRJALI @96
== BVICONI @97
== BRJALI @98
== BVICONI @99
EXIT

CHAIN
IF ~InParty("Yoshimo")
See("Yoshimo")
GGT("Chapter",%bg2_chapter_1%)
!StateCheck("Yoshimo",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
CombatCounter(0)
!See([ENEMY])
G("RjaliYoshimo1",0)~ THEN BRJALI RjaliYoshimo1
@100
DO ~SetGlobal("RjaliYoshimo1","GLOBAL",1)~
== BYOSHIM @101
== BRJALI @102
== BYOSHIM @103
== BRJALI @104
== BYOSHIM @105
== BRJALI @106
== BYOSHIM @107
EXIT

CHAIN
IF ~InParty("Edwin")
See("Edwin")
Gender("Edwin",MALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
G("RjaliEdwin2",0)~ THEN BRJALI RjaliEdwin2
@108
DO ~SetGlobal("RjaliEdwin2","GLOBAL",1)~
== BEDWIN @109
== BRJALI @110
== BEDWIN @111
== BRJALI @112
== BEDWIN @113
== BRJALI @114
== BEDWIN @115
EXIT

CHAIN
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
G("RjaliImoen1",1)~ THEN BRJALI RjaliImoen2
@116
DO ~SetGlobal("RjaliImoen1","GLOBAL",2)~
== IMOEN2J @117
== BRJALI @118
== IMOEN2J @119
== BRJALI @120 = @121
== IMOEN2J @122
== BRJALI @123
== IMOEN2J @124
EXIT

CHAIN
IF ~InParty("Jaheira")
See("Jaheira")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
G("RjaliJaheira1",1)~ THEN BRJALI RjaliJaheira2
@125
DO ~SetGlobal("RjaliJaheira1","GLOBAL",2)~
== BJAHEIR @126
== BRJALI @127
== BJAHEIR @128
== BRJALI @129 = @130 = @131
== BJAHEIR @132
== BRJALI @133
== BJAHEIR @134
EXIT

CHAIN
IF ~InParty("Minsc")
See("Minsc")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
G("RjaliMinsc1",1)~ THEN BRJALI RjaliMinsc2
@135
DO ~SetGlobal("RjaliMinsc1","GLOBAL",2)~
== BMINSC @136
== BRJALI @137
== BMINSC @138 = @139 = @140 = @141 = @142 = @143
== BRJALI @144
== BMINSC @145
== BRJALI @146
EXIT

CHAIN
IF ~InParty("Viconia")
See("Viconia")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
G("RjaliViconia1",1)~ THEN BRJALI RjaliViconia2
@147
DO ~SetGlobal("RjaliViconia1","GLOBAL",2)~
== BVICONI @148
== BRJALI @149
== BVICONI @150
== BRJALI @151
== BVICONI @152
== BRJALI @153
EXIT

CHAIN
IF ~InParty("Rjali")
See("Rjali")
Gender("Edwin",MALE)
!StateCheck("Edwin",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
G("RjaliEdwin3",0)~ THEN BEDWIN RjaliEdwin3
@154
DO ~SetGlobal("RjaliEdwin3","GLOBAL",1)~
== BRJALI @155
== BEDWIN @156
== BRJALI @157
== BEDWIN @158
== BRJALI @159
== BEDWIN @160
EXIT

CHAIN
IF ~InParty("Imoen2")
See("Imoen2")
!StateCheck("Imoen2",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
G("RjaliImoen1",2)~ THEN BRJALI RjaliImoen3
@161
DO ~SetGlobal("RjaliImoen1","GLOBAL",3)~
== IMOEN2J @162
== BRJALI @163
== IMOEN2J @164
== BRJALI @165
== IMOEN2J @166
EXIT

CHAIN
IF ~InParty("Rjali")
See("Rjali")
!StateCheck("Jaheira",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
G("RjaliJaheira1",2)~ THEN BJAHEIR RjaliJaheira3
@167
DO ~SetGlobal("RjaliJaheira1","GLOBAL",3)~
== BRJALI @168
== BJAHEIR @169
== BRJALI @170
== BJAHEIR @171
== BRJALI @172
== BJAHEIR @173
EXIT

CHAIN
IF ~InParty("Rjali")
See("Rjali")
!StateCheck("Minsc",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
G("RjaliMinsc1",2)~ THEN BMINSC RjaliMinsc2
@174
DO ~SetGlobal("RjaliMinsc1","GLOBAL",3)~
== BRJALI @175
== BMINSC @176
== BRJALI @177
== BMINSC @178
== BRJALI @179
EXIT

CHAIN
IF ~InParty("Rjali")
See("Rjali")
!StateCheck("Viconia",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
G("RjaliViconia1",2)~ THEN BVICONI RjaliViconia3
@180
DO ~SetGlobal("RjaliViconia1","GLOBAL",3)~
== BRJALI @181
== BVICONI @182
== BRJALI @183
== BVICONI @184
== BRJALI @185
EXIT
