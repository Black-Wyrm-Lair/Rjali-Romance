
// MAID02 - Talira

// Extra Talira Talks

EXTEND_BOTTOM KPMAID02 0
IF ~G("RJTaliraRomance",0)~ THEN GOTO RJMAID02.1
IF ~G("RJTaliraRomance",1)~ THEN GOTO RJMAID02.2
IF ~G("RJTaliraRomance",2)~ THEN GOTO RJMAID02.3
END

EXTEND_BOTTOM KPMAID02 1
IF ~G("RJTaliraRomance",0)~ THEN GOTO RJMAID02.1
IF ~G("RJTaliraRomance",1)~ THEN GOTO RJMAID02.2
IF ~G("RJTaliraRomance",2)~ THEN GOTO RJMAID02.3
END

APPEND KPMAID02

// Talira Talk #1

IF ~~ THEN BEGIN RJMAID02.1
SAY @4 = @5
IF ~~ THEN DO ~SetGlobal("RJTaliraRomance","GLOBAL",1)~ EXIT
END

// Talira Talk #2

IF ~~ THEN BEGIN RJMAID02.2
SAY @6 = @7
IF ~~ THEN DO ~SetGlobal("RJTaliraRomance","GLOBAL",2)~ EXIT
END

// Talira Talk #3

IF ~~ THEN BEGIN RJMAID02.3
SAY @8 = @9
IF ~~ THEN EXIT
END

// Talira Talk #4 - The Bath

IF WEIGHT #-20 ~InPartySlot(LastTalkedToBy,0)
                G("RJTaliraRomance",3)~ THEN BEGIN RJMAID02.4
SAY @12
IF ~~ THEN EXTERN KPMAID02 RJTaliraBath.1
END

IF WEIGHT #-20 ~G("RJTaliraShoo",1)~ THEN BEGIN RJTaliraBath.2
SAY @14 = @15
IF ~~ THEN REPLY @16 GOTO RJTaliraBath.One
IF ~~ THEN REPLY @17 GOTO RJTaliraBath.Two
IF ~~ THEN REPLY @18 GOTO RJTaliraBath.Three
IF ~~ THEN REPLY @19 GOTO RJTaliraBath.Four
IF ~~ THEN REPLY @20 GOTO RJTaliraBath.Five
END

IF ~~ THEN BEGIN RJTaliraBath.One
SAY @46 = @47 = @48
IF ~~ THEN REPLY @50 GOTO RJTaliraBath.SlowDown
IF ~~ THEN REPLY @51 GOTO RJTaliraBath.SlowDownPhysical
IF ~~ THEN REPLY @52 GOTO RJTaliraBath.SlowDownPhysical
IF ~~ THEN REPLY @53 GOTO RJTaliraBath.SlowDownConditional
END

IF ~~ THEN BEGIN RJTaliraBath.Two
SAY @55 = @56 = @57
IF ~~ THEN REPLY @58 GOTO RJTaliraBath.SlowDown
IF ~~ THEN REPLY @59 GOTO RJTaliraBath.SlowDownPhysical
IF ~~ THEN REPLY @60 GOTO RJTaliraBath.SlowDownPhysical
IF ~~ THEN REPLY @53 GOTO RJTaliraBath.SlowDownConditional
END

IF ~~ THEN BEGIN RJTaliraBath.Three
SAY @61 = @62 = @63
IF ~~ THEN REPLY @64 GOTO RJTaliraBath.SlowDown
IF ~~ THEN REPLY @65 GOTO RJTaliraBath.SpeedUp
IF ~~ THEN REPLY @66 GOTO RJTaliraBath.SlowDownPhysical
IF ~~ THEN REPLY @67 GOTO RJTaliraBath.SlowDownPhysical
IF ~~ THEN REPLY @53 GOTO RJTaliraBath.SlowDownConditional
END

IF ~~ THEN BEGIN RJTaliraBath.Four
SAY @68 = @69 = @70
IF ~~ THEN REPLY @71 GOTO RJTaliraBath.SlowDown
IF ~~ THEN REPLY @72 GOTO RJTaliraBath.SpeedUp
IF ~~ THEN REPLY @73 GOTO RJTaliraBath.SlowDownPhysical
IF ~~ THEN REPLY @53 GOTO RJTaliraBath.SlowDownConditional
END

