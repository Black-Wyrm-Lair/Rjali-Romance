
// Gypsy in Trademeet

EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0) Name("RJRavel",LastTalkedToBy)~ EXTERN TRGYP02 rjrvg1
END

CHAIN TRGYP02 rjrvg1
@30
== RJRAVELJ @31
EXIT

// Crazy Celvan - an obligatory bad limerick

CHAIN IF WEIGHT #-1 
~InParty("RJRavel")
See("RJRavel")
!StateCheck("RJRavel",CD_STATE_NOTVALID)
Global("RJRavelReactionCelvan","AR0300",0)~ THEN CELVAN rjrvc1
@0
DO ~SetGlobal("RJRavelReactionCelvan","AR0300",1)~
== RJRAVELJ @1
END CELVAN 1

// Obligatory comments for Madame Nin's brothel in the Copper Coronet

CHAIN IF WEIGHT #-1
~NumTimesTalkedTo(0)
Name("RJRavel",LastTalkedToBy)
!G("MadamUpset",1)~ THEN MADAM RJRavelReactionMadam1
@32
== RJRAVELJ @33
EXIT

CHAIN IF WEIGHT #-1
~!NumTimesTalkedTo(0)
Name("RJRavel",LastTalkedToBy)
!G("MadamUpset",1)~ THEN MADAM RJRavelReactionMadam2
@34
== RJRAVELJ @35
EXIT

// Viconia rescued

I_C_T VICONI 13 RJRavelVICONI13
== RJRAVELJ IF ~InParty("RJRavel") InMyArea("RJRavel") !StateCheck("RJRavel",CD_STATE_NOTVALID)~ THEN @24
END

// On arranged marriages

I_C_T NALIA 75 RJRavelRJRavel75
== RJRAVELJ IF ~InParty("RJRavel") InMyArea("RJRavel") !StateCheck("RJRavel",CD_STATE_NOTVALID)~ THEN @25
END

// Spellhold

// Yoshimo's betrayal

I_C_T YOSHJ 113 RJRavelYOSHJ113
== RJRAVELJ IF ~InParty("RJRavel") InMyArea("RJRavel") !StateCheck("RJRavel",CD_STATE_NOTVALID)~ THEN @14
END

// Meeting Saemon again

I_C_T PPSAEM3 2 RJRavelPPSAEM32
== RJRAVELJ IF ~InParty("RJRavel") InMyArea("RJRavel") !StateCheck("RJRavel",CD_STATE_NOTVALID)~ THEN @36
END

// Player becomes the Slayer for the first time.

I_C_T PLAYER1 5 RJRavelFirstSlayerChange1
== RJRAVELJ IF ~InParty("RJRavel") See("RJRavel") !StateCheck("RJRavel",CD_STATE_NOTVALID)~ THEN @15
END

// The Underdark

// On becoming Drow

I_C_T UDSILVER 35 RJRavelUDSILVER35
== RJRAVELJ IF ~InParty("RJRavel") InMyArea("RJRavel") !StateCheck("RJRavel",CD_STATE_NOTVALID)~ THEN @26
END

// Underdark exit

I_C_T C6ELHAN2 8 RJRavelC6ELHAN28
== RJRAVELJ IF ~InParty("RJRavel") InMyArea("RJRavel") !StateCheck("RJRavel",CD_STATE_NOTVALID)~ THEN @27
END

// Tree of Life

// Another dragon.

I_C_T2 DRAGBLAC 2 RJRavelDragon2
== RJRAVELJ IF ~InParty("RJRavel")~ THEN @44
END

I_C_T2 DRAGBLAC 5 RJRavelDragon5
== RJRAVELJ IF ~InParty("RJRavel")~ THEN @44
END

I_C_T2 DRAGBLAC 9 RJRavelDragon9
== RJRAVELJ IF ~InParty("RJRavel")~ THEN @44
END

I_C_T2 DRAGBLAC 12 RJRavelDragon12
== RJRAVELJ IF ~InParty("RJRavel")~ THEN @44
END

