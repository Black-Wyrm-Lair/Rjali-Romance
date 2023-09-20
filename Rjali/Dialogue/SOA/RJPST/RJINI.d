
BEGIN RJINI

// The reunion

IF ~IsGabber(Player1) G("RJiniMet",0)~ THEN BEGIN JiniReunion
SAY @0 = @1 = @2
++ @16 DO ~SetGlobal("RJiniMet","GLOBAL",1)~ + JR1.0
END

IF ~~ THEN BEGIN JR1.0
SAY @17 = @18 = @19 = @20
++ @3 + JR1.1
END

IF ~~ THEN BEGIN JR1.1
SAY @4 = @5 = @6
IF ~~ THEN DO ~SetGlobal("RJiniRomanceActive","GLOBAL",2)
               IncrementGlobal("RJCntBedded","GLOBAL",1)~ GOTO JR1.2
END

IF ~~ THEN BEGIN JR1.2
SAY @7
+ ~G("RjaliKalah",0)~ + @320 + JR1.3
+ ~!G("RjaliKalah",0)~ + @21 + JR1.3
END

IF ~~ THEN BEGIN JR1.3
SAY @24 = @25
++ @26 + JR1.4
END

IF ~~ THEN BEGIN JR1.4
SAY @27
++ @28 + JR1.5
END

IF ~~ THEN BEGIN JR1.5
SAY @55 = @56 = @57
++ @58 + JR1.6
END

IF ~~ THEN BEGIN JR1.6
SAY @59 = @53
IF ~~ THEN REPLY @54 DO ~CreateCreature("RJFAY",[796.558],12)
                         ActionOverride("RJFay",MakeGlobal())
                         AddJournalEntry(@9040,INFO)~ EXIT
END

IF ~IsGabber(Player1) G("RJiniMet",1) !G("RJFayMet",3)~ THEN BEGIN JiniFay0
SAY @39
IF ~~ THEN EXIT
END

IF ~IsGabber(Player1) G("RJiniMet",1) G("RJFayMet",3)~ THEN BEGIN JiniFay
SAY @230
++ @231 DO ~SetGlobal("RJiniMet","GLOBAL",2)~ + JFY1.1
END

IF ~~ THEN BEGIN JFY1.1
SAY @232
++ @29 + JFY1.2
END

IF ~~ THEN BEGIN JFY1.2
SAY @10
IF ~~ THEN REPLY @11 DO ~ActionOverride(Player1,MoveToObjectFollow("RJini"))
                         ActionOverride("RJFay",MoveToObjectFollow("RJini"))
                         MoveViewObject("RJAdahn",VERY_FAST)
                         MoveToPointNoInterrupt([2933.892])~ EXIT
END

IF ~IsGabber(Player1) G("RJAdahnMet",0)~ THEN BEGIN JA1
SAY @38
IF ~~ THEN REPLY @35 EXIT
END

// 1st time entering the brothal

IF ~G("RJiniBrothal1",1)~ THEN BEGIN JB1
SAY @30 = @31
++ @32 DO ~SetGlobal("RJiniBrothal1","GLOBAL",2) MoveToPoint([1279.1628])~ EXIT
++ @33 DO ~SetGlobal("RJiniBrothal1","GLOBAL",2) MoveToPoint([1279.1628])~ EXIT
END

IF ~IsGabber(Player1)
    AreaCheck("RJ0605")
    G("RJiniBrothal1",2)
    !G("RJGraceMet",2)~ THEN BEGIN JB1.1
SAY @34
IF ~~ THEN REPLY @35 EXIT
END

IF ~IsGabber(Player1)
    AreaCheck("RJ0605")
    G("RJiniBrothal1",2)
    G("RJGraceMet",2)
    !G("RJAnnahMet",2)~ THEN BEGIN JB1.2
SAY @36
IF ~~ THEN REPLY @37 EXIT
END

IF ~IsGabber(Player1)
    AreaCheck("RJ0605")
    G("RJiniBrothal1",2)
    G("RJGraceMet",2)
    G("RJAnnahMet",2)~ THEN BEGIN JB2
SAY @9
IF ~~ THEN REPLY @15 DO ~SetGlobal("RJiniBrothal1","GLOBAL",4)~ EXTERN RJINI JB2.1
END

