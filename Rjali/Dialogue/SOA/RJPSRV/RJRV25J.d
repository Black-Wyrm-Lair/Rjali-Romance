
// Beholder.

I_C_T3 SENBEH01 8 RJRavelSenbeh8
== RJRV25J IF ~InParty("RJRavel")~ THEN @20
== SENBEH01 IF ~InParty("RJRavel")~ THEN @21
== RJRV25J IF ~InParty("RJRavel")~ THEN @22
END

// Draconis.

I_C_T BAZDRA01 0 RJRavelDraconis0
== RJRV25J IF ~InParty("RJRavel")~ THEN @23
END

// Volo's obligatory interjection in Saradush.

EXTEND_TOP SARVOLO 9 #2
+ ~InParty("RJRavel") InMyArea("RJRavel") !StateCheck("RJRavel",CD_STATE_NOTVALID) G("RJRavelRomanceActive",2)~ + @0 + RJRavelVoloBio2
END

CHAIN SARVOLO RJRavelVoloBio2
@1
== RJRV25J IF ~InParty("RJRavel") InMyArea("RJRavel") !StateCheck("RJRavel",CD_STATE_NOTVALID)~ THEN @2
EXTERN SARVOLO 9

// Solar, final interjections at the Throne of Bhaal and <CHARNAME>'s choice for the romanced protagonists.

// romanced, Ravel and PC talk before the choice

EXTEND_BOTTOM FINSOL01 27
IF ~InParty("RJRavel") InMyArea("RJRavel") !StateCheck("RJRavel",CD_STATE_NOTVALID) G("RJRavelRomanceActive",2) G("RJRavelSolarPers",0)~ DO ~SetGlobal("RJRavelSolarPers","GLOBAL",1)~ EXTERN RJRV25J RJRavelSolarPers
END

CHAIN RJRV25J RJRavelSolarPers
@17
END
++ @4 EXTERN RJRV25J RJRavelSolarPers1.1
++ @6 EXTERN RJRV25J RJRavelSolarPers1.1

CHAIN RJRV25J RJRavelSolarPers1.1
@7 = @8 = @9
END
COPY_TRANS FINSOL01 27

// romanced, PC chooses to leave

EXTEND_BOTTOM FINSOL01 29
IF ~InParty("RJRavel") InMyArea("RJRavel") !StateCheck("RJRavel",CD_STATE_NOTVALID) G("RJRavelRomanceActive",2) G("RJRavelSolarLeave",0)~ DO ~SetGlobal("RJRavelSolarLeave","GLOBAL",1)~ EXTERN RJRV25J RJRavelSolarLeave
END

EXTEND_BOTTOM FINSOL01 30
IF ~InParty("RJRavel") InMyArea("RJRavel") !StateCheck("RJRavel",CD_STATE_NOTVALID) G("RJRavelRomanceActive",2) G("RJRavelSolarLeave",0)~ DO ~SetGlobal("RJRavelSolarLeave","GLOBAL",1)~ EXTERN RJRV25J RJRavelSolarLeave
END

EXTEND_BOTTOM FINSOL01 31
IF ~InParty("RJRavel") InMyArea("RJRavel") !StateCheck("RJRavel",CD_STATE_NOTVALID) G("RJRavelRomanceActive",2) G("RJRavelSolarLeave",0)~ DO ~SetGlobal("RJRavelSolarLeave","GLOBAL",1)~ EXTERN RJRV25J RJRavelSolarLeave
END

CHAIN RJRV25J RJRavelSolarLeave
@10
END
COPY_TRANS FINSOL01 29

// romanced, PC chooses to stay

EXTEND_BOTTOM FINSOL01 32
IF ~InParty("RJRavel") InMyArea("RJRavel") !StateCheck("RJRavel",CD_STATE_NOTVALID) G("RJRavelRomanceActive",2) G("RJRavelSolarStay",0)~ DO ~SetGlobal("RJRavelSolarStay","GLOBAL",1)~ EXTERN RJRV25J RJRavelSolarStay
END

CHAIN RJRV25J RJRavelSolarStay
@11
END
++ @12 EXTERN RJRV25J RJRavelSolarStay1.1
++ @13 EXTERN RJRV25J RJRavelSolarStay1.1

CHAIN RJRV25J RJRavelSolarStay1.1
@14 = @15 = @16
END
COPY_TRANS FINSOL01 32

APPEND RJRV25J

// LOVETALKS START HERE

// Talk 1. On the menage

IF ~G("RJRavelTalkToB",2)~ t1
SAY @100
++ @101 + t1.1
++ @104 + t0
END

IF ~~ t0
SAY @105
IF ~~ DO ~StartCutSceneMode()
          IncrementGlobal("RJRavelTalkToB","GLOBAL",-1)
          RealSetGlobalTimer("RJRavelRomance","GLOBAL",RJ_FAST)
          EndCutSceneMode()~ EXIT
END