// Before going down the rabbit hole

EXTEND_BOTTOM PLAYER1 33
IF ~InParty("RJRavel") InMyArea("RJRavel") !StateCheck("RJRavel",CD_STATE_NOTVALID) G("RJRavelTreeOfLife",0)~ 
EXTERN PLAYER1 RJRavelPlayer1SOA3
END

CHAIN PLAYER1 RJRavelPlayer1SOA3
@16
DO ~SetGlobal("RJRavelTreeOfLife","GLOBAL",1)~
END
++ @17 EXTERN RJRAVELJ RJRavelPlayer1SOA3.1

CHAIN RJRAVELJ RJRavelPlayer1SOA3.1
@18 = @19 = @20
END
COPY_TRANS PLAYER1 33

// Irenicus is dead.

I_C_T PLAYER1 16 RJRavelIrenicusIsDead1
== RJRAVELJ IF ~InParty("RJRavel") !StateCheck("RJRavel",CD_STATE_NOTVALID)~ THEN @21
END

// Entering Hell with the rest of the party.

I_C_T PLAYER1 25 RJRavelEnteringHell1
== RJRAVELJ IF ~InParty("RJRavel") InMyArea("RJRavel") !StateCheck("RJRavel",CD_STATE_NOTVALID)~ THEN @22
END

// Battling Irenicus. There are four identical interjections for four dialogue states.

I_C_T HELLJON 7 RJRavelThirdBattleWithIrenicus1
== RJRAVELJ IF ~InParty("RJRavel") InMyArea("RJRavel") !StateCheck("RJRavel",CD_STATE_NOTVALID)~ THEN @23
END

I_C_T HELLJON 8 RJRavelThirdBattleWithIrenicus1
== RJRAVELJ IF ~InParty("RJRavel") InMyArea("RJRavel") !StateCheck("RJRavel",CD_STATE_NOTVALID)~ THEN @23
END

I_C_T HELLJON 9 RJRavelThirdBattleWithIrenicus1
== RJRAVELJ IF ~InParty("RJRavel") InMyArea("RJRavel") !StateCheck("RJRavel",CD_STATE_NOTVALID)~ THEN @23
END

I_C_T HELLJON 10 RJRavelThirdBattleWithIrenicus1
== RJRAVELJ IF ~InParty("RJRavel") InMyArea("RJRavel") !StateCheck("RJRavel",CD_STATE_NOTVALID)~ THEN @23
END

// Sahuagin City

I_C_T SAHPR1 0 RJRavelSAHPR10
== RJRAVELJ IF ~InParty("RJRavel") InMyArea("RJRavel") !StateCheck("RJRavel",CD_STATE_NOTVALID)~ THEN @37
END

// Demogorgon (Watcher's Keep)

I_C_T GORDEMO 1 RJRavelImprisonedOneMet1
== RJRAVELJ IF ~InParty("RJRavel") InMyArea("RJRavel") !StateCheck("RJRavel",CD_STATE_NOTVALID) GLT("Chapter",%bg2_chapter_8%)~ THEN @38
END

I_C_T GORDEMO 1 RJRavelImprisonedOneMet2
== RJRV25J IF ~InParty("RJRavel") InMyArea("RJRavel") !StateCheck("RJRavel",CD_STATE_NOTVALID) GGT("Chapter",%bg2_chapter_7%)~ THEN @38
END

// Anath and the Shade Lord

I_C_T2 RNGWLF01 8 RJRavelAnath8
== RJRAVELJ IF ~InParty("RJRavel")~ THEN @39
END

// Firkraag

I_C_T3 FIRKRA02 20 RJRavelFirk20
== RJRAVELJ IF ~InParty("RJRavel")~ THEN @40
== RJANNAHJ IF ~InParty("RJRavel") InParty("RJAnnah")~ THEN @41
== RJRAVELJ IF ~InParty("RJRavel") InParty("RJAnnah")~ THEN @42
== FIRKRA02 IF ~InParty("RJRavel")~ THEN @43
END

