
APPEND RJANNAHJ

// FLIRTS (SOA) - Must be at the bottom of the file

// Annah-initiated flirts - RomanceActive = 1

IF ~G("RJAnnahFlirt",1) G("RJAnnahRomanceActive",1)~ ANFli1
SAY @1030
IF ~RandomNum(10,1)~ + anfli1.1
IF ~RandomNum(10,2)~ + anfli1.2
IF ~RandomNum(10,3)~ + anfli1.3
IF ~RandomNum(10,4)~ + anfli1.4
IF ~RandomNum(10,5)~ + anfli1.5
IF ~RandomNum(10,6)~ + anfli1.6
IF ~RandomNum(10,7)~ + anfli1.7
IF ~RandomNum(10,8)~ + anfli1.8
IF ~RandomNum(10,9)~ + anfli1.9
IF ~RandomNum(10,10)~ + anfli1.10
END

IF ~~ anfli1.1
SAY @1031
IF ~~ EXIT
END

IF ~~ anfli1.2
SAY @1032
IF ~~ EXIT
END

IF ~~ anfli1.3
SAY @1033
IF ~~ EXIT
END

IF ~~ anfli1.4
SAY @1034
IF ~~ EXIT
END

IF ~~ anfli1.5
SAY @1035
IF ~~ EXIT
END

IF ~~ anfli1.6
SAY @1036
IF ~~ THEN REPLY @1041 EXIT
END

IF ~~ anfli1.7
SAY @1037
IF ~~ EXIT
END

IF ~~ anfli1.8
SAY @1038
IF ~~ EXIT
END

IF ~~ anfli1.9
SAY @1039
IF ~~ EXIT
END

IF ~~ anfli1.10
SAY @1040
IF ~~ EXIT
END

// Annah-initiated flirts - RomanceActive = 2

IF ~G("RJAnnahFlirt",1) G("RJAnnahRomanceActive",2)~ ANFli2
SAY @1050
IF ~RandomNum(10,1)~ + anfli2.1
IF ~RandomNum(10,2)~ + anfli2.2
IF ~RandomNum(10,3)~ + anfli2.3
IF ~RandomNum(10,4)~ + anfli2.4
IF ~RandomNum(10,5)~ + anfli2.5
IF ~RandomNum(10,6)~ + anfli2.6
IF ~RandomNum(10,7)~ + anfli2.7
IF ~RandomNum(10,8)~ + anfli2.8
IF ~RandomNum(10,9)~ + anfli2.9
IF ~RandomNum(10,10)~ + anfli2.10
END

IF ~~ anfli2.1
SAY @1051
IF ~~ THEN REPLY @1061 EXIT
END

IF ~~ anfli2.2
SAY @1052
IF ~~ EXIT
END

IF ~~ anfli2.3
SAY @1053
IF ~~ EXIT
END

IF ~~ anfli2.4
SAY @1054
IF ~~ THEN REPLY @1062 EXIT
END

IF ~~ anfli2.5
SAY @1055
IF ~~ EXIT
END

IF ~~ anfli2.6
SAY @1056
IF ~~ THEN REPLY @1063 EXIT
END

IF ~~ anfli2.7
SAY @1057
IF ~~ EXIT
END

IF ~~ anfli2.8
SAY @1058
IF ~~ EXIT
END

IF ~~ anfli2.9
SAY @1059
IF ~~ EXIT
END

IF ~~ anfli2.10
SAY @1060
IF ~~ EXIT
END

// Player-initiated dialogue (last thing in file)

IF ~IsGabber(Player1)
    InParty(Myself)~ ANPid
SAY @1000
+ ~!G("RJAnnahRomanceActive",2)~ + @1001 EXIT
+ ~G("RJAnnahRomanceActive",2)~ + @1002 EXIT
+ ~!G("RJAnnahRomanceActive",2)~ + @1043 DO ~LeaveParty()~ EXIT
+ ~G("RJAnnahRomanceActive",0)~ + @1005 + ANFlt0
+ ~G("RJAnnahRomanceActive",1)~ + @1005 + ANFlt1
+ ~G("RJAnnahRomanceActive",2)~ + @1005 + ANFlt2
END

// Flirts - RomanceActive=0

IF ~~ ANFlt0
SAY @1007

++ @1001 EXIT

++ @1009 + sf0.0                                  // pike off

