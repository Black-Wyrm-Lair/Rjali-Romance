
APPEND RJPORT

// Visiting Sigil in Expansion

IF WEIGHT #-99 ~IsGabber(Player1)
                G("RJXPN",1)~ THEN BEGIN PortalXPN
SAY @0

IF ~~ THEN REPLY @11 EXIT

IF ~G("RJPort",0) 
    G("RJiniLoc",1)~ THEN REPLY @1 DO ~
                         StartCutSceneMode()
                         StartCutScene("RJSCUTFH")~ EXIT

IF ~G("RJPort",0) 
    G("RJiniLoc",2)~ THEN REPLY @1 DO ~
                         StartCutSceneMode()
                         StartCutScene("RJSCUTBR")~ EXIT

IF ~G("RJPort",1) !AreaCheck("RJ0610")~ THEN REPLY @7 DO ~
                         StartCutSceneMode()
                         StartCutScene("RJPCUTRV")~ EXIT

IF ~G("RJPort",1) !AreaCheck("RJ1001")~ THEN REPLY @10 DO ~
                         StartCutSceneMode()
                         StartCutScene("RJPCUTMR")~ EXIT

IF ~G("RJPort",1) !AreaCheck("RJ1101")~ THEN REPLY @8 DO ~
                         StartCutSceneMode()
                         StartCutScene("RJPCUTFJ")~ EXIT

IF ~G("RJPort",1) !AreaCheck("RJ13FY")
                  !AreaCheck("RJ13FD")
                  !AreaCheck("RJ13EN")
                  !AreaCheck("RJ1301")
                  !AreaCheck("RJ1302")~ THEN REPLY @9 DO ~
                         StartCutSceneMode()
                         StartCutScene("RJPCUTND")~ EXIT

IF ~G("RJPort",1) !AreaCheck("RJ0605")~ THEN REPLY @21 DO ~
                         ActionOverride(Player1,LeaveAreaLUA("RJ0605","",[1380.1670],8))~ EXIT

IF ~G("RJPort",1) !AreaCheck("RJ0602")~ THEN REPLY @20 DO ~
                         ActionOverride(Player1,LeaveAreaLUA("RJ0602","",[1580.1270],8))~ EXIT

IF ~G("RJPort",1)~ THEN REPLY @19 DO ~
                         StartCutSceneMode() 
                         StartCutScene("RJPCUTRT")~ EXIT
END

END
