
APPEND RJKESAIJ

// FLIRTS (SOA) - Must be at the bottom of the file

// Kesai-initiated flirts

IF ~G("RJKesaiFlirt",1)~ kefli2
SAY @4050
IF ~RandomNum(10,1)~ + kefli2.1
IF ~RandomNum(10,2)~ + kefli2.2
IF ~RandomNum(10,3)~ + kefli2.3
IF ~RandomNum(10,4)~ + kefli2.4
IF ~RandomNum(10,5)~ + kefli2.5
IF ~RandomNum(10,6)~ + kefli2.6
IF ~RandomNum(10,7)~ + kefli2.7
IF ~RandomNum(10,8)~ + kefli2.8
IF ~RandomNum(10,9)~ + kefli2.9
IF ~RandomNum(10,10)~ + kefli2.10
END

IF ~~ kefli2.1
SAY @4051
IF ~~ THEN REPLY @4052 EXIT
END

IF ~~ kefli2.2
SAY @4053
IF ~~ EXIT
END

IF ~~ kefli2.3
SAY @4054
IF ~~ EXIT
END

IF ~~ kefli2.4
SAY @4055
IF ~~ THEN REPLY @4056 EXIT
END

IF ~~ kefli2.5
SAY @4057
IF ~~ EXIT
END

IF ~~ kefli2.6
SAY @4058
IF ~~ THEN REPLY @4059 EXIT
END

IF ~~ kefli2.7
SAY @4060
IF ~~ EXIT
END

IF ~~ kefli2.8
SAY @4061
IF ~~ EXIT
END

IF ~~ kefli2.9
SAY @4062
IF ~~ EXIT
END

IF ~~ kefli2.10
SAY @4063
IF ~~ EXIT
END

// Player-initiated dialogue (last thing in file)

IF ~IsGabber(Player1)
    InParty(Myself)~ KEPid
SAY @4000
++ @4001 EXIT
++ @4002 EXIT
+ ~G("RJPRTKS",0)~ + @4003 DO ~ReallyForceSpellRES("RJPLYKS",Myself)
                               SetGlobal("RJPRTKS","GLOBAL",1)~ + KEPid1
+ ~G("RJPRTKS",1)~ + @4004 DO ~ReallyForceSpellRES("RJPLYKE",Myself)
                               SetGlobal("RJPRTKS","GLOBAL",0)~ + KEPid1
+ ~!G("RJKesaiRomanceActive",2)~ + @4005 + KEFlt2
+ ~G("RJKesaiRomanceActive",2)~ + @4005 + KEFlt3
END

IF ~~ KEPid1
SAY @4010
++ @4011 EXIT
END

// Flirts RJKesaiRomanceActive = 1

IF ~~ KEFlt2
SAY @4008

++ @4001 EXIT

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
+ ~RandomNum(4,3)~ + @1095 + sf2.3.3
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

+ ~RandomNum(2,1)                                  // streambath
OR(3)
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ + @1106 + sf2.15.1

+ ~RandomNum(2,2)
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
SAY @4110
IF ~~ EXIT
END
IF ~~ sf2.1.2
SAY @4111
IF ~~ EXIT
END
IF ~~ sf2.1.3
SAY @4112
IF ~~ EXIT
END
IF ~~ sf2.1.4
SAY @4113
IF ~~ EXIT
END

IF ~~ sf2.2.1                   // cheek
SAY @4114
IF ~~ EXIT
END
IF ~~ sf2.2.2
SAY @4115
IF ~~ EXIT
END
IF ~~ sf2.2.3
SAY @4116
IF ~~ EXIT
END
IF ~~ sf2.2.4
SAY @4117
IF ~~ EXIT
END

IF ~~ sf2.3.1                   // kiss
SAY @4118
IF ~~ EXIT
END
IF ~~ sf2.3.2
SAY @4119
IF ~~ EXIT
END
IF ~~ sf2.3.3
SAY @4120 = @4121
IF ~~ EXIT
END
IF ~~ sf2.3.4
SAY @4122
IF ~~ EXIT
END

IF ~~ sf2.4.1                   // grab
SAY @4123
IF ~~ EXIT
END
IF ~~ sf2.4.2
SAY @4124 = @4125
IF ~~ EXIT
END
IF ~~ sf2.4.3
SAY @4126 = @4127
IF ~~ EXIT
END
IF ~~ sf2.4.4
SAY @4128 = @4129
++ @4130 EXIT
END

