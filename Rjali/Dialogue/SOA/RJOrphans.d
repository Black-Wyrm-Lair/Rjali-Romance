
APPEND RJCHEN

IF ~IsGabber(Player1)~ THEN BEGIN RJChen0
SAY @700
++ @701 EXIT
IF ~G("RJCHEN1",0)~ THEN REPLY @702 DO ~SetGlobal("RJCHEN1","GLOBAL",1)~ GOTO RJChen1
END

IF ~~ THEN BEGIN RJChen1
SAY @703
++ @704 + RJChen1.1
END

IF ~~ THEN BEGIN RJChen1.1
SAY @705 = @706
++ @707 + RJChen1.2
END

IF ~~ THEN BEGIN RJChen1.2
SAY @708 = @709 = @710
++ @711 + RJChen1.3
END

IF ~~ THEN BEGIN RJChen1.3
SAY @712 = @713 = @714
++ @715 + RJChen1.4
END

IF ~~ THEN BEGIN RJChen1.4
SAY @716
++ @717 EXIT
END

END

APPEND RJSEAN

// Sean says Hi

IF ~
IsGabber(Player1)
G("RjaliOrphanDaleson",1)
~ THEN BEGIN RJSean0
SAY @608
++ @629 EXIT
END

// 3rd Sean dialogue

IF ~
IsGabber(Player1)
G("RjaliOrphanSean",3)
~ THEN BEGIN RJSean2
SAY @600
++ @601 EXIT
END

// 2nd Sean dialogue

IF ~
IsGabber(Player1)
G("RjaliOrphanDaleson",2)
G("RjaliOrphanSean",2)
~ THEN BEGIN RJSean1
SAY @20
++ @21 + RJSean1.1
++ @22 + RJSean1.1
END

IF ~~ THEN BEGIN RJSean1.1
SAY @23
++ @24 EXTERN RJSEAN RJSean1.2
END

END

CHAIN IF ~~ THEN RJSEAN RJSean1.2
@25
== RJALIJ IF ~GLT("Chapter",%bg2_chapter_8%)~ THEN @26 DO ~GiveItemCreate("RJDAGGER","RJSean",0,0,0)~
== RJALI25J IF ~GGT("Chapter",%bg2_chapter_7%)~ THEN @26 DO ~GiveItemCreate("RJDAGGER","RJSean",0,0,0)~
== RJSEAN @27 = @28
== JAHEIRAJ IF ~GLT("Chapter",%bg2_chapter_8%) InParty("Jaheira")~ THEN @29
== JAHEI25J IF ~GGT("Chapter",%bg2_chapter_7%) InParty("Jaheira")~ THEN @29
== RJALIJ IF ~GLT("Chapter",%bg2_chapter_8%) !InParty("Jaheira")~ THEN @29
== RJALI25J IF ~GGT("Chapter",%bg2_chapter_7%) !InParty("Jaheira")~ THEN @29
== RJSEAN @30
END
+ ~GLT("Chapter",%bg2_chapter_8%)~ + @31 DO ~ActionOverride("RJSEAN",EscapeAreaMove("AR1304",2585,602,8))~ EXTERN RJALIJ RJSean1.3
+ ~GGT("Chapter",%bg2_chapter_7%)~ + @31 DO ~ActionOverride("RJSEAN",EscapeAreaMove("AR1304",2585,602,8))~ EXTERN RJALI25J RJSean1.4

CHAIN IF ~~ THEN RJALIJ RJSean1.3
@33
END
++ @34 DO ~SetGlobal("RjaliOrphanSean","GLOBAL",3)~ EXIT

CHAIN IF ~~ THEN RJALI25J RJSean1.4
@33
END
++ @34 DO ~SetGlobal("RjaliOrphanSean","GLOBAL",3)~ EXIT

APPEND RJMEGAN

// 3rd Megan dialogue

IF ~
IsGabber(Player1)
GGT("RjaliOrphanMegan",2)
~ THEN BEGIN RJMegan2
SAY @608
+ ~G("RjaliOrphanMegan",3)~ + @621 EXTERN RJMEGAN RJMegan2.1
+ ~!G("RjaliOrphanMegan",3)~ + @629 EXIT
END

END

CHAIN IF ~~ THEN RJMEGAN RJMegan2.1
@622 DO ~SetGlobal("RjaliOrphanMegan","GLOBAL",4)~
== RJALIJ IF ~GLT("Chapter",%bg2_chapter_8%)~ THEN @623
== RJALI25J IF ~GGT("Chapter",%bg2_chapter_7%)~ THEN @623
== KPCOOK01 @624 = @625
== RJALIJ IF ~GLT("Chapter",%bg2_chapter_8%)~ THEN @626
== RJALI25J IF ~GGT("Chapter",%bg2_chapter_7%)~ THEN @626
== RJMEGAN @627
== RJALIJ IF ~GLT("Chapter",%bg2_chapter_8%)~ THEN @628
== RJALI25J IF ~GGT("Chapter",%bg2_chapter_7%)~ THEN @628
== RJFAY IF ~G("RJParkFY",0)~ THEN @620
END
++ @629 EXIT

APPEND RJMEGAN

// Megan says Hi

IF ~
IsGabber(Player1)
G("RjaliOrphanDaleson",1)
~ THEN BEGIN RJMegan0
SAY @608
++ @629 EXIT
END

// 2nd Megan dialogue

IF ~
IsGabber(Player1)
G("RjaliOrphanDaleson",2)
G("RjaliOrphanMegan",2)
~ THEN BEGIN RJMegan1
SAY @40
++ @41 EXTERN RJMEGAN RJMegan1.1
++ @42 EXTERN RJMEGAN RJMegan1.1
END

END

CHAIN IF ~~ THEN RJMEGAN RJMegan1.1
@43 = @44
== RJALIJ IF ~GLT("Chapter",%bg2_chapter_8%)~ THEN @45
== RJALI25J IF ~GGT("Chapter",%bg2_chapter_7%)~ THEN @45
== RJMEGAN @46
== RJALIJ IF ~GLT("Chapter",%bg2_chapter_8%)~ THEN @47 = @48
== RJALI25J IF ~GGT("Chapter",%bg2_chapter_7%)~ THEN @47 = @48
== KPCOOK01 @49
== RJALIJ IF ~GLT("Chapter",%bg2_chapter_8%)~ THEN @50
== RJALI25J IF ~GGT("Chapter",%bg2_chapter_7%)~ THEN @50
== RJFAY IF ~G("RJParkFY",0)~ THEN @39
== KPCOOK01 @51
== RJALIJ IF ~GLT("Chapter",%bg2_chapter_8%)~ THEN @52
== RJALI25J IF ~GGT("Chapter",%bg2_chapter_7%)~ THEN @52
== RJMEGAN @53
END
+ ~GLT("Chapter",%bg2_chapter_8%)~ + @54 EXTERN RJALIJ RJMegan1.2
+ ~GGT("Chapter",%bg2_chapter_7%)~ + @54 EXTERN RJALI25J RJMegan1.4

