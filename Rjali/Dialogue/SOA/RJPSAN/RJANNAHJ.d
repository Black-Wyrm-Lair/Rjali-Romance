
// Gypsy in Trademeet

EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0) Name("RJAnnah",LastTalkedToBy)~ EXTERN TRGYP02 rjang1
END

CHAIN TRGYP02 rjang1
@31
== RJANNAHJ @32 = @33
EXIT

// Crazy Celvan - an obligatory bad limerick

CHAIN IF WEIGHT #-1 
~InParty("RJAnnah")
See("RJAnnah")
!StateCheck("RJAnnah",CD_STATE_NOTVALID)
Global("RJAnnahReactionCelvan","AR0300",0)~ THEN CELVAN rjanc1
@0
DO ~SetGlobal("RJAnnahReactionCelvan","AR0300",1)~
== RJANNAHJ @1
END CELVAN 1

// Obligatory comments for Madame Nin's brothel in the Copper Coronet

CHAIN IF WEIGHT #-1
~NumTimesTalkedTo(0)
Name("RJAnnah",LastTalkedToBy)
!G("MadamUpset",1)~ THEN MADAM RJAnnahReactionMadam1
@34
== RJANNAHJ @35 = @33
EXIT

CHAIN IF WEIGHT #-1
~!NumTimesTalkedTo(0)
Name("RJAnnah",LastTalkedToBy)
!G("MadamUpset",1)~ THEN MADAM RJAnnahReactionMadam2
@36
EXIT

// Viconia rescued

I_C_T VICONI 13 RJAnnahVICONI13
== RJANNAHJ IF ~InParty("RJAnnah") InMyArea("RJAnnah") !StateCheck("RJAnnah",CD_STATE_NOTVALID)~ THEN @24
END

// On arranged marriages

I_C_T NALIA 75 RJAnnahRJAnnah75
== RJANNAHJ IF ~InParty("RJAnnah") InMyArea("RJAnnah") !StateCheck("RJAnnah",CD_STATE_NOTVALID)~ THEN @25
END

// Player becomes the Slayer for the first time.

I_C_T PLAYER1 5 RJAnnahFirstSlayerChange1
== RJANNAHJ IF ~InParty("RJAnnah") InMyArea("RJAnnah") !StateCheck("RJAnnah",CD_STATE_NOTVALID)~ THEN @15
END

// The Underdark

// On becoming Drow

I_C_T UDSILVER 35 RJAnnahUDSILVER35
== RJANNAHJ IF ~InParty("RJAnnah") InMyArea("RJAnnah") !StateCheck("RJAnnah",CD_STATE_NOTVALID)~ THEN @26
END

// Underdark exit

I_C_T C6ELHAN2 8 RJAnnahC6ELHAN28
== RJANNAHJ IF ~InParty("RJAnnah") InMyArea("RJAnnah") !StateCheck("RJAnnah",CD_STATE_NOTVALID)~ THEN @27
END

// Tree of Life

// Children

I_C_T SUELF5 1 RJAnnahChildren1
== RJANNAHJ IF ~InParty("RJAnnah")~ THEN @48
END

// Before going down the rabbit hole

EXTEND_BOTTOM PLAYER1 33
IF ~InParty("RJAnnah")~
EXTERN PLAYER1 RJAnnahPlayer1SOA3
END

CHAIN PLAYER1 RJAnnahPlayer1SOA3
@16
DO ~SetGlobal("RJAnnahTreeOfLife","GLOBAL",1)~
END
++ @17 EXTERN RJANNAHJ RJAnnahPlayer1SOA3.1

CHAIN RJANNAHJ RJAnnahPlayer1SOA3.1
@18 = @19 = @20
END
COPY_TRANS PLAYER1 33

// Irenicus is dead.

I_C_T PLAYER1 16 RJAnnahIrenicusIsDead1
== RJANNAHJ IF ~InParty("RJAnnah")~ THEN @21
END

// Entering Hell with the rest of the party.

