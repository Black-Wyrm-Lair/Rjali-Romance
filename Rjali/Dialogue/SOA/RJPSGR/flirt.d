
APPEND RJGRACEJ

// FLIRTS (SOA) - Must be at the bottom of the file

// Grace-initiated flirts - RomanceActive = 1

IF ~G("RJGraceFlirt",1) G("RJGraceRomanceActive",1)~ GRFli1
SAY @2030
IF ~RandomNum(10,1)~ + grfli1.1
IF ~RandomNum(10,2)~ + grfli1.2
IF ~RandomNum(10,3)~ + grfli1.3
IF ~RandomNum(10,4)~ + grfli1.4
IF ~RandomNum(10,5)~ + grfli1.5
IF ~RandomNum(10,6)~ + grfli1.6
IF ~RandomNum(10,7)~ + grfli1.7
IF ~RandomNum(10,8)~ + grfli1.8
IF ~RandomNum(10,9)~ + grfli1.9
IF ~RandomNum(10,10)~ + grfli1.10
END

IF ~~ grfli1.1
SAY @2031
IF ~~ EXIT
END

IF ~~ grfli1.2
SAY @2032
IF ~~ EXIT
END

IF ~~ grfli1.3
SAY @2033
IF ~~ EXIT
END

IF ~~ grfli1.4
SAY @2034
IF ~~ EXIT
END

IF ~~ grfli1.5
SAY @2035
IF ~~ EXIT
END

IF ~~ grfli1.6
SAY @2036
IF ~~ THEN REPLY @2041 EXIT
END

IF ~~ grfli1.7
SAY @2037
IF ~~ EXIT
END

IF ~~ grfli1.8
SAY @2038
IF ~~ EXIT
END

IF ~~ grfli1.9
SAY @2039
IF ~~ EXIT
END

IF ~~ grfli1.10
SAY @1040
IF ~~ EXIT
END

// Grace-initiated flirts - RomanceActive = 2

IF ~G("RJGraceFlirt",1) G("RJGraceRomanceActive",2)~ GRFli2
SAY @2050
IF ~RandomNum(10,1)~ + grfli2.1
IF ~RandomNum(10,2)~ + grfli2.2
IF ~RandomNum(10,3)~ + grfli2.3
IF ~RandomNum(10,4)~ + grfli2.4
IF ~RandomNum(10,5)~ + grfli2.5
IF ~RandomNum(10,6)~ + grfli2.6
IF ~RandomNum(10,7)~ + grfli2.7
IF ~RandomNum(10,8)~ + grfli2.8
IF ~RandomNum(10,9)~ + grfli2.9
IF ~RandomNum(10,10)~ + grfli2.10
END

IF ~~ grfli2.1
SAY @2051
IF ~~ THEN REPLY @2061 EXIT
END

IF ~~ grfli2.2
SAY @1052
IF ~~ EXIT
END

IF ~~ grfli2.3
SAY @2053
IF ~~ EXIT
END

IF ~~ grfli2.4
SAY @2054
IF ~~ THEN REPLY @2062 EXIT
END

IF ~~ grfli2.5
SAY @2055
IF ~~ EXIT
END

IF ~~ grfli2.6
SAY @2056
IF ~~ THEN REPLY @2063 EXIT
END

IF ~~ grfli2.7
SAY @2057
IF ~~ EXIT
END

IF ~~ grfli2.8
SAY @2058
IF ~~ EXIT
END

IF ~~ grfli2.9
SAY @2059
IF ~~ EXIT
END

IF ~~ grfli2.10
SAY @1060
IF ~~ EXIT
END

// Player-initiated dialogue (last thing in file)

IF ~IsGabber(Player1)
    InParty(Myself)~ GRPid
SAY @2000
+ ~!G("RJGraceRomanceActive",2)~ + @2001 EXIT
+ ~G("RJGraceRomanceActive",2)~ + @2002 EXIT
+ ~!G("RJGraceRomanceActive",2)~ + @2043 DO ~LeaveParty()~ EXIT
+ ~G("RJGraceRomanceActive",1)~ + @2005 + GRFlt1
+ ~G("RJGraceRomanceActive",2)~ + @2005 + GRFlt2
END

// Flirts - RomanceActive=1

IF ~~ GRFlt1
SAY @2007

++ @2001 EXIT

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

+ ~RandomNum(2,1)~ + @2105 + sf1.13.1               // bathe
+ ~RandomNum(2,2)~ + @2105 + sf1.13.2

