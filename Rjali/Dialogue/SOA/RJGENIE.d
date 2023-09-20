
APPEND RJGENIE

//  Horace's Keep Plot Knudge

IF ~G("RJKeepKnudge",1)~ THEN BEGIN keepknudge
  SAY @82
  IF ~GLT("KeepPlot",6)~ THEN REPLY @81 DO ~SetGlobal("RJGenieKnudge","GLOBAL",9) SetGlobal("RJKeepKnudge","GLOBAL",2)~ EXIT
  IF ~GGT("KeepPlot",5)~ THEN REPLY @81 DO ~SetGlobal("RJGenieKnudge","GLOBAL",9) SetGlobal("RJKeepKnudge","GLOBAL",9)~ EXIT
END

//  Horace's Mage Plot Knudge

IF ~G("RJMageKnudge",1)~ THEN BEGIN mageknudge
  SAY @94
  IF ~~ THEN REPLY @81 DO ~SetGlobal("RJGenieKnudge","GLOBAL",9) SetGlobal("RJMageKnudge","GLOBAL",2)~ EXIT
END

//  Horace's Druid Plot Knudge

IF ~G("RJDruidKnudge",1)
    G("RJSpiritGoose",0)~ THEN BEGIN druidknudge
  SAY @95
  IF ~~ THEN REPLY @81 DO ~SetGlobal("RJGenieKnudge","GLOBAL",9) SetGlobal("RJDruidKnudge","GLOBAL",9) SetGlobal("RJSpiritGoose","GLOBAL",2)~ EXIT
END

IF ~G("RJDruidKnudge",1)
    G("RJSpiritGoose",1)~ THEN BEGIN druidknudge2
  SAY @75
  IF ~~ THEN REPLY @81 DO ~SetGlobal("RJGenieKnudge","GLOBAL",9) SetGlobal("RJDruidKnudge","GLOBAL",9) SetGlobal("RJSpiritGoose","GLOBAL",2)~ EXIT
END

//  Horace's Bard Plot Knudge

IF ~G("RJBardKnudge",1)~ THEN BEGIN bardknudge
  SAY @93
  IF ~!G("BardPlot1",50)~ THEN REPLY @81 DO ~SetGlobal("RJGenieKnudge","GLOBAL",9) SetGlobal("RJBardKnudge","GLOBAL",2)~ EXIT
  IF ~G("BardPlot1",50)~ THEN REPLY @81 DO ~SetGlobal("RJGenieKnudge","GLOBAL",9) SetGlobal("RJBardKnudge","GLOBAL",9)~ EXIT
END

//  Horace's services

//  Calling the lamp

IF ~G("RJGenie",4)~ THEN BEGIN call
  SAY @85 = @96
IF ~~ THEN REPLY @97 DO ~SetGlobal("RJGenie","GLOBAL",0) DestroySelf()~ EXIT
IF ~HasItem("RJLAMP2",Player1)
    G("RJPort",0)
    !AreaCheck("RJ0602")
    !AreaCheck("RJ0605")
    !AreaCheck("RJ0610")
    !AreaCheck("RJ1001")
    !AreaCheck("RJ1101")
    !AreaCheck("RJ1301")
    !AreaCheck("RJ1302")
    !AreaCheck("RJ13FY")
    !AreaCheck("RJ13EN")
    !AreaCheck("RJ13FD")
    !AreaCheck("AR4000")
    !AreaCheck("AR4500")
    !AreaCheck("AR6200")~ THEN REPLY @87 GOTO tourist2
IF ~G("RJCheat",1)
    HasItem("RJLAMP2",Player1)
    GGT("RJCntParked",0)
    !AreaCheck("AR1304")
    !AreaCheck("AR1305")
    !AreaCheck("AR1306")
    !AreaCheck("AR1307")
    G("RJPort",0)~ THEN REPLY @170 GOTO tourist7
IF ~G("RJCheat",1)~ THEN REPLY @88 GOTO tourist3
IF ~G("RJCheat",1)~ THEN REPLY @89 GOTO tourist4
IF ~G("RJGenieToB1",0)
    HasItem("RJLAMP2",Player1)~ THEN REPLY @150 DO ~SetGlobal("RJGenieToB1","GLOBAL",1)~ GOTO tourist1.7
IF ~G("RJGenieToB1",1)
    HasItem("RJLAMP2",Player1)
    G("RJFayBig",0)
    G("RJPRTKS",0)~ THEN REPLY @78
                     DO ~StartCutSceneMode()
                         StartCutScene("RJROPKSE")~
                         EXIT
IF ~G("RJGenieToB1",1)
    HasItem("RJLAMP2",Player1)
    G("RJFayBig",1)
    G("RJPRTKS",0)~ THEN REPLY @78
                     DO ~StartCutSceneMode()
                         StartCutScene("RJROPKBE")~
                         EXIT 
IF ~G("RJGenieToB1",1)
    HasItem("RJLAMP2",Player1)
    G("RJFayBig",0)
    G("RJPRTKS",1)~ THEN REPLY @78
                     DO ~StartCutSceneMode()
                         StartCutScene("RJROPKSS")~
                         EXIT
IF ~G("RJGenieToB1",1)
    HasItem("RJLAMP2",Player1)
    G("RJFayBig",1)
    G("RJPRTKS",1)~ THEN REPLY @78
                     DO ~StartCutSceneMode()
                         StartCutScene("RJROPKBS")~
                         EXIT
IF ~G("RJGenieToB1",1)
    HasItem("RJLAMP2",Player1)
    InParty("Imoen2")
    !G("IRTLoveMeter",0)~ THEN REPLY @164 GOTO tourist1.7.9
IF ~HasItem("RJLAMP2",Player1)~ THEN REPLY @800 GOTO tourist0
END

// Turn cheating on and off

IF ~~ THEN BEGIN tourist0
  SAY @801
IF ~~ THEN REPLY @804 GOTO tourist0.0
IF ~G("RJCheat",0)~ THEN REPLY @802 GOTO tourist0.1
IF ~G("RJCheat",1)~ THEN REPLY @803 GOTO tourist0.2
END

IF ~~ THEN BEGIN tourist0.0
  SAY @79
IF ~~ THEN DO ~SetGlobal("RJGenie","GLOBAL",0)
               DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN tourist0.1
  SAY @79
IF ~~ THEN DO ~SetGlobal("RJGenie","GLOBAL",0)
               SetGlobal("RJCheat","GLOBAL",1)
               DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN tourist0.2
  SAY @79
IF ~~ THEN DO ~SetGlobal("RJGenie","GLOBAL",0)
               SetGlobal("RJCheat","GLOBAL",0)
               DestroySelf()~ EXIT
END

//  Rubbing the lamp

IF ~G("RJGenie",1)~ THEN BEGIN rub
  SAY @85 = @86
  IF ~HasItem("RJLAMP",Player1) 
      G("RJTeleport",1)
      !AreaCheck("AR4000") 
      !AreaCheck("AR4500")~ THEN DO ~SetGlobal("RJGenie","GLOBAL",2)~ GOTO tourist1.1
  IF ~HasItem("RJLAMP",Player1)
      OR(3) 
        !G("RJTeleport",1) 
        AreaCheck("AR4000") 
        AreaCheck("AR4500")~ THEN DO ~SetGlobal("RJGenie","GLOBAL",2)~ GOTO tourist1.2
  IF ~!HasItem("RJLAMP",Player1)~ THEN DO ~SetGlobal("RJGenie","GLOBAL",2)~ GOTO tourist1.3
END

IF ~~ THEN BEGIN tourist1.1
  SAY @91 = @84
IF ~~ THEN REPLY @92 DO ~SetGlobal("RJGenie","GLOBAL",0) DestroySelf()~ EXIT
IF ~G("RJPort",0)
    !AreaCheck("RJ0602")
    !AreaCheck("RJ0605")
    !AreaCheck("RJ0610")
    !AreaCheck("RJ1001")
    !AreaCheck("RJ1101")
    !AreaCheck("RJ1301")
    !AreaCheck("RJ1302")
    !AreaCheck("RJ13FY")
    !AreaCheck("RJ13EN")
    !AreaCheck("RJ13FD")
    !AreaCheck("AR4000")
    !AreaCheck("AR4500")
    !AreaCheck("AR6200")~ THEN REPLY @87 GOTO tourist2
IF ~G("RJCheat",1)
    GGT("RJCntParked",0)
    !AreaCheck("AR1304")
    !AreaCheck("AR1305")
    !AreaCheck("AR1306")
    !AreaCheck("AR1307")
    G("RJPort",0)~ THEN REPLY @170 GOTO tourist7
IF ~G("RJFayBig",0)
    G("RJPRTKS",0)~ THEN REPLY @90
                     DO ~StartCutSceneMode()
                         StartCutScene("RJROSTSE")~
                         EXIT
IF ~G("RJFayBig",1)
    G("RJPRTKS",0)~ THEN REPLY @90
                     DO ~StartCutSceneMode()
                         StartCutScene("RJROSTBE")~
                         EXIT
IF ~G("RJFayBig",0)
    G("RJPRTKS",1)~ THEN REPLY @90
                     DO ~StartCutSceneMode()
                         StartCutScene("RJROSTSS")~
                         EXIT
IF ~G("RJFayBig",1)
    G("RJPRTKS",1)~ THEN REPLY @90
                     DO ~StartCutSceneMode()
                         StartCutScene("RJROSTBS")~
                         EXIT
IF ~G("RJCheat",1)~ THEN REPLY @88 GOTO tourist3
IF ~G("RJCheat",1)~ THEN REPLY @89 GOTO tourist4
IF ~~ THEN REPLY @800 GOTO tourist0
IF ~!G("RJSpeedCtl",0) GLT("Chapter",%bg2_chapter_8%)~ THEN REPLY @805 GOTO tourist1.8
END

IF ~~ THEN BEGIN tourist1.2
  SAY @91
IF ~~ THEN REPLY @92 DO ~SetGlobal("RJGenie","GLOBAL",0) DestroySelf()~ EXIT
IF ~G("RJCheat",1)
    GGT("RJCntParked",0)
    !AreaCheck("AR1304")
    !AreaCheck("AR1305")
    !AreaCheck("AR1306")
    !AreaCheck("AR1307")
    G("RJPort",0)~ THEN REPLY @170 GOTO tourist7
IF ~G("RJFayBig",0)
    G("RJPRTKS",0)
    GGT("Chapter",%bg2_chapter_1%)~ THEN REPLY @90
                     DO ~StartCutSceneMode()
                         StartCutScene("RJROSTSE")~
                         EXIT
IF ~G("RJFayBig",1)
    G("RJPRTKS",0)
    GGT("Chapter",%bg2_chapter_1%)~ THEN REPLY @90
                     DO ~StartCutSceneMode()
                         StartCutScene("RJROSTBE")~
                         EXIT
IF ~G("RJFayBig",0)
    G("RJPRTKS",1)
    GGT("Chapter",%bg2_chapter_1%)~ THEN REPLY @90
                     DO ~StartCutSceneMode()
                         StartCutScene("RJROSTSS")~
                         EXIT
IF ~G("RJFayBig",1)
    G("RJPRTKS",1)
    GGT("Chapter",%bg2_chapter_1%)~ THEN REPLY @90
                     DO ~StartCutSceneMode()
                         StartCutScene("RJROSTBS")~
                         EXIT
IF ~G("RJCheat",1)~ THEN REPLY @88 GOTO tourist3
IF ~G("RJCheat",1)~ THEN REPLY @89 GOTO tourist4
IF ~~ THEN REPLY @800 GOTO tourist0
IF ~!G("RJSpeedCtl",0) GLT("Chapter",%bg2_chapter_8%)~ THEN REPLY @805 GOTO tourist1.8
END

IF ~~ THEN BEGIN tourist1.3
  SAY @83
IF ~~ THEN REPLY @92 DO ~SetGlobal("RJGenie","GLOBAL",0) DestroySelf()~ EXIT
IF ~G("RJCheat",1)~ THEN REPLY @88 GOTO tourist3
IF ~G("RJCheat",1)~ THEN REPLY @89 GOTO tourist4
END

IF ~~ THEN BEGIN tourist1.7
  SAY @151 = @152 = @153 = @154 = @155 = @156 = @157
IF ~InParty("Imoen2")
    !G("IRTLoveMeter",0)~ THEN GOTO tourist1.7.1
IF ~OR(2)
      !InParty("Imoen2")
      G("IRTLoveMeter",0)~ THEN GOTO tourist1.7.2
END

IF ~~ THEN BEGIN tourist1.7.1
  SAY @161 = @162 = @163
IF ~~ THEN GOTO tourist1.7.2
END

IF ~~ THEN BEGIN tourist1.7.2
  SAY @158 = @159
IF ~~ THEN REPLY @160 DO ~SetGlobal("RJGenie","GLOBAL",0) DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN tourist1.7.9
  SAY @165
IF ~~ THEN REPLY @81 DO ~SetGlobal("RJGenie","GLOBAL",0) DestroySelf()~ EXIT
END

// Turn expedited parking on and off

IF ~~ THEN BEGIN tourist1.8
  SAY @801
IF ~~ THEN REPLY @804 GOTO tourist0.0
IF ~G("RJSpeedCtl",1)~ THEN REPLY @98 GOTO tourist1.8.1
IF ~G("RJSpeedCtl",2)~ THEN REPLY @99 GOTO tourist1.8.2
END

IF ~~ THEN BEGIN tourist1.8.1
  SAY @79
