
// Gypsy in Trademeet

EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0) Name("RJKesai",LastTalkedToBy)~ EXTERN TRGYP02 rjkeg1
END

CHAIN TRGYP02 rjkeg1
@30
== RJKESAIJ @31
EXIT

// Crazy Celvan - an obligatory bad limerick

CHAIN IF WEIGHT #-1
~InParty("RJKesai")
See("RJKesai")
!StateCheck("RJKesai",CD_STATE_NOTVALID)
Global("RJKesaiReactionCelvan","AR0300",0)~ THEN CELVAN rjkec1
@0
DO ~SetGlobal("RJKesaiReactionCelvan","AR0300",1)~
== RJKESAIJ @1
END CELVAN 1

// Obligatory comments for Madame Nin's brothel in the Copper Coronet

CHAIN IF WEIGHT #-1
~NumTimesTalkedTo(0)
Name("RJKesai",LastTalkedToBy)
!G("MadamUpset",1)~ THEN MADAM RJKesaiReactionMadam1
@32
== RJKESAIJ @33
EXIT

CHAIN IF WEIGHT #-1
~!NumTimesTalkedTo(0)
Name("RJKesai",LastTalkedToBy)
!G("MadamUpset",1)~ THEN MADAM RJKesaiReactionMadam2
@34
== RJKESAIJ @35
EXIT

// Viconia rescued

I_C_T VICONI 13 RJKesaiVICONI13
== RJKESAIJ IF ~InParty("RJKesai") InMyArea("RJKesai") !StateCheck("RJKesai",CD_STATE_NOTVALID)~ THEN @24
END

// On arranged marriages

I_C_T NALIA 75 RJKesaiRJKesai75
== RJKESAIJ IF ~InParty("RJKesai") InMyArea("RJKesai") !StateCheck("RJKesai",CD_STATE_NOTVALID)~ THEN @25
END

// Spellhold

// Yoshimo's betrayal

I_C_T YOSHJ 113 RJKesaiYOSHJ113
== RJKESAIJ IF ~InParty("RJKesai") InMyArea("RJKesai") !StateCheck("RJKesai",CD_STATE_NOTVALID)~ THEN @14
END

// Meeting Saemon again

I_C_T PPSAEM3 2 RJKesaiPPSAEM32
== RJKESAIJ IF ~InParty("RJKesai") InMyArea("RJKesai") !StateCheck("RJKesai",CD_STATE_NOTVALID)~ THEN @36
END

// Player becomes the Slayer for the first time.

I_C_T PLAYER1 5 RJKesaiFirstSlayerChange1
== RJKESAIJ IF ~InParty("RJKesai") InMyArea("RJKesai") !StateCheck("RJKesai",CD_STATE_NOTVALID)~ THEN @15
END

// The Underdark

// On becoming Drow

I_C_T UDSILVER 35 RJKesaiUDSILVER35
== RJKESAIJ IF ~InParty("RJKesai") InMyArea("RJKesai") !StateCheck("RJKesai",CD_STATE_NOTVALID)~ THEN @26
END

// Underdark exit

I_C_T C6ELHAN2 8 RJKesaiC6ELHAN28
== RJKESAIJ IF ~InParty("RJKesai") InMyArea("RJKesai") !StateCheck("RJKesai",CD_STATE_NOTVALID)~ THEN @27
END

// Tree of Life

// Another dragon.

I_C_T2 DRAGBLAC 2 RJKesaiDragon2
== RJKESAIJ IF ~InParty("RJKesai")~ THEN @44
END

I_C_T2 DRAGBLAC 5 RJKesaiDragon5
== RJKESAIJ IF ~InParty("RJKesai")~ THEN @44
END

I_C_T2 DRAGBLAC 9 RJKesaiDragon9
== RJKESAIJ IF ~InParty("RJKesai")~ THEN @44
END

I_C_T2 DRAGBLAC 12 RJKesaiDragon12
== RJKESAIJ IF ~InParty("RJKesai")~ THEN @44
END

// Before going down the rabbit hole

EXTEND_BOTTOM PLAYER1 33
IF ~InParty("RJKesai") InMyArea("RJKesai") !StateCheck("RJKesai",CD_STATE_NOTVALID) G("RJKesaiTreeOfLife",0)~ 
EXTERN PLAYER1 RJKesaiPlayer1SOA3
END

CHAIN PLAYER1 RJKesaiPlayer1SOA3
@16
DO ~SetGlobal("RJKesaiTreeOfLife","GLOBAL",1)~
END
++ @17 EXTERN RJKESAIJ RJKesaiPlayer1SOA3.1