CHAIN IF ~~ THEN RJALIJ RJMegan1.2
@55 = @56 DO ~GiveItemCreate("RJDOLL","RJMegan",0,0,0)~
== RJMEGAN @57
== RJALIJ @58 
== NALIAJ IF ~InParty("Nalia")~ THEN @62
END
++ @59 EXTERN RJALIJ RJMegan1.3

CHAIN IF ~~ THEN RJALIJ RJMegan1.3
@60
END
++ @61 DO ~SetGlobal("RjaliOrphanMegan","GLOBAL",3)~ EXIT

CHAIN IF ~~ THEN RJALI25J RJMegan1.4
@55 = @56 DO ~GiveItemCreate("RJDOLL","RJMegan",0,0,0)~
== RJMEGAN @57
== RJALI25J @58
== NALIA25J IF ~InParty("Nalia")~ THEN @62
END
++ @59 EXTERN RJALI25J RJMegan1.5

CHAIN IF ~~ THEN RJALI25J RJMegan1.5
@60
END
++ @61 DO ~SetGlobal("RjaliOrphanMegan","GLOBAL",3)~ EXIT

APPEND RJANNIE

// 3rd/4th Annie dialogue

IF ~
IsGabber(Player1)
GGT("RjaliOrphanAnnie",2)
~ THEN BEGIN RJAnnie2
SAY @608
+ ~G("RjaliOrphanAnnie",3)~ + @630 EXTERN RJANNIE RJAnnie2.1
+ ~GGT("Chapter",%bg2_chapter_7%) G("RjaliOrphanAnnie",4)~ + @650 DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ EXTERN RJBILLY RJBilly3.1
+ ~OR(2) GLT("Chapter",%bg2_chapter_8%) GGT("RjaliOrphanAnnie",4)~ + @629 EXIT
END

END

CHAIN IF ~~ THEN RJANNIE RJAnnie2.1
@631 = @632 DO ~SetGlobal("RjaliOrphanAnnie","GLOBAL",4)~
== RJALIJ IF ~GLT("Chapter",%bg2_chapter_8%)~ THEN @633
== RJALI25J IF ~GGT("Chapter",%bg2_chapter_7%)~ THEN @633
== RJANNIE @634
== RJALIJ IF ~GLT("Chapter",%bg2_chapter_8%)~ THEN @635
== RJALI25J IF ~GGT("Chapter",%bg2_chapter_7%)~ THEN @635
== RJANNIE @636
END
++ @629 EXIT

APPEND RJANNIE

// Annie says Hi

IF ~
IsGabber(Player1)
G("RjaliOrphanDaleson",1)
~ THEN BEGIN RJAnnie0
SAY @608
++ @629 EXIT
END

// 2nd Annie dialogue

IF ~
IsGabber(Player1)
G("RjaliOrphanDaleson",2)
G("RjaliOrphanAnnie",2)
~ THEN BEGIN RJAnnie1
SAY @70
++ @71 EXTERN RJANNIE RJAnnie1.1
++ @72 EXTERN RJANNIE RJAnnie1.1
END

END

CHAIN IF ~~ THEN RJANNIE RJAnnie1.1
@73
== VICONIJ IF ~GLT("Chapter",%bg2_chapter_8%) InParty("Viconia")~ THEN @74
== VICON25J IF ~GGT("Chapter",%bg2_chapter_7%) InParty("Viconia")~ THEN @74
== RJALIJ IF ~GLT("Chapter",%bg2_chapter_8%) InParty("Viconia")~ THEN @75
== RJALI25J IF ~GGT("Chapter",%bg2_chapter_7%) InParty("Viconia")~ THEN @75
== VICONIJ IF ~GLT("Chapter",%bg2_chapter_8%) InParty("Viconia")~ THEN @76 = @77
== VICON25J IF ~GGT("Chapter",%bg2_chapter_7%) InParty("Viconia")~ THEN @76 = @77
== RJALIJ IF ~GLT("Chapter",%bg2_chapter_8%) InParty("Viconia")~ THEN @78
== RJALI25J IF ~GGT("Chapter",%bg2_chapter_7%) InParty("Viconia")~ THEN @78
== VICONIJ IF ~GLT("Chapter",%bg2_chapter_8%) InParty("Viconia")~ THEN @79
== VICON25J IF ~GGT("Chapter",%bg2_chapter_7%) InParty("Viconia")~ THEN @79
END
+ ~InParty("Viconia")~ + @80 EXTERN RJANNIE RJAnnie1.2
+ ~!InParty("Viconia")~ + @81 EXTERN RJANNIE RJAnnie1.2

CHAIN IF ~~ THEN RJANNIE RJAnnie1.2
@82 = @83
== NEERAJ IF ~GLT("Chapter",%bg2_chapter_8%) InParty("Neera")~ THEN @84
== NEERA25J IF ~GGT("Chapter",%bg2_chapter_7%) InParty("Neera")~ THEN @84
== RJANNIE @85
END
++ @86 EXTERN RJANNIE RJAnnie1.3

CHAIN IF ~~ THEN RJANNIE RJAnnie1.3
@87
== RJALIJ IF ~GLT("Chapter",%bg2_chapter_8%)~ THEN @88 DO ~GiveItemCreate("RJDOLL","RJAnnie",0,0,0)~
== RJALI25J IF ~GGT("Chapter",%bg2_chapter_7%)~ THEN @88 DO ~GiveItemCreate("RJDOLL","RJAnnie",0,0,0)~
== RJANNIE @89 = @90
== NALIAJ IF ~GLT("Chapter",%bg2_chapter_8%) InParty("Nalia")~ THEN @91
== NALIA25J IF ~GGT("Chapter",%bg2_chapter_7%) InParty("Nalia")~ THEN @91
== RJALIJ IF ~GLT("Chapter",%bg2_chapter_8%)~ THEN @92
== RJALI25J IF ~GGT("Chapter",%bg2_chapter_7%)~ THEN @92
== RJANNIE IF ~G("RjaliOrphanBilly",3)~ THEN @142 DO ~ActionOverride("RJBILLY",EscapeAreaMove("AR1304",2859,1902,8)) ActionOverride("RJANNIE",EscapeAreaMove("AR1304",2905,1872,0))~
END
+ ~GLT("Chapter",%bg2_chapter_8%)~ + @93 EXTERN RJALIJ RJAnnie1.4
+ ~GGT("Chapter",%bg2_chapter_7%)~ + @93 EXTERN RJALI25J RJAnnie1.5

