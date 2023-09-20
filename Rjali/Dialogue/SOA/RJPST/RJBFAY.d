
BEGIN BRJFAY

//  Party Banters with Fay - SoA

//  Imoen #1 - SoA - Sore Point

CHAIN IF ~Global("RJFAIMB1","LOCALS",0)
          InParty("Imoen2")
          See("Imoen2")
          !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN BRJFAY RJFAIMB1
@40 DO ~SetGlobal("RJFAIMB1","LOCALS",1)~
== BIMOEN2 @41
END
IF ~!G("ImoenRomanceActive",2)~ THEN EXTERN BRJFAY RJFAIMB1.1
IF ~G("ImoenRomanceActive",2)~ THEN EXTERN BRJFAY RJFAIMB1.2

CHAIN IF ~~ THEN BRJFAY RJFAIMB1.1
@42
== BIMOEN2 @43
== BRJFAY @46
== BIMOEN2 @47
== BRJFAY @48 = @49
== BIMOEN2 @50
== BRJFAY @51
END
IF ~~ THEN EXIT

CHAIN IF ~~ THEN BRJFAY RJFAIMB1.2
@42
== BIMOEN2 @44 = @45
== BRJFAY @52
== BIMOEN2 @53
== BRJFAY @54
== BIMOEN2 @55
END
IF ~~ THEN EXIT

//  Neera #1 - SoA - Wild, wild magic

CHAIN IF ~Global("RJFANEB1","LOCALS",0)
          InParty("Neera")
          See("Neera")
          !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN BRJFAY RJFANEB1
@60 DO ~SetGlobal("RJFANEB1","LOCALS",1)~
== BNEERA @61 = @62
== BRJFAY @63 = @64 = @65 = @66
== BNEERA @67 = @68 = @69
== BRJFAY @70
== BNEERA @71
END
IF ~~ THEN EXIT

//  Viconia #1 - SoA - Burning Sun

CHAIN IF ~Global("RJFAVIB1","LOCALS",0)
          InParty("Viconia")
          See("Viconia")
          AreaType(OUTDOOR)
          TimeOfDay(Day)
          !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN BRJFAY RJFAVIB1
@120 DO ~SetGlobal("RJFAVIB1","LOCALS",1)~
== BVICONI @121 = @122
== BRJFAY @123 = @124 = @125
== BVICONI @126 = @127
== BRJFAY @128
== BVICONI @129 = @130 = @131 = @132
== BRJFAY @133 = @134
== BVICONI @135
END
IF ~~ THEN EXIT

//  Minsc #1 - SoA - Boo

CHAIN IF ~Global("RJFAMIB1","LOCALS",0)
          InParty("Minsc")
          See("Minsc")
          !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN BRJFAY RJFAMIB1
@140 DO ~SetGlobal("RJFAMIB1","LOCALS",1)~
== BRJFAY @141
== BMINSC @142
== BRJFAY @143
== BMINSC @144
== BRJFAY @145 = @146
== BMINSC @147
END
IF ~~ THEN EXIT

//  Jaheira #1 - SoA - Khalid

CHAIN IF ~Global("RJFAJAB1","LOCALS",0)
          InParty("Jaheira")
          See("Jaheira")
          !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN BRJFAY RJFAJAB1
@20 DO ~SetGlobal("RJFAJAB1","LOCALS",1)~
== BRJFAY @21
== BJAHEIR @22 = @23 = @24
== BRJFAY @25
END
IF ~~ THEN EXIT

//  Jan #1 - SoA - Uncle Malky

CHAIN IF ~Global("RJFAJNB1","LOCALS",0)
          InParty("Jan")
          See("Jan")
          !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN BRJFAY RJFAJNB1
@160 DO ~SetGlobal("RJFAJNB1","LOCALS",1)~
== BJAN @161 = @162 = @163 = @164 = @165 = @166
== BRJFAY @167
== BJAN @168 = @169
== BRJFAY @170
== BJAN @171
END
IF ~~ THEN EXIT

//  Aerie #1 - SoA - Flightless

CHAIN IF ~Global("RJFAAEB1","LOCALS",0)
          InParty("Aerie")
          See("Aerie")
          !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN BRJFAY RJFAAEB1
@180 DO ~SetGlobal("RJFAAEB1","LOCALS",1)~
== BAERIE @181
== BRJFAY @182
== BAERIE @183
== BRJFAY @184
== BAERIE @185
== BRJFAY @186 = @187
== BAERIE @188
== BRJFAY @189 = @190 = @191
== BAERIE @192 = @193
END
IF ~~ THEN EXIT

//  Rjali #1 - SoA - Again with the tacos

CHAIN IF ~Global("RJFARJB1","LOCALS",0)
          InParty("Rjali")
          See("Rjali")
          !StateCheck("Rjali",CD_STATE_NOTVALID)~ THEN BRJFAY RJFARJB1
