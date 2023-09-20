
BEGIN RJFAY

// The reunion

IF ~IsGabber(Player1) G("RJFayMet",0)~ THEN BEGIN FMR0
SAY @0 = @1 = @2
++ @3 DO ~SetGlobal("RJFayMet","GLOBAL",1)
          SetGlobal("RJFayRomanceActive","GLOBAL",2)~ + FMR0.1
END

IF ~~ THEN BEGIN FMR0.1
SAY @4
IF ~~ THEN REPLY @5 GOTO FMR0.2
END

IF ~~ THEN BEGIN FMR0.2
SAY @15
IF ~~ THEN REPLY @16 EXIT
END

IF ~IsGabber(Player1) 
    G("RJFayMet",1)
    OpenState("ar0602d2",FALSE)~ THEN BEGIN FMR1
SAY @19
IF ~~ THEN EXIT
END

IF ~IsGabber(Player1) G("RJFayMet",1) OpenState("ar0602d2",TRUE)~ THEN BEGIN FMR2
SAY @17
IF ~~ THEN REPLY @18 DO ~StartCutSceneMode()
                        FadeToColor([30.0],0)
                        Wait(1)
                        ChangeEnemyAlly(Myself,FAMILIAR)
                        AddFamiliar()
                        Polymorph(SIRINE)
                        SetGlobal("RJFayMet","GLOBAL",2)
                        FaceObject(Player1)
                        FadeFromColor([20.0],0)
                        Wait(1)
                        EndCutSceneMode()
                        StartDialogueNoSet(Player1)~ EXIT
END

IF ~IsGabber(Player1) G("RJFayMet",2)~ THEN BEGIN FMR3
SAY @6
IF ~~ THEN REPLY @7 GOTO FMR3.1
END

IF ~~ THEN BEGIN FMR3.1
SAY @8 = @9 = @10 = @11 = @12
IF ~~ THEN REPLY @13 DO ~StartCutSceneMode()
                         FadeToColor([30.0],0)
                         Wait(1)
                         Polymorph(WILL_O_WISP_SMALL)
                         SetGlobal("RJFayMet","GLOBAL",3)
                         FadeFromColor([20.0],0)
                         Wait(1)
                         EndCutSceneMode()
                         DisplayStringHead("RJFay",@14)~ EXIT
END

// 1st Time Awake

IF ~G("RJFay1st",1)
    G("RJFay1stCtl",0)~ fay1st1
SAY @240 = @241
IF ~~ THEN REPLY @242 DO ~SetGlobal("RJFay1st","GLOBAL",2)
                          StartCutSceneMode()
                          StartCutScene("RJSCUTFH")~ EXIT
IF ~~ THEN REPLY @251 DO ~SetGlobal("RJFay1st","GLOBAL",0)
                          SetGlobal("RJFay1stCtl","GLOBAL",1)
                          RealSetGlobalTimer("RJFay1stTimer","GLOBAL",RJ_FAST)~ EXIT
END

IF ~G("RJFay1st",1)
    G("RJFay1stCtl",1)~ fay1st1
SAY @252
IF ~~ THEN REPLY @253 DO ~SetGlobal("RJFay1st","GLOBAL",2)
                          StartCutSceneMode()
                          StartCutScene("RJSCUTFH")~ EXIT
IF ~~ THEN REPLY @251 DO ~SetGlobal("RJFay1st","GLOBAL",0)
                          RealSetGlobalTimer("RJFay1stTimer","GLOBAL",RJ_QUICK)~ EXIT
END

IF ~IsGabber(Player1)
    G("RJFay1st",2)
    !Range("Chest 1",8)~ fay1st2
SAY @243
IF ~~ EXIT
END

IF ~IsGabber(Player1)
    G("RJFay1st",2)
    Range("Chest 1",8)
    OpenState("ar0602d2",FALSE)~ fay1st3
SAY @19
IF ~~ EXIT
END

IF ~IsGabber(Player1)
    G("RJFay1st",2)
    Range("Chest 1",8)
    OpenState("ar0602d2",TRUE)~ fay1st4
SAY @244 = @245
IF ~~ THEN REPLY @246 DO ~SetGlobal("RJFay1st","GLOBAL",3)
                          IncrementGlobal("RJCntBedded","GLOBAL",1)~ GOTO fay1st4.1
END

IF ~~ fay1st4.1
SAY @247 = @248 = @249
IF ~~ THEN REPLY @250 GOTO fay1st4.2
END

IF ~~ fay1st4.2
SAY @254 = @255
IF ~G("RjaliKalah",0)~ THEN REPLY @258 DO ~AddJournalEntry(@9064,INFO)~ GOTO fay1st4.9
IF ~!G("RjaliKalah",0) !PartyHasItem("RJLAMPJI")~ THEN REPLY @256 GOTO fay1st4.3
IF ~PartyHasItem("RJLAMPJI")~ THEN REPLY @257 GOTO fay1st4.4
END

IF ~~ fay1st4.3
SAY @274
IF ~~ THEN REPLY @275 DO ~SetGlobal("RJFayLamp","GLOBAL",1)
                          AddJournalEntry(@9065,INFO)~ GOTO fay1st4.9
END

IF ~~ fay1st4.4
SAY @276
IF ~~ THEN REPLY @277 DO ~ActionOverride(Player1,TakePartyItem("RJLAMPJI"))
                          ActionOverride(Player1,DestroyItem("RJLAMPJI"))
                          SetGlobal("RJFayLamp","GLOBAL",8)
                          RealSetGlobalTimer("RJFayLampTime","GLOBAL",ONE_DAY)
                          CreateItem("RJLAMPJI",1,0,0)
                          AddJournalEntry(@9066,INFO)~ GOTO fay1st4.9
END

IF ~~ fay1st4.9
SAY @273
IF ~~ THEN REPLY @259 DO ~StartCutSceneMode()
                          SetGlobal("RjaliFaySpice","GLOBAL",1)
                          SetGlobal("RjaliPokes","GLOBAL",1)
                          RealSetGlobalTimer("RJFayRomance","GLOBAL",RJ_TALK)
                          SetGlobal("RJFayTalk","GLOBAL",1)
                          EndCutSceneMode()~ EXIT