CHAIN IF ~~ THEN RJALIJ RJAnnie1.4
@94
== RJALIJ @95 DO ~SetGlobal("RjaliOrphanAnnie","GLOBAL",3)~
END
IF ~~ THEN EXIT

CHAIN IF ~~ THEN RJALI25J RJAnnie1.5
@94
== RJALI25J @95 DO ~SetGlobal("RjaliOrphanAnnie","GLOBAL",3)~
END
IF ~~ THEN EXIT

APPEND RJBOBBY

// Bobby says Hi

IF ~
IsGabber(Player1)
G("RjaliOrphanDaleson",1)
~ THEN BEGIN RJBobby0
SAY @608
++ @629 EXIT
END

// 3rd Bobby dialogue

IF ~
IsGabber(Player1)
G("RjaliOrphanBobby",3)
~ THEN BEGIN RJBobby2
SAY @603
++ @601 EXIT
END

// 2nd Bobby dialogue

IF ~
IsGabber(Player1)
G("RjaliOrphanDaleson",2)
G("RjaliOrphanBobby",2)
~ THEN BEGIN RJBobby1
SAY @100
+ ~G("RJParkNE",0)~ + @101 EXTERN RJBOBBY RJBobby1.1
+ ~G("RJParkNE",0)~ + @102 EXTERN RJBOBBY RJBobby1.1
+ ~!G("RJParkNE",0)~ + @101 EXTERN RJBOBBY RJBobby1.1a
+ ~!G("RJParkNE",0)~ + @102 EXTERN RJBOBBY RJBobby1.1a
END

END

CHAIN IF ~~ THEN RJBOBBY RJBobby1.1a
@103
== RJALIJ IF ~GLT("Chapter",%bg2_chapter_8%)~ THEN @104 DO ~GiveItemCreate("RJDAGGER","RJBobby",0,0,0)~
== RJALI25J IF ~GGT("Chapter",%bg2_chapter_7%)~ THEN @104 DO ~GiveItemCreate("RJDAGGER","RJBobby",0,0,0)~
== RJBOBBY @105 = @106
== NEERAP IF ~GLT("Chapter",%bg2_chapter_8%)~ THEN @117
== NEERA25P IF ~GGT("Chapter",%bg2_chapter_7%)~ THEN @117
== RJBOBBY @99
END
++ @118 DO ~StartCutSceneMode()
            SetGlobal("RjaliOrphanBobby","GLOBAL",3) 
            EscapeAreaMove("AR1304",2565,520,8)
            EndCutSceneMode()~ EXIT

CHAIN IF ~~ THEN RJBOBBY RJBobby1.1
@103
== RJALIJ IF ~GLT("Chapter",%bg2_chapter_8%)~ THEN @104 DO ~GiveItemCreate("RJDAGGER","RJBobby",0,0,0)~
== RJALI25J IF ~GGT("Chapter",%bg2_chapter_7%)~ THEN @104 DO ~GiveItemCreate("RJDAGGER","RJBobby",0,0,0)~
== RJBOBBY @105 = @106
== NEERAJ IF ~GLT("Chapter",%bg2_chapter_8%) InParty("Neera")~ THEN @107 = @109
== NEERA25J IF ~GGT("Chapter",%bg2_chapter_7%) InParty("Neera")~ THEN @107 = @109
== RJALIJ IF ~GLT("Chapter",%bg2_chapter_8%) !InParty("Neera")~ THEN @108 = @109
== RJALI25J IF ~GGT("Chapter",%bg2_chapter_7%) !InParty("Neera")~ THEN @108 = @109
== VICONIJ IF ~GLT("Chapter",%bg2_chapter_8%) InParty("Viconia")~ THEN @110
== VICON25J IF ~GGT("Chapter",%bg2_chapter_7%) InParty("Viconia")~ THEN @110
== JAHEIRAJ IF ~GLT("Chapter",%bg2_chapter_8%) InParty("Viconia") InParty("Jaheira")~ THEN @111
== JAHEI25J IF ~GGT("Chapter",%bg2_chapter_7%) InParty("Viconia") InParty("Jaheira")~ THEN @111
END
IF ~GLT("Chapter",%bg2_chapter_8%) InParty("Viconia")~ THEN REPLY @112 EXTERN VICONIJ RJBobby1.2
IF ~GGT("Chapter",%bg2_chapter_7%) InParty("Viconia")~ THEN REPLY @112 EXTERN VICON25J RJBobby1.2.1
IF ~!InParty("Viconia")~ THEN REPLY @114 EXTERN RJBOBBY RJBobby1.3

CHAIN IF ~~ THEN VICONIJ RJBobby1.2
@113
END
IF ~~ THEN REPLY @114 EXTERN RJBOBBY RJBobby1.3

CHAIN IF ~~ THEN VICON25J RJBobby1.2.1
@113
END
IF ~~ THEN REPLY @114 EXTERN RJBOBBY RJBobby1.3

CHAIN IF ~~ THEN RJBOBBY RJBobby1.3
@116
END
++ @115 DO ~StartCutSceneMode()
            SetGlobal("RjaliOrphanBobby","GLOBAL",3)
            EscapeAreaMove("AR1304",2565,520,8)
            EndCutSceneMode()~ EXIT

APPEND RJBILLY

// 3rd/4th Billy dialogue

IF ~
IsGabber(Player1)
GGT("RjaliOrphanBilly",2)
~ THEN BEGIN RJBilly2
SAY @640
+ ~G("RjaliOrphanBilly",3)~ + @641 EXTERN RJBILLY RJBilly2.1
+ ~GGT("Chapter",%bg2_chapter_7%) G("RjaliOrphanBilly",4)~ + @650 DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ + RJBilly3.1
+ ~OR(2) GLT("Chapter",%bg2_chapter_8%) GGT("RjaliOrphanBilly",4)~ + @629 EXIT
END

IF ~~ THEN BEGIN RJBilly3.1
SAY @689
++ @690 DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ EXTERN PLAYER1 RJBilly3.2
END

