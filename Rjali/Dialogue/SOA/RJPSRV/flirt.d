
APPEND RJRAVELJ

// FLIRTS (SOA) - Must be at the bottom of the file

// Ravel-initiated flirts - RomanceActive = 1

IF ~G("RJRavelFlirt",1) G("RJRavelRomanceActive",1)~ RVFli1
SAY @3030
IF ~RandomNum(10,1)~ + rvfli1.1
IF ~RandomNum(10,2)~ + rvfli1.2
IF ~RandomNum(10,3)~ + rvfli1.3
IF ~RandomNum(10,4)~ + rvfli1.4
IF ~RandomNum(10,5)~ + rvfli1.5
IF ~RandomNum(10,6)~ + rvfli1.6
IF ~RandomNum(10,7)~ + rvfli1.7
IF ~RandomNum(10,8)~ + rvfli1.8
IF ~RandomNum(10,9)~ + rvfli1.9
IF ~RandomNum(10,10)~ + rvfli1.10
END

IF ~~ rvfli1.1
SAY @3031
IF ~~ EXIT
END

IF ~~ rvfli1.2
SAY @3032
IF ~~ EXIT
END

IF ~~ rvfli1.3
SAY @3033
IF ~~ EXIT
END

IF ~~ rvfli1.4
SAY @3034
IF ~~ EXIT
END

IF ~~ rvfli1.5
SAY @3035
IF ~~ EXIT
END

IF ~~ rvfli1.6
SAY @3036
IF ~~ THEN REPLY @3041 EXIT
END

IF ~~ rvfli1.7
SAY @3037
IF ~~ EXIT
END

IF ~~ rvfli1.8
SAY @3038
IF ~~ EXIT
END

IF ~~ rvfli1.9
SAY @3039
IF ~~ EXIT
END

IF ~~ rvfli1.10
SAY @3040
IF ~~ EXIT
END

// Ravel-initiated flirts - RomanceActive = 2

IF ~G("RJRavelFlirt",1) G("RJRavelRomanceActive",2)~ RVFli2
SAY @3050
IF ~RandomNum(10,1)~ + rvfli2.1
IF ~RandomNum(10,2)~ + rvfli2.2
IF ~RandomNum(10,3)~ + rvfli2.3
IF ~RandomNum(10,4)~ + rvfli2.4
IF ~RandomNum(10,5)~ + rvfli2.5
IF ~RandomNum(10,6)~ + rvfli2.6
IF ~RandomNum(10,7)~ + rvfli2.7
IF ~RandomNum(10,8)~ + rvfli2.8
IF ~RandomNum(10,9)~ + rvfli2.9
IF ~RandomNum(10,10)~ + rvfli2.10
END

IF ~~ rvfli2.1
SAY @3051
IF ~~ THEN REPLY @3061 EXIT
END

IF ~~ rvfli2.2
SAY @3052
IF ~~ EXIT
END

IF ~~ rvfli2.3
SAY @3053
IF ~~ EXIT
END

IF ~~ rvfli2.4
SAY @3054
IF ~~ THEN REPLY @3062 EXIT
END

IF ~~ rvfli2.5
SAY @3055
IF ~~ EXIT
END

IF ~~ rvfli2.6
SAY @3056
IF ~~ THEN REPLY @3063 EXIT
END

IF ~~ rvfli2.7
SAY @3057
IF ~~ EXIT
END

IF ~~ rvfli2.8
SAY @3058
IF ~~ EXIT
END

IF ~~ rvfli2.9
SAY @3059
IF ~~ EXIT
END

IF ~~ rvfli2.10
SAY @3060
IF ~~ EXIT
END

// Player-initiated dialogue (last thing in file)

IF ~IsGabber(Player1)
    InParty(Myself)~ RVPid
SAY @3000
+ ~!G("RJRavelRomanceActive",2)~ + @3001 EXIT
+ ~G("RJRavelRomanceActive",2)~ + @3002 EXIT
+ ~!G("RJRavelRomanceActive",2)~ + @3043 DO ~LeaveParty()~ EXIT
+ ~G("RJRavelRomanceActive",1)~ + @3005 + RVFlt1
+ ~G("RJRavelRomanceActive",2)~ + @3005 + RVFlt2
END

// Flirts - RomanceActive=1

IF ~~ RVFlt1
SAY @3007

++ @3001 EXIT

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
SAY @3250
IF ~~ EXIT
END
IF ~~ sf1.1.2
SAY @3251
IF ~~ EXIT
END