APPEND RJRAVELJ

// LOVETALKS START HERE

// Talk 1. Day or Night

IF ~G("RJRavelTalk",2)~ t1
SAY @100 
++ @101 + t1.1
++ @102 + t1.2
++ @103 + t1.3
++ @104 + t0
END

IF ~~ t0
SAY @105
IF ~~ DO ~StartCutSceneMode()
          IncrementGlobal("RJRavelTalk","GLOBAL",-1)
          RealSetGlobalTimer("RJRavelRomance","GLOBAL",RJ_FAST)
          EndCutSceneMode()~ EXIT
END

IF ~~ t0.1
SAY @106
IF ~~ DO ~StartCutSceneMode()
          IncrementGlobal("RJRavelTalk","GLOBAL",1)
          RealSetGlobalTimer("RJRavelRomance","GLOBAL",RJ_TALK)
          EndCutSceneMode()~ EXIT
END

IF ~~ t1.1
SAY @107
++ @103 + t1.3
END

IF ~~ t1.2
SAY @108
++ @103 + t1.3
END

IF ~~ t1.3
SAY @109 = @110
++ @111 + t1.4
++ @117 + t1.5
++ @118 + t1.5
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
IF ~~ THEN DO ~SetGlobal("RJRavelRomanceActive","GLOBAL",0)
      LeaveParty()
      SetGlobal("RJAddRV","GLOBAL",0)
      SetGlobal("RJWaitRV","GLOBAL",2)
      IncrementGlobal("RJAddCnt","GLOBAL",-1)
      ChangeAIScript("",OVERRIDE)
      SetDialog("RJPSTRV")
      MoveBetweenAreas("RJ0602",[3069.974],8)~ EXIT
END

// Talk 2. Bhaalspawn

IF ~G("RJRavelTalk",4)~ t2
SAY @130
++ @131 + t2.1
++ @132 + t2.4
END

IF ~~ t2.1
SAY @133 = @134
++ @135 + t2.2
++ @136 + t2.2
END

IF ~~ t2.2
SAY @137
++ @138 + t2.3
END

IF ~~ t2.3
SAY @139 = @140
IF ~~ THEN GOTO t0.1
END

IF ~~ t2.4
SAY @141
++ @142 + t2.1
++ @143 + t1.6
END

// Talk 3. Backward

IF ~G("RJRavelTalk",6)~ t3
SAY @150
++ @151 + t3.1
++ @152 + t1.6
END

IF ~~ t3.1
SAY @153
++ @154 + t3.2
++ @155 + t3.2
END

IF ~~ t3.2
SAY @156 = @157 = @158
++ @159 + t3.3
++ @160 + t3.3
END

IF ~~ t3.3
SAY @161
++ @162 + t0.1
END

// Talk 4. Morning after

IF ~G("RJRavelTalk",8)~ t4
SAY @170 = @171 = @172
++ @173 DO ~SetGlobal("RJRavelRomanceActive","GLOBAL",2)
            IncrementGlobal("RJCntBedded","GLOBAL",1)~ + t4.1
END

IF ~~ t4.1
SAY @174
++ @175 + t4.2
++ @176 + t4.2
END

IF ~~ t4.2
SAY @177
++ @178 + t0.1
END

// Talk 5. Why are you here

IF ~G("RJRavelTalk",10)~ t5
SAY @190
++ @191 + t5.1
END

IF ~~ t5.1
SAY @192
++ @193 + t5.2
++ @194 + t5.2
END

IF ~~ t5.2
SAY @195 = @196 = @197 = @198
++ @199 + t5.3
END

IF ~~ t5.3
SAY @200
++ @201 + t0.1
END

// Talk 6. Child talk

IF ~G("RJRavelTalk",12)~ t6
SAY @210
++ @211 + t6.1
END

IF ~~ t6.1
SAY @212
++ @213 + t6.2
++ @214 + t6.2
END

