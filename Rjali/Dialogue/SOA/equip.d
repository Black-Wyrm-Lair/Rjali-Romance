
APPEND RJALIJ

// This is the dialogue that equips Rjali and the PC.

IF ~G("RjaliMet",2)~ RJEquipSelf
SAY @50 = @51 = @52 = @53
++ @54                                  
  DO ~GiveGoldForce(10000)
      ReallyForceSpellRES("RJITBG",Myself)
      ReallyForceSpellRES("RJITALL",Myself)
      ReallyForceSpellRES("RJITBG",Player1)
      ReallyForceSpellRES("RJITALL",Player1)
      ActionOverride(Player1,AddSpecialAbility("RJPR607"))
      SetGlobal("RjaliMet","GLOBAL",3)~ EXIT
END

END

// Rjali gives Imoen stuff when she rejoins.

CHAIN IF ~G("RjaliImoenBags",1) G("RjaliImoenStuff",2)~ THEN RJALIJ RJEquipImoen
@100
  DO ~SetGlobal("RjaliImoenBags","GLOBAL",2)~
== IMOEN2J IF ~!InParty("Saerileth")
               !NumItemsPartyGT("RJBAG1",5)
               NumItemsPartyGT("RJSW1H",5)~ THEN @101
  DO ~ReallyForceSpellRES("RJITBG","Imoen2")~
== IMOEN2J IF ~!InParty("Saerileth")
               NumItemsPartyGT("RJBAG1",5)
               NumItemsPartyGT("RJSW1H",5)~ THEN @103
== IMOEN2J IF ~!InParty("Saerileth")
               NumItemsPartyGT("RJBAG1",5)
               !NumItemsPartyGT("RJSW1H",5)~ THEN @102 = @104
  DO ~ReallyForceSpellRES("RJITIM","Imoen2")~
== IMOEN2J IF ~!InParty("Saerileth")
               !NumItemsPartyGT("RJBAG1",5)
               !NumItemsPartyGT("RJSW1H",5)~ THEN @102
  DO ~ReallyForceSpellRES("RJITBG","Imoen2")
      ReallyForceSpellRES("RJITIM","Imoen2")~
== IMOEN2J IF ~InParty("Saerileth") 
               !NumItemsPartyGT("RJSW1H",5)~ THEN @102 = @104
  DO ~ReallyForceSpellRES("RJITIM","Imoen2")~
== IMOEN2J IF ~InParty("Saerileth") 
               NumItemsPartyGT("RJSW1H",5)~ THEN @103
EXIT

CHAIN IF ~G("RjaliImoenBags",1) !G("RjaliImoenStuff",2)~ THEN RJALIJ RJEquipImoen2
@105
  DO ~SetGlobal("RjaliImoenBags","GLOBAL",2)
      SetGlobal("RjaliImoenStuff","GLOBAL",2)
      ReallyForceSpellRES("RJITIM","Imoen2")~
== IMOEN2J IF ~!InParty("Saerileth") !NumItemsPartyLT("RJBAG1",6)~ THEN @106 = @104
== IMOEN2J IF ~!InParty("Saerileth") NumItemsPartyLT("RJBAG1",6)~ THEN @106
  DO ~ReallyForceSpellRES("RJITBG","Imoen2")~
== IMOEN2J IF ~InParty("Saerileth") !NumItemsPartyLT("RJBAG1",5)~ THEN @106 = @104
== IMOEN2J IF ~InParty("Saerileth") NumItemsPartyLT("RJBAG1",5)~ THEN @106
  DO ~ReallyForceSpellRES("RJITBG","Imoen2")~
EXIT

// Equiping the troops

CHAIN IF ~G("RjaliEquips",1)~ THEN RJALIJ RJEquipTroops
@200
== MAZZYJ IF ~G("RjaliMazzyStuff",1) See("Mazzy")~ THEN @201
  DO ~SetGlobal("RjaliMazzyStuff","GLOBAL",2)~
== MINSCJ IF ~G("RjaliMinscStuff",1) See("Minsc")~ THEN @202
  DO ~SetGlobal("RjaliMinscStuff","GLOBAL",2)~
== VALYGARJ IF ~G("RjaliValygarStuff",1) See("Valygar")~ THEN @203
  DO ~SetGlobal("RjaliValygarStuff","GLOBAL",2)~
== ANOMENJ IF ~G("RjaliAnomenStuff",1) See("Anomen")~ THEN @204
  DO ~SetGlobal("RjaliAnomenStuff","GLOBAL",2)~
