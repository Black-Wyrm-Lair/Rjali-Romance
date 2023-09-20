
//  Park NPCs in deArnise Keep

//  Sheena SoA

EXTEND_BOTTOM SHEENAP 0
IF ~G("RjaliSheenaScout",2)
    !G("KeepPlot",0)~ THEN REPLY @0 GOTO RJParkSheenaSOA
IF ~G("RjaliSheenaScout",2)
    G("KeepPlot",0)~ THEN REPLY @851 DO ~SetGlobal("K#SheenaOut","GLOBAL",0)
                                         JoinParty()~ EXIT
END

APPEND SHEENAP

IF ~~ THEN BEGIN RJParkSheenaSOA
  SAY @857
  IF ~~ THEN DO ~SetGlobal("RJParkSH","GLOBAL",1)
                 IncrementGlobal("RJCntParked","GLOBAL",1)
                 SetGlobalTimer("RJSheenaParked","GLOBAL",7200)
                 EscapeAreaMove("AR1304",1160,1622,8)~ EXIT
END

IF WEIGHT #-1 ~G("RJParkSH",1)~ THEN BEGIN RJVisitSheenaSOA
  SAY @858 = @888
  IF ~~ THEN REPLY @859 EXIT
  IF ~~ THEN REPLY @860 DO ~
                 SetGlobal("RJParkSH","GLOBAL",0)
                 IncrementGlobal("RJCntParked","GLOBAL",-1)
                 JoinParty()~ EXIT
  IF ~RandomNum(3,1)~ THEN REPLY @9 GOTO RJVSHSOA1
  IF ~RandomNum(3,2)~ THEN REPLY @9 GOTO RJVSHSOA2
  IF ~RandomNum(3,3)~ THEN REPLY @9 GOTO RJVSHSOA3
  IF ~~ THEN REPLY @11 GOTO RJVSHSOA4
  IF ~~ THEN REPLY @881 GOTO RJVSHSOA5
  IF ~~ THEN REPLY @8 GOTO RJVSHSOA6
END

IF ~~ THEN BEGIN RJVSHSOA1
  SAY @861 = @862 = @863
  IF ~~ THEN REPLY @864 EXIT
END

IF ~~ THEN BEGIN RJVSHSOA2
  SAY @865 = @866 = @867
  IF ~~ THEN REPLY @868 EXIT
END

IF ~~ THEN BEGIN RJVSHSOA3
  SAY @869 = @870 = @871
  IF ~~ THEN REPLY @872 EXIT
END

IF ~~ THEN BEGIN RJVSHSOA4
  SAY @873 = @874 = @875
  IF ~~ THEN REPLY @876 EXIT
END

IF ~~ THEN BEGIN RJVSHSOA5
  SAY @882 = @883 = @884 = @885 = @886
  IF ~~ THEN REPLY @887 EXIT
END

IF ~~ THEN BEGIN RJVSHSOA6
  SAY @877 = @878 = @879
  IF ~~ THEN REPLY @880 EXIT
END

END

//   Sheena ToB

APPEND SHEEN25P

IF WEIGHT #-1 ~G("RJParkSH",0)
               G("SHEENAPCAREONE",1)~ THEN BEGIN RJParkSheenaTOB0
  SAY @850
  IF ~~ THEN REPLY @851 DO ~SetGlobal("K#SheenaOut","GLOBAL",0)
                            JoinParty()~ EXIT
  IF ~~ THEN REPLY @852 GOTO RJParkSheenaTOB2
END

IF WEIGHT #-1 ~G("RJParkSH",0)
               G("SHEENAPCAREONE",0)~ THEN BEGIN RJParkSheenaTOB1
  SAY @854
  IF ~~ THEN REPLY @851 DO ~SetGlobal("K#SheenaOut","GLOBAL",0)
                            JoinParty()~ EXIT
  IF ~~ THEN REPLY @855 GOTO RJParkSheenaTOB9
END