I_C_T PLAYER1 25 RJAnnahEnteringHell1
== RJANNAHJ IF ~InParty("RJAnnah") InMyArea("RJAnnah") !StateCheck("RJAnnah",CD_STATE_NOTVALID)~ THEN @22
END

// Battling Irenicus. There are four identical interjections for four dialogue states.

I_C_T HELLJON 7 RJAnnahThirdBattleWithIrenicus1
== RJANNAHJ IF ~InParty("RJAnnah") InMyArea("RJAnnah") !StateCheck("RJAnnah",CD_STATE_NOTVALID)~ THEN @23
END

I_C_T HELLJON 8 RJAnnahThirdBattleWithIrenicus1
== RJANNAHJ IF ~InParty("RJAnnah") InMyArea("RJAnnah") !StateCheck("RJAnnah",CD_STATE_NOTVALID)~ THEN @23
END

I_C_T HELLJON 9 RJAnnahThirdBattleWithIrenicus1
== RJANNAHJ IF ~InParty("RJAnnah") InMyArea("RJAnnah") !StateCheck("RJAnnah",CD_STATE_NOTVALID)~ THEN @23
END

I_C_T HELLJON 10 RJAnnahThirdBattleWithIrenicus1
== RJANNAHJ IF ~InParty("RJAnnah") InMyArea("RJAnnah") !StateCheck("RJAnnah",CD_STATE_NOTVALID)~ THEN @23
END

// Maevar, Renal, Aran Linvail 

I_C_T RENAL 55 RJAnnahRENAL55
== RJANNAHJ IF ~InParty("RJAnnah") InMyArea("RJAnnah") !StateCheck("RJAnnah",CD_STATE_NOTVALID)~ THEN @37
END

I_C_T RENAL 63 RJAnnahRENAL5563
== RJANNAHJ IF ~InParty("RJAnnah") InMyArea("RJAnnah") !StateCheck("RJAnnah",CD_STATE_NOTVALID)~ THEN @38
END

I_C_T MAEVAR 11 RJAnnahMAEVAR11
== RJANNAHJ IF ~InParty("RJAnnah") InMyArea("RJAnnah") !StateCheck("RJAnnah",CD_STATE_NOTVALID)~ THEN @39
END

I_C_T MAEVAR 12 RJAnnahMAEVAR12
== RJANNAHJ IF ~InParty("RJAnnah") InMyArea("RJAnnah") !StateCheck("RJAnnah",CD_STATE_NOTVALID)~ THEN @39
END

I_C_T3 ARAN 26 RJAnnahARAN26
== RJANNAHJ IF ~InParty("RJAnnah") InMyArea("RJAnnah") !StateCheck("RJAnnah",CD_STATE_NOTVALID)~ THEN @40
== ARAN IF ~InParty("RJAnnah") InMyArea("RJAnnah") !StateCheck("RJAnnah",CD_STATE_NOTVALID)~ THEN @41
== RJANNAHJ IF ~InParty("RJAnnah") InMyArea("RJAnnah") !StateCheck("RJAnnah",CD_STATE_NOTVALID)~ THEN @42
== ARAN IF ~InParty("RJAnnah") InMyArea("RJAnnah") !StateCheck("RJAnnah",CD_STATE_NOTVALID)~ THEN @43
END

I_C_T ARAN 74 RJAnnahARAN74
== RJANNAHJ IF ~InParty("RJAnnah") InMyArea("RJAnnah") !StateCheck("RJAnnah",CD_STATE_NOTVALID)~ THEN @44
END

// Demogorgon (Watcher's Keep)

I_C_T GORDEMO 1 RJAnnahImprisonedOneMet1
== RJANNAHJ IF ~InParty("RJAnnah") InMyArea("RJAnnah") !StateCheck("RJAnnah",CD_STATE_NOTVALID) GLT("Chapter",%bg2_chapter_8%)~ THEN @45
END