+ ~RandomNum(3,1)~ + @1010 + sf0.1.1              // hug
+ ~RandomNum(3,2)~ + @1010 + sf0.1.2
+ ~RandomNum(3,3)~ + @1010 + sf0.1.3

+ ~RandomNum(3,1)~ + @1014 + sf0.2.1              // kiss
+ ~RandomNum(3,2)~ + @1014 + sf0.2.2
+ ~RandomNum(3,3)~ + @1014 + sf0.2.3

+ ~RandomNum(3,1)~ + @1018 + sf0.3.1              // cheek kiss
+ ~RandomNum(3,2)~ + @1018 + sf0.3.2
+ ~RandomNum(3,3)~ + @1018 + sf0.3.3

+ ~RandomNum(3,1)~ + @1022 + sf0.4.1              // lovely
+ ~RandomNum(3,2)~ + @1022 + sf0.4.2
+ ~RandomNum(3,3)~ + @1022 + sf0.4.3

+ ~RandomNum(3,1)~ + @1026 + sf0.5.1              // outfit
+ ~RandomNum(3,2)~ + @1026 + sf0.5.2
+ ~RandomNum(3,3)~ + @1026 + sf0.5.3

END

IF ~~ sf0.0                                       // pike off
SAY @1042
IF ~~ EXIT
END

IF ~~ sf0.1.1                                     // hug
SAY @1011
IF ~~ EXIT
END
IF ~~ sf0.1.2
SAY @1012
IF ~~ EXIT
END
IF ~~ sf0.1.3
SAY @1013
IF ~~ EXIT
END

IF ~~ sf0.2.1                                     // kiss
SAY @1015
IF ~~ EXIT
END
IF ~~ sf0.2.2
SAY @1016
IF ~~ EXIT
END
IF ~~ sf0.2.3
SAY @1017
IF ~~ EXIT
END

IF ~~ sf0.3.1                                     // cheek kiss
SAY @1019
IF ~~ EXIT
END
IF ~~ sf0.3.2
SAY @1020
IF ~~ EXIT
END
IF ~~ sf0.3.3
SAY @1021
IF ~~ EXIT
END

IF ~~ sf0.4.1                                     // lovely
SAY @1023
IF ~~ EXIT
END
IF ~~ sf0.4.2
SAY @1024
IF ~~ EXIT
END
IF ~~ sf0.4.3
SAY @1025
IF ~~ EXIT
END

IF ~~ sf0.5.1                                     // outfit
SAY @1027
IF ~~ EXIT
END
IF ~~ sf0.5.2
SAY @1028
IF ~~ EXIT
END
IF ~~ sf0.5.3
SAY @1029
IF ~~ EXIT
END

// Flirts - RomanceActive=1

IF ~~ ANFlt1
SAY @1007

++ @1001 EXIT

+ ~RandomNum(2,1)~ + @1093 + sf1.1.1                // flower
+ ~RandomNum(2,2)~ + @1093 + sf1.1.2

+ ~RandomNum(2,1)~ + @1094 + sf1.2.1                // cheek
+ ~RandomNum(2,2)~ + @1094 + sf1.2.2

+ ~RandomNum(2,1)~ + @1095 + sf1.3.1                // kiss
+ ~RandomNum(2,2)~ + @1095 + sf1.3.2

+ ~RandomNum(2,1)~ + @1097 + sf1.5.1                // hands
+ ~RandomNum(2,2)~ + @1097 + sf1.5.2

+ ~RandomNum(2,1)~ + @1100 + sf1.8.1                // beautiful
+ ~RandomNum(2,2)~ + @1100 + sf1.8.2

+ ~RandomNum(2,1)~ + @1101 + sf1.9.1                // hug
+ ~RandomNum(2,2)~ + @1101 + sf1.9.2

+ ~RandomNum(2,1)~ + @1102 + sf1.10.1               // smile
+ ~RandomNum(2,2)~ + @1102 + sf1.10.2

+ ~RandomNum(2,1)~ + @1105 + sf1.13.1               // ogle
+ ~RandomNum(2,2)~ + @1105 + sf1.13.2

END

// flirts

IF ~~ sf1.1.1                   // flower
SAY @1250
IF ~~ EXIT
END
IF ~~ sf1.1.2
SAY @1251
IF ~~ EXIT
END