CHAIN IF ~~ THEN RJINI JB2.1
@52 = @40
== RJPSTGR @41
== RJINI @42
== RJPSTGR @43
END
++ @44 EXTERN RJPSTGR JB2.2

CHAIN IF ~~ THEN RJPSTGR JB2.2
@45 = @46
== RJINI @47
== RJPSTGR @48
== RJINI @49 = @50
END
++ @51 EXTERN RJINI JB2.9

CHAIN IF ~~ THEN RJINI JB2.9
@13 = @22 = @14
END
++ @8 DO ~GiveItemCreate("RJPORT",Player1,0,0,0)
          RealSetGlobalTimer("RJiniiADTimer","GLOBAL",RJ_TALK)~ EXIT

// The Adahn quest

CHAIN IF ~G("RJiniiJIDAD",3) !G("RJPort",0)~ THEN PLAYER1 JAD1
@60 = @61 DO ~SetGlobal("RJiniiJIDAD","GLOBAL",4)~
== PLAYER1 IF ~InParty(Player2)~ THEN @64
== PLAYER1 IF ~InParty(Player3)~ THEN @65
== PLAYER1 IF ~InParty(Player4)~ THEN @66
== PLAYER1 IF ~InParty(Player5)~ THEN @67
== PLAYER1 IF ~InParty(Player6)~ THEN @68
== RJPSTGR @69
== PLAYER1 @62
== RJALIJ @72 = @73
== RJINI @63 = @74
== RJALIJ @75
== RJINI @76
== RJALIJ @77
== RJINI @78
== PLAYER1 @79
== RJPSTGR @70 = @71
END
IF ~~ THEN DO ~SetGlobal("RJPST01","GLOBAL",1)
               ActionOverride("RJAnnah",MoveToPointNoInterrupt([1313.1534]))~ EXIT

CHAIN IF ~G("RJPST01",2) !G("RJPort",0)~ THEN PLAYER1 JAD1.1
@80 DO ~SetGlobal("RJPST01","GLOBAL",3)~
== RJFAY @88
== RJPSTAN @81
== RJPSTGR @82
== RJPSTAN @83 = @84 = @85
== PLAYER1 @86 = @87
END
IF ~~ THEN EXIT

CHAIN IF ~G("RJiniiJIDAD",7) !G("RJPort",0)~ THEN PLAYER1 JAD2
@96 = @90 = @91 DO ~SetGlobal("RJiniiJIDAD","GLOBAL",8)~
== RJPSTGR @92
== RJINI @93
== RJALIJ @94
== PLAYER1 @95
END
IF ~~ THEN EXIT

CHAIN IF ~G("RJiniiJIDAD",14) !G("RJPort",0)~ THEN PLAYER1 JAD3
@100 = @114 DO ~SetGlobal("RJiniiJIDAD","GLOBAL",15)~
== RJPSTRV @115
== RJPSTAN @116
== RJINI @152
== RJFAY @153
== RJINI @154
== RJFAY @155
== RJPSTRV @156
== PLAYER1 @117
== RJALIJ @101
== RJINI @102
== PLAYER1 @103
== RJPSTRV @104
== RJPSTAN @105
== RJPSTGR @106
== PLAYER1 @107 = @108 = @109
== RJALIJ @110
== PLAYER1 @111
== RJALIJ @112
== RJPSTGR @113
== RJALIJ @118
== RJPSTRV @119
== RJALIJ @120 = @121
== RJPSTRV @122
== RJALIJ @123
== RJINI @124 = @125
== RJPSTGR @126
== RJALIJ @127
== RJPSTGR @128
== RJALIJ @129
== RJINI @130 = @131 DO ~
            ActionOverride("RJini",MoveBetweenAreas("RJ0602",[2868.799],14))
            ActionOverride("RJAnnah",MoveBetweenAreas("RJ0602",[3010.809],0))
            ActionOverride("RJGrace",MoveBetweenAreas("RJ0602",[2965.915],12))
            ActionOverride("RJRavel",MoveBetweenAreas("RJ0602",[3069.974],8))
            AddexperienceParty(1500)
            AddJournalEntry(@9033,INFO)~