I_C_T GORDEMO 1 RJAnnahImprisonedOneMet2
== RJAN25J IF ~InParty("RJAnnah") InMyArea("RJAnnah") !StateCheck("RJAnnah",CD_STATE_NOTVALID) GGT("Chapter",%bg2_chapter_7%)~ THEN @45
END

// Anath and the Shade Lord

I_C_T2 RNGWLF01 8 RJAnnahAnath8
== RJANNAHJ IF ~InParty("RJAnnah") !StateCheck("RJAnnah",CD_STATE_NOTVALID)~ THEN @46
END

// Windspear (Samia)

I_C_T SAMIA 24 RJAnnahSamia24
== RJANNAHJ IF ~InParty("RJAnnah") !StateCheck("RJAnnah",CD_STATE_NOTVALID)~ THEN @47
END

APPEND RJANNAHJ

// LOVETALKS START HERE

// Talk 1. Pike off

IF ~G("RJAnnahTalk",2)~ t1
SAY @100 
++ @101 + t1.1
END

IF ~~ t0
SAY @105
IF ~~ DO ~StartCutSceneMode()
          IncrementGlobal("RJAnnahTalk","GLOBAL",-1)
          RealSetGlobalTimer("RJAnnahRomance","GLOBAL",RJ_FAST)
          EndCutSceneMode()~ EXIT
END

IF ~~ t0.1  // RA=0
SAY @102
IF ~~ DO ~StartCutSceneMode()
          IncrementGlobal("RJAnnahTalk","GLOBAL",1)
          RealSetGlobalTimer("RJAnnahRomance","GLOBAL",RJ_TALK)
          EndCutSceneMode()~ EXIT
END

IF ~~ t0.2  // RA=1
SAY @103
IF ~~ DO ~StartCutSceneMode()
          IncrementGlobal("RJAnnahTalk","GLOBAL",1)
          RealSetGlobalTimer("RJAnnahRomance","GLOBAL",RJ_TALK)
          EndCutSceneMode()~ EXIT
END

IF ~~ t0.3  // RA=2
SAY @106
IF ~~ DO ~StartCutSceneMode()
          IncrementGlobal("RJAnnahTalk","GLOBAL",1)
          RealSetGlobalTimer("RJAnnahRomance","GLOBAL",RJ_TALK)
          EndCutSceneMode()~ EXIT
END

IF ~~ t0.4  // Leaves
SAY @109
IF ~~ DO ~StartCutSceneMode()
          LeaveParty() 
          SetGlobal("RJAddAN","GLOBAL",0)
          SetGlobal("RJWaitAN","GLOBAL",2)
          ChangeAIScript("",OVERRIDE)
          SetDialog("RJPSTAN")
          SetGlobal("RJAnnahRomanceActive","GLOBAL",0)
          IncrementGlobal("RJAddCnt","GLOBAL",-1)
          MoveBetweenAreas("RJ0602",[3010.809],0)
          EndCutSceneMode()~ EXIT
END

IF ~~ t1.1
SAY @107
++ @108 + t0.1
++ @99 + t0.4
END

// Talk 2. Pike off 2

IF ~G("RJAnnahTalk",4)~ t2
SAY @110
++ @111 + t2.1
++ @99 + t0.4
END

IF ~~ t2.1
SAY @107
++ @112 + t2.2
++ @113 + t2.2
END

IF ~~ t2.2
SAY @114 = @115
++ @116 + t2.3
END

IF ~~ t2.3
SAY @117
IF ~~ THEN GOTO t0.1
END

// Talk 3. Breakthrough

IF ~G("RJAnnahTalk",6)~ t3
SAY @120 = @121 = @122
++ @123 + t3.1
++ @124 + t3.2
END

IF ~~ t3.1
SAY @125
++ @126 + t3.2
END

IF ~~ t3.2
SAY @127 = @128
++ @129 + t3.3
END

IF ~~ t3.3
SAY @130 = @131 = @132 = @133 = @134
++ @135 + t3.4
END