END

// flirts

IF ~~ sf1.1.1                   // flower
SAY @2250
IF ~~ EXIT
END
IF ~~ sf1.1.2
SAY @2251
IF ~~ EXIT
END

IF ~~ sf1.2.1                   // cheek
SAY @2252
IF ~~ EXIT
END
IF ~~ sf1.2.2
SAY @2253
IF ~~ EXIT
END

IF ~~ sf1.3.1                   // kiss
SAY @2254
IF ~~ EXIT
END
IF ~~ sf1.3.2
SAY @2255
IF ~~ EXIT
END

IF ~~ sf1.5.1                   // hands
SAY @2256
IF ~~ EXIT
END
IF ~~ sf1.5.2
SAY @2257
IF ~~ EXIT
END

IF ~~ sf1.8.1                   // beautiful
SAY @2258
++ @2259 EXIT
END
IF ~~ sf1.8.2
SAY @2260
IF ~~ EXIT
END

IF ~~ sf1.9.1                   // hug
SAY @2261
IF ~~ EXIT
END
IF ~~ sf1.9.2
SAY @2262
++ @2263 EXIT
END

IF ~~ sf1.10.1                  // smile
SAY @2265
IF ~~ EXIT
END
IF ~~ sf1.10.2
SAY @2266
IF ~~ EXIT
END

IF ~~ sf1.13.1                  // bathe
SAY @2249 = @2267
++ @2264 EXIT
END
IF ~~ sf1.13.2
SAY @2249 = @2268 = @2269
IF ~~ EXIT
END

// Flirts - RomanceActive=2

IF ~~ GRFlt2
SAY @2008

++ @2001 EXIT

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
SAY @2110
IF ~~ EXIT
END
IF ~~ sf2.1.2
SAY @2111
IF ~~ EXIT
END
IF ~~ sf2.1.3
SAY @2112
IF ~~ EXIT
END
IF ~~ sf2.1.4
SAY @2113
IF ~~ EXIT
END

IF ~~ sf2.2.1                   // cheek
SAY @2114
IF ~~ EXIT
END
IF ~~ sf2.2.2
SAY @2115
IF ~~ EXIT
END
IF ~~ sf2.2.3
SAY @2116
IF ~~ EXIT
END
IF ~~ sf2.2.4
SAY @2117
IF ~~ EXIT
END

IF ~~ sf2.3.1                   // kiss
SAY @2118
IF ~~ EXIT
END
IF ~~ sf2.3.2
SAY @2119
IF ~~ EXIT
END
IF ~~ sf2.3.3
SAY @2120
++ @2121 EXIT
END
IF ~~ sf2.3.4
SAY @2122
IF ~~ EXIT
END

IF ~~ sf2.4.1                   // grab
SAY @2123
IF ~~ EXIT
END
IF ~~ sf2.4.2
SAY @2124 = @2125
IF ~~ EXIT
END
IF ~~ sf2.4.3
SAY @2126 = @2127
IF ~~ EXIT
END
IF ~~ sf2.4.4
SAY @2128 = @2129
++ @2130 EXIT
END

IF ~~ sf2.5.1                   // hands
SAY @2131
IF ~~ EXIT
END
IF ~~ sf2.5.2
SAY @2132 = @2133
IF ~~ EXIT
END
IF ~~ sf2.5.3
SAY @2134
IF ~~ EXIT
END
IF ~~ sf2.5.4
SAY @2135
IF ~~ EXIT
END

IF ~~ sf2.6.1                   // arms
SAY @2136
IF ~~ EXIT
END
IF ~~ sf2.6.2
SAY @2137
IF ~~ EXIT
END
IF ~~ sf2.6.3
SAY @2138
IF ~~ EXIT
END
IF ~~ sf2.6.4
SAY @2139
IF ~~ EXIT
END

IF ~~ sf2.7.1                   // want
SAY @2140
IF ~~ EXIT
END
IF ~~ sf2.7.2
SAY @2141
IF ~~ EXIT
END
IF ~~ sf2.7.3
SAY @2142
IF ~~ EXIT
END
IF ~~ sf2.7.4
SAY @2143
IF ~~ EXIT
END

IF ~~ sf2.8.1                   // beautiful
SAY @2146
++ @2147 EXIT
END
IF ~~ sf2.8.2
SAY @2148
IF ~~ EXIT
END
IF ~~ sf2.8.3
SAY @2149
++ @2150 EXIT
END
IF ~~ sf2.8.4
SAY @2151
IF ~~ EXIT
END