== PLAYER1 @132
== RJALIJ @133
== PLAYER1 @134
== RJALIJ @135 = @136
== PLAYER1 @137 = @138
== RJALIJ @139 = @140 = @141 = @142 = @143
END
++ @144 EXTERN PLAYER1 JAD3.1
+ ~G("RjaliMR",1)~ + @145 DO ~SetGlobal("RJAddGR","GLOBAL",1) SetGlobal("RJAddCnt","GLOBAL",1)~ EXTERN PLAYER1 JAD3.2
+ ~G("RjaliMR",1)~ + @146 DO ~SetGlobal("RJAddRV","GLOBAL",1) SetGlobal("RJAddCnt","GLOBAL",1)~ EXTERN PLAYER1 JAD3.2
+ ~G("RjaliMR",1)~ + @147 DO ~SetGlobal("RJAddAN","GLOBAL",1) SetGlobal("RJAddCnt","GLOBAL",1)~ EXTERN PLAYER1 JAD3.2
+ ~G("RjaliMR",1)~ + @148 DO ~SetGlobal("RJAddGR","GLOBAL",1) SetGlobal("RJAddRV","GLOBAL",1) SetGlobal("RJAddCnt","GLOBAL",2)~ EXTERN PLAYER1 JAD3.2
+ ~G("RjaliMR",1)~ + @149 DO ~SetGlobal("RJAddGR","GLOBAL",1) SetGlobal("RJAddAN","GLOBAL",1) SetGlobal("RJAddCnt","GLOBAL",2)~ EXTERN PLAYER1 JAD3.2
+ ~G("RjaliMR",1)~ + @150 DO ~SetGlobal("RJAddAN","GLOBAL",1) SetGlobal("RJAddRV","GLOBAL",1) SetGlobal("RJAddCnt","GLOBAL",2)~ EXTERN PLAYER1 JAD3.2
+ ~G("RjaliMR",1)~ + @151 DO ~SetGlobal("RJAddGR","GLOBAL",1) SetGlobal("RJAddRV","GLOBAL",1) SetGlobal("RJAddAN","GLOBAL",1) SetGlobal("RJAddCnt","GLOBAL",3)~ EXTERN PLAYER1 JAD3.3

CHAIN IF ~~ THEN PLAYER1 JAD3.1
@160
== RJALIJ @161 = @162
== PLAYER1 @163
== RJALIJ @164 = @165
END
IF ~~ THEN DO ~StartCutSceneMode() StartCutScene("RJPCUTFH")~ EXIT

CHAIN IF ~~ THEN PLAYER1 JAD3.2
@170
== RJALIJ @161 = @171
== RJALIJ IF ~G("RJAddCnt",1)~ THEN @172
== PLAYER1 @173
== RJALIJ @174
== RJALIJ IF ~G("RJAddAN",1)~ THEN @175
== RJALIJ IF ~G("RJAddAN",1) InParty("E3Fade")~ THEN @181
== RJALIJ IF ~G("RJAddGR",1)~ THEN @176
== RJALIJ IF ~G("RJAddGR",1) InParty("Aerie")~ THEN @182
== RJALIJ IF ~G("RJAddGR",1)~ THEN @177
== RJALIJ IF ~G("RJAddRV",1)~ THEN @178
== PLAYER1 @179 = @190
== RJALIJ @180
END
IF ~~ THEN DO ~StartCutSceneMode() StartCutScene("RJPCUTFH")~ EXIT

CHAIN IF ~~ THEN PLAYER1 JAD3.3
@190
== RJALIJ @161 = @191 = @192
== PLAYER1 @193
END
IF ~~ THEN DO ~StartCutSceneMode() StartCutScene("RJPCUTFH")~ EXIT

// The Morte quest

CHAIN IF ~G("RJiniiJIDMR",2) !G("RJPort",0)~ THEN PLAYER1 JMR1
@240 = @241 DO ~SetGlobal("RJiniiJIDMR","GLOBAL",3)~
== RJINI @242 = @243 = @244
== PLAYER1 @245
== RJINI @246
== PLAYER1 @247
== RJANNAHJ IF ~InParty("RJAnnah")~ THEN @248
== RJGRACEJ IF ~InParty("RJGrace")~ THEN @249
== RJRAVELJ IF ~InParty("RJRavel")~ THEN @250
== PLAYER1 @251
== RJALIJ @252
== RJFAY IF ~G("RJParkFY",0)~ THEN @253
END
IF ~~ THEN DO ~SetGlobal("RJFhjullMet","GLOBAL",4)~ EXIT

