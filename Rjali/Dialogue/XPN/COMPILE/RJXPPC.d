
// XPN Player1 dialogues

// On return to the Keep

CHAIN IF WEIGHT #-99 ~G("RJXPN",1) 
                      G("RJXPPC01",1)~ THEN PLAYER1 RJXPPC01
@0 DO ~SetGlobal("RJXPPC01","GLOBAL",99)~
== PLAYER1 IF ~InParty(Player6)~ THEN @6 DO ~
               ActionOverride(Player6,ChangeAIScript("",DEFAULT))
               ActionOverride(Player6,SetLeavePartyDialogFile())
               ActionOverride(Player6,LeaveParty())
               ActionOverride(Player6,EscapeArea())~
== PLAYER1 IF ~InParty(Player5)~ THEN @5 DO ~
               ActionOverride(Player5,ChangeAIScript("",DEFAULT))
               ActionOverride(Player5,SetLeavePartyDialogFile())
               ActionOverride(Player5,LeaveParty())
               ActionOverride(Player5,EscapeArea())~
== PLAYER1 IF ~InParty(Player4)~ THEN @4 DO ~
               ActionOverride(Player4,ChangeAIScript("",DEFAULT))
               ActionOverride(Player4,SetLeavePartyDialogFile())
               ActionOverride(Player4,LeaveParty())
               ActionOverride(Player4,EscapeArea())~
== PLAYER1 IF ~InParty(Player3)~ THEN @3 DO ~
               ActionOverride(Player3,ChangeAIScript("",DEFAULT))
               ActionOverride(Player3,SetLeavePartyDialogFile())
               ActionOverride(Player3,LeaveParty())
               ActionOverride(Player3,EscapeArea())~
== PLAYER1 IF ~InParty(Player2)~ THEN @2 DO ~
               ActionOverride(Player2,ChangeAIScript("",DEFAULT))
               ActionOverride(Player2,SetLeavePartyDialogFile())
               ActionOverride(Player2,LeaveParty())
               ActionOverride(Player2,EscapeArea())~
EXIT

// Sargeant Bjorn, Sean, and Suzy

CHAIN IF WEIGHT #-99 ~G("RJXPN",1)
                      G("RJXPPCGD",1)~ THEN PLAYER1 RJXPPCGD
@300 DO ~SetGlobal("RJXPPCGD","GLOBAL",2)~
== RJGUARD @301
== PLAYER1 @302
== RJGUARD @303 = @304
== PLAYER1 @305
== RJSUZY @306
== RJSEAN @307
== RJGUARD @308
END
IF ~~ THEN REPLY @309 EXIT

// Olma, Megan, and Chen

CHAIN IF WEIGHT #-99 ~G("RJXPN",1)
                      G("RJXPPCCK",1)~ THEN PLAYER1 RJXPPCCK
@320 DO ~SetGlobal("RJXPPCCK","GLOBAL",2)~
== KPCOOK01 @321 = @322
== RJMEGAN @323
== RJCHEN @324
== PLAYER1 @325 = @326
== KPCOOK01 @327
== RJCHEN @328
== PLAYER1 @330
== RJMEGAN @331 = @332
== KPCOOK01 @333
== PLAYER1 @334
== KPCOOK01 @335
== RJCHEN @336
== RJMEGAN @337
== KPCOOK01 @338
== PLAYER1 @339
END
IF ~~ THEN REPLY @329 EXIT

// Jan, Billy, and Annie

CHAIN IF WEIGHT #-99 ~G("RJXPN",1)
                      G("RJXPPCJN",1)~ THEN PLAYER1 RJXPPCJN
@20 DO ~SetGlobal("RJXPPCJN","GLOBAL",2)~
END
IF ~Dead("Jan")~ THEN EXTERN PLAYER1 RJXPPCJN1
IF ~!Dead("Jan")~ THEN EXTERN PLAYER1 RJXPPCJN2

CHAIN IF ~~ THEN PLAYER1 RJXPPCJN1
@35
== RJJAN @36 = @37 = @38
== PLAYER1 @39
== RJJAN @40 = @41 = @42
== RJANNIE @43
== RJJAN @44
== RJBILLY @45
END
IF ~~ THEN EXTERN PLAYER1 RJXPPCJN2

CHAIN IF ~~ THEN PLAYER1 RJXPPCJN2
@46
== RJJAN @22 = @23
== PLAYER1 @24
== RJJAN @25
== PLAYER1 @26 = @27
== RJANNIE @28
== PLAYER1 @29
== RJBILLY @30
== PLAYER1 @31 = @32
== RJJAN @33 = @34
END
IF ~~ THEN REPLY @21 DO ~ActionOverride("RJAnnie",EscapeAreaDestroy(5))
                         ActionOverride("RJBilly",EscapeAreaDestroy(5))
                         ActionOverride("RJJan",EscapeAreaDestroy(5))~ EXIT

// Wedding and exit

CHAIN IF WEIGHT #-99 ~G("RJXPN",1) 
                      G("RJXPPCWD",2)~ THEN PLAYER1 RJXPPCWD
@101 DO ~SetGlobal("RJXPPCWD","GLOBAL",3)~
== RJALI25P @102 = @103
== PLAYER1 @104
== RJGENIE @213
== RJDRYAD @214
== RJALI25P @105
== PLAYER1 @106
== RJALI25P @107
== RJALI25P IF ~G("RJParkIS",1)~ @108
== RH#IS25P IF ~G("RJParkIS",1)~ @109
== VICON25P IF ~G("RJParkVI",1)~ @110
== AERIE25P IF ~G("RJParkAE",1)~ @111
== RJGR25P IF ~G("RJParkGR",1)~ @112
== O#BRA25P IF ~G("RJParkBR",1)~ @113
== PLAYER1 @201
== RJALI25P @202
== PLAYER1 @203
== RJGENIE @218
== PLAYER1 @219 = @220
== RJGENIE @221
== PLAYER1 @222
== RJDRYAD @223
== PLAYER1 @224 = @225
== RJALI25P @114 = @265 = @266
== KPMAID02 @267 = @268
== RJALI25P @269
== PLAYER1 @270 = @271
== RJALI25P @272 = @273 = @274 = @275 = @276 = @277 = @115 = @116
END
IF ~G("RJParkSK",1)~ THEN EXTERN PLAYER1 RJXPPCWD1
IF ~!G("RJParkSK",1)~ THEN EXTERN PLAYER1 RJXPPCWD2

