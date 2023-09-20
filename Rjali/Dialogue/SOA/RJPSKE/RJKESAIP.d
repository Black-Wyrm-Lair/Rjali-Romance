
BEGIN RJKESAIP

// Kicking Kesai out

IF ~G("RJParkKE",0)~ keout1
SAY @1
IF ~~ THEN REPLY @5 GOTO keout1.1
IF ~~ THEN REPLY @10 GOTO keout1.8
IF ~G("RJKesaiRomanceActive",1)~ THEN REPLY @8 GOTO keout1.9
END

IF ~~ keout1.1
SAY @6
IF ~~ THEN REPLY @7 DO ~SetGlobal("RJParkKE","GLOBAL",1)
                        IncrementGlobal("RJCntParked","GLOBAL",1)
                        ReallyForceSpellRES("RJPLYKS",Myself)
                        SetGlobal("RJPRTKS","GLOBAL",1)
                        MoveBetweenAreas("AR1307",[1458.627],20)~ EXIT
END

IF ~~ keout1.8
SAY @11
IF ~~ THEN REPLY @12 DO ~JoinParty()~ EXIT
END

IF ~~ keout1.9
SAY @9 = @0
IF ~~ THEN DO ~StartCutSceneMode()
               StartCutScene("RJKE2KS")~ EXIT
END

// Picking Kesai up

IF ~G("RJParkKE",1) G("RJKesaiMet",0)~ kein0
SAY @70
IF ~~ THEN DO ~SetGlobal("RJKesaiMet","GLOBAL",1)
               ActionOverride(Player1,SetDialog("PLAYER1"))~ GOTO kein0.1
END

IF ~~ kein0.1
SAY @71
IF ~~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ GOTO kein0.2
END

IF ~~ kein0.2
SAY @72
IF ~~ THEN DO ~ActionOverride(Player1,SetDialog("PLAYER1"))~ EXTERN PLAYER1 kein0.3
END

IF ~G("RJParkKE",1)~ kein1
SAY @20
++ @21 + kein1.1
+ ~G("RJKesaiRomanceActive",1)~ + @22 + kein1.3
+ ~RandomNum(3,1)~ + @26 + kein2
+ ~RandomNum(3,2)~ + @26 + kein3
+ ~RandomNum(3,3)~ + @26 + kein4
+ ~G("RJKesaiRomanceActive",2)~ + @27 + kein5
+ ~G("RJKesaiRomanceActive",2)~ + @28 + kein6
+ ~G("RJKesaiRomanceActive",2)~ + @29 + kein7
END

IF ~~ kein1.1
SAY @23
IF ~~ THEN DO ~SetGlobal("RJParkKE","GLOBAL",0)
               IncrementGlobal("RJCntParked","GLOBAL",-1)
               JoinParty()~ EXIT
END

IF ~~ kein1.3
SAY @24
IF ~~ THEN REPLY @25 DO ~~ EXIT
END

IF ~~ THEN BEGIN kein2
  SAY @33 = @34
  IF ~~ THEN REPLY @35 EXIT
END

IF ~~ THEN BEGIN kein3
  SAY @47 = @48
  IF ~~ THEN REPLY @49 EXIT
END

IF ~~ THEN BEGIN kein4
  SAY @36 = @37
  IF ~~ THEN REPLY @38 EXIT
END

IF ~~ THEN BEGIN kein5
  SAY @39 = @40
  IF ~~ THEN REPLY @41 EXIT
END

IF ~~ THEN BEGIN kein6
  SAY @30 = @31
  IF ~~ THEN REPLY @32 EXIT
END

IF ~~ THEN BEGIN kein7
  SAY @42 = @43 = @44 = @45 = @46
  IF ~~ THEN EXIT
END

// 1st time picking up Kesai chain dialogue

CHAIN PLAYER1 kein0.3
@73
== RJKESAIP @74 = @75
== PLAYER1 @76 = @77
== RJKESAIP @78
== PLAYER1 @79
== RJKESAIP @80
== PLAYER1 @81
== RJFAY IF ~!InMyArea("RJRavel")~ THEN @82
== RJFAY IF ~InMyArea("RJRavel")~ THEN @83
== RJALIJ @84
== RJRAVELJ IF ~InParty("RJRavel")~ THEN @85
== RJRAVELP IF ~G("RJParkRV",1)~ THEN @85
== PLAYER1 @86 = @87
== RJKESAIP @88 = @89 DO ~ActionOverride("RJKesai",ReallyForceSpellRES("RJPLYKS",Myself)) SetGlobal("RJPRTKS","GLOBAL",1)~
== PLAYER1 @90
== RJALIJ @91
== RJKESAIP @92
== PLAYER1 @93
== RJKESAIP @94
END
IF ~~ THEN DO ~SetGlobal("RJRatoutKE","GLOBAL",4)~ EXTERN RJKESAIP kein1
