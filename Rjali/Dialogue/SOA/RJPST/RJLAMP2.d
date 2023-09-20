
// Calling Horace

BEGIN RJLAMP2

IF ~IsGabber(Player1) G("RJXPN",0)~ THEN BEGIN lamp2
SAY @138 = @143
IF ~RandomNum(10,1)~ THEN REPLY @139 GOTO lamp2.2
IF ~RandomNum(10,2)~ THEN REPLY @139 GOTO lamp2.2
IF ~RandomNum(10,3)~ THEN REPLY @139 GOTO lamp2.2
IF ~RandomNum(10,4)~ THEN REPLY @139 GOTO lamp2.2
IF ~RandomNum(10,5)~ THEN REPLY @139 GOTO lamp2.2
IF ~RandomNum(10,6)~ THEN REPLY @139 GOTO lamp2.2
IF ~RandomNum(10,7)~ THEN REPLY @139 GOTO lamp2.2
IF ~RandomNum(10,8)~ THEN REPLY @139 GOTO lamp2.2
IF ~RandomNum(10,9)~ THEN REPLY @139 GOTO lamp2.2
IF ~RandomNum(10,10)~ THEN REPLY @139 GOTO lamp2.1
END

IF ~~ lamp2.1
SAY @140
IF ~~ THEN REPLY @141 EXIT
END

IF ~~ lamp2.2
SAY @142
IF ~~ THEN DO ~
    SetGlobal("RJGenie","GLOBAL",3)
    ActionOverride(Player1,CreateCreature("RJGENIL",[-1.-1],0))~ EXIT
END

IF ~IsGabber(Player1) G("RJXPN",1)~ THEN BEGIN lamp3
SAY @138 = @143
IF ~!G("RJXPGen",0)~ THEN REPLY @144 EXIT
IF ~G("RJXPGen",0)~ THEN REPLY @139 GOTO lamp3.2
END

IF ~~ lamp3.2
SAY @142
IF ~~ THEN DO ~
    SetGlobal("RJXPGen","GLOBAL",1)
    ActionOverride(Player1,CreateCreature("RJGENIX",[-1.-1],0))~ EXIT
END
