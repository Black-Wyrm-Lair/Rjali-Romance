
// Read this dialogue file fourth, after Rjali.d, RjaliP.d and BRJALI.d.

BEGIN RJALIJ

// REPLACE stubs

IF ~False()~ THEN BEGIN 0 // For insertion of Imoen introductions
SAY @0
IF ~~ THEN EXIT
END

IF ~False()~ THEN BEGIN 1
SAY @0
IF ~~ THEN EXIT
END

IF ~False()~ THEN BEGIN 2
SAY @0
IF ~~ THEN EXIT
END

IF ~False()~ THEN BEGIN 3
SAY @0
IF ~~ THEN EXIT
END

IF ~False()~ THEN BEGIN 4
SAY @0
IF ~~ THEN EXIT
END

// This is Rjali's main dialogue file after she joins the party.

// Extra talks: On entering Kalah's domain

CHAIN IF ~G("RjaliKalah",1)~ THEN PLAYER1 rjk1
@1100 DO ~SetGlobal("RjaliKalah","GLOBAL",2)~
== RJALIJ @1101
== PLAYER1 @1102
== RJALIJ @1103
== PLAYER1 @1104 = @1105
== RJALIJ @1106 = @1107
== PLAYER1 @1108
== RJALIJ @1109
== PLAYER1 @1110
END
IF ~~ THEN DO ~SetGlobal("RjaliCircus","GLOBAL",5)
               AddJournalEntry(@9056,INFO)~ EXIT

// Djinn in Trademeet, introducing Horace.

EXTEND_BOTTOM TRGENI01 0
IF ~InParty("Rjali") PartyHasItem("RJLAMP")~ THEN REPLY @1000 DO ~ActionOverride("Rjali",CreateCreature("RJGENIE",[-1.-1],0))~ EXTERN TRGENI01 TRHomer
END

CHAIN TRGENI01 TRHomer
@1001
== RJGENIE @1004
== TRGENI01 @1005 = @1002 = @1003
== RJGENIE @1006
== RJGRACEJ IF ~InParty("RJGrace")~ THEN @1007
== RJGENIE @1008
== TRGENI01 @1009 = @1010
== RJALIJ @1011
== RJGENIE @1012 = @1013 = @1014 = @1015 = @1016
== TRGENI01 @1017
== RJGENIE @1018 DO ~ActionOverride("RJGENIE",DestroySelf())~
== TRGENI01 @1019
END
IF ~~ THEN REPLY @1020 EXTERN TRGENI01 10

// 1st circus Djinn. Riddle

EXTEND_BOTTOM KGENIE1 0
IF ~PartyHasItem("RJLAMP")~ THEN REPLY @1150 DO ~ActionOverride("Rjali",CreateCreature("RJGENIE",[-1.-1],0))~ EXTERN KGENIE1 TRCircus1
END

CHAIN KGENIE1 TRCircus1
@1151
== RJGENIE @1152
== KGENIE1 @1153 = @1154 = @1155 = @1156
== RJGENIE @1157 = @1158
== RJGENIE @1159 DO ~ActionOverride("RJGENIE",DestroySelf())~
END
IF ~~ THEN REPLY @1160 EXTERN KGENIE1 2

// 2nd circus Djinn.

EXTEND_BOTTOM KGENIE2 0
IF ~PartyHasItem("RJLAMP")~ THEN REPLY @1170 DO ~ActionOverride("Rjali",CreateCreature("RJGENIE",[-1.-1],0))~ EXTERN KGENIE2 TRCircus2
END

CHAIN KGENIE2 TRCircus2
@1171 = @1172 = @1173
== RJGENIE @1174
== KGENIE2 @1175
== RJGENIE @1176 DO ~ActionOverride("RJGENIE",DestroySelf())~
END
IF ~~ THEN REPLY @1177 EXTERN KGENIE2 1

// 1st early Djinn. AATAQAH

EXTEND_BOTTOM AATAQAH 0
IF ~PartyHasItem("RJLAMP")~ THEN REPLY @1190 DO ~ActionOverride("Rjali",CreateCreature("RJGENIE",[-1.-1],0))~ EXTERN AATAQAH TRAataqah
END

CHAIN AATAQAH TRAataqah
@1192
== RJGENIE @1193 = @1194 = @1195
== AATAQAH @1196 = @1197
== RJGENIE @1198 DO ~ActionOverride("RJGENIE",DestroySelf())~
END
IF ~~ THEN REPLY @1191 EXTERN AATAQAH 19

// 2nd early Djinn. Malaaq

EXTEND_BOTTOM IDJINNI 0
IF ~PartyHasItem("RJLAMP")~ THEN REPLY @1210 DO ~ActionOverride("Rjali",CreateCreature("RJGENIE",[-1.-1],0))~ EXTERN IDJINNI TRMalaaq
END

CHAIN IDJINNI TRMalaaq
@1212
== RJGENIE @1213
== IDJINNI @1214 = @1215 = @1216
== RJGENIE @1217
== IDJINNI @1218
== RJGENIE @1219 DO ~ActionOverride("RJGENIE",DestroySelf())~
END
IF ~~ THEN REPLY @1211 EXTERN IDJINNI 3

// Hell Djinni

EXTEND_BOTTOM HELLGEN 0
IF ~PartyHasItem("RJLAMP")~ THEN REPLY @1190 DO ~ActionOverride("Rjali",CreateCreature("RJGENIE",[-1.-1],0))~ EXTERN HELLGEN RJHellGen
END

CHAIN HELLGEN RJHellGen
@1300
== RJGENIE @1303
== HELLGEN @1304
== RJGENIE @1305 = @1306 = @1307 DO ~ActionOverride("RJGENIE",DestroySelf())~
END
IF ~~ THEN REPLY @1301 EXTERN HELLGEN 1
IF ~~ THEN REPLY @1302 EXTERN HELLGEN 2

// Ust Natha Djinni

ALTER_TRANS DAGENIE
BEGIN 0 END
BEGIN 0 END
BEGIN
  "TRIGGER" ~!PartyHasItem("RJLAMP")~
END

EXTEND_BOTTOM DAGENIE 0
IF ~PartyHasItem("RJLAMP")~ THEN REPLY @1190 DO ~ActionOverride("Rjali",CreateCreature("RJGENIE",[-1.-1],0))~ EXTERN DAGENIE RJDAGEN
END

CHAIN DAGENIE RJDAGEN
@1320 = @1321
== RJGENIE @1322 = @1323 = @1324 = @1325
== DAGENIE @1326
== RJGENIE @1327 DO ~ActionOverride("RJGENIE",DestroySelf())~
END
IF ~~ THEN REPLY @1328 DO ~ActionOverride(Player1,Attack("dagenie"))~ EXIT

