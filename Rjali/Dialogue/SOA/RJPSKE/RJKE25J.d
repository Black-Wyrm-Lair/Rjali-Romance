
// Beholder.

I_C_T3 SENBEH01 8 RJKesaiSenbeh8
== RJKE25J IF ~InParty("RJKesai")~ THEN @20
== SENBEH01 IF ~InParty("RJKesai")~ THEN @21
== RJKE25J IF ~InParty("RJKesai")~ THEN @22
END

// Draconis.

I_C_T BAZDRA01 0 RJKesaiDraconis0
== RJKE25J IF ~InParty("RJKesai")~ THEN @23
END

// Volo's obligatory interjection in Saradush.

EXTEND_TOP SARVOLO 9 #2
+ ~InParty("RJKesai") InMyArea("RJKesai") !StateCheck("RJKesai",CD_STATE_NOTVALID) G("RJKesaiRomanceActive",2)~ + @0 + RJKesaiVoloBio2
END

CHAIN SARVOLO RJKesaiVoloBio2
@1
== RJKE25J IF ~InParty("RJKesai") InMyArea("RJKesai") !StateCheck("RJKesai",CD_STATE_NOTVALID)~ THEN @2
EXTERN SARVOLO 9

// Solar, final interjections at the Throne of Bhaal and <CHARNAME>'s choice for the romanced protagonists.

// romanced, Kesai and PC talk before the choice

EXTEND_BOTTOM FINSOL01 27
IF ~InParty("RJKesai") InMyArea("RJKesai") !StateCheck("RJKesai",CD_STATE_NOTVALID) G("RJKesaiRomanceActive",2) G("RJKesaiSolarPers",0)~ DO ~SetGlobal("RJKesaiSolarPers","GLOBAL",1)~ EXTERN RJKE25J RJKesaiSolarPers
END

CHAIN RJKE25J RJKesaiSolarPers
@3
END
++ @4 EXTERN RJKE25J RJKesaiSolarPers1.1

CHAIN RJKE25J RJKesaiSolarPers1.1
@7 = @8 = @9
END
COPY_TRANS FINSOL01 27

// romanced, PC chooses to leave

EXTEND_BOTTOM FINSOL01 29
IF ~InParty("RJKesai") InMyArea("RJKesai") !StateCheck("RJKesai",CD_STATE_NOTVALID) G("RJKesaiRomanceActive",2) G("RJKesaiSolarLeave",0)~ DO ~SetGlobal("RJKesaiSolarLeave","GLOBAL",1)~ EXTERN RJKE25J RJKesaiSolarLeave
END

EXTEND_BOTTOM FINSOL01 30
IF ~InParty("RJKesai") InMyArea("RJKesai") !StateCheck("RJKesai",CD_STATE_NOTVALID) G("RJKesaiRomanceActive",2) G("RJKesaiSolarLeave",0)~ DO ~SetGlobal("RJKesaiSolarLeave","GLOBAL",1)~ EXTERN RJKE25J RJKesaiSolarLeave
END

EXTEND_BOTTOM FINSOL01 31
IF ~InParty("RJKesai") InMyArea("RJKesai") !StateCheck("RJKesai",CD_STATE_NOTVALID) G("RJKesaiRomanceActive",2) G("RJKesaiSolarLeave",0)~ DO ~SetGlobal("RJKesaiSolarLeave","GLOBAL",1)~ EXTERN RJKE25J RJKesaiSolarLeave
END

CHAIN RJKE25J RJKesaiSolarLeave
@10
END
COPY_TRANS FINSOL01 29

// romanced, PC chooses to stay

EXTEND_BOTTOM FINSOL01 32
IF ~InParty("RJKesai") InMyArea("RJKesai") !StateCheck("RJKesai",CD_STATE_NOTVALID) G("RJKesaiRomanceActive",2) G("RJKesaiSolarStay",0)~ DO ~SetGlobal("RJKesaiSolarStay","GLOBAL",1)~ EXTERN RJKE25J RJKesaiSolarStay
END

