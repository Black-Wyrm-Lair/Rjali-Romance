
// Gypsy in Trademeet

EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0) Name("RJGrace",LastTalkedToBy)~ EXTERN TRGYP02 rjgrg1
END

CHAIN TRGYP02 rjgrg1
@44
== RJGRACEJ @45
EXIT

// Crazy Celvan - an obligatory bad limerick

CHAIN IF WEIGHT #-1
~InParty("RJGrace")
See("RJGrace")
!StateCheck("RJGrace",CD_STATE_NOTVALID)
Global("RJGraceReactionCelvan","AR0300",0)~ THEN CELVAN rjgrc1
@0
DO ~SetGlobal("RJGraceReactionCelvan","AR0300",1)~
== RJGRACEJ @1
END CELVAN 1

// Obligatory comments for Madame Nin's brothel in the Copper Coronet

CHAIN IF WEIGHT #-1
~NumTimesTalkedTo(0)
Name("RJGrace",LastTalkedToBy)
!G("MadamUpset",1)~ THEN MADAM RJGraceReactionMadam1
@32
== RJGRACEJ @33
EXIT

CHAIN IF WEIGHT #-1
~!NumTimesTalkedTo(0)
Name("RJGrace",LastTalkedToBy)
!G("MadamUpset",1)~ THEN MADAM RJGraceReactionMadam2
@34
== RJGRACEJ @35
EXIT

// Viconia rescued

I_C_T VICONI 13 RJGraceVICONI13
== RJGRACEJ IF ~InParty("RJGrace") InMyArea("RJGrace") !StateCheck("RJGrace",CD_STATE_NOTVALID)~ THEN @24
END

// On arranged marriages

I_C_T NALIA 75 RJGraceRJGrace75
== RJGRACEJ IF ~InParty("RJGrace") InMyArea("RJGrace") !StateCheck("RJGrace",CD_STATE_NOTVALID)~ THEN @25
END

// Succubus (Watcher's Keep)

I_C_T3 GORSUC01 0 RJGraceSucc01
== RJGRACEJ IF ~InParty("RJGrace") GLT("Chapter",%bg2_chapter_8%) !StateCheck("RJGrace",CD_STATE_NOTVALID)~ THEN @38
== RJGR25J IF ~InParty("RJGrace") GGT("Chapter",%bg2_chapter_7%) !StateCheck("RJGrace",CD_STATE_NOTVALID)~ THEN @38
== GORSUC01 IF ~InParty("RJGrace") !StateCheck("RJGrace",CD_STATE_NOTVALID)~ THEN @39
END

// Tanar'ri (Watcher's Keep)

I_C_T3 GORTAN1 3 RJGraceTan01
== RJGRACEJ IF ~InParty("RJGrace") GLT("Chapter",%bg2_chapter_8%) !StateCheck("RJGrace",CD_STATE_NOTVALID)~ THEN @40
== RJGR25J IF ~InParty("RJGrace") GGT("Chapter",%bg2_chapter_7%) !StateCheck("RJGrace",CD_STATE_NOTVALID)~ THEN @40
== GORTAN1 IF ~InParty("RJGrace") !StateCheck("RJGrace",CD_STATE_NOTVALID)~ THEN @41
END

// Baatezu (Watcher's Keep)

I_C_T3 GORBAT1 4 RJGraceBat01
== RJGRACEJ IF ~InParty("RJGrace") GLT("Chapter",%bg2_chapter_8%) !StateCheck("RJGrace",CD_STATE_NOTVALID)~ THEN @42
== RJGR25J IF ~InParty("RJGrace") GGT("Chapter",%bg2_chapter_7%) !StateCheck("RJGrace",CD_STATE_NOTVALID)~ THEN @42
== GORBAT1 IF ~InParty("RJGrace") !StateCheck("RJGrace",CD_STATE_NOTVALID)~ THEN @43
END

// Demogorgon (Watcher's Keep)