CHAIN IF ~G("RJiniiJIDMR",8) !G("RJPort",0)~ THEN PLAYER1 JMR2
@260 DO ~SetGlobal("RJiniiJIDMR","GLOBAL",9)~
== RJINI @261
== RJALIJ @262
== PLAYER1 @263 = @264
== RJALIJ @265 = @266
== PLAYER1 @267 = @268 = @269 = @270 = @271 = @272 = @273
== RJRAVELJ IF ~InParty("RJRavel")~ THEN @274
== RJANNAHJ IF ~InParty("RJAnnah")~ THEN @275
== RJGRACEJ IF ~InParty("RJGrace")~ THEN @276
== PLAYER1 @277
== RJALIJ IF ~!PartyHasItem("WA2ROBE")~ THEN @278 = @279
== RJINI IF ~PartyHasItem("WA2ROBE")~ THEN @283
== PLAYER1 @280 = @281
== RJINI @284
== PLAYER1 @285 = @282
END
IF ~~ THEN DO ~AddJournalEntry(@9049,INFO)~ EXIT

CHAIN IF ~G("RJiniiJIDMR",10) !G("RJPort",0)~ THEN PLAYER1 JMR3
@290 DO ~SetGlobal("RJiniiJIDMR","GLOBAL",99) SetGlobal("RJMorteReborn","GLOBAL",5)~
== RJALIJ @291
== PLAYER1 @292
== RJPSTMR @293 = @294
== RJINI @295
== RJPSTMR @296
== RJPSTMR IF ~G("RJParkFY",0)~ THEN @304
== PLAYER1 IF ~G("RJParkFY",0)~ THEN @305
== RJFAY IF ~G("RJParkFY",0)~ THEN @306
== PLAYER1 @297
== RJPSTMR @298 = @299 DO ~ActionOverride("RJMorte",MoveBetweenAreas("RJ0605",[1089.553],4))~
== RJRAVELJ IF ~InParty("RJRavel")~ THEN @300
== PLAYER1 @301 = @302
== RJINI @303
END
IF ~~ THEN DO ~AddJournalEntry(@9037,INFO)
               AddexperienceParty(1500)~ EXIT

// The proposal

CHAIN IF ~G("RJiniiJID1",2) !G("RJPort",0)~ THEN PLAYER1 JPRO
@200 DO ~SetGlobal("RJiniiJID1","GLOBAL",3)~
== RJINI @201
== PLAYER1 @202 DO ~GiveItemCreate("RJRNGJI","RJini",0,0,0)~
== RJINI @203
== PLAYER1 @206
== RJINI @207 = @208 = @209 = @210
== PLAYER1 @212 = @213
== RJINI @214 = @215 = @216
== PLAYER1 @217
== RJINI @218 = @219
== PLAYER1 @220 DO ~AddJournalEntry(@9042,INFO)~
END
IF ~~ THEN EXIT

// The Ravel's orphans

CHAIN IF ~G("RJRavelOrphans",4) !G("RJPort",0)~ THEN PLAYER1 JRVO
@430 DO ~SetGlobal("RJRavelOrphans","GLOBAL",5)
         ActionOverride("RJini",CreateCreature("RJCHEN",[-1.-1],12))
         ActionOverride("RJCHEN",MakeGlobal())~
