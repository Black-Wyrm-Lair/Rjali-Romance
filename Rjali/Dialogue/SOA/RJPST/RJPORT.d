
BEGIN RJPORT

// Portal stone inactive

IF ~IsGabber(Player1)
    G("RJPort",9)~ THEN BEGIN DeadPort
SAY @22
IF ~~ THEN EXIT
END

// Fay protects her 1st moment

IF ~IsGabber(Player1)
    G("RJPort",1)
    AreaCheck("RJ0602")
    G("RJFay1st",2)~ THEN BEGIN FaySulks
SAY @17
IF ~~ THEN EXIT
END

// Other port stoppage

IF ~IsGabber(Player1)
    G("RJPortStop",1)~ THEN BEGIN StopPort
SAY @18
IF ~~ THEN EXIT
END

// Visiting Jini

IF ~IsGabber(Player1)~ THEN BEGIN Portal
SAY @0
IF ~~ THEN REPLY @11 EXIT
IF ~G("RJPort",0)
    G("RJXPN",0)
    !G("RJRavelOrphans",4)
    !G("RJiniiJID1",2)
    !G("RJiniiJIDND",2)
    !G("RJiniiJIDDK",2)
    !G("RJiniiJIDMR",2)
    !G("RJiniiJIDMR",5)
    !G("RJiniiJIDMR",9)
    !G("RJiniiJIDAD",3)
    !G("RJSobethJID",1)
    !AreaCheck("AR4000")
    !AreaCheck("AR6200")~ THEN REPLY @6 DO ~
                         SetGlobal("RJiniiPID","GLOBAL",1)
                         ActionOverride(Player1,CreateCreature("RJINII",[-1.-1],0))~ EXIT

IF ~G("RJPort",0) 
    G("RJiniLoc",1)
    GLT("Chapter",%bg2_chapter_8%)
    !G("RJiniiJIDMR",2)
    !G("RJiniiJIDMR",5)
    !G("RJiniiJIDMR",9)
    !G("RJiniiJIDAD",3)
    !G("RJSobethJID",1)~ THEN REPLY @1 DO ~
                         StartCutSceneMode()
                         StartCutScene("RJSCUTFH")~ EXIT

IF ~G("RJPort",0) 
    G("RJiniLoc",1)
    GGT("Chapter",%bg2_chapter_7%)
    !G("RJRavelOrphans",4)
    !G("RJiniiJIDND",2)
    !G("RJiniiJIDDK",2)
    !AreaCheck("AR4000")
    !AreaCheck("AR4500")
    !AreaCheck("AR6200")~ THEN REPLY @1 DO ~
                          StartCutSceneMode()
                          StartCutScene("RJSCUTFH")~ EXIT

IF ~G("RJPort",0) 
    G("RJiniLoc",2)
    GLT("Chapter",%bg2_chapter_8%)
    !G("RJiniiJIDMR",2)
    !G("RJiniiJIDMR",5)
    !G("RJiniiJIDMR",9)
    !G("RJiniiJIDAD",3)
    !G("RJSobethJID",1)~ THEN REPLY @1 DO ~
                         StartCutSceneMode()
                         StartCutScene("RJSCUTBR")~ EXIT

IF ~G("RJPort",0) 
    G("RJiniLoc",2)
    GGT("Chapter",%bg2_chapter_7%)
    !G("RJRavelOrphans",4)
    !G("RJiniiJIDND",2)
    !G("RJiniiJIDDK",2)
    !AreaCheck("AR4000")
    !AreaCheck("AR4500")
    !AreaCheck("AR6200")~ THEN REPLY @1 DO ~
                          StartCutSceneMode()
                          StartCutScene("RJSCUTBR")~ EXIT

IF ~G("RJPort",0)
    G("RJiniLoc",1)
    GLT("Chapter",%bg2_chapter_8%)
    GGT("RJiniiJIDAD",2)
    !G("RJiniiJID1",2)
    !G("RJSobethJID",1)~ THEN REPLY @4 DO ~
                         StorePartyLocations()
                         StartCutSceneMode()
                         StartCutScene("RJPCUTFH")~ EXIT

IF ~G("RJPort",0)
    G("RJiniLoc",1)
    GGT("Chapter",%bg2_chapter_7%)
    !G("RJiniiJID1",2)
    !AreaCheck("AR4000")
    !AreaCheck("AR4500")
    !AreaCheck("AR6200")~ THEN REPLY @4 DO ~
                         StorePartyLocations()
                         StartCutSceneMode()
                         StartCutScene("RJPCUTFH")~ EXIT

IF ~G("RJPort",0)
    G("RJiniLoc",2)
    GLT("Chapter",%bg2_chapter_8%)
    GGT("RJiniiJIDAD",2)
    !G("RJiniiJID1",2)
    !G("RJSobethJID",1)~ THEN REPLY @4 DO ~
                         StorePartyLocations()
                         StartCutSceneMode()
                         StartCutScene("RJPCUTBR")~ EXIT