END

CHAIN IF ~~ THEN RJBILLY RJBilly2.1
@642 DO ~SetGlobal("RjaliOrphanBilly","GLOBAL",4)~
== RJANNIE @643
== RJBILLY @644
== RJANNIE @647
== RJALIJ IF ~GLT("Chapter",%bg2_chapter_8%)~ THEN @645
== RJALI25J IF ~GGT("Chapter",%bg2_chapter_7%)~ THEN @645
END
++ @646 EXIT

CHAIN IF ~~ THEN PLAYER1 RJBilly3.2
@651 DO ~SetGlobal("RjaliOrphanBilly","GLOBAL",5) SetGlobal("RjaliOrphanAnnie","GLOBAL",5)~
== RJANNIE @652 = @653
== RJALI25J @654
== RJFAY IF ~G("RJParkFY",0)~ THEN @649
== PLAYER1 @655
== RJBILLY @656 = @657 = @658
== RJANNIE @659
== RJALI25J @660
== PLAYER1 @661 = @662
== RJALI25J @663
== PLAYER1 @664
== RJBILLY @665 = @666 = @667
== PLAYER1 IF ~InParty("Jan")~ THEN @668
== JAN25J IF ~InParty("Jan")~ THEN @669 = @670
== PLAYER1 IF ~Dead("Jan")~ THEN @691
== RJBILLY IF ~Dead("Jan")~ THEN @692
== PLAYER1 @671 = @672
== RJANNIE @673 = @674 = @675
== RJALI25J @676
== PLAYER1 @677 = @678 = @679
== RJBILLY @680
== RJANNIE @680
== RJALI25J @681
== PLAYER1 @682
== RJALI25J @683
== PLAYER1 @684 = @685 = @686
== RJALI25J @687
== PLAYER1 @688
END
IF ~~ THEN DO ~StartCutSceneMode()
               ActionOverride("RJBilly",EscapeAreaMove("AR1306",756,1846,8))
               ActionOverride("RJAnnie",EscapeAreaMove("AR1306",758,1781,0))
               EndCutSceneMode()~ EXIT

APPEND RJBILLY

// Billy says Hi

IF ~
IsGabber(Player1)
G("RjaliOrphanDaleson",1)
~ THEN BEGIN RJBilly0
SAY @608
++ @629 EXIT
END

// 2nd Billy dialogue

IF ~
IsGabber(Player1)
G("RjaliOrphanDaleson",2)
G("RjaliOrphanBilly",2)
~ THEN BEGIN RJBilly1
SAY @120
++ @121 + RJBilly1.1
++ @122 + RJBilly1.1
END

IF ~~ THEN BEGIN RJBilly1.1
SAY @123 = @124
++ @125 EXTERN RJBILLY RJBil1y1.2
END

IF ~~ THEN BEGIN RJBilly1.3
SAY @131
+ ~GLT("Chapter",%bg2_chapter_8%)~ + @132 EXTERN RJALIJ RJBil1y1.4
+ ~GGT("Chapter",%bg2_chapter_7%)~ + @132 EXTERN RJALI25J RJBil1y1.6
END

END

CHAIN IF ~~ THEN RJBILLY RJBil1y1.2
@126
== RJANNIE @127
== RJBILLY @128
== RJFAY IF ~G("RJParkFY",0)~ THEN @119
== RJALIJ IF ~GLT("Chapter",%bg2_chapter_8%)~ THEN @129
== RJALI25J IF ~GGT("Chapter",%bg2_chapter_7%)~ THEN @129
END
++ @130 EXTERN RJBILLY RJBilly1.3

CHAIN IF ~~ THEN RJALIJ RJBil1y1.4
@133 DO ~GiveItemCreate("RJDAGGER","RJBilly",0,0,0)~
== RJBILLY @134 = @135
== NALIAJ IF ~InParty("Nalia")~ THEN @136
== RJALIJ IF ~InParty("Nalia")~ THEN @137
== RJALIJ @138
== RJBILLY IF ~G("RjaliOrphanAnnie",3)~ THEN @142 DO ~ActionOverride("RJBILLY",EscapeAreaMove("AR1304",2859,1902,8)) ActionOverride("RJANNIE",EscapeAreaMove("AR1304",2905,1872,0))~
END
++ @139 EXTERN RJALIJ RJBil1y1.5

CHAIN IF ~~ THEN RJALIJ RJBil1y1.5
@140
== RJALIJ @141 DO ~SetGlobal("RjaliOrphanBilly","GLOBAL",3)~
EXIT

CHAIN IF ~~ THEN RJALI25J RJBil1y1.6
@133 DO ~GiveItemCreate("RJDAGGER","RJBilly",0,0,0)~
== RJBILLY @134 = @135
== NALIA25J IF ~InParty("Nalia")~ THEN @136
== RJALI25J IF ~InParty("Nalia")~ THEN @137
== RJALI25J @138
== RJBILLY IF ~G("RjaliOrphanAnnie",3)~ THEN @142 DO ~ActionOverride("RJBILLY",EscapeAreaMove("AR1304",2859,1902,8)) ActionOverride("RJANNIE",EscapeAreaMove("AR1304",2905,1872,0))~
END
++ @139 EXTERN RJALI25J RJBil1y1.7

CHAIN IF ~~ THEN RJALI25J RJBil1y1.7
@140
== RJALI25J @141 DO ~SetGlobal("RjaliOrphanBilly","GLOBAL",3)~
EXIT

APPEND RJSUZY

// Suzy says Hi

IF ~
IsGabber(Player1)
G("RjaliOrphanDaleson",1)
~ THEN BEGIN RJSuzy0
SAY @608
++ @629 EXIT
END

// 3rd Suzy dialogue

IF ~
IsGabber(Player1)
G("RjaliOrphanSuzy",3)
~ THEN BEGIN RJSuzy2
SAY @602
++ @601 EXIT
END

// 2nd Suzy dialogue

IF ~
IsGabber(Player1)
G("RjaliOrphanDaleson",2)
G("RjaliOrphanSuzy",2)
~ THEN BEGIN RJSuzy1
SAY @150
++ @151 EXTERN RJSUZY RJSuzy1.1
++ @152 EXTERN RJSUZY RJSuzy1.1
END

END