IF ~~ THEN BEGIN RJTaliraBath.Five
SAY @75 = @76
IF ~~ THEN REPLY @79 GOTO RJTaliraBath.Three
IF ~~ THEN REPLY @80 GOTO RJTaliraBath.SimpleBath
IF ~~ THEN REPLY @81 GOTO RJTaliraBath.Three
IF ~~ THEN REPLY @53 GOTO RJTaliraBath.SlowDownConditional
END

IF ~~ THEN BEGIN RJTaliraBath.SimpleBath
SAY @83 = @84 = @85 = @86
IF ~~ THEN REPLY @87 GOTO RJTaliraBath.SpeedUp
IF ~~ THEN REPLY @50 GOTO RJTaliraBath.SlowDown
IF ~~ THEN REPLY @88 GOTO RJTaliraBath.SlowDownPhysical
IF ~~ THEN REPLY @52 GOTO RJTaliraBath.SlowDownPhysical
END

IF ~~ THEN BEGIN RJTaliraBath.SlowDown
SAY @98 = @99
IF ~~ THEN REPLY @100 GOTO RJTalira.DArnese
IF ~~ THEN REPLY @53 GOTO RJTaliraBath.SlowDownConditional
END

IF ~~ THEN BEGIN RJTaliraBath.SlowDownPhysical
SAY @101 = @102 = @103 = @63
IF ~~ THEN REPLY @100 GOTO RJTalira.DArnese
IF ~~ THEN REPLY @53 GOTO RJTaliraBath.SlowDownConditional
END

IF ~~ THEN BEGIN RJTalira.DArnese
SAY @105 = @106 = @107 = @108 = @109
IF ~~ THEN REPLY @110 GOTO RJTalira.DArneseInstruction
IF ~~ THEN REPLY @111 GOTO RJTalira.DArneseInstruction
IF ~~ THEN REPLY @112 GOTO RJTalira.DArneseInstruction
END

IF ~~ THEN BEGIN RJTaliraBath.SpeedUp
SAY @113 = @103 = @63
IF ~~ THEN REPLY @100 GOTO RJTalira.DArnese
IF ~~ THEN REPLY @53 GOTO RJTaliraBath.SlowDownConditional
END

IF ~~ THEN BEGIN RJTaliraBath.SlowDownConditional
SAY @115 = @116 = @117 = @118 = @119 = @120 = @121
IF ~~ THEN REPLY @100 GOTO RJTalira.DArnese
IF ~~ THEN REPLY @112 GOTO RJTalira.DArneseInstruction
END

IF ~~ THEN BEGIN RJTalira.DArneseInstruction
SAY @122 = @123
IF ~~ THEN GOTO RJTalira.FinalFlirtOne
END

IF ~~ THEN BEGIN RJTalira.FinalFlirtOne
SAY @130 = @131 = @132 = @133 = @134 = @135 = @136
IF ~~ THEN REPLY @137 GOTO RJTalira.FinalFlirtGentle
IF ~~ THEN REPLY @138 GOTO RJTalira.FinalFlirtRough
IF ~~ THEN REPLY @139 GOTO RJTalira.FinalFlirtRough
END

IF ~~ THEN BEGIN RJTalira.FinalFlirtGentle
SAY @141 = @142 = @143 = @144 = @145 = @146 = @147 = @150
IF ~~ THEN REPLY @151 GOTO RJTalira.MeasuringFacing
IF ~~ THEN REPLY @152 GOTO RJTalira.MeasuringNotFacing
IF ~~ THEN REPLY @153 GOTO RJTalira.MeasuringNotFacing
IF ~~ THEN REPLY @154 GOTO RJTalira.MeasuringNotFacing
IF ~~ THEN REPLY @155 GOTO RJTalira.Why
END

IF ~~ THEN BEGIN RJTalira.FinalFlirtRough
SAY @156 = @157 = @158 = @159 = @160 = @147 = @163
IF ~~ THEN REPLY @164 GOTO RJTalira.MeasuringFacing
IF ~~ THEN REPLY @152 GOTO RJTalira.MeasuringNotFacing
IF ~~ THEN REPLY @153 GOTO RJTalira.MeasuringNotFacing
IF ~~ THEN REPLY @154 GOTO RJTalira.Why
IF ~~ THEN REPLY @155 GOTO RJTalira.Why
END

IF ~~ THEN BEGIN RJTalira.Why
SAY @165 = @166 = @167 = @168
IF ~~ THEN REPLY @171 GOTO RJTalira.MeasuringNotFacing
END