IF ~~ t0.1
SAY @106
IF ~~ DO ~StartCutSceneMode()
          IncrementGlobal("RJRavelTalkToB","GLOBAL",1)
          RealSetGlobalTimer("RJRavelRomance","GLOBAL",RJ_TALK)
          EndCutSceneMode()~ EXIT
END

IF ~~ t1.1
SAY @102
++ @107 + t1.2
END

IF ~~ t1.2
SAY @128
++ @169 + t1.2.1
END

IF ~~ t1.2.1
SAY @176
+ ~G("ImoenRomanceActive",2) G("RJRVIMTOB1",0)~ + @108 + t1.3
+ ~G("RjaliRomanceActive",2) G("RJRVRJATOB1",0)~ + @109 + t1.4
+ ~G("RJiniRomanceActive",2) G("RJRVRJITOB1",0)~ + @110 + t1.5
+ ~G("RJGraceRomanceActive",2) G("RJRVGRTOB1",0)~ + @111 + t1.6
+ ~G("RJAnnahRomanceActive",2) G("RJRVANTOB1",0)~ + @112 + t1.7
+ ~G("AerieRomanceActive",2) G("RJRVAETOB1",0)~ + @113 + t1.8
+ ~G("NeeraRomanceActive",2) G("RJRVNETOB1",0)~ + @114 + t1.9
+ ~G("JaheiraRomanceActive",2) G("RJRVJATOB1",0)~ + @115 + t1.10
+ ~G("ViconiaRomanceActive",2) G("RJRVVITOB1",0)~ + @116 + t1.11
+ ~G("SaerilethRomanceActive",2) G("RJRVSATOB1",0)~ + @117 + t1.12
+ ~G("TashiaRomanceActive",2) G("RJRVTATOB1",0)~ + @118 + t1.13
+ ~G("O#BranRomanceActive",2) G("RJRVBRTOB1",0)~ + @119 + t1.14
+ ~G("PGNaliaRomanceActive",2) G("RJRVNATOB1",0)~ + @120 + t1.15
+ ~G("LK#NindeRomanceActive",2) G("RJRVNITOB1",0)~ + @121 + t1.16
+ ~G("G#TF.TyrisRomanceActive",2) G("RJRVTYTOB1",0)~ + @122 + t1.17
+ ~G("YvetteRomanceActive",2) G("RJRVYVTOB1",0)~ + @123 + t1.18
+ ~G("E3FADERomanceActive",2) G("RJRVFATOB1",0)~ + @124 + t1.19
+ ~G("T#DaceRomanceActive",2) G("RJRVDATOB1",0)~ + @125 + t1.20
+ ~G("rh#IsraRomanceActive",2) G("RJRVISTOB1",0)~ + @126 + t1.21
+ ~G("M#AmberRomanceActive",2) G("RJRVAMTOB1",0)~ + @127 + t1.22
+ ~G("SkieRomanceActive",2) G("RJRVSKTOB1",0)~ + @170 + t1.23
+ ~G("L3PetsyRomanceActive",2) G("RJRVPETOB1",0)~ + @171 + t1.24
++ @103 + t0.1
END

IF ~~ t1.3
SAY @129
IF ~~ THEN REPLY @130 DO ~SetGlobal("RJRVIMTOB1","GLOBAL",1)~ GOTO t1.2
END

IF ~~ t1.4
SAY @131
IF ~~ THEN REPLY @132 DO ~SetGlobal("RJRVRJATOB1","GLOBAL",1)~ GOTO t1.2
END

IF ~~ t1.5
SAY @133
IF ~~ THEN REPLY @134 DO ~SetGlobal("RJRVRJITOB1","GLOBAL",1)~ GOTO t1.2
END

IF ~~ t1.6
SAY @135
IF ~~ THEN REPLY @136 DO ~SetGlobal("RJRVGRTOB1","GLOBAL",1)~ GOTO t1.2
END

IF ~~ t1.7
SAY @137
IF ~~ THEN REPLY @138 DO ~SetGlobal("RJRVANTOB1","GLOBAL",1)~ GOTO t1.2
END

IF ~~ t1.8
SAY @139
IF ~~ THEN REPLY @140 DO ~SetGlobal("RJRVAETOB1","GLOBAL",1)~ GOTO t1.2
END

IF ~~ t1.9
SAY @141
IF ~~ THEN REPLY @142 DO ~SetGlobal("RJRVNETOB1","GLOBAL",1)~ GOTO t1.2
END

IF ~~ t1.10
SAY @143
IF ~~ THEN REPLY @144 DO ~SetGlobal("RJRVJATOB1","GLOBAL",1)~ GOTO t1.2
END

IF ~~ t1.11
SAY @145
IF ~~ THEN REPLY @146 DO ~SetGlobal("RJRVVITOB1","GLOBAL",1)~ GOTO t1.2
END

IF ~~ t1.12
SAY @147
IF ~~ THEN REPLY @148 DO ~SetGlobal("RJRVSATOB1","GLOBAL",1)~ GOTO t1.2
END

IF ~~ t1.13
SAY @149
IF ~~ THEN REPLY @150 DO ~SetGlobal("RJRVTATOB1","GLOBAL",1)~ GOTO t1.2
END

