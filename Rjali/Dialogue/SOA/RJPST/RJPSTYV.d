
BEGIN RJPSTYV

IF ~~ THEN BEGIN 0 // Used for NPC tales for Yves (SoA)
SAY @6
++ @7 EXIT
IF ~G("RJYVPC",0)~ THEN REPLY @100 DO ~SetGlobal("RJYVPC","GLOBAL",1)~ GOTO RJYVPC
IF ~InParty("RJAnnah") G("RJYVAN",0)~ THEN REPLY @280 DO ~SetGlobal("RJYVAN","GLOBAL",1)~ EXTERN RJANNAHJ RJYVAN
IF ~InParty("RJGrace") G("RJYVGR",0)~ THEN REPLY @300 DO ~SetGlobal("RJYVGR","GLOBAL",1)~ EXTERN RJGRACEJ RJYVGR
IF ~InParty("RJRavel") G("RJYVRV",0)~ THEN REPLY @260 DO ~SetGlobal("RJYVRV","GLOBAL",1)~ EXTERN RJRAVELJ RJYVRV
IF ~InParty("RJKesai") G("RJYVKE",0)~ THEN REPLY @850 DO ~SetGlobal("RJYVKE","GLOBAL",1)~ EXTERN RJKESAIJ RJYVKE
IF ~G("RJParkFY",0) G("RJYVFY",0)~ THEN REPLY @620 DO ~SetGlobal("RJYVFY","GLOBAL",1)~ EXTERN RJFAY RJYVFY
IF ~InParty("Neera") G("RJYVNE",0)~ THEN REPLY @200 DO ~SetGlobal("RJYVNE","GLOBAL",1)~ EXTERN NEERAJ RJYVNE
IF ~InParty("Aerie") G("RJYVAE",0)~ THEN REPLY @240 DO ~SetGlobal("RJYVAE","GLOBAL",1)~ EXTERN AERIEJ RJYVAE
IF ~InParty("Jaheira") G("RJYVJA",0)~ THEN REPLY @220 DO ~SetGlobal("RJYVJA","GLOBAL",1)~ EXTERN JAHEIRAJ RJYVJA
IF ~InParty("Viconia") G("RJYVVI",0)~ THEN REPLY @230 DO ~SetGlobal("RJYVVI","GLOBAL",1)~ EXTERN VICONIJ RJYVVI
IF ~InParty("Nalia") G("RJYVNA",0)~ THEN REPLY @250 DO ~SetGlobal("RJYVNA","GLOBAL",1)~ EXTERN NALIAJ RJYVNA
IF ~InParty("Jan") G("RJYVJN",0)~ THEN REPLY @140 DO ~SetGlobal("RJYVJN","GLOBAL",1)~ EXTERN JANJ RJYVJN
IF ~InParty("Minsc") G("RJYVMI",0)~ THEN REPLY @180 DO ~SetGlobal("RJYVMI","GLOBAL",1)~ EXTERN MINSCJ RJYVMI
IF ~InParty("Rasaad") G("RJYVRA",0)~ THEN REPLY @420 DO ~SetGlobal("RJYVRA","GLOBAL",1)~ EXTERN RASAADJ RJYVRA
IF ~InParty("Yoshimo") G("RJYVYO",0)~ THEN REPLY @440 DO ~SetGlobal("RJYVYO","GLOBAL",1)~ EXTERN YOSHJ RJYVYO
END