CHAIN IF ~~ THEN PLAYER1 RJXPPCWD1
@251
== 1XSKI25P @117
== RJALI25P @118
== 1XSKI25P @119
== RJALI25P @120
== 1XSKI25P @121
== RJALI25P @122
== 1XSKI25P @123
END
IF ~~ THEN EXTERN PLAYER1 RJXPPCWD2

CHAIN IF ~~ THEN PLAYER1 RJXPPCWD2
@252
== RJALI25P @124
== PLAYER1 @281
== RJALI25P @278
== KPMAID02 @279
== RJALI25P @280 = @282
== PLAYER1 @128
== RJALI25P @283
END
IF ~~ THEN EXTERN PLAYER1 RJXPPCWD9
IF ~G("RJParkSH",1)~ THEN EXTERN PLAYER1 RJXPPCWDSH
IF ~G("RJParkPE",1)~ THEN EXTERN PLAYER1 RJXPPCWDPE
IF ~G("RJParkAM",1)~ THEN EXTERN PLAYER1 RJXPPCWDAM
IF ~G("RJParkIS",1)~ THEN EXTERN PLAYER1 RJXPPCWDIS
IF ~G("RJParkDA",1)~ THEN EXTERN PLAYER1 RJXPPCWDDA
IF ~G("RJParkFA",1)~ THEN EXTERN PLAYER1 RJXPPCWDFA
IF ~G("RJParkYV",1)~ THEN EXTERN PLAYER1 RJXPPCWDYV
IF ~G("RJParkTY",1)~ THEN EXTERN PLAYER1 RJXPPCWDTY
IF ~G("RJParkNI",1)~ THEN EXTERN PLAYER1 RJXPPCWDNI
IF ~G("RJParkNA",1)~ THEN EXTERN PLAYER1 RJXPPCWDNA
IF ~G("RJParkBR",1)~ THEN EXTERN PLAYER1 RJXPPCWDBR
IF ~G("RJParkTA",1)~ THEN EXTERN PLAYER1 RJXPPCWDTA
IF ~G("RJParkSA",1)~ THEN EXTERN PLAYER1 RJXPPCWDSA
IF ~G("RJParkVI",1)~ THEN EXTERN PLAYER1 RJXPPCWDVI
IF ~G("RJParkSI",1)~ THEN EXTERN PLAYER1 RJXPPCWDSI
IF ~G("RJParkJA",1)~ THEN EXTERN PLAYER1 RJXPPCWDJA
IF ~G("RJParkIM",1)~ THEN EXTERN PLAYER1 RJXPPCWDIM
IF ~G("RJParkNE",1)~ THEN EXTERN PLAYER1 RJXPPCWDNE
IF ~G("RJParkAE",1)~ THEN EXTERN PLAYER1 RJXPPCWDAE
IF ~G("RJParkSK",1)~ THEN EXTERN PLAYER1 RJXPPCWDSK
IF ~G("RJParkGR",1)~ THEN EXTERN PLAYER1 RJXPPCWDGR
IF ~G("RJParkRV",1)~ THEN EXTERN PLAYER1 RJXPPCWDRV
IF ~G("RJParkAN",1)~ THEN EXTERN PLAYER1 RJXPPCWDAN
IF ~G("RJParkFY",1)~ THEN EXTERN PLAYER1 RJXPPCWDFY
IF ~G("RJParkKE",1)~ THEN EXTERN PLAYER1 RJXPPCWDKE

CHAIN IF ~~ THEN PLAYER1 RJXPPCWDKE
@284
== RJALI25P @285
== RJKE25P @286
== RJRV25P IF ~G("RJParkRV",1)~ THEN @287
== RJALI25P IF ~G("RJParkRV",1)~ THEN @288
== RJALI25P @289
== PLAYER1 @128
== RJALI25P @129
== PLAYER1 @130
END
IF ~~ THEN EXTERN PLAYER1 RJXPPCWD9
IF ~G("RJParkSH",1)~ THEN EXTERN PLAYER1 RJXPPCWDSH
IF ~G("RJParkPE",1)~ THEN EXTERN PLAYER1 RJXPPCWDPE
IF ~G("RJParkAM",1)~ THEN EXTERN PLAYER1 RJXPPCWDAM
IF ~G("RJParkIS",1)~ THEN EXTERN PLAYER1 RJXPPCWDIS
IF ~G("RJParkDA",1)~ THEN EXTERN PLAYER1 RJXPPCWDDA
IF ~G("RJParkFA",1)~ THEN EXTERN PLAYER1 RJXPPCWDFA
IF ~G("RJParkYV",1)~ THEN EXTERN PLAYER1 RJXPPCWDYV
IF ~G("RJParkTY",1)~ THEN EXTERN PLAYER1 RJXPPCWDTY
IF ~G("RJParkNI",1)~ THEN EXTERN PLAYER1 RJXPPCWDNI
IF ~G("RJParkNA",1)~ THEN EXTERN PLAYER1 RJXPPCWDNA
IF ~G("RJParkBR",1)~ THEN EXTERN PLAYER1 RJXPPCWDBR
IF ~G("RJParkTA",1)~ THEN EXTERN PLAYER1 RJXPPCWDTA
IF ~G("RJParkSA",1)~ THEN EXTERN PLAYER1 RJXPPCWDSA
IF ~G("RJParkVI",1)~ THEN EXTERN PLAYER1 RJXPPCWDVI
IF ~G("RJParkSI",1)~ THEN EXTERN PLAYER1 RJXPPCWDSI
IF ~G("RJParkJA",1)~ THEN EXTERN PLAYER1 RJXPPCWDJA
IF ~G("RJParkIM",1)~ THEN EXTERN PLAYER1 RJXPPCWDIM
IF ~G("RJParkNE",1)~ THEN EXTERN PLAYER1 RJXPPCWDNE
IF ~G("RJParkAE",1)~ THEN EXTERN PLAYER1 RJXPPCWDAE
IF ~G("RJParkSK",1)~ THEN EXTERN PLAYER1 RJXPPCWDSK
IF ~G("RJParkGR",1)~ THEN EXTERN PLAYER1 RJXPPCWDGR
IF ~G("RJParkRV",1)~ THEN EXTERN PLAYER1 RJXPPCWDRV
IF ~G("RJParkAN",1)~ THEN EXTERN PLAYER1 RJXPPCWDAN
IF ~G("RJParkFY",1)~ THEN EXTERN PLAYER1 RJXPPCWDFY