== HAERDAJ IF ~G("RjaliHaerdalisStuff",1) See("Haerdalis")~ THEN @205
  DO ~SetGlobal("RjaliHaerdalisStuff","GLOBAL",2)~
== KELDORJ IF ~G("RjaliKeldornStuff",1) See("Keldorn")~ THEN @206
  DO ~SetGlobal("RjaliKeldornStuff","GLOBAL",2)~
== NALIAJ IF ~G("RjaliNaliaStuff",1) See("Nalia")~ THEN @207
  DO ~SetGlobal("RjaliNaliaStuff","GLOBAL",2)~
== CERNDJ IF ~G("RjaliCerndStuff",1) See("Cernd")~ THEN @208
  DO ~SetGlobal("RjaliCerndStuff","GLOBAL",2)~
== EDWINJ IF ~G("RjaliEdwinStuff",1) See("Edwin")~ THEN @209
  DO ~SetGlobal("RjaliEdwinStuff","GLOBAL",2)~
== KORGANJ IF ~G("RjaliKorganStuff",1) See("Korgan")~ THEN @216
  DO ~SetGlobal("RjaliKorganStuff","GLOBAL",2)~
== JAHEIRAJ IF ~G("RjaliJaheiraStuff",1) See("Jaheira")~ THEN @210
  DO ~SetGlobal("RjaliJaheiraStuff","GLOBAL",2)~
== VICONIJ IF ~G("RjaliViconiaStuff",1) See("Viconia")~ THEN @211
  DO ~SetGlobal("RjaliViconiaStuff","GLOBAL",2)~
== AERIEJ IF ~G("RjaliAerieStuff",1) See("Aerie")~ THEN @212
  DO ~SetGlobal("RjaliAerieStuff","GLOBAL",2)~
== JANJ IF ~G("RjaliJanStuff",1) See("Jan")~ THEN @213
  DO ~SetGlobal("RjaliJanStuff","GLOBAL",2)~
== NEERAJ IF ~G("RjaliNeeraStuff",1) See("Neera")~ THEN @221
  DO ~SetGlobal("RjaliNeeraStuff","GLOBAL",2)~
== RASAADJ IF ~G("RjaliRasaadStuff",1) See("Rasaad")~ THEN @222
  DO ~SetGlobal("RjaliRasaadStuff","GLOBAL",2)~
== HEXXATJ IF ~G("RjaliHexxatStuff",1) See("Hexxat")~ THEN @223
  DO ~SetGlobal("RjaliHexxatStuff","GLOBAL",2)~
== DORNJ IF ~G("RjaliDornStuff",1) See("Dorn")~ THEN @224
  DO ~SetGlobal("RjaliDornStuff","GLOBAL",2)~
== IMOENJ IF ~InParty("Imoen") G("RjaliImoenStuff",1) See("Imoen")~ THEN @225
  DO ~SetGlobal("RjaliImoenStuff","GLOBAL",2)~
== IMOEN2J IF ~InParty("Imoen2") G("RjaliImoenStuff",1) See("Imoen2")~ THEN @225
  DO ~SetGlobal("RjaliImoenStuff","GLOBAL",2)~
== O#BRANJ IF ~G("RjaliBranwenStuff",1) See("O#Bran")~ THEN @218
  DO ~SetGlobal("RjaliBranwenStuff","GLOBAL",2)~
== LK#NINDJ IF ~G("RjaliNindeStuff",1) See("Ninde")~ THEN @219
  DO ~SetGlobal("RjaliNindeStuff","GLOBAL",2)~
== TASHIAJ IF ~G("RjaliTashiaStuff",1) See("Tashia")~ THEN @226
  DO ~SetGlobal("RjaliTashiaStuff","GLOBAL",2)~
== G#TYRISJ IF ~G("RjaliTyrisStuff",1) See("G#Tyris")~ THEN @220
  DO ~SetGlobal("RjaliTyrisStuff","GLOBAL",2)~
== YXYVEJ IF ~G("RjaliYvetteStuff",1) See("YxYve")~ THEN @227
  DO ~SetGlobal("RjaliYvetteStuff","GLOBAL",2)~
== E3FADEJ IF ~G("RjaliFadeStuff",1) See("E3Fade")~ THEN @228
  DO ~SetGlobal("RjaliFadeStuff","GLOBAL",2)~
