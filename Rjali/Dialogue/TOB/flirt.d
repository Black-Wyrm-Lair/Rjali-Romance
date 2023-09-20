
APPEND RJALI25J

// FLIRTS (TOB)

// Rjali-initiated flirts

// Flirts for Rjali, RjaliRomanceActive=2

IF ~Global("RjaliFlirtToB","GLOBAL",1)~ flirt3
SAY @30
IF ~~ + f0
IF ~RandomNum(15,1)~ + f1
IF ~RandomNum(15,2)~ + f2
IF ~RandomNum(15,3)~ + f3
IF ~RandomNum(15,4)~ + f4
IF ~RandomNum(15,5)~ + f5
IF ~RandomNum(15,6)~ + f6
IF ~RandomNum(15,7)~ + f7
IF ~RandomNum(15,8)~ + f8
IF ~RandomNum(15,9)~ + f9
IF ~RandomNum(15,10)~ + f10
IF ~RandomNum(15,11)~ + f11
IF ~RandomNum(15,12)~ + f12
IF ~RandomNum(15,13)~ + f13
IF ~RandomNum(15,14)~ + f14
IF ~RandomNum(15,15)~ + f15
END

IF ~~ f0
SAY @31 = @32
IF ~~ EXIT
END

IF ~~ f1
SAY @33 = @34
IF ~~ EXIT
END

IF ~~ f2
SAY @35 = @36
IF ~~ EXIT
END

IF ~~ f3
SAY @37
IF ~~ EXIT
END

IF ~~ f4
SAY @38 = @39
IF ~~ EXIT
END

IF ~~ f5
SAY @40
IF ~~ EXIT
END

IF ~~ f6
SAY @41 = @42
IF ~~ EXIT
END

IF ~~ f7
SAY @43
IF ~~ EXIT
END

IF ~~ f8
SAY @44 = @45
IF ~~ EXIT
END

IF ~~ f9
SAY @46
IF ~~ EXIT
END

IF ~~ f10
SAY @47 = @48
IF ~~ EXIT
END

IF ~~ f11
SAY @49 = @50
IF ~~ EXIT
END

IF ~~ f12
SAY @51 = @52
IF ~~ EXIT
END

IF ~~ f13
SAY @53 = @54
IF ~~ EXIT
END

IF ~~ f14
SAY @55 = @56
IF ~~ EXIT
END

IF ~~ f15
SAY @57
IF ~~ EXIT
END

// Player-initiated dialogue, ToB. Again, in the bottom of the file, and, again, no flirting for the final battle, AR6200.

IF ~IsGabber(Player1) AreaCheck("AR6200")~ PPID0
SAY @101
IF ~~ EXIT
END

IF ~IsGabber(Player1) G("RJXPN",0)~ PPID
SAY @102

+ ~RandomNum(3,1)~ + @105 + kiss1
+ ~RandomNum(3,2)~ + @105 + kiss2
+ ~RandomNum(3,3)~ + @105 + kiss3
+ ~RandomNum(3,1)~ + @117 + hold1
+ ~RandomNum(3,2)~ + @117 + hold2
+ ~RandomNum(3,3)~ + @117 + hold3
+ ~RandomNum(3,1)~ + @112 + smile1
+ ~RandomNum(3,2)~ + @112 + smile2
+ ~RandomNum(3,3)~ + @112 + smile3
+ ~RandomNum(3,1)~ + @113 + love1
+ ~RandomNum(3,2)~ + @113 + love2
+ ~RandomNum(3,3)~ + @113 + love3
+ ~RandomNum(3,1)~ + @119 + tonight1
+ ~RandomNum(3,2)~ + @119 + tonight2
+ ~RandomNum(3,3)~ + @119 + tonight3
+ ~RandomNum(3,1)~ + @120 + lookingup1
+ ~RandomNum(3,2)~ + @120 + lookingup2
+ ~RandomNum(3,3)~ + @120 + lookingup3
+ ~RandomNum(3,1)~ + @114 + caress1
+ ~RandomNum(3,2)~ + @114 + caress2
+ ~RandomNum(3,3)~ + @114 + caress3
+ ~RandomNum(3,1)~ + @115 + ogle1
+ ~RandomNum(3,2)~ + @115 + ogle2
+ ~RandomNum(3,3)~ + @115 + ogle3
+ ~RandomNum(3,1)~ + @116 + feed1
+ ~RandomNum(3,2)~ + @116 + feed2
+ ~RandomNum(3,3)~ + @116 + feed3
+ ~RandomNum(3,1)~ + @121 + allright1
+ ~RandomNum(3,2)~ + @121 + allright2
+ ~RandomNum(3,3)~ + @121 + allright3
+ ~RandomNum(3,1)~ + @122 + baldur1
+ ~RandomNum(3,2)~ + @122 + baldur2
+ ~RandomNum(3,3)~ + @122 + baldur3
+ ~RandomNum(3,1)~ + @123 + oversoon1
+ ~RandomNum(3,2)~ + @123 + oversoon2
+ ~RandomNum(3,3)~ + @123 + oversoon3
+ ~RandomNum(3,1)~ + @124 + thanx1
+ ~RandomNum(3,2)~ + @124 + thanx2
+ ~RandomNum(3,3)~ + @124 + thanx3
+ ~RandomNum(3,1)
OR(2)
AreaCheck("AR5003")
AreaCheck("AR5501")~ + @126 + innbath1
+ ~RandomNum(3,2)
OR(2)
AreaCheck("AR5003")
AreaCheck("AR5501")~ + @126 + innbath2
+ ~RandomNum(3,3)
OR(2)
AreaCheck("AR5003")
AreaCheck("AR5501")~ + @126 + innbath3

