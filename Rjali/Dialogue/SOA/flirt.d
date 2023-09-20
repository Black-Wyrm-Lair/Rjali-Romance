
APPEND RJALIJ

// FLIRTS (SOA)

// Rjali-initiated flirts.

IF ~G("RjaliFlirt",1)~ flirt2
SAY @0
IF ~~ + b0
IF ~RandomNum(10,1)~ + b1
IF ~RandomNum(10,2)~ + b2
IF ~RandomNum(10,3)~ + b3
IF ~RandomNum(10,4)~ + b4
IF ~RandomNum(10,5)~ + b5
IF ~RandomNum(10,6)~ + b6
IF ~RandomNum(10,7)~ + b7
IF ~RandomNum(10,8)~ + b8
IF ~RandomNum(10,9)~ + b9
IF ~RandomNum(10,10)~ + b10
END

IF ~~ b0
SAY @1
IF ~~ EXIT
END

IF ~~ b1
SAY @2 = @3
++ @4 EXIT
END

IF ~~ b2
SAY @5
IF ~~ EXIT
END

IF ~~ b3
SAY @6
IF ~~ EXIT
END

IF ~~ b4
SAY @7
IF ~~ EXIT
END

IF ~~ b5
SAY @8
++ @9 EXIT
END

IF ~~ b6
SAY @10 = @11
IF ~~ EXIT
END

IF ~~ b7
SAY @12 = @13
++ @14 EXIT
END

IF ~~ b8
SAY @15 = @16
++ @17 EXIT
END

IF ~~ b9
SAY @18 = @19
IF ~~ EXIT
END

IF ~~ b10
SAY @20 = @21
IF ~~ EXIT
END

// Player-initiated dialogue (last thing in file)

IF ~IsGabber(Player1) G("RjaliFlirtsStart",0) G("RjaliCircus",0)~ RjaliPID
SAY @130
++ @131 EXIT
END

IF ~IsGabber(Player1) G("RjaliFlirtsStart",0) !G("RjaliCircus",5)~ RjaliPID
SAY @128
++ @129 EXIT
END

IF ~IsGabber(Player1) G("RjaliFlirtsStart",1)~ RjaliPID    			
SAY @100

+ ~RandomNum(4,1)~ + @103 + flower1
+ ~RandomNum(4,2)~ + @103 + flower2
+ ~RandomNum(4,3)~ + @103 + flower3
+ ~RandomNum(4,4)~ + @103 + flower4
+ ~RandomNum(4,1)~ + @104 + cheek1
+ ~RandomNum(4,2)~ + @104 + cheek2
+ ~RandomNum(4,3)~ + @104 + cheek3
+ ~RandomNum(4,4)~ + @104 + cheek4
+ ~RandomNum(4,1)~ + @105 + kiss1
+ ~RandomNum(4,2)~ + @105 + kiss2
+ ~RandomNum(4,3)~ + @105 + kiss3
+ ~RandomNum(4,4)~ + @105 + kiss4
+ ~RandomNum(4,1)~ + @106 + grab1
+ ~RandomNum(4,2)~ + @106 + grab2
+ ~RandomNum(4,3)~ + @106 + grab3
+ ~RandomNum(4,4)~ + @106 + grab4
+ ~RandomNum(4,1)~ + @107 + hands1
+ ~RandomNum(4,2)~ + @107 + hands2
+ ~RandomNum(4,3)~ + @107 + hands3
+ ~RandomNum(4,4)~ + @107 + hands4
+ ~RandomNum(4,1)~ + @108 + arms1
+ ~RandomNum(4,2)~ + @108 + arms2
+ ~RandomNum(4,3)~ + @108 + arms3
+ ~RandomNum(4,4)~ + @108 + arms4
+ ~RandomNum(4,1)~ + @109 + want1
+ ~RandomNum(4,2)~ + @109 + want2
+ ~RandomNum(4,3)~ + @109 + want3
+ ~RandomNum(4,4)~ + @109 + want4
+ ~RandomNum(4,1)~ + @110 + beautiful1
+ ~RandomNum(4,2)~ + @110 + beautiful2
+ ~RandomNum(4,3)~ + @110 + beautiful3
+ ~RandomNum(4,4)~ + @110 + beautiful4
+ ~RandomNum(4,1)~ + @111 + hug1
+ ~RandomNum(4,2)~ + @111 + hug2
+ ~RandomNum(4,3)~ + @111 + hug3
+ ~RandomNum(4,4)~ + @111 + hug4
+ ~RandomNum(4,1)~ + @112 + smile1
+ ~RandomNum(4,2)~ + @112 + smile2
+ ~RandomNum(4,3)~ + @112 + smile3
+ ~RandomNum(4,4)~ + @112 + smile4
+ ~RandomNum(4,1)~ + @113 + love1
+ ~RandomNum(4,2)~ + @113 + love2
+ ~RandomNum(4,3)~ + @113 + love3
+ ~RandomNum(4,4)~ + @113 + love4
+ ~RandomNum(3,1)~ + @114 + caress1
+ ~RandomNum(3,2)~ + @114 + caress2
+ ~RandomNum(3,3)~ + @114 + caress3
+ ~RandomNum(3,1)~ + @115 + ogle1
+ ~RandomNum(3,2)~ + @115 + ogle2
+ ~RandomNum(3,3)~ + @115 + ogle3
+ ~RandomNum(3,1)~ + @116 + feed1
+ ~RandomNum(3,2)~ + @116 + feed2
+ ~RandomNum(3,3)~ + @116 + feed3