== RJINI @431 = @432 = @433
== PLAYER1 @434
== RJCHEN @435
== PLAYER1 @436 = @437
== RJINI @438
== PLAYER1 @442
== RJALI25J IF ~InParty("Rjali")~ THEN @439
== RJAN25J IF ~InParty("RJAnnah")~ THEN @440
== E3FAD25J IF ~InParty("E3FADE")~ THEN @444
== IMOEN25J IF ~InParty("Imoen2")~ THEN @443
== RJGR25J IF ~InParty("RJGrace")~ THEN @445
== NALIA25J IF ~InParty("Nalia")~ THEN @446
== AERIE25J IF ~InParty("Aerie")~ THEN @447
== NEERA25J IF ~InParty("Neera")~ THEN @448
== JAHEI25J IF ~InParty("Jaheira")~ THEN @460
== VICON25J IF ~InParty("Viconia")~ THEN @461
== C0SIR25J IF ~InParty("C0Sirene")~ THEN @472
== SAERI25J IF ~InParty("Saerileth")~ THEN @462
== TASHI25J IF ~InParty("Tashia")~ THEN @463
== O#BRA25J IF ~InParty("O#Bran")~ THEN @464
== LK#NI25J IF ~InParty("Ninde")~ THEN @465
== G#TRS25J IF ~InParty("G#Tyris")~ THEN @466
== YXYV25J IF ~InParty("Yxyve")~ THEN @467
== T#DAC25J IF ~InParty("T#Dace")~ THEN @468
== RH#IS25J IF ~InParty("rh#Isra2")~ THEN @469
== M#AMB25J IF ~InParty("M#AMBER")~ THEN @470
== RJFAY IF ~G("RJParkFY",0)~ THEN @471
== RJRV25J IF ~InParty("RJRavel")~ THEN @441
== PLAYER1 @449
== RJINI @450
== PLAYER1 @451 = @452 = @453
== RJINI @456
== PLAYER1 @454
== RJCHEN @455 DO ~
            ActionOverride("RJChen",MoveBetweenAreas("AR1306",[2006.858],14))~
== RJINI @473
== PLAYER1 @474
== RJINI @475 = @476 = @477 = @478
== PLAYER1 @479 = @480 = @457 = @458
== RJINI @459
END
IF ~~ THEN DO ~
    StartCutSceneMode()
    CreateCreatureOffScreen("RJPSTKA",0)
    Wait(1)
    ActionOverride("RJPSTKA",MakeGlobal())
    Wait(1)
    MoveGlobal("RJ0605","RJPSTKA",[2420.1274])
    AddJournalEntry(@9043,INFO)
    EndCutSceneMode()~ EXIT

// The Nordom quest

APPEND RJINI

IF ~IsGabber(Player1) G("RJiniiJIDND",2)~ THEN BEGIN JND1
SAY @570
++ @571 DO ~SetGlobal("RJiniiJIDND","GLOBAL",3)~ + JND1.1
END

IF ~~ THEN BEGIN JND1.1
SAY @572 = @573 = @574
++ @575 EXIT
END

IF ~IsGabber(Player1) OR(2) G("RJiniiJIDND",14) G("RJiniiJIDND",16)~ THEN BEGIN JND2
SAY @580
++ @581 DO ~SetGlobal("RJiniiJIDND","GLOBAL",99)~ + JND2.1
END

IF ~~ THEN BEGIN JND2.1
SAY @582 = @583
++ @584 DO ~AddJournalEntry(@9038,INFO)
            AddexperienceParty(1500)~ EXIT
END

// The Dakkon quest

IF ~IsGabber(Player1) G("RJiniiJIDDK",2)~ THEN BEGIN JDK0
SAY @520
++ @521 DO ~ActionOverride(Player1,SetDialog("Player1"))~ + JDK2
END

IF ~IsGabber(Player1) G("RJiniiJIDDK",3)~ THEN BEGIN JDK1
SAY @520
++ @522 DO ~ActionOverride(Player1,SetDialog("Player1"))~ + JDK2
END

IF ~~ THEN BEGIN JDK2
SAY @523
++ @524 DO ~ActionOverride(Player1,SetDialog("Player1"))~ EXTERN PLAYER1 JDK3
END

END

CHAIN IF ~~ THEN PLAYER1 JDK3
@544 DO ~SetGlobal("RJiniiJIDDK","GLOBAL",4)~
== RJINI @530
== RJRV25J IF ~InParty("RJRavel")~ THEN @531
== PLAYER1 @532
== RJALI25J @533
== RJRV25J IF ~InParty("RJRavel")~ THEN @534
== RJINI @535
== PLAYER1 @536
== RJINI @537
== RJALI25J @538
== RJAN25J IF ~InParty("RJAnnah")~ THEN @539
== RJFAY IF ~G("RJParkFY",0)~ THEN @545
== RJGR25J IF ~InParty("RJGrace")~ THEN @540
== RJRV25J IF ~InParty("RJRavel")~ THEN @541
== PLAYER1 IF ~InParty("RJRavel")~ THEN @542
END
++ @543 EXIT