IF ~~ sf2.9.1                   // hug
SAY @2152
IF ~~ EXIT
END
IF ~~ sf2.9.2
SAY @2153 = @2154
++ @2155 EXIT
END
IF ~~ sf2.9.3
SAY @2156
IF ~~ EXIT
END
IF ~~ sf2.9.4
SAY @2157 = @2158
IF ~~ EXIT
END

IF ~~ sf2.10.1                  // smile
SAY @2159
IF ~~ EXIT
END
IF ~~ sf2.10.2
SAY @2160
IF ~~ EXIT
END
IF ~~ sf2.10.3
SAY @2161
IF ~~ EXIT
END
IF ~~ sf2.10.4
SAY @2162
IF ~~ EXIT
END

IF ~~ sf2.11.1                  // love
SAY @2163
IF ~~ EXIT
END
IF ~~ sf2.11.2
SAY @2164
IF ~~ EXIT
END
IF ~~ sf2.11.3
SAY @2165
IF ~~ EXIT
END
IF ~~ sf2.11.4
SAY @2166
++ @2167 EXIT
END

IF ~~ sf2.12.1                  // caress
SAY @2168
++ @2169 EXIT
END
IF ~~ sf2.12.2
SAY @2170 = @2171
IF ~~ EXIT
END
IF ~~ sf2.12.3
SAY @2172 = @2173
IF ~~ EXIT
END

IF ~~ sf2.13.1                  // ogle
SAY @2174
IF ~~ EXIT
END
IF ~~ sf2.13.2
SAY @2175
IF ~~ EXIT
END
IF ~~ sf2.13.3
SAY @2176
IF ~~ EXIT
END

IF ~~ sf2.14.1                  // innbath
SAY @2180 = @2181 = @2182 = @2183 = @2184 = @2185 = @2186
IF ~~ EXIT
END
IF ~~ sf2.14.2
SAY @2190 = @2191 = @2192 = @2193 = @2194 = @2195
IF ~~ EXIT
END
IF ~~ sf2.14.3
SAY @2200 = @2201 = @2202 = @2203 = @2204 = @2205 = @1207
IF ~~ EXIT
END

IF ~~ sf2.15.1                  // streambath 1
SAY @2210 = @2211 = @2212
++ @2213 + sf2.15.1.1
END
IF ~~ sf2.15.1.1
SAY @2214 = @2215 = @2216 = @2217 = @2218 = @2219 = @2220 = @2221 = @2222
IF ~~ EXIT
END

IF ~~ sf2.15.2                  // streambath 2
SAY @2230 = @2231 = @2232 = @2233 = @2234 = @2235 = @2236
IF ~~ THEN REPLY @2237 EXIT
END

IF ~~ sf2.16                    // holdbath
SAY @2240 = @1241 = @2242 = @2243
++ @2244 EXIT
END

END

APPEND RJGR25J

// FLIRTS (TOB) - Must be at the bottom of the file

// Grace-initiated flirts

IF ~G("RJGraceFlirt",1)~ GRFli3
SAY @2070
IF ~RandomNum(10,1)~ + grfli3.1
IF ~RandomNum(10,2)~ + grfli3.2
IF ~RandomNum(10,3)~ + grfli3.3
IF ~RandomNum(10,4)~ + grfli3.4
IF ~RandomNum(10,5)~ + grfli3.5
IF ~RandomNum(10,6)~ + grfli3.6
IF ~RandomNum(10,7)~ + grfli3.7
IF ~RandomNum(10,8)~ + grfli3.8
IF ~RandomNum(10,9)~ + grfli3.9
IF ~RandomNum(10,10)~ + grfli3.10
END

IF ~~ grfli3.1
SAY @1071
IF ~~ EXIT
END

IF ~~ grfli3.2
SAY @2072
IF ~~ EXIT
END

IF ~~ grfli3.3
SAY @2073
IF ~~ THEN REPLY @1081 EXIT
END

IF ~~ grfli3.4
SAY @2074
IF ~~ EXIT
END

IF ~~ grfli3.5
SAY @1075
IF ~~ EXIT
END

IF ~~ grfli3.6
SAY @2076
IF ~~ EXIT
END

IF ~~ grfli3.7
SAY @2077
IF ~~ EXIT
END

IF ~~ grfli3.8
SAY @2078
IF ~~ THEN REPLY @2082 EXIT
END

