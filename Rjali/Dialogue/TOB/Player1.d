
// This is the dialogue file Player1 interjections.

// Pass Trias' good wishes to Solar.

ALTER_TRANS FINSOL01
BEGIN 4 END
BEGIN 0 END
BEGIN
  "TRIGGER" ~G("RJTRFV",0) OR(2) !InParty("Imoen2") Dead("Imoen2")~
END

ALTER_TRANS FINSOL01
BEGIN 4 END
BEGIN 1 END
BEGIN
  "TRIGGER" ~G("RJTRFV",0) InParty("Imoen2") !Dead("Imoen2")~
END

EXTEND_BOTTOM FINSOL01 4
IF ~!G("RJTRFV",0)~ THEN REPLY @2010 GOTO RJFINSOL4
END

APPEND FINSOL01

IF ~~ THEN BEGIN RJFINSOL4
  SAY @2011 = @2012
  IF ~OR(2)
!InParty("Imoen2")
Dead("Imoen2")~ THEN REPLY @2013 GOTO 5
  IF ~InParty("Imoen2")
!Dead("Imoen2")~ THEN REPLY @2013 GOTO 6
END

END