// Spellhold Djinni

ALTER_TRANS PPDJINN
BEGIN 0 END
BEGIN 0 END
BEGIN
  "TRIGGER" ~!PartyHasItem("RJLAMP")~
END

EXTEND_BOTTOM PPDJINN 0
IF ~PartyHasItem("RJLAMP")~ THEN REPLY @1190 DO ~ActionOverride("Rjali",CreateCreature("RJGENIE",[-1.-1],0))~ EXTERN PPDJINN RJSHGEN
END

CHAIN PPDJINN RJSHGEN
@1340
== RJGENIE @1341 = @1342
== PPDJINN @1343 = @1344
== RJGENIE @1345 DO ~ActionOverride("RJGENIE",DestroySelf())~
== PPDJINN @832
END
IF ~~ THEN REPLY @1346 DO ~GiveItemCreate("plat12",Player1,0,0,0)
ReallyForceSpell(Myself,DRYAD_TELEPORT)~ EXIT

// Limited Wish Djinni

EXTEND_BOTTOM WISH 0
IF ~PartyHasItem("RJLAMP") G("RJLtdWish",0)~ THEN REPLY @1190 DO ~ActionOverride("Rjali",CreateCreature("RJGENIE",[-1.-1],0)) SetGlobal("RJLtdWish","GLOBAL",1)~ EXTERN WISH RJLtdWish
END

CHAIN WISH RJLtdWish
@1361
== RJGENIE @1362
== WISH @1363
== RJGENIE @1364 = @1365 DO ~ActionOverride("RJGENIE",DestroySelf())~
END
IF ~~ THEN REPLY @1360 EXTERN WISH 0

// Wish Djinni

EXTEND_BOTTOM WISH25 0
IF ~PartyHasItem("RJLAMP") G("RJWishGen",0)~ THEN REPLY @1190 DO ~SetGlobal("RJWishGen","GLOBAL",1) ActionOverride("Rjali",CreateCreature("RJGENIE",[-1.-1],0))~ EXTERN WISH25 RJWishGen
END

CHAIN WISH25 RJWishGen
@1380
== RJGENIE @1381
== WISH25 @1382
== RJGENIE @1383 = @1384 = @1385
== WISH25 @1386
== RJGENIE @1387 DO ~ActionOverride("RJGENIE",DestroySelf())~
END
IF ~~ THEN REPLY @1360 EXTERN WISH25 0

// Gypsy in Trademeet, predicting Rjali's fortune. The condition means "If you're not talking to CHARNAME and the character is Rjali".

EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0) Name("Rjali",LastTalkedToBy)~ EXTERN TRGYP02 rjrjg1
END

CHAIN TRGYP02 rjrjg1
@16
== RJALIJ @17
EXIT

// Rjali was already talking here, so we didn't need InMyArea/CD_STATE_NOTVALID checks.

// Crazy Celvan - an obligatory bad limerick. Vanilla game uses "AR0300" instead of "GLOBAL", so let's use an area variable, too.
// Here you can see WEIGHT command. It means that whatever other dialogues Celvan has, this one will be triggered first if Rjali is around. Of course, the dialogue below can be triggered only once.

CHAIN IF WEIGHT #-1 
~InParty("Rjali")
See("Rjali")
!StateCheck("Rjali",CD_STATE_NOTVALID)
Global("RjaliReactionCelvan","AR0300",0)~ THEN CELVAN rjrjc1
@18
DO ~SetGlobal("RjaliReactionCelvan","AR0300",1)~
== RJALIJ @19
END CELVAN 1

// Obligatory comments for Madame Nin's brothel in the Copper Coronet

CHAIN IF WEIGHT #-1
~NumTimesTalkedTo(0)
Name("Rjali",LastTalkedToBy)
!G("MadamUpset",1)~ THEN MADAM RjaliReactionMadam1
@20
== RJALIJ @21
EXIT

CHAIN IF WEIGHT #-1
~!NumTimesTalkedTo(0)
Name("Rjali",LastTalkedToBy)
!G("MadamUpset",1)~ THEN MADAM RjaliReactionMadam2
@22
== RJALIJ @23
EXIT

// THIS IS IMPORTANT: if you use INTERJECT, you must understand that you're cutting in the game's dialogue, replacing someone else's reaction. So my recommendation is NEVER to do it, except in one or two cases below.
// On the other hand, using I_C_T, which means INTERJECT_COPY_TRANS, is fine and good.

// ALSO, ALL INTERJECT and I_C_T commands require a UNIQUE PREFIXED NAME, because they set a UNIQUE PREFIXED VARIABLE.
// This is why I don't write INTERJECT Player1 3 p3, but INTERJECT Player1 3 RjaliSpellholdDizzy0.
// Weidu will create a variable with the same name. Same goes for your mod.

// Ensure that you can own the deArnise keep

REPLACE_STATE_TRIGGER NALIAJ 53 ~Dead("Torgal")
Global("NaliaKeepPlot","GLOBAL",0)
AreaCheck("AR1300")
Global("NaliaRaised","GLOBAL",0)~

// Ensure that you do own the deArnise keep

I_C_T NALIA 87 RjaliNALIA87
== RJALIJ IF ~InParty("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID)~ THEN @15
END

I_C_T NALIAJ 69 RjaliNALIAJ69
== RJALIJ IF ~InParty("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID)~ THEN @15
END

// Yoshimo's betrayal

I_C_T YOSHJ 113 RjaliYOSHJ113
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID)~ THEN @24
END

// Spellhold, right after the player loses his or her soul.

INTERJECT Player1 3 RjaliSpellholdDizzy0
== RJALIJ IF ~InParty("Rjali") Range("Rjali",15) !StateCheck("Rjali",CD_STATE_NOTVALID)~ THEN
@25
END
++ @26 EXTERN RJALIJ RjaliPlayer1SOA1.1
++ @27 EXTERN RJALIJ RjaliPlayer1SOA1.2
++ @28 EXTERN RJALIJ RjaliPlayer1SOA1.1

CHAIN RJALIJ RjaliPlayer1SOA1.1
@29 = @30
EXIT

CHAIN RJALIJ RjaliPlayer1SOA1.2
@30
EXIT

// Player becomes the Slayer for the first time.

I_C_T PLAYER1 5 RjaliFirstSlayerChange1
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @31
END

// Lonk is dead, inmates are free, time to battle Irenicus!

I_C_T PLAYER1 15 RjaliLonkIsDead1
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @32
END

// Romanced Rjali at the Tree of Life:

EXTEND_BOTTOM PLAYER1 33
IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) G("RjaliTreeOfLife",0)~ 
EXTERN PLAYER1 RjaliPlayer1SOA3
END