END

// LOVETALKS START HERE

// Talk 1. Irenicus

IF ~G("RJFayTalk",2)~ faylt1
SAY @300
++ @301 + faylt0
++ @304 + faylt1.1
++ @305 + faylt1.2
END

IF ~~ faylt0
SAY @302
IF ~~ DO ~RealSetGlobalTimer("RJFayRomance","GLOBAL",RJ_FAST)
          IncrementGlobal("RJFayTalk","GLOBAL",-1)~ EXIT
END

IF ~~ faylt0.1
SAY @303
IF ~~ DO ~RealSetGlobalTimer("RJFayRomance","GLOBAL",RJ_TALK) 
          IncrementGlobal("RJFayTalk","GLOBAL",1)~ EXIT
END

IF ~~ faylt1.1
SAY @306
++ @305 + faylt1.2
END

IF ~~ faylt1.2
SAY @307 = @308
++ @309 + faylt1.3
END

IF ~~ faylt1.3
SAY @310
++ @311 + faylt1.4
END

IF ~~ faylt1.4
SAY @312 = @313
++ @314 + faylt1.5
END

IF ~~ faylt1.5
SAY @315 = @316 = @317 = @318
++ @319 + faylt1.6
END

IF ~~ faylt1.6
SAY @320 = @321
++ @322 + faylt1.7
END

IF ~~ faylt1.7
SAY @323
++ @324 + faylt0.1
END

// Talk 2. Neglect

IF ~G("RJFayTalk",4)~ faylt2
SAY @330
++ @331 + faylt0
++ @332 + faylt2.1
++ @333 + faylt2.1
END

IF ~~ faylt2.1
SAY @334 = @335 = @336
++ @337 + faylt2.2
END

IF ~~ faylt2.2
SAY @338 = @339 = @340 = @341
++ @342 + faylt2.3
END

IF ~~ faylt2.3
SAY @343 = @344
++ @345 + faylt2.4
END

IF ~~ faylt2.4
SAY @346
IF ~~ THEN GOTO faylt0.1
END

// Talk 3. Irenicus 2

IF ~G("RJFayTalk",6)~ faylt3
SAY @350
++ @351 + faylt0
++ @352 + faylt3.1
END

IF ~~ faylt3.1
SAY @353
++ @354 + faylt3.2
END

IF ~~ faylt3.2
SAY @355
++ @356 + faylt3.3
END

IF ~~ faylt3.3
SAY @357 = @358 = @359
++ @360 + faylt3.4
END

IF ~~ faylt3.4
SAY @361
++ @362 + faylt3.5
END

IF ~~ faylt3.5
SAY @363 = @364
++ @365 + faylt0.1
END

// Talk 4. Wife

IF ~G("RJFayTalk",8)~ faylt4
SAY @370
++ @371 + faylt4.1
++ @372 + faylt4.2
END

IF ~~ faylt4.1
SAY @373
++ @374 + faylt4.2
END

IF ~~ faylt4.2
SAY @375 = @376
++ @377 + faylt4.3
END

IF ~~ faylt4.3
SAY @378 = @379
++ @380 + faylt4.4
END

IF ~~ faylt4.4
SAY @381
++ @382 + faylt4.5
END

IF ~~ faylt4.5
SAY @383 = @384
++ @385 + faylt4.6
END

IF ~~ faylt4.6
SAY @386 = @387
++ @388 + faylt4.7
END

IF ~~ faylt4.7
SAY @389 = @390
IF ~~ THEN REPLY @391 DO ~SetGlobal("RJFayWed","GLOBAL",1)
                          IncrementGlobal("RJCntWedded","GLOBAL",1)~ GOTO faylt0.1
END

// Talk 5. Imoen

IF ~G("RJFayTalk",10)~ faylt5
SAY @430
++ @431 + faylt0
++ @432 + faylt5.1
END

IF ~~ faylt5.1
SAY @433 = @434
++ @435 + faylt5.2
END

IF ~~ faylt5.2
SAY @436 = @437 = @438
++ @439 + faylt5.3
END

IF ~~ faylt5.3
SAY @440 = @441
++ @442 + faylt5.4
END

IF ~~ faylt5.4
SAY @443
IF ~~ THEN GOTO faylt0.1
END

// Talk 6. Children

IF ~G("RJFayTalk",12)~ faylt6
SAY @450
++ @451 + faylt0
++ @452 + faylt6.1
END

IF ~~ faylt6.1
SAY @453
++ @454 + faylt6.2
END

IF ~~ faylt6.2
SAY @455 = @456
++ @457 + faylt6.3
END

IF ~~ faylt6.3
SAY @458
++ @459 + faylt6.4
END

IF ~~ faylt6.4
SAY @460 = @461
++ @462 + faylt6.5
END

IF ~~ faylt6.5
SAY @463
IF ~~ THEN GOTO faylt0.1
END

// Talk 7. Menage

IF ~G("RJFayTalk",14)~ faylt7
SAY @470
++ @471 + faylt0
++ @472 + faylt7.1
END

IF ~~ faylt7.1
SAY @473
++ @474 + faylt7.2
END

IF ~~ faylt7.2
SAY @475
++ @476 + faylt7.3
END

IF ~~ faylt7.3
SAY @477 = @478
++ @479 + faylt7.4
END

IF ~~ faylt7.4
SAY @480 = @481
++ @482 + faylt7.5
END

IF ~~ faylt7.5
SAY @483
++ @484 + faylt7.6
END

IF ~~ faylt7.6
SAY @485
IF ~~ THEN REPLY @486 GOTO faylt0.1
END

// Talk 8. Lamps

IF ~G("RJFayTalk",16)~ faylt8
SAY @490
++ @491 + faylt8.1
END

IF ~~ faylt8.1
SAY @492
++ @493 + faylt8.2
END

IF ~~ faylt8.2
SAY @494
++ @495 + faylt8.3
END

IF ~~ faylt8.3
SAY @496 = @497 = @498 = @499 = @500 = @501 = @502 = @503 = @504
IF ~~ THEN REPLY @505 GOTO faylt0.1
END

// Talk 9. Love me

IF ~G("RJFayTalk",18)~ faylt9
SAY @510 = @511
++ @512 + faylt9.1
END