CHAIN IF ~~ THEN PLAYER1 RJXPPCWDFY
@227
== RJALI25P @125
== RJFAY @126
== RJALI25P @127
== PLAYER1 @212
== RJALI25P @129
END
IF ~~ THEN EXTERN PLAYER1 RJXPPCWD9
IF ~G("RJParkSH",1)~ THEN EXTERN PLAYER1 RJXPPCWDSH
IF ~G("RJParkPE",1)~ THEN EXTERN PLAYER1 RJXPPCWDPE
IF ~G("RJParkAM",1)~ THEN EXTERN PLAYER1 RJXPPCWDAM
IF ~G("RJParkIS",1)~ THEN EXTERN PLAYER1 RJXPPCWDIS
IF ~G("RJParkDA",1)~ THEN EXTERN PLAYER1 RJXPPCWDDA
IF ~G("RJParkFA",1)~ THEN EXTERN PLAYER1 RJXPPCWDFA
IF ~G("RJParkYV",1)~ THEN EXTERN PLAYER1 RJXPPCWDYV
IF ~G("RJParkTY",1)~ THEN EXTERN PLAYER1 RJXPPCWDTY
IF ~G("RJParkNI",1)~ THEN EXTERN PLAYER1 RJXPPCWDNI
IF ~G("RJParkNA",1)~ THEN EXTERN PLAYER1 RJXPPCWDNA
IF ~G("RJParkBR",1)~ THEN EXTERN PLAYER1 RJXPPCWDBR
IF ~G("RJParkTA",1)~ THEN EXTERN PLAYER1 RJXPPCWDTA
IF ~G("RJParkSA",1)~ THEN EXTERN PLAYER1 RJXPPCWDSA
IF ~G("RJParkVI",1)~ THEN EXTERN PLAYER1 RJXPPCWDVI
IF ~G("RJParkSI",1)~ THEN EXTERN PLAYER1 RJXPPCWDSI
IF ~G("RJParkJA",1)~ THEN EXTERN PLAYER1 RJXPPCWDJA
IF ~G("RJParkIM",1)~ THEN EXTERN PLAYER1 RJXPPCWDIM
IF ~G("RJParkNE",1)~ THEN EXTERN PLAYER1 RJXPPCWDNE
IF ~G("RJParkAE",1)~ THEN EXTERN PLAYER1 RJXPPCWDAE
IF ~G("RJParkSK",1)~ THEN EXTERN PLAYER1 RJXPPCWDSK
IF ~G("RJParkGR",1)~ THEN EXTERN PLAYER1 RJXPPCWDGR
IF ~G("RJParkRV",1)~ THEN EXTERN PLAYER1 RJXPPCWDRV
IF ~G("RJParkAN",1)~ THEN EXTERN PLAYER1 RJXPPCWDAN

CHAIN IF ~~ THEN PLAYER1 RJXPPCWDAN
@228 DO ~IncrementGlobal("RJXPTiefling","GLOBAL",1)~
== RJALI25P @134
== RJAN25P @131
== RJALI25P @132 = @133
== PLAYER1 @128
== RJALI25P @129
END
IF ~~ THEN EXTERN PLAYER1 RJXPPCWD9
IF ~G("RJParkSH",1)~ THEN EXTERN PLAYER1 RJXPPCWDSH
IF ~G("RJParkPE",1)~ THEN EXTERN PLAYER1 RJXPPCWDPE
IF ~G("RJParkAM",1)~ THEN EXTERN PLAYER1 RJXPPCWDAM
IF ~G("RJParkIS",1)~ THEN EXTERN PLAYER1 RJXPPCWDIS
IF ~G("RJParkDA",1)~ THEN EXTERN PLAYER1 RJXPPCWDDA
IF ~G("RJParkFA",1)~ THEN EXTERN PLAYER1 RJXPPCWDFA
IF ~G("RJParkYV",1)~ THEN EXTERN PLAYER1 RJXPPCWDYV
IF ~G("RJParkTY",1)~ THEN EXTERN PLAYER1 RJXPPCWDTY
IF ~G("RJParkNI",1)~ THEN EXTERN PLAYER1 RJXPPCWDNI
IF ~G("RJParkNA",1)~ THEN EXTERN PLAYER1 RJXPPCWDNA
IF ~G("RJParkBR",1)~ THEN EXTERN PLAYER1 RJXPPCWDBR
IF ~G("RJParkTA",1)~ THEN EXTERN PLAYER1 RJXPPCWDTA
IF ~G("RJParkSA",1)~ THEN EXTERN PLAYER1 RJXPPCWDSA
IF ~G("RJParkVI",1)~ THEN EXTERN PLAYER1 RJXPPCWDVI
IF ~G("RJParkSI",1)~ THEN EXTERN PLAYER1 RJXPPCWDSI
IF ~G("RJParkJA",1)~ THEN EXTERN PLAYER1 RJXPPCWDJA
IF ~G("RJParkIM",1)~ THEN EXTERN PLAYER1 RJXPPCWDIM
IF ~G("RJParkNE",1)~ THEN EXTERN PLAYER1 RJXPPCWDNE
IF ~G("RJParkAE",1)~ THEN EXTERN PLAYER1 RJXPPCWDAE
IF ~G("RJParkSK",1)~ THEN EXTERN PLAYER1 RJXPPCWDSK
IF ~G("RJParkGR",1)~ THEN EXTERN PLAYER1 RJXPPCWDGR
IF ~G("RJParkRV",1)~ THEN EXTERN PLAYER1 RJXPPCWDRV