IF ~~ sf1.2.1                   // cheek
SAY @3252
IF ~~ EXIT
END
IF ~~ sf1.2.2
SAY @3253
IF ~~ EXIT
END

IF ~~ sf1.3.1                   // kiss
SAY @3254
IF ~~ EXIT
END
IF ~~ sf1.3.2
SAY @3255
IF ~~ EXIT
END

IF ~~ sf1.5.1                   // hands
SAY @3256
IF ~~ EXIT
END
IF ~~ sf1.5.2
SAY @3257
IF ~~ EXIT
END

IF ~~ sf1.8.1                   // beautiful
SAY @3258
++ @3259 EXIT
END
IF ~~ sf1.8.2
SAY @3260
IF ~~ EXIT
END

IF ~~ sf1.9.1                   // hug
SAY @3261
IF ~~ EXIT
END
IF ~~ sf1.9.2
SAY @3262 = @3263
++ @3264 EXIT
END

IF ~~ sf1.10.1                  // smile
SAY @3265
IF ~~ EXIT
END
IF ~~ sf1.10.2
SAY @3266
IF ~~ EXIT
END

IF ~~ sf1.13.1                  // ogle
SAY @3267
IF ~~ EXIT
END
IF ~~ sf1.13.2
SAY @3268
IF ~~ EXIT
END

// Flirts - RomanceActive=2

IF ~~ RVFlt2
SAY @3008

++ @3001 EXIT

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
SAY @3110
IF ~~ EXIT
END
IF ~~ sf2.1.2
SAY @3111
IF ~~ EXIT
END
IF ~~ sf2.1.3
SAY @3112
IF ~~ EXIT
END
IF ~~ sf2.1.4
SAY @3113
IF ~~ EXIT
END

IF ~~ sf2.2.1                   // cheek
SAY @3114
IF ~~ EXIT
END
IF ~~ sf2.2.2
SAY @3115
IF ~~ EXIT
END
IF ~~ sf2.2.3
SAY @3116
IF ~~ EXIT
END
IF ~~ sf2.2.4
SAY @3117
IF ~~ EXIT
END

IF ~~ sf2.3.1                   // kiss
SAY @3118
IF ~~ EXIT
END
IF ~~ sf2.3.2
SAY @3119
IF ~~ EXIT
END
IF ~~ sf2.3.3
SAY @3120 = @3121
IF ~~ EXIT
END
IF ~~ sf2.3.4
SAY @3122
IF ~~ EXIT
END

IF ~~ sf2.4.1                   // grab
SAY @3123
IF ~~ EXIT
END
IF ~~ sf2.4.2
SAY @3124 = @3125
IF ~~ EXIT
END
IF ~~ sf2.4.3
SAY @3126 = @3127
IF ~~ EXIT
END
IF ~~ sf2.4.4
SAY @3128 = @3129
++ @3130 EXIT
END

IF ~~ sf2.5.1                   // hands
SAY @3131
IF ~~ EXIT
END
IF ~~ sf2.5.2
SAY @3132 = @3133
IF ~~ EXIT
END
IF ~~ sf2.5.3
SAY @3134
IF ~~ EXIT
END
IF ~~ sf2.5.4
SAY @3135
IF ~~ EXIT
END

IF ~~ sf2.6.1                   // arms
SAY @3136
IF ~~ EXIT
END
IF ~~ sf2.6.2
SAY @3137
IF ~~ EXIT
END
IF ~~ sf2.6.3
SAY @3138
IF ~~ EXIT
END
IF ~~ sf2.6.4
SAY @3139
IF ~~ EXIT
END

IF ~~ sf2.7.1                   // want
SAY @3140
IF ~~ EXIT
END
IF ~~ sf2.7.2
SAY @3141
IF ~~ EXIT
END
IF ~~ sf2.7.3
SAY @3142
IF ~~ EXIT
END
IF ~~ sf2.7.4
SAY @3143
IF ~~ EXIT
END

IF ~~ sf2.8.1                   // beautiful
SAY @3146
++ @3147 EXIT
END
IF ~~ sf2.8.2
SAY @3148
IF ~~ EXIT
END
IF ~~ sf2.8.3
SAY @3149
++ @3150 EXIT
END
IF ~~ sf2.8.4
SAY @3151
IF ~~ EXIT
END