IF ~~ THEN BEGIN 1 // Used for NPC tales for Yves (ToB)
SAY @6
++ @7 EXIT
IF ~G("RJYVPC",0)~ THEN REPLY @100 DO ~SetGlobal("RJYVPC","GLOBAL",1)~ GOTO RJYVPCT
IF ~InParty("RJAnnah") G("RJYVAN",0)~ THEN REPLY @280 DO ~SetGlobal("RJYVAN","GLOBAL",1)~ EXTERN RJAN25J RJYVANT
IF ~InParty("RJGrace") G("RJYVGR",0)~ THEN REPLY @300 DO ~SetGlobal("RJYVGR","GLOBAL",1)~ EXTERN RJGR25J RJYVGRT
IF ~InParty("RJRavel") G("RJYVRV",0)~ THEN REPLY @260 DO ~SetGlobal("RJYVRV","GLOBAL",1)~ EXTERN RJRV25J RJYVRVT
IF ~InParty("RJKesai") G("RJYVKE",0)~ THEN REPLY @850 DO ~SetGlobal("RJYVKE","GLOBAL",1)~ EXTERN RJKE25J RJYVKET
IF ~G("RJParkFY",0) G("RJYVFY",0)~ THEN REPLY @620 DO ~SetGlobal("RJYVFY","GLOBAL",1)~ EXTERN RJFAY RJYVFY
IF ~InParty("Neera") G("RJYVNE",0)~ THEN REPLY @200 DO ~SetGlobal("RJYVNE","GLOBAL",1)~ EXTERN NEERA25J RJYVNET
IF ~InParty("Aerie") G("RJYVAE",0)~ THEN REPLY @240 DO ~SetGlobal("RJYVAE","GLOBAL",1)~ EXTERN AERIE25J RJYVAET
IF ~InParty("Jaheira") G("RJYVJA",0)~ THEN REPLY @220 DO ~SetGlobal("RJYVJA","GLOBAL",1)~ EXTERN JAHEI25J RJYVJAT
IF ~InParty("Viconia") G("RJYVVI",0)~ THEN REPLY @230 DO ~SetGlobal("RJYVVI","GLOBAL",1)~ EXTERN VICON25J RJYVVIT
IF ~InParty("Nalia") G("RJYVNA",0)~ THEN REPLY @250 DO ~SetGlobal("RJYVNA","GLOBAL",1)~ EXTERN NALIA25J RJYVNAT
IF ~InParty("Jan") G("RJYVJN",0)~ THEN REPLY @140 DO ~SetGlobal("RJYVJN","GLOBAL",1)~ EXTERN JAN25J RJYVJNT
IF ~InParty("Minsc") G("RJYVMI",0)~ THEN REPLY @180 DO ~SetGlobal("RJYVMI","GLOBAL",1)~ EXTERN MINSC25J RJYVMIT
IF ~InParty("Rasaad") G("RJYVRA",0)~ THEN REPLY @420 DO ~SetGlobal("RJYVRA","GLOBAL",1)~ EXTERN RASAA25J RJYVRAT
IF ~InParty("Yoshimo") G("RJYVYO",0)~ THEN REPLY @440 DO ~SetGlobal("RJYVYO","GLOBAL",1)~ EXTERN YOSHJ RJYVYOT
END

// Intro

IF ~IsGabber(Player1)~ THEN BEGIN MeetYV
SAY @0
++ @1 EXIT
IF ~G("RJFinalVisit",1) G("RJYVFV",0)~ THEN REPLY @800 GOTO MYV9
+ ~G("RJYVPID1",0)~ + @2 DO ~SetGlobal("RJYVPID1","GLOBAL",1)~ + MYV1
+ ~G("RJYVPID1",1) GLT("Chapter",%bg2_chapter_8%) G("RJiniiJIDAD",99) G("RJPort",2)~ + @8 + 0
+ ~G("RJYVPID1",1) GGT("Chapter",%bg2_chapter_7%) G("RJiniiJIDAD",99) G("RJPort",2)~ + @8 + 1
+ ~G("RJiniiJIDAD",4)~ + @10 DO ~SetGlobal("RJiniiJIDAD","GLOBAL",5)~ + MYV2
+ ~G("RJSobethJID",1)~ + @9 DO ~SetGlobal("RJSobethJID","GLOBAL",2)~ + MYV3
+ ~G("RJSobethJID",6)~ + @22 DO ~SetGlobal("RJSobethJID","GLOBAL",7)~ + MYV4
END

IF ~~ THEN BEGIN MYV1
SAY @3
++ @4 EXIT
+ ~GLT("Chapter",%bg2_chapter_8%) G("RJiniiJIDAD",99) G("RJPort",2)~ + @5 + 0
END

IF ~~ THEN BEGIN MYV2
SAY @11 = @12 = @13 = @14 = @15
++ @16 + MYV2.1
END

