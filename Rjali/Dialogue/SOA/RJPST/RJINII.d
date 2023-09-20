
BEGIN RJINII

// Call for Adahn quest

IF ~G("RJiniiJIDAD",1)~ THEN BEGIN jidad
SAY @30 = @31
IF ~~ THEN REPLY @32 DO ~SetGlobal("RJiniiJIDAD","GLOBAL",2)
                         AddJournalEntry(@9047,INFO)
                         DestroySelf()~ EXIT
END

// Call for Morte quest

IF ~G("RJiniiJIDMR",1)~ THEN BEGIN jidmr
SAY @40 = @41
IF ~~ THEN REPLY @42 DO ~SetGlobal("RJiniiJIDMR","GLOBAL",2)
                         AddJournalEntry(@9048,INFO)
                         DestroySelf()~ EXIT
END

// Call for Nordom quest

IF ~G("RJiniiJIDND",1)~ THEN BEGIN jidnd
SAY @110 = @111
IF ~~ THEN REPLY @112 DO ~SetGlobal("RJiniiJIDND","GLOBAL",2)
                          AddJournalEntry(@9050,INFO)
                          DestroySelf()~ EXIT
END

// Call for Dakkon quest

IF ~G("RJiniiJIDDK",1)~ THEN BEGIN jiddk
SAY @120 = @121 = @122
IF ~~ THEN REPLY @123 DO ~SetGlobal("RJiniiJIDDK","GLOBAL",2)
                          AddJournalEntry(@9051,INFO)
                          DestroySelf()~ EXIT
END

// Call to remind

IF ~G("RJiniiJID1",1)~ THEN BEGIN jid1
SAY @60 = @61
IF ~~ THEN REPLY @62 DO ~SetGlobal("RJiniiJID1","GLOBAL",2) DestroySelf()~ EXIT
END

// Call for Ravel's orphans

IF ~G("RJRavelOrphans",3)~ THEN BEGIN jro1
SAY @100
IF ~~ THEN REPLY @101 DO ~SetGlobal("RJRavelOrphans","GLOBAL",4) DestroySelf()~ EXIT
END

// PID Flirts

IF ~G("RJiniiPID",1)~ THEN BEGIN jf
SAY @0

IF ~Global("jf1","LOCALS",0) RandomNum(3,1)~ THEN REPLY @10 DO ~SetGlobal("jf1","LOCALS",1)~ GOTO jf1.1
IF ~Global("jf1","LOCALS",0) RandomNum(3,2)~ THEN REPLY @10 DO ~SetGlobal("jf1","LOCALS",1)~ GOTO jf1.2
IF ~Global("jf1","LOCALS",0) RandomNum(3,3)~ THEN REPLY @10 DO ~SetGlobal("jf1","LOCALS",1)~ GOTO jf1.3

IF ~Global("jf2","LOCALS",0)~ THEN REPLY @20 DO ~SetGlobal("jf2","LOCALS",1)~ GOTO jf2

IF ~G("RJiniiJID1",0) G("RJiniiJIDAD",99)~ THEN REPLY @70 DO ~SetGlobal("RJiniiJID1","GLOBAL",98)~ GOTO jf3

IF ~Global("jf4","LOCALS",0) RandomNum(3,1)~ THEN REPLY @80 DO ~SetGlobal("jf4","LOCALS",1)~ GOTO jf4.1
IF ~Global("jf4","LOCALS",0) RandomNum(3,2)~ THEN REPLY @80 DO ~SetGlobal("jf4","LOCALS",1)~ GOTO jf4.2
IF ~Global("jf4","LOCALS",0) RandomNum(3,3)~ THEN REPLY @80 DO ~SetGlobal("jf4","LOCALS",1)~ GOTO jf4.3

IF ~G("RJRavelOrphans",1)~ THEN REPLY @90 DO ~SetGlobal("RJRavelOrphans","GLOBAL",2)~ GOTO jf5

++ @3 + jfx

END

IF ~~ jfx
SAY @1
IF ~~ THEN REPLY @2 DO ~SetGlobal("RJiniiPID","GLOBAL",0)
                        SetGlobal("jf1","LOCALS",0)
                        SetGlobal("jf4","LOCALS",0)
                        DestroySelf()~ EXIT
END

IF ~~ jf1.1
SAY @11
IF ~~ THEN REPLY @14 GOTO jf
END

IF ~~ jf1.2
SAY @12
IF ~~ THEN REPLY @14 GOTO jf
END

IF ~~ jf1.3
SAY @13
IF ~~ THEN REPLY @14 GOTO jf
END

IF ~~ jf2
SAY @21 = @22 = @23 = @24 = @25 = @26
IF ~~ THEN REPLY @27 GOTO jf2.1
END

IF ~~ jf2.1
SAY @28
IF ~~ THEN REPLY @29 GOTO jf
END

IF ~~ jf3
SAY @71
IF ~~ THEN REPLY @72 GOTO jf3.1
END

IF ~~ jf3.1
SAY @74 = @75 = @76
IF ~~ THEN REPLY @29 DO ~RealSetGlobalTimer("RJinii1Timer","GLOBAL",RJ_FLIRT)~ GOTO jf
END

IF ~~ jf4.1
SAY @81
IF ~~ THEN REPLY @82 GOTO jf
END

IF ~~ jf4.2
SAY @83 = @84
IF ~~ THEN REPLY @82 GOTO jf
END

IF ~~ jf4.3
SAY @85
IF ~~ THEN REPLY @86 GOTO jf
END

IF ~~ jf5
SAY @91 = @92
IF ~~ THEN REPLY @93 GOTO jf5.1
END

IF ~~ jf5.1
SAY @94
IF ~~ THEN REPLY @95 GOTO jf5.2
END

IF ~~ jf5.2
SAY @96
IF ~~ THEN REPLY @97 GOTO jf
END
