// Sample for a one time dialog that won't repeat
// EXTEND_BOTTOM gorion 0 IF ~Global("DontRepeat","LOCALS",0)~ THEN
//   REPLY @1001
//   DO ~SetGlobal("DontRepeat","LOCALS",1)~
//   GOTO gorion_ash
// END

EXTEND_BOTTOM gorion 0 IF ~~ THEN
  REPLY @1001
  GOTO gorion_ash
END

APPEND gorion IF ~~ THEN BEGIN gorion_ash
    SAY @1100 /* Scared?  It's alright <charname>, just nod if you're ready. */
    ++ @1002 DO ~ClearAllActions()
      StartCutSceneMode()
      StartCutSceneEx("ch1cut01",FALSE)~ EXIT
    ++ @1003 + 8 // go to gorion(8)
    ++ @1004 + gorion_ash_bye
  END
END

APPEND gorion IF ~~ THEN BEGIN gorion_ash_bye SAY @1101 IF ~~ THEN EXIT END END