IF ~~ t3.4
SAY @136 = @137 = @138
++ @139 + t3.5
END

IF ~~ t3.5
SAY @140
++ @141 + t0.1
END

// Talk 4. The beginning of the beginning

IF ~G("RJAnnahTalk",8)~ t4
SAY @150 = @151 = @152
IF ~~ THEN REPLY @153  DO ~SetGlobal("RJAnnahRomanceActive","GLOBAL",1)~ GOTO t4.1
END

IF ~~ t4.1
SAY @154 = @155
++ @156 + t4.2
++ @157 + t4.3
END

IF ~~ t4.2
SAY @158
++ @159 + t4.3
END

IF ~~ t4.3
SAY @160
++ @161 + t0.2
END

// Talk 5. The accent

IF ~G("RJAnnahTalk",10)~ t5
SAY @170 = @171
++ @172 + t5.1
++ @173 + t5.2
END

IF ~~ t5.1
SAY @174
++ @175 + t5.2
END

IF ~~ t5.2
SAY @176
++ @177 + t5.3
END

IF ~~ t5.3
SAY @178
++ @179 + t5.4
END

IF ~~ t5.4
SAY @180
++ @181 + t5.5
END

IF ~~ t5.5
SAY @182 = @183
++ @184 + t5.6
END

IF ~~ t5.6
SAY @185
++ @186 + t0.2
END

// Talk 6. First steps

IF ~G("RJAnnahTalk",12)~ t6
SAY @200 = @201
++ @202 + t6.1
++ @203 + t6.2
++ @204 + t6.3
END

IF ~~ t6.1
SAY @205
++ @206 + t6.2
END

IF ~~ t6.2
SAY @207
++ @208 + t6.3
END

IF ~~ t6.3
SAY @209 = @210
++ @211 + t6.4
END

IF ~~ t6.4
SAY @212 = @213
++ @214 + t6.5
END

IF ~~ t6.5
SAY @215
++ @216 + t0.2
END

// Talk 7. Third base

IF ~G("RJAnnahTalk",14)~ t7
SAY @230
IF ~~ THEN REPLY @231 DO ~SetGlobal("RJAnnahRomanceActive","GLOBAL",2)
                          IncrementGlobal("RJCntBedded","GLOBAL",1)~ GOTO t7.1
END

IF ~~ t7.1
SAY @232 = @233 = @234
++ @235 + t7.2
END

IF ~~ t7.2
SAY @236 = @237
IF ~~ THEN GOTO t0.3
END

// Talk 8. After the first night

IF ~G("RJAnnahTalk",16)~ t8
SAY @250 = @251
++ @252 + t8.2
++ @253 + t8.1
END

IF ~~ t8.1
SAY @254
++ @255 + t8.2
END

IF ~~ t8.2
SAY @256
++ @257 + t8.3
END

IF ~~ t8.3
SAY @258 = @268 = @259
IF ~!G("RJRavelRomanceActive",0)~ THEN GOTO t8.4
IF ~G("RJRavelRomanceActive",0)~ THEN GOTO t8.5
END

IF ~~ t8.4
SAY @260 = @261
++ @262 + t8.6
END

IF ~~ t8.5
SAY @263
++ @264 + t8.6
END

IF ~~ t8.6
SAY @265 = @266
IF ~~ THEN REPLY @267 DO ~SetGlobalTimer("RJAnnahAccentTimer","GLOBAL",ONE_DAY)~ GOTO t0.3
END

// Talk 9. Burns solved

IF ~G("RJAnnahTalk",18)~ t9
SAY @280
IF ~!G("RJRavelRomanceActive",0)~ THEN REPLY @281 GOTO t9.1
IF ~G("RJRavelRomanceActive",0)~ THEN REPLY @282 GOTO t9.1
END

IF ~~ t9.1
SAY @283 = @284
++ @285 + t9.2
END

IF ~~ t9.2
SAY @286 = @287
++ @288 + t9.3
END