IF ~~ THEN BEGIN RJTalira.MeasuringNotFacing
SAY @173 = @174 = @175 = @176 = @177
IF ~~ THEN REPLY @178 GOTO RJTalira.Delayed
IF ~~ THEN REPLY @179 GOTO RJTalira.Delayed
IF ~~ THEN REPLY @180 GOTO RJTalira.Delayed
END

IF ~~ THEN BEGIN RJTalira.MeasuringFacing
SAY @181 = @182 = @183 = @184
IF ~~ THEN REPLY @178 GOTO RJTalira.Delayed
IF ~~ THEN REPLY @179 GOTO RJTalira.Delayed
IF ~~ THEN REPLY @180 GOTO RJTalira.Delayed
END

IF ~~ THEN BEGIN RJTalira.Delayed
SAY @185 = @186 = @188 = @189
IF ~~ THEN REPLY @191 GOTO RJTalira.SexDelayed
IF ~~ THEN REPLY @192 GOTO RJTalira.SexImmediate
IF ~~ THEN REPLY @193 GOTO RJTalira.ToBeMeasured
END

IF ~~ THEN BEGIN RJTalira.ToBeMeasured
SAY @194 = @195 = @196
IF ~~ THEN REPLY @197 GOTO RJTalira.SexImmediate
IF ~~ THEN REPLY @191 GOTO RJTalira.SexDelayed
IF ~~ THEN REPLY @198 GOTO RJTalira.SexDelayed
IF ~~ THEN REPLY @199 GOTO RJTalira.SexDelayed
END

IF ~~ THEN BEGIN RJTalira.SexDelayed
SAY @225 = @226 = @227 = @228 = @229 = @230 = @232 = @233 = @234 = @235 = @236 = @239
IF ~~ THEN REPLY @240 GOTO RJTalira.SexImmediate
IF ~~ THEN REPLY @241 GOTO RJTalira.SexImmediate
END

IF ~~ THEN BEGIN RJTalira.SexImmediate
SAY @244 = @245 = @246 = @247 = @248 = @249 = @250 = @251
IF ~~ THEN GOTO RJTalira.MeasuredEnd
END

IF ~~ THEN BEGIN RJTalira.MeasuredEnd
SAY @257 = @258 = @259
IF ~~ THEN REPLY @260 GOTO RJTalira.MeasuredEndOne
IF ~~ THEN REPLY @261 GOTO RJTalira.MeasuredEndOne
END

IF ~~ THEN BEGIN RJTalira.MeasuredEndOne
SAY @262 = @263 = @264
IF ~~ THEN REPLY @265 GOTO RJTalira.MeasuredEndTwo
IF ~~ THEN REPLY @266 GOTO RJTalira.MeasuredEndTwo
END

IF ~~ THEN BEGIN RJTalira.MeasuredEndTwo
SAY @268 = @269 = @270 = @271 = @272 = @273
IF ~~ THEN REPLY @274 GOTO RJTalira.MeasuredEndFinale
IF ~~ THEN REPLY @275 GOTO RJTalira.MeasuredEndFinale
END

IF ~~ THEN BEGIN RJTalira.MeasuredEndFinale
SAY @277 = @278 = @279 = @280
IF ~~ THEN REPLY @281 DO ~SetGlobal("RJTaliraShoo","GLOBAL",2)
                          IncrementGlobal("RJCntBedded","GLOBAL",1)
                          StartCutSceneMode()
                          StartCutScene("RJTLBACK")~ EXIT
END

// Talira Talk #5 - Post Bath

IF WEIGHT #-20 ~InPartySlot(LastTalkedToBy,0)
                G("RJTaliraRomance",4)~ THEN BEGIN RJMAID02.5
SAY @509
IF ~G("RJFinalVisit",1) G("RJFYFV",0)~ THEN REPLY @515 GOTO RJMAID02.5.0
IF ~OR(2) G("RJFinalVisit",0) !G("RJTLFV",0)~ THEN EXTERN KPMAID02 RJTaliraShoo
END

IF ~~ THEN BEGIN RJMAID02.5.0
SAY @516 = @517
IF ~~ THEN REPLY @518 DO ~SetGlobal("RJTLFV","GLOBAL",1)~ EXTERN KPMAID02 RJTaliraShoo
END

IF WEIGHT #-20 ~G("RJTaliraRomance",5)
                G("RJTaliraShoo",2)~ THEN BEGIN RJMAID02.5.1
SAY @500 = @501
IF ~~ THEN REPLY @502 GOTO RJMAID02.5.1.1
END

IF ~~ THEN BEGIN RJMAID02.5.1.1
SAY @503 = @504
IF ~~ THEN REPLY @505 GOTO RJMAID02.5.1.2
END