CHAIN IF ~~ THEN RJSUZY RJSuzy1.1
@153
== RJALIJ IF ~GLT("Chapter",%bg2_chapter_8%)~ THEN @154
== RJALI25J IF ~GGT("Chapter",%bg2_chapter_7%)~ THEN @154
== RJSUZY @155
== RJALIJ IF ~GLT("Chapter",%bg2_chapter_8%)~ THEN @156 = @157
== RJALI25J IF ~GGT("Chapter",%bg2_chapter_7%)~ THEN @156 = @157
== RJSUZY @158 = @159
== RJALIJ IF ~GLT("Chapter",%bg2_chapter_8%)~ THEN @160 DO ~GiveItemCreate("RJDAGGER","RJSuzy",0,0,0)~
== RJALI25J IF ~GGT("Chapter",%bg2_chapter_7%)~ THEN @160 DO ~GiveItemCreate("RJDAGGER","RJSuzy",0,0,0)~
== RJSUZY @161 = @28 = @162
== RJALIJ IF ~GLT("Chapter",%bg2_chapter_8%)~ THEN @163
== RJALI25J IF ~GGT("Chapter",%bg2_chapter_7%)~ THEN @163
END
+ ~GLT("Chapter",%bg2_chapter_8%)~ + @164 DO ~ActionOverride("RJSUZY",EscapeAreaMove("AR1304",2654,583,8))~ EXTERN RJALIJ RJSuzy1.2
+ ~GGT("Chapter",%bg2_chapter_7%)~ + @164 DO ~ActionOverride("RJSUZY",EscapeAreaMove("AR1304",2654,583,8))~ EXTERN RJALI25J RJSuzy1.3

CHAIN IF ~~ THEN RJALIJ RJSuzy1.2
@165
END
++ @166 DO ~SetGlobal("RjaliOrphanSuzy","GLOBAL",3)~ EXIT

CHAIN IF ~~ THEN RJALI25J RJSuzy1.3
@165
END
++ @166 DO ~SetGlobal("RjaliOrphanSuzy","GLOBAL",3)~ EXIT

// Orphan pickup dialogues

// Pickup Megan and Sean dialogue

CHAIN IF ~G("RjaliOrphanMegan",1)~ THEN RJMEGAN RJMegan0
@170 = @171
== RJALIJ @172 DO ~SetGlobal("RjaliOrphanMegan","GLOBAL",2) SetGlobal("RjaliOrphanSean","GLOBAL",2)~
== RJMEGAN @173
== RJSEAN @174
== RJMEGAN @175 = @176
== RJALIJ IF ~G("RjaliOrphanCount",0)~ THEN @7 = @0 = @1
== RJALIJ @177
== RJSEAN @178
== RJMEGAN @179
== RJALIJ @180 = @181 = @182 = @183 DO ~ActionOverride("RJMEGAN",MoveBetweenAreasEffect("AR1306","SPDIMNDR",[2020.768],8)) ActionOverride("RJSEAN",MoveBetweenAreasEffect("AR1306","SPDIMNDR",[448.997],14)) AddJournalEntry(@9003,INFO)~
== RJALIJ @185
== RJALIJ IF ~G("RjaliOrphanCount",0)~ THEN @13 = @11
== RJALIJ IF ~GGT("RjaliOrphanCount",0)~ THEN @9
== RJALIJ IF ~G("RjaliOrphanCount",4)~ THEN @187
== RJALIJ @184 DO ~IncrementGlobal("RjaliOrphanCount","GLOBAL",2)~
EXIT

// Pickup Annie and Suzy dialogues

CHAIN IF ~G("RjaliOrphanAnnie",1)~ THEN RJANNIE RJAnnie0
@190
== RJALIJ @191 DO ~SetGlobal("RjaliOrphanAnnie","GLOBAL",2) SetGlobal("RjaliOrphanSuzy","GLOBAL",2)~
== RJANNIE @192
== RJSUZY @193
== RJALIJ @194
== RJANNIE @195 = @196
== RJSUZY @197
== RJALIJ IF ~G("RjaliOrphanCount",0)~ THEN @7 = @0 = @1
== RJALIJ @198
== RJSUZY @199
== RJANNIE @200
== RJALIJ @201 = @8 = @202 DO ~ActionOverride("RJANNIE",MoveBetweenAreasEffect("AR1306","SPDIMNDR",[2429.1084],4)) ActionOverride("RJSUZY",MoveBetweenAreasEffect("AR1306","SPDIMNDR",[503.1043],6)) AddJournalEntry(@9002,INFO)~
== RJALIJ @204
== RJALIJ IF ~G("RjaliOrphanCount",0)~ THEN @13 = @11
== RJALIJ IF ~G("RjaliOrphanCount",4)~ THEN @9
== RJALIJ IF ~G("RjaliOrphanCount",4)~ THEN @187
== RJALIJ @203 DO ~IncrementGlobal("RjaliOrphanCount","GLOBAL",2)~
EXIT

// Pickup Bobby dialogue

CHAIN IF ~G("RjaliOrphanBobby",1)~ THEN RJBOBBY RJBobby0
@210
== RJALIJ @211 DO ~SetGlobal("RjaliOrphanBobby","GLOBAL",2)~
== RJBOBBY @212
== NEERAJ IF ~InParty("Neera")~ THEN @213
END
IF ~InParty("Neera")~ THEN REPLY @214 EXTERN RJALIJ RJBobby0.1
IF ~!InParty("Neera")~ THEN EXTERN RJALIJ RJBobby0.1

CHAIN RJALIJ RJBobby0.1
@215
== RJALIJ IF ~InParty("Neera")~ THEN @216
== RJBOBBY @217
== RJALIJ @218 = @8 = @219 DO ~ActionOverride("RJBOBBY",MoveBetweenAreasEffect("AR1306","SPDIMNDR",[922.267],4)) AddJournalEntry(@9004,INFO)~
== RJALIJ IF ~G("RjaliOrphanCount",0)~ THEN @10 = @12
== RJALIJ IF ~G("RjaliOrphanCount",5)~ THEN @187
== RJALIJ @221 DO ~IncrementGlobal("RjaliOrphanCount","GLOBAL",1)~
EXIT

// Pickup Billy dialogue