IF ~~ THEN BEGIN MYV2.1
SAY @17
++ @18 EXIT
END

IF ~~ THEN BEGIN MYV3
SAY @19 = @20
++ @21 EXIT
END

IF ~~ THEN BEGIN MYV4
SAY @23
++ @24 + MYV4.1
END

IF ~~ THEN BEGIN MYV4.1
SAY @25 = @26 = @27 = @28 = @29
++ @30 + MYV4.2
END

IF ~~ THEN BEGIN MYV4.2
SAY @31
++ @32 EXIT
END

IF ~~ THEN BEGIN MYV9
SAY @801 = @802
++ @803 DO ~SetGlobal("RJYVFV","GLOBAL",1)~ EXIT
END

// Vanilla, BG2EE, and PST Tales (SoA)

// PC's Tale

IF ~~ THEN BEGIN RJYVPC
SAY @101 = @102
++ @103 + RJYVPC.1
END

IF ~~ THEN BEGIN RJYVPC.1
SAY @104
IF ~!InParty("Rjali")~ THEN GOTO 0
IF ~InParty("Rjali")~ THEN REPLY @110 EXTERN RJALIJ RJYVRJ
END

// Rjali's Tale

CHAIN IF ~~ THEN RJALIJ RJYVRJ
@111
== RJPSTYV @112 = @113
== RJALIJ @114 = @115
== RJPSTYV @116
== RJALIJ @117 = @118 = @119 = @120
== RJALIJ IF ~InParty("RJRavel")~ THEN @121
== RJPSTYV IF ~InParty("RJRavel")~ THEN @122
== RJRAVELJ IF ~InParty("RJRavel")~ THEN @123
== RJALIJ @124 = @125 = @126 = @127 = @128 = @129
== RJPSTYV @130 = @131
== RJALIJ @132
== RJPSTYV @133 = @134
END
IF ~~ THEN EXTERN RJPSTYV 0

// Jan's Tale

CHAIN IF ~~ THEN JANJ RJYVJN
@141
== RJALIJ @142
== JANJ @143 = @144 = @145 = @146 = @147 = @148 = @149 = @150 = @151 = @152
== RJALIJ @153
== JANJ @154
== RJALIJ @155
== JANJ @156 = @157 = @158 = @159
== RJALIJ @160
== RJPSTYV @161 = @162 = @163 = @163 = @164 = @165 = @166 = @167
== JANJ @168
== RJPSTYV @169
== JANJ @170
== RJALIJ @171
END
IF ~~ THEN EXTERN RJPSTYV 0

// Minsc's Tale

CHAIN IF ~~ THEN MINSCJ RJYVMI
@181
== RJPSTYV @182
== MINSCJ @183
== RJPSTYV @184 = @185 = @186 = @187 = @188 = @189 = @190
== MINSCJ @191
END
IF ~~ THEN EXTERN RJPSTYV 0

// Neera's Tale

CHAIN IF ~~ THEN NEERAJ RJYVNE
@201
== RJPSTYV @202 = @203 = @204 = @205 = @206 = @207 = @208 = @209 = @210 = @211
== NEERAJ @212
END
IF ~~ THEN EXTERN RJPSTYV 0

// Jaheira's Tale

CHAIN IF ~~ THEN JAHEIRAJ RJYVJA
@221
== RJPSTYV @222
== JAHEIRAJ @223
== RJPSTYV @224 = @225 = @226
== JAHEIRAJ @227
END
IF ~~ THEN EXTERN RJPSTYV 0

// Viconia's Tale

CHAIN IF ~~ THEN VICONIJ RJYVVI
@231
== RJPSTYV @232 = @233
== VICONIJ @234
== RJPSTYV @235 = @236
== VICONIJ @237
END
IF ~~ THEN EXTERN RJPSTYV 0

// Aerie's Tale

CHAIN IF ~~ THEN AERIEJ RJYVAE
@241
== RJPSTYV @242 = @243 = @244 = @245
== AERIEJ @246
END
IF ~~ THEN EXTERN RJPSTYV 0

// Nalia's Tale

CHAIN IF ~~ THEN NALIAJ RJYVNA
@251
== RJPSTYV @252 = @253 = @254 = @255
== NALIAJ @256
END
IF ~~ THEN EXTERN RJPSTYV 0