IF ~~ sf1.2.1                   // cheek
SAY @1252
IF ~~ EXIT
END
IF ~~ sf1.2.2
SAY @1253
IF ~~ EXIT
END

IF ~~ sf1.3.1                   // kiss
SAY @1254
IF ~~ EXIT
END
IF ~~ sf1.3.2
SAY @1255
IF ~~ EXIT
END

IF ~~ sf1.5.1                   // hands
SAY @1256
IF ~~ EXIT
END
IF ~~ sf1.5.2
SAY @1257
IF ~~ EXIT
END

IF ~~ sf1.8.1                   // beautiful
SAY @1258
++ @1259 EXIT
END
IF ~~ sf1.8.2
SAY @1260
IF ~~ EXIT
END

IF ~~ sf1.9.1                   // hug
SAY @1261
IF ~~ EXIT
END
IF ~~ sf1.9.2
SAY @1262 = @1263
++ @1264 EXIT
END

IF ~~ sf1.10.1                  // smile
SAY @1265
IF ~~ EXIT
END
IF ~~ sf1.10.2
SAY @1266
IF ~~ EXIT
END

IF ~~ sf1.13.1                  // ogle
SAY @1267
IF ~~ EXIT
END
IF ~~ sf1.13.2
SAY @1268
IF ~~ EXIT
END

// Flirts - RomanceActive=2

IF ~~ ANFlt2
SAY @1008

++ @1001 EXIT

+ ~RandomNum(4,1)~ + @1093 + sf2.1.1                // flower
+ ~RandomNum(4,2)~ + @1093 + sf2.1.2
+ ~RandomNum(4,3)~ + @1093 + sf2.1.3
+ ~RandomNum(4,4)~ + @1093 + sf2.1.4

+ ~RandomNum(4,1)~ + @1094 + sf2.2.1                // cheek
+ ~RandomNum(4,2)~ + @1094 + sf2.2.2
+ ~RandomNum(4,3)~ + @1094 + sf2.2.3
+ ~RandomNum(4,4)~ + @1094 + sf2.2.4

+ ~RandomNum(4,1)~ + @1095 + sf2.3.1                // kiss
+ ~RandomNum(4,2)~ + @1095 + sf2.3.2
+ ~RandomNum(4,3) !AreaType(City)~ + @1095 + sf2.3.3.1
+ ~RandomNum(4,3) AreaType(City)~ + @1095 + sf2.3.3.2
+ ~RandomNum(4,4)~ + @1095 + sf2.3.4

+ ~RandomNum(4,1)~ + @1096 + sf2.4.1                // grab
+ ~RandomNum(4,2)~ + @1096 + sf2.4.2
+ ~RandomNum(4,3)~ + @1096 + sf2.4.3
+ ~RandomNum(4,4)~ + @1096 + sf2.4.4

+ ~RandomNum(4,1)~ + @1097 + sf2.5.1                // hands
+ ~RandomNum(4,2)~ + @1097 + sf2.5.2
+ ~RandomNum(4,3)~ + @1097 + sf2.5.3
+ ~RandomNum(4,4)~ + @1097 + sf2.5.4

+ ~RandomNum(4,1)~ + @1098 + sf2.6.1                // arms
+ ~RandomNum(4,2)~ + @1098 + sf2.6.2
+ ~RandomNum(4,3)~ + @1098 + sf2.6.3
+ ~RandomNum(4,4)~ + @1098 + sf2.6.4

+ ~RandomNum(4,1)~ + @1099 + sf2.7.1                // want
+ ~RandomNum(4,2)~ + @1099 + sf2.7.2
+ ~RandomNum(4,3)~ + @1099 + sf2.7.3
+ ~RandomNum(4,4)~ + @1099 + sf2.7.4

+ ~RandomNum(4,1)~ + @1100 + sf2.8.1                // beautiful
+ ~RandomNum(4,2)~ + @1100 + sf2.8.2
+ ~RandomNum(4,3)~ + @1100 + sf2.8.3
+ ~RandomNum(4,4)~ + @1100 + sf2.8.4

+ ~RandomNum(4,1)~ + @1101 + sf2.9.1                // hug
+ ~RandomNum(4,2)~ + @1101 + sf2.9.2
+ ~RandomNum(4,3)~ + @1101 + sf2.9.3
+ ~RandomNum(4,4)~ + @1101 + sf2.9.4