IF ~~ t1.14
SAY @151
IF ~~ THEN REPLY @152 DO ~SetGlobal("RJRVBRTOB1","GLOBAL",1)~ GOTO t1.2
END

IF ~~ t1.15
SAY @153
IF ~~ THEN REPLY @154 DO ~SetGlobal("RJRVNATOB1","GLOBAL",1)~ GOTO t1.2
END

IF ~~ t1.16
SAY @155
IF ~~ THEN REPLY @156 DO ~SetGlobal("RJRVNITOB1","GLOBAL",1)~ GOTO t1.2
END

IF ~~ t1.17
SAY @157
IF ~~ THEN REPLY @158 DO ~SetGlobal("RJRVTYTOB1","GLOBAL",1)~ GOTO t1.2
END

IF ~~ t1.18
SAY @159
IF ~~ THEN REPLY @160 DO ~SetGlobal("RJRVYVTOB1","GLOBAL",1)~ GOTO t1.2
END

IF ~~ t1.19
SAY @161
IF ~~ THEN REPLY @162 DO ~SetGlobal("RJRVFATOB1","GLOBAL",1)~ GOTO t1.2
END

IF ~~ t1.20
SAY @163
IF ~~ THEN REPLY @164 DO ~SetGlobal("RJRVDATOB1","GLOBAL",1)~ GOTO t1.2
END

IF ~~ t1.21
SAY @165
IF ~~ THEN REPLY @166 DO ~SetGlobal("RJRVISTOB1","GLOBAL",1)~ GOTO t1.2
END

IF ~~ t1.22
SAY @167
IF ~~ THEN REPLY @168 DO ~SetGlobal("RJRVAMTOB1","GLOBAL",1)~ GOTO t1.2
END

IF ~~ t1.23
SAY @172
IF ~~ THEN REPLY @173 DO ~SetGlobal("RJRVSKTOB1","GLOBAL",1)~ GOTO t1.2
END

IF ~~ t1.24
SAY @174
IF ~~ THEN REPLY @175 DO ~SetGlobal("RJRVPETOB1","GLOBAL",1)~ GOTO t1.2
END

// Talk 2. Concerning the Djinn

IF ~G("RJRavelTalkToB",4)~ t2
SAY @200 = @201
++ @202 + t2.1
END

IF ~~ t2.1
SAY @203
++ @204 + t2.2
END

IF ~~ t2.2
SAY @205 = @206
++ @207 + t2.3
END

IF ~~ t2.3
SAY @208
++ @209 + t2.4
END

IF ~~ t2.4
SAY @210 = @211 = @212
++ @213 + t2.5
END

IF ~~ t2.5
SAY @214
++ @215 + t0.1
END

// Talk 3. Falling asleep

IF ~G("RJRavelTalkToB",6)~ t3
SAY @230
++ @231 + t3.1
++ @232 + t3.2
END

IF ~~ t3.1
SAY @233 = @234
++ @235 + t3.2
END

IF ~~ t3.2
SAY @236
++ @237 + t3.4
END

IF ~~ t3.4
SAY @238 = @239 = @240
++ @241 + t0.1
END

// Talk 4. Childhood

IF ~G("RJRavelTalkToB",8)~ t4
SAY @290
++ @291 + t4.1
END

IF ~~ t4.1
SAY @292
++ @293 + t4.2
END

IF ~~ t4.2
SAY @294
++ @295 + t4.3
END

IF ~~ t4.3
SAY @296 = @297 = @298 = @299
++ @300 + t4.4
END

IF ~~ t4.4
SAY @301 = @302 = @303 = @304
++ @305 + t4.5
END

IF ~~ t4.5
SAY @306 = @307
++ @308 + t0.1
END

// Talk 5. Fixed the problem

IF ~G("RJRavelTalkToB",10)~ t5
SAY @270
++ @271 + t5.2
++ @272 + t5.1
END

IF ~~ t5.1
SAY @273 = @274
++ @275 + t5.2
END

IF ~~ t5.2
SAY @276 = @277
++ @278 + t5.3
END

IF ~~ t5.3
SAY @279
++ @280 + t0.1
END

// Talk 6. Bhaalspawn

IF ~G("RJRavelTalkToB",12)~ t6
SAY @250 = @251
++ @252 + t6.1
END

IF ~~ t6.1
SAY @253
++ @254 + t6.2
++ @255 + t6.3
END

IF ~~ t6.2
SAY @256 = @257 = @258
++ @259 + t6.9
END

IF ~~ t6.3
SAY @262
++ @263 + t6.9
END

IF ~~ t6.9
SAY @260
++ @261 + t0.1
END

// Dakkon

IF ~G("RJiniiJIDDK",2)~ tdk
SAY @320
++ @321 + tdk1
END

IF ~~ tdk1
SAY @322 = @323
++ @324 DO ~SetGlobal("RJiniiJIDDK","GLOBAL",3)~ EXIT
END

END
