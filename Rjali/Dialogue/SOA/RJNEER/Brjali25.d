
// Crossmod for BG2EE

// Dorn

CHAIN
IF ~InParty("Rjali")
See("Rjali")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
Global("RjaliDorn1","GLOBAL",0)~ THEN BDORN RjaliDorn1
@200
DO ~SetGlobal("RjaliDorn1","GLOBAL",1)~
== BRJALI @201
== BDORN @202
== BRJALI @203
== BDORN @204
== BRJALI @205
EXIT

CHAIN
IF ~InParty("Dorn")
See("Dorn")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
Global("RjaliDorn2","GLOBAL",0)~ THEN BRJALI RjaliDorn2
@206
DO ~SetGlobal("RjaliDorn2","GLOBAL",1)~
== BDORN @207
== BRJALI @208
== BDORN @209
== BRJALI @210
== BDORN @211
EXIT

CHAIN
IF ~InParty("Rjali")
See("Rjali")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
Global("RjaliDorn3","GLOBAL",0)~ THEN BDORN RjaliDorn3
@212
DO ~SetGlobal("RjaliDorn3","GLOBAL",1)~
== BRJALI @213
== BDORN @214
== BRJALI @215
== BDORN @216
EXIT

// ToB

CHAIN
IF ~InParty("Rjali")
See("Rjali")
!StateCheck("Dorn",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
Global("RjaliToBDorn1","GLOBAL",0)~ THEN BDORN25 RjaliToBDorn1
@217
DO ~SetGlobal("RjaliToBDorn1","GLOBAL",1)~
== BRJALI25 @218
== BDORN25 @219
== BRJALI25 @220
== BDORN25 @221
== BRJALI25 @222
== BDORN25 @223
== BRJALI25 @224
EXIT

// Hexxat

CHAIN
IF ~InParty("Rjali")
See("Rjali")
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
Global("RjaliHexxat1","GLOBAL",0)~ THEN BHEXXAT RjaliHexxat1
@225
DO ~SetGlobal("RjaliHexxat1","GLOBAL",1)~
== BRJALI @226
== BHEXXAT @227
== BRJALI @228
EXIT

// ToB

CHAIN
IF ~InParty("Rjali")
See("Rjali")
!StateCheck("Hexxat",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
Global("RjaliToBHexxat1","GLOBAL",0)~ THEN BHEXXA25 RjaliToBHexxat1
@229
DO ~SetGlobal("RjaliToBHexxat1","GLOBAL",1)~
== BRJALI25 @230
== BHEXXA25 @231
EXIT

// Neera

CHAIN
IF ~InParty("Neera")
See("Neera")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
Global("RjaliNeera1","GLOBAL",0)~ THEN BRJALI RjaliNeera1
@232
DO ~SetGlobal("RjaliNeera1","GLOBAL",1)~
== BNEERA @233
== BRJALI @234
== BNEERA @235
== BRJALI @236
== BNEERA @237
== BRJALI @238
== BNEERA @239
== BRJALI @240
== BNEERA @241
== BRJALI @242
== BNEERA @243
== BRJALI @244
EXIT

CHAIN
IF ~InParty("Rjali")
See("Rjali")
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
!G("RjaliNeeraScout",0)
G("RjaliNeera2",0)~ THEN BNEERA RjaliNeera2
@245
DO ~SetGlobal("RjaliNeera2","GLOBAL",1)~
== BRJALI @246
== BNEERA @247
== BRJALI @248
== BNEERA @249
== BRJALI @250
== BNEERA @251
EXIT

CHAIN
IF ~InParty("Neera")
See("Neera")
!G("RjaliNeeraScout",0)
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
Global("RjaliNeera3","GLOBAL",0)~ THEN BRJALI RjaliNeera3
@252
DO ~SetGlobal("RjaliNeera3","GLOBAL",1)~
== BNEERA @253
== BRJALI @254
== BNEERA @255
== BRJALI @256
== BNEERA @257
== BRJALI @258
== BNEERA @259
== BRJALI @260
== BNEERA @261
EXIT

// ToB 

CHAIN
IF ~InParty("Neera")
See("Neera")
!G("RjaliChallenge3",0)
!StateCheck("Neera",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
Global("RjaliNeeraToB1","GLOBAL",0)~ THEN BRJALI25 RjaliNeeraToB1
@262 
DO ~SetGlobal("RjaliNeeraToB1","GLOBAL",1)~
== BNEERA25 @263
== BRJALI25 @264
== BNEERA25 @265
== BRJALI25 @266
== BNEERA25 @267
== BRJALI25 @268
== BNEERA25 @269
== BRJALI25 @270
EXIT

// Rasaad

CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
Global("RjaliRasaad1","GLOBAL",0)~ THEN BRJALI RjaliRasaad1
@271
DO ~SetGlobal("RjaliRasaad1","GLOBAL",1)~
== BRASAAD @272
== BRJALI @273
== BRASAAD @274
== BRJALI @275
== BRASAAD @276
== BRJALI @277
EXIT

CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
Global("RjaliRasaad2","GLOBAL",0)~ THEN BRJALI RjaliRasaad2
@278
DO ~SetGlobal("RjaliRasaad2","GLOBAL",1)~
== BRASAAD @279
== BRJALI @280
== BRASAAD @281
== BRJALI @282
== BRASAAD @283
== BRJALI @284
EXIT

CHAIN
IF ~InParty("Rjali")
See("Rjali")
G("RjaliMR",1)
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
Global("RjaliRasaad3","GLOBAL",0)~ THEN BRASAAD RjaliRasaad3
@285
DO ~SetGlobal("RjaliRasaad3","GLOBAL",1)~
== BRJALI @286
== BRASAAD @287
== BRJALI @288
== BRASAAD @289
== BRJALI @290
== BRASAAD @291
== BRJALI @292
EXIT

// ToB

CHAIN
IF ~InParty("Rasaad")
See("Rasaad")
!StateCheck("Rasaad",CD_STATE_NOTVALID)
!StateCheck("Rjali",CD_STATE_NOTVALID)
Global("RjaliToBRasaad1","GLOBAL",0)~ THEN BRJALI25 RjaliToBRasaad1
@293
DO ~SetGlobal("RjaliToBRasaad1","GLOBAL",1)~
== BRASAA25 @294
== BRJALI25 @295
== BRASAA25 @296
== BRJALI25 @297
== BRASAA25 @298
== BRJALI25 @299
== BRASAA25 @300
EXIT