CHAIN IF ~G("RjaliOrphanBilly",1)~ THEN RJBILLY RJBilly0
@230
== RJALIJ @231 DO ~SetGlobal("RjaliOrphanBilly","GLOBAL",2)~
== RJALIJ @232
== RJBILLY @233
== NALIAJ IF ~InParty("Nalia")~ THEN @234
== RJALIJ IF ~InParty("Nalia")~ THEN @235
== RJALIJ @236
== RJBILLY @237
== RJBILLY IF ~InParty("E3Fade")~ THEN @249
== RJALIJ @238
== RJBILLY @239
== RJALIJ @240 = @241
== 1XSKIEJ IF ~InParty("SkieDV")~ THEN @250
== RJBILLY @242
== RJALIJ @243
== RJBILLY @244
== RJALIJ @245 = @8 = @246 DO ~ActionOverride("RJBILLY",MoveBetweenAreasEffect("AR1306","SPDIMNDR",[2331.1082],12)) AddJournalEntry(@9005,INFO)~
== RJALIJ IF ~G("RjaliOrphanCount",0)~ THEN @10 = @12
END
++ @247 EXTERN RJALIJ RJBilly0.1

CHAIN IF ~~ THEN RJALIJ RJBilly0.1
@248 DO ~IncrementGlobal("RjaliOrphanCount","GLOBAL",1)~
== RJALIJ IF ~G("RjaliOrphanCount",5)~ THEN @187
EXIT

BEGIN RJGUARD

// Bjorn dialogue

IF ~
IsGabber(Player1)
OR(3)
  !GGT("RjaliOrphanSean",2)
  !GGT("RjaliOrphanSuzy",2)
  !GGT("RjaliOrphanBobby",2)
~ THEN BEGIN RJBjorn
SAY @604
+ ~~ + @611 EXIT
END

IF ~
IsGabber(Player1)
GGT("RjaliOrphanSean",2)
GGT("RjaliOrphanSuzy",2)
GGT("RjaliOrphanBobby",2)
~ THEN BEGIN RJBjorn
SAY @604
+ ~G("RJOrphanBjorn",0)~ + @605 EXTERN RJGUARD RJBjorn1
+ ~!G("RJOrphanBjorn",0)~ + @611 EXIT
END

CHAIN IF ~~ THEN RJGUARD RJBjorn1
@606 = @607
== RJBOBBY @608
== RJSEAN @600
== RJSUZY @602
== RJGUARD @609
== RJALIJ IF ~GLT("Chapter",%bg2_chapter_8%)~ THEN @610
== RJALI25J IF ~GGT("Chapter",%bg2_chapter_7%)~ THEN @610
END
++ @611 DO ~SetGlobal("RJOrphanBjorn","GLOBAL",1)~ EXIT

// Explain Majordomo = Daleson

ALTER_TRANS KPDOMO01 
BEGIN 2 END 
BEGIN 0 END
BEGIN
  "REPLY" ~@270~
  "EPILOGUE" ~GOTO RJDOMOOPS~
END

APPEND KPDOMO01

IF ~~ THEN BEGIN RJDOMOOPS
  SAY @271
  ++ @272 + RJDOMOOPS.1
END

IF ~~ THEN BEGIN RJDOMOOPS.1
  SAY @273
  ++ @274 + RJDOMOOPS.2
END

IF ~~ THEN BEGIN RJDOMOOPS.2
  SAY @275
  ++ @276 + 3
END

// Daleson dialogues

// 1st Daleson dialogue

IF WEIGHT #0 ~
IsGabber(Player1)
G("RjaliOrphan",1)
G("RjaliOrphanDaleson",0)
~ THEN BEGIN RJDaleson0
SAY @300
+ ~OR(2) InParty("Nalia") Dead("Nalia")~ + @301 + RJDaleson0.1
+ ~!InParty("Nalia") !Dead("Nalia")~ + @302 + RJDaleson0.1
END

IF ~~ RJDaleson0.1
SAY @303
+ ~!PartyGoldGT(10000)~ + @304 EXTERN KPDOMO01 RJDaleson0.2
+ ~PartyGoldGT(10000)~ + @305 EXTERN KPDOMO01 RJDaleson0.2
END

END

CHAIN KPDOMO01 RJDaleson0.2
@306
== KPDOMO01 IF ~!PartyGoldGT(10000)~ THEN @307
== KPDOMO01 IF ~PartyGoldGT(10000) !PartyGoldGT(100000)~ THEN @307 DO ~TakePartyGold(10000)~
== KPDOMO01 IF ~PartyGoldGT(100000)~ THEN @307 DO ~TakePartyGold(100000)~
== KPDOMO01 @308
== RJALIJ @310
== NALIAJ IF ~InParty("Nalia")~ THEN @311
END
++ @312 EXTERN RJALIJ RJDaleson0.3

CHAIN RJALIJ RJDaleson0.3
@313 = @314
== NALIAJ IF ~InParty("Nalia")~ THEN @315
== RJALIJ IF ~InParty("Nalia") !G("RjaliNaliaSpice",1)~ THEN @316 = @317
== RJALIJ IF ~InParty("Nalia") G("RjaliNaliaSpice",1)~ THEN @318
== RJALIJ IF ~InParty("Nalia")~ THEN @319 = @320
== NALIAJ IF ~InParty("Nalia")~ THEN @321
== RJFAY IF ~G("RJParkFY",0) InParty("Nalia")~ THEN @325
== KPDOMO01 @322 = @323
END
++ @324 DO ~SetGlobal("RjaliOrphanDaleson","GLOBAL",1)~ EXIT

// 2nd Daleson dialogue

APPEND KPDOMO01

IF WEIGHT #0 ~
IsGabber(Player1)
G("RjaliOrphanCount",6)
G("RjaliOrphanDaleson",1)
~ THEN BEGIN RJDaleson1
SAY @330
++ @331 + RJDaleson1.1
++ @332 + RJDaleson1.2
END

IF ~~ THEN BEGIN RJDaleson1.1
SAY @333
++ @334 + RJDaleson1.3
END

IF ~~ THEN BEGIN RJDaleson1.2
SAY @335
++ @336 + RJDaleson1.3
END

IF ~~ THEN BEGIN RJDaleson1.3
SAY @337 = @338
++ @339 + RJDaleson1.4
END

IF ~~ THEN BEGIN RJDaleson1.4
SAY @340 = @341
+ ~InParty("Imoen2")~ + @342 EXTERN IMOEN2J RJDaleson1.5
+ ~!InParty("Imoen2")~ + @342 + RJDaleson1.6
END

IF ~~ THEN BEGIN RJDaleson1.6
SAY @344 = @345 = @355 = @346
++ @347 EXTERN RJALIJ RJDaleson1.7
END

IF ~~ THEN BEGIN RJDaleson1.8
SAY @353 = @356 = @357 = @358 = @359
IF ~~ THEN REPLY @360 DO ~
               SetGlobal("RjaliOrphanDaleson","GLOBAL",2)
               StartCutSceneMode()
               AddJournalEntry(@9055,INFO)
               AddexperienceParty(1200)
               StartCutScene("RJTLBATH")~ EXIT