IF ~~ t9.3
SAY @289
++ @290 + t0.3
END

// Talk 10. The story of my life

IF ~G("RJAnnahTalk",20)~ t10
SAY @300 = @301
++ @302 + t10.1
END

IF ~~ t10.1
SAY @303
++ @304 + t10.2
END

IF ~~ t10.2
SAY @305 = @306
++ @307 + t10.3
END

IF ~~ t10.3
SAY @308 = @309
++ @310 + t0.3
END

// Talk 11. Marriage

IF ~G("RJAnnahTalk",22)~ t11
SAY @320
++ @321 + t11.1
END

IF ~~ t11.1
SAY @322 = @323 = @324 = @325 = @326 = @327 = @328 = @329
++ @330 + t11.2
END

IF ~~ t11.2
SAY @331
++ @332 + t11.3
END

IF ~~ t11.3
SAY @333
IF ~~ THEN REPLY @334 DO ~GiveItemCreate("RJRNGAN","RJAnnah",0,0,0) 
                          IncrementGlobal("RJCntWedded","GLOBAL",1)
                          SetGlobal("RJAnnahMarried","GLOBAL",1)~ GOTO t11.4
END

IF ~~ t11.4
SAY @335 = @336
++ @337 + t11.5
END

IF ~~ t11.5
SAY @338
++ @339 + t0.3
END

// Talk 12. Sigil vs Athkatla

IF ~G("RJAnnahTalk",24)~ t12
SAY @350
++ @351 + t12.1
++ @104 + t0
END

IF ~~ t12.1
SAY @352 = @353 = @354 = @355 = @356
++ @357 + t12.2
END

IF ~~ t12.2
SAY @358 = @359
IF ~InParty("Saerileth")~ THEN GOTO t12.3
IF ~!InParty("Saerileth")~ THEN GOTO t12.4
END

IF ~~ t12.3
SAY @360
IF ~~ THEN GOTO t12.4
END

IF ~~ t12.4
SAY @361 = @362 = @363 = @364
++ @365 + t0.3
END

// Talk 13. Simple joys

IF ~G("RJAnnahTalk",26)~ t13
SAY @370 = @371 = @372
++ @373 + t13.1
END

IF ~~ t13.1
SAY @374 = @375
++ @376 + t13.2
END

IF ~~ t13.2
SAY @377
++ @378 + t13.3
END

IF ~~ t13.3
SAY @379
++ @380 + t13.4
END

IF ~~ t13.4
SAY @381 = @382
++ @383 + t13.5
END

IF ~~ t13.5
SAY @384 = @385
IF ~~ THEN GOTO t0.3
END

// Talk 14. Language lessons

IF ~G("RJAnnahTalk",28)~ t14
SAY @390 = @391
++ @392 + t14.1
END

IF ~~ t14.1
SAY @393 = @394
IF ~~ THEN REPLY @395 DO ~SetGlobal("RJAnnahAccent","GLOBAL",3)~ GOTO t14.2
END

IF ~~ t14.2
SAY @396
++ @397 + t14.3
END

IF ~~ t14.3
SAY @398 = @399
++ @400 + t14.4
END

IF ~~ t14.4
SAY @401
++ @402 + t0.3
END

// Phaere Innuendo

IF ~G("PhaereInnuendo",2)
    G("RJAnnahSleptPhaere",1)~ THEN BEGIN RJAnnahSleptPhaere
SAY @2
++ @3 DO ~SetGlobal("RJAnnahSleptPhaere","GLOBAL",2)~ GOTO RJAnnahSleptPhaere2
END

IF ~~ THEN BEGIN RJAnnahSleptPhaere2
SAY @4
++ @5 GOTO RJAnnahSleptPhaere1ProudEnd
END

IF ~~ THEN BEGIN RJAnnahSleptPhaere1ProudEnd
SAY @6
IF ~~ THEN EXIT
END

IF ~G("PhaereInnuendo",3)
    G("RJAnnahSleptPhaere",1) ~ THEN BEGIN RJAnnahNoSleptPhaere