IF ~~ THEN BEGIN RJParkSheenaTOB2
  SAY @853
  IF ~~ THEN DO ~SetGlobal("RJParkSH","GLOBAL",1)
                 IncrementGlobal("RJCntParked","GLOBAL",1)
                 SetGlobalTimer("RJSheenaParked","GLOBAL",7200)
                 EscapeAreaMove("AR1304",1160,1622,8)~ EXIT
END

IF ~~ THEN BEGIN RJParkSheenaTOB9
  SAY @856
  IF ~~ THEN DO ~SetGlobal("SheenaJoined","GLOBAL",0)
                 EscapeArea()~ EXIT
END

IF WEIGHT #-1 ~G("RJParkSH",1)~ THEN BEGIN RJVisitSheenaTOB
  SAY @858
  IF ~G("RJFinalVisit",1) G("RJSHFV",0)~ THEN REPLY @14 GOTO RJVSHTOB9
  IF ~~ THEN REPLY @859 EXIT
  IF ~~ THEN REPLY @860 DO ~
                 SetGlobal("RJParkSH","GLOBAL",0)
                 IncrementGlobal("RJCntParked","GLOBAL",-1)
                 JoinParty()~ EXIT
  IF ~RandomNum(3,1)~ THEN REPLY @9 GOTO RJVSHTOB1
  IF ~RandomNum(3,2)~ THEN REPLY @9 GOTO RJVSHTOB2
  IF ~RandomNum(3,3)~ THEN REPLY @9 GOTO RJVSHTOB3
  IF ~~ THEN REPLY @11 GOTO RJVSHTOB4
  IF ~~ THEN REPLY @900 GOTO RJVSHTOB5
  IF ~~ THEN REPLY @8 GOTO RJVSHTOB6
END

IF ~~ THEN BEGIN RJVSHTOB1
  SAY @923 = @924 = @925 = @926
  IF ~~ THEN REPLY @927 EXIT
END

IF ~~ THEN BEGIN RJVSHTOB2
  SAY @928 = @929 = @930
  IF ~~ THEN REPLY @931 EXIT
END

IF ~~ THEN BEGIN RJVSHTOB3
  SAY @932 = @933 = @934 = @935
  IF ~~ THEN REPLY @936 EXIT
END

IF ~~ THEN BEGIN RJVSHTOB4
  SAY @921
  IF ~~ THEN REPLY @922 EXIT
END

IF ~~ THEN BEGIN RJVSHTOB5
  SAY @901 = @902 = @903 = @904 = @905
  IF ~~ THEN REPLY @906 EXIT
END

IF ~~ THEN BEGIN RJVSHTOB6
  SAY @910 = @911 = @912 = @913 = @914 = @915
  IF ~~ THEN REPLY @916 EXIT
END

IF ~~ THEN BEGIN RJVSHTOB9
  SAY @917 = @918 = @919
  IF ~~ THEN REPLY @920 DO ~SetGlobal("RJSHFV","GLOBAL",1)~ EXIT
END

END

//  Sheena parked remote talks

CHAIN
IF WEIGHT #-96 ~G("RJSheenaInteract",1)~ THEN PLAYER1 RJSheenaRemoteTalk
@950 DO ~SetGlobal("RJSheenaInteract","GLOBAL",0)~
END
IF ~RandomNum(6,1) G("RJSHDream",0)~ THEN EXTERN PLAYER1 RJSheenaRemoteTalk2.1
IF ~RandomNum(6,1) !G("RJSHDream",0)~ THEN DO ~
         ActionOverride("RJINVSH",DestroySelf())
         StartCutSceneMode()
         StartCutScene("RJSHSLP")~ EXIT
IF ~RandomNum(6,2)~ THEN EXTERN PLAYER1 RJSheenaRemoteTalk1
IF ~RandomNum(6,3) G("RJSHDream",0)~ THEN EXTERN PLAYER1 RJSheenaRemoteTalk2.1
IF ~RandomNum(6,3) !G("RJSHDream",0)~ THEN DO ~
         ActionOverride("RJINVSH",DestroySelf())
         StartCutSceneMode()
         StartCutScene("RJSHSLP")~ EXIT