+ ~RandomNum(4,1)~ + @1102 + sf2.10.1               // smile
+ ~RandomNum(4,2)~ + @1102 + sf2.10.2
+ ~RandomNum(4,3)~ + @1102 + sf2.10.3
+ ~RandomNum(4,4)~ + @1102 + sf2.10.4

+ ~RandomNum(4,1)~ + @1103 + sf2.11.1               // love
+ ~RandomNum(4,2)~ + @1103 + sf2.11.2
+ ~RandomNum(4,3)~ + @1103 + sf2.11.3
+ ~RandomNum(4,4)~ + @1103 + sf2.11.4

+ ~RandomNum(3,1)~ + @1104 + sf2.12.1               // caress
+ ~RandomNum(3,2)~ + @1104 + sf2.12.2
+ ~RandomNum(3,3)~ + @1104 + sf2.12.3

+ ~RandomNum(3,1)~ + @1105 + sf2.13.1               // ogle
+ ~RandomNum(3,2)~ + @1105 + sf2.13.2
+ ~RandomNum(3,3)~ + @1105 + sf2.13.3

+ ~RandomNum(3,1)                                  // innbath
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
AreaCheck("AR1602")~ + @1106 + sf2.14.1
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
AreaCheck("AR1602")~ + @1106 + sf2.14.2
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
AreaCheck("AR1602")~ + @1106 + sf2.14.3

+ ~Global("stream","LOCALS",0)                     // streambath
OR(3)
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ + @1106 DO ~SetGlobal("stream","LOCALS",1)~ + sf2.15.1

+ ~Global("stream","LOCALS",1)
OR(3)
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ + @1106 + sf2.15.2

+ ~ OR(2)                                          // holdbath
AreaCheck("AR1306")
AreaCheck("AR1307")~ + @1106 + sf2.16

END

// flirts

IF ~~ sf2.1.1                   // flower
SAY @1110
IF ~~ EXIT
END
IF ~~ sf2.1.2
SAY @1111
IF ~~ EXIT
END
IF ~~ sf2.1.3
SAY @1112
IF ~~ EXIT
END
IF ~~ sf2.1.4
SAY @1113
IF ~~ EXIT
END

IF ~~ sf2.2.1                   // cheek
SAY @1114
IF ~~ EXIT
END
IF ~~ sf2.2.2
SAY @1115
IF ~~ EXIT
END
IF ~~ sf2.2.3
SAY @1116
IF ~~ EXIT
END
IF ~~ sf2.2.4
SAY @1117
IF ~~ EXIT
END

IF ~~ sf2.3.1                   // kiss
SAY @1118
IF ~~ EXIT
END
IF ~~ sf2.3.2
SAY @1119
IF ~~ EXIT
END
IF ~~ sf2.3.3.1
SAY @1120 = @1121
IF ~~ EXIT
END
IF ~~ sf2.3.3.2
SAY @1144 = @1145
IF ~~ EXIT
END
IF ~~ sf2.3.4
SAY @1122
IF ~~ EXIT
END

IF ~~ sf2.4.1                   // grab
SAY @1123
IF ~~ EXIT
END
IF ~~ sf2.4.2
SAY @1124 = @1125
IF ~~ EXIT
END
IF ~~ sf2.4.3
SAY @1126 = @1127
IF ~~ EXIT
END
IF ~~ sf2.4.4
SAY @1128 = @1129
++ @1130 EXIT
END

IF ~~ sf2.5.1                   // hands
SAY @1131
IF ~~ EXIT
END
IF ~~ sf2.5.2
SAY @1132 = @1133
IF ~~ EXIT
END
IF ~~ sf2.5.3
SAY @1134
IF ~~ EXIT
END
IF ~~ sf2.5.4
SAY @1135
IF ~~ EXIT
END

IF ~~ sf2.6.1                   // arms
SAY @1136
IF ~~ EXIT
END
IF ~~ sf2.6.2
SAY @1137
IF ~~ EXIT
END
IF ~~ sf2.6.3
SAY @1138
IF ~~ EXIT
END
IF ~~ sf2.6.4
SAY @1139
IF ~~ EXIT
END

IF ~~ sf2.7.1                   // want
SAY @1140
IF ~~ EXIT
END
IF ~~ sf2.7.2
SAY @1141
IF ~~ EXIT
END
IF ~~ sf2.7.3
SAY @1142
IF ~~ EXIT
END
IF ~~ sf2.7.4
SAY @1143
IF ~~ EXIT
END