CHAIN PLAYER1 RjaliPlayer1SOA3
@33
DO ~SetGlobal("RjaliTreeOfLife","GLOBAL",1)~
END
++ @128 EXTERN RJALIJ RjaliPlayer1SOA3.1

CHAIN RJALIJ RjaliPlayer1SOA3.1
@34 = @35 = @36
END
COPY_TRANS PLAYER1 33

// Tree of Life, Irenicus is dead.

I_C_T PLAYER1 16 RjaliIrenicusIsDead1
== RJALIJ IF ~InParty("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID)~ THEN @37
END

// Entering Hell with the rest of the party.

I_C_T PLAYER1 25 RjaliEnteringHell1
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID)~ THEN @38
END

// Battling Irenicus. There are four identical interjections for four dialogue states.

I_C_T HELLJON 7 RjaliThirdBattleWithIrenicus1
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID)~ THEN @39
END

I_C_T HELLJON 8 RjaliThirdBattleWithIrenicus1
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID)~ THEN @39
END

I_C_T HELLJON 9 RjaliThirdBattleWithIrenicus1
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID)~ THEN @39
END

I_C_T HELLJON 10 RjaliThirdBattleWithIrenicus1
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID)~ THEN @39
END

// BELOW THERE ARE NON-ESSENTIAL INTERJECTIONS THAT EVERY NPC MOD HAS.

// To add them, use Infinity Explorer to read the game's dialogue and choose good places for your interjections. Weidu has a tutorial on I_C_T, if you want to learn more.
// Actually, I really recommend you to try that - it's always best when your NPC has a unique interjection, and additional interjections are always a bonus.

// Quayle and his amazing brain are back

I_C_T QUAYLE 0 RjaliQUAYLE0
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID)~ THEN @40
END

// Viconia, hello!

I_C_T VICONI 13 RjaliVICONI13
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @41
END

// Xzar is back

I_C_T LYROS 5 RjaliLYROS5
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @42
END

// Faldorn

I_C_T CEFALDOR 9 RjaliCEFALDOR9
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @43
END

I_C_T CEFALDOR 10 RjaliCEFALDOR10
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @43
END

// Bodhi, Bodhi, more Bodhi. Bodhi!

I_C_T BODHI 10 RjaliBODHI10
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @44
END

I_C_T BODHI 72 RjaliBODHI43
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @45
END

I_C_T BODHI2 4 RjaliBODHI24
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @46
END

I_C_T PPBODHI4 14 RjaliPPBODHI414
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @47
END

I_C_T C6BODHI 15 RjaliC6BODHI15
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @48
END

// Unseeing Eye quest

I_C_T GAAL 1 RjaliGAAL1
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @49
END

I_C_T GAAL 22 RjaliGAAL22
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @50
END

I_C_T CTRAITOR 2 RjaliCTRAITOR2
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @51
END

I_C_T RIFTM01 6 RjaliRIFTM016
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @52
END

I_C_T RIFTM01 28 RjaliRIFTM0128
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @53
END

// Maevar, Renal, Aran Linvail 

I_C_T MAEVAR 24 RjaliMAEVAR24
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @54
END

I_C_T MAEVAR 29 RjaliMAEVAR29
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @55
END

I_C_T EDWIN 3 RjaliEDWIN3
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @56
END

I_C_T EDWIN 16 RjaliEDWIN16
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @57
END

I_C_T RENAL 5 RjaliRENAL5
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @58
END

I_C_T RENAL 41 RjaliRENAL41
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @59
END

I_C_T ARAN 49 RjaliARAN49
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @60
END

I_C_T ARAN 53 RjaliARAN53
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @61
END

I_C_T ARAN 12 RjaliARAN12
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @62
END

I_C_T ARAN 66 RjaliARAN66
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @63
END

// Hendak and Lehtinian

I_C_T LEHTIN 17 RjaliLEHTIN17
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @64
END

I_C_T HENDAK 2 RjaliHendakInt2
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @65
END

I_C_T HENDAK 41 RjaliHendakInt41
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @66
END

I_C_T HENDAK 43 RjaliHendakInt43
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @67
END

// Bridge District, murders and Planar Prison and Fallen Paladins

I_C_T MURDGIRL 8 RjaliMURDGIRL8
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @68
END

I_C_T TANNER 8 RjaliTanner8
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @69
END

I_C_T INSPECT 43 RjaliINSPECT43
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @70
END

I_C_T MEKRAT 11 RjaliMEKRAT11
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @71
END

I_C_T RAELIS 17 RjaliRAELIS17
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @72
END

I_C_T KAYL2 10 RjaliKAYL210
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @73
END

I_C_T KAYPAL02 16 RjaliKAYPAL0216
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @74
END

// Imnesvale-related

I_C_T TOLGER 75 RjaliTOLGER75
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @75
END

I_C_T UHMAY01 12 RjaliUHMAY12
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @76
END

I_C_T UHOGRE01 5 RjaliUHOGRE01
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @77
END

// Windspear-related

I_C_T VAELASA 7 RjaliVAELASA7
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @78
END

I_C_T FIRKRA02 7 RjaliFIRKRA02
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @79
END

// de'Arnise-related

I_C_T NALIA 56 RjaliNalia56
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @80
END

I_C_T NALIA 75 RjaliNalia75
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @81
END

I_C_T KPCAPT01 1 RjaliKPCAPT011
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @82
END

I_C_T NALIA 77 RjaliRjali77
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @83
END

I_C_T NALIAJ 171 RjaliRJALIJ171
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @83
END

// Trademeet has been here for generations...

I_C_T NEEBER 8 RjaliNEEBER8
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @84
END

I_C_T CELOGAN 40 RjaliCELOGAN40
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @85
END

I_C_T TRHMER01 3 RjaliTRHMER013
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @86
END

I_C_T TRGENI01 6 RjaliTRGENI016
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @87
END

// Spellhold

I_C_T PPCOWLED 1 RjaliPPCOWLED1
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @88
END

I_C_T PPSAEM3 2 RjaliPPSAEM32
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @89
END

I_C_T PPSAEM3 55 RjaliPPSAEM355
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @90
END

I_C_T PPSAEM3 52 RjaliPPSAEM352
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @91
END

I_C_T ELEARB01 2 RjaliELEARB012
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @92
END

I_C_T PPTIAX 1 RjaliPPTIAX1
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @93
END

I_C_T PPTIAX 6 RjaliPPTIAX6
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @94
END

I_C_T PPIRENI1 4 RjaliPPIRENI14
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @95
END

I_C_T PPIRENI1 28 RjaliPPIRENI128
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @96
END

I_C_T PPIRENI2 42 RjaliPPIRENI242
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @96
END

// Sahuagin City

I_C_T SAHKNG01 33 RjaliSAHKNG0133
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @97
END