IF ~~ faylt9.1
SAY @513 = @514 = @515
++ @516 + faylt9.2
END

IF ~~ faylt9.2
SAY @517 = @518 = @519
++ @520 + faylt9.3
END

IF ~~ faylt9.3
SAY @521
IF ~~ THEN REPLY @522 GOTO faylt0.1
END

// Talk 10. Sigil

IF ~G("RJFayTalk",20)~ faylt10
SAY @530
++ @531 + faylt0
++ @532 + faylt10.1
END

IF ~~ faylt10.1
SAY @533
++ @534 + faylt10.2
END

IF ~~ faylt10.2
SAY @535 = @536 = @537 = @538 = @539 = @540 = @541 = @542 = @543 = @544 = @545 = @546
++ @547 + faylt10.3
END

IF ~~ faylt10.3
SAY @548 = @549
IF ~~ THEN REPLY @550 GOTO faylt10.4
END

IF ~~ faylt10.4
SAY @551
IF ~~ THEN REPLY @552 GOTO faylt10.5
END

IF ~~ faylt10.5
SAY @553
IF ~~ THEN GOTO faylt0.1
END

// Talk 11. Corwin

IF ~G("RJFayTalk",22)~ faylt11
SAY @560 = @561
++ @562 + faylt11.1
END

IF ~~ faylt11.1
SAY @563 = @564 = @565
++ @566 + faylt11.2
END

IF ~~ faylt11.2
SAY @567
++ @568 + faylt11.3
END

IF ~~ faylt11.3
SAY @569 = @570 = @571 = @572
IF ~~ THEN REPLY @573 GOTO faylt0.1
END

// Talk 12. Dreaming

IF ~G("RJFayTalk",24)~ faylt12
SAY @580
++ @581 + faylt12.1
END

IF ~~ faylt12.1
SAY @582 = @583 = @584
++ @585 + faylt12.2
END

IF ~~ faylt12.2
SAY @586 = @587 = @588
IF ~~ THEN GOTO faylt0.1
END

// Talk 13. The Hells (ToB)

IF ~G("RJFayTalk",26)~ faylt13
SAY @600
++ @601 + faylt13.1
END

IF ~~ faylt13.1
SAY @602 = @603 = @604 = @605
++ @606 + faylt13.2
END

IF ~~ faylt13.2
SAY @607
++ @608 + faylt13.3
END

IF ~~ faylt13.3
SAY @609
IF ~~ THEN REPLY @610 GOTO faylt0.1
END

// Talk 14. Beyond Irenicus (ToB)

IF ~G("RJFayTalk",28)~ faylt14
SAY @640
++ @641 + faylt14.1
END

IF ~~ faylt14.1
SAY @642 = @643 = @644 = @645
++ @646 + faylt14.2
END

IF ~~ faylt14.2
SAY @647 = @648
++ @649 + faylt14.3
END

IF ~~ faylt14.3
SAY @650
++ @651 + faylt14.4
END

IF ~~ faylt14.4
SAY @652
IF ~~ THEN GOTO faylt0.1
END

// Talk 15. Orphanage (ToB)

IF ~G("RJFayTalk",30)~ faylt15
SAY @660
++ @661 + faylt0
++ @662 + faylt15.1
END

IF ~~ faylt15.1
SAY @663
++ @664 + faylt15.2
END

IF ~~ faylt15.2
SAY @665 = @666 = @667 = @668
++ @669 + faylt15.3
END

IF ~~ faylt15.3
SAY @670
++ @671 + faylt15.4
END

IF ~~ faylt15.4
SAY @672 = @673 = @674
++ @675 + faylt15.5
END

IF ~~ faylt15.5
SAY @676
IF ~~ THEN GOTO faylt0.1
END

// Talk 16. Small World (ToB)

IF ~G("RJFayTalk",32)~ faylt16
SAY @680
++ @681 + faylt16.1
END

IF ~~ faylt16.1
SAY @682 = @683 = @684 = @685 = @686 = @687 = @688 = @689 = @690
++ @691 + faylt16.2
END

IF ~~ faylt16.2
SAY @692 = @693 = @694
++ @695 + faylt0.1
END

// Talk 17. 1st Batch (ToB)

IF ~G("RJFayTalk",34)~ faylt17
SAY @700
IF ~~ THEN REPLY @701 DO ~RealSetGlobalTimer("RJFayRomance","GLOBAL",RJ_TALK)
                          IncrementGlobal("RJFayTalk","GLOBAL",1)
                          SetGlobal("RJFayPriv","GLOBAL",1)~ EXIT
END

IF ~IsGabber(Player1) 
    G("RJFayPriv",1)
    OR(5)
      See(Player2)
      See(Player3)
      See(Player4)
      See(Player5)
      See(Player6)~ faylt17.1
SAY @702
IF ~~ THEN EXIT
END

IF ~IsGabber(Player1)
    G("RJFayPriv",1)
    !See(Player2)
    !See(Player3)
    !See(Player4)
    !See(Player5)
    !See(Player6)~ faylt17.2
SAY @703
IF ~~ THEN DO ~SetGlobal("RJFayPriv","GLOBAL",2)
               StartCutSceneMode()
               FaceObject(Player1)
               ActionOverride(Player1,FaceObject("RJFay"))
               ReallyForceSpellRES("RJITWTW",Myself)
               Wait(3)
               StartDialogueNoSet(Player1)
               EndCutSceneMode()~ EXIT
END

IF ~G("RJFayPriv",2)~ faylt17.3
SAY @704
IF ~~ THEN REPLY @705 DO ~SetGlobal("RJFayPriv","GLOBAL",3)~ GOTO faylt17.4
END

IF ~~ faylt17.4
SAY @706 = @707
++ @708 + faylt17.5
END

IF ~~ faylt17.5
SAY @709 = @710 = @711
++ @712 + faylt17.6
END

IF ~~ faylt17.6
SAY @713 = @714 = @715 = @716
++ @717 + faylt17.7
END

IF ~~ faylt17.7
SAY @718 = @719
++ @720 + faylt17.8
END

IF ~~ faylt17.8
SAY @721
++ @722 + faylt17.9
END