IF ~~ sf2.8.1                   // beautiful
SAY @1146
++ @1147 EXIT
END
IF ~~ sf2.8.2
SAY @1148
IF ~~ EXIT
END
IF ~~ sf2.8.3
SAY @1149
++ @1150 EXIT
END
IF ~~ sf2.8.4
SAY @1151
IF ~~ EXIT
END

IF ~~ sf2.9.1                   // hug
SAY @1152
IF ~~ EXIT
END
IF ~~ sf2.9.2
SAY @1153 = @1154
++ @1155 EXIT
END
IF ~~ sf2.9.3
SAY @1156
IF ~~ EXIT
END
IF ~~ sf2.9.4
SAY @1157 = @1158
IF ~~ EXIT
END

IF ~~ sf2.10.1                  // smile
SAY @1159
IF ~~ EXIT
END
IF ~~ sf2.10.2
SAY @1160
IF ~~ EXIT
END
IF ~~ sf2.10.3
SAY @1161
IF ~~ EXIT
END
IF ~~ sf2.10.4
SAY @1162
IF ~~ EXIT
END

IF ~~ sf2.11.1                  // love
SAY @1163
IF ~~ EXIT
END
IF ~~ sf2.11.2
SAY @1164
IF ~~ EXIT
END
IF ~~ sf2.11.3
SAY @1165
IF ~~ EXIT
END
IF ~~ sf2.11.4
SAY @1166
++ @1167 EXIT
END

IF ~~ sf2.12.1                  // caress
SAY @1168
IF ~~ EXIT
END
IF ~~ sf2.12.2
SAY @1169 = @1170 = @1171
IF ~~ EXIT
END
IF ~~ sf2.12.3
SAY @1172 = @1173
IF ~~ EXIT
END

IF ~~ sf2.13.1                  // ogle
SAY @1174
IF ~~ EXIT
END
IF ~~ sf2.13.2
SAY @1175
IF ~~ EXIT
END
IF ~~ sf2.13.3
SAY @1176
IF ~~ EXIT
END

IF ~~ sf2.14.1                  // innbath
SAY @1180 = @1181 = @1182 = @1183 = @1184 = @1185 = @1186
IF ~~ EXIT
END
IF ~~ sf2.14.2
SAY @1190 = @1191 = @1192 = @1193 = @1194 = @1195
IF ~~ EXIT
END
IF ~~ sf2.14.3
SAY @1200 = @1201 = @1202 = @1203 = @1204 = @1205 = @1206 = @1207
IF ~~ EXIT
END

IF ~~ sf2.15.1                  // streambath 1
SAY @1210 = @1211 = @1212
++ @1213 + sf2.15.1.1
END
IF ~~ sf2.15.1.1
SAY @1214 = @1215 = @1216 = @1217 = @1218 = @1219 = @1220 = @1221 = @1222
IF ~~ EXIT
END

IF ~~ sf2.15.2                  // streambath 2
SAY @1230 = @1231
++ @1232 + sf2.15.2.1
END
IF ~~ sf2.15.2.1
SAY @1233 = @1234 = @1235 = @1236 = @1237
IF ~~ EXIT
END


IF ~~ sf2.16                    // holdbath
SAY @1240 = @1241 = @1242 = @1243
++ @1244 EXIT
END

END

APPEND RJAN25J

// FLIRTS (TOB) - Must be at the bottom of the file

// Annah-initiated flirts

IF ~G("RJAnnahFlirt",1)~ ANFli3
SAY @1070
IF ~RandomNum(10,1)~ + anfli3.1
IF ~RandomNum(10,2)~ + anfli3.2
IF ~RandomNum(10,3)~ + anfli3.3
IF ~RandomNum(10,4)~ + anfli3.4
IF ~RandomNum(10,5)~ + anfli3.5
IF ~RandomNum(10,6)~ + anfli3.6
IF ~RandomNum(10,7)~ + anfli3.7
IF ~RandomNum(10,8)~ + anfli3.8
IF ~RandomNum(10,9)~ + anfli3.9
IF ~RandomNum(10,10)~ + anfli3.10
END

IF ~~ anfli3.1
SAY @1071
IF ~~ EXIT
END

IF ~~ anfli3.2
SAY @1072
IF ~~ EXIT
END