SAY @28
++ @29 DO ~SetGlobal("RJAnnahSleptPhaere","GLOBAL",2)~ GOTO RJAnnahNoSleptPhaere1
END

IF ~~ THEN BEGIN RJAnnahNoSleptPhaere1
SAY @7
++ @8 GOTO RJAnnahNoSleptPhaere2
END

IF ~~ THEN BEGIN RJAnnahNoSleptPhaere2
SAY @9
++ @10 GOTO RJAnnahNoSleptPhaere3
END

IF ~~ THEN BEGIN RJAnnahNoSleptPhaere3
SAY @11
++ @30 EXIT
END

END

// Annah gets lessons from Rjali

CHAIN IF ~
  InParty("RJAnnah")
  InParty("Rjali")
  !StateCheck("RJAnnah",CD_STATE_NOTVALID)
  !StateCheck("Rjali",CD_STATE_NOTVALID)
  G("RJAnnahAccent",1)~ THEN RJANNAHJ AnnahAccent
@50 DO ~SetGlobal("RJAnnahAccent","GLOBAL",2)~
== RJALIJ @51
== RJANNAHJ @52 = @53 = @54
== RJALIJ @55 = @56
== RJANNAHJ @57
== RJALIJ @58 = @59 = @60 = @61
== RJANNAHJ @62
== RJALIJ @63
== RJANNAHJ IF ~InParty("E3Fade")~ THEN @64
== RJALIJ IF ~InParty("E3Fade")~ THEN @65 = @66
END
++ @67 EXIT

// Annah sleeps outdoors in the underdark

CHAIN IF ~
  InParty("RJAnnah")
  !StateCheck("RJAnnah",CD_STATE_NOTVALID)
  !StateCheck(Player1,CD_STATE_NOTVALID)
  G("RJANUDSleep1",1)~ THEN PLAYER1 ANUDSleep1
@420
== RJANNAHJ @421 = @422
== PLAYER1 @423
== RJGRACEJ IF ~InParty("RJGrace")~ THEN @424
== PLAYER1 IF ~InParty("RJGrace")~ THEN @425
== RJRAVELJ IF ~InParty("RJRavel")~ THEN @426
== RJKESAIJ IF ~InParty("RJKesai")~ THEN @419
== RJFAY IF ~G("RJFayBig",1) G("RJParkFY",0)~ THEN @437
== RJALIJ @429
== PLAYER1 @435
== RJANNAHJ @428
END
++ @427 DO ~SetGlobal("RJANUDSleep1","GLOBAL",2)
            StartCutSceneMode()
            StartCutScene("Cut34a")~ EXIT

CHAIN IF ~
  InParty("RJAnnah")
  !StateCheck("RJAnnah",CD_STATE_NOTVALID)
  !StateCheck(Player1,CD_STATE_NOTVALID)
  G("RJANUDSleep1",3)~ THEN RJANNAHJ ANUDSleep2
@430 = @431 DO ~SetGlobal("RJANUDSleep1","GLOBAL",5)~
== RJGRACEJ IF ~InParty("RJGrace")~ THEN @432
== RJRAVELJ IF ~InParty("RJRavel")~ THEN @438
== RJKESAIJ IF ~InParty("RJKesai")~ THEN @445
== RJALIJ @439
== RJFAY IF ~G("RJFayBig",1) G("RJParkFY",0)~ THEN @444
== PLAYER1 @436
== RJANNAHJ @433
END
++ @434 EXIT

CHAIN IF ~
  InParty("RJAnnah")
  !StateCheck("RJAnnah",CD_STATE_NOTVALID)
  !StateCheck(Player1,CD_STATE_NOTVALID)
  G("RJANUDSleep1",4)~ THEN RJANNAHJ ANUDSleep3
@440 = @441 DO ~SetGlobal("RJANUDSleep1","GLOBAL",5)~
== RJALIJ @442
END
++ @443 EXIT