IF ~RandomNum(6,4)~ THEN EXTERN PLAYER1 RJSheenaRemoteTalk3
IF ~RandomNum(6,5)~ THEN EXTERN PLAYER1 RJSheenaRemoteTalk4
IF ~RandomNum(6,6)~ THEN EXTERN PLAYER1 RJSheenaRemoteTalk5

CHAIN
IF ~~ THEN PLAYER1 RJSheenaRemoteTalk1
@951
== RJINVSH @952 = @953 = @954
== PLAYER1 @955
== RJINVSH @956 = @957
== PLAYER1 @958 = @959
END
IF ~~ THEN DO ~SetGlobal("RJPort","GLOBAL",0)
               ActionOverride("RJINVSH",DestroySelf())~ EXIT

CHAIN
IF ~~ THEN PLAYER1 RJSheenaRemoteTalk2.1
@960 = @961 = @962
== RJINVSH @963
== PLAYER1 @964 = @965
== RJINVSH @966 = @967
== PLAYER1 @968
END
IF ~~ THEN DO ~SetGlobal("RJSHDream","GLOBAL",1)
               SetGlobal("RJPort","GLOBAL",0)
               ActionOverride("RJINVSH",DestroySelf())~ EXIT

CHAIN
IF WEIGHT #-96 ~G("RJSHDream",1)
                G("RJSHSleep",1)~ THEN PLAYER1 RJSheenaRemoteTalk2.2
@969 DO ~SetGlobal("RJSHSleep","GLOBAL",2)~
== PLAYER1 @970
== RJINVSH @971 = @993 = @994
== PLAYER1 @995 = @996
== RJINVSH @997 = @998
== PLAYER1 @999 = @972
== RJINVSH @973 = @974 = @975
== PLAYER1 @976 = @977
== RJINVSH @978
== PLAYER1 @979 = @980
END
IF ~~ THEN DO ~StartCutSceneMode()
               StartCutScene("RJSHWAK")~ EXIT

CHAIN
IF WEIGHT #-96 ~G("RJSHDream",1)
                G("RJSHSleep",3)~ THEN PLAYER1 RJSheenaRemoteTalk2.2.1
@981 DO ~SetGlobal("RJSHSleep","GLOBAL",0)~
== RJALIJ IF ~GLT("Chapter",%bg2_chapter_8%)~ THEN @982 = @983
== RJALI25J IF ~GGT("Chapter",%bg2_chapter_7%)~ THEN @982 = @983
== PLAYER1 @984
== RJALIJ IF ~GLT("Chapter",%bg2_chapter_8%)~ THEN @985
== RJALI25J IF ~GGT("Chapter",%bg2_chapter_7%)~ THEN @985
== PLAYER1 @986
END
IF ~~ THEN DO ~SetGlobal("RJSHDream","GLOBAL",2)~ EXIT

CHAIN
IF WEIGHT #-96 ~G("RJSHDream",2)
                G("RJSHSleep",1)~ THEN PLAYER1 RJSheenaRemoteTalk2.3
@969 DO ~SetGlobal("RJSHSleep","GLOBAL",2)~
END
IF ~RandomNum(3,1)~ THEN EXTERN PLAYER1 RJSheenaRemoteTalk2.3.1
IF ~RandomNum(3,2) G("RJSHMore",0)~ THEN EXTERN PLAYER1 RJSheenaRemoteTalk2.3.2.1
IF ~RandomNum(3,2) G("RJSHMore",1)~ THEN EXTERN PLAYER1 RJSheenaRemoteTalk2.3.2.2
IF ~RandomNum(3,2) G("RJSHMore",2)~ THEN EXTERN PLAYER1 RJSheenaRemoteTalk2.3.2.3
IF ~RandomNum(3,3)~ THEN EXTERN PLAYER1 RJSheenaRemoteTalk2.3.3

CHAIN
IF ~~ THEN PLAYER1 RJSheenaRemoteTalk2.3.1
@1700
== RJINVSH @987
== PLAYER1 @972
== RJINVSH @988
== PLAYER1 @989
END
IF ~~ THEN DO ~StartCutSceneMode()
               StartCutScene("RJSHWAK")~ EXIT