IF ~~ sf2.9.1                   // hug
SAY @3152
IF ~~ EXIT
END
IF ~~ sf2.9.2
SAY @3153 = @3154
++ @3155 EXIT
END
IF ~~ sf2.9.3
SAY @3156
IF ~~ EXIT
END
IF ~~ sf2.9.4
SAY @3157 = @3158
IF ~~ EXIT
END

IF ~~ sf2.10.1                  // smile
SAY @3159
IF ~~ EXIT
END
IF ~~ sf2.10.2
SAY @3160
IF ~~ EXIT
END
IF ~~ sf2.10.3
SAY @3161
IF ~~ EXIT
END
IF ~~ sf2.10.4
SAY @3162
IF ~~ EXIT
END

IF ~~ sf2.11.1                  // love
SAY @3163
IF ~~ EXIT
END
IF ~~ sf2.11.2
SAY @3164
IF ~~ EXIT
END
IF ~~ sf2.11.3
SAY @3165
IF ~~ EXIT
END
IF ~~ sf2.11.4
SAY @3166
++ @3167 EXIT
END

IF ~~ sf2.12.1                  // caress
SAY @3168
IF ~~ EXIT
END
IF ~~ sf2.12.2
SAY @3170 = @3171
IF ~~ EXIT
END
IF ~~ sf2.12.3
SAY @3172 = @3173
IF ~~ EXIT
END

IF ~~ sf2.13.1                  // ogle
SAY @3174
IF ~~ EXIT
END
IF ~~ sf2.13.2
SAY @3175
IF ~~ EXIT
END
IF ~~ sf2.13.3
SAY @3176
IF ~~ EXIT
END

IF ~~ sf2.14.1                  // innbath
SAY @3180 = @3181 = @3182 = @3183 = @3184 = @3185 = @3186
IF ~~ EXIT
END
IF ~~ sf2.14.2
SAY @3190 = @3191 = @3192 = @3193 = @3194 = @3195
IF ~~ EXIT
END
IF ~~ sf2.14.3
SAY @3200 = @3201 = @3202 = @3203 = @3204 = @3205
IF ~~ EXIT
END

IF ~~ sf2.15.1                  // streambath 1
SAY @3210 = @3211 = @3212
++ @3213 + sf2.15.1.1
END
IF ~~ sf2.15.1.1
SAY @3214 = @3215 = @3216 = @3217
IF ~~ THEN REPLY @3218 EXIT
END

IF ~~ sf2.15.2                  // streambath 2
SAY @3230 = @3231 = @3232 = @3233 = @3234 = @3235 = @3236 = @3237
IF ~~ EXIT
END


IF ~~ sf2.16                    // holdbath
SAY @3240 = @3241 = @3242 = @3243 = @3244
IF ~~ EXIT
END

END

APPEND RJRV25J

// FLIRTS (TOB) - Must be at the bottom of the file

// Ravel-initiated flirts

IF ~G("RJRavelFlirt",1)~ RVFli3
SAY @3070
IF ~RandomNum(10,1)~ + rvfli3.1
IF ~RandomNum(10,2)~ + rvfli3.2
IF ~RandomNum(10,3)~ + rvfli3.3
IF ~RandomNum(10,4)~ + rvfli3.4
IF ~RandomNum(10,5)~ + rvfli3.5
IF ~RandomNum(10,6)~ + rvfli3.6
IF ~RandomNum(10,7)~ + rvfli3.7
IF ~RandomNum(10,8)~ + rvfli3.8
IF ~RandomNum(10,9)~ + rvfli3.9
IF ~RandomNum(10,10)~ + rvfli3.10
END

IF ~~ rvfli3.1
SAY @3071
IF ~~ EXIT
END

IF ~~ rvfli3.2
SAY @3072
IF ~~ EXIT
END

IF ~~ rvfli3.3
SAY @3073
IF ~~ THEN REPLY @3081 EXIT
END

IF ~~ rvfli3.4
SAY @3074
IF ~~ EXIT
END

IF ~~ rvfli3.5
SAY @3075
IF ~~ EXIT
END

IF ~~ rvfli3.6
SAY @3076
IF ~~ EXIT
END

IF ~~ rvfli3.7
SAY @3077
IF ~~ EXIT
END

IF ~~ rvfli3.8
SAY @3078
IF ~~ THEN REPLY @3082 EXIT
END

IF ~~ rvfli3.9
SAY @3079
IF ~~ THEN REPLY @3083 EXIT
END