END

END

CHAIN IMOEN2J RJDaleson1.5
@343
END
IF ~~ THEN EXTERN KPDOMO01 RJDaleson1.6

CHAIN RJALIJ RJDaleson1.7
@348
== NALIAJ IF ~InParty("Nalia")~ THEN @349
== KPDOMO01 @350 = @351
END
++ @352 EXTERN KPDOMO01 RJDaleson1.8

// 3rd Daleson dialogue

APPEND KPDOMO01

IF WEIGHT #0 ~
IsGabber(Player1)
G("RjaliGenOrphan",1)
G("RjaliOrphanDaleson",2)
~ THEN BEGIN RJDaleson2
SAY @400
+ ~InParty("Imoen2")~ + @401 + RJDaleson2.1
+ ~!InParty("Imoen2")~ + @402 + RJDaleson2.2
END

IF ~~ THEN BEGIN RJDaleson2.1
SAY @403
++ @404 + RJDaleson2.3
END

IF ~~ THEN BEGIN RJDaleson2.2
SAY @405
++ @406 + RJDaleson2.3
END

IF ~~ THEN BEGIN RJDaleson2.3
SAY @407 = @408
++ @410 EXTERN RJARI RJDaleson2.4
END

IF ~~ THEN BEGIN RJDaleson2.7
SAY @449
++ @450 DO ~SetGlobal("RjaliOrphanDaleson","GLOBAL",3)
            StartCutSceneMode()
            AddJournalEntry(@9006,INFO)
            EndCutSceneMode()~ EXIT
END

END

CHAIN RJARI RJDaleson2.4
@411
== RJHAMAD @412
END
++ @413 EXTERN RJALIJ RJDaleson2.5

CHAIN RJALIJ RJDaleson2.5
@414
== IMOEN2J IF ~InParty("Imoen2")~ THEN @415
== RJALIJ @451
END
++ @416 EXTERN RJALIJ RJDaleson2.6

CHAIN RJALIJ RJDaleson2.6
@417
== RJHAMAD @418 = @419 = @420 = @421 = @422 = @423 = @424 = @425
== RJALIJ @426
== RJHAMAD @427
== RJALIJ @428 = @429 = @430 = @431
== RJHAMAD @432
== RJARI @433
== KPDOMO01 @434
== RJALIJ @435
== NALIAJ IF ~InParty("Nalia")~ THEN @436
== IMOEN2J IF ~InParty("Imoen2")~ THEN @437
== NEERAJ IF ~InParty("Neera")~ THEN @438
== VICONIJ IF ~InParty("Viconia")~ THEN @439
== JAHEIRAJ IF ~InParty("Jaheira")~ THEN @440
== AERIEJ IF ~InParty("Aerie")~ THEN @441
== SAERILEJ IF ~InParty("Saerileth")~ THEN @452
== TASHIAJ IF ~InParty("Tashia")~ THEN @453
== LK#NINDJ IF ~InParty("Ninde")~ THEN @454
== G#TYRISJ IF ~InParty("G#Tyris")~ THEN @455
== YXYVEJ IF ~InParty("Yxyve")~ THEN @456
== 1XSKIEJ IF ~InParty("SkieDV")~ THEN @457
== L3PETSYJ IF ~InParty("L3Petsy")~ THEN @458
== C0SIRE2J IF ~InParty("C0Sirene")~ THEN @460
== RJALIJ @442
== RJHAMAD @443
== RJALIJ @444
== RJFAY IF ~G("RJParkFY",0)~ THEN @459
== RJALIJ @445 = @446 = @447
END
++ @448 EXTERN KPDOMO01 RJDaleson2.7

// Keep staff orphan dialogues

// CHAP01 - Bolumir

// Flag Bolumir installed/uninstalled in chapel

ALTER_TRANS KPDOMO01
BEGIN 67 END
BEGIN 0 END
BEGIN
  "ACTION" ~SetGlobal("RJCHAP01","GLOBAL",1)~
END

ALTER_TRANS KPCHAP01
BEGIN 14 END
BEGIN 0 END
BEGIN
  "ACTION" ~SetGlobal("RJCHAP01","GLOBAL",0)~
END

// MAID01 - Chanelle

// Flag dowery for Chanelle and Jessup

ALTER_TRANS KPMAID01
BEGIN 16 END
BEGIN 0 END
BEGIN
  "ACTION" ~SetGlobal("RJMAID01","GLOBAL",1)~
END

// Extra Chanelle Talks

EXTEND_BOTTOM KPMAID01 0
IF ~G("RjaliOrphanDaleson",1)~ THEN GOTO RJMAID01.1
IF ~G("RjaliOrphanDaleson",2)~ THEN GOTO RJMAID01.2
IF ~G("RjaliOrphanDaleson",3)~ THEN GOTO RJMAID01.3
IF ~G("RjaliOrphanDaleson",4)~ THEN GOTO RJMAID01.4
IF ~G("RjaliOrphanDaleson",5)~ THEN GOTO RJMAID01.5
IF ~G("RJMAID01",1) GGT("RjaliOrphanDaleson",1)~ THEN DO ~SetGlobal("RJMAID01","GLOBAL",2)~ GOTO RJMAID01.0
END

EXTEND_BOTTOM KPMAID01 1
IF ~G("RjaliOrphanDaleson",1)~ THEN GOTO RJMAID01.1
IF ~G("RjaliOrphanDaleson",2)~ THEN GOTO RJMAID01.2
IF ~G("RjaliOrphanDaleson",3)~ THEN GOTO RJMAID01.3
IF ~G("RjaliOrphanDaleson",4)~ THEN GOTO RJMAID01.4
IF ~G("RjaliOrphanDaleson",5)~ THEN GOTO RJMAID01.5
IF ~G("RJMAID01",1) GGT("RjaliOrphanDaleson",1)~ THEN DO ~SetGlobal("RJMAID01","GLOBAL",2)~ GOTO RJMAID01.0
END

APPEND KPMAID01

// Chanelle Thank You

IF ~~ THEN BEGIN RJMAID01.0
SAY @800
IF ~~ THEN EXIT
END

// Chanelle Talk #1

IF ~~ THEN BEGIN RJMAID01.1
SAY @801 = @802
IF ~~ THEN EXIT
END

// Chanelle Talk #2