IF ~~ anfli3.3
SAY @1073
IF ~~ THEN REPLY @1081 EXIT
END

IF ~~ anfli3.4
SAY @1074
IF ~~ EXIT
END

IF ~~ anfli3.5
SAY @1075
IF ~~ EXIT
END

IF ~~ anfli3.6
SAY @1076
IF ~~ THEN REPLY @1081 EXIT
END

IF ~~ anfli3.7
SAY @1077
IF ~~ EXIT
END

IF ~~ anfli3.8
SAY @1078
IF ~~ THEN REPLY @1082 EXIT
END

IF ~~ anfli3.9
SAY @1079
IF ~~ THEN REPLY @1083 EXIT
END

IF ~~ anfli3.10
SAY @1080
IF ~~ EXIT
END

// Player-initiated dialogue (last thing in file)

IF ~IsGabber(Player1)~ ANPit
SAY @1000

++ @1001 EXIT
+ ~G("RJAnnahRomanceActive",2)~ + @1005 + ANFlt3
END

// Flirts

IF ~~ ANFlt3
SAY @1008

++ @1001 EXIT

+ ~RandomNum(2,1)~ + @1093 + tf2.1.1                // flower
+ ~RandomNum(2,2)~ + @1093 + tf2.1.2

+ ~RandomNum(2,1)~ + @1094 + tf2.2.1                // cheek
+ ~RandomNum(2,2)~ + @1094 + tf2.2.2

+ ~RandomNum(4,1)~ + @1095 + tf2.3.1                // kiss
+ ~RandomNum(4,2)~ + @1095 + tf2.3.2
+ ~RandomNum(4,3)~ + @1095 + tf2.3.3
+ ~RandomNum(4,4)~ + @1095 + tf2.3.4

+ ~RandomNum(4,1)~ + @1096 + tf2.4.1                // grab
+ ~RandomNum(4,2)~ + @1096 + tf2.4.2
+ ~RandomNum(4,3)~ + @1096 + tf2.4.3
+ ~RandomNum(4,4)~ + @1096 + tf2.4.4

+ ~RandomNum(2,1)~ + @1097 + tf2.5.1                // hands
+ ~RandomNum(2,2)~ + @1097 + tf2.5.2

+ ~RandomNum(2,1)~ + @1098 + tf2.6.1                // arms
+ ~RandomNum(2,2)~ + @1098 + tf2.6.2

+ ~RandomNum(4,1)~ + @1099 + tf2.7.1                // want
+ ~RandomNum(4,2)~ + @1099 + tf2.7.2
+ ~RandomNum(4,3)~ + @1099 + tf2.7.3
+ ~RandomNum(4,4)~ + @1099 + tf2.7.4

+ ~RandomNum(2,1)~ + @1100 + tf2.8.1                // beautiful
+ ~RandomNum(2,2)~ + @1100 + tf2.8.2

+ ~RandomNum(4,1)~ + @1101 + tf2.9.1                // hug
+ ~RandomNum(4,2)~ + @1101 + tf2.9.2
+ ~RandomNum(4,3)~ + @1101 + tf2.9.3
+ ~RandomNum(4,4)~ + @1101 + tf2.9.4

+ ~RandomNum(2,1)~ + @1102 + tf2.10.1               // smile
+ ~RandomNum(2,2)~ + @1102 + tf2.10.2

+ ~RandomNum(4,1)~ + @1103 + tf2.11.1               // love
+ ~RandomNum(4,2)~ + @1103 + tf2.11.2
+ ~RandomNum(4,3)~ + @1103 + tf2.11.3
+ ~RandomNum(4,4)~ + @1103 + tf2.11.4

+ ~RandomNum(3,1)~ + @1104 + tf2.12.1               // caress
+ ~RandomNum(3,2)~ + @1104 + tf2.12.2
+ ~RandomNum(3,3)~ + @1104 + tf2.12.3

+ ~RandomNum(3,1)~ + @1105 + tf2.13.1               // ogle
+ ~RandomNum(3,2)~ + @1105 + tf2.13.2
+ ~RandomNum(3,3)~ + @1105 + tf2.13.3

+ ~RandomNum(2,1)                                  // innbath
OR(2)
AreaCheck("AR5003")
AreaCheck("AR5501")~ + @1106 + tf2.14.1
+ ~RandomNum(2,2)
OR(2)
AreaCheck("AR5003")
AreaCheck("AR5501")~ + @1106 + tf2.14.2

