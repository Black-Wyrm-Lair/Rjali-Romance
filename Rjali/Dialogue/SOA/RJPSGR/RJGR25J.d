
// Nyalie.

I_C_T HGNYA01 27 RJGraceNyalie27
== RJGR25J IF ~InParty("RJGrace")~ THEN @20
END

// Marlow.

I_C_T MARLOWE 35 RJGraceMarlowe35
== RJGR25J IF ~InParty("RJGrace")~ THEN @21
END

// Volo's obligatory interjection in Saradush.

EXTEND_TOP SARVOLO 9 #2
+ ~InParty("RJGrace") InMyArea("RJGrace") !StateCheck("RJGrace",CD_STATE_NOTVALID) G("RJGraceRomanceActive",2)~ + @0 + RJGraceVoloBio2
END

CHAIN SARVOLO RJGraceVoloBio2
@1
== RJGR25J IF ~InParty("RJGrace") InMyArea("RJGrace") !StateCheck("RJGrace",CD_STATE_NOTVALID)~ THEN @2
EXTERN SARVOLO 9

// Solar, final interjections at the Throne of Bhaal and <CHARNAME>'s choice for the romanced protagonists.

// romanced, Grace and PC talk before the choice

EXTEND_BOTTOM FINSOL01 27
IF ~InParty("RJGrace") InMyArea("RJGrace") !StateCheck("RJGrace",CD_STATE_NOTVALID) G("RJGraceRomanceActive",2) G("RJGraceSolarPers",0)~ DO ~SetGlobal("RJGraceSolarPers","GLOBAL",1)~ EXTERN RJGR25J RJGraceSolarPers
END

CHAIN RJGR25J RJGraceSolarPers
@17
END
++ @4 EXTERN RJGR25J RJGraceSolarPers1.1
++ @6 EXTERN RJGR25J RJGraceSolarPers1.1

CHAIN RJGR25J RJGraceSolarPers1.1
@7 = @8 = @9
END
COPY_TRANS FINSOL01 27

// romanced, PC chooses to leave

EXTEND_BOTTOM FINSOL01 29
IF ~InParty("RJGrace") InMyArea("RJGrace") !StateCheck("RJGrace",CD_STATE_NOTVALID) G("RJGraceRomanceActive",2) G("RJGraceSolarLeave",0)~ DO ~SetGlobal("RJGraceSolarLeave","GLOBAL",1)~ EXTERN RJGR25J RJGraceSolarLeave
END

EXTEND_BOTTOM FINSOL01 30
IF ~InParty("RJGrace") InMyArea("RJGrace") !StateCheck("RJGrace",CD_STATE_NOTVALID) G("RJGraceRomanceActive",2) G("RJGraceSolarLeave",0)~ DO ~SetGlobal("RJGraceSolarLeave","GLOBAL",1)~ EXTERN RJGR25J RJGraceSolarLeave
END

EXTEND_BOTTOM FINSOL01 31
IF ~InParty("RJGrace") InMyArea("RJGrace") !StateCheck("RJGrace",CD_STATE_NOTVALID) G("RJGraceRomanceActive",2) G("RJGraceSolarLeave",0)~ DO ~SetGlobal("RJGraceSolarLeave","GLOBAL",1)~ EXTERN RJGR25J RJGraceSolarLeave
END

CHAIN RJGR25J RJGraceSolarLeave
@10
END
COPY_TRANS FINSOL01 29

// romanced, PC chooses to stay

EXTEND_BOTTOM FINSOL01 32
IF ~InParty("RJGrace") InMyArea("RJGrace") !StateCheck("RJGrace",CD_STATE_NOTVALID) G("RJGraceRomanceActive",2) G("RJGraceSolarStay",0)~ DO ~SetGlobal("RJGraceSolarStay","GLOBAL",1)~ EXTERN RJGR25J RJGraceSolarStay
END

CHAIN RJGR25J RJGraceSolarStay
@11
END
++ @12 EXTERN RJGR25J RJGraceSolarStay1.1
++ @13 EXTERN RJGR25J RJGraceSolarStay1.1

CHAIN RJGR25J RJGraceSolarStay1.1
@14 = @15 = @16
END
COPY_TRANS FINSOL01 32

APPEND RJGR25J

// LOVETALKS START HERE

// Talk 1. Escalation

IF ~G("RJGraceTalkToB",2)~ t1
SAY @100 = @101
++ @102 + t1.1
END

IF ~~ t0.1
SAY @114
IF ~~ DO ~StartCutSceneMode()
          IncrementGlobal("RJGraceTalkToB","GLOBAL",1)
          RealSetGlobalTimer("RJGraceRomance","GLOBAL",RJ_TALK)
          EndCutSceneMode()~ EXIT
END

IF ~~ t1.1
SAY @103
++ @104 + t1.2
END

IF ~~ t1.2
SAY @105 = @106
++ @107 + t1.3
END

IF ~~ t1.3
SAY @108
++ @109 + t1.4
END

IF ~~ t1.4
SAY @110 = @111 = @112
++ @113 + t0.1
END

// Talk 2. What about Solar

IF ~G("RJGraceTalkToB",4)~ t2
SAY @120
++ @121 + t2.1
END

IF ~~ t2.1
SAY @122 = @123 = @124 = @125
++ @126 + t2.2
END

IF ~~ t2.2
SAY @127 = @128 = @129
++ @130 + t2.3
END

IF ~~ t2.3
SAY @131 = @132
++ @133 + t0.1
END

// Talk 3. Melissan

IF ~G("RJGraceTalkToB",6)~ t3
SAY @140 = @141
++ @142 + t3.1
END

IF ~~ t3.1
SAY @143 = @144
++ @145 + t3.2
END

IF ~~ t3.2
SAY @146 = @147 = @148
++ @149 + t0.1
END

// Talk 4. Suldenessellar

IF ~G("RJGraceTalkToB",8)~ t4
SAY @160 = @161 = @162
++ @163 + t4.1
END

IF ~~ t4.1
SAY @164 = @165 = @166
++ @167 + t4.2
END

IF ~~ t4.2
SAY @168 = @169 = @170
++ @171 + t4.3
END

IF ~~ t4.3
SAY @172 = @173
++ @174 + t0.1
END

// Talk 5. Escaping the gods

IF ~G("RJGraceTalkToB",10)~ t5
SAY @180 = @181
++ @182 + t5.1
++ @183 + t5.2
END

IF ~~ t5.1
SAY @184 = @185 = @186
++ @187 + t5.2
END

IF ~~ t5.2
SAY @188 = @189
++ @190 + t5.3
END

IF ~~ t5.3
SAY @191
++ @192 + t5.4
END

IF ~~ t5.4
SAY @193
++ @194 + t5.6
+ ~G("ImoenRomanceActive",2)~ + @195 + t5.5
END

IF ~~ t5.5
SAY @196
++ @197 + t5.6
END

IF ~~ t5.6
SAY @198
++ @199 + t0.1
END

// Talk 6. %%%

IF ~G("RJGraceTalkToB",12)~ t6
SAY @210
++ @211 + t6.1
END

IF ~~ t6.1
SAY @212
++ @213 + t6.2
END

IF ~~ t6.2
SAY @214 = @215
++ @216 + t6.3
END

IF ~~ t6.3
SAY @217 = @218
++ @219 + t6.4
END

IF ~~ t6.4
SAY @220
++ @221 + t0.1
END

END