IF ~~ faylt17.9
SAY @723 = @724
++ @725 + faylt17.10
END

IF ~~ faylt17.10
SAY @726 = @727
++ @728 + faylt17.11
END

IF ~~ faylt17.11
SAY @729 = @730
++ @731 + faylt17.12
END

IF ~~ faylt17.12
SAY @732
IF ~~ THEN DO ~DestroyItem("RJWOTW")
               SetGlobal("RJFayPriv","GLOBAL",99)~ EXIT
END

// Fay's Extra Talks

// Extra talks: Lamp Search

IF ~G("RJFayLamp",4)~ THEN BEGIN RJFayLamp
SAY @860 = @861
++ @862 DO ~ActionOverride(Player1,PickUpItem("RJLAMPJI"))
            ActionOverride(Player1,DestroyItem("RJLAMPJI"))
            SetGlobal("RJFayLamp","GLOBAL",8)
            RealSetGlobalTimer("RJFayLampTime","GLOBAL",ONE_DAY)
            CreateItem("RJLAMPJI",1,0,0)
            AddJournalEntry(@9066,INFO)~ EXIT
END

IF ~G("RJFayLamp",2)~ THEN BEGIN RJFaySearch
SAY @850 = @851 = @852 = @853
++ @854 DO ~SetGlobal("RJFayLamp","GLOBAL",3)~ + RJFaySearch1
END

IF ~~ THEN BEGIN RJFaySearch1
SAY @855
++ @856 EXIT
END

// Extra talks: Phaere Innuendo

IF ~G("PhaereInnuendo",2)
    G("RJFayPhaere",1)~ THEN BEGIN RJFayPhaere
SAY @260
++ @261 DO ~SetGlobal("RJFayPhaere","GLOBAL",2)~ + RJFayPhaere1
END

IF ~~ THEN BEGIN RJFayPhaere1
SAY @262
++ @263 + RJFayPhaere2
END

IF ~~ THEN BEGIN RJFayPhaere2
SAY @264
IF ~~ THEN EXIT
END

IF ~G("PhaereInnuendo",3)
    G("RJFayPhaere",1) ~ THEN BEGIN RJFayNoPhaere
SAY @265
++ @266 DO ~SetGlobal("RJFayPhaere","GLOBAL",2)~ + RJFayNoPhaere1
END

IF ~~ THEN BEGIN RJFayNoPhaere1
SAY @267 = @268
++ @269 EXIT
END

// Extra talks: Morning after

IF ~G("RJFayExper",1)~ THEN BEGIN RJFayExper
SAY @620
++ @621 DO ~SetGlobal("RJFayExper","GLOBAL",2)~ + RJFayExper1
END

IF ~~ THEN BEGIN RJFayExper1
SAY @622
++ @623 + RJFayExper2
END

IF ~~ THEN BEGIN RJFayExper2
SAY @624 = @625 = @626
++ @627 + RJFayExper3
END

IF ~~ THEN BEGIN RJFayExper3
SAY @628 = @629
IF ~~ THEN REPLY @630 EXIT
END

// Extra talks: Sneaking off to the Lamp

IF ~IsGabber(Player1)
    AreaCheck("RJW604")
    !InMyArea("RJKSLAVE")~ faylamp1
SAY @880
IF ~~ THEN REPLY @882 EXIT
IF ~~ THEN REPLY @881 GOTO faylamp1.1
END

IF ~~ faylamp1.1
SAY @883
IF ~~ THEN REPLY @884 EXIT
END

IF ~IsGabber(Player1)
    AreaCheck("RJW606")
    !InMyArea("RJKGENI1")
    G("RJLampRoom",0)~ faylamp2
SAY @890 = @891 = @892
IF ~~ THEN REPLY @893 DO ~SetGlobal("RJLampRoom","GLOBAL",1)~ EXIT
END

IF ~IsGabber(Player1)
    AreaCheck("RJW605")~ faylamp3
SAY @792
IF ~RandomNum(3,1)~ THEN GOTO faylamp3.1
IF ~RandomNum(3,2)~ THEN GOTO faylamp3.2
IF ~RandomNum(3,3)~ THEN GOTO faylamp3.3
END

IF ~~ faylamp3.0
SAY @793
IF ~~ THEN REPLY @818 DO ~SetGlobal("RJFayNook","GLOBAL",0)
                          StartCutSceneMode()
                          StartCutScene("RJPCUTRT")~ EXIT
END

IF ~~ faylamp3.1
SAY @780 = @819
IF ~~ THEN REPLY @820 GOTO faylamp3.1.1
END

IF ~~ faylamp3.1.1
SAY @783 = @821 = @785 = @786 = @787 = @788
IF ~~ THEN REPLY @824 GOTO faylamp3.1.2
END

IF ~~ faylamp3.1.2
SAY @790
IF ~~ THEN REPLY @791 GOTO faylamp3.0
END

IF ~~ faylamp3.2
SAY @794
IF ~~ THEN REPLY @825 GOTO faylamp3.2.1
END

IF ~~ faylamp3.2.1
SAY @826 = @797 = @798
IF ~~ THEN REPLY @799 GOTO faylamp3.2.2
END

IF ~~ faylamp3.2.2
SAY @800
IF ~~ THEN REPLY @801 GOTO faylamp3.0
END

IF ~~ faylamp3.3
SAY @822 = @823 = @804 = @805 = @806
IF ~~ THEN REPLY @807 GOTO faylamp3.3.1
END

IF ~~ faylamp3.3.1
SAY @808
IF ~~ THEN REPLY @809 GOTO faylamp3.3.2
END

IF ~~ faylamp3.3.2
SAY @810 = @811
IF ~~ THEN REPLY @812 GOTO faylamp3.0
END

// Extra talks: Sneaking off to Sigil

IF ~IsGabber(Player1)
    AreaCheck("RJ0602")
    OR(2)
      G("RJFayNook",1)
      G("RJFayNook",2)
    !Range("Chest 1",8)~ faynook1
SAY @243
IF ~~ THEN DO ~SetGlobal("RJFayNook","GLOBAL",2)~ EXIT
END