CHAIN IF ~~ THEN PLAYER1 RJXPPCWDRV
@229
== RJALI25P @135
== RJRV25P @136
== RJALI25P @137
== PLAYER1 @128
== RJALI25P @129
END
IF ~~ THEN EXTERN PLAYER1 RJXPPCWD9
IF ~G("RJParkSH",1)~ THEN EXTERN PLAYER1 RJXPPCWDSH
IF ~G("RJParkPE",1)~ THEN EXTERN PLAYER1 RJXPPCWDPE
IF ~G("RJParkAM",1)~ THEN EXTERN PLAYER1 RJXPPCWDAM
IF ~G("RJParkIS",1)~ THEN EXTERN PLAYER1 RJXPPCWDIS
IF ~G("RJParkDA",1)~ THEN EXTERN PLAYER1 RJXPPCWDDA
IF ~G("RJParkFA",1)~ THEN EXTERN PLAYER1 RJXPPCWDFA
IF ~G("RJParkYV",1)~ THEN EXTERN PLAYER1 RJXPPCWDYV
IF ~G("RJParkTY",1)~ THEN EXTERN PLAYER1 RJXPPCWDTY
IF ~G("RJParkNI",1)~ THEN EXTERN PLAYER1 RJXPPCWDNI
IF ~G("RJParkNA",1)~ THEN EXTERN PLAYER1 RJXPPCWDNA
IF ~G("RJParkBR",1)~ THEN EXTERN PLAYER1 RJXPPCWDBR
IF ~G("RJParkTA",1)~ THEN EXTERN PLAYER1 RJXPPCWDTA
IF ~G("RJParkSA",1)~ THEN EXTERN PLAYER1 RJXPPCWDSA
IF ~G("RJParkVI",1)~ THEN EXTERN PLAYER1 RJXPPCWDVI
IF ~G("RJParkSI",1)~ THEN EXTERN PLAYER1 RJXPPCWDSI
IF ~G("RJParkJA",1)~ THEN EXTERN PLAYER1 RJXPPCWDJA
IF ~G("RJParkIM",1)~ THEN EXTERN PLAYER1 RJXPPCWDIM
IF ~G("RJParkNE",1)~ THEN EXTERN PLAYER1 RJXPPCWDNE
IF ~G("RJParkAE",1)~ THEN EXTERN PLAYER1 RJXPPCWDAE
IF ~G("RJParkSK",1)~ THEN EXTERN PLAYER1 RJXPPCWDSK
IF ~G("RJParkGR",1)~ THEN EXTERN PLAYER1 RJXPPCWDGR

CHAIN IF ~~ THEN PLAYER1 RJXPPCWDGR
@230
== RJALI25P @138
== RJGR25P @139
== RJALI25P @140
== PLAYER1 @128
== RJALI25P @129
== RJGR25P @141
== RJALI25P @142
END
IF ~~ THEN EXTERN PLAYER1 RJXPPCWD9
IF ~G("RJParkSH",1)~ THEN EXTERN PLAYER1 RJXPPCWDSH
IF ~G("RJParkPE",1)~ THEN EXTERN PLAYER1 RJXPPCWDPE
IF ~G("RJParkAM",1)~ THEN EXTERN PLAYER1 RJXPPCWDAM
IF ~G("RJParkIS",1)~ THEN EXTERN PLAYER1 RJXPPCWDIS
IF ~G("RJParkDA",1)~ THEN EXTERN PLAYER1 RJXPPCWDDA
IF ~G("RJParkFA",1)~ THEN EXTERN PLAYER1 RJXPPCWDFA
IF ~G("RJParkYV",1)~ THEN EXTERN PLAYER1 RJXPPCWDYV
IF ~G("RJParkTY",1)~ THEN EXTERN PLAYER1 RJXPPCWDTY
IF ~G("RJParkNI",1)~ THEN EXTERN PLAYER1 RJXPPCWDNI
IF ~G("RJParkNA",1)~ THEN EXTERN PLAYER1 RJXPPCWDNA
IF ~G("RJParkBR",1)~ THEN EXTERN PLAYER1 RJXPPCWDBR
IF ~G("RJParkTA",1)~ THEN EXTERN PLAYER1 RJXPPCWDTA
IF ~G("RJParkSA",1)~ THEN EXTERN PLAYER1 RJXPPCWDSA
IF ~G("RJParkVI",1)~ THEN EXTERN PLAYER1 RJXPPCWDVI
IF ~G("RJParkSI",1)~ THEN EXTERN PLAYER1 RJXPPCWDSI
IF ~G("RJParkJA",1)~ THEN EXTERN PLAYER1 RJXPPCWDJA
IF ~G("RJParkIM",1)~ THEN EXTERN PLAYER1 RJXPPCWDIM
IF ~G("RJParkNE",1)~ THEN EXTERN PLAYER1 RJXPPCWDNE
IF ~G("RJParkAE",1)~ THEN EXTERN PLAYER1 RJXPPCWDAE
IF ~G("RJParkSK",1)~ THEN EXTERN PLAYER1 RJXPPCWDSK

CHAIN IF ~~ THEN PLAYER1 RJXPPCWDSK
@231
== RJALI25P @143
== 1XSKI25P @144
== RJALI25P @146 = @145
== PLAYER1 @128
== RJALI25P @129
END
IF ~~ THEN EXTERN PLAYER1 RJXPPCWD9
IF ~G("RJParkSH",1)~ THEN EXTERN PLAYER1 RJXPPCWDSH
IF ~G("RJParkPE",1)~ THEN EXTERN PLAYER1 RJXPPCWDPE
IF ~G("RJParkAM",1)~ THEN EXTERN PLAYER1 RJXPPCWDAM
IF ~G("RJParkIS",1)~ THEN EXTERN PLAYER1 RJXPPCWDIS
IF ~G("RJParkDA",1)~ THEN EXTERN PLAYER1 RJXPPCWDDA
IF ~G("RJParkFA",1)~ THEN EXTERN PLAYER1 RJXPPCWDFA
IF ~G("RJParkYV",1)~ THEN EXTERN PLAYER1 RJXPPCWDYV
IF ~G("RJParkTY",1)~ THEN EXTERN PLAYER1 RJXPPCWDTY
IF ~G("RJParkNI",1)~ THEN EXTERN PLAYER1 RJXPPCWDNI
IF ~G("RJParkNA",1)~ THEN EXTERN PLAYER1 RJXPPCWDNA
IF ~G("RJParkBR",1)~ THEN EXTERN PLAYER1 RJXPPCWDBR
IF ~G("RJParkTA",1)~ THEN EXTERN PLAYER1 RJXPPCWDTA
IF ~G("RJParkSA",1)~ THEN EXTERN PLAYER1 RJXPPCWDSA
IF ~G("RJParkVI",1)~ THEN EXTERN PLAYER1 RJXPPCWDVI
IF ~G("RJParkSI",1)~ THEN EXTERN PLAYER1 RJXPPCWDSI
IF ~G("RJParkJA",1)~ THEN EXTERN PLAYER1 RJXPPCWDJA
IF ~G("RJParkIM",1)~ THEN EXTERN PLAYER1 RJXPPCWDIM
IF ~G("RJParkNE",1)~ THEN EXTERN PLAYER1 RJXPPCWDNE
IF ~G("RJParkAE",1)~ THEN EXTERN PLAYER1 RJXPPCWDAE