CHAIN RJKESAIJ RJKesaiPlayer1SOA3.1
@18 = @19 = @20
END
COPY_TRANS PLAYER1 33

// Irenicus is dead.

I_C_T PLAYER1 16 RJKesaiIrenicusIsDead1
== RJKESAIJ IF ~InParty("RJKesai") !StateCheck("RJKesai",CD_STATE_NOTVALID)~ THEN @21
END

// Entering Hell with the rest of the party.

I_C_T PLAYER1 25 RJKesaiEnteringHell1
== RJKESAIJ IF ~InParty("RJKesai") InMyArea("RJKesai") !StateCheck("RJKesai",CD_STATE_NOTVALID)~ THEN @22
END

// Battling Irenicus. There are four identical interjections for four dialogue states.

I_C_T HELLJON 7 RJKesaiThirdBattleWithIrenicus1
== RJKESAIJ IF ~InParty("RJKesai") InMyArea("RJKesai") !StateCheck("RJKesai",CD_STATE_NOTVALID)~ THEN @23
END

I_C_T HELLJON 8 RJKesaiThirdBattleWithIrenicus1
== RJKESAIJ IF ~InParty("RJKesai") InMyArea("RJKesai") !StateCheck("RJKesai",CD_STATE_NOTVALID)~ THEN @23
END

I_C_T HELLJON 9 RJKesaiThirdBattleWithIrenicus1
== RJKESAIJ IF ~InParty("RJKesai") InMyArea("RJKesai") !StateCheck("RJKesai",CD_STATE_NOTVALID)~ THEN @23
END

I_C_T HELLJON 10 RJKesaiThirdBattleWithIrenicus1
== RJKESAIJ IF ~InParty("RJKesai") InMyArea("RJKesai") !StateCheck("RJKesai",CD_STATE_NOTVALID)~ THEN @23
END

// Sahuagin City

I_C_T SAHPR1 0 RJKesaiSAHPR10
== RJKESAIJ IF ~InParty("RJKesai") InMyArea("RJKesai") !StateCheck("RJKesai",CD_STATE_NOTVALID)~ THEN @37
END

// Aesgareth (Watcher's Keep)

EXTEND_BOTTOM GORCAMB 0
IF ~InParty("RJKesai") InMyArea("RJKesai") !StateCheck("RJKesai",CD_STATE_NOTVALID) G("RJKesaiAesgareth",0)~
GOTO RJKesaiGORCAMB
END

CHAIN GORCAMB RJKesaiGORCAMB
@45 = @46 DO ~SetGlobal("RJKesaiAesgareth","GLOBAL",1)~
== RJKESAIJ IF ~GLT("Chapter",%bg2_chapter_8%)~ THEN @47
== RJKE25J IF ~GGT("Chapter",%bg2_chapter_7%)~ THEN @47
== GORCAMB @48
== RJKESAIJ IF ~GLT("Chapter",%bg2_chapter_8%)~ THEN @49
== RJKE25J IF ~GGT("Chapter",%bg2_chapter_7%)~ THEN @49
== GORCAMB @50
END
COPY_TRANS GORCAMB 0

// Demogorgon (Watcher's Keep)

I_C_T GORDEMO 1 RJKesaiImprisonedOneMet1
== RJKESAIJ IF ~InParty("RJKesai") InMyArea("RJKesai") !StateCheck("RJKesai",CD_STATE_NOTVALID) GLT("Chapter",%bg2_chapter_8%)~ THEN @38
END

I_C_T GORDEMO 1 RJKesaiImprisonedOneMet2
== RJKE25J IF ~InParty("RJKesai") InMyArea("RJKesai") !StateCheck("RJKesai",CD_STATE_NOTVALID) GGT("Chapter",%bg2_chapter_7%)~ THEN @38
END

// Anath and the Shade Lord

I_C_T2 RNGWLF01 8 RJKesaiAnath8
== RJKESAIJ IF ~InParty("RJKesai")~ THEN @39
END

// Firkraag

I_C_T3 FIRKRA02 20 RJKesaiFirk20
== RJKESAIJ IF ~InParty("RJKesai")~ THEN @40
== FIRKRA02 IF ~InParty("RJKesai")~ THEN @43
END

APPEND RJKESAIJ

// LOVETALKS START HERE

// Talk 1. Limits

IF ~G("RJKesaiTalk",2)~ t1
SAY @100 
++ @101 + t1.1
++ @102 + t1.2
++ @103 + t1.3
++ @104 + t0
END

IF ~~ t0
SAY @105
IF ~~ DO ~StartCutSceneMode()
          IncrementGlobal("RJKesaiTalk","GLOBAL",-1)
          RealSetGlobalTimer("RJKesaiRomance","GLOBAL",RJ_FAST)
          EndCutSceneMode()~ EXIT