IF ~~ THEN BEGIN RJMAID02.5.1.2
SAY @506 = @10 = @11 = @507
IF ~~ THEN REPLY @508 DO ~SetGlobal("RJTaliraShoo","GLOBAL",3)
                          SetGlobal("RJTaliraRomance","GLOBAL",4)
                          StartCutSceneMode()
                          StartCutScene("RJTLBAC2")~ EXIT
END

IF WEIGHT #-20 ~G("RJTaliraRomance",5)
                G("RJTaliraShoo",3)~ THEN BEGIN RJMAID02.5.2
SAY @519 = @520
IF ~RandomNum(3,1)~ THEN REPLY @521 GOTO RJMAID02.5.2.1
IF ~RandomNum(3,2)~ THEN REPLY @522 GOTO RJMAID02.5.2.2
IF ~RandomNum(3,3)~ THEN REPLY @523 GOTO RJMAID02.5.2.3
END

IF ~~ THEN BEGIN RJMAID02.5.2.1
SAY @524
IF ~~ THEN REPLY @525 GOTO RJMAID02.5.2.1.1
END

IF ~~ THEN BEGIN RJMAID02.5.2.1.1
SAY @526 = @527 = @528 = @529
IF ~~ THEN REPLY @530 GOTO RJMAID02.5.2.1.2
END

IF ~~ THEN BEGIN RJMAID02.5.2.1.2
SAY @556
IF ~~ THEN DO ~StartCutSceneMode()
               StartCutScene("RJTLBAC2")~ EXIT
END

IF ~~ THEN BEGIN RJMAID02.5.2.2
SAY @531
IF ~~ THEN REPLY @532 GOTO RJMAID02.5.2.2.1
END

IF ~~ THEN BEGIN RJMAID02.5.2.2.1
SAY @533
IF ~~ THEN REPLY @534 GOTO RJMAID02.5.2.2.2
END

IF ~~ THEN BEGIN RJMAID02.5.2.2.2
SAY @535 = @536
IF ~~ THEN REPLY @537 GOTO RJMAID02.5.2.2.3
END

IF ~~ THEN BEGIN RJMAID02.5.2.2.3
SAY @538 = @539 = @540 = @541
IF ~~ THEN REPLY @542 GOTO RJMAID02.5.2.2.4
END

IF ~~ THEN BEGIN RJMAID02.5.2.2.4
SAY @556
IF ~~ THEN DO ~StartCutSceneMode()
               StartCutScene("RJTLBAC2")~ EXIT
END

IF ~~ THEN BEGIN RJMAID02.5.2.3
SAY @543 = @544
IF ~~ THEN REPLY @545 GOTO RJMAID02.5.2.3.1
END

IF ~~ THEN BEGIN RJMAID02.5.2.3.1
SAY @546 = @547
IF ~~ THEN REPLY @548 GOTO RJMAID02.5.2.3.2
END

IF ~~ THEN BEGIN RJMAID02.5.2.3.2
SAY @549 = @550 = @551 = @552
IF ~~ THEN REPLY @553 GOTO RJMAID02.5.2.3.3
END

IF ~~ THEN BEGIN RJMAID02.5.2.3.3
SAY @554
IF ~~ THEN REPLY @555  GOTO RJMAID02.5.2.3.4
END

IF ~~ THEN BEGIN RJMAID02.5.2.3.4
SAY @556
IF ~~ THEN DO ~StartCutSceneMode()
               StartCutScene("RJTLBAC2")~ EXIT
END

END

CHAIN KPMAID02 RJTaliraBath.1
@13
== RJALIJ IF ~See("Rjali") GLT("Chapter",%bg2_chapter_8%)~ THEN @510
== RJALI25J IF ~See("Rjali") GGT("Chapter",%bg2_chapter_7%)~ THEN @510
END
IF ~~ THEN DO ~SetGlobal("RJTaliraShoo","GLOBAL",1)
               StartCutSceneMode()
               StartCutScene("RJTLSHOO")~ EXIT

CHAIN KPMAID02 RJTaliraShoo
@511 = @514
== RJALIJ IF ~See("Rjali") GLT("Chapter",%bg2_chapter_8%)~ THEN @512 = @513
== RJALI25J IF ~See("Rjali") GGT("Chapter",%bg2_chapter_7%)~ THEN @512 = @513
END
IF ~~ THEN DO ~StartCutSceneMode()
               StartCutScene("RJTLSHOO")~ EXIT