// Ravel's Tale

CHAIN IF ~~ THEN RJRAVELJ RJYVRV
@261
== RJPSTYV @262 = @263 = @264 = @265 = @266 = @267 = @268 = @269
== RJPSTYV @270 = @271 = @272 = @273
END
IF ~~ THEN EXTERN RJPSTYV 0

// Kesai's Tale

CHAIN IF ~~ THEN RJKESAIJ RJYVKE
@851
== RJPSTYV @852 = @853 = @854 = @855 = @856 = @857
== RJKESAIJ @858
== RJPSTYV @859
== RJKESAIJ @860
== RJPSTYV @861
END
IF ~~ THEN EXTERN RJPSTYV 0

// Annah's Tale

CHAIN IF ~~ THEN RJANNAHJ RJYVAN
@281 = @282 = @283 = @284
== RJPSTYV @285 = @286 = @287 = @288 = @289 = @290
END
IF ~~ THEN EXTERN RJPSTYV 0

// Grace's Tale

CHAIN IF ~~ THEN RJGRACEJ RJYVGR
@301
== RJPSTYV @302
END
IF ~~ THEN EXTERN RJPSTYV 0

// Fay's Tale

CHAIN IF ~~ THEN RJFAY RJYVFY
@621
== RJPSTYV IF ~G("RJFayBig",1)~ THEN @622
== RJFAY IF ~G("RJFayBig",1)~ THEN @623
== RJPSTYV IF ~G("RJFayBig",1)~ THEN @624
== RJFAY @625 = @626 = @627 = @628 = @629
== RJPSTYV @630 = @631 = @632
== RJPSTYV @633 = @634 = @635 = @636 = @637 = @638 = @639 = @640
== RJFAY @641
== RJPSTYV @642
END
IF ~GLT("Chapter",%bg2_chapter_8%)~ THEN EXTERN RJPSTYV 0
IF ~GGT("Chapter",%bg2_chapter_7%)~ THEN EXTERN RJPSTYV 1

// Rasaad's Tale

CHAIN IF ~~ THEN RASAADJ RJYVRA
@421
== RJPSTYV @422
== RASAADJ @423
== RJPSTYV @424 = @425 = @426 = @427 = @428 = @429 = @430
== RASAADJ @431
END
IF ~~ THEN EXTERN RJPSTYV 0

// Yoshimo's Tale

CHAIN IF ~~ THEN YOSHJ RJYVYO
@441 = @442 = @443 = @444
== RJPSTYV @445
== RJANNAHJ IF ~InParty("RJAnnah")~ THEN @446
== RJPSTYV @447 = @448 = @449 = @450 = @451
== YOSHJ @452
END
IF ~~ THEN EXTERN RJPSTYV 0

APPEND RJPSTYV

// Vanilla, BG2EE, and PST Tales (ToB)

// PC's Tale

IF ~~ THEN BEGIN RJYVPCT
SAY @101 = @102
++ @103 + RJYVPCT.1
END

IF ~~ THEN BEGIN RJYVPCT.1
SAY @104
IF ~!InParty("Rjali")~ THEN GOTO 1
IF ~InParty("Rjali")~ THEN REPLY @110 EXTERN RJALI25J RJYVRJT
END

END

// Rjali's Tale

CHAIN IF ~~ THEN RJALI25J RJYVRJT
@111
== RJPSTYV @112 = @113
== RJALI25J @114 = @115
== RJPSTYV @116
== RJALI25J @117 = @118 = @119 = @120
== RJALI25J IF ~InParty("RJRavel")~ THEN @121
== RJPSTYV IF ~InParty("RJRavel")~ THEN @122
== RJRV25J IF ~InParty("RJRavel")~ THEN @123
== RJALI25J @124 = @125 = @126 = @127 = @128 = @129
== RJPSTYV @130 = @131
== RJALI25J @132
== RJPSTYV @133 = @134
END
IF ~~ THEN EXTERN RJPSTYV 1

// Jan's Tale