END

IF ~~ t0.1
SAY @106
IF ~~ DO ~StartCutSceneMode()
          IncrementGlobal("RJKesaiTalk","GLOBAL",1)
          RealSetGlobalTimer("RJKesaiRomance","GLOBAL",RJ_TALK)
          EndCutSceneMode()~ EXIT
END

IF ~~ t1.1
SAY @107
++ @102 + t1.2
END

IF ~~ t1.2
SAY @108
++ @103 + t1.3
END

IF ~~ t1.3
SAY @109 = @110
++ @111 + t1.4
++ @117 + t1.5
END

IF ~~ t1.4
SAY @112 = @113 = @114 = @115
++ @116 + t0.1
END

IF ~~ t1.5
SAY @119 = @120
++ @121 + t1.4
++ @122 + t1.6
END

IF ~~ t1.6
SAY @123
IF ~~ THEN DO ~LeaveParty()
               StartCutSceneMode()
               StartCutScene("RJKE2KS")~ EXIT
END

// Talk 2. Walking

IF ~G("RJKesaiTalk",4)~ t2
SAY @130
++ @131 + t2.1
++ @132 + t2.4
END

IF ~~ t2.1
SAY @133 = @134
++ @135 + t2.2
END

IF ~~ t2.2
SAY @136
++ @137 + t2.3
END

IF ~~ t2.3
SAY @138 = @139 = @140
++ @132 + t2.4
END

IF ~~ t2.4
SAY @141 = @142
++ @143 + t0.1
END

// Talk 3. Believing

IF ~G("RJKesaiTalk",6)~ t3
SAY @150 = @151
++ @152 + t3.1
END

IF ~~ t3.1
SAY @153 = @154
++ @155 + t3.2
END

IF ~~ t3.2
SAY @156 = @157 = @158
++ @159 + t3.3
END

IF ~~ t3.3
SAY @160
++ @161 + t0.1
END

// Talk 4. Morning after

IF ~G("RJKesaiTalk",8)
    G("RJKESleep",0)~ t4
SAY @170 = @171
++ @172 + t4.1
END

IF ~~ t4.1
SAY @173 = @174
++ @175 DO ~StartCutSceneMode()
            StartCutScene("RJKESLP")~ EXIT
END

IF ~G("RJKESleep",3)~ t4.2
SAY @176 = @177
++ @178 + t4.3
END

IF ~~ t4.3
SAY @179
++ @180 + t4.4
END

IF ~~ t4.4
SAY @181
++ @182 DO ~SetGlobal("RJSobethJID","GLOBAL",1)
            SetGlobal("RJKESleep","GLOBAL",4)
            AddJournalEntry(@9067,INFO)~ + t0.1
END

// Talk 5. Post Quest

IF ~G("RJKesaiTalk",10)~ t5
SAY @190 = @191
++ @192 + t5.1
END

IF ~~ t5.1
SAY @193 = @194 = @195 = @196
++ @197 + t5.2
END

IF ~~ t5.2
SAY @198
++ @199 + t5.3
END

IF ~~ t5.3
SAY @200
++ @201 + t5.4
END

IF ~~ t5.4
SAY @202 = @204
++ @205 + t5.5
END

IF ~~ t5.5
SAY @206
++ @207 + t5.6
END

IF ~~ t5.6
SAY @208
++ @209 DO ~SetGlobal("RJKesaiRomanceActive","GLOBAL",2)~ + t0.1
END

// Talk 6. For Lack of a Tail

IF ~G("RJKesaiTalk",12)~ t6
SAY @210
++ @211 + t6.1
END

IF ~~ t6.1
SAY @212
++ @213 + t6.2
END

IF ~~ t6.2
SAY @214 = @215
++ @216 + t6.3
END

IF ~~ t6.3
SAY @217 = @218
++ @219 + t6.4
END

IF ~~ t6.4
SAY @220 = @221
++ @222 + t0.1
END

// Talk 7. Devil Slayer

IF ~G("RJKesaiTalk",14)~ t7
SAY @230 = @231
++ @232 + t7.1
++ @233 + t7.2
END

IF ~~ t7.1
SAY @234 = @235
++ @233 + t7.2
END

IF ~~ t7.2
SAY @236 = @237
++ @239 + t7.3
END

IF ~~ t7.3
SAY @240 = @241
++ @242 + t0.1
END

// Talk 8. Confusion

IF ~G("RJKesaiTalk",16)~ t8
SAY @250 = @251
++ @252 + t8.1
++ @253 + t8.2
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
SAY @258 = @259
++ @260 + t8.4
END

