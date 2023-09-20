
// Huntsman.

I_C_T SENGUA01 3 RJAnnahSengua3
== RJAN25J IF ~InParty("RJAnnah")~ THEN @21
END

// Saemon.

I_C_T AMSAEMON 3 RJAnnahSaemon3
== RJAN25J IF ~InParty("RJAnnah")~ THEN @20
END

// Volo's obligatory interjection in Saradush.

EXTEND_TOP SARVOLO 9 #2
+ ~InParty("RJAnnah") InMyArea("RJAnnah") !StateCheck("RJAnnah",CD_STATE_NOTVALID) G("RJAnnahRomanceActive",2)~ + @0 + RJAnnahVoloBio2
END

CHAIN SARVOLO RJAnnahVoloBio2
@1
== RJAN25J IF ~InParty("RJAnnah") InMyArea("RJAnnah") !StateCheck("RJAnnah",CD_STATE_NOTVALID)~ THEN @2 EXTERN SARVOLO 9

// Solar, final interjections at the Throne of Bhaal and <CHARNAME>'s choice for the romanced protagonists.

// romanced, Annah and PC talk before the choice

EXTEND_BOTTOM FINSOL01 27
IF ~InParty("RJAnnah") InMyArea("RJAnnah") !StateCheck("RJAnnah",CD_STATE_NOTVALID) G("RJAnnahRomanceActive",2) G("RJAnnahSolarPers",0)~ DO ~SetGlobal("RJAnnahSolarPers","GLOBAL",1)~ EXTERN RJAN25J RJAnnahSolarPers
END

CHAIN RJAN25J RJAnnahSolarPers
@17
END
++ @4 EXTERN RJAN25J RJAnnahSolarPers1.1
++ @6 EXTERN RJAN25J RJAnnahSolarPers1.2

CHAIN RJAN25J RJAnnahSolarPers1.1
@5
END
COPY_TRANS FINSOL01 27

CHAIN RJAN25J RJAnnahSolarPers1.2
@7 = @8 = @9
END
COPY_TRANS FINSOL01 27

// romanced, PC chooses to leave

EXTEND_BOTTOM FINSOL01 29
IF ~InParty("RJAnnah") InMyArea("RJAnnah") !StateCheck("RJAnnah",CD_STATE_NOTVALID) G("RJAnnahRomanceActive",2) G("RJAnnahSolarLeave",0)~ DO ~SetGlobal("RJAnnahSolarLeave","GLOBAL",1)~ EXTERN RJAN25J RJAnnahSolarLeave
END

EXTEND_BOTTOM FINSOL01 30
IF ~InParty("RJAnnah") InMyArea("RJAnnah") !StateCheck("RJAnnah",CD_STATE_NOTVALID) G("RJAnnahRomanceActive",2) G("RJAnnahSolarLeave",0)~ DO ~SetGlobal("RJAnnahSolarLeave","GLOBAL",1)~ EXTERN RJAN25J RJAnnahSolarLeave
END

EXTEND_BOTTOM FINSOL01 31
IF ~InParty("RJAnnah") InMyArea("RJAnnah") !StateCheck("RJAnnah",CD_STATE_NOTVALID) G("RJAnnahRomanceActive",2) G("RJAnnahSolarLeave",0)~ DO ~SetGlobal("RJAnnahSolarLeave","GLOBAL",1)~ EXTERN RJAN25J RJAnnahSolarLeave
END

CHAIN RJAN25J RJAnnahSolarLeave
@10
END
COPY_TRANS FINSOL01 29

// romanced, PC chooses to stay

EXTEND_BOTTOM FINSOL01 32
IF ~InParty("RJAnnah") InMyArea("RJAnnah") !StateCheck("RJAnnah",CD_STATE_NOTVALID) G("RJAnnahRomanceActive",2) G("RJAnnahSolarStay",0)~ DO ~SetGlobal("RJAnnahSolarStay","GLOBAL",1)~ EXTERN RJAN25J RJAnnahSolarStay
END

CHAIN RJAN25J RJAnnahSolarStay
@11
END
++ @12 EXTERN RJAN25J RJAnnahSolarStay1.1
++ @13 EXTERN RJAN25J RJAnnahSolarStay1.1

CHAIN RJAN25J RJAnnahSolarStay1.1
@14 = @15 = @16
END
COPY_TRANS FINSOL01 32

APPEND RJAN25J

// LOVETALKS START HERE

// Talk 1. Post Irenicus

IF ~G("RJAnnahTalkToB",2)~ t1
SAY @100 
++ @101 + t1.1
END

IF ~~ t0
SAY @111
IF ~~ DO ~StartCutSceneMode()
          IncrementGlobal("RJAnnahTalkToB","GLOBAL",1)
          RealSetGlobalTimer("RJAnnahRomance","GLOBAL",RJ_TALK)
          EndCutSceneMode()~ EXIT
END

IF ~~ t1.1
SAY @102
++ @103 + t1.2
END

IF ~~ t1.2
SAY @104
++ @105 + t1.3
END

IF ~~ t1.3
SAY @106 = @107
++ @108 + t1.4
END

IF ~~ t1.4
SAY @109 = @110
IF ~~ THEN GOTO t0
END

// Talk 2. Child

IF ~G("RJAnnahTalkToB",4)~ t2
SAY @120 = @121
++ @122 + t2.1
END

IF ~~ t2.1
SAY @123 = @124
++ @125 + t2.2
END

IF ~~ t2.2
SAY @126
++ @127 + t2.3
END

IF ~~ t2.3
SAY @128
++ @129 + t2.4
END

IF ~~ t2.4
SAY @130
++ @131 + t2.5
END

IF ~~ t2.5
SAY @132
IF ~~ THEN GOTO t0
END

// Talk 3. Thieving

IF ~G("RJAnnahTalkToB",6)~ t3
SAY @140 = @141 = @142
++ @143 + t3.1
END

IF ~~ t3.1
SAY @144
++ @145 + t3.2
END

IF ~~ t3.2
SAY @146
++ @147 + t0
END

// Talk 4. What future

IF ~G("RJAnnahTalkToB",8)~ t4
SAY @160 = @161 = @162
++ @163 + t4.1
END

IF ~~ t4.1
SAY @164 = @165
++ @166 + t4.2
END

IF ~~ t4.2
SAY @167 = @168 = @169 = @170
++ @171 + t4.3
END

IF ~~ t4.3
SAY @172
++ @173 + t0
END

// Talk 5. Gods

IF ~G("RJAnnahTalkToB",10)~ t5
SAY @180 = @181 = @182
++ @183 + t5.1
END

IF ~~ t5.1
SAY @184 = @185
++ @186 + t5.2
END

IF ~~ t5.2
SAY @187 = @188
++ @189 + t5.3
END

IF ~~ t5.3
SAY @190
++ @191 + t0
END

// Talk 6. Bhaalspawn

IF ~G("RJAnnahTalkToB",12)~ t6
SAY @200
++ @201 + t6.1
END

IF ~~ t6.1
SAY @202 = @203
++ @204 + t6.2
END

IF ~~ t6.2
SAY @205 = @206 = @207 = @208 = @209 = @210
++ @211 + t0
END

END