CHAIN IF ~~ THEN JAN25J RJYVJNT
@141
== RJALI25J @142
== JAN25J @143 = @144 = @145 = @146 = @147 = @148 = @149 = @150 = @151 = @152
== RJALI25J @153
== JAN25J @154
== RJALI25J @155
== JAN25J @156 = @157 = @158 = @159
== RJALI25J @160
== RJPSTYV @161 = @162 = @163 = @163 = @164 = @165 = @166 = @167
== JAN25J @168
== RJPSTYV @169
== JAN25J @170
== RJALI25J @171
END
IF ~~ THEN EXTERN RJPSTYV 1

// Minsc's Tale

CHAIN IF ~~ THEN MINSC25J RJYVMIT
@181
== RJPSTYV @182
== MINSC25J @183
== RJPSTYV @184 = @185 = @186 = @187 = @188 = @189 = @190
== MINSC25J @191
END
IF ~~ THEN EXTERN RJPSTYV 1

// Neera's Tale

CHAIN IF ~~ THEN NEERA25J RJYVNET
@201
== RJPSTYV @202 = @203 = @204 = @205 = @206 = @207 = @208 = @209 = @210 = @211
== NEERA25J @212
END
IF ~~ THEN EXTERN RJPSTYV 1

// Jaheira's Tale

CHAIN IF ~~ THEN JAHEI25J RJYVJAT
@221
== RJPSTYV @222
== JAHEI25J @223
== RJPSTYV @224 = @225 = @226
== JAHEI25J @227
END
IF ~~ THEN EXTERN RJPSTYV 1

// Viconia's Tale

CHAIN IF ~~ THEN VICON25J RJYVVIT
@231
== RJPSTYV @232 = @233
== VICON25J @234
== RJPSTYV @235 = @236
== VICON25J @237
END
IF ~~ THEN EXTERN RJPSTYV 1

// Aerie's Tale

CHAIN IF ~~ THEN AERIE25J RJYVAET
@241
== RJPSTYV @242 = @243 = @244 = @245
== AERIE25J @246
END
IF ~~ THEN EXTERN RJPSTYV 1

// Nalia's Tale

CHAIN IF ~~ THEN NALIA25J RJYVNAT
@251
== RJPSTYV @252 = @253 = @254 = @255
== NALIA25J @256
END
IF ~~ THEN EXTERN RJPSTYV 1

// Ravel's Tale

CHAIN IF ~~ THEN RJRV25J RJYVRVT
@261
== RJPSTYV @262 = @263 = @264 = @265 = @266 = @267 = @268 = @269
== RJPSTYV @270 = @271 = @272 = @273
END
IF ~~ THEN EXTERN RJPSTYV 1

// Kesai's Tale

CHAIN IF ~~ THEN RJKE25J RJYVKET
@851
== RJPSTYV @852 = @853 = @854 = @855 = @856 = @857
== RJKE25J @858
== RJPSTYV @859
== RJKE25J @860
== RJPSTYV @861
END
IF ~~ THEN EXTERN RJPSTYV 1

// Annah's Tale

CHAIN IF ~~ THEN RJAN25J RJYVANT
@281 = @282 = @283 = @284
== RJPSTYV @285 = @286 = @287 = @288 = @289 = @290
END
IF ~~ THEN EXTERN RJPSTYV 1

// Grace's Tale

CHAIN IF ~~ THEN RJGR25J RJYVGRT
@301
== RJPSTYV @302
END
IF ~~ THEN EXTERN RJPSTYV 1

// Rasaad's Tale

CHAIN IF ~~ THEN RASAA25J RJYVRAT
@421
== RJPSTYV @422
== RASAA25J @423
== RJPSTYV @424 = @425 = @426 = @427 = @428 = @429 = @430
== RASAA25J @431
END
IF ~~ THEN EXTERN RJPSTYV 1

// Yoshimo's Tale

CHAIN IF ~~ THEN YOSHJ RJYVYOT
@441 = @442 = @443 = @444
== RJPSTYV @445
== RJAN25J IF ~InParty("RJAnnah")~ THEN @446
== RJPSTYV @447 = @448 = @449 = @450 = @451
== YOSHJ @452
END
IF ~~ THEN EXTERN RJPSTYV 1