IF ~~ THEN DO ~SetGlobal("RJGenie","GLOBAL",0)
               SetGlobal("RJSpeedCtl","GLOBAL",2)
               DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN tourist1.8.2
  SAY @79
IF ~~ THEN DO ~SetGlobal("RJGenie","GLOBAL",0) 
               SetGlobal("RJSpeedCtl","GLOBAL",1) 
               DestroySelf()~ EXIT
END

// Teleport to various SOA areas from TOB

IF ~~ THEN BEGIN tourist2
  SAY @100
  IF ~~ THEN REPLY @80 GOTO tourist1.3
  IF ~!G("RjaliChallenge5",0)~ THEN REPLY @125 DO ~DestroySelf() StartCutSceneMode() StartCutScene("RJORCUT2")~ EXIT
  IF ~~ THEN REPLY @124 DO ~DestroySelf() StartCutSceneMode() StartCutScene("RJGCUT00")~ EXIT
  IF ~~ THEN REPLY @101 DO ~DestroySelf() StartCutSceneMode() StartCutScene("RJGCUT01")~ EXIT
  IF ~~ THEN REPLY @102 DO ~DestroySelf() StartCutSceneMode() StartCutScene("RJGCUT02")~ EXIT
  IF ~~ THEN REPLY @103 DO ~DestroySelf() StartCutSceneMode() StartCutScene("RJGCUT03")~ EXIT
  IF ~~ THEN REPLY @104 DO ~DestroySelf() StartCutSceneMode() StartCutScene("RJGCUT04")~ EXIT
  IF ~~ THEN REPLY @105 DO ~DestroySelf() StartCutSceneMode() StartCutScene("RJGCUT05")~ EXIT
  IF ~~ THEN REPLY @106 DO ~DestroySelf() StartCutSceneMode() StartCutScene("RJGCUT06")~ EXIT
  IF ~~ THEN REPLY @107 DO ~DestroySelf() StartCutSceneMode() StartCutScene("RJGCUT07")~ EXIT
  IF ~~ THEN REPLY @108 DO ~DestroySelf() StartCutSceneMode() StartCutScene("RJGCUT08")~ EXIT
  IF ~~ THEN REPLY @109 DO ~DestroySelf() StartCutSceneMode() StartCutScene("RJGCUT09")~ EXIT
  IF ~~ THEN REPLY @110 DO ~DestroySelf() StartCutSceneMode() StartCutScene("RJGCUT10")~ EXIT
  IF ~~ THEN REPLY @111 DO ~DestroySelf() StartCutSceneMode() StartCutScene("RJGCUT11")~ EXIT
  IF ~~ THEN REPLY @112 DO ~DestroySelf() StartCutSceneMode() StartCutScene("RJGCUT12")~ EXIT
  IF ~~ THEN REPLY @113 DO ~DestroySelf() StartCutSceneMode() StartCutScene("RJGCUT13")~ EXIT
  IF ~~ THEN REPLY @114 DO ~DestroySelf() StartCutSceneMode() StartCutScene("RJGCUT14")~ EXIT
  IF ~~ THEN REPLY @115 DO ~DestroySelf() StartCutSceneMode() StartCutScene("RJGCUT15")~ EXIT
  IF ~~ THEN REPLY @116 DO ~DestroySelf() StartCutSceneMode() StartCutScene("RJGCUT16")~ EXIT
  IF ~~ THEN REPLY @117 DO ~DestroySelf() StartCutSceneMode() StartCutScene("RJGCUT17")~ EXIT
  IF ~~ THEN REPLY @118 DO ~DestroySelf() StartCutSceneMode() StartCutScene("RJGCUT18")~ EXIT
  IF ~~ THEN REPLY @119 DO ~DestroySelf() StartCutSceneMode() StartCutScene("RJGCUT19")~ EXIT
  IF ~~ THEN REPLY @120 DO ~DestroySelf() StartCutSceneMode() StartCutScene("RJGCUT20")~ EXIT
  IF ~~ THEN REPLY @121 DO ~DestroySelf() StartCutSceneMode() StartCutScene("RJGCUT21")~ EXIT
  IF ~~ THEN REPLY @122 DO ~DestroySelf() StartCutSceneMode() StartCutScene("RJGCUT22")~ EXIT
  IF ~~ THEN REPLY @123 DO ~DestroySelf() StartCutSceneMode() StartCutScene("RJGCUT23")~ EXIT
END

// Request various services

IF ~~ THEN BEGIN tourist3
  SAY @200
  IF ~~ THEN REPLY @80 DO ~SetGlobal("RJGenie","GLOBAL",0) DestroySelf()~ EXIT
  IF ~~ THEN REPLY @207 DO ~AddXPObject(LastTalkedToBy,100000) SetGlobal("RJGenie","GLOBAL",0) DestroySelf()~ EXIT
  IF ~~ THEN REPLY @208 DO ~AddXPObject(LastTalkedToBy,1000000) SetGlobal("RJGenie","GLOBAL",0) DestroySelf()~ EXIT
  IF ~~ THEN REPLY @212 DO ~ReallyForceSpell(LastTalkedToBy,DECK_MOON) SetGlobal("RJGenie","GLOBAL",0) DestroySelf()~ EXIT
  IF ~~ THEN REPLY @201 DO ~ReallyForceSpell(LastTalkedToBy,GAIN_ONE_STR_PERMANENT) SetGlobal("RJGenie","GLOBAL",0) DestroySelf()~ EXIT
  IF ~~ THEN REPLY @202 DO ~ReallyForceSpell(LastTalkedToBy,GAIN_ONE_DEX_PERMANENT) SetGlobal("RJGenie","GLOBAL",0) DestroySelf()~ EXIT
  IF ~~ THEN REPLY @203 DO ~ReallyForceSpell(LastTalkedToBy,GAIN_ONE_CON_PERMANENT) SetGlobal("RJGenie","GLOBAL",0) DestroySelf()~ EXIT
  IF ~~ THEN REPLY @204 DO ~ReallyForceSpell(LastTalkedToBy,GAIN_ONE_INT_PERMANENT) SetGlobal("RJGenie","GLOBAL",0) DestroySelf()~ EXIT
  IF ~~ THEN REPLY @205 DO ~ReallyForceSpell(LastTalkedToBy,GAIN_ONE_WIS_PERMANENT) SetGlobal("RJGenie","GLOBAL",0) DestroySelf()~ EXIT
  IF ~~ THEN REPLY @206 DO ~ReallyForceSpell(LastTalkedToBy,GAIN_ONE_CHA_PERMANENT) SetGlobal("RJGenie","GLOBAL",0) DestroySelf()~ EXIT
  IF ~~ THEN REPLY @210 DO ~GiveGoldForce(10000) SetGlobal("RJGenie","GLOBAL",0) DestroySelf()~ EXIT
  IF ~~ THEN REPLY @211 DO ~GiveGoldForce(100000) SetGlobal("RJGenie","GLOBAL",0) DestroySelf()~ EXIT
  IF ~~ THEN REPLY @213 DO ~ReputationInc(1) SetGlobal("RJGenie","GLOBAL",0) DestroySelf()~ EXIT
END

// Request various items

IF ~~ THEN BEGIN tourist4
  SAY @250
  IF ~~ THEN REPLY @80 DO ~SetGlobal("RJGenie","GLOBAL",0) DestroySelf()~ EXIT
  IF ~~ THEN REPLY @264 DO ~ReallyForceSpellRES("RJITBG",LastTalkedToBy(Myself))
                            ReallyForceSpellRES("RJIVALL",LastTalkedToBy(Myself))
                            SetGlobal("RJGenie","GLOBAL",0) 
                            DestroySelf()~ EXIT
  IF ~~ THEN REPLY @265 DO ~ReallyForceSpellRES("RJIVALL",LastTalkedToBy(Myself))
                            SetGlobal("RJGenie","GLOBAL",0) 
                            DestroySelf()~ EXIT
  IF ~~ THEN REPLY @251 DO ~GiveItemCreate("RJSW1H",LastTalkedToBy,0,0,0)~ GOTO tourist4
  IF ~~ THEN REPLY @252 DO ~GiveItemCreate("RJAXE",LastTalkedToBy,0,0,0)~ GOTO tourist4
  IF ~~ THEN REPLY @253 DO ~GiveItemCreate("RJRING",LastTalkedToBy,0,0,0)~ GOTO tourist4
  IF ~~ THEN REPLY @254 DO ~GiveItemCreate("RJBOOT",LastTalkedToBy,0,0,0)~ GOTO tourist4
  IF ~~ THEN REPLY @255 DO ~GiveItemCreate("RJCLCK",LastTalkedToBy,0,0,0)~ GOTO tourist4
  IF ~~ THEN REPLY @256 DO ~GiveItemCreate("RJSHLD",LastTalkedToBy,0,0,0)~ GOTO tourist4
  IF ~~ THEN REPLY @257 DO ~GiveItemCreate("RJBRAC",LastTalkedToBy,0,0,0)~ GOTO tourist4
  IF ~~ THEN REPLY @258 DO ~GiveItemCreate("RJAMUL",LastTalkedToBy,0,0,0)~ GOTO tourist4
  IF ~~ THEN REPLY @259 DO ~GiveItemCreate("RJCHAN",LastTalkedToBy,0,0,0)~ GOTO tourist4
  IF ~~ THEN REPLY @260 DO ~GiveItemCreate("RJMASK",LastTalkedToBy,0,0,0)~ GOTO tourist4
  IF ~~ THEN REPLY @261 DO ~GiveItemCreate("RJBOOK",LastTalkedToBy,0,0,0)~ GOTO tourist4
  IF ~~ THEN REPLY @262 DO ~GiveItemCreate("RJBAG1",LastTalkedToBy,0,0,0)~ GOTO tourist4
  IF ~~ THEN REPLY @263 DO ~GiveItemCreate("RJBAG2",LastTalkedToBy,0,0,0)~ GOTO tourist4
END

// Request major status updates

IF ~G("RJGenie",2)
    G("RJRoster",3)~ THEN BEGIN tourist5
  SAY @450
IF ~~ THEN REPLY @451 GOTO tourist5.0
IF ~~ THEN REPLY @453 EXTERN RJGENIE tourist5.1
IF ~G("RJCheat",1)
    GLT("Chapter",%bg2_chapter_8%)
    G("RJPort",0)~ THEN REPLY @456 EXTERN RJGENIE tourist5.2
IF ~G("RJCheat",1)
    GGT("Chapter",%bg2_chapter_7%)
    G("RJPort",0)~ THEN REPLY @456 EXTERN RJGENIE tourist5.3
IF ~G("RJCheat",1)
    GLT("Chapter",%bg2_chapter_8%)
    G("RJPort",0)~ THEN REPLY @790 GOTO tourist5.9
IF ~InParty("Imoen2")
    !G("IRTLoveMeter",0)~ THEN REPLY @508 GOTO tourist5.5
IF ~G("RJCheat",1)
    GLT("Chapter",%bg2_chapter_8%)
    AreaType(OUTDOOR)
    G("RJPort",0)~ THEN REPLY @454 GOTO tourist5.6
IF ~G("RJCheat",1)
    G("RJPort",0)~ THEN REPLY @458 GOTO tourist5.7
IF ~G("RJLT",1)
    G("RJPort",0)~ THEN REPLY @775 GOTO tourist5.8
END

IF ~~ THEN BEGIN tourist5.0
  SAY @459
IF ~~ THEN DO ~SetGlobal("RJGenie","GLOBAL",0)
                          ActionOverride("RJPLAY0",DestroySelf())
                          ActionOverride("RJPLAY1",DestroySelf())
                          ActionOverride("RJPLAY2",DestroySelf())
                          ActionOverride("RJPLAY3",DestroySelf())
                          ActionOverride("RJPLAY4",DestroySelf())
                          ActionOverride("RJINVFY",DestroySelf())
                          ActionOverride("RJINVRJ",DestroySelf())
                          ActionOverride("RJINVJI",DestroySelf())
                          ActionOverride("RJINVEC",DestroySelf())
                          ActionOverride("RJINVNA",DestroySelf())
                          ActionOverride("RJINVAN",DestroySelf())
                          ActionOverride("RJINVGR",DestroySelf())
                          ActionOverride("RJINVRV",DestroySelf())
                          ActionOverride("RJINVAE",DestroySelf())
                          ActionOverride("RJINVNE",DestroySelf())
                          ActionOverride("RJINVJA",DestroySelf())
                          ActionOverride("RJINVVI",DestroySelf())
                          ActionOverride("RJINVBR",DestroySelf())
                          ActionOverride("RJINVIM",DestroySelf())
                          ActionOverride("RJINVSK",DestroySelf())
                          ActionOverride("RJINVPE",DestroySelf())
                          ActionOverride("RJINVAM",DestroySelf())
                          ActionOverride("RJINVNI",DestroySelf())
                          ActionOverride("RJINVSH",DestroySelf())
                          ActionOverride("RJINVSA",DestroySelf())
                          ActionOverride("RJINVDA",DestroySelf())
                          ActionOverride("RJINVFA",DestroySelf())
                          ActionOverride("RJINVIS",DestroySelf())
                          ActionOverride("RJINVTA",DestroySelf())
                          ActionOverride("RJINVSI",DestroySelf())
                          ActionOverride("RJINVTY",DestroySelf())
                          ActionOverride("RJINVYV",DestroySelf())
                          ActionOverride("RJINVTL",DestroySelf())
                          ActionOverride("RJINVKE",DestroySelf())
                          SetGlobal("RJRoster","GLOBAL",1)
                          DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN tourist5.5
  SAY @509