I_C_T SAHPR1 1 RjaliSAHPR11
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @98
END

I_C_T SAHPR2 12 RjaliSAHPR21
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @99
END

INTERJECT SAHPR2 12 RjaliSAHPR22
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) InParty("Ninde")~ THEN @129 EXTERN RJALIJ RjaliSAHPR23

APPEND RJALIJ

// Rjali sees that Ninde is about to throw a monkey wrench into the works

IF ~~ RjaliSAHPR23
SAY @130
++ @131 EXTERN SAHPR2 13
++ @132 GOTO RjaliSAHPR24
END

IF ~~ RjaliSAHPR24
SAY @133 = @99
COPY_TRANS SAHPR2 12
END

END

I_C_T SAHBEH01 2 RjaliSAHBEH012
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @100
END

// The Underdark 

I_C_T UDSVIR01 3 RjaliUDSVIR013
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @101
END

I_C_T UDSILVER 12 RjaliUDSILVER12
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @102
END

I_C_T UDSILVER 35 RjaliUDSILVER35
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @103
END

I_C_T UDSOLA01 56 RjaliUDSOLA0156
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @104
END

I_C_T UDSOLA01 91 RjaliUDSOLA191
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @105
END

I_C_T UDDROW04 39 RjaliUDDROW0439
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @106
END

// Chapter 6 and 7, Elhan and Demin

I_C_T C6ELHAN2 8 RjaliC6ELHAN28
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @107
END

I_C_T SUELHAN 6 RjaliSUELHAN6
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @108
END

I_C_T SUDEMIN 23 RjaliSUDEMIN23
== RJALIJ IF ~InParty("Rjali") InMyArea("Rjali") !StateCheck("Rjali",CD_STATE_NOTVALID) !InParty("O#Bran")~ THEN @109
END

APPEND RJALIJ

// Rjali gives Edwin's key.

IF ~G("RjaliGivesKey",1) InParty("Saerileth")~ RjaliGivesKey
SAY @110 = @127
++ @111 DO ~SetGlobal("RjaliGivesKey","GLOBAL",2) GiveItemCreate("EDWINKEY",Player1,0,0,0)~ EXIT
END

// Rjali refuses to be unloved.

IF ~G("RjaliReRomance",1)~ RjaliRefuses
SAY @112
++ @113 DO ~SetGlobal("RjaliReRomance","GLOBAL",0) SetGlobal("RjaliRomanceActive","GLOBAL",2)~ EXIT
END

// Rjali fixes you if your gender changes.

IF ~G("RjaliGender",1)~ RjaliGender
SAY @880
IF ~HasItemEquiped("BELT05",Player1)~ THEN REPLY @881 GOTO RjaliGender1
IF ~!HasItemEquiped("BELT05",Player1)~ THEN REPLY @886 GOTO RjaliGender3
END

IF ~~ RjaliGender1
SAY @882
IF ~~ THEN DO ~ReallyForceSpell(Player1,CLERIC_REMOVE_CURSE)
               TakePartyItem("BELT05")
               DestroyItem("BELT05")~ GOTO RjaliGender2
END

IF ~~ RjaliGender2
SAY @883
IF ~~ THEN REPLY @885 GOTO RjaliGender9
END

IF ~~ RjaliGender3
SAY @887
IF ~~ THEN DO ~ChangeGender(Player1,MALE)~ GOTO RjaliGender9
END

IF ~~ RjaliGender4
SAY @889
IF ~~ THEN REPLY @888 GOTO RjaliGender9
END

IF ~~ RjaliGender9
SAY @884
IF ~~ THEN DO ~SetGlobal("RjaliGender","GLOBAL",0)~ EXIT
END

// Rjali leaves you permanently if you turn evil.

IF ~G("RjaliLeaves",1)~ RjaliLeaves
SAY @830
IF ~G("RjaliMarried",1)~ THEN GOTO RjaliLeaves1
IF ~!G("RjaliMarried",1)~ THEN GOTO RjaliLeaves2
END

IF ~~ RjaliLeaves1
SAY @831
IF ~~ THEN DO ~
      SetGlobal("RjaliMarried","GLOBAL",2)
      GiveItem("RJRNG",Player1)
    ~ GOTO RjaliLeaves2
END

IF ~~ RjaliLeaves2
SAY @832
IF ~~ THEN DO ~
      SetGlobal("RjaliLeaves","GLOBAL",2)
      SetGlobal("RjaliRomanceActive","GLOBAL",0)
      LeaveParty()
      EscapeArea()
    ~ EXIT
END

// LOVETALKS START HERE

// Talk 1. Do you remember me.

IF ~G("RjaliTalk",2)~ t1
SAY @170 
++ @171 + t1.1
++ @172 + t1.2
++ @173 + t1.3
++ @174 + t0
END

IF ~~ t0
SAY @175
IF ~~ DO ~StartCutSceneMode()
          IncrementGlobal("RjaliTalk","GLOBAL",-1)
          RealSetGlobalTimer("RjaliRomance","GLOBAL",RJ_FAST)
          EndCutSceneMode()~ EXIT
END

IF ~~ t0.1
SAY @176
IF ~~ DO ~StartCutSceneMode()
          IncrementGlobal("RjaliTalk","GLOBAL",1)
          RealSetGlobalTimer("RjaliRomance","GLOBAL",RJ_TALK)
          EndCutSceneMode()~ EXIT
END

// Note how t0 can be used for ALL lovetalks - it decrements RjaliTalk and resets the timer.

IF ~~ t1.1
SAY @177
IF ~~ + t1.4
END

IF ~~ t1.2
SAY @178
IF ~~ + t1.4
END

IF ~~ t1.3
SAY @179
IF ~~ + t1.4
END

IF ~~ t1.4
SAY @190
++ @191 + t1.9
++ @192 + t1.9
++ @193 + t1.9
END

IF ~~ t1.9
SAY @194 = @195
++ @196 + t1.10
++ @197 + t1.10
END

IF ~~ t1.10
SAY @198 = @199 = @200
++ @205 + t1.12
++ @201 + t1.11
END

IF ~~ t1.11
SAY @202 = @203 = @204
IF ~~ + t0.1
END

IF ~~ t1.12
SAY @206
++ @207 + t1.13
END

IF ~~ t1.13
SAY @208
++ @183 + t1.14
++ @209 + t1.11
END

IF ~~ t1.14
SAY @184 = @185 = @186
++ @187 + t1.15
END

IF ~~ t1.15
SAY @188
++ @189 + t1.11
END

// Talk 2. Getting ready for bed.

IF ~G("RjaliTalk",4)~ t2
SAY @640
++ @641 + t2.1
++ @642 + t2.2
END

IF ~~ t2.1
SAY @643
IF ~~ THEN GOTO t2.3
END