IF ~~ rvfli3.10
SAY @3080
IF ~~ EXIT
END

// Player-initiated dialogue (last thing in file)

IF ~IsGabber(Player1)~ RVPit
SAY @3000

++ @3001 EXIT
++ @3005 + RVFlt3
END

// Flirts

IF ~~ RVFlt3
SAY @3008

++ @3001 EXIT

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
SAY @3270
IF ~~ EXIT
END
IF ~~ tf2.1.2
SAY @3271
IF ~~ EXIT
END

IF ~~ tf2.2.1                   // cheek
SAY @3272
IF ~~ EXIT
END
IF ~~ tf2.2.2
SAY @3273
IF ~~ EXIT
END

IF ~~ tf2.3.1                   // kiss
SAY @3274
IF ~~ EXIT
END
IF ~~ tf2.3.2
SAY @3275
IF ~~ EXIT
END
IF ~~ tf2.3.3
SAY @3276 = @3277
IF ~~ EXIT
END
IF ~~ tf2.3.4
SAY @3278
IF ~~ EXIT
END

IF ~~ tf2.4.1                   // grab
SAY @3279
IF ~~ EXIT
END
IF ~~ tf2.4.2
SAY @3280 = @3281
IF ~~ EXIT
END
IF ~~ tf2.4.3
SAY @3282
IF ~~ EXIT
END
IF ~~ tf2.4.4
SAY @3283 = @3284
++ @3285 EXIT
END

IF ~~ tf2.5.1                   // hands
SAY @3286
IF ~~ EXIT
END
IF ~~ tf2.5.2
SAY @3287
IF ~~ EXIT
END

IF ~~ tf2.6.1                   // arms
SAY @3288
IF ~~ EXIT
END
IF ~~ tf2.6.2
SAY @3289
IF ~~ EXIT
END

IF ~~ tf2.7.1                   // want
SAY @3290
IF ~~ EXIT
END
IF ~~ tf2.7.2
SAY @3291
IF ~~ EXIT
END
IF ~~ tf2.7.3
SAY @3292
IF ~~ EXIT
END
IF ~~ tf2.7.4
SAY @3293
IF ~~ EXIT
END

IF ~~ tf2.8.1                   // beautiful
SAY @3294
IF ~~ EXIT
END
IF ~~ tf2.8.2
SAY @3295
IF ~~ EXIT
END

IF ~~ tf2.9.1                   // hug
SAY @3296
IF ~~ EXIT
END
IF ~~ tf2.9.2
SAY @3297
IF ~~ EXIT
END
IF ~~ tf2.9.3
SAY @3298
IF ~~ EXIT
END
IF ~~ tf2.9.4
SAY @3299
IF ~~ EXIT
END

IF ~~ tf2.10.1                  // smile
SAY @3300
IF ~~ EXIT
END
IF ~~ tf2.10.2
SAY @3301
IF ~~ EXIT
END

IF ~~ tf2.11.1                  // love
SAY @3302
IF ~~ EXIT
END
IF ~~ tf2.11.2
SAY @3303
IF ~~ EXIT
END
IF ~~ tf2.11.3
SAY @3304
IF ~~ EXIT
END
IF ~~ tf2.11.4
SAY @3305
++ @3306 EXIT
END

IF ~~ tf2.12.1                  // caress
SAY @3307
IF ~~ EXIT
END
IF ~~ tf2.12.2
SAY @3308 = @3309 = @3310 = @3311
IF ~~ EXIT
END
IF ~~ tf2.12.3
SAY @3313
IF ~~ EXIT
END

IF ~~ tf2.13.1                  // ogle
SAY @3314
IF ~~ EXIT
END
IF ~~ tf2.13.2
SAY @3315
IF ~~ EXIT
END
IF ~~ tf2.13.3
SAY @3316 = @3317
IF ~~ EXIT
END

IF ~~ tf2.14.1                  // innbath
SAY @3180 = @3181 = @3182 = @3183 = @3184 = @3185 = @3186
IF ~~ EXIT
END
IF ~~ tf2.14.2
SAY @3190 = @3191 = @3192 = @3193 = @3194 = @3195
IF ~~ EXIT
END

IF ~~ tf2.15                    // streambath
SAY @3320 = @3321 = @3322
++ @3323 + tf2.15.1
END
IF ~~ tf2.15.1
SAY @3324 = @3325
IF ~~ THEN REPLY @3326 EXIT
END

END