== SAERILEJ IF ~G("RjaliSaerilethStuff",1) See("Saerileth")~ THEN @217
  DO ~SetGlobal("RjaliSaerilethStuff","GLOBAL",2)~
== T#DACEJ IF ~G("RjaliDaceStuff",1) See("T#Dace")~ THEN @214
  DO ~SetGlobal("RjaliDaceStuff","GLOBAL",2)~
== RH#ISRJ IF ~G("RjaliIsraStuff",1) See("rh#Isra2")~ THEN @230
  DO ~SetGlobal("RjaliIsraStuff","GLOBAL",2)~
== M#AMBERJ IF ~G("RjaliAmberStuff",1) See("M#AMBER")~ THEN @231
  DO ~SetGlobal("RjaliAmberStuff","GLOBAL",2)~
== RJANNAHJ IF ~G("RjaliAnnahStuff",1) See("RJAnnah")~ THEN @232
  DO ~SetGlobal("RjaliAnnahStuff","GLOBAL",2)~
== RJGRACEJ IF ~G("RjaliGraceStuff",1) See("RJGrace")~ THEN @233
  DO ~SetGlobal("RjaliGraceStuff","GLOBAL",2)~
== RJRAVELJ IF ~G("RjaliRavelStuff",1) See("RJRavel")~ THEN @234
  DO ~SetGlobal("RjaliRavelStuff","GLOBAL",2)~
== 1XSKIEJ IF ~G("RjaliSkieStuff",1) See("SkieDV")~ THEN @235
  DO ~SetGlobal("RjaliSkieStuff","GLOBAL",2)~
== L3PETSYJ IF ~G("RjaliPetsyStuff",1) See("L3Petsy")~ THEN @236
  DO ~SetGlobal("RjaliPetsyStuff","GLOBAL",2)~
== C0SIRE2J IF ~G("RjaliSireneStuff",1) See("C0Sirene")~ THEN @237
  DO ~SetGlobal("RjaliSireneStuff","GLOBAL",2)~
== SHEENAJ IF ~G("RjaliSheenaStuff",1) See("K#Sheena")~ THEN @238
  DO ~SetGlobal("RjaliSheenaStuff","GLOBAL",2)~
== RJKESAIJ IF ~G("RjaliKesaiStuff",1) See("RJKesai")~ THEN @239
  DO ~SetGlobal("RjaliKesaiStuff","GLOBAL",2)~
END RJALIJ RJEquipTroops1

CHAIN IF ~~ THEN RJALIJ RJEquipTroops1
@215
  DO ~SetGlobal("RjaliEquips","GLOBAL",0)
      ActionOverride(LastSeenBy(Myself),AddSpecialAbility("RJPR607"))~
== RJALIJ IF ~GLT("RjaliCountStuff",5) !Name("Saerileth",LastSeenBy(Myself))~ THEN @229
  DO ~ReallyForceSpellRES("RJITBG",LastSeenBy(Myself))
      IncrementGlobal("RjaliCountStuff","GLOBAL",1)~
END
IF ~OR(2) Name("Nalia",LastSeenBy(Myself)) Name("rh#Isra2",LastSeenBy(Myself))~ THEN
  DO ~ReallyForceSpellRES("RJITNA",LastSeenBy(Myself))~ EXIT
IF ~Name("Saerileth",LastSeenBy(Myself))~ THEN
  DO ~ReallyForceSpellRES("RJITSA","Saerileth")~ EXIT
IF ~OR(2) Name("E3Fade",LastSeenBy(Myself)) Name("Ninde",LastSeenBy(Myself))~ THEN
  DO ~ReallyForceSpellRES("RJITFA",LastSeenBy(Myself))~ EXIT
IF ~Name("YxYve",LastSeenBy(Myself))~ THEN
  DO ~ReallyForceSpellRES("RJITYV","YxYve")~ EXIT
IF ~Name("SkieDV",LastSeenBy(Myself))~ THEN
  DO ~ReallyForceSpellRES("RJITSK","SkieDV")~ EXIT
IF ~!Name("Nalia",LastSeenBy(Myself))
    !Name("Saerileth",LastSeenBy(Myself))
    !Name("E3Fade",LastSeenBy(Myself))
    !Name("YxYve",LastSeenBy(Myself))
    !Name("rh#Isra2",LastSeenBy(Myself))
    !Name("Ninde",LastSeenBy(Myself))
    !Name("SkieDV",LastSeenBy(Myself))~ THEN
  DO ~ReallyForceSpellRES("RJITALL",LastSeenBy(Myself))~ EXIT