IF ~~ t2.2
SAY @644
IF ~~ + t2.3
END

IF ~~ t2.3
SAY @645
++ @646 + t2.4
END

IF ~~ t2.4
SAY @647 = @648
IF ~~ DO ~RealSetGlobalTimer("RjaliRomance","GLOBAL",RJ_TALK)
          IncrementGlobal("RjaliTalk","GLOBAL",1)
          RealSetGlobalTimer("RjaliDjinnTimer","GLOBAL",RJ_FAST)
          IncrementGlobal("RJCntBedded","GLOBAL",1)
          StartCutSceneMode()
          StartCutScene("Cut34a")~ EXIT
END

// Talk 3. Tacos.

IF ~G("RjaliTalk",6)~ t3
SAY @210
++ @211 + t3.1
++ @212 + t3.2
END

IF ~~ t3.1
SAY @213 = @214
IF ~~ + t3.2
END

IF ~~ t3.2
SAY @215
IF ~~ + t3.3
END

IF ~~ t3.3
SAY @216
++ @217 + t3.3.1
++ @218 + t3.3.1
END

IF ~~ t3.3.1
SAY @219
++ @220 + t3.4
END

IF ~~ t3.4
SAY @221 = @222 = @223 = @224 = @225 = @226 = @227 = @228
++ @229 + t3.5
++ @230 + t3.6
++ @231 + t3.6
END

IF ~~ t3.5
SAY @219 = @233
IF ~~ + t3.6
END

IF ~~ t3.6
SAY @234
IF ~~ + t0.1
END

// Talk 4. Shadow Thieves.

IF ~G("RjaliTalk",8)~ t4
SAY @240
++ @241 + t4.2
++ @242 + t4.1
END

IF ~~ t4.1
SAY @243
IF ~~ + t4.2
END

IF ~~ t4.2
SAY @244
++ @245 + t4.3
++ @246 + t4.3
END

IF ~~ t4.3
SAY @247 = @248
++ @249 + t4.4
END

IF ~~ t4.4
SAY @250 = @251 = @252
++ @253 + t4.5
++ @254 + t4.5
END

IF ~~ t4.5
SAY @255 = @256
++ @257 + t4.6
END

IF ~~ t4.6
SAY @258
IF ~~ + t0.1
END

// Talk 5. Children not having fun.

IF ~G("RjaliTalk",10)~ t5
SAY @270
++ @271 + t5.1
++ @272 + t5.2
++ @174 + t0
END

IF ~~ t5.1
SAY @273
IF ~~ + t5.2
END

IF ~~ t5.2
SAY @274 = @275
++ @276 + t5.3
++ @277 + t5.3
END

IF ~~ t5.3
SAY @278 = @279 = @280 = @281
++ @282 + t5.4
++ @283 + t5.5
END

IF ~~ t5.4
SAY @284
IF ~~ + t5.5
END

IF ~~ t5.5
SAY @285
IF ~~ + t0.1
END

// Talk 6. As a little girl.

IF ~G("RjaliTalk",12)~ t6
SAY @290
++ @291 + t6.1
++ @292 + t6.1
++ @174 + t0
END

IF ~~ t6.1
SAY @293 = @294 = @295 = @296
++ @297 + t6.2
++ @298 + t6.3
END

IF ~~ t6.2
SAY @299
IF ~~ + t6.3
END

IF ~~ t6.3
SAY @300 = @301
++ @302 + t6.4
++ @303 + t6.4
END

IF ~~ t6.4
SAY @304 = @305
IF ~~ + t0.1
END

// Talk 7. Losing my touch.

IF ~G("RjaliTalk",14)~ t7
SAY @450 
++ @451 + t7.1
++ @452 + t7.1
++ @174 + t0
END

IF ~~ t7.1
SAY @453
++ @454 + t7.2
++ @455 + t7.2
END

IF ~~ t7.2
SAY @458
IF ~~ + t7.5
END

IF ~~ t7.5
SAY @461 = @462
++ @463 + t7.6
END

IF ~~ t7.6
SAY @464
++ @465 + t7.7
++ @466 + t7.8
++ @467 + t7.9
END

IF ~~ t7.7
SAY @468
IF ~~ + t7.10
END

IF ~~ t7.8
SAY @469
IF ~~ + t7.10
END

IF ~~ t7.9
SAY @470
IF ~~ + t7.10
END

IF ~~ t7.10
SAY @471 = @472
IF ~~ THEN REPLY @473 GOTO t0.1
END

// Talk 8. Busted.

IF ~G("RjaliTalk",16)~ t8
SAY @390 
++ @391 + t8.1
++ @392 + t8.2
++ @393 + t8.3
++ @394 + t8.4
++ @174 + t0
END

IF ~~ t8.1
SAY @395 = @396
IF ~~ + t8.5
END

IF ~~ t8.2
SAY @397
IF ~~ + t8.1
END

IF ~~ t8.3
SAY @398
IF ~~ + t8.5
END

IF ~~ t8.4
SAY @399
IF ~~ + t8.1
END

IF ~~ t8.5
SAY @400 = @401
++ @402 + t8.6
++ @403 + t8.7
++ @404 + t8.7
END

IF ~~ t8.6
SAY @405
IF ~~ + t8.7
END

IF ~~ t8.7
SAY @406 = @407
++ @409 + t8.8
++ @410 + t8.9
++ @411 + t8.10
END

IF ~~ t8.8
SAY @412
IF ~~ + t8.10
END

IF ~~ t8.9
SAY @413
IF ~~ + t8.10
END

IF ~~ t8.10
SAY @414 = @415
++ @416 + t8.11
END

IF ~~ t8.11
SAY @417
++ @418 + t8.12
END

IF ~~ t8.12
SAY @419
IF ~~ + t0.1
END

// Talk 9. I love you.

IF ~G("RjaliTalk",18)~ t9
SAY @370 
++ @371 + t9.1
++ @372 + t9.2
++ @174 + t0
END

IF ~~ t9.1
SAY @373
IF ~~ + t9.2
END

IF ~~ t9.2
SAY @374 = @375
++ @376 + t9.3
END

IF ~~ t9.3
SAY @377
++ @378 + t9.4
END

IF ~~ t9.4
SAY @379
++ @380 + t9.5
END

IF ~~ t9.5
SAY @381
++ @382 + t9.6
END

IF ~~ t9.6
SAY @383
++ @384 + t9.7
END

IF ~~ t9.7
SAY @385
IF ~~ + t0.1
END

// Talk 10. Practice makes perfect.

IF ~G("RjaliTalk",20)~ t10
SAY @310 = @311
++ @312 + t10.1
++ @313 + t10.2
++ @314 + t10.3
++ @174 + t0
END

IF ~~ t10.1
SAY @315
++ @337 + t10.4
END

