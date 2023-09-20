
// This is Sigil's expansion dialogue file.

// Adahn

APPEND RJPSTAD

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)~ xpad
SAY @230
IF ~~ THEN REPLY @260 EXIT
IF ~G("RJAddCnt",3)~ THEN REPLY @231 GOTO xpad1
IF ~!G("RJAddCnt",3)~ THEN REPLY @231 GOTO xpad2
END

IF ~~ xpad1
SAY @232 = @233
IF ~~ THEN REPLY @234 GOTO xpad1.1
END

IF ~~ xpad1.1
SAY @235 = @236 = @237 = @238
IF ~~ THEN REPLY @239 EXIT
END

IF ~~ xpad2
SAY @240 = @241
IF ~G("RJAddRV",0)~ THEN REPLY @244 GOTO xpad2.3
IF ~G("RJAddGR",0)~ THEN REPLY @243 GOTO xpad2.2
IF ~G("RJAddAN",0)~ THEN REPLY @242 GOTO xpad2.1
END

IF ~~ xpad2.1
SAY @245 = @246 = @247
IF ~~ THEN REPLY @248 GOTO xpad2.4
IF ~G("RJAddRV",0)~ THEN REPLY @244 GOTO xpad2.3
IF ~G("RJAddGR",0)~ THEN REPLY @243 GOTO xpad2.2
END

IF ~~ xpad2.2
SAY @249 = @250 = @251
IF ~~ THEN REPLY @248 GOTO xpad2.4
IF ~G("RJAddRV",0)~ THEN REPLY @244 GOTO xpad2.3
END

IF ~~ xpad2.3
SAY @252 = @253 = @254
IF ~~ THEN REPLY @248 GOTO xpad2.4
END

IF ~~ xpad2.4
SAY @255 = @256 = @257 = @258
IF ~~ THEN REPLY @259 EXIT
END

END

// Doofus

APPEND RJDOOFUS

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)~ xpdf
SAY @210
IF ~~ THEN REPLY @211 EXIT
IF ~~ THEN REPLY @212 GOTO xpdf1
END

IF ~~ xpdf1
SAY @213 = @214 = @215 = @216 = @217 = @218
IF ~~ THEN REPLY @219 EXIT
END

END

// Dakkon

APPEND RJPSTDK

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)~ xpdk
SAY @200
IF ~~ THEN REPLY @201 EXIT
IF ~~ THEN REPLY @202 GOTO xpdk1
END

IF ~~ xpdk1
SAY @203 = @204 = @205 = @206 = @207
IF ~~ THEN REPLY @208 EXIT
END

END

// Dolora

APPEND RJPSTDO

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)~ xpdo
SAY @190
IF ~~ THEN REPLY @191 EXIT
END

END

// Ecco

APPEND RJPSTEC

IF WEIGHT #-99 ~G("RJECNOOK",3)~ xpec1.3
SAY @181 = @182 = @183
IF ~~ THEN REPLY @184 DO ~SetGlobal("RJECNOOK","GLOBAL",2)
                          CloseDoor("ar605d09")~ EXIT
END

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)~ xpec
SAY @170
IF ~~ THEN REPLY @171 EXIT
IF ~G("RJECFling",1) G("RJXPEC1",0)~ THEN REPLY @166 DO ~SetGlobal("RJXPEC1","GLOBAL",1)~ GOTO xpec3
IF ~GGT("RJECFling",1) G("RJXPEC1",0)~ THEN REPLY @172 DO ~SetGlobal("RJXPEC1","GLOBAL",1)~ GOTO xpec1
IF ~G("RJXPEC1",1)~ THEN REPLY @185 GOTO xpec2
END

IF ~~ xpec1
SAY @173 = @174 = @175
IF ~~ THEN REPLY @176 GOTO xpec1.1
END

IF ~~ xpec1.1
SAY @177 = @178
IF ~~ THEN REPLY @179 GOTO xpec1.2
END

IF ~~ xpec1.2
SAY @180
IF ~~ THEN DO ~StartCutSceneMode()
               StartCutScene("RJECNOOX")~ EXIT
END

IF ~~ xpec2
SAY @186 = @187 = @188
IF ~~ THEN REPLY @189 EXIT
END

IF ~~ xpec3
SAY @167 = @168
IF ~~ THEN REPLY @169 GOTO xpec1
END

END

// Fhjull

APPEND RJPSTFJ

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)~ xpfj
SAY @160
IF ~~ THEN REPLY @161 GOTO xpfj1
END

IF ~~ xpfj1
SAY @162
IF ~~ THEN REPLY @163 EXIT
END

END

// Jini

APPEND RJINI

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)~ xpji
SAY @140
IF ~~ THEN REPLY @141 EXIT
IF ~~ THEN REPLY @142 GOTO xpji1
END

IF ~~ xpji1
SAY @143 = @144 = @145 = @146
IF ~~ THEN REPLY @147 GOTO xpji1.1
END

IF ~~ xpji1.1
SAY @148 = @149 = @150 = @151
IF ~~ THEN REPLY @152 EXIT
END

