// Read this after all SoA dialogue. Start reading with Rjali.d
// This is Rjali's ToB main dialogue file, after she joins the party. Best read after SoA files.

APPEND RJALI25J

// REPLACE stubs

IF ~False()~ THEN BEGIN 0
SAY @1
IF ~~ THEN EXIT
END

IF ~False()~ THEN BEGIN 1
SAY @1
IF ~~ THEN EXIT
END

IF ~False()~ THEN BEGIN 2
SAY @1
IF ~~ THEN EXIT
END

IF ~False()~ THEN BEGIN 3
SAY @1
IF ~~ THEN EXIT
END

IF ~False()~ THEN BEGIN 4
SAY @1
IF ~~ THEN EXIT
END

END

// Chatting with Cespenar.

EXTEND_BOTTOM BOTSMITH 2
IF ~G("RJDoofCS",1)~ THEN REPLY @700 GOTO RJCasp
END

APPEND BOTSMITH

IF ~~ THEN BEGIN RJCasp
  SAY @702 = @703
IF ~~ THEN REPLY @704 DO ~SetGlobal("RJDoofCS","GLOBAL",2)~ GOTO RJCasp1
END

IF ~~ THEN BEGIN RJCasp1
  SAY @705 = @706 = @707
IF ~~ THEN REPLY @708 GOTO RJCasp2
END

IF ~~ THEN BEGIN RJCasp2
  SAY @701
COPY_TRANS BOTSMITH 2
END

END

// Volo's obligatory interjection in Saradush.

EXTEND_TOP SARVOLO 9 #2
+ ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) G("RjaliRomanceActive",2)~ + @1 + RjaliVoloBio2
END

CHAIN SARVOLO RjaliVoloBio2
@2
== RJALI25J IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID)~ THEN @3
EXTERN SARVOLO 9

// Solar, final interjections at the Throne of Bhaal and <CHARNAME>'s choice for the romanced protagonists.

// romanced, Rjali and PC talk before the choice

EXTEND_BOTTOM FINSOL01 27
IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) G("RjaliRomanceActive",2) G("RjaliSolarPers",0)~ DO ~SetGlobal("RjaliSolarPers","GLOBAL",1)~ EXTERN RJALI25J RjaliSolarPers
END

CHAIN RJALI25J RjaliSolarPers
@17
END
++ @4 EXTERN RJALI25J RjaliSolarPers1.1
++ @5 EXTERN RJALI25J RjaliSolarPers1.1
++ @6 EXTERN RJALI25J RjaliSolarPers1.1

CHAIN RJALI25J RjaliSolarPers1.1
@7 = @8 = @9
END
COPY_TRANS FINSOL01 27

// romanced, PC chooses to leave

EXTEND_BOTTOM FINSOL01 29
IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) G("RjaliRomanceActive",2) G("RjaliSolarLeave",0)~ DO ~SetGlobal("RjaliSolarLeave","GLOBAL",1)~ EXTERN RJALI25J RjaliSolarLeave
END

EXTEND_BOTTOM FINSOL01 30
IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) G("RjaliRomanceActive",2) G("RjaliSolarLeave",0)~ DO ~SetGlobal("RjaliSolarLeave","GLOBAL",1)~ EXTERN RJALI25J RjaliSolarLeave
END

EXTEND_BOTTOM FINSOL01 31
IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) G("RjaliRomanceActive",2) G("RjaliSolarLeave",0)~ DO ~SetGlobal("RjaliSolarLeave","GLOBAL",1)~ EXTERN RJALI25J RjaliSolarLeave
END

CHAIN RJALI25J RjaliSolarLeave
@10
END
COPY_TRANS FINSOL01 29

// romanced, PC chooses to stay

EXTEND_BOTTOM FINSOL01 32
IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) G("RjaliRomanceActive",2) G("RjaliSolarStay",0)~ DO ~SetGlobal("RjaliSolarStay","GLOBAL",1)~ EXTERN RJALI25J RjaliSolarStay
END