IF ~~ t10.2
SAY @316
++ @337 + t10.4
END

IF ~~ t10.3
SAY @317
++ @337 + t10.4
END

IF ~~ t10.4
SAY @338
++ @339 + t10.4.1
END

IF ~~ t10.4.1
SAY @318 = @319 = @320
++ @321 + t10.5
++ @322 + t10.5
++ @323 + t10.5
END

IF ~~ t10.5
SAY @324 = @325
++ @326 + t10.6
++ @327 + t10.6
++ @328 + t10.7
END

IF ~~ t10.6
SAY @329
IF ~~ + t10.8
END

IF ~~ t10.7
SAY @330
IF ~~ + t10.8
END

IF ~~ t10.8
SAY @331 = @332
++ @333 + t10.9
END

IF ~~ t10.9
SAY @334 = @335
++ @336 + t0.1
END

// Talk 11. Orphanage and handfast.

IF ~G("RjaliTalk",22)~ t11
SAY @340
++ @341 + t11.1
END

IF ~~ t11.1
SAY @342 = @343 = @344
IF ~G("RjaliMR",1)~ THEN REPLY @345 GOTO t11.2
IF ~G("RjaliMR",0)~ THEN REPLY @345 DO ~IncrementGlobal("RjaliTalk","GLOBAL",2)~ GOTO t11.2
END

IF ~~ t11.2
SAY @346
++ @347 + t11.3
END

IF ~~ t11.3
SAY @348 = @349
++ @350 + t11.4
END

IF ~~ t11.4
SAY @351
++ @352 + t11.5
END

IF ~~ t11.5
SAY @353 = @354
++ @355 + t11.6
END

IF ~~ t11.6
SAY @356 = @357
++ @358 + t11.7
END

IF ~~ t11.7
SAY @359 = @360
++ @361 + t11.8
END

IF ~~ t11.8
SAY @362 = @363 = @364 = @365 = @366
++ @367 DO ~RealSetGlobalTimer("RjaliRomance","GLOBAL",RJ_TALK)
            IncrementGlobal("RjaliTalk","GLOBAL",1)
            SetGlobal("RjaliMarried","GLOBAL",1)
            IncrementGlobal("RJCntWedded","GLOBAL",1)
            AddJournalEntry(@9001,INFO) 
            GiveItemCreate("RJRNG","Rjali",0,0,0)~ EXIT
END

// Talk 12. Start scout.

IF ~G("RjaliTalk",24)~ t12
SAY @420 
++ @421 + t12.2
++ @174 + t0.1
END

IF ~~ t12.2
SAY @425
++ @426 + t12.3
++ @427 + t12.3
END

IF ~~ t12.3
SAY @428
++ @429 + t12.4
END

IF ~~ t12.4
SAY @430 = @431
++ @432 + t12.5
END

IF ~~ t12.5
SAY @433 = @434 = @435
++ @436 + t12.6
END

IF ~~ t12.6
SAY @437 = @438
++ @439 + t12.7
++ @440 + t12.7
END

IF ~~ t12.7
SAY @441 = @442
IF ~~ DO ~SetGlobal("RjaliScouts","GLOBAL",1)~ + t0.1
END

// Talk 13. Dragons and tiaras.

IF ~G("RjaliTalk",26)~ t13
SAY @480 
++ @481 + t13.1
++ @482 + t13.1
++ @174 + t0
END

IF ~~ t13.1
SAY @483
++ @484 + t13.2
END

IF ~~ t13.2
SAY @485
++ @486 + t13.6
END

IF ~~ t13.6
SAY @497 = @498
++ @499 + t0.1
END

// Talk 14. All this gold.

IF ~G("RjaliTalk",28)~ t14
SAY @510
++ @511 + t14.1
++ @174 + t0
END

IF ~~ t14.1
SAY @512 = @513
++ @514 + t14.3
++ @515 + t14.2
END

IF ~~ t14.2
SAY @516 = @517
++ @518 + t14.3
END

IF ~~ t14.3
SAY @519 = @520
++ @521 + t14.4
++ @522 + t14.4
++ @523 + t14.4
END

IF ~~ t14.4
SAY @524 = @525
IF ~~ + t0.1
END

// Talk 15. Dealing with minions.

IF ~G("RjaliTalk",30)~ t15
SAY @530 
++ @531 + t15.1
END

IF ~~ t15.1
SAY @532 = @533 = @534
++ @535 + t15.2
++ @536 + t15.2
++ @537 + t15.3
END

IF ~~ t15.2
SAY @538
IF ~~ + t15.4
END

IF ~~ t15.3
SAY @539
IF ~~ + t15.4
END

IF ~~ t15.4
SAY @540
++ @541 + t15.7
++ @542 + t15.5
++ @543 + t15.6
END

IF ~~ t15.5
SAY @544
IF ~~ + t15.7
END

IF ~~ t15.6
SAY @545
IF ~~ + t15.7
END

IF ~~ t15.7
SAY @546 = @547 = @548 = @549
IF ~~ + t0.1
END

// Talk 16. Reminisce.

IF ~G("RjaliTalk",32)~ t16
SAY @850 = @851 = @852
++ @853 + t16.1
++ @854 + t16.2
END

IF ~~ t16.1
SAY @855
++ @856 + t16.3
END

IF ~~ t16.2
SAY @857 = @858
++ @859 + t16.3
END

IF ~~ t16.3
SAY @860
++ @861 + t16.4
++ @862 + t16.5
END

IF ~~ t16.4
SAY @863
++ @864 + t16.6
END

IF ~~ t16.5
SAY @865
++ @866 + t16.6
END

IF ~~ t16.6
SAY @867
++ @868 + t0.1
END

// Talk 17. Getting crude.

IF ~G("RjaliTalk",34)~ t17
SAY @650
++ @651 + t17.0
END

IF ~~ t17.0
SAY @652
++ @653 + t17.1
END

IF ~~ t17.1
SAY @654 = @655 = @656
++ @657 + t17.2
++ @658 + t17.2
++ @659 + t17.2
END

IF ~~ t17.2
SAY @660 = @661
IF ~~ DO ~RealSetGlobalTimer("RjaliRomance","GLOBAL",RJ_TALK)
          IncrementGlobal("RjaliTalk","GLOBAL",1)
          Wait(1) 
          StartCutSceneMode() 
          StartCutScene("Cut34a")~ EXIT
END

// Talk 18. Post crudeness.

IF ~G("RjaliTalk",36)~ t18
SAY @670
++ @671 + t18.1
++ @672 + t18.0
END

IF ~~ t18.0
SAY @673
IF ~~ + t18.1
END

IF ~~ t18.1
SAY @674 = @675
++ @676 + t18.1a
END