IF ~~ THEN GOTO tourist5
END

IF ~~ THEN BEGIN tourist5.6
  SAY @600
IF ~~ THEN REPLY @601 GOTO tourist5
IF ~GlobalTimerNotExpired("KPPlotTime","GLOBAL")
    OR(3)
      G("KeepPlot",4)
      G("KeepPlot",7)
      G("KeepPlot",8)~ THEN REPLY @602 DO ~SetGlobal("KPPlotTime","GLOBAL",0)~ GOTO tourist5
IF ~InParty("Mazzy")
    G("SpawnDanno",0)~ THEN REPLY @603 DO ~SetGlobal("SpawnDannoTimer","GLOBAL",0)~ GOTO tourist5
IF ~InParty("Jan")
    G("JanLissaPlot",0)~ THEN REPLY @604 DO ~SetGlobal("JanJoined","GLOBAL",0)~ GOTO tourist5
IF ~GlobalTimerNotExpired("TeolMessenger","GLOBAL")
    G("NatulaSpawn",0)~ THEN REPLY @605 DO ~SetGlobal("TeolMessenger","GLOBAL",0)~ GOTO tourist5
IF ~GlobalTimerNotExpired("DruidQuest2Begin","GLOBAL")
    G("DruidQuest2",0)~ THEN REPLY @606 DO ~SetGlobal("DruidQuest2Begin","GLOBAL",0) SetGlobal("RJSpiritGoose","GLOBAL",1)~ GOTO tourist5
IF ~GlobalTimerNotExpired("RJKERAT","GLOBAL")~ 
    THEN REPLY @607 DO ~SetGlobal("RJKERAT","GLOBAL",0)~ GOTO tourist5
END

END

CHAIN IF ~~ THEN RJGENIE tourist5.1
@466
== RJGENIE IF ~G("RJRosCnt",0) !InParty("Rjali")~ THEN @467
== RJINVFY IF ~GGT("RJFayMet",0) G("RJParkFY",0)~ THEN @472
BRANCH ~!G("RJPLAY0",999)~ BEGIN
== RJPLAY0 IF ~G("RJROM0",0)~ THEN @470
== RJPLAY0 IF ~G("RJROM0",1)~ THEN @471
== RJPLAY0 IF ~G("RJROM0",2)~ THEN @472
== RJPLAY0 IF ~G("RJROM0",3)~ THEN @473
== RJPLAY0 IF ~GGT("RJROM0",3)~ THEN @474
END
BRANCH ~!G("RJPLAY1",999)~ BEGIN
== RJPLAY1 IF ~G("RJROM1",0)~ THEN @470
== RJPLAY1 IF ~G("RJROM1",1)~ THEN @471
== RJPLAY1 IF ~G("RJROM1",2)~ THEN @472
== RJPLAY1 IF ~G("RJROM1",3)~ THEN @473
== RJPLAY1 IF ~GGT("RJROM1",3)~ THEN @474
END
BRANCH ~!G("RJPLAY2",999)~ BEGIN
== RJPLAY2 IF ~G("RJROM2",0)~ THEN @470
== RJPLAY2 IF ~G("RJROM2",1)~ THEN @471
== RJPLAY2 IF ~G("RJROM2",2)~ THEN @472
== RJPLAY2 IF ~G("RJROM2",3)~ THEN @473
== RJPLAY2 IF ~GGT("RJROM2",3)~ THEN @474
END
BRANCH ~!G("RJPLAY3",999)~ BEGIN
== RJPLAY3 IF ~G("RJROM3",0)~ THEN @470
== RJPLAY3 IF ~G("RJROM3",1)~ THEN @471
== RJPLAY3 IF ~G("RJROM3",2)~ THEN @472
== RJPLAY3 IF ~G("RJROM3",3)~ THEN @473
== RJPLAY3 IF ~GGT("RJROM3",3)~ THEN @474
END
BRANCH ~!G("RJPLAY4",999)~ BEGIN
== RJPLAY4 IF ~G("RJROM4",0)~ THEN @470
== RJPLAY4 IF ~G("RJROM4",1)~ THEN @471
== RJPLAY4 IF ~G("RJROM4",2)~ THEN @472
== RJPLAY4 IF ~G("RJROM4",3)~ THEN @473
== RJPLAY4 IF ~GGT("RJROM4",3)~ THEN @474
END
== RJINVIM IF ~InParty("Imoen2")
               !G("IRTLoveMeter",0)~ THEN @507
== RJGENIE @480
== RJGENIE IF ~G("RJCntLoved",0)~ THEN @482
== RJINVRJ IF ~G("RJCntLoved",0) InParty("Rjali")~ THEN @483
== RJINVFY IF ~G("RJCntLoved",0) GGT("RJFayMet",0) G("RJParkFY",0)~ THEN @490
== RJGENIE IF ~!G("RJCntLoved",0)~ THEN @481
== RJGENIE IF ~G("RJCntLoved",1)~ THEN @475
== RJGENIE IF ~G("RJCntLoved",2)~ THEN @476
== RJGENIE IF ~G("RJCntLoved",3)~ THEN @477
== RJGENIE IF ~G("RJCntLoved",4)~ THEN @478
== RJGENIE IF ~GGT("RJCntLoved",4)~ THEN @479
== RJINVFY IF ~!G("RJCntLoved",0) GGT("RJFayMet",0) G("RJParkFY",0)~ THEN @490
== RJGENIE IF ~!G("RJCntBedded",0)~ THEN @484
== RJGENIE IF ~!G("RJCntWedded",0)~ THEN @485
== RJGENIE IF ~GGT("RJCntWedded",1)~ THEN @489
== RJGENIE IF ~!G("RJCntParked",0)~ THEN @487
== RJINVFY IF ~!G("RJParkFY",0)~ THEN @519
== RJINVAN IF ~!G("RJParkAN",0)~ THEN @496
== RJINVGR IF ~!G("RJParkGR",0)~ THEN @497
== RJINVRV IF ~!G("RJParkRV",0)~ THEN @498
== RJINVAE IF ~!G("RJParkAE",0)~ THEN @499
== RJINVNE IF ~!G("RJParkNE",0)~ THEN @500
== RJINVJA IF ~!G("RJParkJA",0)~ THEN @501
== RJINVVI IF ~!G("RJParkVI",0)~ THEN @502
== RJINVBR IF ~!G("RJParkBR",0)~ THEN @503
== RJINVIM IF ~!G("RJParkIM",0)~ THEN @504
== RJINVNA IF ~!G("RJParkNA",0)~ THEN @504
== RJINVSK IF ~!G("RJParkSK",0)~ THEN @506
== RJINVPE IF ~!G("RJParkPE",0)~ THEN @515
== RJINVAM IF ~!G("RJParkAM",0)~ THEN @510
== RJINVNI IF ~!G("RJParkNI",0)~ THEN @519
== RJINVSH IF ~!G("RJParkSH",0)~ THEN @521
== RJINVSA IF ~!G("RJParkSA",0)~ THEN @518
== RJINVDA IF ~!G("RJParkDA",0)~ THEN @511
== RJINVFA IF ~!G("RJParkFA",0)~ THEN @512
== RJINVIS IF ~!G("RJParkIS",0)~ THEN @522
== RJINVTA IF ~!G("RJParkTA",0)~ THEN @513
== RJINVSI IF ~!G("RJParkSI",0)~ THEN @520
== RJINVTY IF ~!G("RJParkTY",0)~ THEN @517
== RJINVKE IF ~!G("RJParkKE",0)~ THEN @498
== RJINVYV IF ~!G("RJParkYV",0)~ THEN @505
== RJGENIE IF ~!G("RJCntDumped",0)~ THEN @488
== RJINVJI IF ~GGT("RJiniMet",0)~ THEN @491
== RJINVEC IF ~G("RJECFling",1)~ THEN @492                     
== RJINVEC IF ~G("RJECFling",2)~ THEN @493
== RJINVTL IF ~GGT("RJTaliraRomance",3)~ THEN @523 = @495
== RJINVNA IF ~!BeenInParty("Nalia") !G("KeepPlot",0)~ THEN @494
== RJGENIE IF ~~ THEN @457
END RJGENIE tourist5

CHAIN IF ~~ THEN RJGENIE tourist5.2
@650 = @651
BRANCH ~InParty("Tashia")~ BEGIN
== RJINVTA IF ~G("RJTALoc1",27)~ THEN @664 DO ~RealSetGlobalTimer("TashiaRomance","GLOBAL",0)~
== RJINVTA IF ~G("RJTALoc1",49)~ THEN @682 DO ~RealSetGlobalTimer("TashiaRomance","GLOBAL",0)~
== RJINVTA IF ~G("RJTALoc1",53)~ THEN @683 DO ~RealSetGlobalTimer("TashiaRomance","GLOBAL",0)~
== RJINVTA IF ~GGT("RJTALoc1",52)
               G("LE#TashiaClassLoveTalk",0)~ THEN @689 DO ~RealSetGlobalTimer("LE#TashiaClassTalkTimer","GLOBAL",0)~
== RJINVTA IF ~GGT("RJTALoc1",62)~ THEN @667
END
BRANCH ~PartyHasItem("YxDraw")
        !G("YvetteRomanceActive",3)~ BEGIN
== RJINVYV IF ~GLT("YvetteRomanceTalk",4)~ THEN @691 DO ~SetGlobalTimer("YvetteDrawingRest","GLOBAL",0)~
== RJINVYV IF ~G("YvetteRomanceTalk",4)~ THEN @695
END
== RJINVYV IF ~G("YvetteChange",1)~ THEN @696
BRANCH ~InParty("Yxyve")
        !G("YvetteRomanceActive",3)~ BEGIN
== RJINVYV IF ~G("YvetteRomanceTalk",17)
               PartyHasItem("YxStra")~ THEN @690
== RJINVYV IF ~G("YvetteRomanceTalk",22)
               G("YvetteEmily",1)~ THEN @648 DO ~SetGlobalTimer("YvetteRomanceTime","GLOBAL",0)~
== RJINVYV IF ~G("YvetteRomanceTalk",31)~ THEN @655 DO ~SetGlobalTimer("YvetteSleepTimer","GLOBAL",0)~
== RJINVYV IF ~OR(2) G("YvetteRomanceTalk",36)
                     G("YvetteRomanceTalk",38)~ THEN @662
== RJINVYV IF ~GGT("YvetteRomanceTalk",46)
               GLT("Chapter",%bg2_chapter_4%)~ THEN @692
== RJINVYV IF ~GLT("YvetteVampire",3)
               Dead("YxYve")~ THEN @693
== RJINVYV IF ~G("YvetteVampire",3)
               G("Chapter",%bg2_chapter_6%)~ THEN @694
END
BRANCH ~!G("RJFayMet",0) G("RJParkFY",0)~ BEGIN
== RJINVFY IF ~G("RJFayBig",0)~ THEN @618
== RJINVFY IF ~G("RJFayTalk",25)~ THEN @667
END
BRANCH ~InParty("Rjali")~ BEGIN
== RJALIJ IF ~OR(2) G("RjaliTalk",3)
                    G("RjaliTalk",33)~ THEN @652 DO ~RealSetGlobalTimer("RjaliRomance","GLOBAL",0)~
== RJALIJ IF ~G("RjaliTalk",5)~ THEN @653 DO ~RealSetGlobalTimer("RjaliRomance","GLOBAL",0)~
== RJALIJ IF ~G("RjaliTalk",21)~ THEN @654 DO ~RealSetGlobalTimer("RjaliRomance","GLOBAL",0)~
== RJALIJ IF ~G("RjaliTalk",35)~ THEN @655 DO ~RealSetGlobalTimer("RjaliRomance","GLOBAL",0)~
== RJALIJ IF ~GGT("RjaliTalk",38)~ THEN @667
END
BRANCH ~InParty("RJAnnah")~ BEGIN
== RJINVAN IF ~G("RJAnnahTalk",15)~ THEN @655 DO ~RealSetGlobalTimer("RJAnnahRomance","GLOBAL",0)~
== RJINVAN IF ~GGT("RJAnnahTalk",28)~ THEN @667
END
BRANCH ~InParty("RJGrace")~ BEGIN
== RJINVGR IF ~G("RJGraceTalk",13)~ THEN @655 DO ~RealSetGlobalTimer("RJGraceRomance","GLOBAL",0)~
== RJINVGR IF ~GGT("RJGraceTalk",28)~ THEN @667
END
BRANCH ~InParty("RJRavel")~ BEGIN
== RJINVRV IF ~G("RJRavelTalk",7)~ THEN @655 DO ~RealSetGlobalTimer("RJRavelRomance","GLOBAL",0)~
== RJINVRV IF ~GGT("RJRavelTalk",28)~ THEN @667
END
BRANCH ~InParty("RJKesai")~ BEGIN
== RJINVKE IF ~G("RJKesaiTalk",7)~ THEN @655 DO ~RealSetGlobalTimer("RJKesaiRomance","GLOBAL",0)~
== RJINVKE IF ~G("RJKesaiTalk",9)~ THEN @715 DO ~RealSetGlobalTimer("RJKesaiRomance","GLOBAL",0)~
== RJINVKE IF ~GGT("RJKesaiTalk",28)~ THEN @667
END
BRANCH ~InParty("Aerie")~ BEGIN
== RJINVAE IF ~OR(4) G("RJAELoc1",24)
                     G("RJAELoc1",25)
                     G("RJAELoc1",44)
                     G("RJAELoc1",45)~ THEN @652 DO ~RealSetGlobalTimer("AerieRomance","GLOBAL",0)~
