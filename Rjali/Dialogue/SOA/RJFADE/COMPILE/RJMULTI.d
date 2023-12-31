
//  Contribution to SOA1 group chat

EXTEND_BOTTOM RJPLAY0 0
IF ~InParty("E3Fade") G("RJSOA1FA",0)~ THEN DO ~SetGlobal("RJSOA1FA","GLOBAL",1)~ EXTERN E3FADEJ RjaliGroupSOA1.FA
IF ~G("RJParkFA",2)~ THEN DO ~SetGlobal("RJParkFA","GLOBAL",1)~ EXTERN E3FADEJ RjaliGroupSOA1.FA
END

CHAIN E3FADEJ RjaliGroupSOA1.FA
@770 = @771 = @772 DO ~IncrementGlobal("RJGather","GLOBAL",-1)~
== RJPLAY0 IF ~!G("RJPlay0",312)~ THEN @773 = @774 = @775 = @776 = @777
== RJPLAY1 IF ~G("RJPlay0",312)~ THEN @773 = @774 = @775 = @776 = @777
== E3FADEJ @778
== RJPLAY0 IF ~!G("RJPlay0",312)~ THEN @779 = @780
== RJPLAY1 IF ~G("RJPlay0",312)~ THEN @779 = @780
END
IF ~~ THEN EXTERN RJPLAY0 0

I_C_T RJPLAY0 1 RJSoAGFA
== E3FADEJ IF ~InParty("E3Fade")~ THEN @595
END

//  Scout

CHAIN
IF WEIGHT #-15 ~G("RjaliFadeScout",1)~ THEN PLAYER1 RjaliFadeScout
@49
== RJALIJ @0
== E3FADEJ @920 = @921
== RJALIJ @922 = @923
== E3FADEJ @924
== RJALIJ @925 = @926 = @927
== E3FADEJ @928
== RJALIJ @929 = @930 = @931 = @932
== E3FADEJ @933
== RJALIJ @934 = @935 = @936
== E3FADEJ @937 = @941
== RJALIJ @942 = @938
== PLAYER1 @939 = @943
== E3FADEJ @944 = @945
== PLAYER1 @946
== RJALIJ @947 = @948 = @949
== E3FADEJ @950
== RJALIJ @951
== PLAYER1 @952 DO ~AddJournalEntry(@9014,INFO) SetGlobal("RjaliFadeScout","GLOBAL",2) SetGlobal("RjaliScouts","GLOBAL",1)~
EXIT

//  SoA Bikini Sleep

APPEND BE3FADE

IF ~G("RJBikiniTalkSoA",1)~ THEN BEGIN FadeBikiniSoA
SAY @1950
IF ~~ THEN EXTERN PLAYER1 FadeBikiniSoA1
END

END

CHAIN IF ~~ THEN PLAYER1 FadeBikiniSoA1
@1951 = @1952
== E3FADEJ @1953 = @1954
== PLAYER1 @1955 = @1956
== E3FADEJ @1957
== PLAYER1 @1958
== E3FADEJ @1959
== PLAYER1 @1960
== E3FADEJ @1961
== PLAYER1 @1962
== E3FADEJ @1963
== PLAYER1 @1964
== E3FADEJ @1965 = @1966 = @1967
== PLAYER1 @1968 = @1969
== E3FADEJ @1970 = @1971
END
IF ~~ THEN DO ~SetGlobal("RJBikiniTalkSoA","GLOBAL",2) RestParty()~ EXIT

//  ToB Bikini Sleep

APPEND BE3FAD25

IF ~G("RJBikiniTalkToB",1)~ THEN BEGIN FadeBikiniToB
SAY @1975
IF ~~ THEN EXTERN PLAYER1 FadeBikiniToB1
END

END

CHAIN IF ~~ THEN PLAYER1 FadeBikiniToB1
@1976
== E3FAD25J @1977
== PLAYER1 @1978 = @1979 = @1980
== E3FAD25J @1981 = @1982 = @1983 = @1984
== PLAYER1 @1985 = @1986 = @1987 = @1988 = @1989
== E3FAD25J @1990
== PLAYER1 @1991
== E3FAD25J @1992
== PLAYER1 @1993
END
IF ~~ THEN DO ~SetGlobal("RJBikiniTalkToB","GLOBAL",2) RestParty()~ EXIT