IF ~IsGabber(Player1)
    AreaCheck("RJ0602")
    OR(2)
      G("RJFayNook",1)
      G("RJFayNook",2)
    Range("Chest 1",8)
    OpenState("ar0602d2",FALSE)~ faynook2
SAY @19
IF ~~ THEN DO ~SetGlobal("RJFayNook","GLOBAL",2)~ EXIT
END

IF ~IsGabber(Player1)
    AreaCheck("RJ0602")
    OR(2)
      G("RJFayNook",1)
      G("RJFayNook",2)
    Range("Chest 1",8)
    OpenState("ar0602d2",TRUE)~ faynook3
SAY @792
IF ~RandomNum(3,1)~ THEN GOTO faynook3.1
IF ~RandomNum(3,2)~ THEN GOTO faynook3.2
IF ~RandomNum(3,3)~ THEN GOTO faynook3.3
END

IF ~~ faynook3.0
SAY @793
IF ~~ THEN REPLY @779 DO ~SetGlobal("RJFayNook","GLOBAL",0)
                          StartCutSceneMode()
                          StartCutScene("RJPCUTRT")~ EXIT
END

IF ~~ faynook3.1
SAY @780 = @781
IF ~~ THEN REPLY @782 GOTO faynook3.1.1
END

IF ~~ faynook3.1.1
SAY @783 = @784 = @785 = @786 = @787 = @788
IF ~~ THEN REPLY @789 GOTO faynook3.1.2
END

IF ~~ faynook3.1.2
SAY @790
IF ~~ THEN REPLY @791 GOTO faynook3.0
END

IF ~~ faynook3.2
SAY @794
IF ~~ THEN REPLY @795 GOTO faynook3.2.1
END

IF ~~ faynook3.2.1
SAY @796 = @797 = @798
IF ~~ THEN REPLY @799 GOTO faynook3.2.2
END

IF ~~ faynook3.2.2
SAY @800
IF ~~ THEN REPLY @801 GOTO faynook3.0
END

IF ~~ faynook3.3
SAY @802 = @803 = @804 = @805 = @806
IF ~~ THEN REPLY @807 GOTO faynook3.3.1
END

IF ~~ faynook3.3.1
SAY @808
IF ~~ THEN REPLY @809 GOTO faynook3.3.2
END

IF ~~ faynook3.3.2
SAY @810 = @811
IF ~~ THEN REPLY @812 GOTO faynook3.0
END

// Fay's Flirts - Must be at the bottom of the file

// Fay-initiated flirts

IF ~G("RJFayFlirt",1)~ fayfl2
SAY @20
IF ~RandomNum(10,1)~ + fayfl2.1
IF ~RandomNum(10,2)~ + fayfl2.2
IF ~RandomNum(10,3)~ + fayfl2.3
IF ~RandomNum(10,4)~ + fayfl2.4
IF ~RandomNum(10,5)~ + fayfl2.5
IF ~RandomNum(10,6)~ + fayfl2.6
IF ~RandomNum(10,7)~ + fayfl2.7
IF ~RandomNum(10,8)~ + fayfl2.8
IF ~RandomNum(10,9)~ + fayfl2.9
IF ~RandomNum(10,10)~ + fayfl2.10
END

IF ~~ fayfl2.1
SAY @21
IF ~~ THEN REPLY @31 EXIT
END

IF ~~ fayfl2.2
SAY @22
IF ~~ EXIT
END

IF ~~ fayfl2.3
SAY @23
IF ~~ EXIT
END

IF ~~ fayfl2.4
SAY @24
IF ~~ THEN REPLY @32 EXIT
END

IF ~~ fayfl2.5
SAY @25
IF ~~ EXIT
END

IF ~~ fayfl2.6
SAY @26
IF ~~ THEN REPLY @33 EXIT
END

IF ~~ fayfl2.7
SAY @27
IF ~~ EXIT
END

IF ~~ fayfl2.8
SAY @28
IF ~~ EXIT
END

IF ~~ fayfl2.9
SAY @29
IF ~~ EXIT
END

IF ~~ fayfl2.10
SAY @30
IF ~~ EXIT
END

// Chat with the kids

IF ~G("RJFayKids",1)~ faychat3
SAY @422
IF ~RandomNum(3,1)~ THEN GOTO faychat3.1
IF ~RandomNum(3,2)~ THEN GOTO faychat3.2
IF ~RandomNum(3,3)~ THEN GOTO faychat3.3
END

IF ~~ faychat3.1
SAY @750 = @751
IF ~~ THEN REPLY @752 GOTO faychat3.1.1
END

IF ~~ faychat3.1.1
SAY @753 = @754 = @755
IF ~~ THEN REPLY @756 DO ~DestroyItem("RJWOTW")
                          SetGlobal("RJFayKids","GLOBAL",0)~ EXIT
END

IF ~~ faychat3.2
SAY @760 = @761
IF ~~ THEN REPLY @762 GOTO faychat3.2.1
END

IF ~~ faychat3.2.1
SAY @763
IF ~~ THEN REPLY @764 GOTO faychat3.2.2
END

IF ~~ faychat3.2.2
SAY @765
IF ~~ THEN DO ~DestroyItem("RJWOTW")
               SetGlobal("RJFayKids","GLOBAL",0)~ EXIT
END

IF ~~ faychat3.3
SAY @770 = @771
IF ~~ THEN REPLY @772 GOTO faychat3.3.1
END

IF ~~ faychat3.3.1
SAY @773
IF ~~ THEN REPLY @774 GOTO faychat3.3.2
END

IF ~~ faychat3.3.2
SAY @775
IF ~~ THEN REPLY @776 DO ~DestroyItem("RJWOTW")
                          SetGlobal("RJFayKids","GLOBAL",0)~ EXIT
END

// Player-initiated dialogue (in party)

IF ~IsGabber(Player1)
    G("RJParkFY",0)~ FAYPid