CHAIN IF ~~ THEN PLAYER1 RJXPPCWDAE
@232
== RJALI25P @147
== AERIE25P @148
== RJALI25P @260 = @149
== PLAYER1 @128
== RJALI25P @129
END
IF ~~ THEN EXTERN PLAYER1 RJXPPCWD9
IF ~G("RJParkSH",1)~ THEN EXTERN PLAYER1 RJXPPCWDSH
IF ~G("RJParkPE",1)~ THEN EXTERN PLAYER1 RJXPPCWDPE
IF ~G("RJParkAM",1)~ THEN EXTERN PLAYER1 RJXPPCWDAM
IF ~G("RJParkIS",1)~ THEN EXTERN PLAYER1 RJXPPCWDIS
IF ~G("RJParkDA",1)~ THEN EXTERN PLAYER1 RJXPPCWDDA
IF ~G("RJParkFA",1)~ THEN EXTERN PLAYER1 RJXPPCWDFA
IF ~G("RJParkYV",1)~ THEN EXTERN PLAYER1 RJXPPCWDYV
IF ~G("RJParkTY",1)~ THEN EXTERN PLAYER1 RJXPPCWDTY
IF ~G("RJParkNI",1)~ THEN EXTERN PLAYER1 RJXPPCWDNI
IF ~G("RJParkNA",1)~ THEN EXTERN PLAYER1 RJXPPCWDNA
IF ~G("RJParkBR",1)~ THEN EXTERN PLAYER1 RJXPPCWDBR
IF ~G("RJParkTA",1)~ THEN EXTERN PLAYER1 RJXPPCWDTA
IF ~G("RJParkSA",1)~ THEN EXTERN PLAYER1 RJXPPCWDSA
IF ~G("RJParkVI",1)~ THEN EXTERN PLAYER1 RJXPPCWDVI
IF ~G("RJParkSI",1)~ THEN EXTERN PLAYER1 RJXPPCWDSI
IF ~G("RJParkJA",1)~ THEN EXTERN PLAYER1 RJXPPCWDJA
IF ~G("RJParkIM",1)~ THEN EXTERN PLAYER1 RJXPPCWDIM
IF ~G("RJParkNE",1)~ THEN EXTERN PLAYER1 RJXPPCWDNE

CHAIN IF ~~ THEN PLAYER1 RJXPPCWDNE
@233
== RJALI25P @150
== NEERA25P @151
== RJALI25P @152
== PLAYER1 @128
== RJALI25P @129
END
IF ~~ THEN EXTERN PLAYER1 RJXPPCWD9
IF ~G("RJParkSH",1)~ THEN EXTERN PLAYER1 RJXPPCWDSH
IF ~G("RJParkPE",1)~ THEN EXTERN PLAYER1 RJXPPCWDPE
IF ~G("RJParkAM",1)~ THEN EXTERN PLAYER1 RJXPPCWDAM
IF ~G("RJParkIS",1)~ THEN EXTERN PLAYER1 RJXPPCWDIS
IF ~G("RJParkDA",1)~ THEN EXTERN PLAYER1 RJXPPCWDDA
IF ~G("RJParkFA",1)~ THEN EXTERN PLAYER1 RJXPPCWDFA
IF ~G("RJParkYV",1)~ THEN EXTERN PLAYER1 RJXPPCWDYV
IF ~G("RJParkTY",1)~ THEN EXTERN PLAYER1 RJXPPCWDTY
IF ~G("RJParkNI",1)~ THEN EXTERN PLAYER1 RJXPPCWDNI
IF ~G("RJParkNA",1)~ THEN EXTERN PLAYER1 RJXPPCWDNA
IF ~G("RJParkBR",1)~ THEN EXTERN PLAYER1 RJXPPCWDBR
IF ~G("RJParkTA",1)~ THEN EXTERN PLAYER1 RJXPPCWDTA
IF ~G("RJParkSA",1)~ THEN EXTERN PLAYER1 RJXPPCWDSA
IF ~G("RJParkVI",1)~ THEN EXTERN PLAYER1 RJXPPCWDVI
IF ~G("RJParkSI",1)~ THEN EXTERN PLAYER1 RJXPPCWDSI
IF ~G("RJParkJA",1)~ THEN EXTERN PLAYER1 RJXPPCWDJA
IF ~G("RJParkIM",1)~ THEN EXTERN PLAYER1 RJXPPCWDIM

CHAIN IF ~~ THEN PLAYER1 RJXPPCWDIM
@234
== RJALI25P @153
== IMOEN25P @154
== RJALI25P @155
== PLAYER1 @128
== RJALI25P @129
END
IF ~~ THEN EXTERN PLAYER1 RJXPPCWD9
IF ~G("RJParkSH",1)~ THEN EXTERN PLAYER1 RJXPPCWDSH
IF ~G("RJParkPE",1)~ THEN EXTERN PLAYER1 RJXPPCWDPE
IF ~G("RJParkAM",1)~ THEN EXTERN PLAYER1 RJXPPCWDAM
IF ~G("RJParkIS",1)~ THEN EXTERN PLAYER1 RJXPPCWDIS
IF ~G("RJParkDA",1)~ THEN EXTERN PLAYER1 RJXPPCWDDA
IF ~G("RJParkFA",1)~ THEN EXTERN PLAYER1 RJXPPCWDFA
IF ~G("RJParkYV",1)~ THEN EXTERN PLAYER1 RJXPPCWDYV
IF ~G("RJParkTY",1)~ THEN EXTERN PLAYER1 RJXPPCWDTY
IF ~G("RJParkNI",1)~ THEN EXTERN PLAYER1 RJXPPCWDNI
IF ~G("RJParkNA",1)~ THEN EXTERN PLAYER1 RJXPPCWDNA
IF ~G("RJParkBR",1)~ THEN EXTERN PLAYER1 RJXPPCWDBR
IF ~G("RJParkTA",1)~ THEN EXTERN PLAYER1 RJXPPCWDTA
IF ~G("RJParkSA",1)~ THEN EXTERN PLAYER1 RJXPPCWDSA
IF ~G("RJParkVI",1)~ THEN EXTERN PLAYER1 RJXPPCWDVI
IF ~G("RJParkSI",1)~ THEN EXTERN PLAYER1 RJXPPCWDSI
IF ~G("RJParkJA",1)~ THEN EXTERN PLAYER1 RJXPPCWDJA