+ ~AreaCheck("AR6400")~ + @1106 + tf2.15           // streambath

END

// flirts

IF ~~ tf2.1.1                   // flower
SAY @1270
IF ~~ EXIT
END
IF ~~ tf2.1.2
SAY @1271
IF ~~ EXIT
END

IF ~~ tf2.2.1                   // cheek
SAY @1272
IF ~~ EXIT
END
IF ~~ tf2.2.2
SAY @1273
IF ~~ EXIT
END

IF ~~ tf2.3.1                   // kiss
SAY @1274
IF ~~ EXIT
END
IF ~~ tf2.3.2
SAY @1275
IF ~~ EXIT
END
IF ~~ tf2.3.3
SAY @1276 = @1277
IF ~~ EXIT
END
IF ~~ tf2.3.4
SAY @1278
IF ~~ EXIT
END

IF ~~ tf2.4.1                   // grab
SAY @1279
IF ~~ EXIT
END
IF ~~ tf2.4.2
SAY @1280 = @1281
IF ~~ EXIT
END
IF ~~ tf2.4.3
SAY @1282
IF ~~ EXIT
END
IF ~~ tf2.4.4
SAY @1283 = @1284
++ @1285 EXIT
END

IF ~~ tf2.5.1                   // hands
SAY @1286
IF ~~ EXIT
END
IF ~~ tf2.5.2
SAY @1287
IF ~~ EXIT
END

IF ~~ tf2.6.1                   // arms
SAY @1288
IF ~~ EXIT
END
IF ~~ tf2.6.2
SAY @1289
IF ~~ EXIT
END

IF ~~ tf2.7.1                   // want
SAY @1290
IF ~~ EXIT
END
IF ~~ tf2.7.2
SAY @1291
IF ~~ EXIT
END
IF ~~ tf2.7.3
SAY @1292
IF ~~ EXIT
END
IF ~~ tf2.7.4
SAY @1293
IF ~~ EXIT
END

IF ~~ tf2.8.1                   // beautiful
SAY @1294
IF ~~ EXIT
END
IF ~~ tf2.8.2
SAY @1295
IF ~~ EXIT
END

IF ~~ tf2.9.1                   // hug
SAY @1296
IF ~~ EXIT
END
IF ~~ tf2.9.2
SAY @1297
IF ~~ EXIT
END
IF ~~ tf2.9.3
SAY @1298
IF ~~ EXIT
END
IF ~~ tf2.9.4
SAY @1299
IF ~~ EXIT
END

IF ~~ tf2.10.1                  // smile
SAY @1300
IF ~~ EXIT
END
IF ~~ tf2.10.2
SAY @1301
IF ~~ EXIT
END

IF ~~ tf2.11.1                  // love
SAY @1302
IF ~~ EXIT
END
IF ~~ tf2.11.2
SAY @1303
IF ~~ EXIT
END
IF ~~ tf2.11.3
SAY @1304
IF ~~ EXIT
END
IF ~~ tf2.11.4
SAY @1305
++ @1306 EXIT
END

IF ~~ tf2.12.1                  // caress
SAY @1307
IF ~~ EXIT
END
IF ~~ tf2.12.2
SAY @1308 = @1309 = @1310 = @1311 = @1312
IF ~~ EXIT
END
IF ~~ tf2.12.3
SAY @1313
IF ~~ EXIT
END

IF ~~ tf2.13.1                  // ogle
SAY @1314
IF ~~ EXIT
END
IF ~~ tf2.13.2
SAY @1315
IF ~~ EXIT
END
IF ~~ tf2.13.3
SAY @1316 = @1317
IF ~~ EXIT
END

IF ~~ tf2.14.1                  // innbath
SAY @1180 = @1181 = @1182 = @1183 = @1184 = @1185 = @1186
IF ~~ EXIT
END
IF ~~ tf2.14.2
SAY @1190 = @1191 = @1192 = @1193 = @1194 = @1195
IF ~~ EXIT
END

IF ~~ tf2.15                    // streambath
SAY @1320 = @1321 = @1322
++ @1323 + tf2.15.1
END
IF ~~ tf2.15.1
SAY @1324 = @1325 = @1326
IF ~~ EXIT
END

END