== RJINVAE IF ~OR(4) G("RJAELoc1",14)
                     G("RJAELoc1",15)
                     G("RJAELoc1",46)
                     G("RJAELoc1",47)~ THEN @655 DO ~RealSetGlobalTimer("AerieRomance","GLOBAL",0)~
== RJINVAE IF ~GGT("RJAELoc1",48)~ THEN @667
END
BRANCH ~InParty("Neera")~ BEGIN
== RJINVNE IF ~OR(2) G("NeeraLovetalks",3)
                     G("NeeraLovetalks",15)~ THEN @656 DO ~RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",0)~
== RJINVNE IF ~G("NeeraLovetalks",11)~ THEN @657 DO ~RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",0)~
== RJINVNE IF ~G("NeeraLovetalks",17)~ THEN @658 DO ~RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",0)~
== RJINVNE IF ~G("NeeraLovetalks",23)~ THEN @655 DO ~RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",0)~
== RJINVNE IF ~G("NeeraLovetalks",27)~ THEN @645 DO ~RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",0)~
== RJINVNE IF ~GGT("NeeraLovetalks",30)~ THEN @667
END
BRANCH ~InParty("Jaheira")~ BEGIN
== RJINVJA IF ~OR(4) G("RJJALoc1",7)
                     G("RJJALoc1",11)
                     G("RJJALoc1",55)
                     G("RJJALoc1",69)~ THEN @655
== RJINVJA IF ~G("JaheiraBanditPlot",1)~ THEN @659
== RJINVJA IF ~GGT("RJJALoc1",25)
               G("JaheiraBanditPlot",9)
               G("JaheiraHarperPlot",0)~ THEN @659
== RJINVJA IF ~G("RJJALoc1",27)
               G("JaheiraBanditPlot",9)~ THEN @660 DO ~RealSetGlobalTimer("JaheiraRomance","GLOBAL",0)~
== RJINVJA IF ~G("RJJALoc1",53)
               G("TerminselSpawn",1)~ THEN @659 DO ~RealSetGlobalTimer("JaheiraRomance","GLOBAL",0)~
== RJINVJA IF ~OR(2) G("RJJALoc1",57)
                     G("RJJALoc1",67)~ THEN @652
== RJINVJA IF ~OR(2) G("RJJALoc1",62)
                     G("RJJALoc1",63)~ THEN @659 DO ~RealSetGlobalTimer("JaheiraRomance","GLOBAL",0)~
== RJINVJA IF ~GGT("RJJALoc1",68)~ THEN @667
END
BRANCH ~InParty("Viconia")~ BEGIN
== RJINVVI IF ~OR(3) G("RJVILoc1",39)
                     G("RJVILoc1",49)
                     G("RJVILoc1",61)~ THEN @652
== RJINVVI IF ~OR(3) G("RJVILoc1",41)
                     G("RJVILoc1",51)
                     G("RJVILoc1",63)~ THEN @655
== RJINVVI IF ~G("RJVILoc1",71)~ THEN @661
== RJINVVI IF ~GGT("RJVILoc1",76)~ THEN @667
END
BRANCH ~InParty("O#Bran")~ BEGIN
== RJINVBR IF ~G("O#BranLovetalk",1)
               GGT("O#BranTalk",2)~ THEN @652
== RJINVBR IF ~G("O#BranLovetalk",3)
               GGT("O#BranTalk",30)~ THEN @652
== RJINVBR IF ~G("O#BranLovetalk",5)~ THEN @655
== RJINVBR IF ~GGT("O#BranLovetalk",8)~ THEN @667
END
BRANCH ~InParty("Imoen2")~ BEGIN
== RJINVIM IF ~G("MRLoveTalk",10)
               G("MRSleptImoen",1)
               G("ImoenRomanceActive",2)~ THEN @652
== RJINVIM IF ~GGT("MRLoveTalk",10)~ THEN @670
END
BRANCH ~InParty("Nalia")~ BEGIN
== RJINVNA IF ~G("PGNaliaLoveTalk",9)~ THEN @652
== RJINVNA IF ~G("PGNaliaLoveTalk",11)
               G("PGNaliaLoveTalk",12)~ THEN @655 DO ~RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",0)~
== RJINVNA IF ~GGT("PGNaliaLoveTalk",18)
               G("PGNaliaSpyingReaction",0)~ THEN @673
== RJINVNA IF ~GLT("PGNaliaLoveTalk",48)
               G("PGNaliaSpyingReaction",3)~ THEN @647 DO ~RealSetGlobalTimer("PGNaliaFlirtTimer","GLOBAL",0)~
== RJINVNA IF ~OR(4) G("PGNaliaLoveTalk",21)
                     G("PGNaliaLoveTalk",22)
                     G("PGNaliaLoveTalk",55)
                     G("PGNaliaLoveTalk",56)~ THEN @664 DO ~RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",0)~
== RJINVNA IF ~OR(4) G("PGNaliaLoveTalk",33)
                     G("PGNaliaLoveTalk",34)
                     G("PGNaliaLoveTalk",55)
                     G("PGNaliaLoveTalk",56)~ THEN @665 DO ~RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",0)~
== RJINVNA IF ~G("PGNaliaLoveTalk",51)~ THEN @663
== RJINVNA IF ~GGT("PGNaliaLoveTalk",64)~ THEN @671
END
BRANCH ~InParty("SkieDV")~ BEGIN
== RJINVSK IF ~G("SkieRomanceQuest",1)~ THEN @646
== RJINVSK IF ~GGT("SkieRomanceTalk",29)~ THEN @667
END
BRANCH ~InParty("L3Petsy")~ BEGIN
== RJINVPE IF ~G("L3PetsyRomanceTalk",14)~ THEN @652 DO ~RealSetGlobalTimer("L3PetsyRomanceTime","GLOBAL",0)~
== RJINVPE IF ~OR(2) G("L3PetsyRomanceTalk",16)
                     G("L3PetsyRomanceTalk",20)~ THEN @655 DO ~
                       SetGlobalTimer("L3PetsyRestTime","GLOBAL",0)
                       RealSetGlobalTimer("L3PetsyRomanceTime","GLOBAL",0)~
== RJINVPE IF ~OR(2) G("L3PetsyRomanceTalk",21)
                     G("L3PetsyRomanceTalk",22)
               OR(2) G("L3PetsyQuest2",0)
                     G("L3PetsyRomanceTalk",22)~ THEN @656 DO ~
                       SetGlobalTimer("L3PetsyQ2T","GLOBAL",0)
                       RealSetGlobalTimer("L3PetsyRomanceTime","GLOBAL",0)~
== RJINVPE IF ~GGT("L3PetsyRomanceTalk",32)~ THEN @667
END
BRANCH ~InParty("M#AMBER")~ BEGIN
== RJINVAM IF ~G("RJAMLoc1",12)~ THEN @716 DO ~RealSetGlobalTimer("M#AmberRomanceTime","GLOBAL",0)~
== RJINVAM IF ~G("RJAMLoc1",52)~ THEN @674 DO ~RealSetGlobalTimer("M#AmberRomanceTime","GLOBAL",0)~
== RJINVAM IF ~G("RJAMLoc1",58)~ THEN @673 DO ~RealSetGlobalTimer("M#AmberRomanceTime","GLOBAL",0)~
== RJINVAM IF ~G("RJAMLoc1",60)~ THEN @655 DO ~RealSetGlobalTimer("M#AmberRomanceTime","GLOBAL",0)~
== RJINVAM IF ~G("RJAMLoc1",72)~ THEN @675 DO ~RealSetGlobalTimer("M#AmberRomanceTime","GLOBAL",0)~
== RJINVAM IF ~GGT("RJAMLoc1",77)~ THEN @667
END                                    
BRANCH ~InParty("Ninde")~ BEGIN
== RJINVNI IF ~G("LK#NindeLoveTalks",0)~ THEN @697 DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",0)~
== RJINVNI IF ~G("LK#NindeLoveTalks",2)~ THEN @698 DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",0)~
== RJINVNI IF ~G("LK#NindeLoveTalks",10)~ THEN @652 DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",0)~
== RJINVNI IF ~G("LK#NindeLoveTalks",28)~ THEN @678 DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",0)~
== RJINVNI IF ~G("LK#NindeLoveTalks",30)~ THEN @656 DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",0)~
== RJINVNI IF ~G("LK#NindeLoveTalks",32)~ THEN @679 DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",0)~
== RJINVNI IF ~OR(2) G("LK#NindeLoveTalks",34)
                     G("LK#NindeLoveTalks",35)~ THEN @655 DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",0)~
== RJINVNI IF ~GGT("LK#NindeLoveTalks",35)~ THEN @667
END
BRANCH ~InParty("K#Sheena")~ BEGIN
== RJINVSH IF ~OR(2) G("RJSHLoc1",8)
                     G("RJSHLoc1",9)~ THEN @680 DO ~RealSetGlobalTimer("SheenaLoveTalkTime","GLOBAL",0)~
== RJINVSH IF ~GGT("RJSHLoc1",13)~ THEN @671
END
BRANCH ~InParty("G#Tyris")~ BEGIN
== RJINVTY IF ~OR(4) G("RJTYLoc1",5)
                     G("RJTYLoc1",17)
                     G("RJTYLoc1",33)
                     G("RJTYLoc1",37)~ THEN @652 DO ~RealSetGlobalTimer("G#TF.TyrisRomance","GLOBAL",0)~
== RJINVTY IF ~G("RJTYLoc1",39)~ THEN @655
== RJINVTY IF ~GGT("RJTYLoc1",46)~ THEN @667
END
BRANCH ~InParty("Saerileth")~ BEGIN
== RJINVSA IF ~OR(12) G("RJSALoc1",20)
                      G("RJSALoc1",21)
                      G("RJSALoc1",26)
                      G("RJSALoc1",27)
                      G("RJSALoc1",28)
                      G("RJSALoc1",29)
                      G("RJSALoc1",36)
                      G("RJSALoc1",37)
                      G("RJSALoc1",38)
                      G("RJSALoc1",39)
                      G("RJSALoc1",46)
                      G("RJSALoc1",47)~ THEN @652 DO ~RealSetGlobalTimer("SaerilethLoveTalkTime","GLOBAL",0)~
== RJINVSA IF ~GGT("RJSALoc1",54)~ THEN @667
END
BRANCH ~InParty("T#Dace")~ BEGIN
== RJINVDA IF ~G("T#DaceIntTalks",10)~ THEN @652 DO ~RealSetGlobalTimer("T#DaceIntTalksTimer","GLOBAL",0)~
== RJINVDA IF ~G("T#DaceIntTalks",12)~ THEN @655 DO ~RealSetGlobalTimer("T#DaceIntTalksTimer","GLOBAL",0)~
== RJINVDA IF ~GGT("T#DaceRomanceTalks",25)~ THEN @667
END
BRANCH ~InParty("E3Fade")~ BEGIN
== RJINVFA IF ~OR(4) G("E3LOVETALK",14)
                     G("E3LOVETALK",24)
                     G("E3LOVETALK",34)
                     G("E3LOVETALK",48)~ THEN @652 DO ~RealSetGlobalTimer("E3FADEROMANCE","GLOBAL",0)~
== RJINVFA IF ~OR(4) G("E3LOVETALK",15)
                     G("E3LOVETALK",25)
                     G("E3LOVETALK",35)
                     G("E3LOVETALK",49)~ THEN @652
== RJINVFA IF ~GGT("E3LOVETALK",60)
               G("E3DIDDRUNKTALK",0)~ THEN @673
== RJINVFA IF ~G("E3FADEWILLWEARBIKINI",1)
               G("RJBikiniTalkSoA",0)~ THEN @649
== RJINVFA IF ~GGT("E3LOVETALK",64)
               G("Chapter",%bg2_chapter_3%)~ THEN @666
== RJINVFA IF ~GGT("E3LOVETALK",66)~ THEN @667
END
BRANCH ~InParty("rh#Isra2")~ BEGIN
== RJINVIS IF ~OR(3) G("rh#IsraTalks",9)
                     G("rh#IsraTalks",29)
                     G("rh#IsraTalks",35)~ THEN @673 DO ~RealSetGlobalTimer("rh#IsraTalksTimer","GLOBAL",0)~
== RJINVIS IF ~OR(2) G("rh#IsraTalks",13)
                     G("rh#IsraTalks",37)~ THEN @656 DO ~RealSetGlobalTimer("rh#IsraTalksTimer","GLOBAL",0)~
== RJINVIS IF ~G("rh#IsraTalks",39)~ THEN @656 DO ~RealSetGlobalTimer("rh#IsraTalksTimer","GLOBAL",0) RealSetGlobalTimer("rh#IsraTalksMessengerTimer","GLOBAL",0)~
== RJINVIS IF ~GGT("rh#IsraTalks",44)~ THEN @667
END
BRANCH ~InParty("C0Sirene")~ BEGIN
== RJINVSI IF ~G("C0SireneLovetalk",9)~ THEN @655 DO ~RealSetGlobalTimer("C0SireneLovetalkTimer","GLOBAL",0)~
== RJINVSI IF ~OR(2) G("C0SireneLovetalk",19)
                     G("C0SireneLovetalk",20)~ THEN @664 DO ~RealSetGlobalTimer("C0SireneLovetalkTimer","GLOBAL",0)~
== RJINVSI IF ~G("C0SireneLovetalk",21)~ THEN @685
== RJINVSI IF ~GGT("C0SireneLovetalk",22)
               G("C0SireneBathe",0)~ THEN @688