+ ~RandomNum(3,1)
OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ + @125 + innbath1
+ ~RandomNum(3,2)
OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ + @125 + innbath2
+ ~RandomNum(3,3)
OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")~ + @125 + innbath3

+ ~RandomNum(3,1)
OR(3)
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ + @125 + streambath1
+ ~RandomNum(3,2)
OR(3)
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ + @125 + streambath2
+ ~RandomNum(3,3)
OR(3)
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ + @125 + streambath3

+ ~ OR(2)
AreaCheck("AR1306")
AreaCheck("AR1307")~ + @125 + holdbath

++ @127 EXIT

END

// flirts

IF ~~ flower1
SAY @140
IF ~~ EXIT
END

IF ~~ flower2
SAY @141 = @139
IF ~~ EXIT
END

IF ~~ flower3
SAY @142
IF ~~ EXIT
END

IF ~~ flower4
SAY @143
IF ~~ EXIT
END

IF ~~ kiss1
SAY @144
IF ~~ EXIT
END

IF ~~ kiss2
SAY @145 = @146
IF ~~ EXIT
END

IF ~~ kiss3
SAY @147
IF ~~ EXIT
END

IF ~~ kiss4
SAY @148
IF ~~ EXIT
END

IF ~~ cheek1
SAY @152
IF ~~ EXIT
END

IF ~~ cheek2
SAY @153
IF ~~ EXIT
END

IF ~~ cheek3
SAY @154
IF ~~ EXIT
END

IF ~~ cheek4
SAY @155
IF ~~ EXIT
END

IF ~~ grab1
SAY @156
IF ~~ EXIT
END

IF ~~ grab2
SAY @157 = @158
++ @159 EXIT
END

IF ~~ grab3
SAY @160 = @161
IF ~~ EXIT
END

IF ~~ grab4
SAY @162
IF ~~ EXIT
END

IF ~~ hands1
SAY @163
IF ~~ EXIT
END

IF ~~ hands2
SAY @164
IF ~~ EXIT
END

IF ~~ hands3
SAY @165
IF ~~ EXIT
END

IF ~~ hands4
SAY @166
IF ~~ EXIT
END

IF ~~ want1
SAY @167
IF ~~ EXIT
END

IF ~~ want2
SAY @168
IF ~~ EXIT
END

IF ~~ want3
SAY @169
IF ~~ EXIT
END

IF ~~ want4
SAY @170
IF ~~ EXIT
END

IF ~~ beautiful1
SAY @171
IF ~~ EXIT
END

IF ~~ beautiful2
SAY @172
IF ~~ EXIT
END

IF ~~ beautiful3
SAY @173
IF ~~ EXIT
END

IF ~~ beautiful4
SAY @174
IF ~~ EXIT
END

IF ~~ arms1
SAY @175
IF ~~ EXIT
END

IF ~~ arms2
SAY @176
IF ~~ EXIT
END

IF ~~ arms3
SAY @177
IF ~~ EXIT
END

IF ~~ arms4
SAY @178
IF ~~ EXIT
END

IF ~~ hug1
SAY @179
IF ~~ EXIT
END

IF ~~ hug2
SAY @180
IF ~~ EXIT
END

IF ~~ hug3
SAY @181
IF ~~ EXIT
END

IF ~~ hug4
SAY @182
IF ~~ EXIT
END

IF ~~ smile1
SAY @183
IF ~~ EXIT
END

IF ~~ smile2
SAY @184
IF ~~ EXIT
END

IF ~~ smile3
SAY @185
IF ~~ EXIT
END

IF ~~ smile4
SAY @186
IF ~~ EXIT
END

IF ~~ love1
SAY @187
IF ~~ EXIT
END

IF ~~ love2
SAY @188
IF ~~ EXIT
END

IF ~~ love3
SAY @189
IF ~~ EXIT
END

IF ~~ love4
SAY @190
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
SAY @212 = @213 = @214
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

IF ~~ holdbath
SAY @310 = @311 = @312 = @313 = @314
++ @315 EXIT
END

END