IF ~~ THEN BEGIN RJMAID01.2
SAY @803 = @804
IF ~~ THEN EXIT
END

// Chanelle Talk #3

IF ~~ THEN BEGIN RJMAID01.3
SAY @805 = @806
IF ~~ THEN EXIT
END

// Chanelle Talk #4

IF ~~ THEN BEGIN RJMAID01.4
SAY @807 = @808
IF ~~ THEN EXIT
END

// Chanelle Talk #5

IF ~~ THEN BEGIN RJMAID01.5
SAY @809 = @810
IF ~~ THEN EXIT
END

END

// COOK01 - Olma

// Extra Olma Talks

EXTEND_BOTTOM KPCOOK01 0
IF ~G("RjaliOrphanDaleson",1)~ THEN GOTO RJCOOK01.1
IF ~G("RjaliOrphanDaleson",2)~ THEN GOTO RJCOOK01.2
IF ~G("RjaliOrphanDaleson",3)~ THEN GOTO RJCOOK01.3
IF ~G("RjaliOrphanDaleson",4)~ THEN GOTO RJCOOK01.4
IF ~G("RjaliOrphanDaleson",5)~ THEN GOTO RJCOOK01.5
END

EXTEND_BOTTOM KPCOOK01 1
IF ~G("RjaliOrphanDaleson",1)~ THEN GOTO RJCOOK01.1
IF ~G("RjaliOrphanDaleson",2)~ THEN GOTO RJCOOK01.2
IF ~G("RjaliOrphanDaleson",3)~ THEN GOTO RJCOOK01.3
IF ~G("RjaliOrphanDaleson",4)~ THEN GOTO RJCOOK01.4
IF ~G("RjaliOrphanDaleson",5)~ THEN GOTO RJCOOK01.5
END

APPEND KPCOOK01

// Olma Talk #1

IF ~~ THEN BEGIN RJCOOK01.1
SAY @840 = @841
IF ~~ THEN EXIT
END

// Olma Talk #2

IF ~~ THEN BEGIN RJCOOK01.2
SAY @842 = @843
IF ~~ THEN EXIT
END

// Olma Talk #3

IF ~~ THEN BEGIN RJCOOK01.3
SAY @844 = @845
IF ~~ THEN EXIT
END

// Olma Talk #4

IF ~~ THEN BEGIN RJCOOK01.4
SAY @846 = @847
IF ~~ THEN EXIT
END

// Olma Talk #5

IF ~~ THEN BEGIN RJCOOK01.5
SAY @848 = @849
IF ~~ THEN EXIT
END

END

// CAPT02 - Cernick

// Extra Cernick Talks

EXTEND_BOTTOM KPCAPT02 1
IF ~G("RjaliOrphanDaleson",1)~ THEN GOTO RJCAPT02.1
IF ~G("RjaliOrphanDaleson",2)~ THEN GOTO RJCAPT02.2
IF ~G("RjaliOrphanDaleson",3)~ THEN GOTO RJCAPT02.3
IF ~G("RjaliOrphanDaleson",4)~ THEN GOTO RJCAPT02.4
IF ~G("RjaliOrphanDaleson",5)~ THEN GOTO RJCAPT02.5
END

EXTEND_BOTTOM KPCAPT02 2
IF ~G("RjaliOrphanDaleson",1)~ THEN GOTO RJCAPT02.1
IF ~G("RjaliOrphanDaleson",2)~ THEN GOTO RJCAPT02.2
IF ~G("RjaliOrphanDaleson",3)~ THEN GOTO RJCAPT02.3
IF ~G("RjaliOrphanDaleson",4)~ THEN GOTO RJCAPT02.4
IF ~G("RjaliOrphanDaleson",5)~ THEN GOTO RJCAPT02.5
END

APPEND KPCAPT02

// Cernick Talk #1

IF ~~ THEN BEGIN RJCAPT02.1
SAY @860 = @861
IF ~~ THEN EXIT
END

// Cernick Talk #2

IF ~~ THEN BEGIN RJCAPT02.2
SAY @862 = @863
IF ~~ THEN EXIT
END

// Cernick Talk #3

IF ~~ THEN BEGIN RJCAPT02.3
SAY @864 = @865
IF ~~ THEN EXIT
END

// Cernick Talk #4

IF ~~ THEN BEGIN RJCAPT02.4
SAY @866 = @867
IF ~~ THEN EXIT
END

// Cernick Talk #5

IF ~~ THEN BEGIN RJCAPT02.5
SAY @868 = @869
IF ~~ THEN EXIT
END

END

// BUTL01 - Metigo

// Extra Metigo Talks

EXTEND_BOTTOM KPBUTL01 0
IF ~G("RjaliOrphanDaleson",1)~ THEN GOTO RJBUTL01.1
IF ~G("RjaliOrphanDaleson",2)~ THEN GOTO RJBUTL01.2
IF ~G("RjaliOrphanDaleson",3)~ THEN GOTO RJBUTL01.3
IF ~G("RjaliOrphanDaleson",4)~ THEN GOTO RJBUTL01.4
IF ~G("RjaliOrphanDaleson",5)~ THEN GOTO RJBUTL01.5
END

EXTEND_BOTTOM KPBUTL01 1
IF ~G("RjaliOrphanDaleson",1)~ THEN GOTO RJBUTL01.1
IF ~G("RjaliOrphanDaleson",2)~ THEN GOTO RJBUTL01.2
IF ~G("RjaliOrphanDaleson",3)~ THEN GOTO RJBUTL01.3
IF ~G("RjaliOrphanDaleson",4)~ THEN GOTO RJBUTL01.4
IF ~G("RjaliOrphanDaleson",5)~ THEN GOTO RJBUTL01.5
END

APPEND KPBUTL01

// Metigo Talk #1

IF ~~ THEN BEGIN RJBUTL01.1
SAY @880 = @881
IF ~~ THEN EXIT
END

// Metigo Talk #2

IF ~~ THEN BEGIN RJBUTL01.2
SAY @882 = @883
IF ~~ THEN EXIT
END

// Metigo Talk #3

IF ~~ THEN BEGIN RJBUTL01.3
SAY @884 = @885
IF ~~ THEN EXIT
END

// Metigo Talk #4

IF ~~ THEN BEGIN RJBUTL01.4
SAY @886 = @887
IF ~~ THEN EXIT
END

// Metigo Talk #5

IF ~~ THEN BEGIN RJBUTL01.5
SAY @888 = @889
IF ~~ THEN EXIT
END

END