@200 DO ~SetGlobal("RJFARJB1","LOCALS",1)~
== BRJFAY @201
== BRJALI @202
== BRJFAY @203 = @204
== BRJALI @205 = @206
== BRJFAY @207
== BRJALI @208 = @209
== BRJFAY @210 = @211
== BRJALI @212
== BRJFAY @213
END
IF ~~ THEN EXIT

//  Rasaad #1 - SoA - Meditation

CHAIN IF ~Global("RJFARAB1","LOCALS",0)
          InParty("Rasaad")
          See("Rasaad")
          !StateCheck("Rasaad",CD_STATE_NOTVALID)~ THEN BRJFAY RJFARAB1
@220 DO ~SetGlobal("RJFARAB1","LOCALS",1)~
== BRASAAD @221 = @222 = @223
== BRJFAY @224
== BRASAAD @225 = @226 = @227
== BRJFAY @228 = @229
== BRASAAD @229 = @230
END
IF ~~ THEN EXIT

//  Nalia #1 - SoA - Home

CHAIN IF ~Global("RJFANAB1","LOCALS",0)
          InParty("Nalia")
          See("Nalia")
          !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN BRJFAY RJFANAB1
@240 DO ~SetGlobal("RJFANAB1","LOCALS",1)~
== BNALIA @241
== BRJFAY @242 = @243
== BNALIA @244 = @245 = @246
== BRJFAY @247 = @248 = @249
== BNALIA @250 = @251 = @252 = @253
== BRJFAY @254
== BNALIA @255 = @256
== BRJFAY IF ~!InParty("Imoen2")~ THEN @257
== BRJFAY IF ~InParty("Imoen2")~ THEN @258
END
IF ~~ THEN EXIT

//  Mazzy #1 - SoA - Designs

CHAIN IF ~Global("RJFAMAB1","LOCALS",0)
          InParty("Mazzy")
          See("Mazzy")
          !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN BRJFAY RJFAMAB1
@260 DO ~SetGlobal("RJFAMAB1","LOCALS",1)~
== BMAZZY @261
== BRJFAY @262
== BRJFAY IF ~InParty("L3Petsy")~ THEN @263 = @264
== BMAZZY IF ~InParty("L3Petsy")~ THEN @265
== BRJFAY @266 = @267
END
IF ~~ THEN EXIT

//  Annah #1 - SoA - Pike Off

CHAIN IF ~Global("RJFAANB1","LOCALS",0)
          Global("RJAnnahRomanceActive","GLOBAL",2)
          InParty("RJAnnah")
          See("RJAnnah")
          !StateCheck("RJAnnah",CD_STATE_NOTVALID)~ THEN BRJFAY RJFAANB1
@280 DO ~SetGlobal("RJFAANB1","LOCALS",1)~
== BRJANNAH @281
== BRJFAY @282 = @283 = @284 = @285
== BRJANNAH @286 = @287 = @288
== BRJFAY @289
== BRJANNAH @290
== BRJFAY @291
END
IF ~~ THEN EXIT

//  Grace #1 - SoA - Kissing

CHAIN IF ~Global("RJFAGRB1","LOCALS",0)
          Global("RJGraceRomanceActive","GLOBAL",2)
          InParty("RJGrace")
          See("RJGrace")
          !StateCheck("RJGrace",CD_STATE_NOTVALID)~ THEN BRJFAY RJFAGRB1
@300 DO ~SetGlobal("RJFAGRB1","LOCALS",1)~
== BRJGRACE @301 = @302 = @303
== BRJFAY @304 = @305
== BRJGRACE @306 = @307 = @308
END
IF ~~ THEN EXIT

//  Ravel #1 - SoA - Trias

CHAIN IF ~Global("RJFARVB1","LOCALS",0)
          Global("RJRavelRomanceActive","GLOBAL",2)
          InParty("RJRavel")
          See("RJRavel")
          !StateCheck("RJRavel",CD_STATE_NOTVALID)~ THEN BRJFAY RJFARVB1
@320 DO ~SetGlobal("RJFARVB1","LOCALS",1)~
== BRJRAVEL @321
== BRJFAY @322
== BRJRAVEL @323
== BRJFAY @324
== BRJRAVEL @325
== BRJFAY @326 = @327 = @328
== BRJRAVEL @329
== BRJFAY @330 = @331
== BRJRAVEL @332 = @333 = @334 = @335
== BRJFAY @336
== BRJRAVEL @337
END
IF ~~ THEN EXIT

BEGIN BRJFAY25

//  Party Banters with Fay - ToB

//  Imoen #1 - ToB - Questions