IF ~~ sf2.5.1                   // hands
SAY @4131
IF ~~ EXIT
END
IF ~~ sf2.5.2
SAY @4132 = @4133
IF ~~ EXIT
END
IF ~~ sf2.5.3
SAY @4134
IF ~~ EXIT
END
IF ~~ sf2.5.4
SAY @4135
IF ~~ EXIT
END

IF ~~ sf2.6.1                   // arms
SAY @4136
IF ~~ EXIT
END
IF ~~ sf2.6.2
SAY @4137
IF ~~ EXIT
END
IF ~~ sf2.6.3
SAY @4138
IF ~~ EXIT
END
IF ~~ sf2.6.4
SAY @4139
IF ~~ EXIT
END

IF ~~ sf2.7.1                   // want
SAY @4140
IF ~~ EXIT
END
IF ~~ sf2.7.2
SAY @4141
IF ~~ EXIT
END
IF ~~ sf2.7.3
SAY @4142
IF ~~ EXIT
END
IF ~~ sf2.7.4
SAY @4143
IF ~~ EXIT
END

IF ~~ sf2.8.1                   // beautiful
SAY @4146
++ @4147 EXIT
END
IF ~~ sf2.8.2
SAY @4148
++ @4149 EXIT
END
IF ~~ sf2.8.3
SAY @4150
IF ~~ EXIT
END
IF ~~ sf2.8.4
SAY @4151
IF ~~ EXIT
END

IF ~~ sf2.9.1                   // hug
SAY @4152
IF ~~ EXIT
END
IF ~~ sf2.9.2
SAY @4153 = @4154
++ @4155 EXIT
END
IF ~~ sf2.9.3
SAY @4156
IF ~~ EXIT
END
IF ~~ sf2.9.4
SAY @4157 = @4158
IF ~~ EXIT
END

IF ~~ sf2.10.1                  // smile
SAY @4159
IF ~~ EXIT
END
IF ~~ sf2.10.2
SAY @4160
IF ~~ EXIT
END
IF ~~ sf2.10.3
SAY @4161
IF ~~ EXIT
END
IF ~~ sf2.10.4
SAY @4162
IF ~~ EXIT
END

IF ~~ sf2.11.1                  // love
SAY @4163
IF ~~ EXIT
END
IF ~~ sf2.11.2
SAY @4164
IF ~~ EXIT
END
IF ~~ sf2.11.3
SAY @4165
IF ~~ EXIT
END
IF ~~ sf2.11.4
SAY @4166
++ @4167 EXIT
END

IF ~~ sf2.12.1                  // caress
SAY @4168
IF ~~ EXIT
END
IF ~~ sf2.12.2
SAY @4170 = @4171
IF ~~ EXIT
END
IF ~~ sf2.12.3
SAY @4172 = @4173
IF ~~ EXIT
END

IF ~~ sf2.13.1                  // ogle
SAY @4174
IF ~~ EXIT
END
IF ~~ sf2.13.2
SAY @4175
IF ~~ EXIT
END
IF ~~ sf2.13.3
SAY @4176
IF ~~ EXIT
END

IF ~~ sf2.14.1                  // innbath
SAY @4180 = @4181 = @4182 = @4183 = @4184 = @4185 = @4186 = @4187 = @4188
IF ~~ EXIT
END
IF ~~ sf2.14.2
SAY @4190 = @4191 = @4192 = @4193 = @4194 = @4195 = @4196 = @4188
IF ~~ EXIT
END
IF ~~ sf2.14.3
SAY @4200 = @4201 = @4202 = @4203 = @4204 = @4188
IF ~~ EXIT
END

IF ~~ sf2.15.1                  // streambath 1
SAY @4210 = @4211
++ @4212 + sf2.15.1.1
END
IF ~~ sf2.15.1.1
SAY @4213 = @4214 = @4215
IF ~~ THEN REPLY @4216 EXIT
END

IF ~~ sf2.15.2                  // streambath 2
SAY @4210 = @4230 = @4231 = @4232 = @4233 = @4234
IF ~~ REPLY @4235 EXIT
END


IF ~~ sf2.16                    // holdbath
SAY @4240 = @4241 = @4242
IF ~~ EXIT
END

// Flirts RJKesaiRomanceActive = 2

IF ~~ KEFlt3
SAY @4008

++ @4001 EXIT

+ ~RandomNum(2,1)~ + @1093 + rf2.1.1                // flower
+ ~RandomNum(2,2)~ + @1093 + rf2.1.2