CHAIN IF ~~ THEN PLAYER1 RJXPPCWDJA
@235
== RJALI25P @156
== JAHEI25P @128
== RJALI25P @157
== PLAYER1 @128
== RJALI25P @129
END
IF ~~ THEN EXTERN PLAYER1 RJXPPCWD9
IF ~G("RJParkSH",1)~ THEN EXTERN PLAYER1 RJXPPCWDSH
IF ~G("RJParkPE",1)~ THEN EXTERN PLAYER1 RJXPPCWDPE
IF ~G("RJParkAM",1)~ THEN EXTERN PLAYER1 RJXPPCWDAM
IF ~G("RJParkIS",1)~ THEN EXTERN PLAYER1 RJXPPCWDIS
IF ~G("RJParkDA",1)~ THEN EXTERN PLAYER1 RJXPPCWDDA
IF ~G("RJParkFA",1)~ THEN EXTERN PLAYER1 RJXPPCWDFA
IF ~G("RJParkYV",1)~ THEN EXTERN PLAYER1 RJXPPCWDYV
IF ~G("RJParkTY",1)~ THEN EXTERN PLAYER1 RJXPPCWDTY
IF ~G("RJParkNI",1)~ THEN EXTERN PLAYER1 RJXPPCWDNI
IF ~G("RJParkNA",1)~ THEN EXTERN PLAYER1 RJXPPCWDNA
IF ~G("RJParkBR",1)~ THEN EXTERN PLAYER1 RJXPPCWDBR
IF ~G("RJParkTA",1)~ THEN EXTERN PLAYER1 RJXPPCWDTA
IF ~G("RJParkSA",1)~ THEN EXTERN PLAYER1 RJXPPCWDSA
IF ~G("RJParkVI",1)~ THEN EXTERN PLAYER1 RJXPPCWDVI
IF ~G("RJParkSI",1)~ THEN EXTERN PLAYER1 RJXPPCWDSI

CHAIN IF ~~ THEN PLAYER1 RJXPPCWDSI
@236 DO ~IncrementGlobal("RJXPTiefling","GLOBAL",1)~
== RJALI25P @158
== C0SIR25P @159
== RJALI25P @160
== PLAYER1 @128
== RJALI25P @129
END
IF ~~ THEN EXTERN PLAYER1 RJXPPCWD9
IF ~G("RJParkSH",1)~ THEN EXTERN PLAYER1 RJXPPCWDSH
IF ~G("RJParkPE",1)~ THEN EXTERN PLAYER1 RJXPPCWDPE
IF ~G("RJParkAM",1)~ THEN EXTERN PLAYER1 RJXPPCWDAM
IF ~G("RJParkIS",1)~ THEN EXTERN PLAYER1 RJXPPCWDIS
IF ~G("RJParkDA",1)~ THEN EXTERN PLAYER1 RJXPPCWDDA
IF ~G("RJParkFA",1)~ THEN EXTERN PLAYER1 RJXPPCWDFA
IF ~G("RJParkYV",1)~ THEN EXTERN PLAYER1 RJXPPCWDYV
IF ~G("RJParkTY",1)~ THEN EXTERN PLAYER1 RJXPPCWDTY
IF ~G("RJParkNI",1)~ THEN EXTERN PLAYER1 RJXPPCWDNI
IF ~G("RJParkNA",1)~ THEN EXTERN PLAYER1 RJXPPCWDNA
IF ~G("RJParkBR",1)~ THEN EXTERN PLAYER1 RJXPPCWDBR
IF ~G("RJParkTA",1)~ THEN EXTERN PLAYER1 RJXPPCWDTA
IF ~G("RJParkSA",1)~ THEN EXTERN PLAYER1 RJXPPCWDSA
IF ~G("RJParkVI",1)~ THEN EXTERN PLAYER1 RJXPPCWDVI

CHAIN IF ~~ THEN PLAYER1 RJXPPCWDVI
@237
== RJALI25P @161
== VICON25P @162
== RJALI25P @163
== PLAYER1 @128
== RJALI25P @129
END
IF ~~ THEN EXTERN PLAYER1 RJXPPCWD9
IF ~G("RJParkSH",1)~ THEN EXTERN PLAYER1 RJXPPCWDSH
IF ~G("RJParkPE",1)~ THEN EXTERN PLAYER1 RJXPPCWDPE
IF ~G("RJParkAM",1)~ THEN EXTERN PLAYER1 RJXPPCWDAM
IF ~G("RJParkIS",1)~ THEN EXTERN PLAYER1 RJXPPCWDIS
IF ~G("RJParkDA",1)~ THEN EXTERN PLAYER1 RJXPPCWDDA
IF ~G("RJParkFA",1)~ THEN EXTERN PLAYER1 RJXPPCWDFA
IF ~G("RJParkYV",1)~ THEN EXTERN PLAYER1 RJXPPCWDYV
IF ~G("RJParkTY",1)~ THEN EXTERN PLAYER1 RJXPPCWDTY
IF ~G("RJParkNI",1)~ THEN EXTERN PLAYER1 RJXPPCWDNI
IF ~G("RJParkNA",1)~ THEN EXTERN PLAYER1 RJXPPCWDNA
IF ~G("RJParkBR",1)~ THEN EXTERN PLAYER1 RJXPPCWDBR
IF ~G("RJParkTA",1)~ THEN EXTERN PLAYER1 RJXPPCWDTA
IF ~G("RJParkSA",1)~ THEN EXTERN PLAYER1 RJXPPCWDSA

CHAIN IF ~~ THEN PLAYER1 RJXPPCWDSA
@238
== RJALI25P @164
== SAERI25P @165
== RJALI25P @166
== PLAYER1 @128
== RJALI25P @129
END
IF ~~ THEN EXTERN PLAYER1 RJXPPCWD9
IF ~G("RJParkSH",1)~ THEN EXTERN PLAYER1 RJXPPCWDSH
IF ~G("RJParkPE",1)~ THEN EXTERN PLAYER1 RJXPPCWDPE
IF ~G("RJParkAM",1)~ THEN EXTERN PLAYER1 RJXPPCWDAM
IF ~G("RJParkIS",1)~ THEN EXTERN PLAYER1 RJXPPCWDIS
IF ~G("RJParkDA",1)~ THEN EXTERN PLAYER1 RJXPPCWDDA
IF ~G("RJParkFA",1)~ THEN EXTERN PLAYER1 RJXPPCWDFA
IF ~G("RJParkYV",1)~ THEN EXTERN PLAYER1 RJXPPCWDYV
IF ~G("RJParkTY",1)~ THEN EXTERN PLAYER1 RJXPPCWDTY
IF ~G("RJParkNI",1)~ THEN EXTERN PLAYER1 RJXPPCWDNI
IF ~G("RJParkNA",1)~ THEN EXTERN PLAYER1 RJXPPCWDNA
IF ~G("RJParkBR",1)~ THEN EXTERN PLAYER1 RJXPPCWDBR
IF ~G("RJParkTA",1)~ THEN EXTERN PLAYER1 RJXPPCWDTA