CHAIN RJKE25J RJKesaiSolarStay
@11
END
++ @12 EXTERN RJKE25J RJKesaiSolarStay1.1

CHAIN RJKE25J RJKesaiSolarStay1.1
@14 = @15 = @16
END
COPY_TRANS FINSOL01 32

APPEND RJKE25J

// LOVETALKS START HERE

// Talk 1. TO Hell and Back

IF ~G("RJKesaiTalkToB",2)~ t1
SAY @100
++ @101 + t1.1
++ @102 + t0
END

IF ~~ t0
SAY @104
IF ~~ DO ~StartCutSceneMode()
          IncrementGlobal("RJKesaiTalkToB","GLOBAL",-1)
          RealSetGlobalTimer("RJKesaiRomance","GLOBAL",RJ_FAST)
          EndCutSceneMode()~ EXIT
END

IF ~~ t0.1
SAY @105
IF ~~ DO ~StartCutSceneMode()
          IncrementGlobal("RJKesaiTalkToB","GLOBAL",1)
          RealSetGlobalTimer("RJKesaiRomance","GLOBAL",RJ_TALK)
          EndCutSceneMode()~ EXIT
END

IF ~~ t1.1
SAY @103 = @106
++ @107 + t1.2
END

IF ~~ t1.2
SAY @108 = @109
++ @110 + t1.2.1
END

IF ~~ t1.2.1
SAY @111
++ @112 + t0.1
END

// Talk 2. Trias and Fhjull

IF ~G("RJKesaiTalkToB",4)~ t2
SAY @200 = @201
+ ~G("RJYVPC",0)~ + @202 + t2.1
+ ~!G("RJYVPC",0)~ + @203 + t2.4
END

IF ~~ t2.1
SAY @204
++ @205 + t2.2
END

IF ~~ t2.2
SAY @206
++ @207 + t2.3
END

IF ~~ t2.3
SAY @208
++ @209 + t0.1
END

IF ~~ t2.4
SAY @204
++ @210 + t2.5
END

IF ~~ t2.5
SAY @211 = @212 = @213
++ @214 + t0.1
END

// Talk 3. Pregnancy

IF ~G("RJKesaiTalkToB",6)~ t3
SAY @230 = @231
+ ~G("RJRavelRomanceActive",2)~ + @232 + t3.1
+ ~!G("RJRavelRomanceActive",2)~ + @233 + t3.1
END

IF ~~ t3.1
SAY @234
++ @235 + t3.2
END

IF ~~ t3.2
SAY @236
++ @237 + t0.1
END

// Talk 4. Solar

IF ~G("RJKesaiTalkToB",8)~ t4
SAY @290 = @291 = @292
++ @293 + t4.1
END

IF ~~ t4.1
SAY @294 = @295 = @296
++ @297 + t4.2
END

IF ~~ t4.2
SAY @298
++ @299 + t4.3
END

IF ~~ t4.3
SAY @300 = @301
++ @302 + t0.1
END

// Talk 5. Doofus

IF ~G("RJKesaiTalkToB",10)~ t5
SAY @270 = @271
++ @272 + t5.1
END

IF ~~ t5.1
SAY @273
++ @274 + t5.2
END

IF ~~ t5.2
SAY @275
++ @276 + t5.3
END

IF ~~ t5.3
SAY @277
++ @278 + t5.4
END

IF ~~ t5.4
SAY @279 = @280
++ @281 + t5.5
END

IF ~~ t5.5
SAY @282
++ @283 + t0.1
END

// Talk 6. Dreams of After

IF ~G("RJKesaiTalkToB",12)~ t6
SAY @250 = @251
++ @252 + t6.1
END

IF ~~ t6.1
SAY @253
++ @254 + t6.2
END

IF ~~ t6.2
SAY @255 = @256
++ @257 + t6.3
END

IF ~~ t6.3
SAY @258
++ @259 + t0.1
END

END