SAY @40
++ @42 EXIT
+ ~G("RJFollowFY",0)~ + @80 DO ~SetGlobal("RJFollowFY","GLOBAL",1)~ EXIT
+ ~G("RJFollowFY",1)~ + @81 DO ~SetGlobal("RJFollowFY","GLOBAL",0)~ EXIT
+ ~G("RJFayPriv",99)
   OR(4)
      AreaCheck("AR1304")
      AreaCheck("AR1305")
      AreaCheck("AR1306")
      AreaCheck("AR1307")~ + @405 DO ~
               SetGlobal("RJFayKids","GLOBAL",1)
               StartCutSceneMode()
               FaceObject(Player1)
               ActionOverride(Player1,FaceObject("RJFay"))
               ReallyForceSpellRES("RJITWTW",Myself)
               Wait(3)
               StartDialogueNoSet(Player1)
               EndCutSceneMode()~ EXIT
+ ~!G("RJFayTalk",0)
   !G("KeepPlot",0)
   G("RJFayNook",0)
   G("RJPort",0)
   OR(2)
     G("RJiniiJIDAD",0)
     G("RJiniiJIDAD",99)
   OR(2)
     G("RJiniiJIDMR",0)
     G("RJiniiJIDMR",99)
   OR(2)
     G("RJiniiJIDND",0)
     G("RJiniiJIDND",99)
   OR(2)
     G("RJiniiJIDDK",0)
     G("RJiniiJIDDK",99)
   !AreaCheck("AR4000")
   !AreaCheck("AR4500")
   !AreaCheck("AR6200")~ + @38 + faynook
+ ~!G("KeepPlot",0)
   G("RJPort",0)
   G("RJFayWed",1)~ + @41 + faypark
+ ~G("RJFayBig",0)~ + @49 + fayflt0
+ ~G("RJFayBig",1)~ + @45 + fayflt1
END

// Player-initiated dialogue (parked)

IF ~IsGabber(Player1)
    G("RJParkFY",1)
    G("RJXPN",0)~ FAYPidP
SAY @40
++ @42 EXIT
IF ~G("RJFinalVisit",1) G("RJFYFV",0)~ THEN REPLY @900 GOTO fayfinal
++ @46 + fayunpark
++ @39 + faychat
END

// Sneak off with Fay

IF ~~ faynook
SAY @36
IF ~OR(3)
      AreaCheck("AR1305")
      AreaCheck("AR1306")
      AreaCheck("AR1307")~ THEN REPLY @35 GOTO faynook4
IF ~!AreaCheck("AR1305")
    !AreaCheck("AR1306")
    !AreaCheck("AR1307")
    !G("RJFayLamp",9)~ THEN REPLY @37 DO ~SetGlobal("RJFayNook","GLOBAL",1)
                          StartCutSceneMode()
                          StartCutScene("RJSCUTFH")~ EXIT
IF ~!AreaCheck("AR1305")
    !AreaCheck("AR1306")
    !AreaCheck("AR1307")
    G("RJFayLamp",9)~ THEN REPLY @34 DO ~
                          StartCutSceneMode()
                          StartCutScene("RJSCUTLM")~ EXIT
END

IF ~~ faynook4
SAY @813
IF ~~ THEN REPLY @814 GOTO faynook4.1
END

IF ~~ faynook4.1
SAY @815 = @816 = @817
IF ~~ THEN EXIT
END

// Park Fay

IF ~~ faypark
SAY @43
IF ~~ THEN REPLY @44 DO ~SetGlobal("RJParkFY","GLOBAL",1)
                         RemoveFamiliar()
                         ChangeEnemyAlly(Myself,NEUTRAL)
                         IncrementGlobal("RJCntParked","GLOBAL",1)
                         EscapeAreaMove("AR1307",1182,1047,12)~ EXIT
END

// Unpark Fay

IF ~~ fayunpark
SAY @47
IF ~~ THEN REPLY @48 DO ~SetGlobal("RJParkFY","GLOBAL",0)
                         ChangeEnemyAlly(Myself,FAMILIAR)
                         AddFamiliar()
                         IncrementGlobal("RJCntParked","GLOBAL",-1)~ EXIT
END

// Final Visit

IF ~~ THEN BEGIN fayfinal
  SAY @901 = @902
  IF ~~ THEN REPLY @903 DO ~SetGlobal("RJFYFV","GLOBAL",1)~ EXIT
END

// Chat with parked Fay

IF ~~ faychat
SAY @400
++ @401 EXIT
+ ~RandomNum(3,1)~ + @402 + faychat1.1
+ ~RandomNum(3,2)~ + @402 + faychat1.2
+ ~RandomNum(3,3)~ + @402 + faychat1.3
++ @403 + faychat2
IF ~G("RJFayPriv",99)~ THEN REPLY @404 DO ~
               SetGlobal("RJFayKids","GLOBAL",1)
               StartCutSceneMode()
               FaceObject(Player1)
               ActionOverride(Player1,FaceObject("RJFay"))
               ReallyForceSpellRES("RJITWTW",Myself)
               Wait(3)
               StartDialogueNoSet(Player1)
               EndCutSceneMode()~ EXIT
END

IF ~~ faychat1.1
SAY @410 = @411
IF ~~ THEN REPLY @412 EXIT
END

IF ~~ faychat1.2
SAY @413 = @414
IF ~~ THEN REPLY @415 EXIT
END

IF ~~ faychat1.3
SAY @416 = @417
IF ~~ THEN REPLY @418 EXIT
END

IF ~~ faychat2
SAY @419 = @420
IF ~~ THEN REPLY @421 EXIT
END

// Flirt Attempt with Fay

IF ~~ fayflt0
SAY @51
IF ~~ THEN REPLY @52 EXIT
END

// Flirts

IF ~~ fayflt1
SAY @48

++ @42 EXIT

+ ~RandomNum(4,1)~ + @53 + fayflt1.1.1                // flower
+ ~RandomNum(4,2)~ + @53 + fayflt1.1.2
+ ~RandomNum(4,3)~ + @53 + fayflt1.1.3
+ ~RandomNum(4,4)~ + @53 + fayflt1.1.4

+ ~RandomNum(4,1)~ + @54 + fayflt1.2.1                // cheek
+ ~RandomNum(4,2)~ + @54 + fayflt1.2.2
+ ~RandomNum(4,3)~ + @54 + fayflt1.2.3
+ ~RandomNum(4,4)~ + @54 + fayflt1.2.4