IF ~~ grfli3.9
SAY @2079
IF ~~ THEN REPLY @2083 EXIT
END

IF ~~ grfli3.10
SAY @2080
IF ~~ EXIT
END

// Player-initiated dialogue (last thing in file)

IF ~IsGabber(Player1)~ GRPit
SAY @2000

++ @2001 EXIT
+ ~G("RJGraceRomanceActive",2)~ + @2005 + GRFlt3
END

// Flirts

IF ~~ GRFlt3
SAY @2008

++ @2001 EXIT

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
SAY @2270
IF ~~ EXIT
END
IF ~~ tf2.1.2
SAY @2271
IF ~~ EXIT
END

IF ~~ tf2.2.1                   // cheek
SAY @2272
IF ~~ EXIT
END
IF ~~ tf2.2.2
SAY @2273
IF ~~ EXIT
END

IF ~~ tf2.3.1                   // kiss
SAY @2274
IF ~~ EXIT
END
IF ~~ tf2.3.2
SAY @1275
IF ~~ EXIT
END
IF ~~ tf2.3.3
SAY @2276 = @2277
IF ~~ EXIT
END
IF ~~ tf2.3.4
SAY @2278
IF ~~ EXIT
END

IF ~~ tf2.4.1                   // grab
SAY @2279
IF ~~ EXIT
END
IF ~~ tf2.4.2
SAY @2280 = @2281
IF ~~ EXIT
END
IF ~~ tf2.4.3
SAY @2282
IF ~~ EXIT
END
IF ~~ tf2.4.4
SAY @2283 = @2284
++ @2285 EXIT
END

IF ~~ tf2.5.1                   // hands
SAY @2286
IF ~~ EXIT
END
IF ~~ tf2.5.2
SAY @2287
IF ~~ EXIT
END

IF ~~ tf2.6.1                   // arms
SAY @2288
IF ~~ EXIT
END
IF ~~ tf2.6.2
SAY @2289
IF ~~ EXIT
END

IF ~~ tf2.7.1                   // want
SAY @2290
IF ~~ EXIT
END
IF ~~ tf2.7.2
SAY @2291
IF ~~ EXIT
END
IF ~~ tf2.7.3
SAY @2292
IF ~~ EXIT
END
IF ~~ tf2.7.4
SAY @2293
IF ~~ EXIT
END

IF ~~ tf2.8.1                   // beautiful
SAY @2294
IF ~~ EXIT
END
IF ~~ tf2.8.2
SAY @2295
IF ~~ EXIT
END

IF ~~ tf2.9.1                   // hug
SAY @2296
IF ~~ EXIT
END
IF ~~ tf2.9.2
SAY @2297
IF ~~ EXIT
END
IF ~~ tf2.9.3
SAY @2298
IF ~~ EXIT
END
IF ~~ tf2.9.4
SAY @2299
IF ~~ EXIT
END

IF ~~ tf2.10.1                  // smile
SAY @2300
IF ~~ EXIT
END
IF ~~ tf2.10.2
SAY @2301
IF ~~ EXIT
END

IF ~~ tf2.11.1                  // love
SAY @2302
IF ~~ EXIT
END
IF ~~ tf2.11.2
SAY @2303
IF ~~ EXIT
END
IF ~~ tf2.11.3
SAY @2304
IF ~~ EXIT
END
IF ~~ tf2.11.4
SAY @2305
++ @2306 EXIT
END

IF ~~ tf2.12.1                  // caress
SAY @2307
IF ~~ EXIT
END
IF ~~ tf2.12.2
SAY @2308 = @2309 = @2310
IF ~~ EXIT
END
IF ~~ tf2.12.3
SAY @2313
IF ~~ EXIT
END

IF ~~ tf2.13.1                  // ogle
SAY @2314
IF ~~ EXIT
END
IF ~~ tf2.13.2
SAY @2315
IF ~~ EXIT
END
IF ~~ tf2.13.3
SAY @2316 = @2317
IF ~~ EXIT
END

IF ~~ tf2.14.1                  // innbath
SAY @2180 = @2181 = @2182 = @2183 = @2184 = @2185 = @2186
IF ~~ EXIT
END
IF ~~ tf2.14.2
SAY @2190 = @2191 = @2192 = @2193 = @2194 = @2195
IF ~~ EXIT
END

IF ~~ tf2.15                    // streambath
SAY @2320 = @2321 = @2322 = @2323 = @2324 = @2325
++ @2326 EXIT
END

END