IF ~~ t6.2
SAY @215 = @216 = @217 = @218
++ @219 + t6.3
END

IF ~~ t6.3
SAY @220 = @221 = @222
++ @223 + t6.4
END

IF ~~ t6.4
SAY @224 = @225
++ @226 + t0.1
END

// Talk 7. Irenicus speculation

IF ~G("RJRavelTalk",14)~ t7
SAY @230
++ @231 + t7.1
END

IF ~~ t7.1
SAY @232 = @233
++ @234 + t7.2
++ @235 + t7.3
END

IF ~~ t7.2
SAY @236
++ @237 + t7.3
END

IF ~~ t7.3
SAY @238
++ @239 + t7.4
END

IF ~~ t7.4
SAY @240 = @241 = @242
++ @243 + t7.5
END

IF ~~ t7.5
SAY @244 = @245 = @246
++ @247 + t0.1
END

// Talk 8. Jini talk

IF ~G("RJRavelTalk",16)~ t8
SAY @250
++ @251 + t8.1
END

IF ~~ t8.1
SAY @252
++ @253 + t8.2
++ @254 + t8.2
END

IF ~~ t8.2
SAY @255 = @256
++ @257 + t8.3
END

IF ~~ t8.3
SAY @258
++ @259 + t8.4
END

IF ~~ t8.4
SAY @260 = @261
++ @262 + t8.5
END

IF ~~ t8.5
SAY @263
++ @264 + t0.1
END

// Talk 9. Pregnancy and Marriage

IF ~G("RJRavelTalk",18)~ t9
SAY @270
++ @271 + t9.1
END

IF ~~ t9.1
SAY @272
++ @273 + t9.2
++ @274 + t9.2
END

IF ~~ t9.2
SAY @275
++ @276 + t9.3
END

IF ~~ t9.3
SAY @277
IF ~~ THEN REPLY @278 DO ~GiveItemCreate("RJRNGRV","RJRavel",0,0,0)
                          IncrementGlobal("RJCntWedded","GLOBAL",1) 
                          SetGlobal("RJRavelMarried","GLOBAL",1)~ GOTO t9.4
END

IF ~~ t9.4
SAY @279 = @280 = @281
++ @282 + t9.5
END

IF ~~ t9.5
SAY @283 = @284
++ @285 + t0.1
END

// Talk 10. Baby names

IF ~G("RJRavelTalk",20)~ t10
SAY @290
++ @291 + t10.1
END

IF ~~ t10.1
SAY @292 = @293
++ @294 + t10.2
END

IF ~~ t10.2
SAY @295 = @296
++ @297 + t10.3
END

IF ~~ t10.3
SAY @298
++ @299 + t0.1
END

// Talk 11. What about Imoen

IF ~G("RJRavelTalk",22)~ t11
SAY @310 = @311
++ @312 + t11.1
++ @313 + t11.2
END

IF ~~ t11.1
SAY @314
++ @315 + t11.2
END

IF ~~ t11.2
SAY @316
++ @317 + t11.3
END

IF ~~ t11.3
SAY @318
++ @319 + t11.4
END

IF ~~ t11.4
SAY @320 = @321
++ @322 + t0.1
END

// Talk 12. Sigil vs Athkatla

IF ~G("RJRavelTalk",24)~ t12
SAY @330
++ @332 + t12.1
++ @331 + t12.2
END

IF ~~ t12.1
SAY @333
++ @334 + t12.2
END

IF ~~ t12.2
SAY @335 = @336 = @337
++ @338 + t12.4
++ @339 + t12.3
END

IF ~~ t12.3
SAY @340
++ @341 + t12.4
END

IF ~~ t12.4
SAY @342 = @343 = @344
++ @345 + t0.1
END

// Talk 13. Simple joys

IF ~G("RJRavelTalk",26)~ t13
SAY @350
++ @351 + t13.1
END

IF ~~ t13.1
SAY @352
++ @353 + t13.2
END