== RJINVSI IF ~G("C0SireneLovetalk",27)~ THEN @687 DO ~RealSetGlobalTimer("C0SireneLovetalkTimer","GLOBAL",0)~
== RJINVSI IF ~GGT("C0SireneLovetalk",34)~ THEN @667
END
END RJGENIE tourist5.2.1

CHAIN IF ~~ THEN RJGENIE tourist5.2.1
@455
END
IF ~~ THEN REPLY @601 EXTERN RJGENIE tourist5
IF ~InParty("Rjali")
    RealGlobalTimerNotExpired("RjaliRomance","GLOBAL")~
      THEN REPLY @621 DO ~RealSetGlobalTimer("RjaliRomance","GLOBAL",0)~ EXTERN RJGENIE tourist5.2.1
IF ~!G("RJFayMet",0) 
    G("RJParkFY",0)
    RealGlobalTimerNotExpired("RJFayRomance","GLOBAL")~
      THEN REPLY @619 DO ~RealSetGlobalTimer("RJFayRomance","GLOBAL",0)~ EXTERN RJGENIE tourist5.2.1
IF ~InParty("RJAnnah")
    OR(2)
      GLT("RjaliAnnahSpice",1)
      GGT("RjaliAnnahScout",1)
    OR(2)
      !G("RJSpeedCtl",2)
      GGT("RjaliAnnahScout",1)
    OR(2)
      RealGlobalTimerNotExpired("RJAnnahAccentTimer","GLOBAL")
      RealGlobalTimerNotExpired("RJAnnahRomance","GLOBAL")~
        THEN REPLY @622 DO ~RealSetGlobalTimer("RJAnnahAccentTimer","GLOBAL",0)
                          RealSetGlobalTimer("RJAnnahRomance","GLOBAL",0)~ EXTERN RJGENIE tourist5.2.1
IF ~InParty("RJGrace")
    OR(2)
      GLT("RjaliGraceSpice",1)
      GGT("RjaliGraceScout",1)
    OR(2)
      !G("RJSpeedCtl",2)
      GGT("RjaliGraceScout",1)
    RealGlobalTimerNotExpired("RJGraceRomance","GLOBAL")~
      THEN REPLY @623 DO ~RealSetGlobalTimer("RJGraceRomance","GLOBAL",0)~ EXTERN RJGENIE tourist5.2.1
IF ~InParty("RJRavel")
    OR(2)
      GLT("RjaliRavelSpice",1)
      GGT("RjaliRavelScout",1)
    OR(2)
      !G("RJSpeedCtl",2)
      GGT("RjaliRavelScout",1)
    RealGlobalTimerNotExpired("RJRavelRomance","GLOBAL")~
      THEN REPLY @624 DO ~RealSetGlobalTimer("RJRavelRomance","GLOBAL",0)~ EXTERN RJGENIE tourist5.2.1
IF ~InParty("RJKesai")
    OR(2)
      GLT("RjaliKesaiSpice",1)
      GGT("RjaliKesaiScout",1)
    OR(2)
      !G("RJSpeedCtl",2)
      GGT("RjaliKesaiScout",1)
    RealGlobalTimerNotExpired("RJKesaiRomance","GLOBAL")~
      THEN REPLY @620 DO ~RealSetGlobalTimer("RJKesaiRomance","GLOBAL",0)~ EXTERN RJGENIE tourist5.2.1
IF ~InParty("Jaheira")
    OR(2)
      GLT("RjaliJaheiraSpice",1)
      GGT("RjaliJaheiraScout",1)
    OR(2)
      !G("RJSpeedCtl",2)
      GGT("RjaliJaheiraScout",1)
    RealGlobalTimerNotExpired("JaheiraRomance","GLOBAL")~
      THEN REPLY @625 DO ~RealSetGlobalTimer("JaheiraRomance","GLOBAL",0)~ EXTERN RJGENIE tourist5.2.1
IF ~InParty("Viconia")
    OR(2)
      GLT("RjaliViconiaSpice",1)
      GGT("RjaliViconiaScout",1)
    OR(2)
      !G("RJSpeedCtl",2)
      GGT("RjaliViconiaScout",1)
    RealGlobalTimerNotExpired("ViconiaRomance","GLOBAL")~
      THEN REPLY @626 DO ~RealSetGlobalTimer("ViconiaRomance","GLOBAL",0)~ EXTERN RJGENIE tourist5.2.1
IF ~InParty("Aerie")
    OR(2)
      GLT("RjaliAerieSpice",1)
      GGT("RjaliAerieScout",1)
    OR(2)
      !G("RJSpeedCtl",2)
      GGT("RjaliAerieScout",1)
    RealGlobalTimerNotExpired("AerieRomance","GLOBAL")~
      THEN REPLY @627 DO ~RealSetGlobalTimer("AerieRomance","GLOBAL",0)~ EXTERN RJGENIE tourist5.2.1
IF ~InParty("Neera")
    OR(2)
      GLT("RjaliNeeraSpice",1)
      GGT("RjaliNeeraScout",1)
    OR(2)
      !G("RJSpeedCtl",2)
      GGT("RjaliNeeraScout",1)
    RealGlobalTimerNotExpired("NeeraLovetalksTimer","GLOBAL")~
      THEN REPLY @628 DO ~RealSetGlobalTimer("NeeraLovetalksTimer","GLOBAL",0)~ EXTERN RJGENIE tourist5.2.1
IF ~InParty("M#AMBER")
    OR(2)
      GLT("RjaliAmberSpice",1)
      GGT("RjaliAmberScout",1)
    OR(2)
      !G("RJSpeedCtl",2)
      GGT("RjaliAmberScout",1)
    RealGlobalTimerNotExpired("M#AmberRomanceTime","GLOBAL")~
      THEN REPLY @629 DO ~RealSetGlobalTimer("M#AmberRomanceTime","GLOBAL",0)~ EXTERN RJGENIE tourist5.2.1
IF ~InParty("O#Bran")
    OR(2)
      GLT("RjaliBranwenSpice",1)
      GGT("RjaliBranwenScout",1)
    OR(2)
      !G("RJSpeedCtl",2)
      GGT("RjaliBranwenScout",1)
    RealGlobalTimerNotExpired("O#BranTimer","GLOBAL")~
      THEN REPLY @630 DO ~RealSetGlobalTimer("O#BranTimer","GLOBAL",0)~ EXTERN RJGENIE tourist5.2.1
IF ~InParty("T#Dace")
    OR(2)
      GLT("RjaliDaceSpice",1)
      GGT("RjaliDaceScout",1)
    OR(2)
      !G("RJSpeedCtl",2)
      GGT("RjaliDaceScout",1)
    OR(3)
      RealGlobalTimerNotExpired("T#DaceSussTalksTimer","GLOBAL")
      RealGlobalTimerNotExpired("T#DaceIntTalksTimer","GLOBAL")
      RealGlobalTimerNotExpired("T#DaceRomanceTalksTimer","GLOBAL")~
        THEN REPLY @631 DO ~RealSetGlobalTimer("T#DaceSussTalksTimer","GLOBAL",0)
                           RealSetGlobalTimer("T#DaceIntTalksTimer","GLOBAL",0)
                           RealSetGlobalTimer("T#DaceRomanceTalksTimer","GLOBAL",0)~ EXTERN RJGENIE tourist5.2.1
IF ~InParty("E3Fade")
    OR(2)
      GLT("RjaliFadeSpice",1)
      GGT("RjaliFadeScout",1)
    OR(2)
      !G("RJSpeedCtl",2)
      GGT("RjaliFadeScout",1)
    RealGlobalTimerNotExpired("E3FADEROMANCE","GLOBAL")~
      THEN REPLY @632 DO ~RealSetGlobalTimer("E3FADEROMANCE","GLOBAL",0)~ EXTERN RJGENIE tourist5.2.1
IF ~InParty("Imoen2")
    OR(2)
      GLT("RjaliImoenSpice",1)
      GGT("RjaliImoenScout",1)
    OR(2)
      !G("RJSpeedCtl",2)
      GGT("RjaliImoenScout",1)
    RealGlobalTimerNotExpired("MRImoenLovetalkTimer","GLOBAL")~
      THEN REPLY @633 DO ~RealSetGlobalTimer("MRImoenLovetalkTimer","GLOBAL",0)~ EXTERN RJGENIE tourist5.2.1
IF ~InParty("rh#Isra2")
    OR(2)
      GLT("RjaliIsraSpice",1)
      GGT("RjaliIsraScout",1)
    OR(2)
      !G("RJSpeedCtl",2)
      GGT("RjaliIsraScout",1)
    RealGlobalTimerNotExpired("rh#IsraTalksTimer","GLOBAL")~
      THEN REPLY @634 DO ~RealSetGlobalTimer("rh#IsraTalksTimer","GLOBAL",0)~ EXTERN RJGENIE tourist5.2.1
IF ~InParty("Nalia")
    OR(2)
      GLT("RjaliNaliaSpice",1)
      GGT("RjaliNaliaScout",1)
    OR(2)
      !G("RJSpeedCtl",2)
      GGT("RjaliNaliaScout",1)
    RealGlobalTimerNotExpired("PGNaliaRomanceTimer","GLOBAL")~
      THEN REPLY @635 DO ~RealSetGlobalTimer("PGNaliaRomanceTimer","GLOBAL",0)~ EXTERN RJGENIE tourist5.2.1
IF ~InParty("Ninde")
    OR(2)
      GLT("RjaliNindeSpice",1)
      GGT("RjaliNindeScout",1)
    OR(2)
      !G("RJSpeedCtl",2)
      GGT("RjaliNindeScout",1)
    RealGlobalTimerNotExpired("LK#NindeLoveTalksTimer","GLOBAL")~
      THEN REPLY @636 DO ~RealSetGlobalTimer("LK#NindeLoveTalksTimer","GLOBAL",0)~ EXTERN RJGENIE tourist5.2.1
IF ~InParty("L3Petsy")
    OR(2)
      GLT("RjaliPetsySpice",1)
      GGT("RjaliPetsyScout",1)
    OR(2)
      !G("RJSpeedCtl",2)
      GGT("RjaliPetsyScout",1)
    OR(3)
      RealGlobalTimerNotExpired("L3PetsyNormalTime","GLOBAL")
      RealGlobalTimerNotExpired("L3PetsyRomanceTime","GLOBAL")
      RealGlobalTimerNotExpired("L3PetsyQ2T","GLOBAL")~
        THEN REPLY @637 DO ~RealSetGlobalTimer("L3PetsyNormalTime","GLOBAL",0)
                            RealSetGlobalTimer("L3PetsyRomanceTime","GLOBAL",0)
                            RealSetGlobalTimer("L3PetsyQ2T","GLOBAL",0)~ EXTERN RJGENIE tourist5.2.1
IF ~InParty("Saerileth")
    OR(2)
      GLT("RjaliSaerilethSpice",1)
      GGT("RjaliSaerilethScout",1)
    OR(2)
      !G("RJSpeedCtl",2)
      GGT("RjaliSaerilethScout",1)
    RealGlobalTimerNotExpired("SaerilethLoveTalkTime","GLOBAL")~
      THEN REPLY @638 DO ~RealSetGlobalTimer("SaerilethLoveTalkTime","GLOBAL",0)~ EXTERN RJGENIE tourist5.2.1
IF ~InParty("K#Sheena")
    RealGlobalTimerNotExpired("SheenaLoveTalkTime","GLOBAL")~
      THEN REPLY @639 DO ~RealSetGlobalTimer("SheenaLoveTalkTime","GLOBAL",0)~ EXTERN RJGENIE tourist5.2.1
IF ~InParty("C0Sirene")
    OR(2)
      GLT("RjaliSireneSpice",1)
      GGT("RjaliSireneScout",1)
    OR(2)
      !G("RJSpeedCtl",2)
      GGT("RjaliSireneScout",1)
    OR(2)
      RealGlobalTimerNotExpired("C0SireneFriendshipTimer","GLOBAL")
      RealGlobalTimerNotExpired("C0SireneLovetalkTimer","GLOBAL")~
        THEN REPLY @640 DO ~RealSetGlobalTimer("C0SireneFriendshipTimer","GLOBAL",0)
                            RealSetGlobalTimer("C0SireneLovetalkTimer","GLOBAL",0)~ EXTERN RJGENIE tourist5.2.1
IF ~InParty("SkieDV")
    OR(2)
      GLT("RjaliSkieSpice",1)
      GGT("RjaliSkieScout",1)
    OR(2)
      !G("RJSpeedCtl",2)
      GGT("RjaliSkieScout",1)
    OR(2)
      RealGlobalTimerNotExpired("SkiePCTalk","GLOBAL")
      RealGlobalTimerNotExpired("SkieRomanceTimer","GLOBAL")~
        THEN REPLY @641 DO ~RealSetGlobalTimer("SkiePCTalk","GLOBAL",0)
                            RealSetGlobalTimer("SkieRomanceTimer","GLOBAL",0)~ EXTERN RJGENIE tourist5.2.1
IF ~InParty("Tashia")
    OR(2)
      GLT("RjaliTashiaSpice",1)
      GGT("RjaliTashiaScout",1)
    OR(2)
      !G("RJSpeedCtl",2)
      GGT("RjaliTashiaScout",1)
    RealGlobalTimerNotExpired("TashiaRomance","GLOBAL")~
      THEN REPLY @642 DO ~RealSetGlobalTimer("TashiaRomance","GLOBAL",0)~ EXTERN RJGENIE tourist5.2.1
