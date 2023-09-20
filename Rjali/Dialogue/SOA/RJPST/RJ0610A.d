
BEGIN RJ0610A

IF ~Global("Portal","RJ0610",0)
    GLT("RJiniiJIDDK",4)
    PartyHasItem("RJRVHA")~ THEN BEGIN 0
  SAY @807
  IF ~~ THEN REPLY @804 EXIT
END

IF ~Global("Portal","RJ0610",0)
    GGT("RJiniiJIDDK",3)
    PartyHasItem("RJRVHA")~ THEN BEGIN 1
  SAY @801
  IF ~~ THEN REPLY @803 DO ~SetGlobal("Portal","RJ0610",1)~ GOTO 3
  IF ~~ THEN REPLY @804 EXIT
END

IF ~!Global("Portal","RJ0610",0)
    PartyHasItem("RJRVHA")~ THEN BEGIN 2
  SAY @800
  IF ~~ THEN REPLY @802 DO ~StartCutSceneMode() StartCutScene("RJPCUTRC")~ EXIT
  IF ~~ THEN REPLY @804 EXIT
END

IF ~~ THEN BEGIN 3
  SAY @805
  IF ~~ THEN REPLY @806 DO ~StartCutSceneMode() StartCutScene("RJPCUTRC")~ EXIT
  IF ~~ THEN REPLY @804 EXIT
END