+ ~RandomNum(4,1)~ + @55 + fayflt1.3.1                // kiss
+ ~RandomNum(4,2)~ + @55 + fayflt1.3.2
+ ~RandomNum(4,3)~ + @55 + fayflt1.3.3
+ ~RandomNum(4,4)~ + @55 + fayflt1.3.4

+ ~RandomNum(4,1)~ + @56 + fayflt1.5.1                // hands
+ ~RandomNum(4,2)~ + @56 + fayflt1.5.2
+ ~RandomNum(4,3)~ + @56 + fayflt1.5.3
+ ~RandomNum(4,4)~ + @56 + fayflt1.5.4

+ ~RandomNum(4,1)~ + @57 + fayflt1.6.1                // arms
+ ~RandomNum(4,2)~ + @57 + fayflt1.6.2
+ ~RandomNum(4,3)~ + @57 + fayflt1.6.3
+ ~RandomNum(4,4)~ + @57 + fayflt1.6.4

+ ~RandomNum(4,1)~ + @58 + fayflt1.7.1                // want
+ ~RandomNum(4,2)~ + @58 + fayflt1.7.2
+ ~RandomNum(4,3)~ + @58 + fayflt1.7.3
+ ~RandomNum(4,4)~ + @58 + fayflt1.7.4

+ ~RandomNum(4,1)~ + @60 + fayflt1.8.1                // beautiful
+ ~RandomNum(4,2)~ + @60 + fayflt1.8.2
+ ~RandomNum(4,3)~ + @60 + fayflt1.8.3
+ ~RandomNum(4,4)~ + @60 + fayflt1.8.4

+ ~RandomNum(4,1)~ + @61 + fayflt1.9.1                // hug
+ ~RandomNum(4,2)~ + @61 + fayflt1.9.2
+ ~RandomNum(4,3)~ + @61 + fayflt1.9.3
+ ~RandomNum(4,4)~ + @61 + fayflt1.9.4

+ ~RandomNum(4,1)~ + @62 + fayflt1.10.1               // smile
+ ~RandomNum(4,2)~ + @62 + fayflt1.10.2
+ ~RandomNum(4,3)~ + @62 + fayflt1.10.3
+ ~RandomNum(4,4)~ + @62 + fayflt1.10.4

+ ~RandomNum(4,1)~ + @63 + fayflt1.11.1               // love
+ ~RandomNum(4,2)~ + @63 + fayflt1.11.2
+ ~RandomNum(4,3)~ + @63 + fayflt1.11.3
+ ~RandomNum(4,4)~ + @63 + fayflt1.11.4

+ ~RandomNum(3,1)~ + @65 + fayflt1.13.1               // ogle
+ ~RandomNum(3,2)~ + @65 + fayflt1.13.2
+ ~RandomNum(3,3)~ + @65 + fayflt1.13.3

+ ~RandomNum(3,1)                                  // innbath
OR(12)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
AreaCheck("AR5003")
AreaCheck("AR5501")~ + @64 + fayflt1.14.1
+ ~RandomNum(3,2)
OR(12)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
AreaCheck("AR5003")
AreaCheck("AR5501")~ + @64 + fayflt1.14.2
+ ~RandomNum(3,3)
OR(12)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
AreaCheck("AR5003")
AreaCheck("AR5501")~ + @64 + fayflt1.14.3

+ ~Global("stream","LOCALS",0)                     // streambath
OR(4)
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")
AreaCheck("AR6400")~ + @64 DO ~SetGlobal("stream","LOCALS",1)~ + fayflt1.15.1

+ ~Global("stream","LOCALS",1)
OR(4)
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")
AreaCheck("AR6400")~ + @64 + fayflt1.15.2

+ ~ OR(2)                                          // holdbath
AreaCheck("AR1306")
AreaCheck("AR1307")~ + @64 + fayflt1.16

END

// flirts

IF ~~ fayflt1.1.1                   // flower
SAY @90
IF ~~ EXIT
END
IF ~~ fayflt1.1.2
SAY @91
IF ~~ EXIT
END
IF ~~ fayflt1.1.3
SAY @92
IF ~~ EXIT
END
IF ~~ fayflt1.1.4
SAY @93
IF ~~ EXIT
END

IF ~~ fayflt1.2.1                   // cheek
SAY @94
IF ~~ EXIT
END
IF ~~ fayflt1.2.2
SAY @95
IF ~~ EXIT
END
IF ~~ fayflt1.2.3
SAY @96
IF ~~ EXIT
END
IF ~~ fayflt1.2.4
SAY @97
IF ~~ EXIT
END

IF ~~ fayflt1.3.1                   // kiss
SAY @98
IF ~~ EXIT
END
IF ~~ fayflt1.3.2
SAY @99
IF ~~ EXIT
END
IF ~~ fayflt1.3.3
SAY @100 = @101
IF ~~ EXIT
END
IF ~~ fayflt1.3.4
SAY @102
IF ~~ EXIT
END

IF ~~ fayflt1.5.1                   // hands
SAY @111
IF ~~ EXIT
END
IF ~~ fayflt1.5.2
SAY @112 = @113
IF ~~ EXIT
END
IF ~~ fayflt1.5.3
SAY @114
IF ~~ EXIT
END
IF ~~ fayflt1.5.4
SAY @115
IF ~~ EXIT
END

IF ~~ fayflt1.6.1                   // arms
SAY @116
IF ~~ EXIT
END
IF ~~ fayflt1.6.2
SAY @117
IF ~~ EXIT
END
IF ~~ fayflt1.6.3
SAY @118
IF ~~ EXIT
END
IF ~~ fayflt1.6.4
SAY @119
IF ~~ EXIT
END

IF ~~ fayflt1.7.1                   // want
SAY @120
IF ~~ EXIT
END
IF ~~ fayflt1.7.2
SAY @121
IF ~~ EXIT
END
IF ~~ fayflt1.7.3
SAY @122
IF ~~ EXIT
END
IF ~~ fayflt1.7.4
SAY @123
IF ~~ EXIT
END

IF ~~ fayflt1.8.1                   // beautiful
SAY @126
++ @127 EXIT
END
IF ~~ fayflt1.8.2
SAY @128
IF ~~ EXIT
END
IF ~~ fayflt1.8.3
SAY @129
++ @130 EXIT
END
IF ~~ fayflt1.8.4
SAY @131
IF ~~ EXIT
END