CHAIN IF ~~ THEN PLAYER1 RJXPPCWDTA
@239
== RJALI25P @167
== TASHI25P @168
== RJALI25P @169
== PLAYER1 @128
== RJALI25P @129
END
IF ~~ THEN EXTERN PLAYER1 RJXPPCWD9
IF ~G("RJParkSH",1)~ THEN EXTERN PLAYER1 RJXPPCWDSH
IF ~G("RJParkPE",1)~ THEN EXTERN PLAYER1 RJXPPCWDPE
IF ~G("RJParkAM",1)~ THEN EXTERN PLAYER1 RJXPPCWDAM
IF ~G("RJParkIS",1)~ THEN EXTERN PLAYER1 RJXPPCWDIS
IF ~G("RJParkDA",1)~ THEN EXTERN PLAYER1 RJXPPCWDDA
IF ~G("RJParkFA",1)~ THEN EXTERN PLAYER1 RJXPPCWDFA
IF ~G("RJParkYV",1)~ THEN EXTERN PLAYER1 RJXPPCWDYV
IF ~G("RJParkTY",1)~ THEN EXTERN PLAYER1 RJXPPCWDTY
IF ~G("RJParkNI",1)~ THEN EXTERN PLAYER1 RJXPPCWDNI
IF ~G("RJParkNA",1)~ THEN EXTERN PLAYER1 RJXPPCWDNA
IF ~G("RJParkBR",1)~ THEN EXTERN PLAYER1 RJXPPCWDBR

CHAIN IF ~~ THEN PLAYER1 RJXPPCWDBR
@240
== RJALI25P @170
== O#BRA25P @171
== RJALI25P @172
== PLAYER1 @128
== RJALI25P @129
END
IF ~~ THEN EXTERN PLAYER1 RJXPPCWD9
IF ~G("RJParkSH",1)~ THEN EXTERN PLAYER1 RJXPPCWDSH
IF ~G("RJParkPE",1)~ THEN EXTERN PLAYER1 RJXPPCWDPE
IF ~G("RJParkAM",1)~ THEN EXTERN PLAYER1 RJXPPCWDAM
IF ~G("RJParkIS",1)~ THEN EXTERN PLAYER1 RJXPPCWDIS
IF ~G("RJParkDA",1)~ THEN EXTERN PLAYER1 RJXPPCWDDA
IF ~G("RJParkFA",1)~ THEN EXTERN PLAYER1 RJXPPCWDFA
IF ~G("RJParkYV",1)~ THEN EXTERN PLAYER1 RJXPPCWDYV
IF ~G("RJParkTY",1)~ THEN EXTERN PLAYER1 RJXPPCWDTY
IF ~G("RJParkNI",1)~ THEN EXTERN PLAYER1 RJXPPCWDNI
IF ~G("RJParkNA",1)~ THEN EXTERN PLAYER1 RJXPPCWDNA

CHAIN IF ~~ THEN PLAYER1 RJXPPCWDNA
@241
== RJALI25P @173
== NALIA25P @174
== RJALI25P @175
== PLAYER1 @128
== RJALI25P @129
END
IF ~~ THEN EXTERN PLAYER1 RJXPPCWD9
IF ~G("RJParkSH",1)~ THEN EXTERN PLAYER1 RJXPPCWDSH
IF ~G("RJParkPE",1)~ THEN EXTERN PLAYER1 RJXPPCWDPE
IF ~G("RJParkAM",1)~ THEN EXTERN PLAYER1 RJXPPCWDAM
IF ~G("RJParkIS",1)~ THEN EXTERN PLAYER1 RJXPPCWDIS
IF ~G("RJParkDA",1)~ THEN EXTERN PLAYER1 RJXPPCWDDA
IF ~G("RJParkFA",1)~ THEN EXTERN PLAYER1 RJXPPCWDFA
IF ~G("RJParkYV",1)~ THEN EXTERN PLAYER1 RJXPPCWDYV
IF ~G("RJParkTY",1)~ THEN EXTERN PLAYER1 RJXPPCWDTY
IF ~G("RJParkNI",1)~ THEN EXTERN PLAYER1 RJXPPCWDNI

CHAIN IF ~~ THEN PLAYER1 RJXPPCWDNI
@242
== RJALI25P @176
== LK#NI25P @177
== RJALI25P @178
== PLAYER1 @128
== RJALI25P @129
END
IF ~~ THEN EXTERN PLAYER1 RJXPPCWD9
IF ~G("RJParkSH",1)~ THEN EXTERN PLAYER1 RJXPPCWDSH
IF ~G("RJParkPE",1)~ THEN EXTERN PLAYER1 RJXPPCWDPE
IF ~G("RJParkAM",1)~ THEN EXTERN PLAYER1 RJXPPCWDAM
IF ~G("RJParkIS",1)~ THEN EXTERN PLAYER1 RJXPPCWDIS
IF ~G("RJParkDA",1)~ THEN EXTERN PLAYER1 RJXPPCWDDA
IF ~G("RJParkFA",1)~ THEN EXTERN PLAYER1 RJXPPCWDFA
IF ~G("RJParkYV",1)~ THEN EXTERN PLAYER1 RJXPPCWDYV
IF ~G("RJParkTY",1)~ THEN EXTERN PLAYER1 RJXPPCWDTY

CHAIN IF ~~ THEN PLAYER1 RJXPPCWDTY
@243
== RJALI25P @179
== G#TRS25P @180
== RJALI25P @181
== PLAYER1 @128
== RJALI25P @129
END
IF ~~ THEN EXTERN PLAYER1 RJXPPCWD9
IF ~G("RJParkSH",1)~ THEN EXTERN PLAYER1 RJXPPCWDSH
IF ~G("RJParkPE",1)~ THEN EXTERN PLAYER1 RJXPPCWDPE
IF ~G("RJParkAM",1)~ THEN EXTERN PLAYER1 RJXPPCWDAM
IF ~G("RJParkIS",1)~ THEN EXTERN PLAYER1 RJXPPCWDIS
IF ~G("RJParkDA",1)~ THEN EXTERN PLAYER1 RJXPPCWDDA
IF ~G("RJParkFA",1)~ THEN EXTERN PLAYER1 RJXPPCWDFA
IF ~G("RJParkYV",1)~ THEN EXTERN PLAYER1 RJXPPCWDYV