APPEND RJINI

// PIDs

IF ~IsGabber(Player1) G("RJiniiJIDDK",7) G("RJJIDK7",0)~ THEN BEGIN JIDK7
SAY @550
++ @551 DO ~SetGlobal("RJJIDK7","GLOBAL",1)~ EXIT
END

IF ~IsGabber(Player1) G("RJiniiJIDDK",7) G("RJJIDK7",1) PartyHasItem("WA2DAK")~ THEN BEGIN JIDK7.1
SAY @552
++ @553 DO ~SetGlobal("RJJIDK7","GLOBAL",2)~ EXIT
END

IF ~IsGabber(Player1) G("RJiniiJIDDK",10)~ THEN BEGIN JIDK9
SAY @554
++ @555 DO ~SetGlobal("RJiniiJIDDK","GLOBAL",99)~ + JIDK9.1
END

IF ~~ THEN BEGIN JIDK9.1
SAY @556 = @557 = @558 = @559
++ @560 DO ~ActionOverride("RJPSTDK",MoveBetweenAreas("RJ0605",[1177.1523],12))~ EXIT
END

IF ~IsGabber(Player1) G("RJPort",2) G("RJRavelOrphans",4)~ THEN BEGIN JiniFlirtGroup
SAY @400 = @401
++ @23 EXIT
++ @402 EXIT
END

IF ~IsGabber(Player1) G("RJPort",1) AreaCheck("RJ0605")~ THEN BEGIN JiniFlirtBrothal
SAY @9
++ @23 EXIT
++ @403 + JFB1
END

IF ~~ THEN BEGIN JFB1
SAY @404
IF ~RandomNum(3,1)~ THEN GOTO JFB1.1
IF ~RandomNum(3,2)~ THEN GOTO JFB1.3
IF ~RandomNum(3,3)~ THEN GOTO JFB1.4
END

IF ~~ THEN BEGIN JFB1.1
SAY @405
++ @406 + JFB1.2
END

IF ~~ THEN BEGIN JFB1.2
SAY @407
++ @408 EXIT
END

IF ~~ THEN BEGIN JFB1.3
SAY @410
++ @411 EXIT
END

IF ~~ THEN BEGIN JFB1.4
SAY @413 = @414
++ @415 + JFB1.5
END

IF ~~ THEN BEGIN JFB1.5
SAY @416 = @417
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN JFB9
SAY @601 = @602 = @603
++ @604 DO ~SetGlobal("RJJIFV","GLOBAL",1)~ EXIT
END

IF ~IsGabber(Player1) G("RJPort",1) AreaCheck("RJ0602")~ THEN BEGIN JiniFlirtFesthall
SAY @9
IF ~G("RJFinalVisit",1) G("RJJIFV",0)~ THEN REPLY @600 GOTO JFB9
++ @409 + JFB1.1
++ @412 + JFB1.3
++ @418 + JFB1.4
END

IF ~IsGabber(Player1) G("RJPort",2)~ THEN BEGIN JiniFlirtGroup
SAY @500
IF ~G("RJFinalVisit",1) G("RJJIFV",0)~ THEN REPLY @600 GOTO JFG9
++ @501 + JFG1
+ ~GGT("RJiniiJIDAD",3)~ + @502 + JFG2
+ ~G("RJFayJini",1) G("RJParkFY",0)~ + @620 + JFG3
++ @503 EXIT
END

IF ~~ THEN BEGIN JFG1
SAY @504
++ @505 EXIT
END

IF ~~ THEN BEGIN JFG2
SAY @506 = @507 = @508
++ @509 EXIT
END

IF ~~ THEN BEGIN JFG9
SAY @610 = @611 = @612
++ @613 DO ~SetGlobal("RJJIFV","GLOBAL",1)~ EXIT
END

END

CHAIN IF ~~ THEN RJINI JFG3
@621
== RJFAY @622 = @623 = @624 = @625
== RJINI @626 = @627 = @628
== RJFAY @629
END
IF ~~ THEN REPLY @630 DO ~SetGlobal("RJFayJini","GLOBAL",2)~ EXIT