I_C_T GORDEMO 1 RJGraceImprisonedOneMet1
== RJGRACEJ IF ~InParty("RJGrace") InMyArea("RJGrace") !StateCheck("RJGrace",CD_STATE_NOTVALID) GLT("Chapter",%bg2_chapter_8%)~ THEN @47
END

I_C_T GORDEMO 1 RJGraceImprisonedOneMet2
== RJGR25J IF ~InParty("RJGrace") InMyArea("RJGrace") !StateCheck("RJGrace",CD_STATE_NOTVALID) GGT("Chapter",%bg2_chapter_7%)~ THEN @47
END

// Spellhold

// Yoshimo's betrayal

I_C_T YOSHJ 113 RJGraceYOSHJ113
== RJGRACEJ IF ~InParty("RJGrace") InMyArea("RJGrace") !StateCheck("RJGrace",CD_STATE_NOTVALID)~ THEN @14
END

// Player becomes the Slayer for the first time.

I_C_T PLAYER1 5 RJGraceFirstSlayerChange1
== RJGRACEJ IF ~InParty("RJGrace") InMyArea("RJGrace") !StateCheck("RJGrace",CD_STATE_NOTVALID)~ THEN @15
END

// The Underdark

// On becoming Drow

I_C_T UDSILVER 35 RJGraceUDSILVER35
== RJGRACEJ IF ~InParty("RJGrace") InMyArea("RJGrace") !StateCheck("RJGrace",CD_STATE_NOTVALID)~ THEN @26
END

// Underdark exit

I_C_T C6ELHAN2 8 RJGraceC6ELHAN28
== RJGRACEJ IF ~InParty("RJGrace") InMyArea("RJGrace") !StateCheck("RJGrace",CD_STATE_NOTVALID)~ THEN @27
END