+ ~RandomNum(2,1)~ + @1094 + rf2.2.1                // cheek
+ ~RandomNum(2,2)~ + @1094 + rf2.2.2

+ ~RandomNum(4,1)~ + @1095 + rf2.3.1                // kiss
+ ~RandomNum(4,2)~ + @1095 + rf2.3.2
+ ~RandomNum(4,3)~ + @1095 + rf2.3.3
+ ~RandomNum(4,4)~ + @1095 + rf2.3.4

+ ~RandomNum(4,1)~ + @1096 + rf2.4.1                // grab
+ ~RandomNum(4,2)~ + @1096 + rf2.4.2
+ ~RandomNum(4,3)~ + @1096 + rf2.4.3
+ ~RandomNum(4,4)~ + @1096 + rf2.4.4

+ ~RandomNum(2,1)~ + @1097 + rf2.5.1                // hands
+ ~RandomNum(2,2)~ + @1097 + rf2.5.2

+ ~RandomNum(2,1)~ + @1098 + rf2.6.1                // arms
+ ~RandomNum(2,2)~ + @1098 + rf2.6.2

+ ~RandomNum(4,1)~ + @1099 + rf2.7.1                // want
+ ~RandomNum(4,2)~ + @1099 + rf2.7.2
+ ~RandomNum(4,3)~ + @1099 + rf2.7.3
+ ~RandomNum(4,4)~ + @1099 + rf2.7.4

+ ~RandomNum(2,1)~ + @1100 + rf2.8.1                // beautiful
+ ~RandomNum(2,2)~ + @1100 + rf2.8.2

+ ~RandomNum(4,1)~ + @1101 + rf2.9.1                // hug
+ ~RandomNum(4,2)~ + @1101 + rf2.9.2
+ ~RandomNum(4,3)~ + @1101 + rf2.9.3
+ ~RandomNum(4,4)~ + @1101 + rf2.9.4

+ ~RandomNum(2,1)~ + @1102 + rf2.10.1               // smile
+ ~RandomNum(2,2)~ + @1102 + rf2.10.2

+ ~RandomNum(4,1)~ + @1103 + rf2.11.1               // love
+ ~RandomNum(4,2)~ + @1103 + rf2.11.2
+ ~RandomNum(4,3)~ + @1103 + rf2.11.3
+ ~RandomNum(4,4)~ + @1103 + rf2.11.4

+ ~RandomNum(3,1)~ + @1104 + rf2.12.1               // caress
+ ~RandomNum(3,2)~ + @1104 + rf2.12.2
+ ~RandomNum(3,3)~ + @1104 + rf2.12.3

+ ~RandomNum(3,1)~ + @1105 + rf2.13.1               // ogle
+ ~RandomNum(3,2)~ + @1105 + rf2.13.2
+ ~RandomNum(3,3)~ + @1105 + rf2.13.3

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

+ ~RandomNum(2,1)                                  // streambath
OR(3)
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ + @1106 + sf2.15.1

+ ~RandomNum(2,2)
OR(3)
AreaCheck("AR1100")
AreaCheck("AR1200")
AreaCheck("AR1700")~ + @1106 + sf2.15.2

+ ~ OR(2)                                          // holdbath
AreaCheck("AR1306")
AreaCheck("AR1307")~ + @1106 + sf2.16

END

// flirts

IF ~~ rf2.1.1                   // flower
SAY @4270
IF ~~ EXIT
END
IF ~~ rf2.1.2
SAY @4271
IF ~~ EXIT
END

IF ~~ rf2.2.1                   // cheek
SAY @4272
IF ~~ EXIT
END
IF ~~ rf2.2.2
SAY @4273
IF ~~ EXIT
END

IF ~~ rf2.3.1                   // kiss
SAY @4274
IF ~~ EXIT
END
IF ~~ rf2.3.2
SAY @4275
IF ~~ EXIT
END
IF ~~ rf2.3.3
SAY @4276 = @4277
IF ~~ EXIT
END
IF ~~ rf2.3.4
SAY @4278
IF ~~ EXIT
END

IF ~~ rf2.4.1                   // grab
SAY @4279
IF ~~ EXIT
END
IF ~~ rf2.4.2
SAY @4280 = @4281
IF ~~ EXIT
END
IF ~~ rf2.4.3
SAY @4282
IF ~~ EXIT
END
IF ~~ rf2.4.4
SAY @4283 = @4284
++ @4285 EXIT
END

IF ~~ rf2.5.1                   // hands
SAY @4286
IF ~~ EXIT
END
IF ~~ rf2.5.2
SAY @4287
IF ~~ EXIT
END