CHAIN RJALI25J RjaliSolarStay
@11
END
++ @12 EXTERN RJALI25J RjaliSolarStay1.1
++ @13 EXTERN RJALI25J RjaliSolarStay1.1

CHAIN RJALI25J RjaliSolarStay1.1
@14 = @15 = @16
COPY_TRANS FINSOL01 32

// Various non-essential interjection for ToB.

I_C_T AMMERC02 1 RjaliSaemonMet11
== RJALI25J IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID)~ THEN @18
END 

I_C_T BAZDRA01 0 RjaliDrakonis1
== RJALI25J IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID)~ THEN @19
END

I_C_T SARMEL01 56 RjaliSARMEL0156
== RJALI25J IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID)~ THEN @20
END

I_C_T SARMEL01 63 RjaliMelissanGiantDead1
== RJALI25J IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @22
END

I_C_T HGNYA01 6 RjaliHGNYA016
== RJALI25J IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID)~ THEN @24
END

I_C_T SENGUA03 1 RjaliSENGUA03
== RJALI25J IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID)~ THEN @25
END

I_C_T BALTH 6 RjaliBalth6
== RJALI25J IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID)~ THEN @26
END

I_C_T BALTH 17 RjaliBalth17
== RJALI25J IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID)~ THEN @27
END

// Watcher's Keep interjections are tricky. If we're visiting it in SoA, we should have interjections with Rjali's SoA dialogue file, and in ToB - with ToB one. Fortunately, we can do both, we just need to check if Chapter>7 for ToB.

// Watcher's Keep interjections, ToB

I_C_T GORPOL1 1 RjaliMetKnightsOfTheVigil1
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) GLT("Chapter",%bg2_chapter_8%) !InParty("O#Bran")~ THEN @28
END

I_C_T GORPOL1 1 RjaliMetKnightsOfTheVigil2
== RJALI25J IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) GGT("Chapter",%bg2_chapter_7%) !InParty("O#Bran")~ THEN @28
END

I_C_T GORCHR 2 RjaliChromaticDemon1
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) GLT("Chapter",%bg2_chapter_8%) !InParty("O#Bran")~ THEN @29
END

I_C_T GORCHR 2 RjaliChromaticDemon2
== RJALI25J IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) GGT("Chapter",%bg2_chapter_7%) !InParty("O#Bran")~ THEN @29
END

I_C_T GORIMP01 4 RjaliImpDeadWizards1
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) GLT("Chapter",%bg2_chapter_8%) !InParty("O#Bran")~ THEN @30
END

I_C_T GORIMP01 4 RjaliImpDeadWizards2
== RJALI25J IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) GGT("Chapter",%bg2_chapter_7%) !InParty("O#Bran")~ THEN @30
END

I_C_T GORCAMB 9 RjaliCambion1
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) GLT("Chapter",%bg2_chapter_8%) !InParty("O#Bran")~ THEN @31
END

I_C_T GORCAMB 9 RjaliCambion2
== RJALI25J IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) GGT("Chapter",%bg2_chapter_7%) !InParty("O#Bran")~ THEN @31
END

I_C_T GORDEMO 1 RjaliImprisonedOneMet1
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) GLT("Chapter",%bg2_chapter_8%) !InParty("O#Bran")~ THEN @32
END

I_C_T GORDEMO 1 RjaliImprisonedOneMet2
== RJALI25J IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) GGT("Chapter",%bg2_chapter_7%) !InParty("O#Bran")~ THEN @32
END

I_C_T GORODR1 35 RjaliOdrenFoolishness1
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) GLT("Chapter",%bg2_chapter_8%)~ THEN @33
END

I_C_T GORODR1 35 RjaliOdrenFoolishness2
== RJALI25J IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) GGT("Chapter",%bg2_chapter_7%)~ THEN @33
END

// Rjali's interjections on Aerie's baby.

