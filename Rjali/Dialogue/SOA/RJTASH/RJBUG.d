
//  Fix Tashia game end bug

ALTER_TRANS FINSOL01
BEGIN 28 END
BEGIN 0 END
BEGIN
  "TRIGGER" ~InParty("Tashia") Global("TashiaRomanceActive","GLOBAL",2)~
END

ALTER_TRANS FINSOL01
BEGIN 28 END
BEGIN 1 END
BEGIN
  "TRIGGER" ~OR(2) !InParty("Tashia") !Global("TashiaRomanceActive","GLOBAL",2)~
END
