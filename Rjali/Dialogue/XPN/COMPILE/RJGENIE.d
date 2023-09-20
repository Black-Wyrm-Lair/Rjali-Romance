
// This is Horace's final lamp dialogue in the extension.

BEGIN RJXPHO

IF WEIGHT #-99 ~G("RJXPN",1)
                G("RJXPGen",1)~ xpho
SAY @96
IF ~~ THEN REPLY @550 GOTO xpho1
END

IF ~~ xpho1
SAY @551 = @552 = @553 = @554
IF ~~ THEN REPLY @555 GOTO xpho1.1
END

IF ~~ xpho1.1
SAY @557
IF ~~ THEN DO ~SetGlobal("RJGenie","GLOBAL",0)
               SetGlobal("RJXPGen","GLOBAL",2)
               DestroySelf()~ EXIT
END