CHAIN IF ~Global("RJFAIMB5","LOCALS",0)
          InParty("Imoen2")
          See("Imoen2")
          !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN BRJFAY25 RJFAIMB5
@1040 DO ~SetGlobal("RJFAIMB5","LOCALS",1)~
== BIMOEN25 @1041
== BRJFAY25 @1042
== BIMOEN25 @1043
== BRJFAY25 @1044
== BIMOEN25 @1045
== BRJFAY25 @1046
== BIMOEN25 @1047
== BRJFAY25 @1048 = @1049 = @1050 = @1051
== BIMOEN25 @1052 = @1053
END
IF ~~ THEN EXIT

//  Neera #1 - ToB - Contraception

CHAIN IF ~Global("RJFANEB5","LOCALS",0)
          InParty("Neera")
          See("Neera")
          !StateCheck("Neera",CD_STATE_NOTVALID)~ THEN BRJFAY25 RJFANEB5
@1060 DO ~SetGlobal("RJFANEB5","LOCALS",1)~
== BNEERA25 @1061 = @1062
== BRJFAY25 @1063
== BNEERA25 @1064 = @1065 = @1066 = @1067
== BRJFAY25 @1068 = @1069
== BNEERA25 @1070 = @1071 = @1072
== BRJFAY25 @1073 = @1074
END
IF ~~ THEN EXIT

//  Viconia #1 - ToB - The Hug

CHAIN IF ~Global("RJFAVIB5","LOCALS",0)
          InParty("Viconia")
          See("Viconia")
          !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN BRJFAY25 RJFAVIB5
@1120 DO ~SetGlobal("RJFAVIB5","LOCALS",1)~
== BVICON25 @1121
== BRJFAY25 @1122
== BVICON25 @1123
== BRJFAY25 @1124 = @1125
== BVICON25 @1126
== BRJFAY25 @1127 = @1128 = @1129
== BVICON25 @1130
== BRJFAY25 @1131 = @1132
END
IF ~~ THEN EXIT

//  Minsc #1 - ToB - Boo and tacos

CHAIN IF ~Global("RJFAMIB5","LOCALS",0)
          InParty("Minsc")
          See("Minsc")
          !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN BRJFAY25 RJFAMIB5
@1140 DO ~SetGlobal("RJFAMIB5","LOCALS",1)~
== BMINSC25 @1141
== BRJFAY25 @1142
== BMINSC25 @1143
== BRJFAY25 @1144 = @1145
== BMINSC25 @1146 = @1147
== BRJFAY25 @1148 = @1149 = @1150 = @1151 = @1152 = @1153
== BMINSC25 @1154
== BRJFAY25 @1155
END
IF ~~ THEN EXIT

//  Jaheira #1 - ToB - Khalid too

CHAIN IF ~Global("RJFAJAB5","LOCALS",0)
          InParty("Jaheira")
          See("Jaheira")
          !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN BRJFAY25 RJFAJAB5
@1020 DO ~SetGlobal("RJFAJAB5","LOCALS",1)~
== BJAHEI25 @1021 = @1022 = @1023
== BRJFAY25 @1024 = @1025 = @1026 = @1027 = @1028
== BJAHEI25 @1029 = @1030 = @1031
== BRJFAY25 @1032
== BJAHEI25 @1033
END
IF ~~ THEN EXIT

//  Jan #1 - ToB - Aunt Petunia

CHAIN IF ~Global("RJFAJNB5","LOCALS",0)
          InParty("Jan")
          See("Jan")
          !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN BRJFAY25 RJFAJNB5
@1160 DO ~SetGlobal("RJFAJNB5","LOCALS",1)~
== BRJFAY25 @1161
== BJAN25 @1162 = @1163 = @1164 = @1165
== BRJFAY25 @1166
== BJAN25 @1167 = @1168 = @1169
== BRJFAY25 @1166 = @1170
== BJAN25 @1171 = @1172
END
IF ~~ THEN EXIT

//  Aerie #1 - ToB - Baby

CHAIN IF ~Global("RJFAAEB5","LOCALS",0)
          !G("babytalk",0)
          InParty("Aerie")
          See("Aerie")
          !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN BRJFAY25 RJFAAEB5
@1180 DO ~SetGlobal("RJFAAEB5","LOCALS",1)~
== BAERIE25 @1181
== BRJFAY25 @1182
== BAERIE25 @1183
== BRJFAY25 @1184 = @1185 = @1186
== BAERIE25 @1187
== BRJFAY25 @1188
== BAERIE25 @1189 = @1190
== BRJFAY25 @1191 = @1192 = @1193
== BAERIE25 @1194
END
IF ~~ THEN EXIT

//  Rjali #1 - ToB - The Jini Connection