I_C_T BAERIE25 154 RjaliAerieBaby1
== RJALI25J IF ~InParty("Rjali") See("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID)~ THEN @490
END

I_C_T BAERIE25 157 RjaliAerieBaby2
== RJALI25J IF ~InParty("Rjali") See("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID)~ THEN @491
END

APPEND RJALI25J

// Rjali refuses to be unloved.

IF ~G("RjaliReRomance",1)~ RjaliRefuses
SAY @34
++ @35 DO ~SetGlobal("RjaliReRomance","GLOBAL",0) SetGlobal("RjaliRomanceActive","GLOBAL",2)~ EXIT
END

// Rjali fixes you if your gender changes.

IF ~G("RjaliGender",1)~ RjaliGender
SAY @580
IF ~HasItemEquiped("BELT05",Player1)~ THEN REPLY @581 GOTO RjaliGender1
IF ~!HasItemEquiped("BELT05",Player1)~ THEN REPLY @586 GOTO RjaliGender3
END

IF ~~ RjaliGender1
SAY @582
IF ~~ THEN DO ~ReallyForceSpell(Player1,CLERIC_REMOVE_CURSE)
               TakePartyItem("BELT05")
               DestroyItem("BELT05")~ GOTO RjaliGender2
END

IF ~~ RjaliGender2
SAY @583
IF ~~ THEN REPLY @585 GOTO RjaliGender9
END

IF ~~ RjaliGender3
SAY @587
IF ~~ THEN DO ~ChangeGender(Player1,MALE)~ GOTO RjaliGender9
END

IF ~~ RjaliGender4
SAY @589
IF ~~ THEN REPLY @588 GOTO RjaliGender9
END

IF ~~ RjaliGender9
SAY @584
IF ~~ THEN DO ~SetGlobal("RjaliGender","GLOBAL",0)~ EXIT
END

// Rjali leaves you permanently if you turn evil.

IF ~G("RjaliLeaves",1)~ RjaliLeaves
SAY @600
IF ~G("RjaliMarried",1)~ THEN GOTO RjaliLeaves1
IF ~!G("RjaliMarried",1)~ THEN GOTO RjaliLeaves2
END

IF ~~ RjaliLeaves1
SAY @601
IF ~~ THEN DO ~
      SetGlobal("RjaliMarried","GLOBAL",2)
      GiveItem("RJRNG",Player1)
    ~ GOTO RjaliLeaves2
END

IF ~~ RjaliLeaves2
SAY @602
IF ~~ THEN DO ~
      SetGlobal("RjaliLeaves","GLOBAL",2)
      SetGlobal("RjaliRomanceActive","GLOBAL",0)
      LeaveParty()
      EscapeArea()
    ~ EXIT
END

// Solar.

IF ~G("RjaliTalkToB",2)~ b1
SAY @100
++ @101 + b1.1
++ @102 + b1.2
++ @103 + b1.3
++ @104 + b1.3
++ @105 + b.0
END

IF ~~ b.0
SAY @106
IF ~~ DO ~RealSetGlobalTimer("RjaliRomance","GLOBAL",RJ_FAST)
          IncrementGlobal("RjaliTalkToB","GLOBAL",-1)~ EXIT
END

IF ~~ b1.1
SAY @107
++ @108 + b1.3
END

IF ~~ b1.2
SAY @109
++ @110 + b1.3
END

IF ~~ b1.3
SAY @111 = @112 = @113
++ @114 + b1.4
++ @115 + b1.5
++ @116 + b1.6
END

IF ~~ b1.4
SAY @117 = @118
++ @119 + b1.7
END

IF ~~ b1.5
SAY @120 = @121
++ @122 + b1.7
END

IF ~~ b1.6
SAY @123
++ @124 + b1.7
END

IF ~~ b1.7
SAY @125
++ @126 + b1.8
END

IF ~~ b1.8
SAY @127 = @128
++ @129 + b1.10
++ @130 + b1.9
END

IF ~~ b1.9
SAY @131
IF ~~ THEN GOTO b1.10
END

IF ~~ b1.10
SAY @132 = @133
IF ~~ DO ~RealSetGlobalTimer("RjaliRomance","GLOBAL",RJ_TALK)
          IncrementGlobal("RjaliTalkToB","GLOBAL",1)~ EXIT
END

// More Tacos.

IF ~G("RjaliTalkToB",4)~ b2
SAY @140
++ @141 + b2.1
++ @142 + b2.1
++ @143 + b.0
END

IF ~~ b2.1
SAY @144 = @145
++ @146 + b2.2
++ @147 + b2.3
++ @148 + b2.4
END

IF ~~ b2.2
SAY @149
IF ~~ + b2.4
END

IF ~~ b2.3
SAY @150
IF ~~ + b2.4
END

IF ~~ b2.4
SAY @151 = @152 = @153
++ @154 + b2.4b
++ @155 + b2.4a
++ @156 + b2.4b
++ @157 + b2.4b
END

IF ~~ b2.4a
SAY @158
IF ~~ THEN + b2.4b
END

IF ~~ b2.4b
SAY @160
++ @159 + b2.5
END

IF ~~ b2.5
SAY @161
++ @162 + b2.6
++ @163 + b2.7
++ @164 + b2.7
END

IF ~~ b2.6
SAY @165
++ @166 + b2.7
END

IF ~~ b2.7
SAY @167
IF ~~ DO ~RealSetGlobalTimer("RjaliRomance","GLOBAL",RJ_TALK)
          IncrementGlobal("RjaliTalkToB","GLOBAL",1)~ EXIT
END

// Occupations.

IF ~G("RjaliTalkToB",6)~ b3
SAY @180
++ @181 + b3.1
++ @182 + b3.1
++ @183 + b3.1
++ @184 + b.0
END

IF ~~ b3.1
SAY @185 = @186
++ @187 + b3.2
++ @188 + b3.2
++ @189 + b3.2
END

IF ~~ b3.2
SAY @190
++ @191 + b3.3
END

IF ~~ b3.3
SAY @192 = @193 = @194 = @195
IF ~~ DO ~RealSetGlobalTimer("RjaliRomance","GLOBAL",RJ_TALK)
          IncrementGlobal("RjaliTalkToB","GLOBAL",1)~ EXIT
END

// Bhaal.

IF ~G("RjaliTalkToB",8)~ b4
SAY @200
++ @201 + b4.1
++ @202 + b4.1
++ @204 + b.0
END

IF ~~ b4.1
SAY @205 = @206
++ @207 + b4.2
++ @208 + b4.3
++ @209 + b4.4
++ @210 + b4.5
END

IF ~~ b4.2
SAY @211
IF ~~ + b4.6
END

IF ~~ b4.3
SAY @212
IF ~~ + b4.6
END

IF ~~ b4.4
SAY @213
IF ~~ + b4.6
END

IF ~~ b4.5
SAY @214 = @215
IF ~~ + b4.6
END

IF ~~ b4.6
SAY @216
++ @217 + b4.7
++ @218 + b4.8
++ @219 + b4.9
END

IF ~~ b4.7
SAY @220
IF ~~ + b4.9
END

IF ~~ b4.8
SAY @221
IF ~~ + b4.9
END

IF ~~ b4.9
SAY @222
++ @223 DO ~RealSetGlobalTimer("RjaliRomance","GLOBAL",RJ_TALK)
            IncrementGlobal("RjaliTalkToB","GLOBAL",1)~ EXIT
END

// Names.

IF ~G("RjaliTalkToB",10)~ b5
SAY @230
++ @231 + b5.2
END

IF ~~ b5.2
SAY @232
++ @233 + b5.2a
++ @234 + b5.2b
END

IF ~~ b5.2a
SAY @235
++ @236 + b5.3
END

IF ~~ b5.2b
SAY @237
++ @238 + b5.3
END

IF ~~ b5.3
SAY @239
++ @240 + b5.5
++ @241 + b5.4
++ @242 + b5.5
++ @243 + b5.5
END

IF ~~ b5.4
SAY @244
IF ~~ THEN GOTO b5.5
END

IF ~~ b5.5
SAY @245
++ @246 DO ~IncrementGlobal("RjaliTalkToB","GLOBAL",1)~ EXIT
END

// ToB, Saradush, at waking up - Rjali's romanced lovetalk

IF ~G("RjaliSaradush",1)~ b6
SAY @260
++ @261 + b6.2
++ @262 + b6.2
END

IF ~~ b6.2
SAY @265 = @266 = @267 = @268
++ @269 + b6.3
END

IF ~~ b6.3
SAY @270 = @271 = @272
++ @273 + b6.4
++ @274 + b6.4
++ @275 + b6.4
END

IF ~~ b6.4
SAY @278 = @279
++ @280 + b6.6
++ @281 + b6.6
END

IF ~~ b6.6
SAY @282
IF ~~ THEN DO ~SetGlobal("RjaliSaradush","GLOBAL",2)~ EXIT
END

// ToB challenge 3: innocence.

IF ~G("RjaliChallenge3",1)~ b7
SAY @290
++ @291 + b7.1
++ @292 + b7.1
END

IF ~~ b7.1
SAY @293 = @294
++ @295 + b7.2
++ @296 + b7.2
END

IF ~~ b7.2
SAY @298 = @299
++ @300 + b7.3
++ @301 + b7.3
END

IF ~~ b7.3
SAY @303 = @304
IF ~~ THEN DO ~SetGlobal("RjaliChallenge3","GLOBAL",2)~ EXIT
END

// ToB, the last night, lovetalk only. Triggers at rest when the last of the Five(BALTH) is dead.

IF ~G("RjaliLastNight",1)~ b8
SAY @310
++ @311 + b8.1
END

IF ~~ b8.1
SAY @312 = @313
++ @314 + b8.2
++ @315 + b8.2
++ @316 + b8.2
END

IF ~~ b8.2
SAY @317 = @318 = @319
++ @320 + b8.3
++ @321 + b8.3
END

IF ~~ b8.3
SAY @322
IF ~~ THEN DO ~SetGlobal("RjaliLastNight","GLOBAL",2) StartCutSceneMode() StartCutScene("Cut34a")~ EXIT
END

// Dakkon quest

IF ~G("RJiniiJIDDK",5)~ rjdkq1
SAY @340
++ @341 DO ~SetGlobal("RJiniiJIDDK","GLOBAL",6)~ EXIT
END

// ToB checking on the orphans one last time

IF ~G("RjaliChallenge5",2)~ b9
SAY @50
++ @51 DO ~SetGlobal("RjaliChallenge5","GLOBAL",3) StartCutSceneMode() StartCutScene("RJORCUT1")~ EXIT
END

// ToB, final challenge, killing the Ravager

IF ~G("RjaliChallenge5",6)~ b10
SAY @40 = @41 = @42
IF ~~ THEN DO ~SetGlobal("RjaliChallenge5","GLOBAL",7)~ EXIT
END

// On entry to Nordom's room

IF ~G("RJiniiJIDND",11)~ THEN BEGIN nd9
SAY @680
IF ~~ THEN REPLY @681 DO ~SetGlobal("RJiniiJIDND","GLOBAL",12)~ EXIT
END

END // End to APPEND

// On entry to Modron Maze

CHAIN IF ~G("RJiniiJIDND",5)~ THEN PLAYER1 nd3
@610 DO ~SetGlobal("RJiniiJIDND","GLOBAL",6)~
== RJALI25J @611
== RJFAY IF ~G("RJParkFY",0)~ THEN @614
== RJGR25J IF ~InParty("RJGrace")~ THEN @613
== PLAYER1 @612
END
IF ~~ THEN EXIT

// On entry to Modron Maze engineering room

CHAIN IF ~G("RJiniiJIDND",7)~ THEN PLAYER1 nd5
@620 DO ~SetGlobal("RJiniiJIDND","GLOBAL",8)~
== RJGR25J IF ~InParty("RJGrace")~ THEN @626
== RJALI25J @621
== PLAYER1 @622 = @625 = @623 = @624
END
IF ~~ THEN EXIT

// On entry to 1st room of the maze

CHAIN IF ~G("RJMaze",1)~ THEN PLAYER1 nd8.1
@630 DO ~IncrementGlobal("RJMaze","GLOBAL",1)~
== RJAN25J IF ~InParty("RJAnnah")~ THEN @631 = @632
== RJAN25J IF ~InParty("RJGrace") InParty("RJAnnah")~ THEN @633
== RJGR25J IF ~InParty("RJGrace") InParty("RJAnnah")~ THEN @634
== RJAN25J IF ~InParty("RJGrace") InParty("RJAnnah")~ THEN @635
== RJVOICE @637
== PLAYER1 @638
== RJVOICE @639 = @629
== RJGR25J IF ~InParty("RJGrace")~ THEN @627
== RJAN25J IF ~InParty("RJAnnah")~ THEN @628
== RJALI25J @636
END
IF ~~ THEN EXIT

// On entry to 2nd room of the maze

CHAIN IF ~G("RJMaze",3)~ THEN PLAYER1 nd8.2
@640 DO ~IncrementGlobal("RJMaze","GLOBAL",1)~
== RJALI25J @641
== PLAYER1 @642
== RJRV25J IF ~InParty("RJRavel")~ THEN @643
== PLAYER1 IF ~InParty("RJRavel")~ THEN @644 = @645
== RJRV25J IF ~InParty("RJRavel")~ THEN @646
== RJVOICE @648
== PLAYER1 @647
== RJVOICE @649
END
IF ~~ THEN DO ~ActionOverride("RJVOICE",DestroySelf())~ EXIT

// On entry to 3rd room of the maze

CHAIN IF ~G("RJMaze",5)~ THEN PLAYER1 nd8.3
@650 DO ~IncrementGlobal("RJMaze","GLOBAL",1)~
== RJALI25J @651
== E3FAD25J IF ~InParty("E3FADE")~ THEN @652
== RJAN25J IF ~InParty("E3FADE") InParty("RJAnnah")~ THEN @654
== 1XSKI25J IF ~InParty("Skie")~ THEN @653
== PLAYER1 @655
== RJVOICE @656
== PLAYER1 @657
== RJVOICE @658
END
IF ~~ THEN DO ~ActionOverride("RJVOICE",DestroySelf())~ EXIT

// On entry to 4th room of the maze

CHAIN IF ~G("RJMaze",7)~ THEN PLAYER1 nd8.4
@660 DO ~IncrementGlobal("RJMaze","GLOBAL",1)~
== RJALI25J @661
== SAERI25J IF ~InParty("Saerileth")~ THEN @662
== IMOEN25J IF ~InParty("Imoen2")~ THEN @663
== VICON25J IF ~InParty("Viconia")~ THEN @664
== PLAYER1 @665
== RJVOICE @666
== PLAYER1 @667
== RJVOICE @668
== PLAYER1 @669
END
IF ~~ THEN DO ~ActionOverride("RJVOICE",DestroySelf())~ EXIT

// On entry to 5th room of the maze

CHAIN IF ~G("RJMaze",9)~ THEN PLAYER1 nd8.5
@670 DO ~IncrementGlobal("RJMaze","GLOBAL",1)~
== RJVOICE @678 = @679
== PLAYER1 @671
== RJALI25J @672
== NEERA25J IF ~InParty("Neera")~ THEN @673
== AERIE25J IF ~InParty("Aerie")~ THEN @674
== M#AMB25J IF ~InParty("M#AMBER")~ THEN @675
== RJGR25J IF ~InParty("M#AMBER") InParty("RJGrace")~ THEN @676
== PLAYER1 @677
END
IF ~~ THEN DO ~ActionOverride("RJVOICE",DestroySelf())
               TriggerActivation("Exit1",FALSE)
               TriggerActivation("Exit2",FALSE)
               TriggerActivation("Exit3",FALSE)
               TriggerActivation("Exit4",FALSE)
               TriggerActivation("Exit4a",TRUE)~ EXIT