CHAIN
IF ~~ THEN PLAYER1 RJSheenaRemoteTalk2.3.2.1
@1701
== RJINVSH @1702 = @1703
== PLAYER1 @1704 = @1705
== RJINVSH @1706 = @1707 = @1708
== PLAYER1 @1709 = @1710
END
IF ~~ THEN DO ~SetGlobal("RJSHMore","GLOBAL",1)
               StartCutSceneMode()
               StartCutScene("RJSHWAK")~ EXIT

CHAIN
IF ~~ THEN PLAYER1 RJSheenaRemoteTalk2.3.2.2
@1711
== PLAYER1 @1712 = @1713 = @1714 = @1715 = @1716
== RJINVSH @1717
== PLAYER1 @1718
== RJINVSH @1719
END
IF ~~ THEN DO ~SetGlobal("RJSHMore","GLOBAL",2)
               StartCutSceneMode()
               StartCutScene("RJSHWAK")~ EXIT

CHAIN
IF ~~ THEN PLAYER1 RJSheenaRemoteTalk2.3.2.3
@1720
== RJINVSH @1721
== PLAYER1 @1722
== RJINVSH @1723 = @1724 = @1725
== PLAYER1 @1726 = @1727
== RJINVSH @1728
== PLAYER1 @1729
END
IF ~~ THEN DO ~StartCutSceneMode()
               StartCutScene("RJSHWAK")~ EXIT

CHAIN
IF ~~ THEN PLAYER1 RJSheenaRemoteTalk2.3.3
@1730
== RJINVSH @1731 = @1732 = @1733
== PLAYER1 @1734 = @1735
== RJINVSH @1736 = @1737
== PLAYER1 @1738 = @1739
END
IF ~~ THEN DO ~StartCutSceneMode()
               StartCutScene("RJSHWAK")~ EXIT

CHAIN
IF WEIGHT #-96 ~GGT("RJSHDream",1)
                G("RJSHSleep",3)~ THEN PLAYER1 RJSheenaRemoteTalk2.3.9
@990 DO ~SetGlobal("RJSHSleep","GLOBAL",0)~
== RJALIJ IF ~GLT("Chapter",%bg2_chapter_8%)~ THEN @991
== RJALI25J IF ~GGT("Chapter",%bg2_chapter_7%)~ THEN @991
== PLAYER1 @992
END
IF ~~ THEN EXIT

CHAIN
IF ~~ THEN PLAYER1 RJSheenaRemoteTalk3
@1000
== RJINVSH @1001
== PLAYER1 @1002
== RJINVSH @1003 = @1004
== PLAYER1 @1005
== RJINVSH @1006
== PLAYER1 @1007 = @1008
== RJINVSH @1009
END
IF ~~ THEN DO ~SetGlobal("RJPort","GLOBAL",0)
               ActionOverride("RJINVSH",DestroySelf())~ EXIT

CHAIN
IF ~~ THEN PLAYER1 RJSheenaRemoteTalk4
@1010 = @1011
== RJINVSH @1012 = @1013 = @1014 = @1015
== PLAYER1 @1016
== RJINVSH @1017 = @1018 = @1019
== PLAYER1 @1020
== RJINVSH @1021
== PLAYER1 @1022 = @1023 = @1024
END
IF ~~ THEN DO ~SetGlobal("RJPort","GLOBAL",0)
               ActionOverride("RJINVSH",DestroySelf())~ EXIT

CHAIN
IF ~~ THEN PLAYER1 RJSheenaRemoteTalk5
@1025 = @1026
== RJINVSH @1027 = @1028
== PLAYER1 @1029
== RJINVSH @1030 = @1031 = @1032
== PLAYER1 @1033 = @1034
== RJINVSH @1035 = @1036
== PLAYER1 @1037
== RJINVSH @1038
== PLAYER1 @1039 = @1040
END
IF ~~ THEN DO ~SetGlobal("RJPort","GLOBAL",0)
               ActionOverride("RJINVSH",DestroySelf())~ EXIT