CHAIN IF ~~ THEN PLAYER1 RJXPPCWDYV
@244
== RJALI25P @182
== YXYV25P @183
== RJALI25P @184
== PLAYER1 @128
== RJALI25P @129
END
IF ~~ THEN EXTERN PLAYER1 RJXPPCWD9
IF ~G("RJParkSH",1)~ THEN EXTERN PLAYER1 RJXPPCWDSH
IF ~G("RJParkPE",1)~ THEN EXTERN PLAYER1 RJXPPCWDPE
IF ~G("RJParkAM",1)~ THEN EXTERN PLAYER1 RJXPPCWDAM
IF ~G("RJParkIS",1)~ THEN EXTERN PLAYER1 RJXPPCWDIS
IF ~G("RJParkDA",1)~ THEN EXTERN PLAYER1 RJXPPCWDDA
IF ~G("RJParkFA",1)~ THEN EXTERN PLAYER1 RJXPPCWDFA

CHAIN IF ~~ THEN PLAYER1 RJXPPCWDFA
@245 DO ~IncrementGlobal("RJXPTiefling","GLOBAL",1)~
== RJALI25P @185
== E3FAD25P @186
== RJALI25P @187
== PLAYER1 @128
== RJALI25P @129
END
IF ~~ THEN EXTERN PLAYER1 RJXPPCWD9
IF ~G("RJParkSH",1)~ THEN EXTERN PLAYER1 RJXPPCWDSH
IF ~G("RJParkPE",1)~ THEN EXTERN PLAYER1 RJXPPCWDPE
IF ~G("RJParkAM",1)~ THEN EXTERN PLAYER1 RJXPPCWDAM
IF ~G("RJParkIS",1)~ THEN EXTERN PLAYER1 RJXPPCWDIS
IF ~G("RJParkDA",1)~ THEN EXTERN PLAYER1 RJXPPCWDDA

CHAIN IF ~~ THEN PLAYER1 RJXPPCWDDA
@246
== RJALI25P @188
== T#DAC25P IF ~G("RJXPDA1",0)~ @189
== T#DAC25P IF ~G("RJXPDA1",1)~ @254
== RJALI25P @190
== PLAYER1 @128
== RJALI25P @129
END
IF ~~ THEN EXTERN PLAYER1 RJXPPCWD9
IF ~G("RJParkSH",1)~ THEN EXTERN PLAYER1 RJXPPCWDSH
IF ~G("RJParkPE",1)~ THEN EXTERN PLAYER1 RJXPPCWDPE
IF ~G("RJParkAM",1)~ THEN EXTERN PLAYER1 RJXPPCWDAM
IF ~G("RJParkIS",1)~ THEN EXTERN PLAYER1 RJXPPCWDIS

CHAIN IF ~~ THEN PLAYER1 RJXPPCWDIS
@247
== RJALI25P @191
== RH#IS25P @192
== RJALI25P @193
== PLAYER1 @128
== RJALI25P @129
END
IF ~~ THEN EXTERN PLAYER1 RJXPPCWD9
IF ~G("RJParkSH",1)~ THEN EXTERN PLAYER1 RJXPPCWDSH
IF ~G("RJParkPE",1)~ THEN EXTERN PLAYER1 RJXPPCWDPE
IF ~G("RJParkAM",1)~ THEN EXTERN PLAYER1 RJXPPCWDAM

CHAIN IF ~~ THEN PLAYER1 RJXPPCWDAM
@248 DO ~IncrementGlobal("RJXPTiefling","GLOBAL",1)~
== RJALI25P @194
== M#AMB25P @195
== RJALI25P @196
== PLAYER1 @128
== RJALI25P @129
END
IF ~~ THEN EXTERN PLAYER1 RJXPPCWD9
IF ~G("RJParkSH",1)~ THEN EXTERN PLAYER1 RJXPPCWDSH
IF ~G("RJParkPE",1)~ THEN EXTERN PLAYER1 RJXPPCWDPE

CHAIN IF ~~ THEN PLAYER1 RJXPPCWDPE
@249
== RJALI25P @197
== L3PET25P @198
== RJALI25P @199
== PLAYER1 @128
== RJALI25P @129
END
IF ~~ THEN EXTERN PLAYER1 RJXPPCWD9
IF ~G("RJParkSH",1)~ THEN EXTERN PLAYER1 RJXPPCWDSH

CHAIN IF ~~ THEN PLAYER1 RJXPPCWDSH
@261
== RJALI25P @262
== SHEEN25P @263
== RJALI25P @264
== PLAYER1 @128
== RJALI25P @129
END
IF ~~ THEN EXTERN PLAYER1 RJXPPCWD9

CHAIN IF ~~ THEN PLAYER1 RJXPPCWD9
@250
== RJALI25P @204 = @205 = @206 = @207
== PLAYER1 @208
== RJALI25P @209 = @210
== RJGR25P IF ~G("RJParkGR",1)~ @211
== RJALI25P @200
== IMOEN25P IF ~G("RJParkIM",1)~ @255
== PLAYER1 IF ~G("RJXPEC1",1)~ @253
== PLAYER1 IF ~GGT("RJXPTiefling",1)~ @256
== RJAN25P IF ~G("RJParkAN",1)
               GGT("RJXPTiefling",1)~ @258
== M#AMB25P IF ~GGT("RJXPTiefling",1)
                G("RJParkAM",1)~ @258
== E3FAD25P IF ~GGT("RJXPTiefling",1)
                G("RJParkFA",1)~ @258
== C0SIR25P IF ~GGT("RJXPTiefling",1)
                G("RJParkSI",1)~ @258
== RJGENIE @215
== RJDRYAD @216
== RJGENIE @217
== RJGR25P IF ~G("RJParkGR",1)~ @257
== AERIE25P IF ~G("RJParkGR",1) G("RJParkAE",1)~ @259
== RH#IS25P IF ~G("RJParkIS",1)~ @226
END
IF ~~ THEN REPLY @100 DO ~StartCutSceneMode()
                          StartCutScene("RJ233I3")~ EXIT