IF ~~ fayflt1.9.1                   // hug
SAY @132
IF ~~ EXIT
END
IF ~~ fayflt1.9.2
SAY @133 = @134
++ @135 EXIT
END
IF ~~ fayflt1.9.3
SAY @136
IF ~~ EXIT
END
IF ~~ fayflt1.9.4
SAY @137 = @138
IF ~~ EXIT
END

IF ~~ fayflt1.10.1                  // smile
SAY @139
IF ~~ EXIT
END
IF ~~ fayflt1.10.2
SAY @140
IF ~~ EXIT
END
IF ~~ fayflt1.10.3
SAY @141
IF ~~ EXIT
END
IF ~~ fayflt1.10.4
SAY @142
IF ~~ EXIT
END

IF ~~ fayflt1.11.1                  // love
SAY @143
IF ~~ EXIT
END
IF ~~ fayflt1.11.2
SAY @144
IF ~~ EXIT
END
IF ~~ fayflt1.11.3
SAY @145
IF ~~ EXIT
END
IF ~~ fayflt1.11.4
SAY @146
++ @147 EXIT
END

IF ~~ fayflt1.13.1                  // ogle
SAY @154
IF ~~ EXIT
END
IF ~~ fayflt1.13.2
SAY @155
IF ~~ EXIT
END
IF ~~ fayflt1.13.3
SAY @156
IF ~~ EXIT
END

IF ~~ fayflt1.14.1                  // innbath
SAY @160 = @161 = @162 = @163 = @164 = @165 = @166
IF ~~ EXIT
END
IF ~~ fayflt1.14.2
SAY @170 = @171 = @172 = @173 = @174 = @175 = @176
IF ~~ EXIT
END
IF ~~ fayflt1.14.3
SAY @180 = @181 = @182
IF ~~ THEN REPLY @183 EXIT
END

IF ~~ fayflt1.15.1                  // streambath 1
SAY @190 = @191 = @192
++ @193 + fayflt1.15.1.1
END
IF ~~ fayflt1.15.1.1
SAY @194 = @195 = @196 = @197 = @198 = @199
IF ~~ EXIT
END

IF ~~ fayflt1.15.2                  // streambath 2
SAY @210 = @211
++ @212 + fayflt1.15.2.1
END
IF ~~ fayflt1.15.2.1
SAY @213 = @214 = @215 = @216 = @217
IF ~~ EXIT
END

IF ~~ fayflt1.16                    // holdbath
SAY @220 = @221 = @222 = @223
++ @224 EXIT
END

// Purchase Jini's Lamp

EXTEND_BOTTOM WMART2 1
IF ~G("RJParkFY",0)
    G("RJFayBig",1)
    GLT("RJFayLamp",8)~ THEN REPLY @870 DO ~SetGlobal("RJKesaiSolarStay","GLOBAL",1)~ GOTO RJBuyLamp
END

CHAIN WMART2 RJBuyLamp
@871 = @872
== RJFAY @873 = @874
== WMART2 @875
== RJFAY @876
END
++ @877 DO ~TakePartyGold(50)~ EXTERN WMART2 RJBuyLamp1

CHAIN WMART2 RJBuyLamp1
@878 DO ~SetGlobal("RJFayLamp","GLOBAL",8)
         RealSetGlobalTimer("RJFayLampTime","GLOBAL",ONE_DAY)
         ActionOverride("RJFAY",CreateItem("RJLAMPJI",1,0,0))
         AddJournalEntry(@9066,INFO)~
END
++ @879 EXIT

// Dealing with the pleasure slave in the lamp

CHAIN IF ~AreaCheck("RJW604")
          InMyArea("RJKSLAVE")~ THEN PLAYER1 lampslave
@920
== KSLAVE01 @921 = @922
== PLAYER1 @923 = @924
== RJFAY @925
== KSLAVE01 @926
== RJFAY @927
== KSLAVE01 @928
== RJFAY @929
== PLAYER1 @946 DO ~CreateCreature("RJGENIE",[-1.-1],0)~
== PLAYER1 @930
== RJGENIE @931
== PLAYER1 @932 = @933 = @934
== RJGENIE @935 = @936 DO ~ActionOverride("RJGENIE",DestroySelf())
                           ActionOverride("RJKSLAVE",DestroySelf())~
== PLAYER1 @937
== RJFAY @938
== PLAYER1 @939 = @940 = @941
== RJFAY @942 = @943 = @944
== PLAYER1 @945
END
IF ~~ THEN DO ~SetGlobal("RJFayJini","GLOBAL",1)~ EXIT

// Dealing with the genie2 in the lamp

CHAIN IF ~AreaCheck("RJW605")
          InMyArea("RJKGENIE")~ THEN PLAYER1 lampgenie
@950 DO ~CreateCreature("RJGENIE",[-1.-1],0)~
== KGENIE2 @951
== RJGENIE @952
== KGENIE2 @953
== PLAYER1 @954 = @955
== KGENIE2 @956
== PLAYER1 @957
== RJGENIE @958
== RJFAY @959 = @960
== KGENIE2 @961
== RJFAY @962 = @963
== PLAYER1 @964
== RJGENIE @965 DO ~ActionOverride("RJGENIE",DestroySelf())~
== KGENIE2 @966 DO ~ActionOverride("RJKGENIE",DestroySelf())~
== PLAYER1 @967
== RJFAY @968 = @969
== PLAYER1 @970
END
IF ~~ THEN EXIT

// Dealing with the genie1 in the lamp

CHAIN IF ~AreaCheck("RJW606")
          InMyArea("RJKGENI1")~ THEN PLAYER1 lampgeni1
@980 DO ~CreateCreature("RJGENIE",[-1.-1],0)~
== KGENIE1 @981
== RJGENIE @982 = @983
== KGENIE1 @984
== RJGENIE @985
== RJFAY @986 = @987 = @988
== KGENIE1 @989 DO ~ActionOverride("RJKGENI1",DestroySelf())~
== RJGENIE @990 DO ~ActionOverride("RJGENIE",DestroySelf())~
== PLAYER1 @991
== RJFAY @992
END
IF ~~ THEN EXIT