END

// Juliette

APPEND RJPSTJU

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)~ xpju
SAY @130
IF ~~ THEN REPLY @131 EXIT
IF ~~ THEN REPLY @132 GOTO xpju1
END

IF ~~ xpju1
SAY @133 = @134
IF ~~ THEN REPLY @135 EXIT
END

END

// Kesai-Serris

APPEND RJPSTKS

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)~ xpks
SAY @100
IF ~~ THEN REPLY @101 EXIT
IF ~!G("RJAddRV",0)~ THEN REPLY @102 GOTO xpks1
IF ~!BeenInParty("RJRavel")~ THEN REPLY @102 GOTO xpks2
IF ~G("RJAddRV",0) BeenInParty("RJRavel")~ THEN REPLY @102 GOTO xpks3
END

IF ~~ xpks1
SAY @103 = @104 = @105
IF ~~ THEN REPLY @106 GOTO xpks1.1
END

IF ~~ xpks1.1
SAY @107 = @108
IF ~~ THEN REPLY @109 EXIT
END

IF ~~ xpks2
SAY @110 = @111 = @112
IF ~~ THEN REPLY 113 GOTO xpks2.1
END

IF ~~ xpks2.1
SAY @114 = @115 = @116
IF ~~ THEN REPLY @117 EXIT
END

IF ~~ xpks3
SAY @118 = @119
IF ~~ THEN REPLY @120 EXIT
END

END

// Morte

APPEND RJPSTMR

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)~ xpmr
SAY @90
IF ~~ THEN REPLY @92 EXIT
IF ~~ THEN REPLY @91 GOTO xpmr1
END

IF ~~ xpmr1
SAY @93 = @94 = @95
IF ~~ THEN REPLY @96 GOTO xpmr1.1
END

IF ~~ xpmr1.1
SAY @97 = @98
IF ~~ THEN REPLY @99 EXIT
END

END

// Nordom

APPEND RJPSTND

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)~ xpnd
SAY @80
IF ~~ THEN REPLY @81 EXIT
END

END

// Nenny

APPEND RJPSTNE

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)~ xpnn
SAY @70
IF ~~ THEN REPLY @76 EXIT
IF ~~ THEN REPLY @71 GOTO xpnn1
END

IF ~~ xpnn1
SAY @72 = @73 = @74
IF ~~ THEN REPLY @75 EXIT
END

END

// Syrinx

APPEND RJPSTSY

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)~ xpsy
SAY @50
IF ~~ THEN REPLY @51 EXIT
IF ~~ THEN REPLY @52 GOTO xpsy1
END

IF ~~ xpsy1
SAY @53 = @54
IF ~~ THEN REPLY @55 GOTO xpsy1.1
END

IF ~~ xpsy1.1
SAY @56 = @57
IF ~G("RJAddnt",0)~ THEN REPLY @61 EXIT
IF ~!G("RJAddnt",0)~ THEN REPLY @61 GOTO xpsy1.2
END

IF ~~ xpsy1.2
SAY @58 = @59
IF ~~ THEN REPLY @60 EXIT
END

END

// Trias

APPEND RJPSTTR

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)~ xptr
SAY @30 = @31
IF ~~ THEN REPLY @32 EXIT
IF ~~ THEN REPLY @33 GOTO xptr1
END

IF ~~ xptr1
SAY @34 = @35 = @36
IF ~~ THEN REPLY @37 GOTO xptr1.1
END

IF ~~ xptr1.1
SAY @38 = @39
IF ~~ THEN REPLY @40 EXIT
END

END

// Vivien

APPEND RJPSTVI

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)~ xpvv
SAY @0 = @20
IF ~~ THEN REPLY @21 EXIT
IF ~~ THEN REPLY @22 GOTO xpvv1
END

IF ~~ xpvv1
SAY @23
IF ~~ THEN REPLY @24 GOTO xpvv1.1
END

IF ~~ xpvv1.1
SAY @25 = @26
IF ~~ THEN REPLY @27 EXIT
END

END

// Yves

APPEND RJPSTYV

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)~ xpys
SAY @0 = @1
IF ~~ THEN REPLY @2 EXIT
IF ~~ THEN REPLY @3 GOTO xpys1
END

IF ~~ xpys1
SAY @4
IF ~~ THEN REPLY @5 GOTO xpys1.1
END

IF ~~ xpys1.1
SAY @6 = @7
IF ~~ THEN REPLY @8 GOTO xpys1.2
END

IF ~~ xpys1.2
SAY @9
IF ~~ THEN REPLY @10 GOTO xpys1.3
END

IF ~~ xpys1.3
SAY @11 = @12 = @13
IF ~~ THEN REPLY @14 EXIT
END

END

// Kimasxi

APPEND RJPSTKA

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)~ xpka
SAY @300
IF ~~ THEN REPLY @301 GOTO xpka1
END

IF ~~ xpka1
SAY @302 = @303 = @304
IF ~~ THEN REPLY @305 EXIT
END

END