IF ~~ t18.1a
SAY @677
++ @678 + t18.3
++ @679 + t18.4
END

IF ~~ t18.3
SAY @680
IF ~~ DO ~RealSetGlobalTimer("RjaliRomance","GLOBAL",RJ_TALK)
          IncrementGlobal("RjaliTalk","GLOBAL",1)
          Wait(1)
          StartCutSceneMode() 
          StartCutScene("Cut34a")~ EXIT
END

IF ~~ t18.4
SAY @681 = @682
IF ~~ + t0.1
END

// Talk 19. You make me happy.

IF ~G("RjaliTalk",38)~ t19
SAY @690 
++ @691 + t19.1
++ @692 + t19.1
END

IF ~~ t19.1
SAY @693 = @694 = @695 = @696
++ @697 + t19.3
++ @698 + t19.3
++ @699 + t19.3
END

IF ~~ t19.3
SAY @700 = @701
++ @702 + t19.4
++ @703 + t19.4
END

IF ~~ t19.4
SAY @704 = @705
IF ~~ + t0.1
END

// Talk 20. Cornering Irenicus.

IF ~G("RjaliTalk",40)~ t20
SAY @560
= @561
++ @562 + t20.1
++ @563 + t20.3
++ @564 + t20.2
END

IF ~~ t20.1
SAY @565
IF ~~ + t20.3
END

IF ~~ t20.2
SAY @566
IF ~~ + t20.3
END

IF ~~ t20.3
SAY @567 = @568
++ @569 + t20.5
++ @570 + t20.4
++ @571 + t20.5
END

IF ~~ t20.4
SAY @572
IF ~~ + t20.5
END

IF ~~ t20.5
SAY @573 = @574
++ @575 + t20.6
++ @576 + t20.6
++ @577 + t20.6
END

IF ~~ t20.6
SAY @578 = @579
IF ~~ + t0.1
END

// Extra talks: On entering the Promenade

IF ~G("RjaliCircus",1)~ rjcirc0
SAY @1120 = @1121
++ @1122 + rjcirc0.1
END

IF ~~ rjcirc0.1
SAY @1123 = @1124
IF ~~ THEN REPLY @1125 DO ~SetGlobal("RjaliCircus","GLOBAL",2)
                           AddJournalEntry(@9057,INFO)~ EXIT
END

// Extra talks: Sulking about not seeing the circus

IF ~G("RjaliCircus",3)~ rjcirc1
SAY @1130
IF ~~ THEN GOTO rjcirc1.1
END

IF ~~ rjcirc1.1
SAY @1132
IF ~~ THEN DO ~SetGlobal("RjaliCircus","GLOBAL",4)
               AddJournalEntry(@9058,INFO)~ EXIT
END

// Extra talks: Rjali comments on the lamp

IF ~G("RjaliLamp",1)~ rjlamp
SAY @1080 = @1081 = @1082 = @1083
IF ~~ THEN REPLY @1084 DO ~SetGlobal("RjaliLamp","GLOBAL",2)~ EXIT
END

// Extra talks: Jini's call for help on Adahn quest

IF ~G("RJiniiJIDAD",2)~ jt1
SAY @900
++ @901 DO ~SetGlobal("RJiniiJIDAD","GLOBAL",3)~ + jt1.1
END

IF ~~ jt1.1
SAY @902 = @903
+ ~G("RjaliKalah",0)~ + @904 + jt1.2
+ ~!G("RjaliKalah",0)~ + @904 + jt1.3
END

IF ~~ jt1.2
SAY @905
++ @906 + jt1.4
END

IF ~~ jt1.3
SAY @910
++ @906 + jt1.4
END

IF ~~ jt1.4
SAY @907 = @908
++ @909 EXIT
END

// Extra talks: Rjali prompts after Bodhi dies

IF ~G("RJBodhiDead",1)~ mt0
SAY @950 = @951
++ @952 DO ~SetGlobal("RJBodhiDead","GLOBAL",2)~ EXIT
END

IF ~G("RJBodhiDead",3)~ mt0.1
SAY @960 = @961
++ @962 DO ~SetGlobalTimer("RJiniiMRTimer","GLOBAL",RJ_TALK)
            SetGlobal("RJBodhiDead","GLOBAL",4)~ EXIT
END

// Extra talks: Morte quest - Piller of Skulls

IF ~G("RJiniiJIDMR",4)~ mt1
SAY @930 = @931
++ @932 DO ~SetGlobal("RJiniiJIDMR","GLOBAL",5)~ EXIT
END

IF ~G("RJiniiJIDMR",7)~ mt2
SAY @940
IF ~~ THEN REPLY @941 DO ~SetGlobal("RJiniiJIDMR","GLOBAL",8)
                          SetGlobal("RJPortStop","GLOBAL",0)~ EXIT
END

// Extra talks: Sahuagin city

IF ~G("RjaliTalkSahuagin",1)~ xt1
SAY @590
++ @591 + xt1.1
++ @592 + xt1.2
END

IF ~~ xt1.1
SAY @595
IF ~~ + xt1.2
END

IF ~~ xt1.2
SAY @596
++ @597 + xt1.3
++ @598 + xt1.4
END

IF ~~ xt1.3
SAY @599
IF ~~ + xt1.4
END

IF ~~ xt1.4
SAY @600 = @601
++ @602 + xt1.5
++ @603 + xt1.5
END

IF ~~ xt1.5
SAY @604 = @605
IF ~~ DO ~IncrementGlobal("RjaliTalkSahuagin","GLOBAL",1)~ EXIT
END

// Extra talks: An hour into Chapter 5.

IF ~G("RjaliTalkSoul",1)~ xt3
SAY @610 
++ @611 + xt3.1
++ @612 + xt3.1
++ @613 + xt3.1
END

IF ~~ xt3.1
SAY @614 = @615
++ @616 + xt3.2
++ @617 + xt3.2
++ @618 + xt3.2
++ @619 + xt3.2
END

IF ~~ xt3.2
SAY @620 = @621 = @622
++ @623 + xt3.3
++ @624 + xt3.4
++ @625 + xt3.5
END

IF ~~ xt3.3
SAY @626
IF ~~ + xt3.5
END

IF ~~ xt3.4
SAY @627
IF ~~ + xt3.5
END

IF ~~ xt3.5
SAY @628 = @629
IF ~~ DO ~IncrementGlobal("RjaliTalkSoul","GLOBAL",1)~ EXIT
END

// Extra talks: An hour into Chapter 5.

IF ~G("RjaliRemindDaleson",1)~ ch6remind
SAY @800 = @801
++ @802 DO ~SetGlobal("RjaliRemindDaleson","GLOBAL",2)~ EXIT
++ @803 DO ~SetGlobal("RjaliRemindDaleson","GLOBAL",2)~ EXIT
END