IF ~~ rf2.6.1                   // arms
SAY @4288
IF ~~ EXIT
END
IF ~~ rf2.6.2
SAY @4289
IF ~~ EXIT
END

IF ~~ rf2.7.1                   // want
SAY @4290
IF ~~ EXIT
END
IF ~~ rf2.7.2
SAY @4291
IF ~~ EXIT
END
IF ~~ rf2.7.3
SAY @4292
IF ~~ EXIT
END
IF ~~ rf2.7.4
SAY @4293
IF ~~ EXIT
END

IF ~~ rf2.8.1                   // beautiful
SAY @4294
IF ~~ EXIT
END
IF ~~ rf2.8.2
SAY @4295
IF ~~ EXIT
END

IF ~~ rf2.9.1                   // hug
SAY @4296
IF ~~ EXIT
END
IF ~~ rf2.9.2
SAY @4297
IF ~~ EXIT
END
IF ~~ rf2.9.3
SAY @4298
IF ~~ EXIT
END
IF ~~ rf2.9.4
SAY @4299
IF ~~ EXIT
END

IF ~~ rf2.10.1                  // smile
SAY @4300
IF ~~ EXIT
END
IF ~~ rf2.10.2
SAY @4301
IF ~~ EXIT
END

IF ~~ rf2.11.1                  // love
SAY @4302
IF ~~ EXIT
END
IF ~~ rf2.11.2
SAY @4303
IF ~~ EXIT
END
IF ~~ rf2.11.3
SAY @4304
IF ~~ EXIT
END
IF ~~ rf2.11.4
SAY @4305
++ @4306 EXIT
END

IF ~~ rf2.12.1                  // caress
SAY @4307
IF ~~ EXIT
END
IF ~~ rf2.12.2
SAY @4308 = @4309 = @4310 = @4311
IF ~~ EXIT
END
IF ~~ rf2.12.3
SAY @4312
IF ~~ EXIT
END

IF ~~ rf2.13.1                  // ogle
SAY @4314
IF ~~ EXIT
END
IF ~~ rf2.13.2
SAY @4315
IF ~~ EXIT
END
IF ~~ rf2.13.3
SAY @4316 = @4317
IF ~~ EXIT
END

END

APPEND RJKE25J

// FLIRTS (TOB) - Must be at the bottom of the file

// Kesai-initiated flirts

IF ~G("RJKesaiFlirt",1)~ kefli3
SAY @4250
IF ~RandomNum(10,1)~ + kefli3.1
IF ~RandomNum(10,2)~ + kefli3.2
IF ~RandomNum(10,3)~ + kefli3.3
IF ~RandomNum(10,4)~ + kefli3.4
IF ~RandomNum(10,5)~ + kefli3.5
IF ~RandomNum(10,6)~ + kefli3.6
IF ~RandomNum(10,7)~ + kefli3.7
IF ~RandomNum(10,8)~ + kefli3.8
IF ~RandomNum(10,9)~ + kefli3.9
IF ~RandomNum(10,10)~ + kefli3.10
END

IF ~~ kefli3.1
SAY @4251
IF ~~ EXIT
END

IF ~~ kefli3.2
SAY @4252
IF ~~ EXIT
END

IF ~~ kefli3.3
SAY @4253
IF ~~ THEN REPLY @4254 EXIT
END

IF ~~ kefli3.4
SAY @4255
IF ~~ EXIT
END

IF ~~ kefli3.5
SAY @4256
IF ~~ EXIT
END

IF ~~ kefli3.6
SAY @4257
IF ~~ EXIT
END

IF ~~ kefli3.7
SAY @4258
IF ~~ EXIT
END

IF ~~ kefli3.8
SAY @4259
IF ~~ THEN REPLY @4260 EXIT
END

IF ~~ kefli3.9
SAY @4261
IF ~~ THEN REPLY @4262 EXIT
END

IF ~~ kefli3.10
SAY @4263
IF ~~ EXIT
END

// Player-initiated dialogue (last thing in file)

IF ~IsGabber(Player1)
    InParty(Myself)~ KEPit
SAY @4000
++ @4001 EXIT
++ @4002 EXIT
+ ~G("RJPRTKS",0)~ + @4003 DO ~ReallyForceSpellRES("RJPLYKS",Myself)
                               SetGlobal("RJPRTKS","GLOBAL",1)~ + KEPit1