IF ~G("RJPort",0)
    GLT("Chapter",%bg2_chapter_8%)
    G("RJSobethJID",1)~ THEN REPLY @13 DO ~
                         StorePartyLocations()
                         StartCutSceneMode()
                         StartCutScene("RJPCUTBR")~ EXIT

IF ~G("RJPort",0)
    G("RJiniLoc",2)
    GGT("Chapter",%bg2_chapter_7%)
    !G("RJiniiJID1",2)
    !AreaCheck("AR4000")
    !AreaCheck("AR4500")
    !AreaCheck("AR6200")~ THEN REPLY @4 DO ~
                         StorePartyLocations()
                         StartCutSceneMode()
                         StartCutScene("RJPCUTBR")~ EXIT

IF ~G("RJPort",2) G("RJRavelOP",1) !AreaCheck("RJ0610")~ THEN REPLY @7 DO ~
                         StartCutSceneMode()
                         StartCutScene("RJPCUTRV")~ EXIT
IF ~G("RJPort",2) G("RJMorteOP",1) !AreaCheck("RJ1001")~ THEN REPLY @10 DO ~
                         StartCutSceneMode()
                         StartCutScene("RJPCUTMR")~ EXIT
IF ~G("RJPort",2) G("RJFhjullOP",1) !AreaCheck("RJ1101")~ THEN REPLY @8 DO ~
                         StartCutSceneMode()
                         StartCutScene("RJPCUTFJ")~ EXIT
IF ~G("RJPort",2) G("RJNordomOP",1) !AreaCheck("RJ13FY")
                                    !AreaCheck("RJ13FD")
                                    !AreaCheck("RJ13EN")
                                    !AreaCheck("RJ1301")
                                    !AreaCheck("RJ1302")~ THEN REPLY @9 DO ~
                         StartCutSceneMode()
                         StartCutScene("RJPCUTND")~ EXIT
IF ~G("RJPort",2) G("RJiniLoc",1) !AreaCheck("RJ0602")~ THEN REPLY @5 DO ~
                         StartCutSceneMode() 
                         StartCutScene("RJPCUTFH")~ EXIT
IF ~G("RJPort",2) G("RJiniLoc",2) !AreaCheck("RJ0605")~ THEN REPLY @5 DO ~
                         StartCutSceneMode()
                         StartCutScene("RJPCUTBR")~ EXIT
IF ~G("RJPort",2) !AreaCheck("RJ0602")~ THEN REPLY @12 DO ~
                         StartCutSceneMode()
                         StartCutScene("RJPCUTFH")~ EXIT
IF ~G("RJPort",2) !AreaCheck("RJ0605")~ THEN REPLY @13 DO ~
                         StartCutSceneMode() 
                         StartCutScene("RJPCUTBR")~ EXIT

IF ~G("RJPort",1)
    AreaCheck("RJ0602")~ THEN REPLY @21 DO ~ActionOverride(Player1,LeaveAreaLUA("RJ0605","",[1380.1670],8))~ EXIT
IF ~G("RJPort",1)
    AreaCheck("RJ0605")~ THEN REPLY @20 DO ~ActionOverride(Player1,LeaveAreaLUA("RJ0602","",[1580.1270],8))~ EXIT
IF ~G("RJPort",1)
    GLT("Chapter",%bg2_chapter_8%)
    OR(2) AreaCheck("RJ0602") AreaCheck("RJ0605")~ THEN REPLY @2 DO ~
                         StartCutSceneMode()
                         StartCutScene("RJPCUTRT")~ EXIT
IF ~G("RJPort",1)
    GGT("Chapter",%bg2_chapter_7%)
    OR(2) AreaCheck("RJ0602") AreaCheck("RJ0605")~ THEN REPLY @2 DO ~
                         ActionOverride(Player1,AddSpecialAbility("SPIN649"))
                         StartCutSceneMode()
                         StartCutScene("RJPCUTRT")~ EXIT
                         
IF ~G("RJPort",2)
    GLT("Chapter",%bg2_chapter_8%)
    OR(2) AreaCheck("RJ0602") AreaCheck("RJ0605")~ THEN REPLY @3 DO ~
                         StartCutSceneMode() 
                         StartCutScene("RJPCUTRT")~ EXIT
IF ~G("RJPort",2)
    GGT("Chapter",%bg2_chapter_7%)
    OR(2) AreaCheck("RJ0602") AreaCheck("RJ0605")~ THEN REPLY @3 DO ~
                         ActionOverride(Player1,AddSpecialAbility("SPIN649"))
                         StartCutSceneMode() 
                         StartCutScene("RJPCUTRT")~ EXIT
IF ~G("RJPort",2) G("RJiniiJIDND",8) AreaCheck("RJ13EN")~ THEN REPLY @14 GOTO portal1
END

//  The maze opens

IF ~~ THEN BEGIN portal1
SAY @15
IF ~~ THEN REPLY @16 DO ~SetGlobal("RJiniiJIDND","GLOBAL",9)~ EXIT
END