CHAIN IF ~Global("RJFARJB5","LOCALS",0)
          InParty("Rjali")
          See("Rjali")
          !StateCheck("Rjali",CD_STATE_NOTVALID)~ THEN BRJFAY25 RJFARJB5
@1200 DO ~SetGlobal("RJFARJB5","LOCALS",1)~
== BRJFAY25 @1201
== BRJALI25 @1214
== BRJFAY25 @1215
== BRJALI25 @1202 = @1203 = @1204
== BRJFAY25 @1205 = @1206 = @1207
== BRJALI25 @1208 = @1209
== BRJFAY25 @1210
== BRJALI25 @1211
== BRJFAY25 @1212
== BRJALI25 @1213
END
IF ~~ THEN EXIT

//  Rasaad #1 - ToB - Quiet

CHAIN IF ~Global("RJFARAB5","LOCALS",0)
          InParty("Rasaad")
          See("Rasaad")
          !StateCheck("Rasaad",CD_STATE_NOTVALID)~ THEN BRJFAY25 RJFARAB5
@1220 DO ~SetGlobal("RJFARAB5","LOCALS",1)~
== BRASAA25 @1221
== BRJFAY25 @1222
== BRASAA25 @1223 = @1224 = @1225 = @1226
== BRJFAY25 @1227
== BRASAA25 @1228 = @1229
== BRJFAY25 @1230
== BRASAA25 @1231
END
IF ~~ THEN EXIT

//  Nalia #1 - ToB - Condescension

CHAIN IF ~Global("RJFANAB5","LOCALS",0)
          InParty("Nalia")
          See("Nalia")
          !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN BRJFAY25 RJFANAB5
@1240 DO ~SetGlobal("RJFANAB5","LOCALS",1)~
== BNALIA25 @1241 = @1242
== BRJFAY25 @1243 = @1244
== BNALIA25 @1245 = @1246
== BRJFAY25 @1247 = @1248
== BNALIA25 @1249 = @1250 = @1251
== BRJFAY25 @1252 = @1253 = @1254
== BNALIA25 @1255
END
IF ~~ THEN EXIT

//  Mazzy #1 - ToB - Determination

CHAIN IF ~Global("RJFAMAB5","LOCALS",0)
          InParty("Mazzy")
          See("Mazzy")
          !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN BRJFAY25 RJFAMAB5
@1260 DO ~SetGlobal("RJFAMAB5","LOCALS",1)~
== BMAZZY25 @1261
== BRJFAY25 @1262 = @1263 = @1264 = @1265
== BMAZZY25 @1266 = @1267 = @1268 = @1269 = @1270
== BRJFAY25 @1271
END
IF ~~ THEN EXIT

//  Annah #1 - ToB - Trials of Youth

CHAIN IF ~Global("RJFAANB5","LOCALS",0)
          Global("RJAnnahRomanceActive","GLOBAL",2)
          InParty("RJAnnah")
          See("RJAnnah")
          !StateCheck("RJAnnah",CD_STATE_NOTVALID)~ THEN BRJFAY25 RJFAANB5
@1280 DO ~SetGlobal("RJFAANB5","LOCALS",1)~
== BRJFAY25 @1281
== BRJAN25 @1282 = @1283 = @1284 = @1285 = @1286
== BRJFAY25 @1287 = @1288
== BRJAN25 @1289 = @1290
== BRJFAY25 @1291
== BRJAN25 @1292
== BRJFAY25 @1293
== BRJAN25 @1294
END
IF ~~ THEN EXIT

//  Grace #1 - ToB - Adjustments

CHAIN IF ~Global("RJFAGRB5","LOCALS",0)
          Global("RJGraceRomanceActive","GLOBAL",2)
          InParty("RJGrace")
          See("RJGrace")
          !StateCheck("RJGrace",CD_STATE_NOTVALID)~ THEN BRJFAY25 RJFAGRB5
@1300 DO ~SetGlobal("RJFAGRB5","LOCALS",1)~
== BRJGR25 @1301 = @1302 = @1303
== BRJFAY25 @1304 = @1305
== BRJGR25 @1306 = @1307
== BRJFAY25 @1308
== BRJGR25 @1309
END
IF ~~ THEN EXIT

//  Ravel #1 - ToB - Regrets

CHAIN IF ~Global("RJFARVB5","LOCALS",0)
          Global("RJRavelRomanceActive","GLOBAL",2)
          InParty("RJRavel")
          See("RJRavel")
          !StateCheck("RJRavel",CD_STATE_NOTVALID)~ THEN BRJFAY25 RJFARVB5
@1320 DO ~SetGlobal("RJFARVB5","LOCALS",1)~
== BRJRV25 @1321
== BRJFAY25 @1322
== BRJRV25 @1323 = @1324 = @1325
== BRJFAY25 @1326 = @1327
== BRJRV25 @1328
END
IF ~~ THEN EXIT