IF ~~ t8.4
SAY @261
++ @262 + t8.5
END

IF ~~ t8.5
SAY @263
++ @264 + t8.6
END

IF ~~ t8.6
SAY @265
++ @266 + t0.1
END

// Talk 9. Brothal Backstory

IF ~G("RJKesaiTalk",18)~ t9
SAY @270 = @271
++ @272 + t9.1
END

IF ~~ t9.1
SAY @273  = @274 = @275 = @276 = @277 = @278 = @279 = @280 = @281 = @282 = @283
++ @284 + t9.2
END

IF ~~ t9.2
SAY @285
++ @286 + t9.3
END

IF ~~ t9.3
SAY @287
++ @288 + t0.1
END

// Talk 10. Engagement

IF ~G("RJKesaiTalk",20)~ t10
SAY @290
++ @291 + t10.1
END

IF ~~ t10.1
SAY @292 = @293
++ @294 + t10.2
END

IF ~~ t10.2
SAY @295 = @296 = @297 = @298
++ @299 + t10.3
END

IF ~~ t10.3
SAY @300
++ @301 + t10.4
END

IF ~~ t10.4
SAY @302 = @303
IF ~~ THEN REPLY @304 DO ~GiveItemCreate("RJRNGKE","RJKesai",0,0,0)
                          IncrementGlobal("RJCntWedded","GLOBAL",1) 
                          SetGlobal("RJKesaiMarried","GLOBAL",1)~ GOTO t0.1
END

// Talk 11. Pickles

IF ~G("RJKesaiTalk",22)~ t11
SAY @310
++ @311 + t11.1
++ @312 + t11.2
END

IF ~~ t11.1
SAY @313 = @314
++ @312 + t11.2
END

IF ~~ t11.2
SAY @315 = @316
++ @317 + t11.3
END

IF ~~ t11.3
SAY @318
++ @319 + t11.4
END

IF ~~ t11.4
SAY @320
++ @321 + t0.1
END

// Talk 12. Imoen

IF ~G("RJKesaiTalk",24)~ t12
SAY @330 = @331
++ @332 + t12.1
++ @333 + t12.2
END

IF ~~ t12.1
SAY @334 = @335 = @336
++ @333 + t12.2
END

IF ~~ t12.2
SAY @337
++ @338 + t12.4
END

IF ~~ t12.3
SAY @339 = @340
++ @341 + t12.4
END

IF ~~ t12.4
SAY @342 = @343
++ @344 + t0.1
END

// Talk 13. The Law

IF ~G("RJKesaiTalk",26)~ t13
SAY @350 = @351
++ @352 + t13.1
END

IF ~~ t13.1
SAY @353 = @354 = @355 = @356 = @357
++ @358 + t13.2
END

IF ~~ t13.2
SAY @359
++ @360 + t13.3
END

IF ~~ t13.3
SAY @361
++ @362 + t0.1
END

// Talk 14. Ravel

IF ~G("RJKesaiTalk",28)~ t14
SAY @370
IF ~G("RJAddRV",0) G("RJWaitRV",0)~ THEN REPLY @371 GOTO t14.1
IF ~G("RJAddRV",0) G("RJWaitRV",1)~ THEN REPLY @371 GOTO t14.2
IF ~G("RJAddRV",0) G("RJWaitRV",2)~ THEN REPLY @371 GOTO t14.3
IF ~G("RJAddRV",1)~ THEN REPLY @371 GOTO t14.4
IF ~G("RJAddRV",2) G("RJParkRV",0)~ THEN REPLY @371 GOTO t14.4
IF ~G("RJParkRV",1)~ THEN REPLY @371 GOTO t14.5
IF ~G("RJAddRV",4)~ THEN REPLY @371 GOTO t14.6
END

IF ~~ t14.1
SAY @372
++ @373 + t14.1.1
END

IF ~~ t14.1.1
SAY @374 = @375 = @376
++ @377 + t0.1
END

IF ~~ t14.2
SAY @378
++ @379 + t14.2.1
END

IF ~~ t14.2.1
SAY @380
++ @381 + t0.1
END

IF ~~ t14.3
SAY @378
++ @382 + t14.3.1
END

IF ~~ t14.3.1
SAY @383
++ @384 + t0.1
END

IF ~~ t14.4
SAY @385
++ @386 + t14.4.1
END

IF ~~ t14.4.1
SAY @387 = @388
++ @389 + t0.1
END

IF ~~ t14.5
SAY @390
++ @391 + t14.5.1
END

IF ~~ t14.5.1
SAY @392
++ @393 + t14.6.1
END

