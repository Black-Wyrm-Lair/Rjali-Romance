
// Here's where we prevent Crazy Celvan from running away

ALTER_TRANS CELVAN
BEGIN 1 11 20 END
BEGIN 0 END
BEGIN
  "ACTION" ~~
END

ALTER_TRANS CELVAN
BEGIN 9 END
BEGIN 0 END
BEGIN
  "ACTION" ~SetGlobal("TalkedToCelvan","LOCALS",2)~
END

// SoA Group Session

CHAIN
IF WEIGHT #-1 ~G("RjaliGroupSOA1",2) G("RJXPN",0)~ THEN PLAYER1 RjaliGroupSOA1
@528 DO ~SetGlobal("RjaliGroupSOA1","GLOBAL",3)~
END
IF ~~ THEN EXTERN RJPLAY0 RjaliGroupSOA1.0

CHAIN RJPLAY0 RjaliGroupSOA1.0                                 
@400 = @401
== RJPLAY1 @402
== RJPLAY0 @403 = @404
== RJPLAY3 IF ~GGT("RJRosCnt",3)~ THEN @405
== RJPLAY2 IF ~G("RJRosCnt",3)~ THEN @405
== RJPLAY0 @406
== IMOEN2J IF ~OR(2) InParty("Imoen2") !G("RJParkIM",0)~ THEN @407
== O#BRANJ IF ~OR(2) InParty("O#Bran") !G("RJParkBR",0)~ THEN @415
== NEERAJ IF ~OR(2) InParty("Neera") !G("RJParkNE",0)~ THEN @399
== RJFAY IF ~!G("RJFayMet",0)~ THEN @398
== RJPLAY0 @408
== RJPLAY3 IF ~G("RJRosCnt",5)~ THEN @478
== RJPLAY2 IF ~G("RJRosCnt",4)~ THEN @478
== RJPLAY1 @479
== RJPLAY4 IF ~G("RJRosCnt",5)~ THEN @414
== RJPLAY3 IF ~G("RJRosCnt",4)~ THEN @414
== RJPLAY0 @409 = @410 = @411
== RJPLAY1 @412
== RJPLAY0 @413 = @416 = @417
== RJPLAY2 @418
== RJPLAY0 @419 = @420 = @421 = @422 = @423
== NALIAJ IF ~G("RJNAIP",1)~ THEN @424
== RJALIJ IF ~!G("RJNAIP",1)~ THEN @424
== RJFAY @425
== RJPLAY2 @426
== RJPLAY0 @427
END
IF ~~ THEN EXTERN RJPLAY0 0
IF ~InParty("Rjali")~ THEN EXTERN RJALIJ RjaliGroupSOA1.RJ

REPLACE RJPLAY0

IF ~~ 0
SAY @428
IF ~~ THEN DO ~SetGlobal("RJGather","GLOBAL",0)~ GOTO 1
IF ~G("RJFayBig",1) G("RJSOA1FY",0)~ THEN DO ~SetGlobal("RJSOA1FY","GLOBAL",1)~ EXTERN RJFAY RjaliGroupSOA1.FY
IF ~InParty("Viconia") G("RJSOA1VI",0)~ THEN DO ~SetGlobal("RJSOA1VI","GLOBAL",1)~ EXTERN VICONIJ RjaliGroupSOA1.VI
IF ~InParty("Jaheira") G("RJSOA1JA",0)~ THEN DO ~SetGlobal("RJSOA1JA","GLOBAL",1)~ EXTERN JAHEIRAJ RjaliGroupSOA1.JA
IF ~InParty("Aerie") G("RJSOA1AE",0)~ THEN DO ~SetGlobal("RJSOA1AE","GLOBAL",1)~ EXTERN AERIEJ RjaliGroupSOA1.AE
IF ~G("RJParkFY",2)~ THEN DO ~SetGlobal("RJParkFY","GLOBAL",1)
                              SetGlobal("RJSOA1FY","GLOBAL",1)~ EXTERN RJFAY RjaliGroupSOA1.FY
IF ~G("RJParkVI",2)~ THEN DO ~SetGlobal("RJParkVI","GLOBAL",1)~ EXTERN VICONIJ RjaliGroupSOA1.VI
IF ~G("RJParkJA",2)~ THEN DO ~SetGlobal("RJParkJA","GLOBAL",1)~ EXTERN JAHEIRAJ RjaliGroupSOA1.JA
IF ~G("RJParkAE",2)~ THEN DO ~SetGlobal("RJParkAE","GLOBAL",1)~ EXTERN AERIEJ RjaliGroupSOA1.AE
END

IF ~~ 1
SAY @429
IF ~~ THEN EXTERN RJPLAY0 RjaliGroupSOA1.EX
END

END