// Extra talks: Chapter 4 entry.

IF ~G("RjaliChapter4",1)~ ch4
SAY @710
++ @711 + ch4.2
++ @712 + ch4.1
++ @713 + ch4.2
END

IF ~~ ch4.1
SAY @714
IF ~~ + ch4.2
END

IF ~~ ch4.2
SAY @715 = @716
++ @717 + ch4.3
++ @718 + ch4.3
++ @719 + ch4.4
END

IF ~~ ch4.3
SAY @720
IF ~~ + ch4.4
END

IF ~~ ch4.4
SAY @721 = @722
++ @723 + ch4.5
++ @724 + ch4.6
++ @725 + ch4.7
END

IF ~~ ch4.5
SAY @726
IF ~~ + ch4.7
END

IF ~~ ch4.6
SAY @727
IF ~~ + ch4.7
END

IF ~~ ch4.7
SAY @728
IF ~~ DO ~SetGlobal("RjaliChapter4","GLOBAL",2)~ EXIT
END

// Extra talks: Chapter 4 approach to Spellhold - Ravel orphans remembered

IF ~G("RjaliRVOrphans",1)~ sh4
SAY @1050
++ @1051 + sh4.1
END

IF ~~ sh4.1
SAY @1052
++ @1053 + sh4.2
END

IF ~~ sh4.2
SAY @1054
++ @1055 + sh4.3
END

IF ~~ sh4.3
SAY @1056 = @1057
++ @1058 DO ~SetGlobal("RjaliRVOrphans","GLOBAL",2) SetGlobal("RJRavelOrphans","GLOBAL",1)~ EXIT
END

// Extra talks: Chapter 5 entry.

IF ~G("RjaliChapter5",1)~ ch5
SAY @740 = @741 = @742 = @743
++ @744 + ch5.1
++ @745 + ch5.2
END

IF ~~ ch5.1
SAY @746
IF ~~ + ch5.3
END

IF ~~ ch5.2
SAY @747
IF ~~ + ch5.3
END

IF ~~ ch5.3
SAY @748
++ @749 + ch5.4
++ @750 + ch5.4
++ @751 + ch5.4
++ @752 + ch5.4
END

IF ~~ ch5.4
SAY @753 = @754
++ @755 + ch5.5
++ @756 + ch5.6
++ @757 + ch5.7
END

IF ~~ ch5.5
SAY @758
IF ~~ + ch5.7
END

IF ~~ ch5.6
SAY @759
IF ~~ + ch5.7
END

IF ~~ ch5.7
SAY @760
IF ~~ DO ~SetGlobal("RjaliChapter5","GLOBAL",2)~ EXIT
END

// Extra talks: Chapter 7 entry

IF ~G("RjaliChapter7",1)~ ch7
SAY @770 
++ @771 + ch7.1
++ @772 + ch7.1
END

IF ~~ ch7.1
SAY @773 = @774 = @775
++ @776 + ch7.2
++ @777 + ch7.4
++ @778 + ch7.3
END

IF ~~ ch7.2
SAY @779
IF ~~ + ch7.4
END

IF ~~ ch7.3
SAY @780
IF ~~ + ch7.4
END

IF ~~ ch7.4
SAY @781 = @782 = @783
++ @784 + ch7.5
++ @785 + ch7.6
++ @786 + ch7.6
++ @787 + ch7.6
END

IF ~~ ch7.5
SAY @788
IF ~~ + ch7.6
END

IF ~~ ch7.6
SAY @789 = @790 = @791 = @792
IF ~~ DO ~SetGlobal("RjaliChapter7","GLOBAL",2)~ EXIT
END

// Extra talks: Adahn quest - entry to Ravel's maze

IF ~G("RJiniiJIDAD",9)~ rjadq1
SAY @920 = @921
++ @922 + rjadq1.1
END

IF ~~ rjadq1.1
SAY @923 = @924
++ @925 DO ~SetGlobal("RJiniiJIDAD","GLOBAL",10)~ EXIT
END

// Extra talks: Phaere Innuendo

IF ~G("PhaereInnuendo",2)
    G("RjaliSleptPhaere",1)~ THEN BEGIN RjaliSleptPhaere
SAY @114
++ @115 DO ~SetGlobal("RjaliSleptPhaere","GLOBAL",2)~ GOTO RjaliSleptPhaere2
END

IF ~~ THEN BEGIN RjaliSleptPhaere2
SAY @116
++ @117 GOTO RjaliSleptPhaere1ProudEnd
END

IF ~~ THEN BEGIN RjaliSleptPhaere1ProudEnd
SAY @118
IF ~~ THEN EXIT
END

IF ~G("PhaereInnuendo",3)
    G("RjaliSleptPhaere",1) ~ THEN BEGIN RjaliNoSleptPhaere
SAY @119
++ @120 DO ~SetGlobal("RjaliSleptPhaere","GLOBAL",2)~ GOTO RjaliNoSleptPhaere1
END

IF ~~ THEN BEGIN RjaliNoSleptPhaere1
SAY @121
+ ~G("RjaliMR",1)~ + @122 GOTO RjaliNoSleptPhaere2
+ ~G("RjaliMR",0)~ + @122 GOTO RjaliNoSleptPhaere3
END

IF ~~ THEN BEGIN RjaliNoSleptPhaere2
SAY @123
++ @124 GOTO RjaliNoSleptPhaere3
END

IF ~~ THEN BEGIN RjaliNoSleptPhaere3
SAY @125
IF ~~ THEN EXIT
END
                                                                           
END

// Extra talks: On seeing Fay for the 1st time

CHAIN IF ~G("RjaliFay1st",1)~ THEN PLAYER1 rjfay1
@1230 DO ~SetGlobal("RjaliFay1st","GLOBAL",2)~
== RJALIJ @1231
== PLAYER1 @1232 = @1233 = @1234
== RJALIJ @1235 = @1236 = @1237 = @1238 = @1239
== RJFAY @1240 = @1241 = @1242 = @1243
== RJALIJ @1244
== PLAYER1 @1245
== RJALIJ @1246 = @1247 = @1248 = @1249
== RJFAY @1250
END
IF ~~ THEN EXIT

// Extra talks: After Morte's resurrection

CHAIN IF ~G("RJMorteReborn",3)~ THEN PLAYER1 mt3
@970 = @971 DO ~SetGlobal("RJMorteReborn","GLOBAL",4)~
== RJGRACEJ IF ~InParty("RJGrace")~ THEN @972
== RJANNAHJ IF ~InParty("RJAnnah")~ THEN @973
== RJFAY IF ~G("RJParkFY",0)~ THEN @977
== RJALIJ @974
== PLAYER1 @975 = @976
END
IF ~~ THEN EXIT
