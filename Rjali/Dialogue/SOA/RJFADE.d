APPEND E3FADEJ

END 

// This provides Fade's interjections for Watcher's Keep in SoA.

//Odren (Watcher's Keep)

INTERJECT_COPY_TRANS GORODR1 11 RJFadeOdren2 /* ~That day has come, <CHARNAME>.  The great evil struggles within, and has infected the Watcher's Keep to the point where we cannot bypass the creatures and foul magic that blocks our path.~ */
== E3FADEJ IF ~InParty("E3FADE") GLT("Chapter",%bg2_chapter_8%) !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4886
END


//Chromatic Demon (Watcher's Keep)

INTERJECT_COPY_TRANS3 GORCHR 1 RJFadeChrDemon2 /*~Hmmm... sounds like you have been tricked into doing Helm's dirty work.  Looks like we are both unwilling participants in this little drama.~*/
== E3FADEJ IF ~InParty("E3FADE") GLT("Chapter",%bg2_chapter_8%) !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4887
== GORCHR IF ~InParty("E3FADE") GLT("Chapter",%bg2_chapter_8%) !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4888
END


//Yakman (Watcher's Keep)

INTERJECT_COPY_TRANS GORMAD1 0 RJFadeYakman2 /*~Wh-what?!  Yakman... Yakman sees people before him... but they must be illusions!  Yes, Yakman is seeing illusions!  Delusionary Yakman!~*/
== E3FADEJ IF ~InParty("E3FADE") GLT("Chapter",%bg2_chapter_8%) !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4889
END


//Succubus (Watcher's Keep)

INTERJECT_COPY_TRANS3 GORSUC01 0 RJFadeSucc02 /*~Ahhh, look here, dear ladies.  Yet another hapless wanderer, drifting through these endless portals.  Is it lost, do you think?  Shall we ask it?~*/
== E3FADEJ IF ~InParty("E3FADE") GLT("Chapter",%bg2_chapter_8%) !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4890
== GORSUC01 IF ~InParty("E3FADE") GLT("Chapter",%bg2_chapter_8%) !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4891
END

//Carsten's Apprentice (Watcher's Keep)

INTERJECT_COPY_TRANS3 GORAPR 16 RJFadeCar2 /*~I am beyond your power to either help or harm.  (cough)  The tortures of the illithid cannot be undone.  I... embrace the darkness.~*/
== E3FADEJ IF ~InParty("E3FADE") GLT("Chapter",%bg2_chapter_8%) !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4892
== GORAPR IF ~InParty("E3FADE") GLT("Chapter",%bg2_chapter_8%) !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@879
END


//Demogorgon (Watcher's Keep)

INTERJECT_COPY_TRANS GORDEMO 1 RJFadeDemo2 /* ~You do not see anything physical within the chamber...but you feel its presence all around you.  A phantasmal hand brushes your cheek, a curious gesture that startles you and is gone just as quickly.~ */
== E3FADEJ IF ~InParty("E3FADE") GLT("Chapter",%bg2_chapter_8%) !StateCheck("E3FADE",CD_STATE_NOTVALID)~ THEN
@4893
END

