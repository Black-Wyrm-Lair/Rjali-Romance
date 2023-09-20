
BEGIN RJ0610B

IF ~!Global("Portal","RJ0610",2)~ THEN BEGIN 0
  SAY @812 = @813 = @814
  IF ~~ THEN REPLY @806 DO ~SetGlobal("Portal","RJ0610",2) StartCutSceneMode() StartCutScene("RJPCUTRB")~ EXIT
  IF ~~ THEN REPLY @810 EXIT
END

IF ~Global("Portal","RJ0610",2)~ THEN BEGIN 1
  SAY @800
  IF ~~ THEN REPLY @811 DO ~StartCutSceneMode() StartCutScene("RJPCUTRB")~ EXIT
  IF ~~ THEN REPLY @810 EXIT
END