IF ~InParty("G#Tyris")
    OR(2)
      GLT("RjaliTyrisSpice",1)
      GGT("RjaliTyrisScout",1)
    RealGlobalTimerNotExpired("G#TF.TyrisRomance","GLOBAL")~
      THEN REPLY @643 DO ~RealSetGlobalTimer("G#TF.TyrisRomance","GLOBAL",0)~ EXTERN RJGENIE tourist5.2.1
IF ~InParty("G#Tyris")
    RealGlobalTimerExpired("G#TF.TyrisRomance","GLOBAL")
    GLT("Chapter",%bg2_chapter_8%)
    G("RJTYLoc1Odd",0)~
      THEN REPLY @643 DO ~ActionOverride("G#Tyris",IncrementGlobal("G#TF.Lovetalk","LOCALS",-1)~ EXTERN RJGENIE tourist5.0
IF ~InParty("G#Tyris")
    RealGlobalTimerExpired("G#TF.TyrisRomance","GLOBAL")
    GGT("Chapter",%bg2_chapter_7%)
    G("RJTYLoc1Odd",0)~
      THEN REPLY @643 DO ~ActionOverride("G#Tyris",IncrementGlobal("G#TF.ExpLovetalk","LOCALS",-1)~ EXTERN RJGENIE tourist5.0
IF ~InParty("Yxyve")
    OR(2)
      GLT("RjaliYvetteSpice",1)
      GGT("RjaliYvetteScout",1)
    RealGlobalTimerNotExpired("YvetteRomanceTime","GLOBAL")~
      THEN REPLY @644 DO ~RealSetGlobalTimer("YvetteRomanceTime","GLOBAL",0)~ EXTERN RJGENIE tourist5.2.1

CHAIN IF ~~ THEN RJGENIE tourist5.3
@650 = @651
BRANCH ~InParty("Tashia")~ BEGIN
== RJINVTA IF ~G("RJTALoc1",5)~ THEN @652 DO ~RealSetGlobalTimer("TashiaRomance","GLOBAL",0)~
== RJINVTA IF ~OR(2) G("RJTALoc1",6)
                     G("RJTALoc1",7)~ THEN @655 DO ~RealSetGlobalTimer("TashiaRomance","GLOBAL",0)~
== RJINVTA IF ~OR(2) G("RJTALoc1",8) 
                     G("RJTALoc1",9)~ THEN @677 DO ~RealSetGlobalTimer("TashiaRomance","GLOBAL",0)~
== RJINVTA IF ~GGT("RJTALoc1",16)~ THEN @668
END
BRANCH ~InParty("Yxyve")~ BEGIN
== RJINVYV IF ~GGT("RjaliTalkToB",9)~ THEN @668
END
BRANCH ~InParty("Rjali")~ BEGIN
== RJALI25J IF ~GGT("YvetteToBTalk",10)~ THEN @668
END
BRANCH ~G("RJParkFY",0)~ BEGIN
== RJINVFY IF ~GGT("RJFayTalk",34)~ THEN @668
END
BRANCH ~InParty("RJAnnah")~ BEGIN
== RJINVAN IF ~GGT("RJAnnahTalkToB",12)~ THEN @668
END
BRANCH ~InParty("RJGrace")~ BEGIN
== RJINVGR IF ~GGT("RJGraceTalkToB",12)~ THEN @668
END
BRANCH ~InParty("RJRavel")~ BEGIN
== RJINVRV IF ~GGT("RJRavelTalkToB",12)~ THEN @668
END
BRANCH ~InParty("RJKesai")~ BEGIN
== RJINVKE IF ~GGT("RJKesaiTalkToB",12)~ THEN @668
END
BRANCH ~InParty("Aerie")~ BEGIN
== RJINVAE IF ~OR(2) G("RJAELoc1",2)
                     G("RJAELoc1",3)~ THEN @652 DO ~RealSetGlobalTimer("AerieRomance","GLOBAL",0)~
== RJINVAE IF ~OR(2) G("RJAELoc1",4)
                     G("RJAELoc1",5)~ THEN @699 DO ~RealSetGlobalTimer("AerieRomance","GLOBAL",0)~
== RJINVAE IF ~GGT("RJAELoc1",18)~ THEN @668
END
BRANCH ~InParty("Neera")~ BEGIN
== RJINVNE IF ~GGT("NeeraToBLovetalks",4)~ THEN @668
END
BRANCH ~InParty("Jaheira")~ BEGIN
== RJINVJA IF ~OR(2) G("RJJALoc1",6)
                     G("RJJALoc1",7)~ THEN @655 DO ~RealSetGlobalTimer("JaheiraRomance","GLOBAL",0)~
== RJINVJA IF ~GGT("RJJALoc1",12)~ THEN @668
END
BRANCH ~InParty("Viconia")~ BEGIN
== RJINVVI IF ~OR(4) G("RJVILoc1",4)
                     G("RJVILoc1",5)
                     G("RJVILoc1",12)
                     G("RJVILoc1",13)~ THEN @652 DO ~RealSetGlobalTimer("ExpViconiaRomance","GLOBAL",0)~
== RJINVVI IF ~GGT("RJVILoc1",16)~ THEN @668
END
BRANCH ~InParty("O#Bran")~ BEGIN
== RJINVBR IF ~GGT("O#BranTalkToB",10)~ THEN @668
END
BRANCH ~InParty("Imoen2")~ BEGIN
== RJINVIM IF ~~ THEN @670
END
BRANCH ~InParty("Nalia")~ BEGIN
== RJINVNA IF ~~ THEN @671
END
BRANCH ~InParty("SkieDV")~ BEGIN
== RJINVSK IF ~GGT("SkieRomanceTalkTB",5)~ THEN @668
END
BRANCH ~InParty("L3Petsy")~ BEGIN
== RJINVPE IF ~OR(2) G("L3ToBRomanceTalks",9)
                     G("L3ToBRomanceTalks",10)~ THEN @672 DO ~RealSetGlobalTimer("L3ToBRomanceTime","GLOBAL",0)~
== RJINVPE IF ~G("L3ToBRomanceTalks",15)~ THEN @652
== RJINVPE IF ~GGT("L3ToBRomanceTalks",15)~ THEN @668
END
BRANCH ~InParty("M#AMBER")~ BEGIN
== RJINVAM IF ~~ THEN @671
END
BRANCH ~InParty("Ninde")~ BEGIN
== RJINVNI IF ~G("LK#NindeLoveTalksTOB",0)~ THEN @652
== RJINVNI IF ~G("LK#NindeLoveTalksTOB",6)~ THEN @677
== RJINVNI IF ~GGT("LK#NindeLoveTalksTOB",11)~ THEN @668
END
BRANCH ~InParty("K#Sheena")~ BEGIN
== RJINVSH IF ~~ THEN @671
END
BRANCH ~InParty("Saerileth")~ BEGIN
== RJINVSA IF ~OR(3) G("RJSALoc1",5)
                     G("RJSALoc1",7)
                     G("RJSALoc1",9)~ THEN @652 DO ~RealSetGlobalTimer("SaerilethLoveTalkTimeTOB","GLOBAL",0)~
== RJINVSA IF ~GGT("RJSALoc1",16)~ THEN @668
END
BRANCH ~InParty("T#Dace")~ BEGIN
== RJINVDA IF ~~ THEN @668
END
BRANCH ~InParty("E3Fade")~ BEGIN
== RJINVFA IF ~OR(2) G("E3EXPLOVETALK",7)
                     G("E3EXPLOVETALK",8)~ THEN @652 DO ~RealSetGlobalTimer("E3FADEROMANCE","GLOBAL",0)~
== RJINVFA IF ~G("E3FADEWILLWEARBIKINI",1)
               G("RJBikiniTalkToB",0)~ THEN @649
== RJINVFA IF ~GGT("E3EXPLOVETALK",14)~ THEN @668
END
BRANCH ~InParty("rh#Isra2")~ BEGIN
== RJINVIS IF ~G("rh#IsraTalksToB",0)~ THEN @652
== RJINVIS IF ~GGT("rh#IsraTalksToB",11)~ THEN @667
END
BRANCH ~InParty("C0Sirene")~ BEGIN
== RJINVSI IF ~G("C0SireneToBLovetalk",3)~ THEN @686 DO ~RealSetGlobalTimer("C0SireneToBLovetalkTimer","GLOBAL",0)~
== RJINVSI IF ~G("C0SireneToBLovetalk",7)~ THEN @652 DO ~RealSetGlobalTimer("C0SireneToBLovetalkTimer","GLOBAL",0)~
== RJINVSI IF ~GGT("C0SireneToBLovetalk",7)~ THEN @668
END
BRANCH ~InParty("G#Tyris")~ BEGIN
== RJINVTY IF ~OR(4) G("RJTYLoc1",5)~ THEN @652 DO ~RealSetGlobalTimer("G#TF.TyrisRomance","GLOBAL",0)~
== RJINVTY IF ~G("RJTYLoc1",7)~ THEN @677
== RJINVTY IF ~G("RJTYLoc1",9)~ THEN @655
== RJINVTY IF ~GGT("RJTYLoc1",14)~ THEN @671
END
== RJGENIE IF ~~ THEN @457
END RJGENIE tourist5.3.1

CHAIN IF ~~ THEN RJGENIE tourist5.3.1
@455
END
IF ~~ THEN REPLY @601 EXTERN RJGENIE tourist5
IF ~InParty("Aerie")
    G("AerieRomanceActive",2)
    RealGlobalTimerNotExpired("AerieRomance","GLOBAL")~
      THEN REPLY @627 DO ~RealSetGlobalTimer("AerieRomance","GLOBAL",0)~ EXTERN RJGENIE tourist5.3.1

CHAIN IF ~~ THEN RJGENIE tourist5.7
@466
== RJGENIE IF ~InParty("C0Sirene")
               OR(2)
                 G("Chapter",%bg2_chapter_3%)
                 G("Chapter",%bg2_chapter_6%)
               G("C0SireneFlowerGirl",1)~ THEN @700
           DO ~SetGlobalTimer("C0SireneFlowerGirlSpawn","GLOBAL",0)~
== RJGENIE IF ~InParty("Yxyve")
               GLT("Chapter",%bg2_chapter_4%)
               G("YvetteHasBook",0)~ THEN @701
== RJGENIE IF ~InParty("Ninde")
               GLT("Chapter",%bg2_chapter_7%)
               GGT("LK#NindeLoveTalks",20)
               G("LK#Ninde_massageflirt",0)~ THEN @702
== RJGENIE IF ~InParty("Ninde")
               G("Chapter",%bg2_chapter_6%)
               G("LK#Ninde_massageflirt",1)~ THEN @703
== RJGENIE IF ~InParty("Saerileth")
               G("Chapter",%bg2_chapter_6%)
               G("RJSAFlower",0)~ THEN @704
== RJGENIE IF ~InParty("E3Fade")
               G("Chapter",%bg2_chapter_6%)
               G("E3SWORD4U",0)~ THEN @705
== RJGENIE IF ~InParty("E3Fade")
               G("Chapter",%bg2_chapter_6%)
               G("E3FADENOOKIE",1)
               G("E3BOUGHTBIKINI",0)~ THEN @708
== RJGENIE IF ~InParty("E3Fade")
               GLT("Chapter",%bg2_chapter_8%)
               G("E3BOUGHTBIKINI",1)
               G("E3FADEWILLWEARBIKINI",0)~ THEN @709
== RJGENIE IF ~InParty("E3Fade")
               G("Chapter",%bg2_chapter_9%)
               G("E3SPEAKRING",0)~ THEN @710
== RJGENIE IF ~InParty("E3Fade")
               G("Chapter",%bg2_chapter_9%)
               PartyHasItem("E3RING01")
               G("E3ENGAGED",0)~ THEN @711
== RJGENIE IF ~InParty("E3Fade")
               G("Chapter",%bg2_chapter_9%)
               OR(3)
                 PartyHasItem("E3RING01")
                 PartyHasItem("E3RING02")
                 PartyHasItem("E3RING03")
               G("E3ENGAGED",0)~ THEN @712 = @713
== RJGENIE IF ~InParty("E3Fade")
               G("Chapter",%bg2_chapter_9%)
               OR(4)
                 PartyHasItem("E3RING01")
                 PartyHasItem("E3RING02")
                 PartyHasItem("E3RING03")
                 PartyHasItem("E3RING04")
               G("E3ENGAGED",0)~ THEN @714
== RJGENIE IF ~InParty("Jaheira")
               GLT("Chapter",%bg2_chapter_4%)
               !PartyHasItem("misc5w")~ THEN @706
== RJGENIE IF ~InParty("Imoen2")
               G("Chapter",%bg2_chapter_6%)
               G("ImoenRomanceActive",2)
               G("MRBraceletMerCreated",0)~ THEN @704
== RJGENIE IF ~InParty("Tashia")
               GLT("Chapter",%bg2_chapter_7%)
               G("TashiaRomanceActive",2)
               G("LE#TashiaGiftLoveTalk",0)~ THEN @717 = @718
== RJGENIE IF ~~ THEN @457
END RJGENIE tourist5

CHAIN IF ~~ THEN RJGENIE tourist5.8
@466
== RJINVRJ @750
== RJINVFY IF ~G("RJParkFY",0)
               GGT("RJFayMet",0)~ THEN @751
== RJINVAN IF ~InParty("RJAnnah")~ THEN @752
== RJINVGR IF ~InParty("RJGrace")~ THEN @753
== RJINVRV IF ~InParty("RJRavel")~ THEN @754
== RJINVJA IF ~InParty("Jaheira")~ THEN @755
== RJINVVI IF ~InParty("Viconia")~ THEN @756
== RJINVAE IF ~InParty("Aerie")~ THEN @757
== RJINVNE IF ~InParty("Neera")~ THEN @758
== RJINVIM IF ~InParty("Imoen2")~ THEN @759
== RJINVSI IF ~InParty("C0Sirene")~ THEN @760
== RJINVSK IF ~InParty("SkieDV")~ THEN @761
== RJINVPE IF ~InParty("L3Petsy")~ THEN @762
== RJINVBR IF ~InParty("O#Bran")~ THEN @763
== RJINVYV IF ~InParty("Yxyve")~ THEN @764
== RJINVTA IF ~InParty("Tashia")~ THEN @765
== RJINVNA IF ~InParty("Nalia")~ THEN @766
== RJINVTY IF ~InParty("G#Tyris")~ THEN @767
== RJINVNI IF ~InParty("Ninde")~ THEN @768
== RJINVDA IF ~InParty("T#Dace")~ THEN @769
== RJINVIS IF ~InParty("rh#Isra2")~ THEN @770
== RJINVSA IF ~InParty("Saerileth")~ THEN @771
== RJINVAM IF ~InParty("M#AMBER")~ THEN @772
== RJINVSH IF ~InParty("K#Sheena")~ THEN @773
== RJINVFA IF ~InParty("E3Fade")~ THEN @774
== RJINVKE IF ~InParty("RJKesai")~ THEN @776
== RJGENIE IF ~~ THEN @457
END RJGENIE tourist5

CHAIN IF ~~ THEN RJGENIE tourist5.9
@466
== RJGENIE IF ~!G("RJPARK0",2)
               !G("RJPARK1",2)
               !G("RJPARK2",2)
               !G("RJPARK3",2)
               !G("RJPARK4",2)~ THEN @793
== RJINVRJ @796
== RJINVFY IF ~!G("KeepPlot",0)
               G("RJParkFY",0)
               G("RJFayWed",1)~ THEN @795
BRANCH ~!G("RJPLAY0",999)~ BEGIN
== RJPLAY0 IF ~G("RJPARK0",2)~ THEN @791
== RJPLAY0 IF ~G("RJPARK0",10)~ THEN @792
END
BRANCH ~!G("RJPLAY1",999)~ BEGIN
== RJPLAY1 IF ~G("RJPARK1",2)~ THEN @791
== RJPLAY1 IF ~G("RJPARK1",10)~ THEN @792
END
BRANCH ~!G("RJPLAY2",999)~ BEGIN
== RJPLAY2 IF ~G("RJPARK2",2)~ THEN @791
== RJPLAY2 IF ~G("RJPARK2",10)~ THEN @792
END
BRANCH ~!G("RJPLAY3",999)~ BEGIN
== RJPLAY3 IF ~G("RJPARK3",2)~ THEN @791
== RJPLAY3 IF ~G("RJPARK3",10)~ THEN @792
END
BRANCH ~!G("RJPLAY4",999)~ BEGIN
== RJPLAY4 IF ~G("RJPARK4",2)~ THEN @791
== RJPLAY4 IF ~G("RJPARK4",10)~ THEN @792
END
== RJINVYV IF ~InParty("YxYve")~ THEN @794
== RJGENIE IF ~~ THEN @457
END RJGENIE tourist5

CHAIN IF WEIGHT #-1 ~G("RJTOURIST6",1)~ THEN RJGENIE tourist6
@466 DO ~SetGlobal("RJTOURIST6","GLOBAL",0)~
== RJINVFY IF ~!G("RJParkFY",0)~ THEN @519
== RJINVAN IF ~!G("RJParkAN",0)~ THEN @496
== RJINVGR IF ~!G("RJParkGR",0)~ THEN @497
== RJINVRV IF ~!G("RJParkRV",0)~ THEN @498
== RJINVAE IF ~!G("RJParkAE",0)~ THEN @499
== RJINVNE IF ~!G("RJParkNE",0)~ THEN @500
== RJINVJA IF ~!G("RJParkJA",0)~ THEN @501
== RJINVVI IF ~!G("RJParkVI",0)~ THEN @502
== RJINVBR IF ~!G("RJParkBR",0)~ THEN @503
== RJINVIM IF ~!G("RJParkIM",0)~ THEN @504
== RJINVNA IF ~!G("RJParkNA",0)~ THEN @504
== RJINVSK IF ~!G("RJParkSK",0)~ THEN @506
== RJINVPE IF ~!G("RJParkPE",0)~ THEN @515
== RJINVAM IF ~!G("RJParkAM",0)~ THEN @510
== RJINVNI IF ~!G("RJParkNI",0)~ THEN @519
== RJINVSH IF ~!G("RJParkSH",0)~ THEN @521
== RJINVSA IF ~!G("RJParkSA",0)~ THEN @518
== RJINVDA IF ~!G("RJParkDA",0)~ THEN @511
== RJINVFA IF ~!G("RJParkFA",0)~ THEN @512
== RJINVIS IF ~!G("RJParkIS",0)~ THEN @522
== RJINVTA IF ~!G("RJParkTA",0)~ THEN @513
== RJINVSI IF ~!G("RJParkSI",0)~ THEN @520
== RJINVTY IF ~!G("RJParkTY",0)~ THEN @517
== RJINVYV IF ~!G("RJParkYV",0)~ THEN @505
== RJINVKE IF ~!G("RJParkKE",0)~ THEN @498
== RJGENIE IF ~~ THEN @457
END
IF ~~ THEN DO ~StartCutSceneMode()
               ActionOverride("RJINVFY",DestroySelf())
               ActionOverride("RJINVNA",DestroySelf())
               ActionOverride("RJINVAN",DestroySelf())
               ActionOverride("RJINVGR",DestroySelf())
               ActionOverride("RJINVRV",DestroySelf())
               ActionOverride("RJINVAE",DestroySelf())
               ActionOverride("RJINVNE",DestroySelf())
               ActionOverride("RJINVJA",DestroySelf())
               ActionOverride("RJINVVI",DestroySelf())
               ActionOverride("RJINVBR",DestroySelf())
               ActionOverride("RJINVIM",DestroySelf())
               ActionOverride("RJINVSK",DestroySelf())
               ActionOverride("RJINVPE",DestroySelf())
               ActionOverride("RJINVAM",DestroySelf())
               ActionOverride("RJINVNI",DestroySelf())
               ActionOverride("RJINVSH",DestroySelf())
               ActionOverride("RJINVSA",DestroySelf())
               ActionOverride("RJINVDA",DestroySelf())
               ActionOverride("RJINVFA",DestroySelf())
               ActionOverride("RJINVIS",DestroySelf())
               ActionOverride("RJINVTA",DestroySelf())
               ActionOverride("RJINVSI",DestroySelf())
               ActionOverride("RJINVTY",DestroySelf())
               ActionOverride("RJINVYV",DestroySelf())
               ActionOverride("RJINVKE",DestroySelf())
               SetGlobal("RJGenie","GLOBAL",0)
               ActionOverride("RJGENIE",DestroySelf())
               EndCutSceneMode()~ EXIT

APPEND RJGENIE

// Request parked NCP join party at a distance

IF ~~ THEN BEGIN tourist7
  SAY @600
IF ~~ THEN REPLY @92 DO ~SetGlobal("RJGenie","GLOBAL",0)
                         DestroySelf()~ EXIT
IF ~G("RJParkNE",1)~ THEN REPLY @172 DO ~
                           StartCutSceneMode()
                           MoveGlobalObject("Neera",Player1)
                           Wait(1)
                           ActionOverride("Neera",FaceObject(Player1))
                           SetGlobal("RJParkNE","GLOBAL",0)
                           IncrementGlobal("RJCntParked","GLOBAL",-1)
                           ActionOverride("Neera",JoinParty()) 
                           SetGlobal("RJGenie","GLOBAL",0)
                           DestroySelf()
                           EndCutSceneMode()~ EXIT
IF ~G("RJParkAE",1)~ THEN REPLY @173 DO ~
                           StartCutSceneMode()
                           MoveGlobalObject("Aerie",Player1)
                           Wait(1)
                           ActionOverride("Aerie",FaceObject(Player1))
                           SetGlobal("RJParkAE","GLOBAL",0)
                           IncrementGlobal("RJCntParked","GLOBAL",-1)
                           ActionOverride("Aerie",JoinParty())
                           SetGlobal("RJGenie","GLOBAL",0)
                           DestroySelf()
                           EndCutSceneMode()~ EXIT
IF ~G("RJParkIM",1)~ THEN REPLY @174 DO ~
                           StartCutSceneMode()
                           MoveGlobalObject("Imoen2",Player1)
                           Wait(1)
                           ActionOverride("Imoen2",FaceObject(Player1))
                           SetGlobal("RJParkIM","GLOBAL",0)
                           IncrementGlobal("RJCntParked","GLOBAL",-1)
                           ActionOverride("Imoen2",JoinParty())
                           SetGlobal("RJGenie","GLOBAL",0)
                           DestroySelf()
                           EndCutSceneMode()~ EXIT
IF ~G("RJParkJA",1)~ THEN REPLY @175 DO ~
                           StartCutSceneMode()
                           MoveGlobalObject("Jaheira",Player1)
                           Wait(1)
                           ActionOverride("Jaheira",FaceObject(Player1))
                           SetGlobal("RJParkJA","GLOBAL",0)
                           IncrementGlobal("RJCntParked","GLOBAL",-1)
                           ActionOverride("Jaheira",JoinParty())
                           SetGlobal("RJGenie","GLOBAL",0)
                           DestroySelf()
                           EndCutSceneMode()~ EXIT
IF ~G("RJParkNA",1)~ THEN REPLY @176 DO ~
                           StartCutSceneMode()
                           MoveGlobalObject("Nalia",Player1)
                           Wait(1)
                           ActionOverride("Nalia",FaceObject(Player1))
                           SetGlobal("RJParkNA","GLOBAL",0)
                           IncrementGlobal("RJCntParked","GLOBAL",-1)
                           ActionOverride("Nalia",JoinParty())
                           SetGlobal("RJGenie","GLOBAL",0)
                           DestroySelf()
                           EndCutSceneMode()~ EXIT
IF ~G("RJParkVI",1)~ THEN REPLY @177 DO ~
                           StartCutSceneMode()
                           MoveGlobalObject("Viconia",Player1)
                           Wait(1)
                           ActionOverride("Viconia",FaceObject(Player1))
                           SetGlobal("RJParkVI","GLOBAL",0)
                           IncrementGlobal("RJCntParked","GLOBAL",-1)
                           ActionOverride("Viconia",JoinParty())
                           SetGlobal("RJGenie","GLOBAL",0)
                           DestroySelf()
                           EndCutSceneMode()~ EXIT
IF ~G("RJParkBR",1)~ THEN REPLY @178 DO ~
                           StartCutSceneMode()
                           MoveGlobalObject("O#Bran",Player1)
                           Wait(1)
                           ActionOverride("O#Bran",FaceObject(Player1))
                           SetGlobal("RJParkBR","GLOBAL",0)
                           IncrementGlobal("RJCntParked","GLOBAL",-1)
                           ActionOverride("O#Bran",JoinParty())
                           SetGlobal("RJGenie","GLOBAL",0)
                           DestroySelf()
                           EndCutSceneMode()~ EXIT
IF ~G("RJParkAN",1)~ THEN REPLY @179 DO ~
                           StartCutSceneMode()
                           MoveGlobalObject("RJAnnah",Player1)
                           Wait(1)
                           ActionOverride("RJAnnah",FaceObject(Player1))
                           SetGlobal("RJParkAN","GLOBAL",0)
                           SetGlobal("RJAddAN","GLOBAL",4)
                           IncrementGlobal("RJCntParked","GLOBAL",-1)
                           ActionOverride("RJAnnah",JoinParty())
                           SetGlobal("RJGenie","GLOBAL",0)
                           DestroySelf()
                           EndCutSceneMode()~ EXIT
IF ~G("RJParkGR",1)~ THEN REPLY @180 DO ~
                           StartCutSceneMode()
                           MoveGlobalObject("RJGrace",Player1)
                           Wait(1)
                           ActionOverride("RJGrace",FaceObject(Player1))
                           SetGlobal("RJParkGR","GLOBAL",0)
                           SetGlobal("RJAddGR","GLOBAL",4)
                           IncrementGlobal("RJCntParked","GLOBAL",-1)
                           ActionOverride("RJGrace",JoinParty())
                           SetGlobal("RJGenie","GLOBAL",0)
                           DestroySelf()
                           EndCutSceneMode()~ EXIT
IF ~G("RJParkRV",1)~ THEN REPLY @181 DO ~
                           StartCutSceneMode()
                           MoveGlobalObject("RJRavel",Player1)
                           Wait(1)
                           ActionOverride("RJRavel",FaceObject(Player1))
                           SetGlobal("RJParkRV","GLOBAL",0)
                           SetGlobal("RJAddRV","GLOBAL",4)
                           IncrementGlobal("RJCntParked","GLOBAL",-1)
                           ActionOverride("RJRavel",JoinParty())
                           SetGlobal("RJGenie","GLOBAL",0)
                           DestroySelf()
                           EndCutSceneMode()~ EXIT
IF ~G("RJParkSK",1)~ THEN REPLY @182 DO ~
                           StartCutSceneMode()
                           MoveGlobalObject("SkieDV",Player1)
                           Wait(1)
                           ActionOverride("SkieDV",FaceObject(Player1))
                           SetGlobal("RJParkSK","GLOBAL",0)
                           IncrementGlobal("RJCntParked","GLOBAL",-1)
                           ActionOverride("SkieDV",JoinParty())
                           SetGlobal("RJGenie","GLOBAL",0)
                           DestroySelf()
                           EndCutSceneMode()~ EXIT
IF ~G("RJParkPE",1)~ THEN REPLY @184 DO ~
                           StartCutSceneMode()
                           MoveGlobalObject("L3Petsy",Player1)
                           Wait(1)
                           ActionOverride("L3Petsy",FaceObject(Player1))
                           SetGlobal("RJParkPE","GLOBAL",0)
                           IncrementGlobal("RJCntParked","GLOBAL",-1)
                           ActionOverride("L3Petsy",JoinParty())
                           SetGlobal("RJGenie","GLOBAL",0)
                           DestroySelf()
                           EndCutSceneMode()~ EXIT
IF ~G("RJParkAM",1)~ THEN REPLY @185 DO ~
                           StartCutSceneMode()
                           MoveGlobalObject("M#AMBER",Player1)
                           Wait(1)
                           ActionOverride("M#AMBER",FaceObject(Player1))
                           SetGlobal("RJParkAM","GLOBAL",0)
                           IncrementGlobal("RJCntParked","GLOBAL",-1)
                           ActionOverride("M#AMBER",JoinParty())
                           SetGlobal("RJGenie","GLOBAL",0)
                           DestroySelf()
                           EndCutSceneMode()~ EXIT
IF ~G("RJParkSH",1)~ THEN REPLY @186 DO ~
                           StartCutSceneMode()
                           MoveGlobalObject("K#Sheena",Player1)
                           Wait(1)
                           ActionOverride("K#Sheena",FaceObject(Player1))
                           SetGlobal("RJParkSH","GLOBAL",0)
                           IncrementGlobal("RJCntParked","GLOBAL",-1)
                           ActionOverride("K#Sheena",JoinParty())
                           SetGlobal("RJGenie","GLOBAL",0)
                           DestroySelf()
                           EndCutSceneMode()~ EXIT
IF ~G("RJParkDA",1)~ THEN REPLY @187 DO ~
                           StartCutSceneMode()
                           MoveGlobalObject("T#Dace",Player1)
                           Wait(1)
                           ActionOverride("T#Dace",FaceObject(Player1))
                           SetGlobal("RJParkDA","GLOBAL",0)
                           IncrementGlobal("RJCntParked","GLOBAL",-1)
                           ActionOverride("T#Dace",JoinParty())
                           SetGlobal("RJGenie","GLOBAL",0)
                           DestroySelf()
                           EndCutSceneMode()~ EXIT
IF ~G("RJParkFA",1)~ THEN REPLY @188 DO ~
                           StartCutSceneMode()
                           MoveGlobalObject("E3Fade",Player1)
                           Wait(1)
                           ActionOverride("E3Fade",FaceObject(Player1))
                           SetGlobal("RJParkFA","GLOBAL",0)
                           IncrementGlobal("RJCntParked","GLOBAL",-1)
                           ActionOverride("E3Fade",JoinParty())
                           SetGlobal("RJGenie","GLOBAL",0)
                           DestroySelf()
                           EndCutSceneMode()~ EXIT
IF ~G("RJParkIS",1)~ THEN REPLY @189 DO ~
                           StartCutSceneMode()
                           MoveGlobalObject("rh#Isra2",Player1)
                           Wait(1)
                           ActionOverride("rh#Isra2",FaceObject(Player1))
                           SetGlobal("RJParkIS","GLOBAL",0)
                           IncrementGlobal("RJCntParked","GLOBAL",-1)
                           ActionOverride("rh#Isra2",JoinParty())
                           SetGlobal("RJGenie","GLOBAL",0)
                           DestroySelf()
                           EndCutSceneMode()~ EXIT
IF ~G("RJParkTA",1)~ THEN REPLY @190 DO ~
                           StartCutSceneMode()
                           MoveGlobalObject("Tashia",Player1)
                           Wait(1)
                           ActionOverride("Tashia",FaceObject(Player1))
                           SetGlobal("RJParkTA","GLOBAL",0)
                           IncrementGlobal("RJCntParked","GLOBAL",-1)
                           ActionOverride("Tashia",JoinParty())
                           SetGlobal("RJGenie","GLOBAL",0)
                           DestroySelf()
                           EndCutSceneMode()~ EXIT
IF ~G("RJParkSI",1)~ THEN REPLY @191 DO ~
                           StartCutSceneMode()
                           MoveGlobalObject("C0Sirene",Player1)
                           Wait(1)
                           ActionOverride("C0Sirene",FaceObject(Player1))
                           SetGlobal("RJParkSI","GLOBAL",0)
                           IncrementGlobal("RJCntParked","GLOBAL",-1)
                           ActionOverride("C0Sirene",JoinParty())
                           SetGlobal("RJGenie","GLOBAL",0)
                           DestroySelf()
                           EndCutSceneMode()~ EXIT
IF ~G("RJParkFY",1)~ THEN REPLY @171 DO ~
                           StartCutSceneMode()
                           MoveGlobalObject("RJFay",Player1)
                           Wait(1)
                           ActionOverride("RJFay",FaceObject(Player1))
                           SetGlobal("RJParkFY","GLOBAL",0)
                           IncrementGlobal("RJCntParked","GLOBAL",-1)
                           ChangeEnemyAlly(Myself,FAMILIAR)
                           ActionOverride("RJFay",AddFamiliar())
                           SetGlobal("RJGenie","GLOBAL",0)
                           DestroySelf()
                           EndCutSceneMode()~ EXIT
IF ~G("RJParkSA",1)~ THEN REPLY @183 DO ~
                           StartCutSceneMode()
                           MoveGlobalObject("Saerileth",Player1)
                           Wait(1)
                           ActionOverride("Saerileth",FaceObject(Player1))
                           SetGlobal("RJParkSA","GLOBAL",0)
                           IncrementGlobal("RJCntParked","GLOBAL",-1)
                           ActionOverride("Saerileth",JoinParty())
                           SetGlobal("RJGenie","GLOBAL",0)
                           DestroySelf()
                           EndCutSceneMode()~ EXIT
IF ~G("RJParkNI",1)~ THEN REPLY @192 DO ~
                           StartCutSceneMode()
                           MoveGlobalObject("Ninde",Player1)
                           Wait(1)
                           ActionOverride("Ninde",FaceObject(Player1))
                           SetGlobal("RJParkNI","GLOBAL",0)
                           IncrementGlobal("RJCntParked","GLOBAL",-1)
                           ActionOverride("Ninde",JoinParty())
                           SetGlobal("RJGenie","GLOBAL",0)
                           DestroySelf()
                           EndCutSceneMode()~ EXIT
IF ~G("RJParkTY",1)~ THEN REPLY @193 DO ~
                           StartCutSceneMode()
                           MoveGlobalObject("G#Tyris",Player1)
                           Wait(1)
                           ActionOverride("G#Tyris",FaceObject(Player1))
                           SetGlobal("RJParkTY","GLOBAL",0)
                           IncrementGlobal("RJCntParked","GLOBAL",-1)
                           ActionOverride("G#Tyris",JoinParty())
                           SetGlobal("RJGenie","GLOBAL",0)
                           DestroySelf()
                           EndCutSceneMode()~ EXIT
IF ~G("RJParkKE",1)~ THEN REPLY @194 DO ~
                           StartCutSceneMode()
                           MoveGlobalObject("RJKesai",Player1)
                           Wait(1)
                           ActionOverride("RJKesai",FaceObject(Player1))
                           SetGlobal("RJParkKE","GLOBAL",0)
                           IncrementGlobal("RJCntParked","GLOBAL",-1)
                           ActionOverride("RJKesai",JoinParty())
                           SetGlobal("RJGenie","GLOBAL",0)
                           DestroySelf()
                           EndCutSceneMode()~ EXIT
END

END

// Djinn talk 1

CHAIN IF ~G("RjaliDjinnTalk",1)~ THEN PLAYER1 RJDjinn1
@300 = @301 DO ~IncrementGlobal("RjaliDjinnTalk","GLOBAL",1)~
== RJGENIE @302
== PLAYER1 @303 = @304
== RJGENIE @305
== PLAYER1 @306
== RJGENIE @307
== PLAYER1 @308
== RJGENIE @309 = @310 = @311 = @320
END
++ @321 DO ~SetGlobal("RJCheat","GLOBAL",1)~ EXTERN PLAYER1 RJDjinn1.1
++ @322 EXTERN PLAYER1 RJDjinn1.1

CHAIN IF ~~ THEN PLAYER1 RJDjinn1.1
@314
== RJGENIE @312
== PLAYER1 @313 DO ~AddJournalEntry(@9009,INFO) SetGlobal("RJGenie","GLOBAL",0) ActionOverride("RJGENII",DestroySelf())~
== IMOENJ IF ~InParty("Imoen")~ THEN @315
== IMOEN2J IF ~InParty("Imoen2")~ THEN @315
== RJALIJ IF ~InParty("Rjali") OR(2) InParty("Imoen") InParty("Imoen2")~ THEN @316
== PLAYER1 @317
== IMOENJ IF ~InParty("Imoen")~ THEN @318
== IMOEN2J IF ~InParty("Imoen2")~ THEN @318
== RJALIJ IF ~InParty("Rjali")~ THEN @319
EXIT

// Djinn talk 2

CHAIN IF ~G("RjaliDjinnTalk",3)~ THEN RJALIJ RJDjinn2
@70 DO ~IncrementGlobal("RjaliDjinnTalk","GLOBAL",1)~
== RJGENIE @71 = @50 = @51
== RJALIJ @52 = @53
== RJGENIE @54
== RJALIJ @55 = @56
== RJGENIE @57
== RJALIJ @58 = @59 = @60 = @61
== RJGENIE @62 = @63
== RJALIJ @64 = @65 = @66 = @67 = @68
== RJGENIE @69 DO ~SetGlobal("RJGenie","GLOBAL",0) ActionOverride("RJGENII",DestroySelf())~
EXIT

// Djinn talk 3

CHAIN IF ~G("RjaliDjinnTalk",5)~ THEN PLAYER1 RJDjinn3
@350 = @351 DO ~IncrementGlobal("RjaliDjinnTalk","GLOBAL",1)~
== RJGENIE @352 = @353
== PLAYER1 @354
== RJGENIE @355
== PLAYER1 @356
== RJGENIE @357 = @358
== PLAYER1 @359 = @360 = @361 = @362
== RJGENIE @364
== PLAYER1 @365 = @366 = @367 = @368
== RJGENIE @369
== PLAYER1 @370
== RJGENIE @371 = @372 = @373
== PLAYER1 @374
== RJGENIE @375
== PLAYER1 @376
== RJGENIE @377
== PLAYER1 @378
== RJGENIE @379
== PLAYER1 @380
== RJGENIE @381 = @382 = @383 = @384
== PLAYER1 @385
== RJGENIE @386
== PLAYER1 @387
== RJGENIE @388 = @389
== PLAYER1 @390 = @363 = @391
== RJGENIE @392 = @393 = @394 = @395
== PLAYER1 @396
== RJGENIE @397 = @398 DO ~SetGlobal("RJGenie","GLOBAL",0)
                           DestroySelf()
                           StartCutSceneMode()
                           StartCutScene("RJSCUTFH")~
EXIT

// Djinn talk 4 (TOB)

CHAIN IF ~G("RjaliDjinnTalk",7)~ THEN PLAYER1 RJDjinn4
@400 = @401 DO ~IncrementGlobal("RjaliDjinnTalk","GLOBAL",1)~
== RJALI25J @402
== PLAYER1 @403
== RJALI25J @404 = @405
== PLAYER1 @406
== RJALI25J @407 DO ~ActionOverride("Rjali",CreateCreature("RJGENIE",[-1.-1],0))~
== RJALI25J @441
== RJGENIE @408 = @409
== RJALI25J @410
== RJGENIE @411
== RJALI25J @412
== PLAYER1 @413 = @414 = @415
== RJALI25J @416
== PLAYER1 @417
== RJGENIE @418 = @419 = @420 DO ~ActionOverride(Player1,CreateCreature("RJDRYAD",[-1.-1],0))~
== RJGENIE @442
== RJDRYAD @421
== RJGENIE @422
== RJDRYAD @423
== PLAYER1 @424
== RJALI25J @425
== RJDRYAD @426
== RJGENIE @427 = @428
== RJDRYAD @429
== RJGENIE @430
== RJDRYAD @431
== RJFAY IF ~G("RJParkFY",0)~ THEN @399
== RJDRYAD @432 DO ~ActionOverride("RJDRYAD",DestroySelf())~
== RJGENIE @433
== PLAYER1 @443
== RJALI25J @444 = @445
== RJGENIE @446
== RJALI25J @447
== RJGENIE @448
== RJALI25J @449 = @434 DO ~AddJournalEntry(@9044,INFO) ActionOverride("RJGENIE",DestroySelf())~
== PLAYER1 @435 DO ~SetGlobal("RJGenie","GLOBAL",0)
                    SetGlobal("RJGenieLeg","GLOBAL",1) 
                    TakePartyItem("RJLAMP") 
                    TakeItemReplace("RJLAMP2","RJLAMP",Player1)~
== RJALI25J @436
== PLAYER1 @437
== RJALI25J @438
== PLAYER1 @439
== RJALI25J @440
EXIT