+ ~RandomNum(3,1)
AreaCheck("AR6400")~ + @126 + streambath1
+ ~RandomNum(3,2)
AreaCheck("AR6400")~ + @126 + streambath2
+ ~RandomNum(3,3)
AreaCheck("AR6400")~ + @126 + streambath3
++ @127 EXIT
END

IF ~~ lookingup1
SAY @216
IF ~~ EXIT
END

IF ~~ lookingup2
SAY @217
IF ~~ EXIT
END

IF ~~ lookingup3
SAY @218
IF ~~ EXIT
END

IF ~~ allright1
SAY @219
IF ~~ EXIT
END

IF ~~ allright2
SAY @220
IF ~~ EXIT
END

IF ~~ allright3
SAY @221
IF ~~ EXIT
END

IF ~~ baldur1
SAY @222
IF ~~ EXIT
END

IF ~~ baldur2
SAY @223
IF ~~ EXIT
END

IF ~~ baldur3
SAY @224
IF ~~ EXIT
END

IF ~~ oversoon1
SAY @225
IF ~~ EXIT
END

IF ~~ oversoon2
SAY @226
IF ~~ EXIT
END

IF ~~ oversoon3
SAY @227 = @228
IF ~~ EXIT
END

IF ~~ thanx1
SAY @229
IF ~~ EXIT
END

IF ~~ thanx2
SAY @230
IF ~~ EXIT
END

IF ~~ thanx3
SAY @231
IF ~~ EXIT
END

IF ~~ kiss1
SAY @149
IF ~~ EXIT
END

IF ~~ kiss2
SAY @150
IF ~~ EXIT
END

IF ~~ kiss3
SAY @151
IF ~~ EXIT
END

IF ~~ hold1
SAY @232
IF ~~ EXIT
END

IF ~~ hold2
SAY @233
IF ~~ EXIT
END

IF ~~ hold3
SAY @234
IF ~~ EXIT
END

IF ~~ smile1
SAY @235
IF ~~ EXIT
END

IF ~~ smile2
SAY @236
IF ~~ EXIT
END

IF ~~ smile3
SAY @237
IF ~~ EXIT
END

IF ~~ love1
SAY @238
IF ~~ EXIT
END

IF ~~ love2
SAY @239
IF ~~ EXIT
END

IF ~~ love3
SAY @240
IF ~~ EXIT
END

IF ~~ tonight1
SAY @241
IF ~~ EXIT
END

IF ~~ tonight2
SAY @242
IF ~~ EXIT
END

IF ~~ tonight3
SAY @243
IF ~~ EXIT
END

IF ~~ caress1
SAY @191 = @192
IF ~~ EXIT
END

IF ~~ caress2
SAY @193 = @194
IF ~~ EXIT
END

IF ~~ caress3
SAY @195 = @196 = @197
IF ~~ EXIT
END

IF ~~ ogle1
SAY @198 = @199
IF ~~ EXIT
END

IF ~~ ogle2
SAY @200 = @201
++ @202 EXIT
END

IF ~~ ogle3
SAY @203 = @204
++ @205 EXIT
END

IF ~~ feed1
SAY @206 = @207
++ @208 EXIT
END

IF ~~ feed2
SAY @209 = @210
++ @211 EXIT
END

IF ~~ feed3
SAY @212 = @213 = @215
IF ~~ EXIT
END

IF ~~ innbath1
SAY @250 = @251 = @252 = @253 = @254 = @255
IF ~~ EXIT
END

IF ~~ innbath2
SAY @260 = @261 = @262 = @263 = @264
++ @265 EXIT
END

IF ~~ innbath3
SAY @270 = @271 = @272 = @273 = @274 = @275
++ @276 EXIT
END

IF ~~ streambath1
SAY @280 = @281 = @282 = @283 = @284
++ @285 EXIT
END

IF ~~ streambath2
SAY @290 = @291 = @292 = @293 = @294 = @295
++ @296 EXIT
END

IF ~~ streambath3
SAY @300 = @301 = @302 = @303 = @304
IF ~~ EXIT
END

END