CHAIN RJPLAY0 RjaliGroupSOA1.EX
@430
== IMOEN2J IF ~G("RJParkIM",1)~ THEN @586 DO ~ActionOverride("Imoen2",SetDialog("Imoen2P")) MoveGlobal("AR1306","Imoen2",[771.823])~
== RJFAY IF ~G("RJParkFY",1)~ THEN @569 DO ~MoveGlobal("AR1307","RJFay",[937.1339])~
== VICONIJ IF ~G("RJParkVI",1)~ THEN @587 DO ~ActionOverride("Viconia",SetDialog("ViconiP")) MoveGlobal("AR1306","Viconia",[880.259])~
== O#BRANJ IF ~G("RJParkBR",1)~ THEN @595 DO ~ActionOverride("O#Bran",SetDialog("O#BranP")) ActionOverride("O#Bran",MoveBetweenAreas("AR1307",[629.440],0)~
== JAHEIRAJ IF ~G("RJParkJA",1)~ THEN @588 DO ~ActionOverride("Jaheira",SetDialog("JaheiraP")) MoveGlobal("AR1306","Jaheira",[694.1775])~
== AERIEJ IF ~G("RJParkAE",1)~ THEN @589 DO ~ActionOverride("Aerie",SetDialog("AerieP")) MoveGlobal("AR1306","Aerie",[1732.542])~
== NALIAJ IF ~G("RJParkNA",1)~ THEN @591 DO ~ActionOverride("Nalia",SetDialog("NaliaP")) MoveGlobal("AR1306","Nalia",[1276.798])~
== NEERAJ IF ~G("RJParkNE",1)~ THEN @590 DO ~ActionOverride("Neera",SetDialog("NeeraP")) MoveGlobal("AR1306","Neera",[526.448])~
== RJANNAHJ IF ~G("RJParkAN",1)~ THEN @592 DO ~ActionOverride("RJAnnah",SetDialog("RJAnnahP")) ActionOverride("RJAnnah",MoveBetweenAreas("AR1307",[2003.1172],0)~
== RJGRACEJ IF ~G("RJParkGR",1)~ THEN @593 DO ~ActionOverride("RJGrace",SetDialog("RJGraceP")) ActionOverride("RJGrace",MoveBetweenAreas("AR1307",[1458.1584],0)~
== RJRAVELJ IF ~G("RJParkRV",1)~ THEN @594 DO ~ActionOverride("RJRavel",SetDialog("RJRavelP")) ActionOverride("RJRavel",MoveBetweenAreas("AR1307",[1227.578],0)~
== RJKESAIJ IF ~G("RJParkKE",1)~ THEN @594 DO ~ActionOverride("RJKesai",SetDialog("RJKesaiP")) ActionOverride("RJKesai",MoveBetweenAreas("AR1307",[1457.631],0)~
== 1XSKIEJ IF ~G("RJParkSK",1)~ THEN @595 DO ~ActionOverride("SkieDV",SetDialog("1XSKIEP")) ActionOverride("SkieDV",MoveBetweenAreas("AR1307",[305.919],12)~
== L3PETSYJ IF ~G("RJParkPE",1)~ THEN @595 DO ~ActionOverride("L3Petsy",SetDialog("L3PETSYP")) ActionOverride("L3Petsy",MoveBetweenAreas("AR1307",[566.1059],0)~
== M#AMBERJ IF ~G("RJParkAM",1)~ THEN @595 DO ~ActionOverride("M#AMBER",SetDialog("M#AMBERP")) ActionOverride("M#AMBER",MoveBetweenAreas("AR1305",[1063.365],6)~
== SHEENAJ IF ~G("RJParkSH",1)~ THEN @595 DO ~ActionOverride("K#Sheena",SetDialog("SHEENAP")) ActionOverride("K#Sheena",MoveBetweenAreas("AR1304",[1160.1622],8)~
== T#DACEJ IF ~G("RJParkDA",1)~ THEN @595 DO ~ActionOverride("T#Dace",SetDialog("T#DACEP")) ActionOverride("T#Dace",MoveBetweenAreas("AR1304",[744.3294],0)~
== E3FADEJ IF ~G("RJParkFA",1)~ THEN @595 DO ~ActionOverride("E3Fade",SetDialog("E3FADEP")) ActionOverride("E3Fade",MoveBetweenAreas("AR1305",[2543.418],0)~
== RH#ISRJ IF ~G("RJParkIS",1)~ THEN @595 DO ~ActionOverride("rh#Isra2",SetDialog("RH#ISRP")) ActionOverride("rh#Isra2",MoveBetweenAreas("AR1304",[1286.2889],0)~
== TASHIAJ IF ~G("RJParkTA",1)~ THEN @595 DO ~ActionOverride("Tashia",SetDialog("TASHIAP")) ActionOverride("Tashia",MoveBetweenAreas("AR1307",[1784.814],12)~
== C0SIRE2J IF ~G("RJParkSI",1)~ THEN @595 DO ~ActionOverride("C0Sirene",SetDialog("C0SIRE2P")) ActionOverride("C0Sirene",MoveBetweenAreas("AR1307",[1626.1460],8)~
== G#TYRISJ IF ~G("RJParkTY",1)~ THEN @595 DO ~ActionOverride("G#Tyris",SetDialog("G#TYRISP")) ActionOverride("G#Tyris",MoveBetweenAreas("AR1306",[922.1410],8)~
END
IF ~~ THEN EXTERN RJPLAY0 RjaliGroupSOA1.9

CHAIN RJALIJ RjaliGroupSOA1.RJ
@1270 = @1271 DO ~IncrementGlobal("RJGather","GLOBAL",-1)~
== IMOEN2J IF ~InMyArea("Imoen2")~ @1272
== RJALIJ IF ~InMyArea("Imoen2")~ @1273
== RJALIJ @1274
== JAHEIRAJ IF ~InMyArea("Jaheira") G("RJJaheiraCH4",0)~ @1275
== AERIEJ IF ~InMyArea("Aerie") G("RJAerieCH4",0)~ @1276
== RJALIJ @1277
END
IF ~~ THEN EXTERN RJPLAY0 0

CHAIN VICONIJ RjaliGroupSOA1.VI
@446 = @447 DO ~IncrementGlobal("RJGather","GLOBAL",-1)~
== AERIEJ IF ~InMyArea("Aerie")~ THEN @448
== SAERILEJ IF ~InMyArea("Aerie") InParty("Saerileth")~ THEN @449
== SAERILEJ IF ~InParty("Saerileth")~ THEN @450
== RJPLAY3 IF ~G("RJRosCnt",5)~ THEN @451
== RJPLAY1 IF ~G("RJRosCnt",4)~ THEN @451
== RJPLAY0 IF ~G("RJRosCnt",3)~ THEN @451
== VICONIJ @452 = @453 = @454 = @455
== VICONIJ IF ~InMyArea("Aerie")~ THEN @456 = @457
== AERIEJ IF ~InMyArea("Aerie")~ THEN @458
== VICONIJ IF ~InMyArea("Imoen2")~ THEN @459 = @457
== IMOEN2J IF ~InMyArea("Imoen2")~ THEN @460
== VICONIJ IF ~InMyArea("Neera")~ THEN @461 = @457
== NEERAJ IF ~InMyArea("Neera")~ THEN @462 = @463
== VICONIJ IF ~G("RJNAIP",1)~ THEN @464 = @457
== NALIAJ IF ~G("RJNAIP",1)~ THEN @465
== VICONIJ IF ~InMyArea("Jaheira")~ THEN @466 = @457
== JAHEIRAJ IF ~InMyArea("Jaheira")~ THEN @467
== VICONIJ IF ~InParty("Saerileth")~ THEN @468 = @469 = @457
== SAERILEJ IF ~InParty("Saerileth")~ THEN @470
== VICONIJ IF ~InMyArea("O#Bran")~ THEN @471 = @457
== O#BRANJ IF ~InMyArea("O#Bran")~ THEN @472
== VICONIJ IF ~InParty("Tashia")~ THEN @576 = @457
== TASHIAJ IF ~InParty("Tashia")~ THEN @577
== VICONIJ IF ~InParty("Ninde")~ THEN @578 = @457
== LK#NINDJ IF ~InParty("Ninde")~ THEN @579
== VICONIJ IF ~InParty("G#Tyris")~ THEN @574 = @457
== G#TYRISJ IF ~InParty("G#Tyris")~ THEN @575
== VICONIJ IF ~InParty("E3Fade")~ THEN @572 = @457
== E3FADEJ IF ~InParty("E3Fade")~ THEN @573
== RJANNAHJ IF ~InMyArea("RJAnnah") InParty("E3Fade")~ THEN @680
== VICONIJ IF ~InMyArea("RJAnnah") InParty("E3Fade")~ THEN @681
== VICONIJ IF ~InMyArea("RJAnnah") !InParty("E3Fade")~ THEN @682 = @457
== RJANNAHJ IF ~InMyArea("RJAnnah") !InParty("E3Fade")~ THEN @683
== RJGRACEJ IF ~InMyArea("RJGrace")~ THEN @684
== VICONIJ IF ~InMyArea("RJGrace")~ THEN @685
== RJRAVELJ IF ~InMyArea("RJRavel")~ THEN @686
== VICONIJ IF ~InMyArea("RJRavel")~ THEN @687
== VICONIJ IF ~InMyArea("RJKesai")~ THEN @688
== RJKESAIJ IF ~InMyArea("RJRavel") InMyArea("RJKesai")~ THEN @689
== RJRAVELJ IF ~InMyArea("RJRavel") InMyArea("RJKesai")~ THEN @692
== RJKESAIJ IF ~!InMyArea("RJRavel") InMyArea("RJKesai")~ THEN @690
== VICONIJ IF ~InMyArea("RJKesai")~ THEN @691
== VICONIJ IF ~InParty("Yxyve")~ THEN @570 = @457
== YXYVEJ IF ~InParty("Yxyve")~ THEN @571
== VICONIJ IF ~InParty("T#Dace")~ THEN @582 = @457
== T#DACEJ IF ~InParty("T#Dace")~ THEN @583
== VICONIJ IF ~InParty("M#AMBER")~ THEN @584 = @457
== M#AMBERJ IF ~InParty("M#AMBER")~ THEN @585
== VICONIJ IF ~InParty("L3Petsy")~ THEN @596 = @457
== L3PETSYJ IF ~InParty("L3Petsy")~ THEN @597
== VICONIJ IF ~InParty("SkieDV")~ THEN @598 = @457
== 1XSKIEJ IF ~InParty("SkieDV")~ THEN @599
== VICONIJ IF ~InParty("rh#Isra2")~ THEN @580
== RH#ISRJ IF ~InParty("rh#Isra2")~ THEN @581
== VICONIJ IF ~InParty("C0Sirene")~ THEN @548
== C0SIRE2J IF ~InParty("C0Sirene")~ THEN @549
== VICONIJ IF ~InParty("Rjali")~ THEN @473 = @457
== RJALIJ IF ~InParty("Rjali")~ THEN @474 = @475
== VICONIJ IF ~InParty("Rjali")~ THEN @476
== VICONIJ IF ~!G("RJFayBig",0)~ THEN @563
== RJFAY IF ~!G("RJFayBig",0)~ THEN @564
== VICONIJ IF ~!G("RJFayBig",0)~ THEN @565
== RJFAY IF ~!G("RJFayBig",0)~ THEN @566 = @567
== VICONIJ IF ~!G("RJFayBig",0)~ THEN @568
== VICONIJ @477
END
IF ~~ THEN EXTERN RJPLAY0 0

CHAIN JAHEIRAJ RjaliGroupSOA1.JA
@530 = @531 = @532 = @533 = @534 = @535 = @536 = @537 DO ~IncrementGlobal("RJGather","GLOBAL",-1)~
== VICONIJ IF ~InMyArea("Viconia")~ THEN @538
END
IF ~~ THEN EXTERN RJPLAY0 0

CHAIN RJFAY RjaliGroupSOA1.FY
@150 = @151 = @152 DO ~IncrementGlobal("RJGather","GLOBAL",-1)~
== RJFAY IF ~!G("RJParkFY",0)~ @153
== RJFAY IF ~G("RJParkFY",0)~ @154
== RJFAY @155 = @156
== RJPLAY0 @157 = @158
== RJFAY @159
END
IF ~~ THEN EXTERN RJPLAY0 0

CHAIN AERIEJ RjaliGroupSOA1.AE
@540 = @541 = @542 = @543 DO ~IncrementGlobal("RJGather","GLOBAL",-1)~
== RJPLAY1 @544 = @545
END
IF ~~ THEN EXTERN RJPLAY0 0

CHAIN RJPLAY0 RjaliGroupSOA1.9
@431
END
++ @529 DO ~AddJournalEntry(@9017,INFO)
            ActionOverride("RJPLAY0",DestroySelf())
            ActionOverride("RJPLAY1",DestroySelf())
            ActionOverride("RJPLAY2",DestroySelf())
            ActionOverride("RJPLAY3",DestroySelf())
            ActionOverride("RJPLAY4",DestroySelf())
            SetGlobal("RJRoster","GLOBAL",1)
            StartCutSceneMode()
            StartCutScene("Cut34a")~ EXIT

// Ravel/Kesai menage-a-trois

CHAIN
IF WEIGHT #-2 ~G("RJRVKEMAT",1)~ THEN PLAYER1 RjaliRVKEMAT
@1880 DO ~SetGlobal("RJRVKEMAT","GLOBAL",2)~
== PLAYER1 @1881 = @1882
== RJRAVELJ IF ~InParty("RJRavel")~ THEN @1883
== RJRAVELP IF ~G("RJParkRV",1)~ THEN @1883
== RJKESAIJ IF ~InParty("RJKesai")~ THEN @1884
== RJKESAIP IF ~G("RJParkKE",1)~ THEN @1884
== RJRAVELJ IF ~InParty("RJRavel")~ THEN @1885
== RJRAVELP IF ~G("RJParkRV",1)~ THEN @1885 = @1886
== PLAYER1 @1887 = @1888
== RJRAVELJ IF ~InParty("RJRavel")~ THEN @1889
== RJRAVELP IF ~G("RJParkRV",1)~ THEN @1889
== RJKESAIJ IF ~InParty("RJKesai")~ THEN @1890 = @1891
== RJKESAIP IF ~G("RJParkKE",1)~ THEN @1890 = @1891
== PLAYER1 @1892 = @1893 = @1894
EXIT

// Scouts

CHAIN
IF WEIGHT #-2 ~G("RjaliAerieScout",1)~ THEN PLAYER1 RjaliAerieScout
@49
== RJALIJ @0
== AERIEJ @201
== RJALIJ @202
== AERIEJ @203
== RJALIJ @204
== AERIEJ @205
== RJALIJ @206
== AERIEJ @207
== RJALIJ @208
== AERIEJ @209
== RJALIJ @210
== AERIEJ @211
== RJALIJ @212
== AERIEJ @213
== RJALIJ @214 = @215
== PLAYER1 @216
== RJALIJ @217
== PLAYER1 @218
== RJALIJ @219
== PLAYER1 @220 DO ~AddJournalEntry(@9008,INFO) SetGlobal("RjaliAerieScout","GLOBAL",2) SetGlobal("RjaliScouts","GLOBAL",1)~
EXIT

CHAIN
IF WEIGHT #-3 ~G("RjaliViconiaScout",1)~ THEN PLAYER1 RjaliViconiaScout
@49
== RJALIJ @0
== VICONIJ @230
== RJALIJ @231
== VICONIJ @232
== RJALIJ @233
== VICONIJ @234
== RJALIJ @235
== VICONIJ @236
== RJALIJ @237
== VICONIJ @238
== RJALIJ @239
== VICONIJ @240 = @241 = @242
== RJALIJ @243
== PLAYER1 @244
== RJALIJ @246
== PLAYER1 @247
== RJALIJ @248 = @249
== VICONIJ @250 = @251 DO ~AddJournalEntry(@9013,INFO) SetGlobal("RjaliViconiaScout","GLOBAL",2) SetGlobal("RjaliScouts","GLOBAL",1)~
EXIT

CHAIN
IF WEIGHT #-4 ~G("RjaliJaheiraScout",1)~ THEN PLAYER1 RjaliJaheiraScout
@49
== RJALIJ @0
== JAHEIRAJ @260
== RJALIJ @261
== JAHEIRAJ @262 = @263
== RJALIJ @264
== JAHEIRAJ @265 = @266 = @267
== RJALIJ @268
== JAHEIRAJ @269 = @270
== RJALIJ @271
== JAHEIRAJ @272
== RJALIJ @273 = @274 = @275 = @276
== PLAYER1 @277
== RJALIJ @278 DO ~AddJournalEntry(@9012,INFO) SetGlobal("RjaliJaheiraScout","GLOBAL",2) SetGlobal("RjaliScouts","GLOBAL",1)~
EXIT

// POKES

CHAIN
IF ~G("RjaliPokes",1)~ THEN RJALIJ poke1
@830
== RJALIJ IF ~G("RJCntLoved",0)~ THEN @831
== RJALIJ IF ~G("RJCntLoved",1)~ THEN @832
== RJALIJ IF ~G("RJCntLoved",2)~ THEN @833
== RJALIJ IF ~G("RJCntLoved",3) G("RjaliDiamond",0)~ THEN @834
== RJALIJ IF ~GGT("RJCntLoved",2) !G("RjaliDiamond",0)~ THEN @882
== RJALIJ IF ~G("RjaliJaheiraSpice",1)~ THEN @835
== JAHEIRAJ IF ~G("RjaliJaheiraSpice",1)~ THEN @836 DO ~SetGlobal("RjaliJaheiraSpice","GLOBAL",2) IncrementGlobal("RJCntBedded","GLOBAL",1)~
== RJALIJ IF ~G("RjaliViconiaSpice",1)~ THEN @837
== VICONIJ IF ~G("RjaliViconiaSpice",1)~ THEN @838 DO ~SetGlobal("RjaliViconiaSpice","GLOBAL",2) IncrementGlobal("RJCntBedded","GLOBAL",1)~
== RJALIJ IF ~G("RjaliBranwenSpice",1)~ THEN @839
== RJALIJ IF ~G("RjaliBranwenSpice",1)~ THEN @840 DO ~SetGlobal("RjaliBranwenSpice","GLOBAL",2) IncrementGlobal("RJCntBedded","GLOBAL",1)~
== RJALIJ IF ~G("RjaliNeeraSpice",1)~ THEN @841
== NEERAJ IF ~G("RjaliNeeraSpice",1)~ THEN @842 DO ~SetGlobal("RjaliNeeraSpice","GLOBAL",2) IncrementGlobal("RJCntBedded","GLOBAL",1)~
== RJALIJ IF ~G("RjaliAerieSpice",1)~ THEN @843
== AERIEJ IF ~G("RjaliAerieSpice",1)~ THEN @844 DO ~SetGlobal("RjaliAerieSpice","GLOBAL",2)~
== RJALIJ IF ~G("RjaliImoenSpice",1)~ THEN @845
== IMOEN2J IF ~G("RjaliImoenSpice",1)~ THEN @846 DO ~SetGlobal("RjaliImoenSpice","GLOBAL",2) IncrementGlobal("RJCntBedded","GLOBAL",1)~
== RJALIJ IF ~G("RjaliSaerilethSpice",1)~ THEN @847
== RJALIJ IF ~G("RjaliSaerilethSpice",1)~ THEN @848 DO ~SetGlobal("RjaliSaerilethSpice","GLOBAL",2)~
== RJALIJ IF ~G("RjaliNaliaSpice",1)~ THEN @864
== NALIAJ IF ~G("RjaliNaliaSpice",1)~ THEN @865 DO ~SetGlobal("RjaliNaliaSpice","GLOBAL",2) IncrementGlobal("RJCntBedded","GLOBAL",1)~
== RJALIJ IF ~G("RjaliFadeSpice",1)~ THEN @872
== E3FADEJ IF ~G("RjaliFadeSpice",1)~ THEN @873 DO ~SetGlobal("RjaliFadeSpice","GLOBAL",2) IncrementGlobal("RJCntBedded","GLOBAL",1)~
== RJALIJ IF ~G("RjaliTashiaSpice",1)~ THEN @866
== TASHIAJ IF ~G("RjaliTashiaSpice",1)~ THEN @867 DO ~SetGlobal("RjaliTashiaSpice","GLOBAL",2) IncrementGlobal("RJCntBedded","GLOBAL",1)~
== RJALIJ IF ~G("RjaliNindeSpice",1)~ THEN @868
== LK#NINDJ IF ~G("RjaliNindeSpice",1)~ THEN @869 DO ~SetGlobal("RjaliNindeSpice","GLOBAL",2) IncrementGlobal("RJCntBedded","GLOBAL",1)~
== RJALIJ IF ~G("RjaliTyrisSpice",1)~ THEN @871 DO ~SetGlobal("RjaliTyrisSpice","GLOBAL",2) IncrementGlobal("RJCntBedded","GLOBAL",1)~
== RJALIJ IF ~G("RjaliYvetteSpice",1)~ THEN @870 DO ~SetGlobal("RjaliYvetteSpice","GLOBAL",2) IncrementGlobal("RJCntBedded","GLOBAL",1)~
== RJALIJ IF ~G("RjaliDaceSpice",1)~ THEN @874 DO ~SetGlobal("RjaliDaceSpice","GLOBAL",2) IncrementGlobal("RJCntBedded","GLOBAL",1)~
== RJALIJ IF ~G("RjaliIsraSpice",1)~ THEN @875 DO ~SetGlobal("RjaliIsraSpice","GLOBAL",2) IncrementGlobal("RJCntBedded","GLOBAL",1)~
== RJALIJ IF ~G("RjaliAmberSpice",1)~ THEN @876 DO ~SetGlobal("RjaliAmberSpice","GLOBAL",2) IncrementGlobal("RJCntBedded","GLOBAL",1)~
== RJALIJ IF ~G("RjaliSkieSpice",1)~ THEN @886 DO ~SetGlobal("RjaliSkieSpice","GLOBAL",2) IncrementGlobal("RJCntBedded","GLOBAL",1)~
== RJALIJ IF ~G("RjaliPetsySpice",1)~ THEN @887 DO ~SetGlobal("RjaliPetsySpice","GLOBAL",2) IncrementGlobal("RJCntBedded","GLOBAL",1)~
== RJALIJ IF ~G("RjaliSireneSpice",1)~ THEN @894 DO ~SetGlobal("RjaliSireneSpice","GLOBAL",2) IncrementGlobal("RJCntBedded","GLOBAL",1)~
== RJALIJ IF ~G("RjaliSheenaSpice",1)~ THEN @895
== SHEENAJ IF ~G("RjaliSheenaSpice",1)~ THEN @896 DO ~SetGlobal("RjaliSheenaSpice","GLOBAL",2) IncrementGlobal("RJCntBedded","GLOBAL",1)~
== RJALIJ IF ~G("RjaliAnnahSpice",1)~ THEN @879 DO ~SetGlobal("RjaliAnnahSpice","GLOBAL",2)~
== RJALIJ IF ~G("RjaliGraceSpice",1)~ THEN @880 DO ~SetGlobal("RjaliGraceSpice","GLOBAL",2)~
== RJALIJ IF ~G("RjaliRavelSpice",1)~ THEN @881 DO ~SetGlobal("RjaliRavelSpice","GLOBAL",2)~
== RJALIJ IF ~G("RjaliKesaiSpice",1) !G("RJAddRV",0)~ THEN @897 = @899 DO ~SetGlobal("RjaliKesaiSpice","GLOBAL",2)~
== RJALIJ IF ~G("RjaliKesaiSpice",1) G("RJAddRV",0)~ THEN @898 = @899 DO ~SetGlobal("RjaliKesaiSpice","GLOBAL",2)~
== RJALIJ IF ~G("RjaliJiniSpice",1)~ THEN @883 = @884 = @885 DO ~SetGlobal("RjaliJiniSpice","GLOBAL",2) IncrementGlobal("RJCntLoved","GLOBAL",-1)~
== RJALIJ IF ~G("RjaliFaySpice",1)~ THEN @888
== RJFAY IF ~G("RjaliFaySpice",1)~ THEN @889
== RJALIJ IF ~G("RjaliFaySpice",1)~ THEN @890
== RJFAY IF ~G("RjaliFaySpice",1)~ THEN @891 DO ~SetGlobal("RjaliFaySpice","GLOBAL",2) IncrementGlobal("RJCntLoved","GLOBAL",-1)~
== RJALIJ IF ~G("RJCntLoved",-1)~ THEN @892
== RJALIJ IF ~G("RJCntLoved",0)~ THEN @849
== RJALIJ IF ~G("RJCntLoved",1)~ THEN @850
== RJALIJ IF ~G("RJCntLoved",2)~ THEN @851
== RJALIJ IF ~GGT("RJCntLoved",2) G("RjaliMarried",1) G("RjaliDiamond",0)~ THEN @852
== RJALIJ IF ~GGT("RJCntLoved",2) OR(2) G("RjaliMarried",0) !G("RjaliDiamond",0)~ THEN @877
END
+ ~G("RJCntLoved",-1)~ + @893 DO ~SetGlobal("RjaliPokes","GLOBAL",0) IncrementGlobal("RJCntLoved","GLOBAL",1)~ EXIT
+ ~G("RJCntLoved",0)~ + @853 DO ~SetGlobal("RjaliPokes","GLOBAL",0) IncrementGlobal("RJCntLoved","GLOBAL",1)~ EXIT
+ ~G("RJCntLoved",1)~ + @854 DO ~SetGlobal("RjaliPokes","GLOBAL",0) IncrementGlobal("RJCntLoved","GLOBAL",1)~ EXIT
+ ~G("RJCntLoved",2)~ + @855 DO ~SetGlobal("RjaliPokes","GLOBAL",0) IncrementGlobal("RJCntLoved","GLOBAL",1)~ EXIT
+ ~GGT("RJCntLoved",2) G("RjaliMarried",1) G("RjaliDiamond",0)~ + @856 DO ~IncrementGlobal("RJCntLoved","GLOBAL",1) GiveItemCreate("RJDIA","Rjali",0,0,0)~ GOTO poke5
+ ~GGT("RJCntLoved",2) OR(2) G("RjaliMarried",0) !G("RjaliDiamond",0)~ + @878 DO ~SetGlobal("RjaliPokes","GLOBAL",0) IncrementGlobal("RJCntLoved","GLOBAL",1)~ EXIT

APPEND RJALIJ

IF ~~ poke5
SAY @857 = @858 = @859 = @860
++ @861 + poke5.1
END

IF ~~ poke5.1
SAY @862
++ @863 DO ~StartCutSceneMode()
            SetGlobal("RjaliDiamond","Global",2)
            SetGlobal("RjaliPokes","GLOBAL",0)
            EndCutSceneMode()~ EXIT
END

END

// Dump a woman

CHAIN
IF ~G("RjaliDump",1) GLT("Chapter",%bg2_chapter_8%)~ THEN PLAYER1 RJDumpSoA
@905 DO ~SetGlobal("RjaliDump","GLOBAL",0)~
== RJALIJ @900
BRANCH ~G("RJCntLoved",4)~ BEGIN
== RJALIJ @901
== PLAYER1 @906
END
BRANCH ~G("RJCntLoved",3)~ BEGIN
== RJALIJ @902
== PLAYER1 @907
END
BRANCH ~G("RJCntLoved",2)~ BEGIN
== RJALIJ @903
== PLAYER1 @908
END
BRANCH ~G("RJCntLoved",1)~ BEGIN
== RJALIJ @904
== PLAYER1 @909
END
== RJALIJ @910 DO ~IncrementGlobal("RJCntLoved","GLOBAL",-1)
                   IncrementGlobal("RJCntDumped","GLOBAL",1)~
== PLAYER1 @911
EXIT

// UnDump a woman

CHAIN
IF ~G("RjaliUnDump",1) GLT("Chapter",%bg2_chapter_8%)~ THEN PLAYER1 RJUnDumpSoA
@905 DO ~SetGlobal("RjaliUnDump","GLOBAL",0)
         IncrementGlobal("RJCntLoved","GLOBAL",1)
         IncrementGlobal("RJCntDumped","GLOBAL",-1)~
== RJALIJ @916 = @917
== PLAYER1 @918 = @911
EXIT

// Dump a man

CHAIN
IF ~G("RjaliDumpMan",1) GLT("Chapter",%bg2_chapter_8%)~ THEN PLAYER1 RJDumpManSoA
@905 DO ~SetGlobal("RjaliDumpMan","GLOBAL",0)~
== RJALIJ @912 = @913
== PLAYER1 @914
== RJALIJ @915
EXIT

// Select woman for Bodhi to vampirize

ALTER_TRANS BODHIAMB
BEGIN 0 END
BEGIN 0 END
BEGIN
  "ACTION" ~ActionOverride(Player1,SetDialog("PLAYER1"))~
  "EPILOGUE" ~GOTO RJBodhiVampire~
END

APPEND BODHIAMB

IF ~~ RJBodhiVampire
SAY @913
IF ~~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ EXTERN PLAYER1 RJSelectVampire
END

END

APPEND PLAYER1

IF ~~ RJSelectVampire
  SAY @1900
  IF ~InParty("Aerie") G("AerieRomanceActive",2)~ THEN REPLY @1901 DO ~SetGlobal("AerieRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~InParty("Jaheira") G("JaheiraRomanceActive",2)~ THEN REPLY @1902 DO ~SetGlobal("JaheiraRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~InParty("Viconia") G("ViconiaRomanceActive",2)~ THEN REPLY @1903 DO ~SetGlobal("ViconiaRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~InParty("Neera") G("NeeraRomanceActive",2)~ THEN REPLY @1904 DO ~SetGlobal("NeeraRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~InParty("C0Sirene") G("C0SireneRomanceActive",2)~ THEN REPLY @1905 DO ~SetGlobal("C0SireneRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~InParty("O#Bran") G("O#BranRomanceActive",2)~ THEN REPLY @1906 DO ~SetGlobal("O#BranRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~InParty("Tashia") G("TashiaRomanceActive",2)~ THEN REPLY @1907 DO ~SetGlobal("TashiaRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~InParty("Nalia") G("NaliaRomanceActive",2)~ THEN REPLY @1908 DO ~SetGlobal("NaliaRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~InParty("G#Tyris") G("G#TF.TyrisRomanceActive",2)~ THEN REPLY @1909 DO ~SetGlobal("G#TF.TyrisRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~InParty("Ninde") G("LK#NindeRomanceActive",2)~ THEN REPLY @1910 DO ~SetGlobal("LK#NindeRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~InParty("T#Dace") G("T#DaceRomanceActive",2)~ THEN REPLY @1911 DO ~SetGlobal("T#DaceRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~InParty("rh#Isra2") G("rh#IsraRomanceActive",2)~ THEN REPLY @1912 DO ~SetGlobal("rh#IsraRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~InParty("M#AMBER") G("M#AmberRomanceActive",2)~ THEN REPLY @1913 DO ~SetGlobal("M#AmberRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~InParty("E3Fade") G("E3FadeRomanceActive",2)~ THEN REPLY @1914 DO ~SetGlobal("E3FadeRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~InParty("Saerileth") G("SaerilethRomanceActive",2)~ THEN REPLY @1915 DO ~SetGlobal("SaerilethRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~RandomNum(3,1) G("RJROM2",2)~ THEN REPLY @1918 GOTO RJSelectVampire2
  IF ~RandomNum(3,1) !G("RJROM2",2)~ THEN REPLY @1918 EXTERN BODHIAMB 1
  IF ~RandomNum(3,2) G("RJROM3",2)~ THEN REPLY @1918 GOTO RJSelectVampire3
  IF ~RandomNum(3,2) !G("RJROM3",2)~ THEN REPLY @1918 EXTERN BODHIAMB 1
  IF ~RandomNum(3,3) G("RJROM4",2)~ THEN REPLY @1918 GOTO RJSelectVampire4
  IF ~RandomNum(3,3) !G("RJROM4",2)~ THEN REPLY @1918 EXTERN BODHIAMB 1
  IF ~~ THEN REPLY @1916 EXTERN BODHIAMB 1
END

IF ~~ RJSelectVampire2
  SAY @1917
  IF ~~ THEN EXTERN BODHIAMB 1
  IF ~G("RJPLAY2",2)~ THEN DO ~SetGlobal("AerieRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~G("RJPLAY2",107)~ THEN DO ~SetGlobal("NeeraRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~G("RJPLAY2",206)~ THEN DO ~SetGlobal("NaliaRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~G("RJPLAY2",208)~ THEN DO ~SetGlobal("JaheiraRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~G("RJPLAY2",313)~ THEN DO ~SetGlobal("ViconiaRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~G("RJPLAY2",109)~ THEN DO ~SetGlobal("O#BranRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~G("RJPLAY2",205)~ THEN DO ~SetGlobal("TashiaRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~G("RJPLAY2",110)~ THEN DO ~SetGlobal("G#TF.TyrisRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~G("RJPLAY2",311)~ THEN DO ~SetGlobal("LK#NindeRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~G("RJPLAY2",115)~ THEN DO ~SetGlobal("T#DaceRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~G("RJPLAY2",116)~ THEN DO ~SetGlobal("rh#IsraRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~G("RJPLAY2",317)~ THEN DO ~SetGlobal("M#AmberRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~G("RJPLAY2",204)~ THEN DO ~SetGlobal("SaerilethRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~G("RJPLAY2",323)~ THEN DO ~SetGlobal("C0SireneRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~G("RJPLAY2",312)~ THEN DO ~SetGlobal("E3FadeRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
END

IF ~~ RJSelectVampire3
  SAY @1917
  IF ~~ THEN EXTERN BODHIAMB 1
  IF ~G("RJPLAY3",107)~ THEN DO ~SetGlobal("NeeraRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~G("RJPLAY3",206)~ THEN DO ~SetGlobal("NaliaRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~G("RJPLAY3",208)~ THEN DO ~SetGlobal("JaheiraRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~G("RJPLAY3",313)~ THEN DO ~SetGlobal("ViconiaRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~G("RJPLAY3",109)~ THEN DO ~SetGlobal("O#BranRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~G("RJPLAY3",205)~ THEN DO ~SetGlobal("TashiaRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~G("RJPLAY3",110)~ THEN DO ~SetGlobal("G#TF.TyrisRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~G("RJPLAY3",311)~ THEN DO ~SetGlobal("LK#NindeRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~G("RJPLAY3",115)~ THEN DO ~SetGlobal("T#DaceRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~G("RJPLAY3",116)~ THEN DO ~SetGlobal("rh#IsraRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~G("RJPLAY3",317)~ THEN DO ~SetGlobal("M#AmberRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~G("RJPLAY3",204)~ THEN DO ~SetGlobal("SaerilethRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~G("RJPLAY3",323)~ THEN DO ~SetGlobal("C0SireneRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~G("RJPLAY3",312)~ THEN DO ~SetGlobal("E3FadeRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
END

IF ~~ RJSelectVampire4
  SAY @1917
  IF ~~ THEN EXTERN BODHIAMB 1
  IF ~G("RJPLAY4",107)~ THEN DO ~SetGlobal("NeeraRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~G("RJPLAY4",206)~ THEN DO ~SetGlobal("NaliaRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~G("RJPLAY4",208)~ THEN DO ~SetGlobal("JaheiraRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~G("RJPLAY4",313)~ THEN DO ~SetGlobal("ViconiaRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~G("RJPLAY4",109)~ THEN DO ~SetGlobal("O#BranRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~G("RJPLAY4",205)~ THEN DO ~SetGlobal("TashiaRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~G("RJPLAY4",110)~ THEN DO ~SetGlobal("G#TF.TyrisRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~G("RJPLAY4",311)~ THEN DO ~SetGlobal("LK#NindeRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~G("RJPLAY4",115)~ THEN DO ~SetGlobal("T#DaceRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~G("RJPLAY4",116)~ THEN DO ~SetGlobal("rh#IsraRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~G("RJPLAY4",317)~ THEN DO ~SetGlobal("M#AmberRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~G("RJPLAY4",204)~ THEN DO ~SetGlobal("SaerilethRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~G("RJPLAY4",323)~ THEN DO ~SetGlobal("C0SireneRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
  IF ~G("RJPLAY4",312)~ THEN DO ~SetGlobal("E3FadeRJVampire","GLOBAL",2)~ EXTERN BODHIAMB 1
END

END

// Select woman for the Gorion wraith to torment

ALTER_TRANS HGWRA01
BEGIN 0 END
BEGIN 0 END
BEGIN
  "ACTION" ~ActionOverride(Player1,SetDialog("PLAYER1"))~
  "EPILOGUE" ~EXTERN RJALI25J RjaliWraith~
END

APPEND RJALI25J

IF ~~ RjaliWraith
SAY @203
IF ~~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ EXTERN PLAYER1 RJSelectWraith
END

END

APPEND PLAYER1

IF ~~ RJSelectWraith
  SAY @1900
  IF ~InParty("Aerie") G("AerieRomanceActive",2)~ THEN REPLY @1901 DO ~SetGlobal("AerieRJWraith","GLOBAL",2)~ EXTERN HGWRA01 1
  IF ~InParty("Jaheira") G("JaheiraRomanceActive",2)~ THEN REPLY @1902 DO ~SetGlobal("JaheiraRJWraith","GLOBAL",2)~ EXTERN HGWRA01 1
  IF ~InParty("Viconia") G("ViconiaRomanceActive",2)~ THEN REPLY @1903 DO ~SetGlobal("ViconiaRJWraith","GLOBAL",2)~ EXTERN HGWRA01 1
  IF ~InParty("Neera") G("NeeraRomanceActive",2)~ THEN REPLY @1904 DO ~SetGlobal("NeeraRJWraith","GLOBAL",2)~ EXTERN HGWRA01 1
  IF ~InParty("C0Sirene") G("C0SireneRomanceActive",2)~ THEN REPLY @1905 DO ~SetGlobal("C0SireneRJWraith","GLOBAL",2)~ EXTERN HGWRA01 1
  IF ~InParty("O#Bran") G("O#BranRomanceActive",2)~ THEN REPLY @1906 DO ~SetGlobal("O#BranRJWraith","GLOBAL",2)~ EXTERN HGWRA01 1
  IF ~InParty("Tashia") G("TashiaRomanceActive",2)~ THEN REPLY @1907 DO ~SetGlobal("TashiaRJWraith","GLOBAL",2)~ EXTERN HGWRA01 1
  IF ~InParty("G#Tyris") G("G#TF.TyrisRomanceActive",2)~ THEN REPLY @1909 DO ~SetGlobal("G#TF.TyrisRJWraith","GLOBAL",2)~ EXTERN HGWRA01 1
  IF ~InParty("Ninde") G("LK#NindeRomanceActive",2)~ THEN REPLY @1910 DO ~SetGlobal("LK#NindeRJWraith","GLOBAL",2)~ EXTERN HGWRA01 1
  IF ~InParty("T#Dace") G("T#DaceRomanceActive",2)~ THEN REPLY @1911 DO ~SetGlobal("T#DaceRJWraith","GLOBAL",2)~ EXTERN HGWRA01 1
  IF ~InParty("rh#Isra2") G("rh#IsraRomanceActive",2)~ THEN REPLY @1912 DO ~SetGlobal("rh#IsraRJWraith","GLOBAL",2)~ EXTERN HGWRA01 1
  IF ~InParty("M#AMBER") G("M#AmberRomanceActive",2)~ THEN REPLY @1913 DO ~SetGlobal("M#AmberRJWraith","GLOBAL",2)~ EXTERN HGWRA01 1
  IF ~InParty("E3Fade") G("E3FadeRomanceActive",2)~ THEN REPLY @1914 DO ~SetGlobal("E3FadeRJWraith","GLOBAL",2)~ EXTERN HGWRA01 1
  IF ~InParty("Saerileth") G("SaerilethRomanceActive",2)~ THEN REPLY @1915 DO ~SetGlobal("SaerilethRJWraith","GLOBAL",2)~ EXTERN HGWRA01 1
  IF ~InParty("Imoen2") G("ImoenRomanceActive",2)~ THEN REPLY @1915 DO ~SetGlobal("ImoenRJWraith","GLOBAL",2)~ EXTERN MRKHALID 0
  IF ~~ THEN REPLY @1916 EXTERN HGWRA01 1
END

END