+ ~G("RJPRTKS",1)~ + @4004 DO ~ReallyForceSpellRES("RJPLYKE",Myself)
                               SetGlobal("RJPRTKS","GLOBAL",0)~ + KEPit1
++ @4005 + KEFlt4
END

IF ~~ KEPit1
SAY @4010
++ @4011 EXIT
END

// Flirts

IF ~~ KEFlt4
SAY @4008

++ @4001 EXIT

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
SAY @4270
IF ~~ EXIT
END
IF ~~ tf2.1.2
SAY @4271
IF ~~ EXIT
END

IF ~~ tf2.2.1                   // cheek
SAY @4272
IF ~~ EXIT
END
IF ~~ tf2.2.2
SAY @4273
IF ~~ EXIT
END

IF ~~ tf2.3.1                   // kiss
SAY @4274
IF ~~ EXIT
END
IF ~~ tf2.3.2
SAY @4275
IF ~~ EXIT
END
IF ~~ tf2.3.3
SAY @4276 = @4277
IF ~~ EXIT
END
IF ~~ tf2.3.4
SAY @4278
IF ~~ EXIT
END

IF ~~ tf2.4.1                   // grab
SAY @4279
IF ~~ EXIT
END
IF ~~ tf2.4.2
SAY @4280 = @4281
IF ~~ EXIT
END
IF ~~ tf2.4.3
SAY @4282
IF ~~ EXIT
END
IF ~~ tf2.4.4
SAY @4283 = @4284
++ @4285 EXIT
END

IF ~~ tf2.5.1                   // hands
SAY @4286
IF ~~ EXIT
END
IF ~~ tf2.5.2
SAY @4287
IF ~~ EXIT
END

IF ~~ tf2.6.1                   // arms
SAY @4288
IF ~~ EXIT
END
IF ~~ tf2.6.2
SAY @4289
IF ~~ EXIT
END

IF ~~ tf2.7.1                   // want
SAY @4290
IF ~~ EXIT
END
IF ~~ tf2.7.2
SAY @4291
IF ~~ EXIT
END
IF ~~ tf2.7.3
SAY @4292
IF ~~ EXIT
END
IF ~~ tf2.7.4
SAY @4293
IF ~~ EXIT
END

IF ~~ tf2.8.1                   // beautiful
SAY @4294
IF ~~ EXIT
END
IF ~~ tf2.8.2
SAY @4295
IF ~~ EXIT
END

IF ~~ tf2.9.1                   // hug
SAY @4296
IF ~~ EXIT
END
IF ~~ tf2.9.2
SAY @4297
IF ~~ EXIT
END
IF ~~ tf2.9.3
SAY @4298
IF ~~ EXIT
END
IF ~~ tf2.9.4
SAY @4299
IF ~~ EXIT
END

IF ~~ tf2.10.1                  // smile
SAY @4300
IF ~~ EXIT
END
IF ~~ tf2.10.2
SAY @4301
IF ~~ EXIT
END

IF ~~ tf2.11.1                  // love
SAY @4302
IF ~~ EXIT
END
IF ~~ tf2.11.2
SAY @4303
IF ~~ EXIT
END
IF ~~ tf2.11.3
SAY @4304
IF ~~ EXIT
END
IF ~~ tf2.11.4
SAY @4305
++ @4306 EXIT
END

IF ~~ tf2.12.1                  // caress
SAY @4307
IF ~~ EXIT
END
IF ~~ tf2.12.2
SAY @4308 = @4309 = @4310 = @4311
IF ~~ EXIT
END
IF ~~ tf2.12.3
SAY @4312
IF ~~ EXIT
END

IF ~~ tf2.13.1                  // ogle
SAY @4314
IF ~~ EXIT
END
IF ~~ tf2.13.2
SAY @4315
IF ~~ EXIT
END
IF ~~ tf2.13.3
SAY @4316 = @4317
IF ~~ EXIT
END

IF ~~ tf2.14.1                  // innbath
SAY @4180 = @4181 = @4182 = @4183 = @4184 = @4185 = @4186 = @4187 = @4188
IF ~~ EXIT
END
IF ~~ tf2.14.2
SAY @4190 = @4191 = @4192 = @4193 = @4194 = @4195 = @4196 = @4188
IF ~~ EXIT
END

IF ~~ tf2.15                    // streambath
SAY @4320 = @4321
++ @4322 + tf2.15.1
END
IF ~~ tf2.15.1
SAY @4323 = @4324 = @4325
IF ~~ THEN REPLY @4326 EXIT
END

END