I_C_T SUDEMIN 23 RJGraceSUDEMIN23
== RJGRACEJ IF ~InParty("RJGrace") InMyArea("RJGrace") !StateCheck("RJGrace",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @46
END

// Tree of Life

// Demin quest

I_C_T SUDEMIN 43 RJGraceDemin43
== RJGRACEJ IF ~InParty("RJGrace")~ THEN @52
END

// Before going down the rabbit hole

EXTEND_BOTTOM PLAYER1 33
IF ~InParty("RJGrace") InMyArea("RJGrace") !StateCheck("RJGrace",CD_STATE_NOTVALID) G("RJGraceTreeOfLife",0)~ 
EXTERN PLAYER1 RJGracePlayer1SOA3
END

CHAIN PLAYER1 RJGracePlayer1SOA3
@16
DO ~SetGlobal("RJGraceTreeOfLife","GLOBAL",1)~
END
++ @17 EXTERN RJGRACEJ RJGracePlayer1SOA3.1

CHAIN RJGRACEJ RJGracePlayer1SOA3.1
@18 = @19 = @20
END
COPY_TRANS PLAYER1 33

// Irenicus is dead.

I_C_T PLAYER1 16 RJGraceIrenicusIsDead1
== RJGRACEJ IF ~InParty("RJGrace") Range("RJGrace",15) !StateCheck("RJGrace",CD_STATE_NOTVALID)~ THEN @21
END

// Entering Hell with the rest of the party.

I_C_T PLAYER1 25 RJGraceEnteringHell1
== RJGRACEJ IF ~InParty("RJGrace") InMyArea("RJGrace") !StateCheck("RJGrace",CD_STATE_NOTVALID)~ THEN @22 = @31
END

// Battling Irenicus. There are four identical interjections for four dialogue states.

I_C_T HELLJON 7 RJGraceThirdBattleWithIrenicus1
== RJGRACEJ IF ~InParty("RJGrace") InMyArea("RJGrace") !StateCheck("RJGrace",CD_STATE_NOTVALID)~ THEN @30 = @23
END

I_C_T HELLJON 8 RJGraceThirdBattleWithIrenicus1
== RJGRACEJ IF ~InParty("RJGrace") InMyArea("RJGrace") !StateCheck("RJGrace",CD_STATE_NOTVALID)~ THEN @30 = @23
END

I_C_T HELLJON 9 RJGraceThirdBattleWithIrenicus1
== RJGRACEJ IF ~InParty("RJGrace") InMyArea("RJGrace") !StateCheck("RJGrace",CD_STATE_NOTVALID)~ THEN @30 = @23
END

I_C_T HELLJON 10 RJGraceThirdBattleWithIrenicus1
== RJGRACEJ IF ~InParty("RJGrace") InMyArea("RJGrace") !StateCheck("RJGrace",CD_STATE_NOTVALID)~ THEN @30 = @23
END

// Viconia, hello!

I_C_T VICONI 13 RJGraceVICONI13
== RJGRACEJ IF ~InParty("RJGrace") InMyArea("RJGrace") !StateCheck("RJGrace",CD_STATE_NOTVALID)~ THEN @36
END

// de'Arnise-related

I_C_T NALIA 75 RJGraceNalia75
== RJGRACEJ IF ~InParty("RJGrace") InMyArea("RJGrace") !StateCheck("RJGrace",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @37
END

// Anath and the Shade Lord

I_C_T2 RNGWLF01 8 RJGraceAnath8
== RJGRACEJ IF ~InParty("RJGrace")~ THEN @48
END

// Windspear (Vaelasa)

I_C_T3 VAELASA 7 RJGraceVaelasa7
== RJGRACEJ IF ~InParty("RJGrace")~ THEN @49
== VAELASA IF ~InParty("RJGrace")~ THEN @50
== RJGRACEJ IF ~InParty("RJGrace")~ THEN @51
END

APPEND RJGRACEJ

// LOVETALKS START HERE

// Talk 1. Again the story of Bhaal

IF ~G("RJGraceTalk",2)~ t1
SAY @100 
++ @101 + t1.1
++ @102 + t1.2
++ @103 + t1.3
++ @104 + t0
END

IF ~~ t0
SAY @105
IF ~~ DO ~StartCutSceneMode()
          IncrementGlobal("RJGraceTalk","GLOBAL",-1)
          RealSetGlobalTimer("RJGraceRomance","GLOBAL",RJ_FAST)
          EndCutSceneMode()~ EXIT
END

IF ~~ t0.1
SAY @106
IF ~~ DO ~StartCutSceneMode()
          IncrementGlobal("RJGraceTalk","GLOBAL",1)
          RealSetGlobalTimer("RJGraceRomance","GLOBAL",RJ_TALK)
          EndCutSceneMode()~ EXIT
END

IF ~~ t1.1
SAY @107
++ @108 + t1.2
END

IF ~~ t1.2
SAY @109
++ @110 + t1.3
END

IF ~~ t1.3
SAY @111
++ @112 + t1.4
++ @113 + t1.5
++ @114 + t1.6
END

IF ~~ t1.4
SAY @115
++ @116 + t1.5
END

IF ~~ t1.5
SAY @117
++ @118 + t1.6
END

IF ~~ t1.6
SAY @119
++ @120 + t1.7
++ @121 + t1.8
END

IF ~~ t1.7
SAY @122
IF ~~ THEN DO ~SetGlobal("RJGraceRomanceActive","GLOBAL",0)
               LeaveParty()
               SetGlobal("RJAddGR","GLOBAL",0)
               SetGlobal("RJWaitGR","GLOBAL",2)
               ChangeAIScript("",OVERRIDE)
               SetDialog("RJPSTGR")
               IncrementGlobal("RJAddCnt","GLOBAL",-1)
               MoveBetweenAreas("RJ0602",[2965.915],12)~ EXIT
END

IF ~~ t1.8
SAY @123
++ @124 + t0.1
END

// Talk 2. Grace's story part 1

IF ~G("RJGraceTalk",4)~ t2
SAY @150 = @151
++ @152 + t2.1
END

IF ~~ t2.1
SAY @153 = @154 = @155 = @156 = @157 = @158 = @159 = @160 = @167
++ @161 + t2.2
END

IF ~~ t2.2
SAY @162
++ @163 + t2.3
END

IF ~~ t2.3
SAY @164 = @165
++ @166 + t0.1
END

// Talk 3. Grace's story part 2

IF ~G("RJGraceTalk",6)~ t3
SAY @170 = @171
++ @172 + t3.1
END

IF ~~ t3.1
SAY @173 = @174 = @175 = @176 = @177 = @178 = @179 = @180 = @181 = @182 = @183 = @184
++ @185 + t3.2
END

IF ~~ t3.2
SAY @186 = @187
++ @188 + t3.3
END

IF ~~ t3.3
SAY @189
++ @190 + t3.4
END

IF ~~ t3.4
SAY @191
++ @192 + t0.1
END

// Talk 4. Why?

IF ~G("RJGraceTalk",8)~ t4
SAY @450
++ @451 + t4.1
END

IF ~~ t4.1
SAY @452
++ @453 + t4.2
END

IF ~~ t4.2
SAY @454 = @455 = @456 = @457
++ @458 + t4.3
END

IF ~~ t4.3
SAY @459
++ @460 + t4.4
END

IF ~~ t4.4
SAY @461 = @462
++ @463 + t4.5
END

IF ~~ t4.5
SAY @464
++ @465 + t0.1
END

// Talk 5. Attempt a kiss

IF ~G("RJGraceTalk",10)~ t5
SAY @130 = @131 = @132 = @133
++ @134 + t5.1
++ @135 + t5.2
END

IF ~~ t5.1
SAY @136
++ @137 + t5.2
END

IF ~~ t5.2
SAY @138 = @139
++ @140 + t5.3
END

IF ~~ t5.3
SAY @141
++ @142 + t5.4
++ @143 + t5.5
END

IF ~~ t5.4
SAY @144
IF ~~ THEN DO ~SetGlobal("RJGraceRomanceActive","GLOBAL",0)
               LeaveParty()
               SetGlobal("RJAddGR","GLOBAL",0)
               SetGlobal("RJWaitGR","GLOBAL",2)
               ChangeAIScript("",OVERRIDE)
               SetDialog("RJPSTGR")
               IncrementGlobal("RJAddCnt","GLOBAL",-1)
               MoveBetweenAreas("RJ0602",[2965.915],12)~ EXIT
END

IF ~~ t5.5
SAY @145
++ @146 + t0.1
END

// Talk 6. Take the kiss

IF ~G("RJGraceTalk",12)~ t6
SAY @200
++ @201 + t6.1
END

IF ~~ t6.1
SAY @202
++ @203 + t6.2
END

IF ~~ t6.2
SAY @204 = @205
++ @206 + t6.3
END

IF ~~ t6.3
SAY @207 = @208 = @209 = @210 = @211
++ @212 + t6.4
END

IF ~~ t6.4
SAY @213 = @214 = @215 = @216
++ @217 + t6.5
END

IF ~~ t6.5
SAY @218 = @219
++ @220 + t6.6
END

IF ~~ t6.6
SAY @221
++ @222  DO ~SetGlobal("RJGraceRomanceActive","GLOBAL",2)~ + t0.1
END

// Talk 7. Morning after

IF ~G("RJGraceTalk",14)~ t7
SAY @230
++ @231 + t7.1
END

IF ~~ t7.1
SAY @232 = @233
++ @234 + t7.2
END

IF ~~ t7.2
SAY @235 = @236 = @237
++ @238 + t7.3
++ @239 + t7.5
END

IF ~~ t7.3
SAY @240
++ @241 + t7.4
END

IF ~~ t7.4
SAY @242 = @243 = @244
++ @245 + t7.5
END

IF ~~ t7.5
SAY @246 = @247
++ @248 + t7.6
END

IF ~~ t7.6
SAY @249 = @250
++ @251 + t7.7
END

IF ~~ t7.7
SAY @252 = @253
++ @254 DO ~IncrementGlobal("RJCntBedded","GLOBAL",1)~ + t0.1
END

// Talk 8. Toril vs Sigil

IF ~G("RJGraceTalk",16) !TimeOfDay(NIGHT) AreaType(OUTDOOR)~ t8d
SAY @260
IF ~~ THEN GOTO t8.0
END

IF ~G("RJGraceTalk",16) TimeOfDay(NIGHT) AreaType(OUTDOOR)~ t8n
SAY @276
IF ~~ THEN GOTO t8.0
END

IF ~G("RJGraceTalk",16) !AreaType(OUTDOOR)~ t8o
SAY @277
IF ~~ THEN GOTO t8.0
END

IF ~~ t8.0
SAY @261
++ @263 + t8.1
++ @264 + t8.2
END

IF ~~ t8.1
SAY @265 = @266
++ @267 + t8.2
END

IF ~~ t8.2
SAY @268 = @269 = @270 = @271 = @272
++ @273 + t8.3
END

IF ~~ t8.3
SAY @274
++ @275 + t0.1
END

// Talk 9. Simple pleasures

IF ~G("RJGraceTalk",18)~ t9
SAY @280 = @281 = @282
++ @283 + t9.1
END

IF ~~ t9.1
SAY @284 = @285 = @286
++ @287 + t9.2
++ @288 + t9.3
END

IF ~~ t9.2
SAY @289 = @290
++ @291 + t9.3
END

IF ~~ t9.3
SAY @292 = @293 = @294 = @295
++ @296 + t9.4
END

IF ~~ t9.4
SAY @297
++ @298 + t9.5
++ @299 + t9.6
++ @300 + t9.7
END

IF ~~ t9.5
SAY @301
++ @302 + t9.6
END

IF ~~ t9.6
SAY @303
++ @304 + t9.7
END

IF ~~ t9.7
SAY @305 = @306
++ @307 + t0.1
END

// Talk 10. Rings and things

IF ~G("RJGraceTalk",20)~ t10
SAY @320
++ @321 DO ~GiveItemCreate("RJRNGGR","RJGrace",0,0,0)~ + t10.1
END

IF ~~ t10.1
SAY @322 = @323
++ @324 + t10.2
END

IF ~~ t10.2
SAY @325 = @326
++ @327 + t10.3
END

IF ~~ t10.3
SAY @328 = @329
++ @330 + t10.4
END

IF ~~ t10.4
SAY @331 = @332 = @333
++ @334 + t10.5
END

IF ~~ t10.5
SAY @335
++ @336 + t10.6
END

IF ~~ t10.6
SAY @337
++ @338 + t10.7
END

IF ~~ t10.7
SAY @339
++ @340 + t10.8
END

IF ~~ t10.8
SAY @341 = @342
IF ~~ THEN DO ~IncrementGlobal("RJCntWedded","GLOBAL",1)
               SetGlobal("RJGraceMarried","GLOBAL",1)~ GOTO t0.1
END

// Talk 11. Spouse talk

IF ~G("RJGraceTalk",22)~ t11
SAY @350
++ @351 + t11.1
END

IF ~~ t11.1
SAY @352 = @353
++ @354 + t11.2
END

IF ~~ t11.2
SAY @355 = @356
++ @357 + t11.3
END

IF ~~ t11.3
SAY @358 = @359
++ @360 + t11.4
END

IF ~~ t11.4
SAY @361 = @362
++ @363 + t0.1
END

// Talk 12. Orphanage

IF ~G("RJGraceTalk",24)~ t12
SAY @370 = @371 = @372
++ @373 + t12.1
END

IF ~~ t12.1
SAY @374 = @375 = @376
++ @377 + t12.2
END

IF ~~ t12.2
SAY @378
++ @379 + t12.3
END

IF ~~ t12.3
SAY @380 = @381
++ @382 + t0.1
END

// Talk 13. Troubling thoughts

IF ~G("RJGraceTalk",26)~ t13
SAY @390
++ @391 + t13.1
++ @392 + t13.2
END

IF ~~ t13.1
SAY @393 = @394
++ @395 + t13.2
END

IF ~~ t13.2
SAY @396
++ @397 + t13.3
END

IF ~~ t13.3
SAY @398 = @399 = @400 = @401 = @402
++ @403 + t13.4
END

IF ~~ t13.4
SAY @404 = @405 = @406 = @407
++ @408 + t0.1
END

// Talk 14. Child talk

IF ~G("RJGraceTalk",28)~ t14
SAY @420
++ @421 + t14.1
END

IF ~~ t14.1
SAY @422
++ @423 + t14.2
END

IF ~~ t14.2
SAY @424 = @425
+ ~InParty("E3Fade") G("RJAnnahRomanceActive",2)~ + @426 + t14.3
+ ~!InParty("E3Fade") G("RJAnnahRomanceActive",2)~ + @427 + t14.3
+ ~InParty("E3Fade") !G("RJAnnahRomanceActive",2)~ + @428 + t14.3
+ ~!InParty("E3Fade") !G("RJAnnahRomanceActive",2)~ + @429 + t14.4
END

IF ~~ t14.3
SAY @430
++ @431 + t14.4
END

IF ~~ t14.4
SAY @432
++ @433 + t14.5
END

IF ~~ t14.5
SAY @434 = @435
++ @436 + t14.6
END

IF ~~ t14.6
SAY @437 = @438 = @439
++ @440 + t0.1
END

// Phaere Innuendo

IF ~G("PhaereInnuendo",2)
    G("RJGraceSleptPhaere",1)~ THEN BEGIN RJGraceSleptPhaere
SAY @2
++ @3 DO ~SetGlobal("RJGraceSleptPhaere","GLOBAL",2)~ GOTO RJGraceSleptPhaere2
END

IF ~~ THEN BEGIN RJGraceSleptPhaere2
SAY @4
++ @5 GOTO RJGraceSleptPhaere1ProudEnd
END

IF ~~ THEN BEGIN RJGraceSleptPhaere1ProudEnd
SAY @6
IF ~~ THEN EXIT
END

IF ~G("PhaereInnuendo",3)
    G("RJGraceSleptPhaere",1) ~ THEN BEGIN RJGraceNoSleptPhaere
SAY @28
++ @29 DO ~SetGlobal("RJGraceSleptPhaere","GLOBAL",2)~ GOTO RJGraceNoSleptPhaere1
END

IF ~~ THEN BEGIN RJGraceNoSleptPhaere1
SAY @7
++ @8 GOTO RJGraceNoSleptPhaere2
END

IF ~~ THEN BEGIN RJGraceNoSleptPhaere2
SAY @9
++ @10 GOTO RJGraceNoSleptPhaere3
END

IF ~~ THEN BEGIN RJGraceNoSleptPhaere3
SAY @11
IF ~~ THEN EXIT
END

END

// Grace sleeps in the Underdark inn

CHAIN IF ~
  InParty("RJGrace")
  !StateCheck("RJGrace",CD_STATE_NOTVALID)
  !StateCheck(Player1,CD_STATE_NOTVALID)
  G("RJGRUDSleep1",1)~ THEN PLAYER1 GRUDSleep1
@480
== RJGRACEJ @481
== PLAYER1 @482
== RJALIJ @483
== RJRAVELJ IF ~InParty("RJRavel")~ THEN @484
== RJANNAHJ IF ~InParty("RJAnnah")~ THEN @485
== RJALIJ @486
== PLAYER1 @487 = @488 = @489 = @490
END
IF ~~ THEN DO ~SetGlobal("RJGRUDSleep1","GLOBAL",2)
            StartCutSceneMode()
            StartCutScene("Cut34a")~ EXIT

CHAIN IF ~
  InParty("RJGrace")
  !StateCheck("RJGrace",CD_STATE_NOTVALID)
  !StateCheck(Player1,CD_STATE_NOTVALID)
  G("RJGRUDSleep1",3)~ THEN RJGRACEJ GRUDSleep2
@500 DO ~SetGlobal("RJGRUDSleep1","GLOBAL",4)~
END
++ @501 EXIT