IF ~~ t14.6
SAY @394
++ @395 + t14.6.1
END

IF ~~ t14.6.1
SAY @396 = @397
++ @398 + t0.1
END

// Phaere Innuendo

IF ~G("PhaereInnuendo",2)
    G("RJKesaiSleptPhaere",1)~ THEN BEGIN RJKesaiSleptPhaere
SAY @2
++ @3 DO ~SetGlobal("RJKesaiSleptPhaere","GLOBAL",2)~ GOTO RJKesaiSleptPhaere2
END

IF ~~ THEN BEGIN RJKesaiSleptPhaere2
SAY @4
++ @5 GOTO RJKesaiSleptPhaere1ProudEnd
END

IF ~~ THEN BEGIN RJKesaiSleptPhaere1ProudEnd
SAY @6
IF ~~ THEN EXIT
END

IF ~G("PhaereInnuendo",3)
    G("RJKesaiSleptPhaere",1) ~ THEN BEGIN RJKesaiNoSleptPhaere
SAY @28
++ @29 DO ~SetGlobal("RJKesaiSleptPhaere","GLOBAL",2)~ GOTO RJKesaiNoSleptPhaere1
END

IF ~~ THEN BEGIN RJKesaiNoSleptPhaere1
SAY @7
++ @8 GOTO RJKesaiNoSleptPhaere2
END

IF ~~ THEN BEGIN RJKesaiNoSleptPhaere2
SAY @9
++ @10 GOTO RJKesaiNoSleptPhaere3
END

IF ~~ THEN BEGIN RJKesaiNoSleptPhaere3
SAY @11
IF ~~ THEN EXIT
END

END

// Sleep encounter with Sobeth

CHAIN IF ~G("RJKESleep",1)~ THEN PLAYER1 KESOBSleep
@400 DO ~CreateCreature("RJSOB",[-1.-1],0)
         ActionOverride("RJSOB",FaceObject("RJKesai"))~
== RJKESAIJ @401
== RJSOB @402
== PLAYER1 @403 = @404
== RJSOB @405
== PLAYER1 @406
== RJSOB @407
== PLAYER1 @408
== RJSOB @409 DO ~ActionOverride("RJSOB",DestroySelf())~
== RJKESAIJ @410 = @411
== PLAYER1 @412 = @413
END
IF ~~ THEN DO ~StartCutSceneMode()
               StartCutScene("RJKEWAK")~ EXIT

// Kesai sleeps outdoors in the underdark

CHAIN IF ~
  InParty("RJKesai")
  !StateCheck("RJKesai",CD_STATE_NOTVALID)
  !StateCheck(Player1,CD_STATE_NOTVALID)
  G("RJKEUDSleep1",1)~ THEN PLAYER1 KEUDSleep1
@420
== RJKESAIJ @421 = @422
== PLAYER1 @423
== RJGRACEJ IF ~InParty("RJGrace")~ THEN @424
== PLAYER1 IF ~InParty("RJGrace")~ THEN @425
== RJRAVELJ IF ~InParty("RJRavel")~ THEN @426
== RJFAY IF ~G("RJFayBig",1) G("RJParkFY",0)~ THEN @437
== RJALIJ @429
== PLAYER1 @435
== RJKESAIJ @428
END
++ @427 DO ~SetGlobal("RJKEUDSleep1","GLOBAL",2)
            StartCutSceneMode()
            StartCutScene("Cut34a")~ EXIT

CHAIN IF ~
  InParty("RJKesai")
  !StateCheck("RJKesai",CD_STATE_NOTVALID)
  !StateCheck(Player1,CD_STATE_NOTVALID)
  G("RJKEUDSleep1",3)~ THEN RJKESAIJ KEUDSleep2
@430 = @431 DO ~SetGlobal("RJKEUDSleep1","GLOBAL",5)~
== RJGRACEJ IF ~InParty("RJGrace")~ THEN @432
== RJRAVELJ IF ~InParty("RJRavel")~ THEN @438
== RJALIJ @439
== RJFAY IF ~G("RJFayBig",1) G("RJParkFY",0)~ THEN @444
== PLAYER1 @436
== RJKESAIJ @433
END
++ @434 EXIT

CHAIN IF ~
  InParty("RJKesai")
  !StateCheck("RJKesai",CD_STATE_NOTVALID)
  !StateCheck(Player1,CD_STATE_NOTVALID)
  G("RJKEUDSleep1",4)~ THEN RJKESAIJ KEUDSleep3
@440 = @441 DO ~SetGlobal("RJKEUDSleep1","GLOBAL",5)~
== RJALIJ @442
END
++ @443 EXIT