IF ~~ t13.2
SAY @354
++ @355 + t13.3
END

IF ~~ t13.3
SAY @356
++ @357 + t13.4
END

IF ~~ t13.4
SAY @358 = @359 = @360
++ @361 + t13.5
END

IF ~~ t13.5
SAY @362
++ @363 + t0.1
END

// Talk 14. Orphanage

IF ~G("RJRavelTalk",28)~ t14
SAY @370 = @371
++ @372 + t14.1
END

IF ~~ t14.1
SAY @373 = @374
IF ~~ THEN REPLY @375 DO ~SetGlobal("RJRavelOrphans","GLOBAL",1)~ GOTO t14.2
END

IF ~~ t14.2
SAY @376 = @377
++ @378 + t14.3
END

IF ~~ t14.3
SAY @379
++ @380 + t0.1
END

// Phaere Innuendo

IF ~G("PhaereInnuendo",2)
    G("RJRavelSleptPhaere",1)~ THEN BEGIN RJRavelSleptPhaere
SAY @2
++ @3 DO ~SetGlobal("RJRavelSleptPhaere","GLOBAL",2)~ GOTO RJRavelSleptPhaere2
END

IF ~~ THEN BEGIN RJRavelSleptPhaere2
SAY @4
++ @5 GOTO RJRavelSleptPhaere1ProudEnd
END

IF ~~ THEN BEGIN RJRavelSleptPhaere1ProudEnd
SAY @6
IF ~~ THEN EXIT
END

IF ~G("PhaereInnuendo",3)
    G("RJRavelSleptPhaere",1) ~ THEN BEGIN RJRavelNoSleptPhaere
SAY @28
++ @29 DO ~SetGlobal("RJRavelSleptPhaere","GLOBAL",2)~ GOTO RJRavelNoSleptPhaere1
END

IF ~~ THEN BEGIN RJRavelNoSleptPhaere1
SAY @7
++ @8 GOTO RJRavelNoSleptPhaere2
END

IF ~~ THEN BEGIN RJRavelNoSleptPhaere2
SAY @9
++ @10 GOTO RJRavelNoSleptPhaere3
END

IF ~~ THEN BEGIN RJRavelNoSleptPhaere3
SAY @11
IF ~~ THEN EXIT
END

END

// Ravel sleeps in the Ust Natha inn

CHAIN IF ~
  InParty("RJRavel")
  !StateCheck("RJRavel",CD_STATE_NOTVALID)
  !StateCheck(Player1,CD_STATE_NOTVALID)
  G("RJRVUDSleep1",1)~ THEN PLAYER1 RVUDSleep1
@400
== RJRAVELJ @401
== PLAYER1 @402
== RJRAVELJ @403 = @404
== PLAYER1 @405 = @406
== RJRAVELJ @407 = @408 = @409
END
IF ~~ THEN DO ~SetGlobal("RJRVUDSleep1","GLOBAL",2)
          StartCutSceneMode()
          StartCutScene("Cut34a")~ EXIT

APPEND RJRAVELJ

IF ~
  InParty("RJRavel")
  !StateCheck("RJRavel",CD_STATE_NOTVALID)
  !StateCheck(Player1,CD_STATE_NOTVALID)
  G("RJRVUDSleep1",3)~ THEN RVUDSleep2
SAY @420 = @421
IF ~InParty("RJAnnah")~ THEN REPLY @422 DO ~SetGlobal("RJRVUDSleep1","GLOBAL",4)~ GOTO RVUDSleep2.1
IF ~!InParty("RJAnnah")~ THEN REPLY @422 DO ~SetGlobal("RJRVUDSleep1","GLOBAL",4)~ GOTO RVUDSleep2.2
END

IF ~~ THEN RVUDSleep2.1
SAY @423 = @424
IF ~~ THEN REPLY @426 EXIT
END

IF ~~ THEN RVUDSleep2.2
SAY @425
IF ~~ THEN REPLY @426 EXIT
END

END
